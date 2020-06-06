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
	<23.967661, 34.928398, 35.107517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.319160, 34.824776, 34.947174>,  <24.530060, 34.762600, 34.850967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.319160, 34.824776, 34.947174>,  <23.967661, 34.928398, 35.107517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.319160, 34.824776, 34.947174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048451, 0.883956, -0.465054,
		0.474817, 0.389245, 0.789328,
		0.878750, -0.259059, -0.400858,
		24.582785, 34.747059, 34.826916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.350641, 35.502495, 35.148716>,  <23.967661, 34.928398, 35.107517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.350641, 35.502495, 35.148716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.543137, 35.286007, 34.872894>,  <24.658634, 35.156113, 34.707401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.543137, 35.286007, 34.872894>,  <24.350641, 35.502495, 35.148716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.543137, 35.286007, 34.872894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182025, 0.831189, -0.525348,
		0.857482, 0.127301, 0.498516,
		0.481239, -0.541220, -0.689558,
		24.687508, 35.123642, 34.666027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.773338, 36.181713, 35.018227>,  <24.350641, 35.502495, 35.148716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.773338, 36.181713, 35.018227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.155914, 36.169689, 34.902073>,  <25.385460, 36.162476, 34.832382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.155914, 36.169689, 34.902073>,  <24.773338, 36.181713, 35.018227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.155914, 36.169689, 34.902073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289600, -0.027818, 0.956743,
		-0.036858, -0.999160, -0.017895,
		0.956438, -0.030081, -0.290382,
		25.442846, 36.160671, 34.814957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.179039, 35.464062, 35.188057>,  <24.773338, 36.181713, 35.018227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.179039, 35.464062, 35.188057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.428020, 35.775154, 35.152973>,  <25.577410, 35.961807, 35.131924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.428020, 35.775154, 35.152973>,  <25.179039, 35.464062, 35.188057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.428020, 35.775154, 35.152973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190626, -0.041960, 0.980766,
		0.759088, -0.627201, -0.174373,
		0.622453, 0.777727, -0.087709,
		25.614756, 36.008472, 35.126659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.688639, 35.199631, 35.620338>,  <25.179039, 35.464062, 35.188057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.688639, 35.199631, 35.620338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.773699, 35.584755, 35.553673>,  <25.824736, 35.815830, 35.513672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.773699, 35.584755, 35.553673>,  <25.688639, 35.199631, 35.620338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.773699, 35.584755, 35.553673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467364, 0.049570, 0.882674,
		0.858109, -0.265595, -0.439441,
		0.212651, 0.962809, -0.166666,
		25.837494, 35.873596, 35.503674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.339977, 35.286678, 35.798904>,  <25.688639, 35.199631, 35.620338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.339977, 35.286678, 35.798904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.164680, 35.643940, 35.839333>,  <26.059502, 35.858299, 35.863590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.164680, 35.643940, 35.839333>,  <26.339977, 35.286678, 35.798904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.164680, 35.643940, 35.839333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442479, 0.116494, 0.889180,
		0.782403, 0.434397, -0.446256,
		-0.438243, 0.893156, 0.101066,
		26.033207, 35.911888, 35.869652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.801836, 35.948177, 35.762604>,  <26.339977, 35.286678, 35.798904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.801836, 35.948177, 35.762604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.473024, 35.935200, 35.990013>,  <26.275738, 35.927414, 36.126457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.473024, 35.935200, 35.990013>,  <26.801836, 35.948177, 35.762604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.473024, 35.935200, 35.990013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568448, -0.105852, 0.815881,
		0.033708, 0.993852, 0.105456,
		-0.822028, -0.032444, 0.568521,
		26.226416, 35.925465, 36.160568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.873022, 36.448051, 36.278999>,  <26.801836, 35.948177, 35.762604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.873022, 36.448051, 36.278999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.662613, 36.129196, 36.397575>,  <26.536367, 35.937881, 36.468719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.662613, 36.129196, 36.397575>,  <26.873022, 36.448051, 36.278999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.662613, 36.129196, 36.397575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633520, -0.134717, 0.761908,
		-0.567410, 0.588578, 0.575866,
		-0.526021, -0.797137, 0.296436,
		26.504807, 35.890057, 36.486507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.698790, 36.606220, 36.902126>,  <26.873022, 36.448051, 36.278999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.698790, 36.606220, 36.902126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.659103, 36.208202, 36.899586>,  <26.635292, 35.969391, 36.898060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.659103, 36.208202, 36.899586>,  <26.698790, 36.606220, 36.902126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.659103, 36.208202, 36.899586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700803, -0.074407, 0.709464,
		-0.706422, 0.065937, 0.704713,
		-0.099216, -0.995046, -0.006354,
		26.629339, 35.909687, 36.897678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.676392, 36.484692, 37.596523>,  <26.698790, 36.606220, 36.902126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.676392, 36.484692, 37.596523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.768887, 36.127811, 37.441345>,  <26.824385, 35.913681, 37.348240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.768887, 36.127811, 37.441345>,  <26.676392, 36.484692, 37.596523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.768887, 36.127811, 37.441345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692308, -0.129260, 0.709931,
		-0.683548, -0.432742, 0.587789,
		0.231239, -0.892203, -0.387946,
		26.838259, 35.860149, 37.324963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.659578, 36.068661, 38.197659>,  <26.676392, 36.484692, 37.596523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.659578, 36.068661, 38.197659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.881975, 35.908009, 37.906574>,  <27.015413, 35.811619, 37.731922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.881975, 35.908009, 37.906574>,  <26.659578, 36.068661, 38.197659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.881975, 35.908009, 37.906574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784491, -0.035765, 0.619108,
		-0.274678, -0.915104, 0.295188,
		0.555991, -0.401628, -0.727715,
		27.048773, 35.787521, 37.688259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.118464, 35.661350, 38.557121>,  <26.659578, 36.068661, 38.197659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.118464, 35.661350, 38.557121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.278473, 35.715710, 38.194572>,  <27.374479, 35.748325, 37.977043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.278473, 35.715710, 38.194572>,  <27.118464, 35.661350, 38.557121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.278473, 35.715710, 38.194572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912436, -0.152137, 0.379889,
		-0.086265, -0.978971, -0.184862,
		0.400024, 0.135904, -0.906372,
		27.398479, 35.756481, 37.922661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.835257, 36.023064, 38.786709>,  <27.118464, 35.661350, 38.557121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.835257, 36.023064, 38.786709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.149487, 35.840122, 38.619999>,  <28.338024, 35.730358, 38.519974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.149487, 35.840122, 38.619999>,  <27.835257, 36.023064, 38.786709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.149487, 35.840122, 38.619999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464831, 0.008384, -0.885360,
		0.408416, 0.889246, -0.206006,
		0.785576, -0.457353, -0.416773,
		28.385159, 35.702915, 38.494968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.019993, 36.346657, 38.211071>,  <27.835257, 36.023064, 38.786709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.019993, 36.346657, 38.211071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.143551, 35.972095, 38.144455>,  <28.217686, 35.747360, 38.104485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.143551, 35.972095, 38.144455>,  <28.019993, 36.346657, 38.211071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.143551, 35.972095, 38.144455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603580, -0.057673, -0.795214,
		0.735035, 0.346158, -0.583008,
		0.308894, -0.936402, -0.166542,
		28.236219, 35.691174, 38.094494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.159393, 36.293491, 37.530838>,  <28.019993, 36.346657, 38.211071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.159393, 36.293491, 37.530838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.091610, 35.927288, 37.676785>,  <28.050940, 35.707565, 37.764351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.091610, 35.927288, 37.676785>,  <28.159393, 36.293491, 37.530838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.091610, 35.927288, 37.676785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582320, -0.205669, -0.786514,
		0.795102, -0.345749, -0.498267,
		-0.169458, -0.915510, 0.364864,
		28.040773, 35.652634, 37.786243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.152983, 35.715767, 37.019745>,  <28.159393, 36.293491, 37.530838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.152983, 35.715767, 37.019745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.927994, 35.624596, 37.337658>,  <27.793001, 35.569893, 37.528404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.927994, 35.624596, 37.337658>,  <28.152983, 35.715767, 37.019745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.927994, 35.624596, 37.337658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782572, -0.163471, -0.600715,
		0.266844, -0.959857, -0.086423,
		-0.562472, -0.227929, 0.794779,
		27.759253, 35.556217, 37.576092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.753338, 35.128933, 36.783154>,  <28.152983, 35.715767, 37.019745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.753338, 35.128933, 36.783154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.541815, 35.332142, 37.055119>,  <27.414900, 35.454067, 37.218296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.541815, 35.332142, 37.055119>,  <27.753338, 35.128933, 36.783154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.541815, 35.332142, 37.055119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769487, 0.051045, -0.636619,
		-0.358121, -0.859832, 0.363921,
		-0.528809, 0.508019, 0.679910,
		27.383173, 35.484547, 37.259090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.231798, 34.814293, 36.677769>,  <27.753338, 35.128933, 36.783154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.231798, 34.814293, 36.677769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.114958, 35.130795, 36.892654>,  <27.044853, 35.320694, 37.021587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.114958, 35.130795, 36.892654>,  <27.231798, 34.814293, 36.677769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.114958, 35.130795, 36.892654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851933, 0.039990, -0.522121,
		-0.434612, -0.610182, 0.662412,
		-0.292099, 0.791251, 0.537215,
		27.027328, 35.368172, 37.053818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.519001, 34.606895, 36.766548>,  <27.231798, 34.814293, 36.677769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.519001, 34.606895, 36.766548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.552040, 35.001503, 36.823051>,  <26.571863, 35.238270, 36.856953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.552040, 35.001503, 36.823051>,  <26.519001, 34.606895, 36.766548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.552040, 35.001503, 36.823051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877287, 0.139223, -0.459331,
		-0.472806, -0.085987, 0.876961,
		0.082597, 0.986521, 0.141261,
		26.576818, 35.297459, 36.865429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.865740, 34.860935, 37.007221>,  <26.519001, 34.606895, 36.766548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.865740, 34.860935, 37.007221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.061134, 35.167095, 36.839626>,  <26.178371, 35.350792, 36.739071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.061134, 35.167095, 36.839626>,  <25.865740, 34.860935, 37.007221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.061134, 35.167095, 36.839626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825080, 0.248910, -0.507234,
		-0.283944, 0.593475, 0.753102,
		0.488486, 0.765396, -0.418988,
		26.207680, 35.396713, 36.713928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.513531, 35.410442, 37.169823>,  <25.865740, 34.860935, 37.007221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.513531, 35.410442, 37.169823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.693359, 35.508511, 36.826248>,  <25.801256, 35.567352, 36.620102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.693359, 35.508511, 36.826248>,  <25.513531, 35.410442, 37.169823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.693359, 35.508511, 36.826248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871045, 0.333375, -0.360752,
		0.197903, 0.910359, 0.363431,
		0.449572, 0.245171, -0.858939,
		25.828232, 35.582062, 36.568565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.504622, 36.116211, 36.986603>,  <25.513531, 35.410442, 37.169823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.504622, 36.116211, 36.986603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.508593, 35.886539, 36.659134>,  <25.510975, 35.748737, 36.462654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.508593, 35.886539, 36.659134>,  <25.504622, 36.116211, 36.986603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.508593, 35.886539, 36.659134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782295, 0.505481, -0.364011,
		0.622829, 0.644054, -0.444160,
		0.009928, -0.574181, -0.818668,
		25.511572, 35.714287, 36.413532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.291811, 36.399902, 36.325283>,  <25.504622, 36.116211, 36.986603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.291811, 36.399902, 36.325283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.684278, 36.384048, 36.249668>,  <25.919760, 36.374535, 36.204300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.684278, 36.384048, 36.249668>,  <25.291811, 36.399902, 36.325283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.684278, 36.384048, 36.249668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188261, 0.022608, -0.981859,
		0.043193, 0.998958, 0.014720,
		0.981169, -0.039638, -0.189041,
		25.978630, 36.372158, 36.192955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.497602, 36.990990, 35.887299>,  <25.291811, 36.399902, 36.325283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.497602, 36.990990, 35.887299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.759821, 36.692062, 35.843895>,  <25.917152, 36.512707, 35.817852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.759821, 36.692062, 35.843895>,  <25.497602, 36.990990, 35.887299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.759821, 36.692062, 35.843895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271013, -0.098703, -0.957502,
		0.704848, 0.657095, -0.267237,
		0.655547, -0.747318, -0.108510,
		25.956486, 36.467869, 35.811340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.090328, 37.165180, 35.390697>,  <25.497602, 36.990990, 35.887299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.090328, 37.165180, 35.390697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.989143, 36.778526, 35.406845>,  <25.928432, 36.546535, 35.416534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.989143, 36.778526, 35.406845>,  <26.090328, 37.165180, 35.390697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.989143, 36.778526, 35.406845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058140, -0.026467, -0.997958,
		0.965728, -0.254792, -0.049505,
		-0.252962, -0.966634, 0.040374,
		25.913256, 36.488537, 35.418957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.547720, 36.793018, 34.946110>,  <26.090328, 37.165180, 35.390697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.547720, 36.793018, 34.946110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.240311, 36.545776, 35.012230>,  <26.055866, 36.397430, 35.051903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.240311, 36.545776, 35.012230>,  <26.547720, 36.793018, 34.946110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.240311, 36.545776, 35.012230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073462, -0.341881, -0.936867,
		0.635593, -0.707860, 0.308150,
		-0.768522, -0.618103, 0.165296,
		26.009754, 36.360344, 35.061817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.741695, 36.334335, 34.496342>,  <26.547720, 36.793018, 34.946110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.741695, 36.334335, 34.496342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.357723, 36.277882, 34.593182>,  <26.127340, 36.244011, 34.651287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.357723, 36.277882, 34.593182>,  <26.741695, 36.334335, 34.496342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.357723, 36.277882, 34.593182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208410, -0.217994, -0.953438,
		0.187338, -0.965691, 0.179846,
		-0.959932, -0.141133, 0.242098,
		26.069744, 36.235542, 34.665810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.466389, 35.624416, 34.312366>,  <26.741695, 36.334335, 34.496342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.466389, 35.624416, 34.312366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.201792, 35.924255, 34.303177>,  <26.043034, 36.104160, 34.297661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.201792, 35.924255, 34.303177>,  <26.466389, 35.624416, 34.312366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.201792, 35.924255, 34.303177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240280, -0.240864, -0.940346,
		-0.710417, -0.616511, 0.339443,
		-0.661493, 0.749599, -0.022978,
		26.003344, 36.149136, 34.296284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.805326, 35.021477, 34.015728>,  <26.466389, 35.624416, 34.312366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.805326, 35.021477, 34.015728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.484432, 34.867184, 34.197994>,  <26.291895, 34.774609, 34.307354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.484432, 34.867184, 34.197994>,  <26.805326, 35.021477, 34.015728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.484432, 34.867184, 34.197994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111230, -0.653306, -0.748878,
		0.586555, -0.651460, 0.481200,
		-0.802235, -0.385734, 0.455662,
		26.243761, 34.751465, 34.334694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.515388, 34.461700, 33.581581>,  <26.805326, 35.021477, 34.015728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.515388, 34.461700, 33.581581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.314928, 34.398434, 33.921894>,  <26.194653, 34.360474, 34.126083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.314928, 34.398434, 33.921894>,  <26.515388, 34.461700, 33.581581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.314928, 34.398434, 33.921894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340530, -0.867788, -0.361916,
		0.795542, -0.471092, 0.381032,
		-0.501150, -0.158167, 0.850783,
		26.164583, 34.350983, 34.177128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.693335, 33.764091, 33.638851>,  <26.515388, 34.461700, 33.581581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.693335, 33.764091, 33.638851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.357443, 33.842159, 33.841537>,  <26.155907, 33.889000, 33.963150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.357443, 33.842159, 33.841537>,  <26.693335, 33.764091, 33.638851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.357443, 33.842159, 33.841537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436165, -0.798277, -0.415348,
		0.323440, -0.569793, 0.755462,
		-0.839730, 0.195166, 0.506718,
		26.105524, 33.900707, 33.993553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.297810, 33.505993, 33.307526>,  <26.693335, 33.764091, 33.638851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.297810, 33.505993, 33.307526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.628820, 33.281422, 33.307819>,  <27.827427, 33.146679, 33.307995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.628820, 33.281422, 33.307819>,  <27.297810, 33.505993, 33.307526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.628820, 33.281422, 33.307819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367979, -0.543383, -0.754537,
		0.424019, 0.624127, -0.656257,
		0.827526, -0.561427, 0.000739,
		27.877079, 33.112995, 33.308041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.292202, 33.419865, 32.638729>,  <27.297810, 33.505993, 33.307526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.292202, 33.419865, 32.638729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.513721, 33.124107, 32.791885>,  <27.646633, 32.946651, 32.883778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.513721, 33.124107, 32.791885>,  <27.292202, 33.419865, 32.638729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.513721, 33.124107, 32.791885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382293, -0.634296, -0.671953,
		0.739704, 0.225750, -0.633937,
		0.553797, -0.739395, 0.382888,
		27.679861, 32.902290, 32.906754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.757296, 33.053082, 32.100487>,  <27.292202, 33.419865, 32.638729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.757296, 33.053082, 32.100487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.644581, 32.823032, 32.407688>,  <27.576952, 32.685001, 32.592007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.644581, 32.823032, 32.407688>,  <27.757296, 33.053082, 32.100487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.644581, 32.823032, 32.407688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337200, -0.690016, -0.640448,
		0.898272, -0.439439, 0.000503,
		-0.281785, -0.575127, 0.768001,
		27.560045, 32.650494, 32.638088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.512997, 32.560741, 31.740103>,  <27.757296, 33.053082, 32.100487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.512997, 32.560741, 31.740103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.429810, 32.463142, 32.118988>,  <27.379898, 32.404583, 32.346321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.429810, 32.463142, 32.118988>,  <27.512997, 32.560741, 31.740103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.429810, 32.463142, 32.118988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609942, -0.724699, -0.320598,
		0.764670, -0.644419, 0.001889,
		-0.207968, -0.243999, 0.947213,
		27.367418, 32.389942, 32.403152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.952147, 32.150036, 32.016739>,  <27.512997, 32.560741, 31.740103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.952147, 32.150036, 32.016739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.993633, 32.089188, 32.409901>,  <28.018524, 32.052677, 32.645798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.993633, 32.089188, 32.409901>,  <27.952147, 32.150036, 32.016739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.993633, 32.089188, 32.409901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624571, -0.779052, -0.054668,
		0.774050, -0.608224, -0.175810,
		0.103715, -0.152122, 0.982905,
		28.024748, 32.043552, 32.704773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.296196, 31.540140, 32.225071>,  <27.952147, 32.150036, 32.016739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.296196, 31.540140, 32.225071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.006046, 31.629902, 32.485371>,  <27.831957, 31.683760, 32.641552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.006046, 31.629902, 32.485371>,  <28.296196, 31.540140, 32.225071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.006046, 31.629902, 32.485371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519589, -0.798587, -0.303784,
		0.451510, -0.558480, 0.695872,
		-0.725372, 0.224406, 0.650751,
		27.788435, 31.697224, 32.680595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.107971, 30.964123, 32.696903>,  <28.296196, 31.540140, 32.225071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.107971, 30.964123, 32.696903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.791508, 31.203016, 32.749638>,  <27.601629, 31.346354, 32.781277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.791508, 31.203016, 32.749638>,  <28.107971, 30.964123, 32.696903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.791508, 31.203016, 32.749638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574159, -0.799521, 0.176374,
		0.210743, 0.063844, 0.975454,
		-0.791157, 0.597236, 0.131836,
		27.554161, 31.382187, 32.789188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.666121, 30.772564, 33.375557>,  <28.107971, 30.964123, 32.696903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.666121, 30.772564, 33.375557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.431255, 30.983385, 33.129807>,  <27.290337, 31.109879, 32.982357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.431255, 30.983385, 33.129807>,  <27.666121, 30.772564, 33.375557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.431255, 30.983385, 33.129807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638297, -0.768228, -0.049014,
		-0.497813, 0.363375, 0.787490,
		-0.587161, 0.527053, -0.614375,
		27.255106, 31.141500, 32.945496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.002577, 30.656307, 33.553032>,  <27.666121, 30.772564, 33.375557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.002577, 30.656307, 33.553032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.981956, 30.748486, 33.164345>,  <26.969585, 30.803793, 32.931133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.981956, 30.748486, 33.164345>,  <27.002577, 30.656307, 33.553032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.981956, 30.748486, 33.164345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652291, -0.744554, -0.141969,
		-0.756214, 0.626525, 0.188698,
		-0.051549, 0.230445, -0.971719,
		26.966492, 30.817619, 32.872829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.706835, 30.069784, 33.081081>,  <27.002577, 30.656307, 33.553032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.706835, 30.069784, 33.081081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.368170, 30.259140, 32.983868>,  <26.164970, 30.372753, 32.925541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.368170, 30.259140, 32.983868>,  <26.706835, 30.069784, 33.081081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.368170, 30.259140, 32.983868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530530, 0.786328, -0.316584,
		0.041234, -0.396976, -0.916902,
		-0.846663, 0.473390, -0.243031,
		26.114170, 30.401157, 32.910957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.767653, 30.382824, 32.324287>,  <26.706835, 30.069784, 33.081081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.767653, 30.382824, 32.324287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.526289, 30.578762, 32.575985>,  <26.381472, 30.696325, 32.727005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.526289, 30.578762, 32.575985>,  <26.767653, 30.382824, 32.324287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.526289, 30.578762, 32.575985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455771, 0.859352, -0.231922,
		-0.654349, 0.146848, -0.741798,
		-0.603408, 0.489847, 0.629245,
		26.345266, 30.725716, 32.764759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.466139, 30.964964, 32.053265>,  <26.767653, 30.382824, 32.324287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.466139, 30.964964, 32.053265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.536430, 31.038477, 32.440117>,  <26.578606, 31.082584, 32.672230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.536430, 31.038477, 32.440117>,  <26.466139, 30.964964, 32.053265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.536430, 31.038477, 32.440117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752966, 0.607768, -0.252309,
		-0.634162, 0.772555, -0.031581,
		0.175729, 0.183784, 0.967131,
		26.589149, 31.093613, 32.730255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.376356, 31.735332, 32.273949>,  <26.466139, 30.964964, 32.053265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.376356, 31.735332, 32.273949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.637629, 31.550381, 32.513802>,  <26.794392, 31.439409, 32.657715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.637629, 31.550381, 32.513802>,  <26.376356, 31.735332, 32.273949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.637629, 31.550381, 32.513802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605967, 0.794053, -0.047782,
		-0.454047, 0.394568, 0.798847,
		0.653181, -0.462380, 0.599633,
		26.833582, 31.411667, 32.693691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.482208, 32.098549, 32.919567>,  <26.376356, 31.735332, 32.273949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.482208, 32.098549, 32.919567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.809341, 31.878456, 32.852158>,  <27.005621, 31.746401, 32.811714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.809341, 31.878456, 32.852158>,  <26.482208, 32.098549, 32.919567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.809341, 31.878456, 32.852158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575326, 0.788018, 0.219151,
		0.012214, -0.276183, 0.961027,
		0.817833, -0.550228, -0.168520,
		27.054691, 31.713388, 32.801601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.932407, 32.347816, 33.366348>,  <26.482208, 32.098549, 32.919567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.932407, 32.347816, 33.366348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.159163, 32.136265, 33.113708>,  <27.295216, 32.009335, 32.962124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.159163, 32.136265, 33.113708>,  <26.932407, 32.347816, 33.366348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.159163, 32.136265, 33.113708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803322, 0.524771, 0.281584,
		0.182522, -0.667006, 0.722349,
		0.566887, -0.528884, -0.631603,
		27.329229, 31.977600, 32.924229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.522734, 31.918251, 33.681190>,  <26.932407, 32.347816, 33.366348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.522734, 31.918251, 33.681190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.577578, 32.079063, 33.319069>,  <27.610483, 32.175552, 33.101795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.577578, 32.079063, 33.319069>,  <27.522734, 31.918251, 33.681190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.577578, 32.079063, 33.319069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669542, 0.635928, 0.383810,
		0.730010, -0.658761, -0.181986,
		0.137110, 0.402032, -0.905302,
		27.618710, 32.199673, 33.047478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.267323, 31.884399, 33.479481>,  <27.522734, 31.918251, 33.681190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.267323, 31.884399, 33.479481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.092636, 32.196156, 33.299778>,  <27.987825, 32.383209, 33.191956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.092636, 32.196156, 33.299778>,  <28.267323, 31.884399, 33.479481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.092636, 32.196156, 33.299778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526331, 0.626366, 0.575015,
		0.729559, 0.014661, -0.683761,
		-0.436715, 0.779391, -0.449254,
		27.961622, 32.429974, 33.165001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.838581, 32.213882, 33.332615>,  <28.267323, 31.884399, 33.479481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.838581, 32.213882, 33.332615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.539370, 32.478989, 33.318768>,  <28.359842, 32.638050, 33.310459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.539370, 32.478989, 33.318768>,  <28.838581, 32.213882, 33.332615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.539370, 32.478989, 33.318768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529416, 0.627360, 0.571085,
		0.400213, 0.408860, -0.820160,
		-0.748029, 0.662762, -0.034620,
		28.314960, 32.677818, 33.308380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.094728, 32.924423, 33.086674>,  <28.838581, 32.213882, 33.332615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.094728, 32.924423, 33.086674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.770250, 32.946301, 33.319557>,  <28.575563, 32.959427, 33.459290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.770250, 32.946301, 33.319557>,  <29.094728, 32.924423, 33.086674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.770250, 32.946301, 33.319557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499698, 0.581986, 0.641557,
		-0.303751, 0.811358, -0.499433,
		-0.811195, 0.054692, 0.582213,
		28.526892, 32.962708, 33.494221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.852791, 33.620003, 33.291996>,  <29.094728, 32.924423, 33.086674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.852791, 33.620003, 33.291996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.723598, 33.396603, 33.597614>,  <28.646082, 33.262562, 33.780983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.723598, 33.396603, 33.597614>,  <28.852791, 33.620003, 33.291996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.723598, 33.396603, 33.597614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607074, 0.497078, 0.619980,
		-0.726047, 0.664074, 0.178502,
		-0.322983, -0.558499, 0.764043,
		28.626703, 33.229053, 33.826828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.524603, 34.075188, 33.875793>,  <28.852791, 33.620003, 33.291996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.524603, 34.075188, 33.875793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.664663, 33.737564, 34.038254>,  <28.748699, 33.534988, 34.135731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.664663, 33.737564, 34.038254>,  <28.524603, 34.075188, 33.875793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.664663, 33.737564, 34.038254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518165, 0.535755, 0.666687,
		-0.780319, -0.022991, 0.624959,
		0.350153, -0.844060, 0.406146,
		28.769709, 33.484344, 34.160099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.507099, 34.095425, 34.610367>,  <28.524603, 34.075188, 33.875793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.507099, 34.095425, 34.610367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.818409, 33.855904, 34.534767>,  <29.005196, 33.712189, 34.489407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.818409, 33.855904, 34.534767>,  <28.507099, 34.095425, 34.610367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.818409, 33.855904, 34.534767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566467, 0.539675, 0.622789,
		-0.270933, -0.591762, 0.759219,
		0.778274, -0.598807, -0.188998,
		29.051891, 33.676262, 34.478069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.794708, 33.768391, 35.209961>,  <28.507099, 34.095425, 34.610367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.794708, 33.768391, 35.209961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.062349, 33.817066, 34.916706>,  <29.222935, 33.846272, 34.740753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.062349, 33.817066, 34.916706>,  <28.794708, 33.768391, 35.209961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.062349, 33.817066, 34.916706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590386, 0.512139, 0.623825,
		0.451379, -0.850239, 0.270834,
		0.669105, 0.121685, -0.733138,
		29.263081, 33.853573, 34.696766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.936506, 33.625034, 35.952518>,  <28.794708, 33.768391, 35.209961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.936506, 33.625034, 35.952518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.043613, 33.354836, 36.227329>,  <29.107878, 33.192719, 36.392216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.043613, 33.354836, 36.227329>,  <28.936506, 33.625034, 35.952518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.043613, 33.354836, 36.227329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892188, -0.443034, -0.087869,
		0.363732, -0.589431, -0.721298,
		0.267767, -0.675494, 0.687029,
		29.123943, 33.152187, 36.433437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.674442, 32.996841, 35.718697>,  <28.936506, 33.625034, 35.952518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.674442, 32.996841, 35.718697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.695435, 32.969601, 36.117214>,  <28.708031, 32.953259, 36.356327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.695435, 32.969601, 36.117214>,  <28.674442, 32.996841, 35.718697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.695435, 32.969601, 36.117214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967675, -0.249913, 0.033891,
		0.246680, -0.965871, -0.079012,
		0.052480, -0.068098, 0.996297,
		28.711178, 32.949173, 36.416103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.507446, 32.343819, 35.892303>,  <28.674442, 32.996841, 35.718697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.507446, 32.343819, 35.892303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.429379, 32.577991, 36.207054>,  <28.382538, 32.718494, 36.395905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.429379, 32.577991, 36.207054>,  <28.507446, 32.343819, 35.892303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.429379, 32.577991, 36.207054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931812, -0.361003, 0.037467,
		0.306000, -0.725910, 0.615969,
		-0.195169, 0.585433, 0.786879,
		28.370829, 32.753620, 36.443119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.178568, 31.797571, 36.311268>,  <28.507446, 32.343819, 35.892303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.178568, 31.797571, 36.311268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.089333, 32.185291, 36.352627>,  <28.035791, 32.417923, 36.377441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.089333, 32.185291, 36.352627>,  <28.178568, 31.797571, 36.311268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.089333, 32.185291, 36.352627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974395, -0.218691, -0.052232,
		-0.028017, -0.112399, 0.993268,
		-0.223090, 0.969299, 0.103394,
		28.022406, 32.476082, 36.383644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.714235, 31.907753, 36.850060>,  <28.178568, 31.797571, 36.311268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.714235, 31.907753, 36.850060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.669537, 32.191719, 36.571911>,  <27.642717, 32.362099, 36.405022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.669537, 32.191719, 36.571911>,  <27.714235, 31.907753, 36.850060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.669537, 32.191719, 36.571911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970790, -0.227493, -0.076247,
		-0.212320, 0.666536, 0.714598,
		-0.111745, 0.709913, -0.695368,
		27.636013, 32.404694, 36.363300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.209972, 32.519032, 37.048553>,  <27.714235, 31.907753, 36.850060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.209972, 32.519032, 37.048553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.238329, 32.410137, 36.664707>,  <27.255342, 32.344799, 36.434399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.238329, 32.410137, 36.664707>,  <27.209972, 32.519032, 37.048553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.238329, 32.410137, 36.664707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971044, -0.238866, -0.003970,
		-0.228139, 0.932110, -0.281291,
		0.070892, -0.272240, -0.959615,
		27.259596, 32.328465, 36.376823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.716965, 32.885178, 36.616154>,  <27.209972, 32.519032, 37.048553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.716965, 32.885178, 36.616154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.827944, 32.522671, 36.488590>,  <26.894531, 32.305168, 36.412052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.827944, 32.522671, 36.488590>,  <26.716965, 32.885178, 36.616154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.827944, 32.522671, 36.488590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943756, -0.319229, 0.086121,
		-0.179855, 0.277082, -0.943863,
		0.277446, -0.906266, -0.318913,
		26.911179, 32.250790, 36.392918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.149897, 33.430496, 37.050232>,  <26.716965, 32.885178, 36.616154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.149897, 33.430496, 37.050232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.350618, 33.115429, 36.907257>,  <27.471052, 32.926388, 36.821472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.350618, 33.115429, 36.907257>,  <27.149897, 33.430496, 37.050232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.350618, 33.115429, 36.907257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859034, 0.502185, 0.099348,
		0.101248, -0.356908, 0.928637,
		0.501805, -0.787672, -0.357441,
		27.501160, 32.879128, 36.800026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.830473, 33.749226, 37.045750>,  <27.149897, 33.430496, 37.050232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.830473, 33.749226, 37.045750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.899839, 33.363117, 36.967583>,  <27.941460, 33.131454, 36.920685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.899839, 33.363117, 36.967583>,  <27.830473, 33.749226, 37.045750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.899839, 33.363117, 36.967583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983849, 0.160863, 0.078511,
		-0.044349, -0.205873, 0.977573,
		0.173418, -0.965267, -0.195414,
		27.951864, 33.073536, 36.908958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.343250, 33.423580, 37.492775>,  <27.830473, 33.749226, 37.045750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.343250, 33.423580, 37.492775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.334660, 33.183357, 37.173058>,  <28.329506, 33.039223, 36.981228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.334660, 33.183357, 37.173058>,  <28.343250, 33.423580, 37.492775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.334660, 33.183357, 37.173058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986552, 0.116841, -0.114297,
		0.162032, -0.791001, 0.589968,
		-0.021477, -0.600554, -0.799296,
		28.328217, 33.003193, 36.933270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.822853, 32.898777, 37.695614>,  <28.343250, 33.423580, 37.492775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.822853, 32.898777, 37.695614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.795074, 32.905285, 37.296631>,  <28.778408, 32.909191, 37.057243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.795074, 32.905285, 37.296631>,  <28.822853, 32.898777, 37.695614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.795074, 32.905285, 37.296631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985390, 0.156988, -0.066046,
		0.155514, -0.987466, -0.026932,
		-0.069447, 0.016267, -0.997453,
		28.774240, 32.910168, 36.997395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.322863, 32.414558, 37.558365>,  <28.822853, 32.898777, 37.695614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.322863, 32.414558, 37.558365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.257025, 32.618290, 37.220493>,  <29.217522, 32.740528, 37.017769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.257025, 32.618290, 37.220493>,  <29.322863, 32.414558, 37.558365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.257025, 32.618290, 37.220493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985215, 0.126163, -0.115903,
		0.047535, -0.851271, -0.522568,
		-0.164594, 0.509333, -0.844683,
		29.207647, 32.771091, 36.967087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.668299, 32.151051, 37.040176>,  <29.322863, 32.414558, 37.558365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.668299, 32.151051, 37.040176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.630541, 32.543594, 36.973213>,  <29.607885, 32.779121, 36.933033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.630541, 32.543594, 36.973213>,  <29.668299, 32.151051, 37.040176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.630541, 32.543594, 36.973213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956728, 0.042931, -0.287799,
		-0.275246, -0.187335, -0.942945,
		-0.094396, 0.981357, -0.167412,
		29.602222, 32.838001, 36.922989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.786762, 32.365086, 36.224537>,  <29.668299, 32.151051, 37.040176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.786762, 32.365086, 36.224537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.864494, 32.663372, 36.479454>,  <29.911133, 32.842342, 36.632404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.864494, 32.663372, 36.479454>,  <29.786762, 32.365086, 36.224537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.864494, 32.663372, 36.479454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940017, 0.044118, -0.338263,
		-0.280364, 0.664802, -0.692412,
		0.194330, 0.745716, 0.637294,
		29.922792, 32.887085, 36.670643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.310844, 32.802517, 35.871159>,  <29.786762, 32.365086, 36.224537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.310844, 32.802517, 35.871159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312439, 32.920399, 36.253391>,  <30.313396, 32.991127, 36.482731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312439, 32.920399, 36.253391>,  <30.310844, 32.802517, 35.871159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.312439, 32.920399, 36.253391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999738, -0.022734, 0.002840,
		0.022561, 0.955319, -0.294714,
		0.003987, 0.294701, 0.955581,
		30.313635, 33.008808, 36.540066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.802784, 33.264622, 35.895721>,  <30.310844, 32.802517, 35.871159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.802784, 33.264622, 35.895721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.800146, 33.147511, 36.278183>,  <30.798563, 33.077244, 36.507660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.800146, 33.147511, 36.278183>,  <30.802784, 33.264622, 35.895721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.800146, 33.147511, 36.278183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996380, 0.079114, 0.031099,
		-0.084751, 0.952902, 0.291195,
		-0.006597, -0.292776, 0.956158,
		30.798166, 33.059677, 36.565029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.357990, 33.645596, 36.146778>,  <30.802784, 33.264622, 35.895721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.357990, 33.645596, 36.146778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285334, 33.349899, 36.406170>,  <31.241739, 33.172482, 36.561806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285334, 33.349899, 36.406170>,  <31.357990, 33.645596, 36.146778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.285334, 33.349899, 36.406170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970701, -0.240283, -0.002018,
		0.157311, 0.629116, 0.761227,
		-0.181641, -0.739241, 0.648483,
		31.230841, 33.128128, 36.600716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835348, 33.816849, 36.697723>,  <31.357990, 33.645596, 36.146778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835348, 33.816849, 36.697723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.721954, 33.435162, 36.735897>,  <31.653919, 33.206150, 36.758801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.721954, 33.435162, 36.735897>,  <31.835348, 33.816849, 36.697723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.721954, 33.435162, 36.735897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942129, -0.295691, -0.157988,
		0.178973, 0.045121, 0.982819,
		-0.283482, -0.954217, 0.095431,
		31.636909, 33.148895, 36.764526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385803, 33.456638, 36.904598>,  <31.835348, 33.816849, 36.697723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385803, 33.456638, 36.904598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172569, 33.139317, 36.786961>,  <32.044628, 32.948925, 36.716377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172569, 33.139317, 36.786961>,  <32.385803, 33.456638, 36.904598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172569, 33.139317, 36.786961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843144, -0.469284, -0.262454,
		0.070192, -0.387872, 0.919037,
		-0.533088, -0.793302, -0.294092,
		32.012642, 32.901325, 36.698734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746265, 32.889267, 37.143940>,  <32.385803, 33.456638, 36.904598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746265, 32.889267, 37.143940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515484, 32.756325, 36.845501>,  <32.377014, 32.676559, 36.666439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515484, 32.756325, 36.845501>,  <32.746265, 32.889267, 37.143940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515484, 32.756325, 36.845501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753068, -0.570138, -0.328377,
		-0.316242, -0.751322, 0.579229,
		-0.576957, -0.332352, -0.746099,
		32.342396, 32.656620, 36.621670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054981, 32.249371, 37.112339>,  <32.746265, 32.889267, 37.143940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054981, 32.249371, 37.112339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875069, 32.329597, 36.764206>,  <32.767120, 32.377735, 36.555328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875069, 32.329597, 36.764206>,  <33.054981, 32.249371, 37.112339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875069, 32.329597, 36.764206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808487, -0.322663, -0.492176,
		-0.379537, -0.925020, -0.017029,
		-0.449778, 0.200566, -0.870329,
		32.740135, 32.389767, 36.503109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239140, 31.646971, 36.739178>,  <33.054981, 32.249371, 37.112339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239140, 31.646971, 36.739178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101978, 31.893755, 36.455833>,  <33.019680, 32.041824, 36.285828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101978, 31.893755, 36.455833>,  <33.239140, 31.646971, 36.739178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101978, 31.893755, 36.455833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601823, -0.434716, -0.669949,
		-0.721268, -0.656037, -0.222235,
		-0.342902, 0.616958, -0.708364,
		32.999107, 32.078842, 36.243324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129444, 31.230356, 36.068462>,  <33.239140, 31.646971, 36.739178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129444, 31.230356, 36.068462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149120, 31.615564, 35.962502>,  <33.160927, 31.846689, 35.898926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149120, 31.615564, 35.962502>,  <33.129444, 31.230356, 36.068462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149120, 31.615564, 35.962502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487323, -0.254655, -0.835265,
		-0.871835, -0.088006, -0.481828,
		0.049191, 0.963019, -0.264904,
		33.163879, 31.904470, 35.883030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880486, 31.220968, 35.263641>,  <33.129444, 31.230356, 36.068462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880486, 31.220968, 35.263641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054241, 31.572252, 35.343697>,  <33.158497, 31.783022, 35.391731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054241, 31.572252, 35.343697>,  <32.880486, 31.220968, 35.263641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054241, 31.572252, 35.343697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475552, -0.034908, -0.878995,
		-0.764954, 0.477003, -0.432797,
		0.434391, 0.878208, 0.200137,
		33.184559, 31.835714, 35.403736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734882, 31.772268, 34.741009>,  <32.880486, 31.220968, 35.263641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734882, 31.772268, 34.741009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088776, 31.863588, 34.903553>,  <33.301109, 31.918381, 35.001080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088776, 31.863588, 34.903553>,  <32.734882, 31.772268, 34.741009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088776, 31.863588, 34.903553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385244, 0.132581, -0.913241,
		-0.262371, 0.964521, 0.029347,
		0.884731, 0.228302, 0.406361,
		33.354195, 31.932079, 35.025463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910892, 32.355091, 34.394272>,  <32.734882, 31.772268, 34.741009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910892, 32.355091, 34.394272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257343, 32.245159, 34.561264>,  <33.465214, 32.179199, 34.661461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257343, 32.245159, 34.561264>,  <32.910892, 32.355091, 34.394272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257343, 32.245159, 34.561264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425201, -0.033920, -0.904463,
		0.262737, 0.960894, 0.087480,
		0.866126, -0.274832, 0.417485,
		33.517181, 32.162708, 34.686508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522030, 32.760841, 34.000343>,  <32.910892, 32.355091, 34.394272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522030, 32.760841, 34.000343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694771, 32.460522, 34.200264>,  <33.798416, 32.280331, 34.320217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694771, 32.460522, 34.200264>,  <33.522030, 32.760841, 34.000343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694771, 32.460522, 34.200264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579589, -0.193582, -0.791583,
		0.691072, 0.631528, 0.351556,
		0.431852, -0.750798, 0.499806,
		33.824326, 32.235283, 34.350204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247837, 32.850811, 33.987953>,  <33.522030, 32.760841, 34.000343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247837, 32.850811, 33.987953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163361, 32.461643, 34.025543>,  <34.112675, 32.228142, 34.048100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163361, 32.461643, 34.025543>,  <34.247837, 32.850811, 33.987953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163361, 32.461643, 34.025543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306568, -0.157227, -0.938774,
		0.928124, -0.169450, 0.331469,
		-0.211191, -0.972916, 0.093978,
		34.100002, 32.169769, 34.053738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823009, 32.459553, 33.717434>,  <34.247837, 32.850811, 33.987953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823009, 32.459553, 33.717434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524872, 32.193615, 33.697693>,  <34.345989, 32.034050, 33.685848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524872, 32.193615, 33.697693>,  <34.823009, 32.459553, 33.717434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524872, 32.193615, 33.697693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327527, -0.300693, -0.895717,
		0.580675, -0.683785, 0.441876,
		-0.745347, -0.664847, -0.049353,
		34.301266, 31.994162, 33.682888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057186, 32.076492, 33.249695>,  <34.823009, 32.459553, 33.717434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057186, 32.076492, 33.249695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687050, 31.929781, 33.288109>,  <34.464970, 31.841755, 33.311157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687050, 31.929781, 33.288109>,  <35.057186, 32.076492, 33.249695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687050, 31.929781, 33.288109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017531, -0.294419, -0.955516,
		0.378737, -0.882492, 0.278867,
		-0.925339, -0.366778, 0.096037,
		34.409447, 31.819748, 33.316921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113159, 31.504524, 32.723061>,  <35.057186, 32.076492, 33.249695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113159, 31.504524, 32.723061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731613, 31.599884, 32.796062>,  <34.502686, 31.657101, 32.839863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731613, 31.599884, 32.796062>,  <35.113159, 31.504524, 32.723061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731613, 31.599884, 32.796062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237191, -0.225656, -0.944892,
		-0.184071, -0.944589, 0.271790,
		-0.953865, 0.238393, 0.182511,
		34.445454, 31.671404, 32.850815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733856, 30.982105, 32.442268>,  <35.113159, 31.504524, 32.723061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733856, 30.982105, 32.442268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467079, 31.279079, 32.467518>,  <34.307014, 31.457264, 32.482666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467079, 31.279079, 32.467518>,  <34.733856, 30.982105, 32.442268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467079, 31.279079, 32.467518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413634, -0.298441, -0.860139,
		-0.619758, -0.599770, 0.506138,
		-0.666938, 0.742434, 0.063124,
		34.266998, 31.501810, 32.486454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230495, 30.649229, 32.174629>,  <34.733856, 30.982105, 32.442268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230495, 30.649229, 32.174629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142834, 31.038647, 32.148766>,  <34.090237, 31.272297, 32.133247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142834, 31.038647, 32.148766>,  <34.230495, 30.649229, 32.174629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142834, 31.038647, 32.148766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542753, -0.176717, -0.821091,
		-0.810795, -0.144854, 0.567123,
		-0.219159, 0.973545, -0.064661,
		34.077087, 31.330709, 32.129368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513496, 30.617369, 32.054642>,  <34.230495, 30.649229, 32.174629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513496, 30.617369, 32.054642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679451, 30.958359, 31.927422>,  <33.779022, 31.162952, 31.851089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679451, 30.958359, 31.927422>,  <33.513496, 30.617369, 32.054642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679451, 30.958359, 31.927422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302902, -0.200207, -0.931755,
		-0.857974, 0.482910, 0.175154,
		0.414887, 0.852476, -0.318047,
		33.803917, 31.214102, 31.832008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091507, 30.839777, 31.562412>,  <33.513496, 30.617369, 32.054642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091507, 30.839777, 31.562412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.412350, 31.063272, 31.478098>,  <33.604855, 31.197369, 31.427509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.412350, 31.063272, 31.478098>,  <33.091507, 30.839777, 31.562412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412350, 31.063272, 31.478098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169035, -0.126109, -0.977509,
		-0.572753, 0.819701, -0.006707,
		0.802111, 0.558737, -0.210787,
		33.652985, 31.230894, 31.414862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.848526, 31.232346, 31.087612>,  <33.091507, 30.839777, 31.562412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.848526, 31.232346, 31.087612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.243195, 31.256012, 31.026979>,  <33.479996, 31.270212, 30.990599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.243195, 31.256012, 31.026979>,  <32.848526, 31.232346, 31.087612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243195, 31.256012, 31.026979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141694, -0.145614, -0.979142,
		-0.080007, 0.987571, -0.135289,
		0.986672, 0.059168, -0.151583,
		33.539196, 31.273762, 30.981504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876148, 31.746227, 30.591393>,  <32.848526, 31.232346, 31.087612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876148, 31.746227, 30.591393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196796, 31.507095, 30.590530>,  <33.389187, 31.363617, 30.590014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196796, 31.507095, 30.590530>,  <32.876148, 31.746227, 30.591393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196796, 31.507095, 30.590530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047131, -0.059605, -0.997109,
		0.595972, 0.799405, -0.075957,
		0.801621, -0.597829, -0.002154,
		33.437283, 31.327747, 30.589884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243565, 32.009407, 29.932650>,  <32.876148, 31.746227, 30.591393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243565, 32.009407, 29.932650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410442, 31.654942, 30.013317>,  <33.510567, 31.442263, 30.061718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410442, 31.654942, 30.013317>,  <33.243565, 32.009407, 29.932650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410442, 31.654942, 30.013317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087539, -0.181687, -0.979452,
		0.904593, 0.426273, 0.001776,
		0.417192, -0.886161, 0.201668,
		33.535599, 31.389093, 30.073818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881001, 31.956995, 29.500809>,  <33.243565, 32.009407, 29.932650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881001, 31.956995, 29.500809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783779, 31.582436, 29.602064>,  <33.725445, 31.357700, 29.662817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783779, 31.582436, 29.602064>,  <33.881001, 31.956995, 29.500809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783779, 31.582436, 29.602064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200230, -0.303775, -0.931466,
		0.949122, -0.175710, 0.261330,
		-0.243054, -0.936401, 0.253137,
		33.710861, 31.301516, 29.678005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336369, 31.648552, 29.013998>,  <33.881001, 31.956995, 29.500809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336369, 31.648552, 29.013998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122295, 31.335402, 29.140924>,  <33.993851, 31.147511, 29.217081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122295, 31.335402, 29.140924>,  <34.336369, 31.648552, 29.013998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122295, 31.335402, 29.140924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153589, -0.459555, -0.874768,
		0.830659, -0.419421, 0.366185,
		-0.535178, -0.782876, 0.317315,
		33.961742, 31.100538, 29.236118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797447, 30.985825, 28.989412>,  <34.336369, 31.648552, 29.013998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797447, 30.985825, 28.989412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415546, 30.868719, 28.968452>,  <34.186405, 30.798456, 28.955875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415546, 30.868719, 28.968452>,  <34.797447, 30.985825, 28.989412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415546, 30.868719, 28.968452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205426, -0.521721, -0.828014,
		0.215073, -0.801310, 0.558253,
		-0.954748, -0.292763, -0.052402,
		34.129124, 30.780890, 28.952732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750378, 30.164036, 29.000389>,  <34.797447, 30.985825, 28.989412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750378, 30.164036, 29.000389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434196, 30.334148, 28.824064>,  <34.244488, 30.436216, 28.718269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434196, 30.334148, 28.824064>,  <34.750378, 30.164036, 29.000389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434196, 30.334148, 28.824064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190247, -0.513616, -0.836663,
		-0.582224, -0.745209, 0.325083,
		-0.790457, 0.425279, -0.440813,
		34.197060, 30.461733, 28.691820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522694, 29.617287, 28.545431>,  <34.750378, 30.164036, 29.000389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522694, 29.617287, 28.545431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.345951, 29.942286, 28.393318>,  <34.239906, 30.137285, 28.302050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.345951, 29.942286, 28.393318>,  <34.522694, 29.617287, 28.545431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345951, 29.942286, 28.393318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279707, -0.277999, -0.918956,
		-0.852367, -0.512412, -0.104426,
		-0.441854, 0.812497, -0.380282,
		34.213394, 30.186035, 28.279234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057049, 29.349077, 27.962473>,  <34.522694, 29.617287, 28.545431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057049, 29.349077, 27.962473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149368, 29.733654, 27.902657>,  <34.204758, 29.964399, 27.866766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149368, 29.733654, 27.902657>,  <34.057049, 29.349077, 27.962473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149368, 29.733654, 27.902657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316583, -0.219528, -0.922812,
		-0.920059, 0.165639, -0.355042,
		0.230795, 0.961442, -0.149541,
		34.218605, 30.022087, 27.857794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990238, 29.444441, 27.144524>,  <34.057049, 29.349077, 27.962473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990238, 29.444441, 27.144524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205284, 29.748171, 27.291166>,  <34.334312, 29.930408, 27.379152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205284, 29.748171, 27.291166>,  <33.990238, 29.444441, 27.144524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205284, 29.748171, 27.291166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532069, 0.031795, -0.846104,
		-0.654123, 0.649935, -0.386920,
		0.537610, 0.759324, 0.366609,
		34.366566, 29.975967, 27.401150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144928, 29.844431, 26.486792>,  <33.990238, 29.444441, 27.144524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144928, 29.844431, 26.486792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393009, 29.982567, 26.768526>,  <34.541859, 30.065449, 26.937567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393009, 29.982567, 26.768526>,  <34.144928, 29.844431, 26.486792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393009, 29.982567, 26.768526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736702, 0.052031, -0.674213,
		-0.269480, 0.937034, -0.222143,
		0.620202, 0.345340, 0.704337,
		34.579071, 30.086168, 26.979828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494591, 30.446850, 26.199991>,  <34.144928, 29.844431, 26.486792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494591, 30.446850, 26.199991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731186, 30.327038, 26.499437>,  <34.873142, 30.255150, 26.679106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731186, 30.327038, 26.499437>,  <34.494591, 30.446850, 26.199991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731186, 30.327038, 26.499437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783056, -0.007996, -0.621899,
		0.192264, 0.954053, 0.229820,
		0.591487, -0.299531, 0.748615,
		34.908630, 30.237179, 26.724022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919468, 30.892277, 26.197756>,  <34.494591, 30.446850, 26.199991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919468, 30.892277, 26.197756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084976, 30.587540, 26.397110>,  <35.184280, 30.404697, 26.516724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084976, 30.587540, 26.397110>,  <34.919468, 30.892277, 26.197756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084976, 30.587540, 26.397110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829714, 0.090285, -0.550839,
		0.374655, 0.641441, 0.669468,
		0.413774, -0.761841, 0.498386,
		35.209106, 30.358988, 26.546625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600861, 31.042158, 26.373934>,  <34.919468, 30.892277, 26.197756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600861, 31.042158, 26.373934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563091, 30.643946, 26.374752>,  <35.540428, 30.405018, 26.375242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563091, 30.643946, 26.374752>,  <35.600861, 31.042158, 26.373934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563091, 30.643946, 26.374752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844433, -0.081181, -0.529474,
		0.527273, -0.048269, 0.848324,
		-0.094425, -0.995530, 0.002045,
		35.534763, 30.345287, 26.375366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266788, 30.858496, 26.605621>,  <35.600861, 31.042158, 26.373934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266788, 30.858496, 26.605621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082512, 30.568670, 26.400578>,  <35.971947, 30.394775, 26.277552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082512, 30.568670, 26.400578>,  <36.266788, 30.858496, 26.605621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082512, 30.568670, 26.400578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833596, -0.154905, -0.530209,
		0.304765, -0.671574, 0.675357,
		-0.460691, -0.724564, -0.512612,
		35.944305, 30.351301, 26.246794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772160, 30.168787, 26.601109>,  <36.266788, 30.858496, 26.605621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772160, 30.168787, 26.601109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505394, 30.181751, 26.303337>,  <36.345333, 30.189529, 26.124674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505394, 30.181751, 26.303337>,  <36.772160, 30.168787, 26.601109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505394, 30.181751, 26.303337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717933, -0.239533, -0.653602,
		-0.199496, -0.970347, 0.136482,
		-0.666913, 0.032406, -0.744431,
		36.305321, 30.191475, 26.080008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953236, 29.601673, 26.155548>,  <36.772160, 30.168787, 26.601109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953236, 29.601673, 26.155548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742783, 29.867308, 25.943066>,  <36.616512, 30.026688, 25.815577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742783, 29.867308, 25.943066>,  <36.953236, 29.601673, 26.155548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742783, 29.867308, 25.943066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614253, -0.135223, -0.777436,
		-0.588114, -0.735328, -0.336770,
		-0.526132, 0.664084, -0.531204,
		36.584942, 30.066532, 25.783705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158871, 29.424875, 25.427929>,  <36.953236, 29.601673, 26.155548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158871, 29.424875, 25.427929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969196, 29.776653, 25.411303>,  <36.855392, 29.987720, 25.401327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969196, 29.776653, 25.411303>,  <37.158871, 29.424875, 25.427929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969196, 29.776653, 25.411303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462790, 0.208812, -0.861524,
		-0.748982, -0.427757, -0.506013,
		-0.474184, 0.879444, -0.041565,
		36.826942, 30.040487, 25.398832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749882, 29.412598, 24.761120>,  <37.158871, 29.424875, 25.427929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749882, 29.412598, 24.761120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806999, 29.787481, 24.888401>,  <36.841270, 30.012411, 24.964769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806999, 29.787481, 24.888401>,  <36.749882, 29.412598, 24.761120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806999, 29.787481, 24.888401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183798, 0.290796, -0.938965,
		-0.972537, 0.192560, -0.130734,
		0.142790, 0.937208, 0.318202,
		36.849834, 30.068644, 24.983862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462769, 29.811853, 24.232273>,  <36.749882, 29.412598, 24.761120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462769, 29.811853, 24.232273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715984, 30.060038, 24.417440>,  <36.867912, 30.208948, 24.528542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715984, 30.060038, 24.417440>,  <36.462769, 29.811853, 24.232273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715984, 30.060038, 24.417440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427635, 0.218187, -0.877224,
		-0.645285, 0.753276, -0.127210,
		0.633037, 0.620459, 0.462920,
		36.905895, 30.246176, 24.556316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489742, 30.433256, 23.870314>,  <36.462769, 29.811853, 24.232273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489742, 30.433256, 23.870314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829987, 30.477501, 24.075928>,  <37.034134, 30.504047, 24.199295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829987, 30.477501, 24.075928>,  <36.489742, 30.433256, 23.870314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829987, 30.477501, 24.075928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488457, 0.195615, -0.850379,
		-0.194616, 0.974423, 0.112361,
		0.850608, 0.110614, 0.514033,
		37.085171, 30.510685, 24.230137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731709, 31.092794, 23.741343>,  <36.489742, 30.433256, 23.870314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731709, 31.092794, 23.741343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977776, 31.385832, 23.624809>,  <37.125416, 31.561655, 23.554890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977776, 31.385832, 23.624809>,  <36.731709, 31.092794, 23.741343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977776, 31.385832, 23.624809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014641, -0.358845, -0.933282,
		-0.788260, 0.578391, -0.210024,
		0.615168, 0.732594, -0.291331,
		37.162327, 31.605610, 23.537411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555157, 31.168064, 23.122110>,  <36.731709, 31.092794, 23.741343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555157, 31.168064, 23.122110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.925533, 31.318514, 23.108458>,  <37.147758, 31.408783, 23.100266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.925533, 31.318514, 23.108458>,  <36.555157, 31.168064, 23.122110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925533, 31.318514, 23.108458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149139, -0.447182, -0.881921,
		-0.346975, 0.811517, -0.470159,
		0.925941, 0.376123, -0.034132,
		37.203316, 31.431351, 23.098217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657928, 31.476280, 22.495630>,  <36.555157, 31.168064, 23.122110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657928, 31.476280, 22.495630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045525, 31.409250, 22.568270>,  <37.278084, 31.369032, 22.611853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045525, 31.409250, 22.568270>,  <36.657928, 31.476280, 22.495630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045525, 31.409250, 22.568270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009189, -0.709968, -0.704174,
		0.246930, 0.684006, -0.686412,
		0.968990, -0.167574, 0.181597,
		37.336220, 31.358978, 22.622749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065247, 31.383478, 21.839167>,  <36.657928, 31.476280, 22.495630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065247, 31.383478, 21.839167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280270, 31.205181, 22.125481>,  <37.409283, 31.098204, 22.297270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280270, 31.205181, 22.125481>,  <37.065247, 31.383478, 21.839167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280270, 31.205181, 22.125481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301069, -0.691454, -0.656695,
		0.787650, 0.568510, -0.237496,
		0.537555, -0.445743, 0.715785,
		37.441536, 31.071459, 22.340216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688000, 31.030504, 21.560736>,  <37.065247, 31.383478, 21.839167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688000, 31.030504, 21.560736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670124, 30.828762, 21.905672>,  <37.659401, 30.707716, 22.112633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670124, 30.828762, 21.905672>,  <37.688000, 31.030504, 21.560736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670124, 30.828762, 21.905672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333139, -0.821315, -0.463098,
		0.941818, 0.266584, 0.204721,
		-0.044686, -0.504355, 0.862340,
		37.656719, 30.677456, 22.164373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339241, 30.543419, 21.818268>,  <37.688000, 31.030504, 21.560736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339241, 30.543419, 21.818268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.961689, 30.425135, 21.877121>,  <37.735157, 30.354164, 21.912434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.961689, 30.425135, 21.877121>,  <38.339241, 30.543419, 21.818268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961689, 30.425135, 21.877121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196580, -0.860925, -0.469217,
		0.265425, -0.413960, 0.870739,
		-0.943878, -0.295712, 0.147134,
		37.678524, 30.336422, 21.921261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550812, 30.948469, 22.288673>,  <38.339241, 30.543419, 21.818268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550812, 30.948469, 22.288673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.282883, 31.238373, 22.224102>,  <38.122124, 31.412315, 22.185360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.282883, 31.238373, 22.224102>,  <38.550812, 30.948469, 22.288673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282883, 31.238373, 22.224102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729967, 0.602943, -0.321880,
		-0.135955, -0.333439, -0.932917,
		-0.669824, 0.724760, -0.161427,
		38.081936, 31.455801, 22.175674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291893, 30.715580, 22.929039>,  <38.550812, 30.948469, 22.288673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291893, 30.715580, 22.929039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066513, 30.926386, 22.674551>,  <37.931286, 31.052870, 22.521858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066513, 30.926386, 22.674551>,  <38.291893, 30.715580, 22.929039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066513, 30.926386, 22.674551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116014, 0.712001, 0.692529,
		0.817961, 0.464018, -0.340038,
		-0.563454, 0.527013, -0.636222,
		37.897476, 31.084490, 22.483685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498665, 31.403227, 23.018272>,  <38.291893, 30.715580, 22.929039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498665, 31.403227, 23.018272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126663, 31.408739, 22.871359>,  <37.903461, 31.412046, 22.783211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126663, 31.408739, 22.871359>,  <38.498665, 31.403227, 23.018272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126663, 31.408739, 22.871359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301809, 0.541664, 0.784545,
		0.209755, 0.840482, -0.499593,
		-0.930008, 0.013780, -0.367281,
		37.847660, 31.412872, 22.761175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351780, 32.017353, 22.873413>,  <38.498665, 31.403227, 23.018272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351780, 32.017353, 22.873413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008686, 31.830103, 22.958405>,  <37.802830, 31.717754, 23.009399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008686, 31.830103, 22.958405>,  <38.351780, 32.017353, 22.873413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008686, 31.830103, 22.958405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162394, 0.638875, 0.751976,
		-0.487765, 0.610492, -0.624007,
		-0.857737, -0.468122, 0.212481,
		37.751366, 31.689667, 23.022148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894398, 32.565037, 23.101475>,  <38.351780, 32.017353, 22.873413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894398, 32.565037, 23.101475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724098, 32.231686, 23.242458>,  <37.621918, 32.031677, 23.327047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724098, 32.231686, 23.242458>,  <37.894398, 32.565037, 23.101475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724098, 32.231686, 23.242458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444468, 0.531906, 0.720780,
		-0.788153, 0.150216, -0.596866,
		-0.425749, -0.833373, 0.352457,
		37.596375, 31.981674, 23.348196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131706, 32.535645, 23.034941>,  <37.894398, 32.565037, 23.101475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131706, 32.535645, 23.034941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270538, 32.330635, 23.349102>,  <37.353840, 32.207630, 23.537600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270538, 32.330635, 23.349102>,  <37.131706, 32.535645, 23.034941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270538, 32.330635, 23.349102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491250, 0.614023, 0.617777,
		-0.798878, -0.600249, -0.038658,
		0.347083, -0.512519, 0.785403,
		37.374664, 32.176880, 23.584723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547352, 32.372562, 23.457930>,  <37.131706, 32.535645, 23.034941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547352, 32.372562, 23.457930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.848248, 32.317501, 23.715670>,  <37.028786, 32.284462, 23.870314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.848248, 32.317501, 23.715670>,  <36.547352, 32.372562, 23.457930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848248, 32.317501, 23.715670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529462, 0.455797, 0.715485,
		-0.392184, -0.879375, 0.269984,
		0.752238, -0.137656, 0.644352,
		37.073917, 32.276203, 23.908976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288326, 32.018517, 24.099302>,  <36.547352, 32.372562, 23.457930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288326, 32.018517, 24.099302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.628445, 32.204437, 24.198051>,  <36.832516, 32.315990, 24.257301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.628445, 32.204437, 24.198051>,  <36.288326, 32.018517, 24.099302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628445, 32.204437, 24.198051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442749, 0.378136, 0.813011,
		0.284536, -0.800609, 0.527319,
		0.850302, 0.464801, 0.246875,
		36.883533, 32.343880, 24.272114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232365, 32.076225, 24.803017>,  <36.288326, 32.018517, 24.099302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232365, 32.076225, 24.803017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512993, 32.347904, 24.716764>,  <36.681370, 32.510910, 24.665012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512993, 32.347904, 24.716764>,  <36.232365, 32.076225, 24.803017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512993, 32.347904, 24.716764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302105, 0.557541, 0.773228,
		0.645396, -0.477328, 0.596341,
		0.701567, 0.679195, -0.215631,
		36.723465, 32.551662, 24.652075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681953, 32.163830, 25.419590>,  <36.232365, 32.076225, 24.803017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681953, 32.163830, 25.419590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.697392, 32.488525, 25.186491>,  <36.706654, 32.683342, 25.046631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.697392, 32.488525, 25.186491>,  <36.681953, 32.163830, 25.419590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697392, 32.488525, 25.186491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149586, 0.581304, 0.799818,
		0.987995, 0.056300, 0.143861,
		0.038597, 0.811736, -0.582747,
		36.708969, 32.732048, 25.011667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124020, 32.647213, 25.776308>,  <36.681953, 32.163830, 25.419590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124020, 32.647213, 25.776308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928680, 32.873066, 25.510162>,  <36.811478, 33.008575, 25.350475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928680, 32.873066, 25.510162>,  <37.124020, 32.647213, 25.776308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928680, 32.873066, 25.510162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070391, 0.734494, 0.674955,
		0.869807, 0.376446, -0.318942,
		-0.488345, 0.564630, -0.665366,
		36.782177, 33.042454, 25.310553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448200, 33.425400, 25.691128>,  <37.124020, 32.647213, 25.776308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448200, 33.425400, 25.691128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063984, 33.453659, 25.583525>,  <36.833454, 33.470615, 25.518963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063984, 33.453659, 25.583525>,  <37.448200, 33.425400, 25.691128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063984, 33.453659, 25.583525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176113, 0.594103, 0.784873,
		0.215264, 0.801281, -0.558220,
		-0.960544, 0.070645, -0.269006,
		36.775822, 33.474854, 25.502823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278862, 34.141586, 25.698845>,  <37.448200, 33.425400, 25.691128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278862, 34.141586, 25.698845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928749, 33.948200, 25.703783>,  <36.718681, 33.832169, 25.706745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928749, 33.948200, 25.703783>,  <37.278862, 34.141586, 25.698845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928749, 33.948200, 25.703783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282745, 0.532265, 0.797966,
		-0.392356, 0.694952, -0.602577,
		-0.875278, -0.483462, 0.012343,
		36.666164, 33.803162, 25.707485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792603, 34.692070, 25.699741>,  <37.278862, 34.141586, 25.698845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792603, 34.692070, 25.699741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.616047, 34.361858, 25.840414>,  <36.510113, 34.163731, 25.924818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.616047, 34.361858, 25.840414>,  <36.792603, 34.692070, 25.699741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616047, 34.361858, 25.840414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416045, 0.535531, 0.734923,
		-0.795035, 0.178073, -0.579835,
		-0.441390, -0.825528, 0.351680,
		36.483631, 34.114201, 25.945917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069809, 34.889511, 25.953058>,  <36.792603, 34.692070, 25.699741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069809, 34.889511, 25.953058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148369, 34.541927, 26.134758>,  <36.195503, 34.333378, 26.243778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148369, 34.541927, 26.134758>,  <36.069809, 34.889511, 25.953058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148369, 34.541927, 26.134758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521762, 0.299619, 0.798744,
		-0.830176, -0.393879, -0.394546,
		0.196395, -0.868958, 0.454248,
		36.207287, 34.281239, 26.271032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433460, 34.732979, 26.415424>,  <36.069809, 34.889511, 25.953058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433460, 34.732979, 26.415424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728916, 34.506077, 26.561100>,  <35.906189, 34.369934, 26.648504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728916, 34.506077, 26.561100>,  <35.433460, 34.732979, 26.415424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728916, 34.506077, 26.561100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338153, 0.155566, 0.928144,
		-0.583151, -0.808715, -0.076912,
		0.738639, -0.567257, 0.364188,
		35.950508, 34.335899, 26.670357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104095, 34.454018, 26.965443>,  <35.433460, 34.732979, 26.415424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104095, 34.454018, 26.965443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491879, 34.402798, 27.049107>,  <35.724548, 34.372066, 27.099304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491879, 34.402798, 27.049107>,  <35.104095, 34.454018, 26.965443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491879, 34.402798, 27.049107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214539, -0.029609, 0.976266,
		-0.118816, -0.991326, -0.056176,
		0.969462, -0.128048, 0.209160,
		35.782719, 34.364384, 27.111855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136578, 33.883759, 27.344748>,  <35.104095, 34.454018, 26.965443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136578, 33.883759, 27.344748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457047, 34.103382, 27.439953>,  <35.649330, 34.235157, 27.497076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457047, 34.103382, 27.439953>,  <35.136578, 33.883759, 27.344748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457047, 34.103382, 27.439953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303458, 0.029947, 0.952374,
		0.515784, -0.835245, 0.190610,
		0.801174, 0.549062, 0.238016,
		35.697399, 34.268101, 27.511358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462513, 33.610497, 27.921097>,  <35.136578, 33.883759, 27.344748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462513, 33.610497, 27.921097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563244, 33.997295, 27.905584>,  <35.623680, 34.229374, 27.896276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563244, 33.997295, 27.905584>,  <35.462513, 33.610497, 27.921097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563244, 33.997295, 27.905584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252235, 0.104271, 0.962032,
		0.934324, -0.232481, 0.270168,
		0.251824, 0.966995, -0.038783,
		35.638790, 34.287395, 27.893950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691727, 33.785755, 28.574467>,  <35.462513, 33.610497, 27.921097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691727, 33.785755, 28.574467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674541, 34.171116, 28.468628>,  <35.664230, 34.402332, 28.405125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674541, 34.171116, 28.468628>,  <35.691727, 33.785755, 28.574467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674541, 34.171116, 28.468628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104817, 0.259031, 0.960165,
		0.993563, 0.068988, 0.089852,
		-0.042965, 0.963402, -0.264595,
		35.661652, 34.460136, 28.389250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984749, 34.306236, 29.173975>,  <35.691727, 33.785755, 28.574467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984749, 34.306236, 29.173975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753819, 34.543758, 28.949802>,  <35.615261, 34.686272, 28.815298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753819, 34.543758, 28.949802>,  <35.984749, 34.306236, 29.173975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753819, 34.543758, 28.949802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347222, 0.442675, 0.826726,
		0.739006, 0.671886, -0.049386,
		-0.577328, 0.593808, -0.560433,
		35.580620, 34.721901, 28.781673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062336, 34.912075, 29.387676>,  <35.984749, 34.306236, 29.173975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062336, 34.912075, 29.387676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702831, 34.925919, 29.212849>,  <35.487129, 34.934223, 29.107952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702831, 34.925919, 29.212849>,  <36.062336, 34.912075, 29.387676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702831, 34.925919, 29.212849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402098, 0.332323, 0.853158,
		0.174773, 0.942531, -0.284764,
		-0.898761, 0.034606, -0.437071,
		35.433205, 34.936302, 29.081728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860886, 35.592220, 29.515663>,  <36.062336, 34.912075, 29.387676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860886, 35.592220, 29.515663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513435, 35.415226, 29.426483>,  <35.304966, 35.309029, 29.372974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513435, 35.415226, 29.426483>,  <35.860886, 35.592220, 29.515663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513435, 35.415226, 29.426483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453863, 0.530061, 0.716270,
		-0.198760, 0.723356, -0.661249,
		-0.868621, -0.442483, -0.222949,
		35.252850, 35.282482, 29.359598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398109, 36.148502, 29.411621>,  <35.860886, 35.592220, 29.515663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398109, 36.148502, 29.411621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174461, 35.824570, 29.482685>,  <35.040272, 35.630211, 29.525324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174461, 35.824570, 29.482685>,  <35.398109, 36.148502, 29.411621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174461, 35.824570, 29.482685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564733, 0.528883, 0.633529,
		-0.607014, 0.253884, -0.753045,
		-0.559116, -0.809831, 0.177662,
		35.006725, 35.581619, 29.535984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732132, 36.497955, 29.374346>,  <35.398109, 36.148502, 29.411621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732132, 36.497955, 29.374346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696175, 36.140423, 29.550066>,  <34.674603, 35.925903, 29.655499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696175, 36.140423, 29.550066>,  <34.732132, 36.497955, 29.374346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696175, 36.140423, 29.550066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798458, 0.328323, 0.504647,
		-0.595302, -0.305399, -0.743200,
		-0.089892, -0.893832, 0.439299,
		34.669209, 35.872272, 29.681856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027786, 36.367256, 29.513550>,  <34.732132, 36.497955, 29.374346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027786, 36.367256, 29.513550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201710, 36.137348, 29.790846>,  <34.306065, 35.999405, 29.957224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201710, 36.137348, 29.790846>,  <34.027786, 36.367256, 29.513550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201710, 36.137348, 29.790846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753825, 0.188818, 0.629362,
		-0.492634, -0.796234, -0.351175,
		0.434811, -0.574769, 0.693239,
		34.332153, 35.964916, 29.998817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473492, 35.954590, 29.799574>,  <34.027786, 36.367256, 29.513550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473492, 35.954590, 29.799574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748386, 35.908161, 30.086414>,  <33.913322, 35.880302, 30.258518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748386, 35.908161, 30.086414>,  <33.473492, 35.954590, 29.799574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.748386, 35.908161, 30.086414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702370, 0.145811, 0.696718,
		-0.185432, -0.982479, 0.018679,
		0.687235, -0.116074, 0.717102,
		33.954556, 35.873341, 30.301544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257362, 35.311623, 30.238428>,  <33.473492, 35.954590, 29.799574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257362, 35.311623, 30.238428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504658, 35.547714, 30.446045>,  <33.653034, 35.689369, 30.570614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504658, 35.547714, 30.446045>,  <33.257362, 35.311623, 30.238428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504658, 35.547714, 30.446045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533028, -0.170464, 0.828748,
		0.577632, -0.789029, 0.209223,
		0.618241, 0.590233, 0.519040,
		33.690128, 35.724785, 30.601757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266010, 35.004341, 30.884396>,  <33.257362, 35.311623, 30.238428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266010, 35.004341, 30.884396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448936, 35.346413, 30.981983>,  <33.558693, 35.551655, 31.040537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448936, 35.346413, 30.981983>,  <33.266010, 35.004341, 30.884396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448936, 35.346413, 30.981983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449671, -0.014314, 0.893080,
		0.767239, -0.518128, 0.378005,
		0.457319, 0.855183, 0.243970,
		33.586132, 35.602966, 31.055174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611065, 34.860527, 31.317984>,  <33.266010, 35.004341, 30.884396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611065, 34.860527, 31.317984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539593, 35.251038, 31.366890>,  <33.496708, 35.485344, 31.396235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539593, 35.251038, 31.366890>,  <33.611065, 34.860527, 31.317984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539593, 35.251038, 31.366890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370554, -0.181891, 0.910827,
		0.911461, 0.117444, 0.394265,
		-0.178685, 0.976280, 0.122267,
		33.485989, 35.543922, 31.403570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878529, 35.072395, 32.125145>,  <33.611065, 34.860527, 31.317984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878529, 35.072395, 32.125145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647873, 35.368694, 31.987284>,  <33.509480, 35.546474, 31.904566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647873, 35.368694, 31.987284>,  <33.878529, 35.072395, 32.125145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647873, 35.368694, 31.987284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477229, 0.037018, 0.877999,
		0.663131, 0.670767, 0.332158,
		-0.576637, 0.740744, -0.344657,
		33.474880, 35.590916, 31.883886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934437, 35.719837, 32.642723>,  <33.878529, 35.072395, 32.125145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934437, 35.719837, 32.642723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.585911, 35.725872, 32.446526>,  <33.376797, 35.729492, 32.328808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.585911, 35.725872, 32.446526>,  <33.934437, 35.719837, 32.642723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585911, 35.725872, 32.446526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490704, -0.035809, 0.870590,
		-0.004431, 0.999245, 0.038603,
		-0.871315, 0.015086, -0.490492,
		33.324516, 35.730396, 32.299377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563347, 36.261158, 32.954464>,  <33.934437, 35.719837, 32.642723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563347, 36.261158, 32.954464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279110, 36.066429, 32.751266>,  <33.108566, 35.949593, 32.629349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279110, 36.066429, 32.751266>,  <33.563347, 36.261158, 32.954464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279110, 36.066429, 32.751266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640639, 0.149134, 0.753220,
		-0.290923, 0.860677, -0.417850,
		-0.710595, -0.486820, -0.507997,
		33.065933, 35.920383, 32.598866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964813, 36.572285, 33.146469>,  <33.563347, 36.261158, 32.954464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964813, 36.572285, 33.146469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833939, 36.216373, 33.019196>,  <32.755413, 36.002827, 32.942833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833939, 36.216373, 33.019196>,  <32.964813, 36.572285, 33.146469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833939, 36.216373, 33.019196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666105, -0.021669, 0.745543,
		-0.670265, 0.455875, -0.585597,
		-0.327185, -0.889780, -0.318184,
		32.735783, 35.949440, 32.923740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237286, 36.649860, 33.227970>,  <32.964813, 36.572285, 33.146469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237286, 36.649860, 33.227970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.275295, 36.251675, 33.225952>,  <32.298103, 36.012764, 33.224739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.275295, 36.251675, 33.225952>,  <32.237286, 36.649860, 33.227970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275295, 36.251675, 33.225952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572461, -0.058795, 0.817821,
		-0.814407, -0.074827, -0.575450,
		0.095028, -0.995462, -0.005047,
		32.303802, 35.953037, 33.224438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641077, 36.343666, 33.354065>,  <32.237286, 36.649860, 33.227970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641077, 36.343666, 33.354065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870375, 36.023060, 33.422146>,  <32.007954, 35.830696, 33.462994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870375, 36.023060, 33.422146>,  <31.641077, 36.343666, 33.354065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870375, 36.023060, 33.422146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603101, -0.272112, 0.749816,
		-0.554672, -0.532478, -0.639379,
		0.573243, -0.801512, 0.170205,
		32.042347, 35.782608, 33.473209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.197790, 35.776909, 33.468384>,  <31.641077, 36.343666, 33.354065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.197790, 35.776909, 33.468384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534452, 35.661659, 33.651077>,  <31.736450, 35.592510, 33.760693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534452, 35.661659, 33.651077>,  <31.197790, 35.776909, 33.468384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534452, 35.661659, 33.651077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539201, -0.494848, 0.681460,
		0.029668, -0.819823, -0.571847,
		0.841654, -0.288122, 0.456730,
		31.786949, 35.575222, 33.788097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.089905, 35.035797, 33.718353>,  <31.197790, 35.776909, 33.468384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.089905, 35.035797, 33.718353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.360594, 35.206455, 33.958359>,  <31.523006, 35.308849, 34.102364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.360594, 35.206455, 33.958359>,  <31.089905, 35.035797, 33.718353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.360594, 35.206455, 33.958359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429660, -0.432945, 0.792434,
		0.597863, -0.794060, -0.109671,
		0.676722, 0.426646, 0.600018,
		31.563610, 35.334450, 34.138363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.146900, 34.572807, 34.252586>,  <31.089905, 35.035797, 33.718353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.146900, 34.572807, 34.252586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327431, 34.900780, 34.393456>,  <31.435749, 35.097561, 34.477978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327431, 34.900780, 34.393456>,  <31.146900, 34.572807, 34.252586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.327431, 34.900780, 34.393456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261362, -0.255886, 0.930705,
		0.853226, -0.512096, 0.098809,
		0.451327, 0.819927, 0.352171,
		31.462830, 35.146759, 34.499107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499371, 34.248951, 34.901119>,  <31.146900, 34.572807, 34.252586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499371, 34.248951, 34.901119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464613, 34.645939, 34.935669>,  <31.443758, 34.884132, 34.956398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464613, 34.645939, 34.935669>,  <31.499371, 34.248951, 34.901119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464613, 34.645939, 34.935669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105254, -0.095368, 0.989862,
		0.990642, 0.076922, 0.112748,
		-0.086894, 0.992466, 0.086379,
		31.438545, 34.943680, 34.961582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878801, 34.336887, 35.410748>,  <31.499371, 34.248951, 34.901119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878801, 34.336887, 35.410748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.675404, 34.681217, 35.402542>,  <31.553366, 34.887814, 35.397617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.675404, 34.681217, 35.402542>,  <31.878801, 34.336887, 35.410748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675404, 34.681217, 35.402542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074878, -0.020473, 0.996982,
		0.857805, 0.508494, 0.074867,
		-0.508492, 0.860822, -0.020513,
		31.522856, 34.939465, 35.396389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124969, 34.714458, 36.026627>,  <31.878801, 34.336887, 35.410748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124969, 34.714458, 36.026627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.792852, 34.912392, 35.924053>,  <31.593582, 35.031151, 35.862511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.792852, 34.912392, 35.924053>,  <32.124969, 34.714458, 36.026627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.792852, 34.912392, 35.924053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164055, 0.222719, 0.960980,
		0.532638, 0.839961, -0.103741,
		-0.830290, 0.494835, -0.256429,
		31.543766, 35.060841, 35.847126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121193, 35.245857, 36.425182>,  <32.124969, 34.714458, 36.026627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121193, 35.245857, 36.425182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738214, 35.206905, 36.316505>,  <31.508427, 35.183533, 36.251301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738214, 35.206905, 36.316505>,  <32.121193, 35.245857, 36.425182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738214, 35.206905, 36.316505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281996, 0.115233, 0.952470,
		-0.061445, 0.988554, -0.137790,
		-0.957446, -0.097380, -0.271688,
		31.450981, 35.177692, 36.235001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586926, 35.545494, 36.915752>,  <32.121193, 35.245857, 36.425182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586926, 35.545494, 36.915752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866043, 35.324089, 37.097614>,  <33.033512, 35.191246, 37.206730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866043, 35.324089, 37.097614>,  <32.586926, 35.545494, 36.915752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866043, 35.324089, 37.097614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698891, 0.387008, -0.601478,
		0.156972, 0.737459, 0.656897,
		0.697790, -0.553515, 0.454654,
		33.075378, 35.158035, 37.234009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138222, 35.963898, 37.080673>,  <32.586926, 35.545494, 36.915752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138222, 35.963898, 37.080673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282459, 35.591682, 37.055161>,  <33.369003, 35.368355, 37.039852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282459, 35.591682, 37.055161>,  <33.138222, 35.963898, 37.080673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282459, 35.591682, 37.055161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769389, 0.335411, -0.543636,
		0.527267, 0.146961, 0.836894,
		0.360597, -0.930538, -0.063781,
		33.390640, 35.312519, 37.036026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836449, 36.002861, 37.094746>,  <33.138222, 35.963898, 37.080673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836449, 36.002861, 37.094746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798332, 35.643772, 36.922691>,  <33.775463, 35.428318, 36.819458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798332, 35.643772, 36.922691>,  <33.836449, 36.002861, 37.094746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798332, 35.643772, 36.922691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757264, 0.215097, -0.616672,
		0.646120, -0.384491, 0.659314,
		-0.095288, -0.897720, -0.430139,
		33.769745, 35.374454, 36.793648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501827, 35.794029, 36.967999>,  <33.836449, 36.002861, 37.094746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501827, 35.794029, 36.967999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281612, 35.557354, 36.732437>,  <34.149483, 35.415348, 36.591099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281612, 35.557354, 36.732437>,  <34.501827, 35.794029, 36.967999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281612, 35.557354, 36.732437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722068, 0.016521, -0.691625,
		0.418955, -0.805998, 0.418142,
		-0.550541, -0.591687, -0.588907,
		34.116451, 35.379848, 36.555763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868896, 35.289379, 36.744442>,  <34.501827, 35.794029, 36.967999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868896, 35.289379, 36.744442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584255, 35.260479, 36.464901>,  <34.413471, 35.243137, 36.297176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584255, 35.260479, 36.464901>,  <34.868896, 35.289379, 36.744442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584255, 35.260479, 36.464901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700939, -0.005104, -0.713203,
		0.047965, -0.997374, 0.054278,
		-0.711607, -0.072254, -0.698853,
		34.370773, 35.238804, 36.255245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927738, 34.608810, 36.429817>,  <34.868896, 35.289379, 36.744442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927738, 34.608810, 36.429817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747520, 34.854973, 36.171116>,  <34.639389, 35.002670, 36.015896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747520, 34.854973, 36.171116>,  <34.927738, 34.608810, 36.429817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747520, 34.854973, 36.171116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740695, -0.146746, -0.655619,
		-0.498380, -0.774429, -0.389714,
		-0.450541, 0.615407, -0.646751,
		34.612358, 35.039597, 35.977089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064198, 34.283031, 35.808125>,  <34.927738, 34.608810, 36.429817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064198, 34.283031, 35.808125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963898, 34.643173, 35.665863>,  <34.903717, 34.859257, 35.580505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963898, 34.643173, 35.665863>,  <35.064198, 34.283031, 35.808125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963898, 34.643173, 35.665863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500131, -0.194072, -0.843922,
		-0.828851, -0.389483, -0.401632,
		-0.250748, 0.900355, -0.355650,
		34.888672, 34.913280, 35.559170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992332, 34.231632, 35.073746>,  <35.064198, 34.283031, 35.808125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992332, 34.231632, 35.073746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.014660, 34.627159, 35.129059>,  <35.028057, 34.864475, 35.162247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.014660, 34.627159, 35.129059>,  <34.992332, 34.231632, 35.073746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014660, 34.627159, 35.129059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438820, 0.100114, -0.892980,
		-0.896840, 0.110526, -0.428326,
		0.055817, 0.988818, 0.138287,
		35.031406, 34.923805, 35.170544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723015, 34.553013, 34.479649>,  <34.992332, 34.231632, 35.073746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723015, 34.553013, 34.479649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936035, 34.846115, 34.649097>,  <35.063847, 35.021976, 34.750767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936035, 34.846115, 34.649097>,  <34.723015, 34.553013, 34.479649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936035, 34.846115, 34.649097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409341, 0.215098, -0.886664,
		-0.740830, 0.645599, -0.185398,
		0.532551, 0.732758, 0.423621,
		35.095798, 35.065941, 34.776184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623684, 35.119286, 34.009254>,  <34.723015, 34.553013, 34.479649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623684, 35.119286, 34.009254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960876, 35.182571, 34.214912>,  <35.163193, 35.220543, 34.338306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960876, 35.182571, 34.214912>,  <34.623684, 35.119286, 34.009254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960876, 35.182571, 34.214912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464231, 0.268930, -0.843900,
		-0.271789, 0.950076, 0.153253,
		0.842983, 0.158218, 0.514147,
		35.213772, 35.230038, 34.369156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815704, 35.765282, 33.785828>,  <34.623684, 35.119286, 34.009254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815704, 35.765282, 33.785828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.132610, 35.568783, 33.930595>,  <35.322754, 35.450882, 34.017456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.132610, 35.568783, 33.930595>,  <34.815704, 35.765282, 33.785828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132610, 35.568783, 33.930595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471111, 0.115545, -0.874474,
		0.387768, 0.863321, 0.322976,
		0.792269, -0.491251, 0.361915,
		35.370293, 35.421406, 34.039169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420540, 36.102200, 33.424397>,  <34.815704, 35.765282, 33.785828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420540, 36.102200, 33.424397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560028, 35.757992, 33.572937>,  <35.643719, 35.551468, 33.662060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560028, 35.757992, 33.572937>,  <35.420540, 36.102200, 33.424397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560028, 35.757992, 33.572937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546001, -0.135516, -0.826752,
		0.761761, 0.491059, 0.422588,
		0.348717, -0.860521, 0.371350,
		35.664642, 35.499836, 33.684341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193081, 36.250969, 33.446373>,  <35.420540, 36.102200, 33.424397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193081, 36.250969, 33.446373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.149223, 35.853535, 33.457405>,  <36.122910, 35.615074, 33.464024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.149223, 35.853535, 33.457405>,  <36.193081, 36.250969, 33.446373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149223, 35.853535, 33.457405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520145, -0.080998, -0.850228,
		0.847011, -0.078877, 0.525691,
		-0.109644, -0.993588, 0.027579,
		36.116329, 35.555458, 33.465679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838676, 35.909607, 33.420307>,  <36.193081, 36.250969, 33.446373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838676, 35.909607, 33.420307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577499, 35.645096, 33.272591>,  <36.420795, 35.486389, 33.183960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577499, 35.645096, 33.272591>,  <36.838676, 35.909607, 33.420307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577499, 35.645096, 33.272591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543428, -0.069378, -0.836584,
		0.527596, -0.746923, 0.404658,
		-0.652938, -0.661281, -0.369295,
		36.381618, 35.446712, 33.161800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243866, 35.400177, 33.098751>,  <36.838676, 35.909607, 33.420307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243866, 35.400177, 33.098751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891350, 35.315685, 32.929649>,  <36.679840, 35.264992, 32.828190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891350, 35.315685, 32.929649>,  <37.243866, 35.400177, 33.098751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891350, 35.315685, 32.929649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463970, -0.216704, -0.858936,
		0.089818, -0.953112, 0.288981,
		-0.881286, -0.211226, -0.422752,
		36.626965, 35.252319, 32.802822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352268, 35.047787, 32.552738>,  <37.243866, 35.400177, 33.098751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352268, 35.047787, 32.552738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.976254, 35.101971, 32.427536>,  <36.750645, 35.134483, 32.352413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.976254, 35.101971, 32.427536>,  <37.352268, 35.047787, 32.552738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976254, 35.101971, 32.427536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271392, -0.258730, -0.927041,
		-0.206562, -0.956405, 0.206454,
		-0.940042, 0.135461, -0.313004,
		36.694241, 35.142609, 32.333633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294167, 34.559116, 32.218895>,  <37.352268, 35.047787, 32.552738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294167, 34.559116, 32.218895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024208, 34.805412, 32.056225>,  <36.862232, 34.953190, 31.958622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024208, 34.805412, 32.056225>,  <37.294167, 34.559116, 32.218895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024208, 34.805412, 32.056225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264582, -0.312550, -0.912310,
		-0.688851, -0.723310, 0.048024,
		-0.674892, 0.615739, -0.406675,
		36.821739, 34.990135, 31.934223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861134, 34.144756, 31.584169>,  <37.294167, 34.559116, 32.218895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861134, 34.144756, 31.584169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829697, 34.538025, 31.518211>,  <36.810833, 34.773987, 31.478638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829697, 34.538025, 31.518211>,  <36.861134, 34.144756, 31.584169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829697, 34.538025, 31.518211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337405, -0.129410, -0.932422,
		-0.938073, -0.128918, -0.321557,
		-0.078593, 0.983175, -0.164893,
		36.806118, 34.832977, 31.468744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520031, 34.138191, 30.962639>,  <36.861134, 34.144756, 31.584169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520031, 34.138191, 30.962639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.720051, 34.482048, 31.004532>,  <36.840061, 34.688362, 31.029667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.720051, 34.482048, 31.004532>,  <36.520031, 34.138191, 30.962639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720051, 34.482048, 31.004532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306514, -0.062579, -0.949807,
		-0.809940, 0.507051, -0.294784,
		0.500047, 0.859642, 0.104733,
		36.870064, 34.739941, 31.035952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391338, 34.460163, 30.371090>,  <36.520031, 34.138191, 30.962639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391338, 34.460163, 30.371090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723118, 34.637619, 30.506861>,  <36.922184, 34.744091, 30.588324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723118, 34.637619, 30.506861>,  <36.391338, 34.460163, 30.371090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723118, 34.637619, 30.506861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342369, 0.076372, -0.936457,
		-0.441367, 0.892948, -0.088541,
		0.829445, 0.443635, 0.339425,
		36.971951, 34.770710, 30.608688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564911, 35.010040, 29.872856>,  <36.391338, 34.460163, 30.371090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564911, 35.010040, 29.872856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913651, 35.008205, 30.068760>,  <37.122894, 35.007103, 30.186302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913651, 35.008205, 30.068760>,  <36.564911, 35.010040, 29.872856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913651, 35.008205, 30.068760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480891, 0.197701, -0.854200,
		-0.092905, 0.980252, 0.174573,
		0.871844, -0.004591, 0.489762,
		37.175205, 35.006828, 30.215689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834095, 35.608612, 29.669445>,  <36.564911, 35.010040, 29.872856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834095, 35.608612, 29.669445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.109821, 35.345032, 29.789867>,  <37.275257, 35.186886, 29.862122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.109821, 35.345032, 29.789867>,  <36.834095, 35.608612, 29.669445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109821, 35.345032, 29.789867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461636, 0.079250, -0.883522,
		0.558336, 0.748003, 0.358821,
		0.689314, -0.658947, 0.301057,
		37.316616, 35.147346, 29.880184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393101, 35.754784, 29.215351>,  <36.834095, 35.608612, 29.669445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393101, 35.754784, 29.215351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.521233, 35.416489, 29.386049>,  <37.598114, 35.213512, 29.488468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.521233, 35.416489, 29.386049>,  <37.393101, 35.754784, 29.215351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521233, 35.416489, 29.386049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499103, -0.232212, -0.834850,
		0.805161, 0.480419, 0.347726,
		0.320332, -0.845739, 0.426746,
		37.617332, 35.162766, 29.514072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146259, 35.747684, 29.164690>,  <37.393101, 35.754784, 29.215351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146259, 35.747684, 29.164690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.034103, 35.367188, 29.216089>,  <37.966808, 35.138889, 29.246929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.034103, 35.367188, 29.216089>,  <38.146259, 35.747684, 29.164690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034103, 35.367188, 29.216089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504099, -0.259846, -0.823629,
		0.816863, -0.166162, 0.552381,
		-0.280390, -0.951247, 0.128496,
		37.949986, 35.081814, 29.254639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578224, 35.464260, 28.780689>,  <38.146259, 35.747684, 29.164690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578224, 35.464260, 28.780689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.329014, 35.159206, 28.850224>,  <38.179485, 34.976173, 28.891945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.329014, 35.159206, 28.850224>,  <38.578224, 35.464260, 28.780689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329014, 35.159206, 28.850224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357560, -0.475340, -0.803868,
		0.695690, -0.438677, 0.568839,
		-0.623030, -0.762637, 0.173836,
		38.142105, 34.930416, 28.902374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955776, 34.894253, 28.935804>,  <38.578224, 35.464260, 28.780689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955776, 34.894253, 28.935804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603973, 34.754761, 28.806274>,  <38.392891, 34.671066, 28.728558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603973, 34.754761, 28.806274>,  <38.955776, 34.894253, 28.935804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603973, 34.754761, 28.806274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475871, -0.651088, -0.591297,
		-0.004633, -0.674145, 0.738584,
		-0.879503, -0.348731, -0.323823,
		38.340122, 34.650143, 28.709127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946732, 34.249653, 29.069767>,  <38.955776, 34.894253, 28.935804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946732, 34.249653, 29.069767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721397, 34.326313, 28.748289>,  <38.586197, 34.372307, 28.555403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721397, 34.326313, 28.748289>,  <38.946732, 34.249653, 29.069767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721397, 34.326313, 28.748289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472329, -0.723410, -0.503571,
		-0.677909, -0.663287, 0.317000,
		-0.563333, 0.191647, -0.803696,
		38.552399, 34.383808, 28.507179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792965, 33.610142, 28.812269>,  <38.946732, 34.249653, 29.069767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792965, 33.610142, 28.812269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.677666, 33.828159, 28.497349>,  <38.608486, 33.958969, 28.308395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.677666, 33.828159, 28.497349>,  <38.792965, 33.610142, 28.812269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677666, 33.828159, 28.497349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391445, -0.683290, -0.616349,
		-0.873892, -0.485844, -0.016400,
		-0.288244, 0.545042, -0.787303,
		38.591194, 33.991673, 28.261158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491470, 33.152782, 28.369366>,  <38.792965, 33.610142, 28.812269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491470, 33.152782, 28.369366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.605099, 33.462440, 28.143087>,  <38.673275, 33.648235, 28.007320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.605099, 33.462440, 28.143087>,  <38.491470, 33.152782, 28.369366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605099, 33.462440, 28.143087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478196, -0.625774, -0.616227,
		-0.831044, -0.095463, -0.547954,
		0.284069, 0.774140, -0.565696,
		38.690319, 33.694683, 27.973379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380432, 32.909756, 27.677767>,  <38.491470, 33.152782, 28.369366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380432, 32.909756, 27.677767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.643375, 33.210609, 27.659098>,  <38.801140, 33.391121, 27.647896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.643375, 33.210609, 27.659098>,  <38.380432, 32.909756, 27.677767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643375, 33.210609, 27.659098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529966, -0.505439, -0.680931,
		-0.535743, 0.422877, -0.730858,
		0.657354, 0.752135, -0.046675,
		38.840580, 33.436249, 27.645096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416252, 32.874603, 26.973021>,  <38.380432, 32.909756, 27.677767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416252, 32.874603, 26.973021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724155, 33.125839, 27.018587>,  <38.908897, 33.276581, 27.045927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724155, 33.125839, 27.018587>,  <38.416252, 32.874603, 26.973021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724155, 33.125839, 27.018587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184926, -0.048616, -0.981549,
		-0.610965, 0.776619, -0.153573,
		0.769756, 0.628092, 0.113915,
		38.955082, 33.314266, 27.052761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429691, 33.331367, 26.368715>,  <38.416252, 32.874603, 26.973021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429691, 33.331367, 26.368715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785812, 33.284931, 26.544846>,  <38.999485, 33.257069, 26.650524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785812, 33.284931, 26.544846>,  <38.429691, 33.331367, 26.368715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785812, 33.284931, 26.544846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364169, -0.399035, -0.841518,
		0.273395, 0.909557, -0.312987,
		0.890301, -0.116086, 0.440327,
		39.052902, 33.250107, 26.676943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906181, 33.365742, 25.834360>,  <38.429691, 33.331367, 26.368715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906181, 33.365742, 25.834360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.166584, 33.246815, 26.113728>,  <39.322826, 33.175457, 26.281349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.166584, 33.246815, 26.113728>,  <38.906181, 33.365742, 25.834360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166584, 33.246815, 26.113728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578360, -0.401623, -0.710070,
		0.491617, 0.866199, -0.089504,
		0.651009, -0.297317, 0.698420,
		39.361885, 33.157619, 26.323254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599926, 33.395782, 25.571270>,  <38.906181, 33.365742, 25.834360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599926, 33.395782, 25.571270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563099, 33.117455, 25.856184>,  <39.541004, 32.950459, 26.027132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563099, 33.117455, 25.856184>,  <39.599926, 33.395782, 25.571270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563099, 33.117455, 25.856184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610216, -0.604694, -0.511842,
		0.786867, 0.387524, 0.480275,
		-0.092069, -0.695823, 0.712287,
		39.535477, 32.908707, 26.069870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295025, 33.259201, 25.755167>,  <39.599926, 33.395782, 25.571270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295025, 33.259201, 25.755167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083401, 32.941639, 25.875040>,  <39.956429, 32.751102, 25.946964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083401, 32.941639, 25.875040>,  <40.295025, 33.259201, 25.755167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083401, 32.941639, 25.875040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700542, -0.607916, -0.373737,
		0.478894, 0.012212, 0.877788,
		-0.529057, -0.793907, 0.299683,
		39.924683, 32.703468, 25.964945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771057, 32.747452, 25.962948>,  <40.295025, 33.259201, 25.755167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771057, 32.747452, 25.962948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.435169, 32.553375, 25.865412>,  <40.233635, 32.436928, 25.806890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.435169, 32.553375, 25.865412>,  <40.771057, 32.747452, 25.962948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.435169, 32.553375, 25.865412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523257, -0.602947, -0.602210,
		0.145168, -0.633278, 0.760188,
		-0.839719, -0.485196, -0.243838,
		40.183254, 32.407818, 25.792261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898575, 32.046757, 26.196852>,  <40.771057, 32.747452, 25.962948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.898575, 32.046757, 26.196852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.597843, 32.040085, 25.933193>,  <40.417404, 32.036079, 25.774998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.597843, 32.040085, 25.933193>,  <40.898575, 32.046757, 26.196852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.597843, 32.040085, 25.933193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459156, -0.730702, -0.505223,
		-0.473213, -0.682492, 0.557022,
		-0.751828, -0.016682, -0.659148,
		40.372295, 32.035080, 25.735449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675297, 31.398628, 26.046263>,  <40.898575, 32.046757, 26.196852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675297, 31.398628, 26.046263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.524433, 31.571756, 25.718746>,  <40.433914, 31.675632, 25.522236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.524433, 31.571756, 25.718746>,  <40.675297, 31.398628, 26.046263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.524433, 31.571756, 25.718746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247835, -0.804673, -0.539518,
		-0.892371, -0.406410, 0.196224,
		-0.377162, 0.432819, -0.818790,
		40.411285, 31.701603, 25.473108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.884487, 30.653532, 25.697275>,  <40.675297, 31.398628, 26.046263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.884487, 30.653532, 25.697275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.888695, 30.257555, 25.753710>,  <40.891220, 30.019970, 25.787571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.888695, 30.257555, 25.753710>,  <40.884487, 30.653532, 25.697275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.888695, 30.257555, 25.753710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197371, 0.136261, 0.970813,
		-0.980272, -0.038062, -0.193952,
		0.010523, -0.989941, 0.141085,
		40.891853, 29.960573, 25.796036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251907, 30.592060, 26.023300>,  <40.884487, 30.653532, 25.697275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251907, 30.592060, 26.023300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.499035, 30.286091, 26.096170>,  <40.647312, 30.102509, 26.139893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.499035, 30.286091, 26.096170>,  <40.251907, 30.592060, 26.023300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.499035, 30.286091, 26.096170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238884, 0.038143, 0.970299,
		-0.749153, -0.642991, -0.159162,
		0.617822, -0.764923, 0.182175,
		40.684383, 30.056614, 26.150824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882607, 30.114126, 26.545090>,  <40.251907, 30.592060, 26.023300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882607, 30.114126, 26.545090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275143, 30.051085, 26.589148>,  <40.510666, 30.013260, 26.615582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275143, 30.051085, 26.589148>,  <39.882607, 30.114126, 26.545090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275143, 30.051085, 26.589148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110141, 0.008779, 0.993877,
		-0.157607, -0.987463, -0.008743,
		0.981340, -0.157605, 0.110144,
		40.569546, 30.003803, 26.622190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905178, 29.490793, 26.940975>,  <39.882607, 30.114126, 26.545090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905178, 29.490793, 26.940975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.250217, 29.689772, 26.977777>,  <40.457241, 29.809158, 26.999859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.250217, 29.689772, 26.977777>,  <39.905178, 29.490793, 26.940975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250217, 29.689772, 26.977777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101893, -0.007303, 0.994769,
		0.495517, -0.867463, 0.044387,
		0.862601, 0.497448, 0.092007,
		40.508999, 29.839006, 27.005379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350075, 29.087669, 27.460470>,  <39.905178, 29.490793, 26.940975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350075, 29.087669, 27.460470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.460693, 29.470957, 27.431257>,  <40.527065, 29.700930, 27.413729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.460693, 29.470957, 27.431257>,  <40.350075, 29.087669, 27.460470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460693, 29.470957, 27.431257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080874, 0.052523, 0.995340,
		0.957591, -0.281166, -0.062970,
		0.276548, 0.958221, -0.073034,
		40.543659, 29.758423, 27.409348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827305, 29.302383, 28.045202>,  <40.350075, 29.087669, 27.460470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827305, 29.302383, 28.045202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704048, 29.662725, 27.922886>,  <40.630093, 29.878931, 27.849495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704048, 29.662725, 27.922886>,  <40.827305, 29.302383, 28.045202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704048, 29.662725, 27.922886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127470, 0.279439, 0.951664,
		0.942762, 0.332227, 0.028725,
		-0.308142, 0.900855, -0.305793,
		40.611607, 29.932981, 27.831148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.904026, 29.670658, 28.604658>,  <40.827305, 29.302383, 28.045202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.904026, 29.670658, 28.604658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.681129, 29.934967, 28.403517>,  <40.547394, 30.093554, 28.282831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.681129, 29.934967, 28.403517>,  <40.904026, 29.670658, 28.604658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.681129, 29.934967, 28.403517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273612, 0.425651, 0.862530,
		0.783978, 0.618222, -0.056393,
		-0.557238, 0.660774, -0.502854,
		40.513958, 30.133200, 28.252661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096821, 30.371115, 28.938683>,  <40.904026, 29.670658, 28.604658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096821, 30.371115, 28.938683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.741077, 30.393446, 28.757166>,  <40.527630, 30.406845, 28.648256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.741077, 30.393446, 28.757166>,  <41.096821, 30.371115, 28.938683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.741077, 30.393446, 28.757166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368707, 0.499335, 0.784041,
		0.270364, 0.864608, -0.423504,
		-0.889358, 0.055827, -0.453789,
		40.474270, 30.410194, 28.621029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855122, 30.981331, 28.888268>,  <41.096821, 30.371115, 28.938683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855122, 30.981331, 28.888268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508205, 30.797718, 28.811222>,  <40.300056, 30.687550, 28.764996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508205, 30.797718, 28.811222>,  <40.855122, 30.981331, 28.888268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508205, 30.797718, 28.811222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468562, 0.622092, 0.627257,
		-0.168109, 0.634263, -0.754619,
		-0.867288, -0.459034, -0.192612,
		40.248020, 30.660007, 28.753439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347206, 31.514158, 28.670221>,  <40.855122, 30.981331, 28.888268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347206, 31.514158, 28.670221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141453, 31.190731, 28.784504>,  <40.018002, 30.996675, 28.853073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141453, 31.190731, 28.784504>,  <40.347206, 31.514158, 28.670221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141453, 31.190731, 28.784504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598960, 0.577178, 0.555078,
		-0.613722, 0.114395, -0.781191,
		-0.514384, -0.808566, 0.285709,
		39.987137, 30.948162, 28.870216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573902, 31.696634, 28.534077>,  <40.347206, 31.514158, 28.670221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573902, 31.696634, 28.534077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597183, 31.405422, 28.807304>,  <39.611153, 31.230694, 28.971241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597183, 31.405422, 28.807304>,  <39.573902, 31.696634, 28.534077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597183, 31.405422, 28.807304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640344, 0.497699, 0.585026,
		-0.765879, -0.471452, -0.437221,
		0.058207, -0.728031, 0.683069,
		39.614647, 31.187014, 29.012224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878872, 31.568029, 28.806908>,  <39.573902, 31.696634, 28.534077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878872, 31.568029, 28.806908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.094788, 31.417944, 29.108330>,  <39.224335, 31.327892, 29.289183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.094788, 31.417944, 29.108330>,  <38.878872, 31.568029, 28.806908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094788, 31.417944, 29.108330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647631, 0.386769, 0.656494,
		-0.537778, -0.842391, -0.034229,
		0.539786, -0.375216, 0.753555,
		39.256725, 31.305380, 29.334396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310085, 31.374067, 29.172752>,  <38.878872, 31.568029, 28.806908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310085, 31.374067, 29.172752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620403, 31.359459, 29.424723>,  <38.806595, 31.350693, 29.575905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620403, 31.359459, 29.424723>,  <38.310085, 31.374067, 29.172752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620403, 31.359459, 29.424723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575792, 0.367342, 0.730426,
		-0.258075, -0.929368, 0.263953,
		0.775796, -0.036523, 0.629925,
		38.853142, 31.348503, 29.613701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222134, 30.975420, 29.819262>,  <38.310085, 31.374067, 29.172752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222134, 30.975420, 29.819262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530334, 31.206089, 29.927914>,  <38.715256, 31.344490, 29.993105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530334, 31.206089, 29.927914>,  <38.222134, 30.975420, 29.819262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530334, 31.206089, 29.927914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548401, 0.382457, 0.743628,
		0.324943, -0.721926, 0.610930,
		0.770499, 0.576671, 0.271628,
		38.761482, 31.379089, 30.009403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174454, 30.991854, 30.560207>,  <38.222134, 30.975420, 29.819262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174454, 30.991854, 30.560207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389904, 31.321623, 30.490685>,  <38.519176, 31.519484, 30.448971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389904, 31.321623, 30.490685>,  <38.174454, 30.991854, 30.560207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389904, 31.321623, 30.490685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410616, 0.436990, 0.800271,
		0.735712, -0.359681, 0.573896,
		0.538629, 0.824421, -0.173808,
		38.551495, 31.568949, 30.438541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521931, 31.189854, 31.224117>,  <38.174454, 30.991854, 30.560207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521931, 31.189854, 31.224117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529659, 31.507706, 30.981403>,  <38.534298, 31.698418, 30.835775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529659, 31.507706, 30.981403>,  <38.521931, 31.189854, 31.224117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529659, 31.507706, 30.981403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297255, 0.584021, 0.755354,
		0.954603, 0.165776, 0.247491,
		0.019321, 0.794631, -0.606786,
		38.535454, 31.746096, 30.799368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998028, 31.623680, 31.506289>,  <38.521931, 31.189854, 31.224117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998028, 31.623680, 31.506289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736141, 31.831619, 31.286795>,  <38.579010, 31.956383, 31.155098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736141, 31.831619, 31.286795>,  <38.998028, 31.623680, 31.506289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736141, 31.831619, 31.286795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276747, 0.510694, 0.814004,
		0.703393, 0.684800, -0.190492,
		-0.654713, 0.519847, -0.548735,
		38.539726, 31.987574, 31.122173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045544, 32.234097, 31.760557>,  <38.998028, 31.623680, 31.506289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045544, 32.234097, 31.760557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.690693, 32.259148, 31.577652>,  <38.477783, 32.274178, 31.467909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.690693, 32.259148, 31.577652>,  <39.045544, 32.234097, 31.760557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690693, 32.259148, 31.577652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332934, 0.599314, 0.727996,
		0.319638, 0.798061, -0.510814,
		-0.887123, 0.062628, -0.457265,
		38.424557, 32.277935, 31.440472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880650, 32.903793, 31.851549>,  <39.045544, 32.234097, 31.760557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880650, 32.903793, 31.851549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.540134, 32.712776, 31.764585>,  <38.335827, 32.598167, 31.712408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.540134, 32.712776, 31.764585>,  <38.880650, 32.903793, 31.851549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540134, 32.712776, 31.764585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458056, 0.474263, 0.751837,
		-0.255927, 0.739612, -0.622475,
		-0.851285, -0.477544, -0.217407,
		38.284748, 32.569511, 31.699364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385174, 33.403172, 31.762659>,  <38.880650, 32.903793, 31.851549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385174, 33.403172, 31.762659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.171238, 33.075996, 31.847443>,  <38.042877, 32.879692, 31.898314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.171238, 33.075996, 31.847443>,  <38.385174, 33.403172, 31.762659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171238, 33.075996, 31.847443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564503, 0.532552, 0.630655,
		-0.628714, 0.217649, -0.746558,
		-0.534842, -0.817935, 0.211959,
		38.010784, 32.830616, 31.911030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645786, 33.658806, 31.841318>,  <38.385174, 33.403172, 31.762659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645786, 33.658806, 31.841318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.647472, 33.294807, 32.007153>,  <37.648483, 33.076408, 32.106655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.647472, 33.294807, 32.007153>,  <37.645786, 33.658806, 31.841318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647472, 33.294807, 32.007153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417283, 0.375168, 0.827722,
		-0.908767, -0.176492, -0.378144,
		0.004219, -0.910000, 0.414587,
		37.648739, 33.021809, 32.131527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912937, 33.533268, 32.043682>,  <37.645786, 33.658806, 31.841318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912937, 33.533268, 32.043682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149609, 33.305222, 32.271675>,  <37.291611, 33.168396, 32.408470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149609, 33.305222, 32.271675>,  <36.912937, 33.533268, 32.043682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149609, 33.305222, 32.271675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508872, 0.284255, 0.812557,
		-0.625272, -0.770823, -0.121927,
		0.591679, -0.570115, 0.569987,
		37.327114, 33.134186, 32.442673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459896, 33.118423, 32.403629>,  <36.912937, 33.533268, 32.043682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459896, 33.118423, 32.403629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807697, 33.067635, 32.594559>,  <37.016380, 33.037163, 32.709118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807697, 33.067635, 32.594559>,  <36.459896, 33.118423, 32.403629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807697, 33.067635, 32.594559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493081, -0.166679, 0.853868,
		-0.028856, -0.977802, -0.207535,
		0.869505, -0.126970, 0.477326,
		37.068550, 33.029541, 32.737755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391792, 32.497616, 32.948536>,  <36.459896, 33.118423, 32.403629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391792, 32.497616, 32.948536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.689594, 32.744781, 33.049641>,  <36.868275, 32.893082, 33.110306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.689594, 32.744781, 33.049641>,  <36.391792, 32.497616, 32.948536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689594, 32.744781, 33.049641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305320, -0.021560, 0.952006,
		0.593712, -0.785946, 0.172612,
		0.744504, 0.617919, 0.252766,
		36.912945, 32.930157, 33.125469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868282, 32.133705, 33.537586>,  <36.391792, 32.497616, 32.948536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868282, 32.133705, 33.537586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930801, 32.528751, 33.542919>,  <36.968311, 32.765781, 33.546120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930801, 32.528751, 33.542919>,  <36.868282, 32.133705, 33.537586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930801, 32.528751, 33.542919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240079, 0.024892, 0.970434,
		0.958088, -0.154877, 0.240998,
		0.156297, 0.987620, 0.013334,
		36.977692, 32.825039, 33.546921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179764, 32.191162, 34.182644>,  <36.868282, 32.133705, 33.537586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179764, 32.191162, 34.182644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067009, 32.562943, 34.087429>,  <36.999355, 32.786011, 34.030300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067009, 32.562943, 34.087429>,  <37.179764, 32.191162, 34.182644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067009, 32.562943, 34.087429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222712, 0.177935, 0.958509,
		0.933241, 0.323205, 0.156842,
		-0.281887, 0.929450, -0.238038,
		36.982441, 32.841778, 34.016018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580463, 32.628162, 34.569248>,  <37.179764, 32.191162, 34.182644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580463, 32.628162, 34.569248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245945, 32.819172, 34.461491>,  <37.045235, 32.933777, 34.396835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245945, 32.819172, 34.461491>,  <37.580463, 32.628162, 34.569248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245945, 32.819172, 34.461491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168361, 0.243943, 0.955064,
		0.521786, 0.844073, -0.123612,
		-0.836297, 0.477528, -0.269395,
		36.995056, 32.962429, 34.380672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650257, 33.355614, 34.889866>,  <37.580463, 32.628162, 34.569248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650257, 33.355614, 34.889866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259960, 33.324825, 34.807888>,  <37.025784, 33.306351, 34.758701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259960, 33.324825, 34.807888>,  <37.650257, 33.355614, 34.889866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259960, 33.324825, 34.807888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218348, 0.274455, 0.936482,
		-0.015836, 0.958515, -0.284604,
		-0.975743, -0.076972, -0.204943,
		36.967236, 33.301735, 34.746407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428169, 33.902088, 35.250038>,  <37.650257, 33.355614, 34.889866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428169, 33.902088, 35.250038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103840, 33.683392, 35.166477>,  <36.909245, 33.552174, 35.116341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103840, 33.683392, 35.166477>,  <37.428169, 33.902088, 35.250038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103840, 33.683392, 35.166477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269526, 0.031959, 0.962462,
		-0.519543, 0.836691, -0.173275,
		-0.810821, -0.546743, -0.208906,
		36.860592, 33.519367, 35.103806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746456, 34.258560, 35.505798>,  <37.428169, 33.902088, 35.250038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746456, 34.258560, 35.505798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700623, 33.862576, 35.472683>,  <36.673122, 33.624985, 35.452816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700623, 33.862576, 35.472683>,  <36.746456, 34.258560, 35.505798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700623, 33.862576, 35.472683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041941, -0.078440, 0.996036,
		-0.992527, 0.117606, -0.032532,
		-0.114588, -0.989958, -0.082786,
		36.666245, 33.565590, 35.447845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152603, 34.008038, 35.928989>,  <36.746456, 34.258560, 35.505798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152603, 34.008038, 35.928989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411133, 33.706154, 35.883949>,  <36.566250, 33.525024, 35.856926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411133, 33.706154, 35.883949>,  <36.152603, 34.008038, 35.928989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411133, 33.706154, 35.883949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007261, -0.141473, 0.989915,
		-0.763026, -0.640627, -0.085958,
		0.646327, -0.754707, -0.112599,
		36.605030, 33.479740, 35.850170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800900, 33.505199, 36.374222>,  <36.152603, 34.008038, 35.928989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800900, 33.505199, 36.374222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178284, 33.389561, 36.309338>,  <36.404713, 33.320175, 36.270409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178284, 33.389561, 36.309338>,  <35.800900, 33.505199, 36.374222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178284, 33.389561, 36.309338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079657, -0.277268, 0.957485,
		-0.321787, -0.916265, -0.238561,
		0.943455, -0.289103, -0.162209,
		36.461319, 33.302830, 36.260674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954315, 32.973404, 36.743057>,  <35.800900, 33.505199, 36.374222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954315, 32.973404, 36.743057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.347206, 33.018623, 36.683128>,  <36.582939, 33.045753, 36.647171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.347206, 33.018623, 36.683128>,  <35.954315, 32.973404, 36.743057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347206, 33.018623, 36.683128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182542, -0.389699, 0.902670,
		0.043659, -0.913977, -0.403410,
		0.982228, 0.113049, -0.149826,
		36.641876, 33.052540, 36.638180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266186, 32.378887, 36.969112>,  <35.954315, 32.973404, 36.743057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266186, 32.378887, 36.969112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550411, 32.658226, 37.003567>,  <36.720947, 32.825829, 37.024239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550411, 32.658226, 37.003567>,  <36.266186, 32.378887, 36.969112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550411, 32.658226, 37.003567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267566, -0.381385, 0.884847,
		0.650779, -0.605690, -0.457850,
		0.710560, 0.698345, 0.086136,
		36.763580, 32.867729, 37.029408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854687, 32.036457, 37.101288>,  <36.266186, 32.378887, 36.969112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854687, 32.036457, 37.101288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914158, 32.414898, 37.216370>,  <36.949841, 32.641964, 37.285419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914158, 32.414898, 37.216370>,  <36.854687, 32.036457, 37.101288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914158, 32.414898, 37.216370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340115, -0.322117, 0.883495,
		0.928556, -0.033506, -0.369678,
		0.148682, 0.946107, 0.287708,
		36.958763, 32.698730, 37.302681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433681, 31.969076, 37.411301>,  <36.854687, 32.036457, 37.101288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433681, 31.969076, 37.411301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.291393, 32.315613, 37.551537>,  <37.206020, 32.523533, 37.635677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.291393, 32.315613, 37.551537>,  <37.433681, 31.969076, 37.411301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291393, 32.315613, 37.551537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379247, -0.209049, 0.901371,
		0.854186, 0.453598, -0.254194,
		-0.355722, 0.866341, 0.350592,
		37.184677, 32.575516, 37.656715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057640, 32.238857, 37.684025>,  <37.433681, 31.969076, 37.411301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057640, 32.238857, 37.684025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.736969, 32.404808, 37.856155>,  <37.544567, 32.504379, 37.959435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.736969, 32.404808, 37.856155>,  <38.057640, 32.238857, 37.684025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736969, 32.404808, 37.856155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419736, -0.121858, 0.899429,
		0.425593, 0.901680, -0.076449,
		-0.801681, 0.414879, 0.430330,
		37.496464, 32.529270, 37.985252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370689, 32.639584, 38.156658>,  <38.057640, 32.238857, 37.684025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370689, 32.639584, 38.156658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992104, 32.599865, 38.279518>,  <37.764950, 32.576035, 38.353233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992104, 32.599865, 38.279518>,  <38.370689, 32.639584, 38.156658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992104, 32.599865, 38.279518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318049, -0.124241, 0.939898,
		-0.055164, 0.987271, 0.149170,
		-0.946468, -0.099292, 0.307147,
		37.708164, 32.570076, 38.371662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399494, 33.131069, 38.694374>,  <38.370689, 32.639584, 38.156658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399494, 33.131069, 38.694374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.076981, 32.900524, 38.747616>,  <37.883472, 32.762196, 38.779560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.076981, 32.900524, 38.747616>,  <38.399494, 33.131069, 38.694374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076981, 32.900524, 38.747616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198847, -0.052166, 0.978641,
		-0.557110, 0.815526, 0.156669,
		-0.806280, -0.576364, 0.133103,
		37.835098, 32.727615, 38.787548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014771, 33.439926, 39.180828>,  <38.399494, 33.131069, 38.694374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014771, 33.439926, 39.180828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.888191, 33.060875, 39.198074>,  <37.812244, 32.833443, 39.208424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.888191, 33.060875, 39.198074>,  <38.014771, 33.439926, 39.180828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888191, 33.060875, 39.198074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183664, -0.016613, 0.982849,
		-0.930660, 0.318938, 0.179303,
		-0.316447, -0.947630, 0.043117,
		37.793259, 32.776585, 39.211010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534374, 33.408192, 39.609867>,  <38.014771, 33.439926, 39.180828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534374, 33.408192, 39.609867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770241, 33.085594, 39.592632>,  <37.911762, 32.892036, 39.582291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770241, 33.085594, 39.592632>,  <37.534374, 33.408192, 39.609867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770241, 33.085594, 39.592632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159716, 0.064150, 0.985076,
		-0.791694, -0.587752, 0.166637,
		0.589671, -0.806493, -0.043086,
		37.947144, 32.843647, 39.579708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215786, 32.888741, 40.056717>,  <37.534374, 33.408192, 39.609867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215786, 32.888741, 40.056717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611492, 32.847775, 40.015026>,  <37.848915, 32.823196, 39.990009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611492, 32.847775, 40.015026>,  <37.215786, 32.888741, 40.056717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611492, 32.847775, 40.015026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104741, -0.000402, 0.994500,
		-0.101896, -0.994741, 0.010330,
		0.989266, -0.102418, -0.104231,
		37.908272, 32.817051, 39.983757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451092, 32.346603, 40.478371>,  <37.215786, 32.888741, 40.056717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451092, 32.346603, 40.478371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763313, 32.592796, 40.434704>,  <37.950645, 32.740513, 40.408504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763313, 32.592796, 40.434704>,  <37.451092, 32.346603, 40.478371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763313, 32.592796, 40.434704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142808, -0.005555, 0.989735,
		0.608561, -0.788128, -0.092232,
		0.780551, 0.615486, -0.109170,
		37.997478, 32.777443, 40.401955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085587, 32.048882, 40.815971>,  <37.451092, 32.346603, 40.478371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085587, 32.048882, 40.815971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.154823, 32.442532, 40.800262>,  <38.196365, 32.678722, 40.790836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.154823, 32.442532, 40.800262>,  <38.085587, 32.048882, 40.815971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154823, 32.442532, 40.800262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148473, 0.013350, 0.988826,
		0.973650, -0.176989, -0.143805,
		0.173092, 0.984122, -0.039276,
		38.206749, 32.737770, 40.788479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694126, 32.223896, 41.255520>,  <38.085587, 32.048882, 40.815971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694126, 32.223896, 41.255520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490211, 32.566795, 41.226540>,  <38.367863, 32.772533, 41.209152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490211, 32.566795, 41.226540>,  <38.694126, 32.223896, 41.255520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490211, 32.566795, 41.226540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245508, 0.225676, 0.942760,
		0.824528, 0.462817, -0.325507,
		-0.509784, 0.857246, -0.072450,
		38.337276, 32.823971, 41.204803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122169, 32.830410, 41.534397>,  <38.694126, 32.223896, 41.255520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122169, 32.830410, 41.534397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728386, 32.899315, 41.548008>,  <38.492115, 32.940659, 41.556175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728386, 32.899315, 41.548008>,  <39.122169, 32.830410, 41.534397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728386, 32.899315, 41.548008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089617, 0.326262, 0.941022,
		0.150999, 0.929451, -0.336631,
		-0.984463, 0.172261, 0.034030,
		38.433048, 32.950993, 41.558216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033630, 33.539539, 41.739166>,  <39.122169, 32.830410, 41.534397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033630, 33.539539, 41.739166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.690556, 33.360748, 41.840828>,  <38.484711, 33.253475, 41.901825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.690556, 33.360748, 41.840828>,  <39.033630, 33.539539, 41.739166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690556, 33.360748, 41.840828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159807, 0.238076, 0.958009,
		-0.488712, 0.862285, -0.132765,
		-0.857685, -0.446973, 0.254149,
		38.433250, 33.226658, 41.917072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872421, 33.870899, 42.379665>,  <39.033630, 33.539539, 41.739166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872421, 33.870899, 42.379665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.628986, 33.553539, 42.375061>,  <38.482925, 33.363121, 42.372299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.628986, 33.553539, 42.375061>,  <38.872421, 33.870899, 42.379665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628986, 33.553539, 42.375061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073957, 0.042275, 0.996365,
		-0.790034, 0.607225, -0.084406,
		-0.608586, -0.793405, -0.011510,
		38.446411, 33.315517, 42.371609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351421, 34.025951, 42.799919>,  <38.872421, 33.870899, 42.379665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351421, 34.025951, 42.799919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365116, 33.626457, 42.785198>,  <38.373333, 33.386761, 42.776367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365116, 33.626457, 42.785198>,  <38.351421, 34.025951, 42.799919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365116, 33.626457, 42.785198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305197, -0.045513, 0.951201,
		-0.951674, -0.021331, -0.306369,
		0.034234, -0.998736, -0.036804,
		38.375385, 33.326836, 42.774158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789333, 33.866451, 43.064529>,  <38.351421, 34.025951, 42.799919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789333, 33.866451, 43.064529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010487, 33.536896, 43.114368>,  <38.143181, 33.339165, 43.144272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010487, 33.536896, 43.114368>,  <37.789333, 33.866451, 43.064529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010487, 33.536896, 43.114368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281700, -0.044083, 0.958489,
		-0.784194, -0.565037, -0.256462,
		0.552888, -0.823887, 0.124601,
		38.176353, 33.289730, 43.151749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364674, 33.365078, 43.448036>,  <37.789333, 33.866451, 43.064529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364674, 33.365078, 43.448036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.757084, 33.300648, 43.491180>,  <37.992531, 33.261990, 43.517067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.757084, 33.300648, 43.491180>,  <37.364674, 33.365078, 43.448036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757084, 33.300648, 43.491180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120712, -0.072228, 0.990056,
		-0.151687, -0.984295, -0.090302,
		0.981030, -0.161079, 0.107861,
		38.051392, 33.252323, 43.523540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401455, 32.723331, 43.754864>,  <37.364674, 33.365078, 43.448036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401455, 32.723331, 43.754864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747490, 32.911877, 43.823494>,  <37.955112, 33.025005, 43.864670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747490, 32.911877, 43.823494>,  <37.401455, 32.723331, 43.754864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747490, 32.911877, 43.823494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136936, -0.107131, 0.984770,
		0.482569, -0.875406, -0.028130,
		0.865087, 0.471367, 0.171573,
		38.007015, 33.053288, 43.874966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593666, 32.453995, 44.339600>,  <37.401455, 32.723331, 43.754864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593666, 32.453995, 44.339600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832939, 32.774502, 44.334774>,  <37.976501, 32.966805, 44.331879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832939, 32.774502, 44.334774>,  <37.593666, 32.453995, 44.339600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832939, 32.774502, 44.334774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058474, 0.058658, 0.996564,
		0.799223, -0.595422, 0.081941,
		0.598183, 0.801269, -0.012064,
		38.012394, 33.014881, 44.331154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856388, 32.446556, 44.972851>,  <37.593666, 32.453995, 44.339600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856388, 32.446556, 44.972851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004906, 32.807953, 44.887218>,  <38.094017, 33.024792, 44.835838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004906, 32.807953, 44.887218>,  <37.856388, 32.446556, 44.972851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004906, 32.807953, 44.887218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024295, 0.221035, 0.974963,
		0.928196, -0.367203, 0.060119,
		0.371298, 0.903496, -0.214085,
		38.116295, 33.079002, 44.822994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356392, 32.485649, 45.450386>,  <37.856388, 32.446556, 44.972851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356392, 32.485649, 45.450386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308701, 32.864132, 45.330074>,  <38.280087, 33.091221, 45.257889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308701, 32.864132, 45.330074>,  <38.356392, 32.485649, 45.450386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308701, 32.864132, 45.330074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069988, 0.294176, 0.953185,
		0.990397, 0.134700, 0.031149,
		-0.119231, 0.946212, -0.300779,
		38.272930, 33.147995, 45.239841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911949, 32.912178, 45.721092>,  <38.356392, 32.485649, 45.450386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911949, 32.912178, 45.721092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.593735, 33.142731, 45.646355>,  <38.402805, 33.281063, 45.601513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.593735, 33.142731, 45.646355>,  <38.911949, 32.912178, 45.721092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593735, 33.142731, 45.646355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000637, 0.307568, 0.951526,
		0.605910, 0.757089, -0.244313,
		-0.795532, 0.576384, -0.186841,
		38.355076, 33.315647, 45.590302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969521, 33.329006, 46.303276>,  <38.911949, 32.912178, 45.721092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969521, 33.329006, 46.303276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.623482, 33.456776, 46.148575>,  <38.415859, 33.533436, 46.055752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.623482, 33.456776, 46.148575>,  <38.969521, 33.329006, 46.303276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623482, 33.456776, 46.148575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282785, 0.326260, 0.901991,
		0.414300, 0.889676, -0.191917,
		-0.865094, 0.319424, -0.386756,
		38.363953, 33.552605, 46.032547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834034, 34.066750, 46.576603>,  <38.969521, 33.329006, 46.303276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834034, 34.066750, 46.576603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478855, 33.913120, 46.475380>,  <38.265747, 33.820942, 46.414646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478855, 33.913120, 46.475380>,  <38.834034, 34.066750, 46.576603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478855, 33.913120, 46.475380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385627, 0.321807, 0.864715,
		-0.250677, 0.865407, -0.433857,
		-0.887948, -0.384071, -0.253055,
		38.212471, 33.797897, 46.399464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340317, 34.627014, 46.657585>,  <38.834034, 34.066750, 46.576603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340317, 34.627014, 46.657585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.121643, 34.292328, 46.670567>,  <37.990440, 34.091518, 46.678356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.121643, 34.292328, 46.670567>,  <38.340317, 34.627014, 46.657585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121643, 34.292328, 46.670567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333685, 0.253235, 0.908035,
		-0.767980, 0.485578, -0.417637,
		-0.546682, -0.836712, 0.032449,
		37.957638, 34.041313, 46.680302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623642, 34.811230, 46.866463>,  <38.340317, 34.627014, 46.657585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623642, 34.811230, 46.866463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.695915, 34.434925, 46.981232>,  <37.739281, 34.209141, 47.050095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.695915, 34.434925, 46.981232>,  <37.623642, 34.811230, 46.866463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695915, 34.434925, 46.981232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418212, 0.190550, 0.888138,
		-0.890198, -0.280466, -0.359008,
		0.180684, -0.940760, 0.286921,
		37.750122, 34.152699, 47.067307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021004, 34.473209, 47.028988>,  <37.623642, 34.811230, 46.866463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021004, 34.473209, 47.028988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324318, 34.322983, 47.242134>,  <37.506306, 34.232845, 47.370022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324318, 34.322983, 47.242134>,  <37.021004, 34.473209, 47.028988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324318, 34.322983, 47.242134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460075, 0.270815, 0.845571,
		-0.461877, -0.886346, 0.032567,
		0.758288, -0.375567, 0.532869,
		37.551804, 34.210312, 47.401997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388008, 34.932957, 47.537743>,  <37.021004, 34.473209, 47.028988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388008, 34.932957, 47.537743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.358833, 34.758652, 47.896584>,  <37.341328, 34.654068, 48.111889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.358833, 34.758652, 47.896584>,  <37.388008, 34.932957, 47.537743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358833, 34.758652, 47.896584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378883, -0.844168, -0.379247,
		0.922566, 0.312236, 0.226672,
		-0.072934, -0.435762, 0.897102,
		37.336952, 34.627922, 48.165714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026024, 34.590912, 47.696194>,  <37.388008, 34.932957, 47.537743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026024, 34.590912, 47.696194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697502, 34.438362, 47.865902>,  <37.500389, 34.346832, 47.967728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697502, 34.438362, 47.865902>,  <38.026024, 34.590912, 47.696194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697502, 34.438362, 47.865902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142881, -0.857510, -0.494227,
		0.552303, -0.345292, 0.758772,
		-0.821308, -0.381378, 0.424270,
		37.451111, 34.323948, 47.993183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171333, 33.900208, 47.936752>,  <38.026024, 34.590912, 47.696194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171333, 33.900208, 47.936752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781414, 33.951084, 47.863445>,  <37.547462, 33.981609, 47.819462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781414, 33.951084, 47.863445>,  <38.171333, 33.900208, 47.936752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781414, 33.951084, 47.863445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036445, -0.719701, -0.693327,
		-0.220079, -0.682535, 0.696930,
		-0.974801, 0.127187, -0.183266,
		37.488976, 33.989239, 47.808464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757530, 33.228531, 47.882500>,  <38.171333, 33.900208, 47.936752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757530, 33.228531, 47.882500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.587822, 33.519932, 47.667362>,  <37.485996, 33.694775, 47.538280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.587822, 33.519932, 47.667362>,  <37.757530, 33.228531, 47.882500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587822, 33.519932, 47.667362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145434, -0.531420, -0.834530,
		-0.893782, -0.432285, 0.119515,
		-0.424267, 0.728507, -0.537843,
		37.460541, 33.738483, 47.506008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794914, 32.897453, 47.218693>,  <37.757530, 33.228531, 47.882500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794914, 32.897453, 47.218693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.704235, 33.282211, 47.157551>,  <37.649830, 33.513065, 47.120865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.704235, 33.282211, 47.157551>,  <37.794914, 32.897453, 47.218693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704235, 33.282211, 47.157551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195165, -0.108897, -0.974706,
		-0.954212, -0.250793, -0.163042,
		-0.226695, 0.961896, -0.152857,
		37.636227, 33.570782, 47.111694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257515, 33.001621, 46.712070>,  <37.794914, 32.897453, 47.218693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257515, 33.001621, 46.712070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.501698, 33.318417, 46.707996>,  <37.648205, 33.508492, 46.705551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.501698, 33.318417, 46.707996>,  <37.257515, 33.001621, 46.712070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501698, 33.318417, 46.707996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169604, -0.143266, -0.975043,
		-0.773680, 0.593492, -0.221781,
		0.610454, 0.791986, -0.010183,
		37.684834, 33.556011, 46.704941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038216, 33.341366, 46.068447>,  <37.257515, 33.001621, 46.712070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038216, 33.341366, 46.068447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397602, 33.494251, 46.154854>,  <37.613235, 33.585983, 46.206699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397602, 33.494251, 46.154854>,  <37.038216, 33.341366, 46.068447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397602, 33.494251, 46.154854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252656, -0.047741, -0.966378,
		-0.359050, 0.922840, -0.139462,
		0.898470, 0.382214, 0.216019,
		37.667145, 33.608917, 46.219658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219318, 33.829895, 45.535885>,  <37.038216, 33.341366, 46.068447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219318, 33.829895, 45.535885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574570, 33.730213, 45.690350>,  <37.787720, 33.670406, 45.783028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574570, 33.730213, 45.690350>,  <37.219318, 33.829895, 45.535885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574570, 33.730213, 45.690350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375447, -0.091218, -0.922344,
		0.265075, 0.964146, 0.012549,
		0.888130, -0.249202, 0.386166,
		37.841007, 33.655453, 45.806198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656742, 34.357430, 45.398533>,  <37.219318, 33.829895, 45.535885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656742, 34.357430, 45.398533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860771, 34.015743, 45.438831>,  <37.983189, 33.810734, 45.463009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860771, 34.015743, 45.438831>,  <37.656742, 34.357430, 45.398533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860771, 34.015743, 45.438831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320085, 0.079795, -0.944023,
		0.798356, 0.513765, 0.314122,
		0.510071, -0.854212, 0.100743,
		38.013794, 33.759480, 45.469055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125290, 34.400818, 44.912041>,  <37.656742, 34.357430, 45.398533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125290, 34.400818, 44.912041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.169212, 34.015285, 45.009171>,  <38.195568, 33.783966, 45.067448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.169212, 34.015285, 45.009171>,  <38.125290, 34.400818, 44.912041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169212, 34.015285, 45.009171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224779, -0.213892, -0.950644,
		0.968203, 0.158970, 0.193162,
		0.109808, -0.963835, 0.242824,
		38.202156, 33.726135, 45.082016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585632, 34.203300, 44.431293>,  <38.125290, 34.400818, 44.912041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585632, 34.203300, 44.431293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445621, 33.854534, 44.568256>,  <38.361614, 33.645275, 44.650433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445621, 33.854534, 44.568256>,  <38.585632, 34.203300, 44.431293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445621, 33.854534, 44.568256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158133, -0.415286, -0.895841,
		0.923295, -0.259425, 0.283240,
		-0.350029, -0.871915, 0.342408,
		38.340614, 33.592960, 44.670979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053158, 33.785744, 44.247974>,  <38.585632, 34.203300, 44.431293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053158, 33.785744, 44.247974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.705360, 33.588516, 44.259705>,  <38.496681, 33.470181, 44.266743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.705360, 33.588516, 44.259705>,  <39.053158, 33.785744, 44.247974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705360, 33.588516, 44.259705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234766, -0.464764, -0.853744,
		0.434587, -0.735441, 0.519866,
		-0.869494, -0.493073, 0.029324,
		38.444511, 33.440594, 44.268501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213570, 33.096581, 44.197166>,  <39.053158, 33.785744, 44.247974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213570, 33.096581, 44.197166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837990, 33.103382, 44.059711>,  <38.612640, 33.107464, 43.977238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837990, 33.103382, 44.059711>,  <39.213570, 33.096581, 44.197166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837990, 33.103382, 44.059711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313023, -0.372331, -0.873720,
		-0.142801, -0.927944, 0.344278,
		-0.938948, 0.017001, -0.343637,
		38.556305, 33.108482, 43.956619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199989, 32.721169, 43.542252>,  <39.213570, 33.096581, 44.197166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199989, 32.721169, 43.542252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.820114, 32.845619, 43.527859>,  <38.592190, 32.920288, 43.519222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.820114, 32.845619, 43.527859>,  <39.199989, 32.721169, 43.542252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820114, 32.845619, 43.527859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006793, -0.135310, -0.990780,
		-0.313123, -0.940688, 0.130616,
		-0.949688, 0.311123, -0.035978,
		38.535206, 32.938957, 43.517067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826931, 32.166382, 43.193684>,  <39.199989, 32.721169, 43.542252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826931, 32.166382, 43.193684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617241, 32.505711, 43.163891>,  <38.491428, 32.709309, 43.146015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617241, 32.505711, 43.163891>,  <38.826931, 32.166382, 43.193684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617241, 32.505711, 43.163891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049099, -0.057211, -0.997154,
		-0.850166, -0.526386, -0.011660,
		-0.524221, 0.848319, -0.074484,
		38.459976, 32.760208, 43.141544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388908, 32.031601, 42.710758>,  <38.826931, 32.166382, 43.193684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388908, 32.031601, 42.710758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365944, 32.430470, 42.730125>,  <38.352165, 32.669792, 42.741745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365944, 32.430470, 42.730125>,  <38.388908, 32.031601, 42.710758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365944, 32.430470, 42.730125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040044, 0.046157, -0.998131,
		-0.997547, -0.059241, 0.037281,
		-0.057410, 0.997176, 0.048416,
		38.348721, 32.729622, 42.744652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226265, 31.557362, 42.261913>,  <38.388908, 32.031601, 42.710758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226265, 31.557362, 42.261913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318172, 31.400536, 42.618225>,  <38.373318, 31.306440, 42.832012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318172, 31.400536, 42.618225>,  <38.226265, 31.557362, 42.261913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318172, 31.400536, 42.618225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360500, -0.884450, -0.296292,
		0.904017, -0.253047, -0.344559,
		0.229769, -0.392067, 0.890781,
		38.387104, 31.282915, 42.885460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764851, 32.163353, 42.368740>,  <38.226265, 31.557362, 42.261913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764851, 32.163353, 42.368740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.963688, 32.510136, 42.383041>,  <38.082993, 32.718204, 42.391624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.963688, 32.510136, 42.383041>,  <37.764851, 32.163353, 42.368740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963688, 32.510136, 42.383041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227560, 0.170024, -0.958806,
		-0.837323, 0.468484, 0.281804,
		0.497098, 0.866957, 0.035756,
		38.112816, 32.770222, 42.393768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255772, 32.704113, 42.125607>,  <37.764851, 32.163353, 42.368740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255772, 32.704113, 42.125607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626221, 32.848976, 42.083382>,  <37.848488, 32.935894, 42.058048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626221, 32.848976, 42.083382>,  <37.255772, 32.704113, 42.125607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626221, 32.848976, 42.083382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139987, 0.070093, -0.987669,
		-0.350294, 0.929477, 0.115612,
		0.926120, 0.362159, -0.105561,
		37.904057, 32.957623, 42.051712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248608, 33.391644, 41.792473>,  <37.255772, 32.704113, 42.125607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248608, 33.391644, 41.792473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575397, 33.171768, 41.722733>,  <37.771469, 33.039841, 41.680889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575397, 33.171768, 41.722733>,  <37.248608, 33.391644, 41.792473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575397, 33.171768, 41.722733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136525, 0.109380, -0.984580,
		0.560284, 0.828177, 0.014314,
		0.816971, -0.549690, -0.174350,
		37.820488, 33.006863, 41.670429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368855, 33.677696, 41.073719>,  <37.248608, 33.391644, 41.792473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368855, 33.677696, 41.073719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.692711, 33.444069, 41.096882>,  <37.887024, 33.303894, 41.110779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.692711, 33.444069, 41.096882>,  <37.368855, 33.677696, 41.073719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692711, 33.444069, 41.096882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053597, -0.024669, -0.998258,
		0.584476, 0.811331, 0.011331,
		0.809639, -0.584066, 0.057903,
		37.935604, 33.268848, 41.114254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967041, 33.908970, 40.580093>,  <37.368855, 33.677696, 41.073719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967041, 33.908970, 40.580093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928680, 33.520672, 40.668144>,  <37.905666, 33.287693, 40.720974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928680, 33.520672, 40.668144>,  <37.967041, 33.908970, 40.580093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928680, 33.520672, 40.668144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025239, -0.218701, -0.975465,
		0.995071, -0.099102, -0.003527,
		-0.095899, -0.970746, 0.220125,
		37.899910, 33.229446, 40.734180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590839, 33.408482, 40.434193>,  <37.967041, 33.908970, 40.580093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590839, 33.408482, 40.434193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214611, 33.277950, 40.396606>,  <37.988873, 33.199631, 40.374054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214611, 33.277950, 40.396606>,  <38.590839, 33.408482, 40.434193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214611, 33.277950, 40.396606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160047, -0.181943, -0.970197,
		0.299507, -0.927581, 0.223359,
		-0.940574, -0.326329, -0.093964,
		37.932438, 33.180050, 40.368416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078579, 33.066448, 40.016338>,  <38.590839, 33.408482, 40.434193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078579, 33.066448, 40.016338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311234, 33.386677, 40.074009>,  <39.450825, 33.578815, 40.108612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311234, 33.386677, 40.074009>,  <39.078579, 33.066448, 40.016338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311234, 33.386677, 40.074009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792552, -0.517806, -0.322083,
		-0.183196, 0.301600, -0.935669,
		0.581635, 0.800571, 0.144173,
		39.485725, 33.626846, 40.117260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397526, 33.304890, 39.374962>,  <39.078579, 33.066448, 40.016338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397526, 33.304890, 39.374962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609154, 33.419350, 39.694511>,  <39.736130, 33.488026, 39.886242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609154, 33.419350, 39.694511>,  <39.397526, 33.304890, 39.374962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609154, 33.419350, 39.694511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717290, -0.653825, -0.240849,
		0.453405, 0.700451, -0.551174,
		0.529074, 0.286150, 0.798874,
		39.767876, 33.505196, 39.934174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945530, 33.092445, 38.797050>,  <39.397526, 33.304890, 39.374962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945530, 33.092445, 38.797050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.048851, 33.478397, 38.777931>,  <40.110844, 33.709969, 38.766460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.048851, 33.478397, 38.777931>,  <39.945530, 33.092445, 38.797050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048851, 33.478397, 38.777931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574043, -0.113505, 0.810920,
		0.777016, -0.236901, -0.583202,
		0.258304, 0.964881, -0.047796,
		40.126343, 33.767860, 38.763592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504112, 32.966595, 38.266819>,  <39.945530, 33.092445, 38.797050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504112, 32.966595, 38.266819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.385784, 32.620609, 38.104671>,  <40.314789, 32.413017, 38.007385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.385784, 32.620609, 38.104671>,  <40.504112, 32.966595, 38.266819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.385784, 32.620609, 38.104671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308939, 0.488183, -0.816232,
		0.903907, -0.116223, -0.411636,
		-0.295819, -0.864968, -0.405366,
		40.297039, 32.361118, 37.983063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421978, 33.583569, 37.851803>,  <40.504112, 32.966595, 38.266819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421978, 33.583569, 37.851803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615665, 33.899143, 37.700485>,  <40.731876, 34.088490, 37.609695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615665, 33.899143, 37.700485>,  <40.421978, 33.583569, 37.851803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.615665, 33.899143, 37.700485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241682, 0.294940, 0.924446,
		0.840905, -0.539063, -0.047856,
		0.484220, 0.788937, -0.378298,
		40.760933, 34.135826, 37.586994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173866, 33.632137, 38.063374>,  <40.421978, 33.583569, 37.851803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173866, 33.632137, 38.063374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.018654, 33.994946, 37.997952>,  <40.925526, 34.212631, 37.958698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.018654, 33.994946, 37.997952>,  <41.173866, 33.632137, 38.063374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.018654, 33.994946, 37.997952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103171, 0.219089, 0.970235,
		0.915853, 0.359608, -0.178591,
		-0.388032, 0.907018, -0.163552,
		40.902245, 34.267052, 37.948887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.640533, 34.140091, 38.274132>,  <41.173866, 33.632137, 38.063374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.640533, 34.140091, 38.274132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.262844, 34.269089, 38.300781>,  <41.036232, 34.346489, 38.316772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.262844, 34.269089, 38.300781>,  <41.640533, 34.140091, 38.274132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262844, 34.269089, 38.300781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090679, 0.060136, 0.994063,
		0.316577, 0.944658, -0.086026,
		-0.944223, 0.322498, 0.066623,
		40.979576, 34.365837, 38.320766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.010754, 33.486500, 37.975250>,  <41.640533, 34.140091, 38.274132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.010754, 33.486500, 37.975250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.361088, 33.375301, 37.817448>,  <42.571289, 33.308582, 37.722767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.361088, 33.375301, 37.817448>,  <42.010754, 33.486500, 37.975250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.361088, 33.375301, 37.817448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177592, 0.574433, -0.799054,
		0.448748, 0.769900, 0.453739,
		0.875835, -0.277993, -0.394504,
		42.623837, 33.291904, 37.699097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.217079, 33.932434, 37.484539>,  <42.010754, 33.486500, 37.975250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.217079, 33.932434, 37.484539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.468052, 33.638996, 37.380104>,  <42.618633, 33.462933, 37.317444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.468052, 33.638996, 37.380104>,  <42.217079, 33.932434, 37.484539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.468052, 33.638996, 37.380104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108891, 0.414666, -0.903435,
		0.771022, 0.538411, 0.340055,
		0.627429, -0.733598, -0.261089,
		42.656281, 33.418919, 37.301777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.700943, 34.350163, 37.107887>,  <42.217079, 33.932434, 37.484539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.700943, 34.350163, 37.107887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.800617, 33.980766, 36.991215>,  <42.860424, 33.759129, 36.921211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.800617, 33.980766, 36.991215>,  <42.700943, 34.350163, 37.107887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.800617, 33.980766, 36.991215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143383, 0.333044, -0.931946,
		0.957782, 0.190407, 0.215403,
		0.249188, -0.923486, -0.291682,
		42.875374, 33.703720, 36.903709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.301590, 34.260120, 36.608757>,  <42.700943, 34.350163, 37.107887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.301590, 34.260120, 36.608757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.062195, 33.956020, 36.507690>,  <42.918560, 33.773560, 36.447052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.062195, 33.956020, 36.507690>,  <43.301590, 34.260120, 36.608757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.062195, 33.956020, 36.507690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114444, 0.393282, -0.912267,
		0.792917, -0.517063, -0.322380,
		-0.598486, -0.760247, -0.252665,
		42.882648, 33.727947, 36.431892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.486179, 33.496937, 36.744976>,  <43.301590, 34.260120, 36.608757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.486179, 33.496937, 36.744976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.803989, 33.257317, 36.705223>,  <43.994675, 33.113544, 36.681374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.803989, 33.257317, 36.705223>,  <43.486179, 33.496937, 36.744976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.803989, 33.257317, 36.705223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513962, 0.750571, -0.415313,
		0.323384, 0.278898, 0.904234,
		0.794522, -0.599048, -0.099380,
		44.042347, 33.077602, 36.675407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.105427, 33.827122, 37.116055>,  <43.486179, 33.496937, 36.744976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.105427, 33.827122, 37.116055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.261673, 33.586239, 36.837555>,  <44.355419, 33.441708, 36.670456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.261673, 33.586239, 36.837555>,  <44.105427, 33.827122, 37.116055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.261673, 33.586239, 36.837555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517239, 0.769236, -0.375154,
		0.761502, -0.213589, 0.611959,
		0.390612, -0.602210, -0.696251,
		44.378857, 33.405575, 36.628681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.871986, 33.797665, 37.077324>,  <44.105427, 33.827122, 37.116055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.871986, 33.797665, 37.077324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.778450, 33.662354, 36.712711>,  <44.722328, 33.581165, 36.493946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.778450, 33.662354, 36.712711>,  <44.871986, 33.797665, 37.077324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.778450, 33.662354, 36.712711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833102, 0.413625, -0.367227,
		0.501256, -0.845269, 0.185099,
		-0.233844, -0.338281, -0.911528,
		44.708298, 33.560867, 36.439255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.333855, 33.349178, 36.719147>,  <44.871986, 33.797665, 37.077324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.333855, 33.349178, 36.719147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.174110, 33.565639, 36.423130>,  <45.078262, 33.695515, 36.245522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.174110, 33.565639, 36.423130>,  <45.333855, 33.349178, 36.719147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.174110, 33.565639, 36.423130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913594, 0.302285, -0.271976,
		0.076523, -0.784715, -0.615115,
		-0.399363, 0.541153, -0.740042,
		45.054302, 33.727985, 36.201118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.702503, 33.463818, 36.117420>,  <45.333855, 33.349178, 36.719147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.702503, 33.463818, 36.117420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.511395, 33.811890, 36.069233>,  <45.396729, 34.020733, 36.040321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.511395, 33.811890, 36.069233>,  <45.702503, 33.463818, 36.117420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.511395, 33.811890, 36.069233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873188, 0.455376, -0.173713,
		-0.096306, -0.188183, -0.977401,
		-0.477775, 0.870184, -0.120464,
		45.368061, 34.072945, 36.033092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.691906, 33.793072, 35.360699>,  <45.702503, 33.463818, 36.117420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.691906, 33.793072, 35.360699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.682468, 34.013695, 35.694221>,  <45.676804, 34.146069, 35.894333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.682468, 34.013695, 35.694221>,  <45.691906, 33.793072, 35.360699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.682468, 34.013695, 35.694221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762839, 0.549003, -0.341574,
		-0.646158, 0.627997, -0.433704,
		-0.023597, 0.551557, 0.833803,
		45.675388, 34.179161, 35.944363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.670197, 34.608498, 35.217407>,  <45.691906, 33.793072, 35.360699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.670197, 34.608498, 35.217407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.859810, 34.493839, 35.550423>,  <45.973576, 34.425045, 35.750233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.859810, 34.493839, 35.550423>,  <45.670197, 34.608498, 35.217407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.859810, 34.493839, 35.550423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795502, 0.544745, -0.265383,
		-0.377452, 0.788089, 0.486257,
		0.474032, -0.286649, 0.832542,
		46.002018, 34.407845, 35.800186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.868778, 35.137432, 35.694710>,  <45.670197, 34.608498, 35.217407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.868778, 35.137432, 35.694710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.121738, 34.839535, 35.779961>,  <46.273514, 34.660797, 35.831112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.121738, 34.839535, 35.779961>,  <45.868778, 35.137432, 35.694710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.121738, 34.839535, 35.779961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765395, 0.558350, -0.320025,
		0.119340, 0.365507, 0.923126,
		0.632399, -0.744748, 0.213124,
		46.311459, 34.616112, 35.843899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.513451, 35.384689, 36.113327>,  <45.868778, 35.137432, 35.694710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.513451, 35.384689, 36.113327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.538128, 35.085274, 35.849243>,  <46.552937, 34.905624, 35.690792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.538128, 35.085274, 35.849243>,  <46.513451, 35.384689, 36.113327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.538128, 35.085274, 35.849243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846568, 0.389630, -0.362643,
		0.528691, -0.536542, 0.657729,
		0.061698, -0.748539, -0.660214,
		46.556637, 34.860710, 35.651180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.170097, 34.953167, 36.103172>,  <46.513451, 35.384689, 36.113327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.170097, 34.953167, 36.103172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.006268, 34.955067, 35.738266>,  <46.907970, 34.956207, 35.519321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.006268, 34.955067, 35.738266>,  <47.170097, 34.953167, 36.103172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.006268, 34.955067, 35.738266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808145, 0.465845, -0.360404,
		0.423263, -0.884854, -0.194632,
		-0.409573, 0.004745, -0.912265,
		46.883396, 34.956490, 35.464588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.692608, 34.792496, 35.688847>,  <47.170097, 34.953167, 36.103172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.692608, 34.792496, 35.688847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.402969, 34.948147, 35.461071>,  <47.229187, 35.041538, 35.324406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.402969, 34.948147, 35.461071>,  <47.692608, 34.792496, 35.688847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.402969, 34.948147, 35.461071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676599, 0.560945, -0.477027,
		0.133800, -0.730697, -0.669462,
		-0.724094, 0.389131, -0.569443,
		47.185741, 35.064888, 35.290237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.833664, 34.602901, 34.960587>,  <47.692608, 34.792496, 35.688847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.833664, 34.602901, 34.960587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.650745, 34.957867, 34.983868>,  <47.540997, 35.170845, 34.997837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.650745, 34.957867, 34.983868>,  <47.833664, 34.602901, 34.960587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.650745, 34.957867, 34.983868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701567, 0.400198, -0.589615,
		-0.546522, -0.228796, -0.805585,
		-0.457294, 0.887409, 0.058201,
		47.513557, 35.224091, 35.001328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.043850, 27.506708, 31.891441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.868008, 27.843950, 31.767555>,  <35.762505, 28.046295, 31.693224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.868008, 27.843950, 31.767555>,  <36.043850, 27.506708, 31.891441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868008, 27.843950, 31.767555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278906, 0.199645, 0.939337,
		0.853792, 0.499317, 0.147383,
		-0.439602, 0.843104, -0.309718,
		35.736126, 28.096882, 31.674641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315804, 28.034431, 32.318733>,  <36.043850, 27.506708, 31.891441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315804, 28.034431, 32.318733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.967205, 28.171003, 32.177921>,  <35.758045, 28.252947, 32.093433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.967205, 28.171003, 32.177921>,  <36.315804, 28.034431, 32.318733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967205, 28.171003, 32.177921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280238, 0.242361, 0.928831,
		0.402451, 0.908122, -0.115533,
		-0.871493, 0.341432, -0.352029,
		35.705757, 28.273434, 32.072311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214397, 28.728628, 32.572823>,  <36.315804, 28.034431, 32.318733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214397, 28.728628, 32.572823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.851982, 28.589758, 32.476017>,  <35.634533, 28.506435, 32.417934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.851982, 28.589758, 32.476017>,  <36.214397, 28.728628, 32.572823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851982, 28.589758, 32.476017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360460, 0.333452, 0.871136,
		-0.221738, 0.876515, -0.427263,
		-0.906036, -0.347175, -0.242010,
		35.580170, 28.485605, 32.403416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833218, 29.341902, 32.585594>,  <36.214397, 28.728628, 32.572823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833218, 29.341902, 32.585594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.613838, 29.011698, 32.638855>,  <35.482208, 28.813576, 32.670811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.613838, 29.011698, 32.638855>,  <35.833218, 29.341902, 32.585594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613838, 29.011698, 32.638855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382111, 0.389071, 0.838222,
		-0.743768, 0.408845, -0.528824,
		-0.548453, -0.825512, 0.133154,
		35.449303, 28.764044, 32.678802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126236, 29.584488, 32.661118>,  <35.833218, 29.341902, 32.585594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126236, 29.584488, 32.661118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.145443, 29.222637, 32.830513>,  <35.156967, 29.005526, 32.932152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.145443, 29.222637, 32.830513>,  <35.126236, 29.584488, 32.661118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145443, 29.222637, 32.830513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404265, 0.370097, 0.836420,
		-0.913381, -0.211367, -0.347937,
		0.048021, -0.904628, 0.423488,
		35.159851, 28.951248, 32.957558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409664, 29.406050, 32.895947>,  <35.126236, 29.584488, 32.661118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409664, 29.406050, 32.895947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.670078, 29.179268, 33.097824>,  <34.826328, 29.043200, 33.218952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.670078, 29.179268, 33.097824>,  <34.409664, 29.406050, 32.895947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670078, 29.179268, 33.097824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422711, 0.281453, 0.861452,
		-0.630451, -0.774176, -0.056421,
		0.651036, -0.566953, 0.504695,
		34.865391, 29.009182, 33.249233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992931, 29.156546, 33.315517>,  <34.409664, 29.406050, 32.895947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992931, 29.156546, 33.315517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.363068, 29.115454, 33.461498>,  <34.585148, 29.090799, 33.549088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.363068, 29.115454, 33.461498>,  <33.992931, 29.156546, 33.315517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363068, 29.115454, 33.461498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276161, 0.476892, 0.834451,
		-0.259765, -0.872938, 0.412918,
		0.925341, -0.102730, 0.364952,
		34.640671, 29.084635, 33.570984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045528, 28.691380, 33.819405>,  <33.992931, 29.156546, 33.315517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045528, 28.691380, 33.819405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.351986, 28.937477, 33.893696>,  <34.535862, 29.085135, 33.938271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.351986, 28.937477, 33.893696>,  <34.045528, 28.691380, 33.819405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351986, 28.937477, 33.893696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441838, 0.294397, 0.847413,
		0.466688, -0.731305, 0.497389,
		0.766147, 0.615243, 0.185726,
		34.581829, 29.122049, 33.949413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231140, 28.664198, 34.600811>,  <34.045528, 28.691380, 33.819405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231140, 28.664198, 34.600811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.444454, 28.984381, 34.491360>,  <34.572441, 29.176491, 34.425690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.444454, 28.984381, 34.491360>,  <34.231140, 28.664198, 34.600811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444454, 28.984381, 34.491360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094425, 0.377769, 0.921072,
		0.840649, -0.465357, 0.277042,
		0.533285, 0.800458, -0.273630,
		34.604439, 29.224518, 34.409271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736343, 28.734251, 35.047112>,  <34.231140, 28.664198, 34.600811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736343, 28.734251, 35.047112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.701431, 29.104004, 34.898571>,  <34.680485, 29.325855, 34.809448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.701431, 29.104004, 34.898571>,  <34.736343, 28.734251, 35.047112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701431, 29.104004, 34.898571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022372, 0.374496, 0.926959,
		0.995933, 0.072594, -0.053365,
		-0.087276, 0.924382, -0.371349,
		34.675247, 29.381319, 34.787167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302837, 28.996357, 35.290745>,  <34.736343, 28.734251, 35.047112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302837, 28.996357, 35.290745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.033611, 29.271599, 35.182304>,  <34.872078, 29.436745, 35.117241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.033611, 29.271599, 35.182304>,  <35.302837, 28.996357, 35.290745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033611, 29.271599, 35.182304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039198, 0.399236, 0.916010,
		0.738546, 0.605905, -0.295683,
		-0.673063, 0.688106, -0.271104,
		34.831692, 29.478031, 35.100975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614040, 29.609442, 35.425522>,  <35.302837, 28.996357, 35.290745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614040, 29.609442, 35.425522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.220749, 29.682344, 35.428066>,  <34.984772, 29.726086, 35.429592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.220749, 29.682344, 35.428066>,  <35.614040, 29.609442, 35.425522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220749, 29.682344, 35.428066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098476, 0.501233, 0.859691,
		0.153494, 0.845901, -0.510775,
		-0.983230, 0.182256, 0.006364,
		34.925781, 29.737020, 35.429977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577232, 30.250633, 35.721733>,  <35.614040, 29.609442, 35.425522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577232, 30.250633, 35.721733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.198013, 30.123751, 35.731392>,  <34.970482, 30.047621, 35.737186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.198013, 30.123751, 35.731392>,  <35.577232, 30.250633, 35.721733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198013, 30.123751, 35.731392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105848, 0.386108, 0.916361,
		-0.299998, 0.866199, -0.399625,
		-0.948049, -0.317205, 0.024146,
		34.913597, 30.028589, 35.738636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235714, 30.867764, 35.979519>,  <35.577232, 30.250633, 35.721733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235714, 30.867764, 35.979519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.024925, 30.532907, 36.038170>,  <34.898453, 30.331993, 36.073360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.024925, 30.532907, 36.038170>,  <35.235714, 30.867764, 35.979519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.024925, 30.532907, 36.038170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150700, 0.261831, 0.953275,
		-0.836415, 0.480252, -0.264135,
		-0.526971, -0.837139, 0.146625,
		34.866833, 30.281765, 36.082157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628937, 31.150740, 36.322803>,  <35.235714, 30.867764, 35.979519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628937, 31.150740, 36.322803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.650490, 30.761503, 36.412418>,  <34.663422, 30.527962, 36.466187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.650490, 30.761503, 36.412418>,  <34.628937, 31.150740, 36.322803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650490, 30.761503, 36.412418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229580, 0.206280, 0.951179,
		-0.971797, -0.102684, -0.212287,
		0.053880, -0.973090, 0.224036,
		34.666653, 30.469576, 36.479630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034035, 31.013767, 36.706501>,  <34.628937, 31.150740, 36.322803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034035, 31.013767, 36.706501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.241611, 30.681282, 36.786282>,  <34.366158, 30.481791, 36.834152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.241611, 30.681282, 36.786282>,  <34.034035, 31.013767, 36.706501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241611, 30.681282, 36.786282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181811, 0.120666, 0.975902,
		-0.835249, -0.542702, -0.088504,
		0.518945, -0.831213, 0.199456,
		34.397293, 30.431919, 36.846119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520241, 30.630989, 37.081116>,  <34.034035, 31.013767, 36.706501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520241, 30.630989, 37.081116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.883472, 30.508076, 37.194935>,  <34.101410, 30.434328, 37.263226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.883472, 30.508076, 37.194935>,  <33.520241, 30.630989, 37.081116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883472, 30.508076, 37.194935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255185, 0.132756, 0.957735,
		-0.332072, -0.942312, 0.042138,
		0.908080, -0.307284, 0.284549,
		34.155895, 30.415890, 37.280300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402737, 30.230869, 37.691669>,  <33.520241, 30.630989, 37.081116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402737, 30.230869, 37.691669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.790886, 30.325708, 37.710278>,  <34.023773, 30.382612, 37.721443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.790886, 30.325708, 37.710278>,  <33.402737, 30.230869, 37.691669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790886, 30.325708, 37.710278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096707, 0.204687, 0.974038,
		0.221441, -0.949673, 0.221553,
		0.970367, 0.237118, 0.046514,
		34.081997, 30.396837, 37.724232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599606, 29.877304, 38.209244>,  <33.402737, 30.230869, 37.691669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599606, 29.877304, 38.209244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.836109, 30.197355, 38.168823>,  <33.978012, 30.389385, 38.144573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.836109, 30.197355, 38.168823>,  <33.599606, 29.877304, 38.209244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836109, 30.197355, 38.168823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116505, 0.208722, 0.971011,
		0.798022, -0.562346, 0.216627,
		0.591259, 0.800127, -0.101048,
		34.013485, 30.437393, 38.138508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958019, 29.924522, 38.888077>,  <33.599606, 29.877304, 38.209244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958019, 29.924522, 38.888077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.049438, 30.276920, 38.722370>,  <34.104290, 30.488359, 38.622948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.049438, 30.276920, 38.722370>,  <33.958019, 29.924522, 38.888077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049438, 30.276920, 38.722370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047431, 0.435098, 0.899133,
		0.972377, -0.185844, 0.141226,
		0.228546, 0.880994, -0.414265,
		34.118004, 30.541218, 38.598091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624317, 30.189533, 39.213329>,  <33.958019, 29.924522, 38.888077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624317, 30.189533, 39.213329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.427422, 30.509089, 39.075069>,  <34.309284, 30.700823, 38.992111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.427422, 30.509089, 39.075069>,  <34.624317, 30.189533, 39.213329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427422, 30.509089, 39.075069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006240, 0.393843, 0.919156,
		0.870437, 0.454603, -0.188880,
		-0.492240, 0.798889, -0.345653,
		34.279751, 30.748755, 38.971375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040657, 30.903830, 39.427971>,  <34.624317, 30.189533, 39.213329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040657, 30.903830, 39.427971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.662315, 30.996702, 39.337234>,  <34.435310, 31.052425, 39.282791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.662315, 30.996702, 39.337234>,  <35.040657, 30.903830, 39.427971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662315, 30.996702, 39.337234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063071, 0.554064, 0.830082,
		0.318416, 0.799440, -0.509417,
		-0.945850, 0.232182, -0.226844,
		34.378559, 31.066357, 39.269180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743969, 31.173347, 39.267769>,  <35.040657, 30.903830, 39.427971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743969, 31.173347, 39.267769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.113697, 31.068798, 39.378990>,  <36.335533, 31.006067, 39.445724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.113697, 31.068798, 39.378990>,  <35.743969, 31.173347, 39.267769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113697, 31.068798, 39.378990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228199, -0.205424, -0.951697,
		0.305869, 0.943125, -0.130232,
		0.924321, -0.261375, 0.278053,
		36.390995, 30.990385, 39.462406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286377, 31.498112, 38.793579>,  <35.743969, 31.173347, 39.267769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286377, 31.498112, 38.793579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.464520, 31.179085, 38.956326>,  <36.571407, 30.987669, 39.053974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.464520, 31.179085, 38.956326>,  <36.286377, 31.498112, 38.793579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464520, 31.179085, 38.956326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299495, -0.295539, -0.907171,
		0.843776, 0.525871, 0.107247,
		0.445359, -0.797569, 0.406865,
		36.598125, 30.939814, 39.078384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926609, 31.420027, 38.372173>,  <36.286377, 31.498112, 38.793579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926609, 31.420027, 38.372173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.861683, 31.063484, 38.541473>,  <36.822727, 30.849558, 38.643051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.861683, 31.063484, 38.541473>,  <36.926609, 31.420027, 38.372173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861683, 31.063484, 38.541473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334812, -0.453239, -0.826121,
		0.928201, 0.007620, 0.372002,
		-0.162311, -0.891356, 0.423248,
		36.812988, 30.796078, 38.668449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548809, 31.029072, 38.242085>,  <36.926609, 31.420027, 38.372173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548809, 31.029072, 38.242085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.247772, 30.778078, 38.321949>,  <37.067150, 30.627481, 38.369869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.247772, 30.778078, 38.321949>,  <37.548809, 31.029072, 38.242085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247772, 30.778078, 38.321949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231194, -0.535707, -0.812137,
		0.616565, -0.565048, 0.548241,
		-0.752593, -0.627485, 0.199662,
		37.021996, 30.589832, 38.381847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897182, 30.410501, 37.961197>,  <37.548809, 31.029072, 38.242085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897182, 30.410501, 37.961197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.505856, 30.347441, 38.014938>,  <37.271061, 30.309605, 38.047184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.505856, 30.347441, 38.014938>,  <37.897182, 30.410501, 37.961197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505856, 30.347441, 38.014938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014778, -0.700093, -0.713898,
		0.206605, -0.696431, 0.687240,
		-0.978312, -0.157651, 0.134351,
		37.212360, 30.300146, 38.055244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879658, 29.702496, 38.006763>,  <37.897182, 30.410501, 37.961197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879658, 29.702496, 38.006763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.507195, 29.809526, 37.907688>,  <37.283718, 29.873745, 37.848244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.507195, 29.809526, 37.907688>,  <37.879658, 29.702496, 38.006763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507195, 29.809526, 37.907688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029072, -0.622657, -0.781955,
		-0.363459, -0.735323, 0.572013,
		-0.931157, 0.267579, -0.247687,
		37.227848, 29.889801, 37.833382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576706, 29.062254, 37.794136>,  <37.879658, 29.702496, 38.006763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576706, 29.062254, 37.794136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.341637, 29.343576, 37.634136>,  <37.200596, 29.512369, 37.538136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.341637, 29.343576, 37.634136>,  <37.576706, 29.062254, 37.794136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341637, 29.343576, 37.634136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083183, -0.439236, -0.894513,
		-0.804808, -0.558958, 0.199626,
		-0.587677, 0.703306, -0.399996,
		37.165333, 29.554567, 37.514137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128502, 28.715630, 37.381443>,  <37.576706, 29.062254, 37.794136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128502, 28.715630, 37.381443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.128765, 29.092628, 37.247757>,  <37.128925, 29.318829, 37.167545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.128765, 29.092628, 37.247757>,  <37.128502, 28.715630, 37.381443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128765, 29.092628, 37.247757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183666, -0.328643, -0.926424,
		-0.982988, -0.060771, -0.173322,
		0.000661, 0.942497, -0.334213,
		37.128963, 29.375378, 37.147491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847836, 28.615044, 36.705868>,  <37.128502, 28.715630, 37.381443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847836, 28.615044, 36.705868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.019207, 28.976456, 36.702377>,  <37.122032, 29.193304, 36.700283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.019207, 28.976456, 36.702377>,  <36.847836, 28.615044, 36.705868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019207, 28.976456, 36.702377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393622, -0.195317, -0.898283,
		-0.813331, 0.381420, -0.439330,
		0.428432, 0.903532, -0.008722,
		37.147736, 29.247515, 36.699760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629837, 28.895821, 36.059109>,  <36.847836, 28.615044, 36.705868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629837, 28.895821, 36.059109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.946335, 29.100533, 36.192982>,  <37.136234, 29.223360, 36.273308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.946335, 29.100533, 36.192982>,  <36.629837, 28.895821, 36.059109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946335, 29.100533, 36.192982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374467, 0.027174, -0.926842,
		-0.483432, 0.858688, -0.170143,
		0.791245, 0.511778, 0.334687,
		37.183708, 29.254066, 36.293388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781818, 29.484211, 35.641338>,  <36.629837, 28.895821, 36.059109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781818, 29.484211, 35.641338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.144161, 29.468817, 35.810070>,  <37.361568, 29.459579, 35.911308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.144161, 29.468817, 35.810070>,  <36.781818, 29.484211, 35.641338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144161, 29.468817, 35.810070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423053, 0.032498, -0.905522,
		0.021143, 0.998731, 0.045721,
		0.905858, -0.038488, 0.421828,
		37.415920, 29.457270, 35.936619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143200, 29.955725, 35.276314>,  <36.781818, 29.484211, 35.641338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143200, 29.955725, 35.276314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.416531, 29.705515, 35.426929>,  <37.580528, 29.555389, 35.517300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.416531, 29.705515, 35.426929>,  <37.143200, 29.955725, 35.276314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416531, 29.705515, 35.426929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406106, -0.102946, -0.908009,
		0.606743, 0.773385, 0.183682,
		0.683331, -0.625522, 0.376538,
		37.621529, 29.517859, 35.539890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851009, 30.181145, 35.021458>,  <37.143200, 29.955725, 35.276314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851009, 30.181145, 35.021458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.881374, 29.795437, 35.122982>,  <37.899593, 29.564013, 35.183895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.881374, 29.795437, 35.122982>,  <37.851009, 30.181145, 35.021458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881374, 29.795437, 35.122982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426918, -0.198601, -0.882212,
		0.901098, 0.175328, 0.396588,
		0.075914, -0.964271, 0.253809,
		37.904148, 29.506155, 35.199123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469944, 30.023087, 34.899315>,  <37.851009, 30.181145, 35.021458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469944, 30.023087, 34.899315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.292980, 29.664673, 34.884327>,  <38.186802, 29.449625, 34.875336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.292980, 29.664673, 34.884327>,  <38.469944, 30.023087, 34.899315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292980, 29.664673, 34.884327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517216, -0.220792, -0.826885,
		0.732643, -0.385198, 0.561122,
		-0.442405, -0.896032, -0.037468,
		38.160259, 29.395863, 34.873085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977829, 29.553675, 34.509987>,  <38.469944, 30.023087, 34.899315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977829, 29.553675, 34.509987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.631668, 29.353441, 34.501106>,  <38.423969, 29.233301, 34.495777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.631668, 29.353441, 34.501106>,  <38.977829, 29.553675, 34.509987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631668, 29.353441, 34.501106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269031, -0.426809, -0.863398,
		0.422726, -0.753161, 0.504034,
		-0.865404, -0.500581, -0.022200,
		38.372047, 29.203266, 34.494446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104641, 28.861603, 34.393517>,  <38.977829, 29.553675, 34.509987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104641, 28.861603, 34.393517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.730968, 28.944841, 34.277584>,  <38.506763, 28.994783, 34.208027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.730968, 28.944841, 34.277584>,  <39.104641, 28.861603, 34.393517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730968, 28.944841, 34.277584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217541, -0.311662, -0.924956,
		-0.282800, -0.927128, 0.245882,
		-0.934184, 0.208089, -0.289826,
		38.450714, 29.007271, 34.190636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047058, 28.365421, 33.914955>,  <39.104641, 28.861603, 34.393517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047058, 28.365421, 33.914955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.729298, 28.598089, 33.845005>,  <38.538639, 28.737690, 33.803036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.729298, 28.598089, 33.845005>,  <39.047058, 28.365421, 33.914955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729298, 28.598089, 33.845005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048661, -0.226043, -0.972901,
		-0.605436, -0.781387, 0.151266,
		-0.794405, 0.581669, -0.174878,
		38.490974, 28.772591, 33.792542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516712, 27.969976, 33.571568>,  <39.047058, 28.365421, 33.914955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516712, 27.969976, 33.571568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.426876, 28.349703, 33.483608>,  <38.372974, 28.577539, 33.430832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.426876, 28.349703, 33.483608>,  <38.516712, 27.969976, 33.571568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426876, 28.349703, 33.483608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286868, -0.280078, -0.916113,
		-0.931271, -0.142668, 0.335232,
		-0.224591, 0.949317, -0.219901,
		38.359497, 28.634499, 33.417637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.791569, 27.933178, 33.111954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.961376, 28.289593, 33.047657>,  <38.063259, 28.503441, 33.009079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.961376, 28.289593, 33.047657>,  <37.791569, 27.933178, 33.111954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961376, 28.289593, 33.047657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180433, -0.090715, -0.979395,
		-0.887259, 0.444774, 0.122262,
		0.424518, 0.891037, -0.160739,
		38.088730, 28.556904, 32.999435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345104, 28.243517, 32.676060>,  <37.791569, 27.933178, 33.111954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345104, 28.243517, 32.676060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.686584, 28.444862, 32.622658>,  <37.891472, 28.565670, 32.590618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.686584, 28.444862, 32.622658>,  <37.345104, 28.243517, 32.676060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686584, 28.444862, 32.622658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177288, 0.039872, -0.983351,
		-0.489661, 0.863154, 0.123279,
		0.853698, 0.503365, -0.133503,
		37.942696, 28.595871, 32.582607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258438, 28.769650, 32.128361>,  <37.345104, 28.243517, 32.676060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258438, 28.769650, 32.128361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.635735, 28.638691, 32.150658>,  <37.862114, 28.560116, 32.164036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.635735, 28.638691, 32.150658>,  <37.258438, 28.769650, 32.128361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635735, 28.638691, 32.150658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024003, -0.234601, -0.971795,
		0.331240, 0.915299, -0.229144,
		0.943241, -0.327397, 0.055739,
		37.918709, 28.540472, 32.167377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475224, 28.849144, 31.421518>,  <37.258438, 28.769650, 32.128361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475224, 28.849144, 31.421518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.786751, 28.647799, 31.571220>,  <37.973667, 28.526991, 31.661041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.786751, 28.647799, 31.571220>,  <37.475224, 28.849144, 31.421518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786751, 28.647799, 31.571220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139336, -0.442914, -0.885671,
		0.611577, 0.741924, -0.274814,
		0.778819, -0.503364, 0.374253,
		38.020397, 28.496790, 31.683496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037178, 29.031597, 31.072769>,  <37.475224, 28.849144, 31.421518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037178, 29.031597, 31.072769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.125866, 28.674707, 31.230137>,  <38.179077, 28.460573, 31.324556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.125866, 28.674707, 31.230137>,  <38.037178, 29.031597, 31.072769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125866, 28.674707, 31.230137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229127, -0.344494, -0.910398,
		0.947809, 0.291992, 0.128053,
		0.221716, -0.892225, 0.393417,
		38.192379, 28.407040, 31.348162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700314, 28.963070, 30.898287>,  <38.037178, 29.031597, 31.072769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700314, 28.963070, 30.898287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.568920, 28.593203, 30.975323>,  <38.490086, 28.371283, 31.021544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.568920, 28.593203, 30.975323>,  <38.700314, 28.963070, 30.898287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568920, 28.593203, 30.975323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345626, -0.307437, -0.886581,
		0.879001, -0.224661, 0.420576,
		-0.328480, -0.924667, 0.192589,
		38.470375, 28.315802, 31.033100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193466, 28.552439, 30.825640>,  <38.700314, 28.963070, 30.898287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.193466, 28.552439, 30.825640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.903046, 28.285229, 30.760416>,  <38.728794, 28.124903, 30.721283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.903046, 28.285229, 30.760416>,  <39.193466, 28.552439, 30.825640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903046, 28.285229, 30.760416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425068, -0.249619, -0.870062,
		0.540520, -0.701023, 0.465193,
		-0.726055, -0.668025, -0.163058,
		38.685230, 28.084822, 30.711498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496040, 28.027285, 30.422695>,  <39.193466, 28.552439, 30.825640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496040, 28.027285, 30.422695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.108795, 27.937305, 30.378607>,  <38.876446, 27.883318, 30.352154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.108795, 27.937305, 30.378607>,  <39.496040, 28.027285, 30.422695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108795, 27.937305, 30.378607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190845, -0.377323, -0.906204,
		0.162259, -0.898346, 0.408223,
		-0.968117, -0.224947, -0.110221,
		38.818359, 27.869822, 30.345541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548378, 27.445431, 30.170750>,  <39.496040, 28.027285, 30.422695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548378, 27.445431, 30.170750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.174164, 27.546562, 30.072071>,  <38.949635, 27.607241, 30.012865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.174164, 27.546562, 30.072071>,  <39.548378, 27.445431, 30.170750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174164, 27.546562, 30.072071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179457, -0.261364, -0.948411,
		-0.304264, -0.931540, 0.199142,
		-0.935532, 0.252830, -0.246695,
		38.893505, 27.622410, 29.998062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246704, 26.921431, 29.727793>,  <39.548378, 27.445431, 30.170750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246704, 26.921431, 29.727793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.028790, 27.246410, 29.644726>,  <38.898041, 27.441399, 29.594885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.028790, 27.246410, 29.644726>,  <39.246704, 26.921431, 29.727793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028790, 27.246410, 29.644726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104281, -0.180084, -0.978108,
		-0.832063, -0.554520, 0.013385,
		-0.544790, 0.812452, -0.207667,
		38.865353, 27.490147, 29.582426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680996, 26.742744, 29.291636>,  <39.246704, 26.921431, 29.727793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680996, 26.742744, 29.291636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.720943, 27.136745, 29.235357>,  <38.744911, 27.373146, 29.201590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.720943, 27.136745, 29.235357>,  <38.680996, 26.742744, 29.291636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720943, 27.136745, 29.235357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004432, -0.140961, -0.990005,
		-0.994991, 0.099492, -0.009712,
		0.099867, 0.985003, -0.140696,
		38.750904, 27.432247, 29.193150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088490, 26.949144, 28.769270>,  <38.680996, 26.742744, 29.291636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088490, 26.949144, 28.769270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.371220, 27.232100, 28.769604>,  <38.540859, 27.401873, 28.769804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.371220, 27.232100, 28.769604>,  <38.088490, 26.949144, 28.769270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371220, 27.232100, 28.769604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075382, -0.074151, -0.994394,
		-0.703362, 0.702924, -0.105736,
		0.706824, 0.707389, 0.000833,
		38.583267, 27.444317, 28.769854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851284, 27.418303, 28.263586>,  <38.088490, 26.949144, 28.769270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851284, 27.418303, 28.263586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.239548, 27.507767, 28.298895>,  <38.472507, 27.561445, 28.320080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.239548, 27.507767, 28.298895>,  <37.851284, 27.418303, 28.263586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239548, 27.507767, 28.298895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081704, 0.038479, -0.995913,
		-0.226142, 0.973907, 0.019076,
		0.970662, 0.223659, 0.088274,
		38.530746, 27.574863, 28.325377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971668, 27.938639, 27.792316>,  <37.851284, 27.418303, 28.263586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971668, 27.938639, 27.792316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.338364, 27.798119, 27.868393>,  <38.558380, 27.713806, 27.914038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.338364, 27.798119, 27.868393>,  <37.971668, 27.938639, 27.792316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338364, 27.798119, 27.868393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231885, 0.080286, -0.969424,
		0.325289, 0.932815, 0.155063,
		0.916743, -0.351299, 0.190189,
		38.613388, 27.692728, 27.925449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389309, 28.356491, 27.363649>,  <37.971668, 27.938639, 27.792316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389309, 28.356491, 27.363649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.619022, 28.042286, 27.455883>,  <38.756851, 27.853764, 27.511223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.619022, 28.042286, 27.455883>,  <38.389309, 28.356491, 27.363649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619022, 28.042286, 27.455883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302107, -0.058435, -0.951482,
		0.760875, 0.616080, 0.203750,
		0.574282, -0.785513, 0.230584,
		38.791306, 27.806631, 27.525059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084339, 28.519135, 27.236137>,  <38.389309, 28.356491, 27.363649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084339, 28.519135, 27.236137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.082333, 28.119802, 27.213120>,  <39.081127, 27.880203, 27.199308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.082333, 28.119802, 27.213120>,  <39.084339, 28.519135, 27.236137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082333, 28.119802, 27.213120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334796, 0.052548, -0.940824,
		0.942277, -0.023986, 0.333974,
		-0.005017, -0.998330, -0.057545,
		39.080826, 27.820303, 27.195856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711113, 28.388012, 26.929752>,  <39.084339, 28.519135, 27.236137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711113, 28.388012, 26.929752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.500320, 28.052298, 26.876247>,  <39.373844, 27.850870, 26.844145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.500320, 28.052298, 26.876247>,  <39.711113, 28.388012, 26.929752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500320, 28.052298, 26.876247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345581, -0.067824, -0.935935,
		0.776444, -0.539445, 0.325783,
		-0.526981, -0.839285, -0.133760,
		39.342228, 27.800512, 26.836119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141212, 27.972504, 26.523779>,  <39.711113, 28.388012, 26.929752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141212, 27.972504, 26.523779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.766262, 27.842113, 26.474693>,  <39.541290, 27.763880, 26.445242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.766262, 27.842113, 26.474693>,  <40.141212, 27.972504, 26.523779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766262, 27.842113, 26.474693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218073, -0.274545, -0.936520,
		0.271594, -0.904635, 0.328439,
		-0.937380, -0.325977, -0.122712,
		39.485046, 27.744320, 26.437880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211700, 27.323055, 26.317760>,  <40.141212, 27.972504, 26.523779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211700, 27.323055, 26.317760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.853378, 27.448759, 26.192047>,  <39.638386, 27.524181, 26.116619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.853378, 27.448759, 26.192047>,  <40.211700, 27.323055, 26.317760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853378, 27.448759, 26.192047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345825, 0.048679, -0.937036,
		-0.279176, -0.948087, -0.152287,
		-0.895805, 0.314263, -0.314282,
		39.584637, 27.543037, 26.097763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214565, 27.013681, 25.651588>,  <40.211700, 27.323055, 26.317760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214565, 27.013681, 25.651588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.921577, 27.283173, 25.612425>,  <39.745785, 27.444866, 25.588926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.921577, 27.283173, 25.612425>,  <40.214565, 27.013681, 25.651588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.921577, 27.283173, 25.612425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242272, 0.123545, -0.962310,
		-0.636238, -0.728580, -0.253717,
		-0.732466, 0.673727, -0.097910,
		39.701839, 27.485291, 25.583052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765255, 26.909861, 24.972916>,  <40.214565, 27.013681, 25.651588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765255, 26.909861, 24.972916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.725395, 27.295689, 25.070631>,  <39.701481, 27.527185, 25.129261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.725395, 27.295689, 25.070631>,  <39.765255, 26.909861, 24.972916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.725395, 27.295689, 25.070631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177831, 0.258822, -0.949414,
		-0.979003, -0.051164, -0.197321,
		-0.099646, 0.964569, 0.244289,
		39.695499, 27.585060, 25.143917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161572, 27.129227, 24.547829>,  <39.765255, 26.909861, 24.972916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161572, 27.129227, 24.547829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.371632, 27.447283, 24.669132>,  <39.497669, 27.638117, 24.741915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.371632, 27.447283, 24.669132>,  <39.161572, 27.129227, 24.547829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371632, 27.447283, 24.669132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175639, 0.247410, -0.952858,
		-0.832687, 0.553659, -0.009730,
		0.525151, 0.795141, 0.303259,
		39.529179, 27.685825, 24.760111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477482, 27.291201, 25.006155>,  <39.161572, 27.129227, 24.547829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477482, 27.291201, 25.006155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.570030, 26.953060, 25.198757>,  <38.625557, 26.750175, 25.314318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.570030, 26.953060, 25.198757>,  <38.477482, 27.291201, 25.006155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570030, 26.953060, 25.198757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351065, 0.534133, 0.769061,
		-0.907316, -0.008895, 0.420355,
		0.231366, -0.845353, 0.481505,
		38.639439, 26.699453, 25.343208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319031, 27.483664, 24.224401>,  <38.477482, 27.291201, 25.006155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319031, 27.483664, 24.224401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.287106, 27.875624, 24.297531>,  <38.267948, 28.110800, 24.341410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.287106, 27.875624, 24.297531>,  <38.319031, 27.483664, 24.224401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287106, 27.875624, 24.297531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408602, -0.135131, 0.902654,
		0.909216, 0.146749, -0.389603,
		-0.079816, 0.979900, 0.182826,
		38.263161, 28.169594, 24.352379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549431, 27.552607, 24.060890>,  <38.319031, 27.483664, 24.224401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549431, 27.552607, 24.060890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.190865, 27.646570, 23.910557>,  <36.975723, 27.702948, 23.820356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.190865, 27.646570, 23.910557>,  <37.549431, 27.552607, 24.060890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190865, 27.646570, 23.910557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329768, 0.213048, 0.919708,
		0.296117, 0.948382, -0.113516,
		-0.896420, 0.234907, -0.375833,
		36.921940, 27.717043, 23.797808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293915, 28.273233, 24.247047>,  <37.549431, 27.552607, 24.060890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293915, 28.273233, 24.247047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.985096, 28.028408, 24.178545>,  <36.799805, 27.881514, 24.137444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.985096, 28.028408, 24.178545>,  <37.293915, 28.273233, 24.247047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985096, 28.028408, 24.178545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319294, 0.140526, 0.937179,
		-0.549547, 0.778223, -0.303920,
		-0.772043, -0.612063, -0.171256,
		36.753483, 27.844790, 24.127169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625328, 28.713936, 24.407040>,  <37.293915, 28.273233, 24.247047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625328, 28.713936, 24.407040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.510979, 28.330675, 24.413006>,  <36.442371, 28.100718, 24.416586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.510979, 28.330675, 24.413006>,  <36.625328, 28.713936, 24.407040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510979, 28.330675, 24.413006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307789, 0.106546, 0.945470,
		-0.907494, 0.265691, -0.325367,
		-0.285869, -0.958153, 0.014913,
		36.425217, 28.043230, 24.417480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908356, 28.699078, 24.655340>,  <36.625328, 28.713936, 24.407040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908356, 28.699078, 24.655340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.098663, 28.358015, 24.741711>,  <36.212849, 28.153378, 24.793533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.098663, 28.358015, 24.741711>,  <35.908356, 28.699078, 24.655340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098663, 28.358015, 24.741711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442321, -0.019744, 0.896639,
		-0.760260, -0.522102, -0.386541,
		0.475769, -0.852654, 0.215926,
		36.241394, 28.102219, 24.806488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641197, 28.487442, 25.176006>,  <35.908356, 28.699078, 24.655340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641197, 28.487442, 25.176006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.945179, 28.227667, 25.186598>,  <36.127567, 28.071802, 25.192953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.945179, 28.227667, 25.186598>,  <35.641197, 28.487442, 25.176006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945179, 28.227667, 25.186598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197264, -0.191633, 0.961438,
		-0.619320, -0.735872, -0.273742,
		0.759953, -0.649438, 0.026479,
		36.173164, 28.032835, 25.194542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404030, 27.889347, 25.504204>,  <35.641197, 28.487442, 25.176006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404030, 27.889347, 25.504204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.794655, 27.822660, 25.558641>,  <36.029030, 27.782648, 25.591305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.794655, 27.822660, 25.558641>,  <35.404030, 27.889347, 25.504204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794655, 27.822660, 25.558641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133259, 0.028144, 0.990682,
		-0.168995, -0.985603, 0.005268,
		0.976567, -0.166718, 0.136096,
		36.087624, 27.772646, 25.599470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466049, 27.338362, 25.906403>,  <35.404030, 27.889347, 25.504204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466049, 27.338362, 25.906403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.812267, 27.532692, 25.955080>,  <36.019997, 27.649290, 25.984285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.812267, 27.532692, 25.955080>,  <35.466049, 27.338362, 25.906403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812267, 27.532692, 25.955080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004129, -0.249892, 0.968265,
		0.500819, -0.837571, -0.218298,
		0.865542, 0.485827, 0.121693,
		36.071930, 27.678440, 25.991589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668938, 27.154362, 26.529612>,  <35.466049, 27.338362, 25.906403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668938, 27.154362, 26.529612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.933910, 27.448980, 26.474941>,  <36.092896, 27.625751, 26.442139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.933910, 27.448980, 26.474941>,  <35.668938, 27.154362, 26.529612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933910, 27.448980, 26.474941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223222, -0.019919, 0.974564,
		0.715090, -0.676092, -0.177609,
		0.662433, 0.736547, -0.136675,
		36.132641, 27.669945, 26.433939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396824, 26.957556, 26.844496>,  <35.668938, 27.154362, 26.529612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396824, 26.957556, 26.844496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.359055, 27.355572, 26.831989>,  <36.336395, 27.594381, 26.824486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.359055, 27.355572, 26.831989>,  <36.396824, 26.957556, 26.844496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359055, 27.355572, 26.831989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068320, 0.037808, 0.996947,
		0.993186, 0.091995, -0.071551,
		-0.094419, 0.995042, -0.031265,
		36.330730, 27.654083, 26.822609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911068, 27.190605, 27.270313>,  <36.396824, 26.957556, 26.844496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911068, 27.190605, 27.270313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.634285, 27.479074, 27.256996>,  <36.468216, 27.652155, 27.249006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.634285, 27.479074, 27.256996>,  <36.911068, 27.190605, 27.270313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634285, 27.479074, 27.256996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048606, 0.092546, 0.994521,
		0.720302, 0.686547, -0.099091,
		-0.691956, 0.721172, -0.033291,
		36.426697, 27.695427, 27.247009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177830, 27.810240, 27.571753>,  <36.911068, 27.190605, 27.270313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177830, 27.810240, 27.571753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.778091, 27.811468, 27.586168>,  <36.538250, 27.812206, 27.594818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.778091, 27.811468, 27.586168>,  <37.177830, 27.810240, 27.571753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778091, 27.811468, 27.586168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036148, 0.120740, 0.992026,
		-0.001304, 0.992680, -0.120772,
		-0.999346, 0.003072, 0.036041,
		36.478287, 27.812389, 27.596981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060226, 28.011131, 28.222076>,  <37.177830, 27.810240, 27.571753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060226, 28.011131, 28.222076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.688946, 27.984917, 28.075577>,  <36.466175, 27.969187, 27.987677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.688946, 27.984917, 28.075577>,  <37.060226, 28.011131, 28.222076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688946, 27.984917, 28.075577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369152, 0.285229, 0.884518,
		0.046495, 0.956216, -0.288944,
		-0.928205, -0.065538, -0.366251,
		36.410484, 27.965256, 27.965702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741642, 28.651672, 28.295118>,  <37.060226, 28.011131, 28.222076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741642, 28.651672, 28.295118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.455715, 28.371952, 28.293642>,  <36.284161, 28.204121, 28.292757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.455715, 28.371952, 28.293642>,  <36.741642, 28.651672, 28.295118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455715, 28.371952, 28.293642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277975, 0.279294, 0.919089,
		-0.641690, 0.658006, -0.394033,
		-0.714817, -0.699301, -0.003689,
		36.241268, 28.162161, 28.292536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097054, 29.005886, 28.438353>,  <36.741642, 28.651672, 28.295118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097054, 29.005886, 28.438353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.081882, 28.620678, 28.545053>,  <36.072781, 28.389553, 28.609074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.081882, 28.620678, 28.545053>,  <36.097054, 29.005886, 28.438353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081882, 28.620678, 28.545053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291010, 0.266019, 0.918993,
		-0.955968, -0.042776, -0.290337,
		-0.037924, -0.963018, 0.266754,
		36.070507, 28.331772, 28.625080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714043, 29.044842, 29.002468>,  <36.097054, 29.005886, 28.438353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714043, 29.044842, 29.002468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.884892, 28.687101, 29.055685>,  <35.987400, 28.472458, 29.087616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.884892, 28.687101, 29.055685>,  <35.714043, 29.044842, 29.002468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884892, 28.687101, 29.055685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206356, 0.046840, 0.977355,
		-0.880331, -0.444906, -0.164549,
		0.427123, -0.894352, 0.133044,
		36.013027, 28.418797, 29.095598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383183, 28.876511, 29.489515>,  <35.714043, 29.044842, 29.002468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383183, 28.876511, 29.489515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.702671, 28.639914, 29.533651>,  <35.894363, 28.497955, 29.560133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.702671, 28.639914, 29.533651>,  <35.383183, 28.876511, 29.489515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702671, 28.639914, 29.533651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170030, -0.045975, 0.984366,
		-0.577172, -0.804999, -0.137293,
		0.798726, -0.591492, 0.110339,
		35.942287, 28.462465, 29.566753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155128, 28.452433, 29.926706>,  <35.383183, 28.876511, 29.489515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155128, 28.452433, 29.926706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.548058, 28.384922, 29.959087>,  <35.783817, 28.344416, 29.978516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.548058, 28.384922, 29.959087>,  <35.155128, 28.452433, 29.926706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548058, 28.384922, 29.959087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124675, -0.267334, 0.955504,
		-0.139625, -0.948708, -0.283651,
		0.982324, -0.168777, 0.080954,
		35.842754, 28.334290, 29.983374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121090, 27.835890, 30.257095>,  <35.155128, 28.452433, 29.926706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121090, 27.835890, 30.257095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.463306, 28.025234, 30.340981>,  <35.668636, 28.138840, 30.391312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.463306, 28.025234, 30.340981>,  <35.121090, 27.835890, 30.257095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463306, 28.025234, 30.340981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122053, -0.209236, 0.970218,
		0.503141, -0.855658, -0.121235,
		0.855542, 0.473360, 0.209711,
		35.719971, 28.167242, 30.403894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561550, 27.385374, 30.602165>,  <35.121090, 27.835890, 30.257095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561550, 27.385374, 30.602165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.690762, 27.750965, 30.700392>,  <35.768288, 27.970320, 30.759327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.690762, 27.750965, 30.700392>,  <35.561550, 27.385374, 30.602165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690762, 27.750965, 30.700392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078021, -0.232873, 0.969372,
		0.943168, -0.332293, -0.003915,
		0.323028, 0.913976, 0.245564,
		35.787670, 28.025158, 30.774061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819286, 27.301069, 31.243610>,  <35.561550, 27.385374, 30.602165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819286, 27.301069, 31.243610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.754681, 27.695232, 31.222134>,  <35.715916, 27.931730, 31.209248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.754681, 27.695232, 31.222134>,  <35.819286, 27.301069, 31.243610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754681, 27.695232, 31.222134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374512, -0.010867, 0.927158,
		0.913047, 0.169857, 0.370802,
		-0.161514, 0.985409, -0.053692,
		35.706226, 27.990854, 31.206026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.616905, 28.680557, 35.964409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.322441, 28.925009, 35.848072>,  <38.145763, 29.071680, 35.778271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.322441, 28.925009, 35.848072>,  <38.616905, 28.680557, 35.964409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322441, 28.925009, 35.848072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204431, 0.208873, 0.956337,
		0.645193, 0.763475, -0.028830,
		-0.736161, 0.611128, -0.290841,
		38.101593, 29.108347, 35.760818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545448, 29.178774, 36.558998>,  <38.616905, 28.680557, 35.964409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545448, 29.178774, 36.558998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.202530, 29.245794, 36.364281>,  <37.996780, 29.286007, 36.247448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.202530, 29.245794, 36.364281>,  <38.545448, 29.178774, 36.558998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202530, 29.245794, 36.364281> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397399, 0.385753, 0.832628,
		0.327290, 0.907261, -0.264120,
		-0.857295, 0.167549, -0.486797,
		37.945343, 29.296059, 36.218243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264862, 29.870028, 36.575489>,  <38.545448, 29.178774, 36.558998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264862, 29.870028, 36.575489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.918514, 29.686737, 36.495197>,  <37.710705, 29.576763, 36.447021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.918514, 29.686737, 36.495197>,  <38.264862, 29.870028, 36.575489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918514, 29.686737, 36.495197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443317, 0.516916, 0.732303,
		-0.231801, 0.723068, -0.650723,
		-0.865874, -0.458225, -0.200727,
		37.658752, 29.549269, 36.434978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793087, 30.328089, 36.671871>,  <38.264862, 29.870028, 36.575489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793087, 30.328089, 36.671871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.602005, 29.978733, 36.709797>,  <37.487354, 29.769119, 36.732552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.602005, 29.978733, 36.709797>,  <37.793087, 30.328089, 36.671871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602005, 29.978733, 36.709797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538883, 0.376549, 0.753536,
		-0.693833, 0.308871, -0.650534,
		-0.477704, -0.873389, 0.094817,
		37.458694, 29.716717, 36.738243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127213, 30.555691, 36.618618>,  <37.793087, 30.328089, 36.671871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127213, 30.555691, 36.618618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.118549, 30.199932, 36.801270>,  <37.113350, 29.986477, 36.910858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.118549, 30.199932, 36.801270>,  <37.127213, 30.555691, 36.618618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118549, 30.199932, 36.801270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564249, 0.387912, 0.728798,
		-0.825321, -0.241866, -0.510242,
		-0.021658, -0.889396, 0.456625,
		37.112053, 29.933113, 36.938255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516636, 30.533497, 37.012531>,  <37.127213, 30.555691, 36.618618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516636, 30.533497, 37.012531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.735363, 30.238821, 37.171669>,  <36.866600, 30.062016, 37.267151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.735363, 30.238821, 37.171669>,  <36.516636, 30.533497, 37.012531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735363, 30.238821, 37.171669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369738, 0.213859, 0.904189,
		-0.751190, -0.641523, -0.155441,
		0.546815, -0.736691, 0.397845,
		36.899406, 30.017815, 37.291023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071194, 30.260416, 37.438530>,  <36.516636, 30.533497, 37.012531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071194, 30.260416, 37.438530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.422394, 30.135244, 37.583412>,  <36.633114, 30.060143, 37.670341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.422394, 30.135244, 37.583412>,  <36.071194, 30.260416, 37.438530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422394, 30.135244, 37.583412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232290, 0.383075, 0.894033,
		-0.418519, -0.869097, 0.263650,
		0.878000, -0.312927, 0.362207,
		36.685795, 30.041367, 37.692074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942192, 29.993193, 38.113804>,  <36.071194, 30.260416, 37.438530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942192, 29.993193, 38.113804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.332146, 30.082127, 38.108482>,  <36.566116, 30.135487, 38.105289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.332146, 30.082127, 38.108482>,  <35.942192, 29.993193, 38.113804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332146, 30.082127, 38.108482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072782, 0.374443, 0.924389,
		0.210503, -0.900200, 0.381219,
		0.974880, 0.222333, -0.013303,
		36.624611, 30.148827, 38.104492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219582, 29.587851, 38.648109>,  <35.942192, 29.993193, 38.113804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219582, 29.587851, 38.648109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.451817, 29.900965, 38.558517>,  <36.591156, 30.088833, 38.504761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.451817, 29.900965, 38.558517>,  <36.219582, 29.587851, 38.648109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451817, 29.900965, 38.558517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048045, 0.241673, 0.969168,
		0.812780, -0.573446, 0.102703,
		0.580586, 0.782786, -0.223979,
		36.625992, 30.135801, 38.491325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671486, 29.637272, 39.199635>,  <36.219582, 29.587851, 38.648109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671486, 29.637272, 39.199635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.733601, 29.999466, 39.041653>,  <36.770870, 30.216782, 38.946865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.733601, 29.999466, 39.041653>,  <36.671486, 29.637272, 39.199635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733601, 29.999466, 39.041653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053533, 0.391499, 0.918620,
		0.986418, -0.163793, 0.012321,
		0.155288, 0.905484, -0.394950,
		36.780186, 30.271111, 38.923168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205952, 29.944715, 39.548035>,  <36.671486, 29.637272, 39.199635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205952, 29.944715, 39.548035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.020218, 30.269674, 39.406956>,  <36.908775, 30.464649, 39.322308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.020218, 30.269674, 39.406956>,  <37.205952, 29.944715, 39.548035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020218, 30.269674, 39.406956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144199, 0.323575, 0.935150,
		0.873840, 0.485085, -0.033102,
		-0.464339, 0.812398, -0.352702,
		36.880917, 30.513393, 39.301144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527622, 30.520376, 39.822964>,  <37.205952, 29.944715, 39.548035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527622, 30.520376, 39.822964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.183098, 30.672869, 39.688618>,  <36.976383, 30.764364, 39.608009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.183098, 30.672869, 39.688618>,  <37.527622, 30.520376, 39.822964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183098, 30.672869, 39.688618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184368, 0.381472, 0.905808,
		0.473445, 0.842105, -0.258279,
		-0.861312, 0.381232, -0.335863,
		36.924706, 30.787239, 39.587860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591492, 31.290331, 39.947880>,  <37.527622, 30.520376, 39.822964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591492, 31.290331, 39.947880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.219082, 31.144485, 39.954281>,  <36.995636, 31.056978, 39.958122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.219082, 31.144485, 39.954281>,  <37.591492, 31.290331, 39.947880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219082, 31.144485, 39.954281> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112132, 0.327506, 0.938172,
		-0.347313, 0.871663, -0.345800,
		-0.931021, -0.364615, 0.016005,
		36.939777, 31.035101, 39.959084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956486, 31.606987, 39.293686>,  <37.591492, 31.290331, 39.947880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956486, 31.606987, 39.293686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.790699, 31.946232, 39.425701>,  <37.691227, 32.149780, 39.504910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.790699, 31.946232, 39.425701>,  <37.956486, 31.606987, 39.293686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790699, 31.946232, 39.425701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457465, 0.119348, -0.881182,
		-0.786730, -0.516200, 0.338516,
		-0.414465, 0.848112, 0.330038,
		37.666359, 32.200665, 39.524712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245354, 31.606789, 39.106895>,  <37.956486, 31.606987, 39.293686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245354, 31.606789, 39.106895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.409409, 31.970819, 39.130745>,  <37.507839, 32.189236, 39.145054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.409409, 31.970819, 39.130745>,  <37.245354, 31.606789, 39.106895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409409, 31.970819, 39.130745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294204, 0.193899, -0.935867,
		-0.863270, 0.366288, 0.347273,
		0.410133, 0.910075, 0.059624,
		37.532448, 32.243843, 39.148632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657082, 32.079845, 39.064590>,  <37.245354, 31.606789, 39.106895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657082, 32.079845, 39.064590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.991398, 32.285847, 38.988449>,  <37.191986, 32.409447, 38.942764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.991398, 32.285847, 38.988449>,  <36.657082, 32.079845, 39.064590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991398, 32.285847, 38.988449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452760, 0.450352, -0.769540,
		-0.310588, 0.729356, 0.609570,
		0.835789, 0.514999, -0.190349,
		37.242134, 32.440346, 38.931343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557365, 32.770725, 38.942932>,  <36.657082, 32.079845, 39.064590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557365, 32.770725, 38.942932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.898167, 32.692509, 38.748672>,  <37.102646, 32.645580, 38.632114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.898167, 32.692509, 38.748672>,  <36.557365, 32.770725, 38.942932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898167, 32.692509, 38.748672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380881, 0.404934, -0.831239,
		0.359198, 0.893192, 0.270527,
		0.852001, -0.195541, -0.485652,
		37.153767, 32.633846, 38.602978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409714, 33.077785, 38.425232>,  <36.557365, 32.770725, 38.942932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409714, 33.077785, 38.425232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.768234, 32.942513, 38.310497>,  <36.983345, 32.861347, 38.241657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.768234, 32.942513, 38.310497>,  <36.409714, 33.077785, 38.425232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768234, 32.942513, 38.310497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192603, 0.285759, -0.938747,
		0.399437, 0.896645, 0.190990,
		0.896300, -0.338185, -0.286840,
		37.037125, 32.841057, 38.224445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802105, 33.688412, 38.149384>,  <36.409714, 33.077785, 38.425232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802105, 33.688412, 38.149384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.914253, 33.337616, 37.993290>,  <36.981544, 33.127140, 37.899635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.914253, 33.337616, 37.993290>,  <36.802105, 33.688412, 38.149384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914253, 33.337616, 37.993290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347578, 0.286191, -0.892908,
		0.894751, 0.385984, -0.224582,
		0.280374, -0.876990, -0.390229,
		36.998367, 33.074520, 37.876221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259468, 33.918262, 37.613087>,  <36.802105, 33.688412, 38.149384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259468, 33.918262, 37.613087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.160889, 33.540314, 37.526848>,  <37.101742, 33.313545, 37.475105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.160889, 33.540314, 37.526848>,  <37.259468, 33.918262, 37.613087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160889, 33.540314, 37.526848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066356, 0.238383, -0.968902,
		0.966883, -0.224474, -0.121447,
		-0.246444, -0.944873, -0.215593,
		37.086956, 33.256851, 37.462170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749672, 33.729652, 37.074806>,  <37.259468, 33.918262, 37.613087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749672, 33.729652, 37.074806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.430508, 33.488781, 37.064037>,  <37.239010, 33.344257, 37.057575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.430508, 33.488781, 37.064037>,  <37.749672, 33.729652, 37.074806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430508, 33.488781, 37.064037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085883, 0.157781, -0.983732,
		0.596628, -0.782617, -0.177612,
		-0.797909, -0.602177, -0.026923,
		37.191135, 33.308128, 37.055962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821899, 33.324432, 36.391289>,  <37.749672, 33.729652, 37.074806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821899, 33.324432, 36.391289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.448486, 33.204021, 36.469166>,  <37.224438, 33.131775, 36.515892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.448486, 33.204021, 36.469166>,  <37.821899, 33.324432, 36.391289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448486, 33.204021, 36.469166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239604, 0.119945, -0.963433,
		0.266664, -0.946043, -0.184099,
		-0.933531, -0.301024, 0.194691,
		37.168427, 33.113716, 36.527573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646622, 32.711861, 35.972118>,  <37.821899, 33.324432, 36.391289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646622, 32.711861, 35.972118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.312885, 32.921322, 36.041012>,  <37.112644, 33.046997, 36.082348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.312885, 32.921322, 36.041012>,  <37.646622, 32.711861, 35.972118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312885, 32.921322, 36.041012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144932, 0.093078, -0.985054,
		-0.531854, -0.846834, -0.001765,
		-0.834341, 0.523649, 0.172237,
		37.062584, 33.078415, 36.092682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214352, 32.374477, 35.572495>,  <37.646622, 32.711861, 35.972118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214352, 32.374477, 35.572495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.004333, 32.705170, 35.653336>,  <36.878323, 32.903584, 35.701839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.004333, 32.705170, 35.653336>,  <37.214352, 32.374477, 35.572495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004333, 32.705170, 35.653336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346139, 0.009514, -0.938135,
		-0.777509, -0.562516, 0.281169,
		-0.525041, 0.826732, 0.202106,
		36.846821, 32.953190, 35.713966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501076, 32.278183, 35.343060>,  <37.214352, 32.374477, 35.572495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501076, 32.278183, 35.343060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.538216, 32.674904, 35.378162>,  <36.560497, 32.912937, 35.399223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.538216, 32.674904, 35.378162>,  <36.501076, 32.278183, 35.343060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538216, 32.674904, 35.378162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001544, 0.087997, -0.996119,
		-0.995679, 0.092622, 0.006639,
		0.092847, 0.991805, 0.087760,
		36.566071, 32.972446, 35.404491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956539, 32.530624, 35.004597>,  <36.501076, 32.278183, 35.343060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956539, 32.530624, 35.004597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.224758, 32.827061, 35.018166>,  <36.385689, 33.004921, 35.026306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.224758, 32.827061, 35.018166>,  <35.956539, 32.530624, 35.004597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224758, 32.827061, 35.018166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010991, 0.055643, -0.998390,
		-0.741784, 0.669096, 0.045456,
		0.670549, 0.741090, 0.033921,
		36.425922, 33.049389, 35.028343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721878, 33.054085, 34.497734>,  <35.956539, 32.530624, 35.004597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721878, 33.054085, 34.497734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.105404, 33.136295, 34.576160>,  <36.335518, 33.185619, 34.623215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.105404, 33.136295, 34.576160>,  <35.721878, 33.054085, 34.497734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105404, 33.136295, 34.576160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190751, 0.045545, -0.980581,
		-0.210463, 0.977592, 0.004465,
		0.958811, 0.205524, 0.196062,
		36.393047, 33.197952, 34.634979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949093, 33.635639, 34.018608>,  <35.721878, 33.054085, 34.497734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949093, 33.635639, 34.018608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.271633, 33.421669, 34.119526>,  <36.465157, 33.293285, 34.180077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.271633, 33.421669, 34.119526>,  <35.949093, 33.635639, 34.018608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271633, 33.421669, 34.119526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226855, -0.114212, -0.967208,
		0.546201, 0.837143, 0.029256,
		0.806351, -0.534927, 0.252293,
		36.513538, 33.261192, 34.195213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154118, 34.419659, 34.183723>,  <35.949093, 33.635639, 34.018608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154118, 34.419659, 34.183723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.038162, 34.771759, 34.033455>,  <35.968590, 34.983017, 33.943295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.038162, 34.771759, 34.033455>,  <36.154118, 34.419659, 34.183723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038162, 34.771759, 34.033455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272122, 0.300512, 0.914135,
		0.917558, 0.367226, 0.152420,
		-0.289890, 0.880248, -0.375668,
		35.951195, 35.035835, 33.920753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475166, 34.881039, 34.501419>,  <36.154118, 34.419659, 34.183723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475166, 34.881039, 34.501419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.125702, 35.022438, 34.367699>,  <35.916023, 35.107277, 34.287464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.125702, 35.022438, 34.367699>,  <36.475166, 34.881039, 34.501419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125702, 35.022438, 34.367699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298444, 0.153290, 0.942037,
		0.384256, 0.922789, -0.028422,
		-0.873658, 0.353501, -0.334303,
		35.863605, 35.128487, 34.267406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358154, 35.368759, 35.033146>,  <36.475166, 34.881039, 34.501419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358154, 35.368759, 35.033146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.015568, 35.318810, 34.832798>,  <35.810017, 35.288841, 34.712589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.015568, 35.318810, 34.832798>,  <36.358154, 35.368759, 35.033146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015568, 35.318810, 34.832798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514269, 0.122596, 0.848821,
		-0.044590, 0.984569, -0.169218,
		-0.856469, -0.124872, -0.500867,
		35.758629, 35.281349, 34.682537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965782, 35.787022, 35.354134>,  <36.358154, 35.368759, 35.033146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965782, 35.787022, 35.354134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.688610, 35.578918, 35.154465>,  <35.522308, 35.454056, 35.034664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.688610, 35.578918, 35.154465>,  <35.965782, 35.787022, 35.354134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688610, 35.578918, 35.154465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665318, 0.194589, 0.720755,
		-0.277846, 0.831543, -0.480975,
		-0.692931, -0.520260, -0.499175,
		35.480732, 35.422840, 35.004711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265831, 36.177387, 35.371231>,  <35.965782, 35.787022, 35.354134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265831, 36.177387, 35.371231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.191257, 35.789726, 35.306759>,  <35.146515, 35.557129, 35.268074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.191257, 35.789726, 35.306759>,  <35.265831, 36.177387, 35.371231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191257, 35.789726, 35.306759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785671, 0.048561, 0.616736,
		-0.589886, 0.241616, -0.770491,
		-0.186429, -0.969156, -0.161185,
		35.135330, 35.498978, 35.258404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484692, 36.107933, 35.401119>,  <35.265831, 36.177387, 35.371231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484692, 36.107933, 35.401119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.593182, 35.722988, 35.407883>,  <34.658276, 35.492020, 35.411942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.593182, 35.722988, 35.407883>,  <34.484692, 36.107933, 35.401119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593182, 35.722988, 35.407883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813291, -0.219748, 0.538765,
		-0.514774, -0.159880, -0.842286,
		0.271229, -0.962366, 0.016909,
		34.674549, 35.434277, 35.412956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931049, 35.730259, 35.087006>,  <34.484692, 36.107933, 35.401119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931049, 35.730259, 35.087006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.137791, 35.522373, 35.359112>,  <34.261837, 35.397644, 35.522377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.137791, 35.522373, 35.359112>,  <33.931049, 35.730259, 35.087006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137791, 35.522373, 35.359112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846290, -0.190399, 0.497535,
		-0.129052, -0.832856, -0.538235,
		0.516854, -0.519711, 0.680266,
		34.292847, 35.366459, 35.563190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456829, 35.219814, 35.354126>,  <33.931049, 35.730259, 35.087006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456829, 35.219814, 35.354126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.746925, 35.222305, 35.629513>,  <33.920982, 35.223801, 35.794746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.746925, 35.222305, 35.629513>,  <33.456829, 35.219814, 35.354126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746925, 35.222305, 35.629513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664248, -0.256735, 0.702041,
		0.181125, -0.966462, -0.182059,
		0.725237, 0.006225, 0.688471,
		33.964497, 35.224174, 35.836056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294632, 34.700111, 35.787155>,  <33.456829, 35.219814, 35.354126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294632, 34.700111, 35.787155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.550381, 34.901665, 36.019470>,  <33.703831, 35.022594, 36.158859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.550381, 34.901665, 36.019470>,  <33.294632, 34.700111, 35.787155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550381, 34.901665, 36.019470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423220, -0.399999, 0.812948,
		0.641941, -0.765575, -0.042496,
		0.639371, 0.503880, 0.580783,
		33.742191, 35.052830, 36.193707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492989, 34.220463, 36.231743>,  <33.294632, 34.700111, 35.787155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492989, 34.220463, 36.231743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.601776, 34.554623, 36.422802>,  <33.667049, 34.755119, 36.537437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.601776, 34.554623, 36.422802>,  <33.492989, 34.220463, 36.231743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601776, 34.554623, 36.422802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365542, -0.369464, 0.854327,
		0.890176, -0.406948, 0.204891,
		0.271967, 0.835398, 0.477645,
		33.683365, 34.805241, 36.566097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814034, 34.093426, 36.921906>,  <33.492989, 34.220463, 36.231743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814034, 34.093426, 36.921906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.686920, 34.472149, 36.942173>,  <33.610653, 34.699383, 36.954334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.686920, 34.472149, 36.942173>,  <33.814034, 34.093426, 36.921906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686920, 34.472149, 36.942173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256313, -0.137234, 0.956802,
		0.912861, 0.291072, 0.286290,
		-0.317787, 0.946807, 0.050670,
		33.591583, 34.756191, 36.957375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131714, 34.523197, 37.558849>,  <33.814034, 34.093426, 36.921906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131714, 34.523197, 37.558849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.779659, 34.693192, 37.474236>,  <33.568424, 34.795189, 37.423466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.779659, 34.693192, 37.474236>,  <34.131714, 34.523197, 37.558849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779659, 34.693192, 37.474236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298421, -0.148765, 0.942770,
		0.369191, 0.892894, 0.257757,
		-0.880138, 0.424982, -0.211535,
		33.515617, 34.820686, 37.410774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.227097, 34.935631, 30.924402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902565, 34.966881, 30.692665>,  <37.707844, 34.985630, 30.553623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902565, 34.966881, 30.692665>,  <38.227097, 34.935631, 30.924402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902565, 34.966881, 30.692665> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582377, -0.021921, 0.812623,
		0.050783, 0.996703, 0.063281,
		-0.811331, 0.078121, -0.579344,
		37.659164, 34.990318, 30.518862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928570, 35.508541, 31.150274>,  <38.227097, 34.935631, 30.924402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928570, 35.508541, 31.150274> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656960, 35.272404, 30.975727>,  <37.493992, 35.130722, 30.870998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656960, 35.272404, 30.975727>,  <37.928570, 35.508541, 31.150274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656960, 35.272404, 30.975727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555512, 0.024602, 0.831144,
		-0.479926, 0.806776, -0.344649,
		-0.679027, -0.590345, -0.436367,
		37.453251, 35.095299, 30.844816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362839, 35.835262, 31.402473>,  <37.928570, 35.508541, 31.150274>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362839, 35.835262, 31.402473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208611, 35.500328, 31.247450>,  <37.116074, 35.299366, 31.154436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208611, 35.500328, 31.247450>,  <37.362839, 35.835262, 31.402473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208611, 35.500328, 31.247450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706588, -0.002159, 0.707622,
		-0.593355, 0.546681, -0.590820,
		-0.385568, -0.837338, -0.387560,
		37.092941, 35.249126, 31.131182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703167, 36.076706, 31.336695>,  <37.362839, 35.835262, 31.402473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703167, 36.076706, 31.336695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720310, 35.677719, 31.359430>,  <36.730595, 35.438328, 31.373072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720310, 35.677719, 31.359430>,  <36.703167, 36.076706, 31.336695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720310, 35.677719, 31.359430> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643483, 0.015961, 0.765294,
		-0.764260, -0.069370, -0.641167,
		0.042855, -0.997463, 0.056837,
		36.733166, 35.378479, 31.376482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990921, 35.898914, 31.556684>,  <36.703167, 36.076706, 31.336695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990921, 35.898914, 31.556684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233051, 35.598446, 31.662003>,  <36.378330, 35.418167, 31.725193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233051, 35.598446, 31.662003>,  <35.990921, 35.898914, 31.556684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233051, 35.598446, 31.662003> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550319, -0.155964, 0.820259,
		-0.575089, -0.641421, -0.507791,
		0.605328, -0.751169, 0.263293,
		36.414650, 35.373096, 31.740990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525707, 35.486263, 31.860174>,  <35.990921, 35.898914, 31.556684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525707, 35.486263, 31.860174> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891216, 35.409863, 32.003582>,  <36.110523, 35.364021, 32.089626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891216, 35.409863, 32.003582>,  <35.525707, 35.486263, 31.860174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891216, 35.409863, 32.003582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364571, 0.003708, 0.931168,
		-0.179183, -0.981583, -0.066245,
		0.913773, -0.191000, 0.358521,
		36.165348, 35.352562, 32.111137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428463, 34.967064, 32.416115>,  <35.525707, 35.486263, 31.860174>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428463, 34.967064, 32.416115> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801941, 35.050076, 32.532833>,  <36.026028, 35.099884, 32.602863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801941, 35.050076, 32.532833>,  <35.428463, 34.967064, 32.416115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801941, 35.050076, 32.532833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265892, -0.143964, 0.953193,
		0.239827, -0.967577, -0.079237,
		0.933694, 0.207533, 0.291797,
		36.082050, 35.112335, 32.620373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572407, 34.498039, 32.864670>,  <35.428463, 34.967064, 32.416115>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572407, 34.498039, 32.864670> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826645, 34.790401, 32.964100>,  <35.979187, 34.965820, 33.023758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826645, 34.790401, 32.964100>,  <35.572407, 34.498039, 32.864670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826645, 34.790401, 32.964100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271367, -0.089911, 0.958267,
		0.722754, -0.676528, 0.141197,
		0.635599, 0.730908, 0.248571,
		36.017326, 35.009674, 33.038670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865597, 34.281803, 33.509953>,  <35.572407, 34.498039, 32.864670>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865597, 34.281803, 33.509953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946449, 34.672867, 33.486904>,  <35.994961, 34.907505, 33.473076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946449, 34.672867, 33.486904>,  <35.865597, 34.281803, 33.509953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946449, 34.672867, 33.486904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326832, 0.122799, 0.937071,
		0.923213, -0.170583, 0.344353,
		0.202134, 0.977661, -0.057618,
		36.007092, 34.966164, 33.469620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540230, 34.013786, 33.740990>,  <35.865597, 34.281803, 33.509953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540230, 34.013786, 33.740990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685715, 33.651440, 33.827812>,  <36.773006, 33.434032, 33.879906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685715, 33.651440, 33.827812>,  <36.540230, 34.013786, 33.740990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685715, 33.651440, 33.827812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479521, -0.017692, -0.877352,
		0.798607, 0.423188, 0.427948,
		0.363714, -0.905869, 0.217056,
		36.794830, 33.379681, 33.892929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207321, 34.090176, 33.643471>,  <36.540230, 34.013786, 33.740990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207321, 34.090176, 33.643471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167953, 33.692867, 33.619061>,  <37.144333, 33.454483, 33.604412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167953, 33.692867, 33.619061>,  <37.207321, 34.090176, 33.643471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167953, 33.692867, 33.619061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489716, 0.005046, -0.871868,
		0.866309, -0.115697, 0.485924,
		-0.098421, -0.993272, -0.061030,
		37.138428, 33.394886, 33.600750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890129, 33.711971, 33.481766>,  <37.207321, 34.090176, 33.643471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890129, 33.711971, 33.481766> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584229, 33.478428, 33.372765>,  <37.400688, 33.338303, 33.307365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584229, 33.478428, 33.372765>,  <37.890129, 33.711971, 33.481766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584229, 33.478428, 33.372765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536399, -0.342605, -0.771296,
		0.356971, -0.736021, 0.575191,
		-0.764753, -0.583862, -0.272501,
		37.354801, 33.303268, 33.291016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177208, 33.027954, 33.436970>,  <37.890129, 33.711971, 33.481766>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177208, 33.027954, 33.436970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841393, 33.024784, 33.219673>,  <37.639904, 33.022881, 33.089294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841393, 33.024784, 33.219673>,  <38.177208, 33.027954, 33.436970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841393, 33.024784, 33.219673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509288, -0.359699, -0.781819,
		-0.189205, -0.933034, 0.306020,
		-0.839540, -0.007928, -0.543241,
		37.589531, 33.022404, 33.056702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118900, 32.387459, 33.111454>,  <38.177208, 33.027954, 33.436970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118900, 32.387459, 33.111454> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847790, 32.597729, 32.905823>,  <37.685123, 32.723892, 32.782444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847790, 32.597729, 32.905823>,  <38.118900, 32.387459, 33.111454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847790, 32.597729, 32.905823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235152, -0.507479, -0.828957,
		-0.696650, -0.682736, 0.220343,
		-0.677777, 0.525678, -0.514082,
		37.644455, 32.755432, 32.751598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784065, 31.875584, 32.749611>,  <38.118900, 32.387459, 33.111454>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784065, 31.875584, 32.749611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720337, 32.215393, 32.548443>,  <37.682098, 32.419277, 32.427742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720337, 32.215393, 32.548443>,  <37.784065, 31.875584, 32.749611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720337, 32.215393, 32.548443> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214940, -0.467357, -0.857542,
		-0.963544, -0.244722, -0.108137,
		-0.159321, 0.849523, -0.502920,
		37.672539, 32.470249, 32.397568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239967, 31.800827, 32.151917>,  <37.784065, 31.875584, 32.749611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239967, 31.800827, 32.151917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487175, 32.106888, 32.079693>,  <37.635498, 32.290524, 32.036358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487175, 32.106888, 32.079693>,  <37.239967, 31.800827, 32.151917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487175, 32.106888, 32.079693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180037, -0.361311, -0.914899,
		-0.765272, 0.532916, -0.361052,
		0.618017, 0.765150, -0.180557,
		37.672581, 32.336433, 32.025524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048611, 32.239166, 31.577145>,  <37.239967, 31.800827, 32.151917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048611, 32.239166, 31.577145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444946, 32.283554, 31.607943>,  <37.682747, 32.310188, 31.626421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444946, 32.283554, 31.607943>,  <37.048611, 32.239166, 31.577145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444946, 32.283554, 31.607943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103766, -0.260497, -0.959882,
		-0.086462, 0.959076, -0.269625,
		0.990836, 0.110971, 0.076996,
		37.742199, 32.316845, 31.631041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302841, 32.425766, 30.866602>,  <37.048611, 32.239166, 31.577145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302841, 32.425766, 30.866602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654251, 32.368073, 31.048763>,  <37.865097, 32.333458, 31.158060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654251, 32.368073, 31.048763>,  <37.302841, 32.425766, 30.866602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654251, 32.368073, 31.048763> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440492, -0.124261, -0.889115,
		0.184827, 0.981711, -0.045633,
		0.878525, -0.144232, 0.455403,
		37.917809, 32.324802, 31.185385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743977, 32.620312, 30.303167>,  <37.302841, 32.425766, 30.866602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743977, 32.620312, 30.303167> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983612, 32.427273, 30.558727>,  <38.127392, 32.311447, 30.712063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983612, 32.427273, 30.558727>,  <37.743977, 32.620312, 30.303167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983612, 32.427273, 30.558727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599216, -0.259015, -0.757530,
		0.531068, 0.836665, 0.134009,
		0.599088, -0.482601, 0.638898,
		38.163338, 32.282494, 30.750397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448380, 32.837822, 30.119930>,  <37.743977, 32.620312, 30.303167>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448380, 32.837822, 30.119930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472195, 32.494217, 30.323322>,  <38.486485, 32.288055, 30.445356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472195, 32.494217, 30.323322>,  <38.448380, 32.837822, 30.119930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472195, 32.494217, 30.323322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603070, -0.374961, -0.704067,
		0.795463, 0.348569, 0.495720,
		0.059541, -0.859013, 0.508479,
		38.490055, 32.236511, 30.475866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188587, 32.623005, 30.218929>,  <38.448380, 32.837822, 30.119930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188587, 32.623005, 30.218929> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961208, 32.295456, 30.250717>,  <38.824780, 32.098927, 30.269791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961208, 32.295456, 30.250717>,  <39.188587, 32.623005, 30.218929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961208, 32.295456, 30.250717> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587818, -0.471830, -0.657150,
		0.575618, -0.326842, 0.749559,
		-0.568448, -0.818872, 0.079470,
		38.790672, 32.049793, 30.274559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697136, 32.150581, 30.320024>,  <39.188587, 32.623005, 30.218929>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697136, 32.150581, 30.320024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363876, 31.951797, 30.222952>,  <39.163921, 31.832527, 30.164709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363876, 31.951797, 30.222952>,  <39.697136, 32.150581, 30.320024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363876, 31.951797, 30.222952> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516073, -0.540838, -0.664201,
		0.198833, -0.678618, 0.707067,
		-0.833147, -0.496963, -0.242680,
		39.113934, 31.802708, 30.150148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943790, 31.434757, 30.350979>,  <39.697136, 32.150581, 30.320024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943790, 31.434757, 30.350979> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615993, 31.417362, 30.122406>,  <39.419315, 31.406925, 29.985262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615993, 31.417362, 30.122406>,  <39.943790, 31.434757, 30.350979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615993, 31.417362, 30.122406> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508426, -0.515276, -0.689923,
		-0.264441, -0.855920, 0.444378,
		-0.819496, -0.043489, -0.571432,
		39.370144, 31.404316, 29.950975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.931110, 30.339626, 28.868612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.314255, 30.444813, 28.914820>,  <33.544144, 30.507925, 28.942545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.314255, 30.444813, 28.914820>,  <32.931110, 30.339626, 28.868612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314255, 30.444813, 28.914820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206809, 0.352362, 0.912727,
		0.199308, -0.898160, 0.391899,
		0.957866, 0.262962, 0.115519,
		33.601616, 30.523703, 28.949474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031296, 30.325676, 29.545015>,  <32.931110, 30.339626, 28.868612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031296, 30.325676, 29.545015> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.352551, 30.546213, 29.454687>,  <33.545303, 30.678535, 29.400490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.352551, 30.546213, 29.454687>,  <33.031296, 30.325676, 29.545015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352551, 30.546213, 29.454687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131017, 0.206310, 0.969676,
		0.581214, -0.808366, 0.093459,
		0.803134, 0.551344, -0.225819,
		33.593491, 30.711617, 29.386942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558674, 30.028873, 30.003681>,  <33.031296, 30.325676, 29.545015>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558674, 30.028873, 30.003681> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.619785, 30.407318, 29.889467>,  <33.656452, 30.634384, 29.820938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.619785, 30.407318, 29.889467>,  <33.558674, 30.028873, 30.003681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619785, 30.407318, 29.889467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096824, 0.273207, 0.957070,
		0.983506, -0.173866, -0.049867,
		0.152778, 0.946112, -0.285535,
		33.665619, 30.691153, 29.803806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093620, 30.229038, 30.368250>,  <33.558674, 30.028873, 30.003681>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093620, 30.229038, 30.368250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.915234, 30.578495, 30.290411>,  <33.808201, 30.788168, 30.243708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.915234, 30.578495, 30.290411>,  <34.093620, 30.229038, 30.368250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915234, 30.578495, 30.290411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358371, 0.373518, 0.855602,
		0.820174, 0.311829, -0.479663,
		-0.445964, 0.873640, -0.194599,
		33.781445, 30.840588, 30.232031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599026, 30.726076, 30.514782>,  <34.093620, 30.229038, 30.368250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599026, 30.726076, 30.514782> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.244938, 30.910751, 30.537504>,  <34.032486, 31.021557, 30.551138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.244938, 30.910751, 30.537504>,  <34.599026, 30.726076, 30.514782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244938, 30.910751, 30.537504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335446, 0.548978, 0.765571,
		0.322270, 0.696754, -0.640839,
		-0.885222, 0.461688, 0.056804,
		33.979370, 31.049257, 30.554546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776764, 31.456100, 30.645168>,  <34.599026, 30.726076, 30.514782>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776764, 31.456100, 30.645168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.395096, 31.388910, 30.744242>,  <34.166096, 31.348597, 30.803686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.395096, 31.388910, 30.744242>,  <34.776764, 31.456100, 30.645168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395096, 31.388910, 30.744242> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175166, 0.357571, 0.917311,
		-0.242648, 0.918656, -0.311759,
		-0.954169, -0.167974, 0.247681,
		34.108845, 31.338518, 30.818546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580330, 32.015129, 30.994364>,  <34.776764, 31.456100, 30.645168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580330, 32.015129, 30.994364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.287357, 31.780352, 31.132378>,  <34.111576, 31.639486, 31.215187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.287357, 31.780352, 31.132378>,  <34.580330, 32.015129, 30.994364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287357, 31.780352, 31.132378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050506, 0.458541, 0.887237,
		-0.678970, 0.667263, -0.306203,
		-0.732427, -0.586942, 0.345036,
		34.067631, 31.604269, 31.235889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333622, 32.373314, 31.438816>,  <34.580330, 32.015129, 30.994364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333622, 32.373314, 31.438816> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.173161, 32.024868, 31.552113>,  <34.076881, 31.815800, 31.620090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.173161, 32.024868, 31.552113>,  <34.333622, 32.373314, 31.438816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173161, 32.024868, 31.552113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171132, 0.232495, 0.957423,
		-0.899882, 0.432548, 0.055810,
		-0.401156, -0.871119, 0.283241,
		34.052814, 31.763533, 31.637085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872849, 32.597744, 31.948765>,  <34.333622, 32.373314, 31.438816>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872849, 32.597744, 31.948765> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.932571, 32.207226, 32.011456>,  <33.968407, 31.972916, 32.049068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.932571, 32.207226, 32.011456>,  <33.872849, 32.597744, 31.948765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932571, 32.207226, 32.011456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001217, 0.158321, 0.987387,
		-0.988790, -0.147614, 0.022450,
		0.149306, -0.976291, 0.156726,
		33.977364, 31.914339, 32.058472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517921, 32.545612, 32.532166>,  <33.872849, 32.597744, 31.948765>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517921, 32.545612, 32.532166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.718037, 32.199451, 32.520870>,  <33.838104, 31.991755, 32.514091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.718037, 32.199451, 32.520870>,  <33.517921, 32.545612, 32.532166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718037, 32.199451, 32.520870> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042249, -0.008175, 0.999074,
		-0.864830, -0.501013, 0.032472,
		0.500283, -0.865401, -0.028238,
		33.868122, 31.939831, 32.512398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202805, 32.063366, 32.919987>,  <33.517921, 32.545612, 32.532166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202805, 32.063366, 32.919987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.582489, 31.938885, 32.901451>,  <33.810299, 31.864195, 32.890331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.582489, 31.938885, 32.901451>,  <33.202805, 32.063366, 32.919987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582489, 31.938885, 32.901451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045869, -0.008828, 0.998908,
		-0.311276, -0.950301, 0.005895,
		0.949212, -0.311206, -0.046337,
		33.867252, 31.845524, 32.887550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221973, 31.379633, 33.167824>,  <33.202805, 32.063366, 32.919987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221973, 31.379633, 33.167824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.578041, 31.551569, 33.228268>,  <33.791683, 31.654730, 33.264534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.578041, 31.551569, 33.228268>,  <33.221973, 31.379633, 33.167824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578041, 31.551569, 33.228268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133109, -0.071852, 0.988494,
		0.435750, -0.900042, -0.006745,
		0.890171, 0.429839, 0.151113,
		33.845093, 31.680521, 33.273602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351238, 31.132526, 33.768154>,  <33.221973, 31.379633, 33.167824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351238, 31.132526, 33.768154> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.666069, 31.378681, 33.751163>,  <33.854969, 31.526375, 33.740971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.666069, 31.378681, 33.751163>,  <33.351238, 31.132526, 33.768154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666069, 31.378681, 33.751163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013432, 0.085938, 0.996210,
		0.616704, -0.783527, 0.075906,
		0.787080, 0.615387, -0.042474,
		33.902195, 31.563297, 33.738422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897842, 30.954929, 34.352264>,  <33.351238, 31.132526, 33.768154>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897842, 30.954929, 34.352264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.959949, 31.337723, 34.254230>,  <33.997215, 31.567400, 34.195408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.959949, 31.337723, 34.254230>,  <33.897842, 30.954929, 34.352264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959949, 31.337723, 34.254230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017920, 0.245329, 0.969274,
		0.987709, -0.154893, 0.020944,
		0.155272, 0.956986, -0.245089,
		34.006531, 31.624819, 34.180702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604950, 30.632708, 34.342159>,  <33.897842, 30.954929, 34.352264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604950, 30.632708, 34.342159> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.638901, 30.253416, 34.464577>,  <34.659271, 30.025841, 34.538025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.638901, 30.253416, 34.464577>,  <34.604950, 30.632708, 34.342159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638901, 30.253416, 34.464577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386947, -0.251672, -0.887093,
		0.918187, 0.193718, 0.345551,
		0.084881, -0.948227, 0.306040,
		34.664364, 29.968948, 34.556389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330688, 30.279409, 34.172798>,  <34.604950, 30.632708, 34.342159>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330688, 30.279409, 34.172798> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.125019, 29.944437, 34.246914>,  <35.001617, 29.743454, 34.291382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.125019, 29.944437, 34.246914>,  <35.330688, 30.279409, 34.172798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125019, 29.944437, 34.246914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547544, -0.486780, -0.680618,
		0.660165, -0.248506, 0.708821,
		-0.514177, -0.837431, 0.185287,
		34.970764, 29.693209, 34.302502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775864, 29.710712, 34.144043>,  <35.330688, 30.279409, 34.172798>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775864, 29.710712, 34.144043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.423645, 29.527996, 34.093487>,  <35.212315, 29.418365, 34.063152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.423645, 29.527996, 34.093487>,  <35.775864, 29.710712, 34.144043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423645, 29.527996, 34.093487> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395582, -0.561452, -0.726833,
		0.261052, -0.690008, 0.675085,
		-0.880549, -0.456793, -0.126387,
		35.159481, 29.390959, 34.055573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837536, 28.987923, 34.154541>,  <35.775864, 29.710712, 34.144043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837536, 28.987923, 34.154541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.484360, 29.024942, 33.970436>,  <35.272453, 29.047153, 33.859974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.484360, 29.024942, 33.970436>,  <35.837536, 28.987923, 34.154541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484360, 29.024942, 33.970436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325724, -0.585280, -0.742530,
		-0.338104, -0.805533, 0.486624,
		-0.882944, 0.092547, -0.460267,
		35.219475, 29.052706, 33.832355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655041, 28.316757, 33.928238>,  <35.837536, 28.987923, 34.154541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655041, 28.316757, 33.928238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.437756, 28.552717, 33.689262>,  <35.307384, 28.694294, 33.545876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.437756, 28.552717, 33.689262>,  <35.655041, 28.316757, 33.928238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437756, 28.552717, 33.689262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155988, -0.628284, -0.762185,
		-0.824977, -0.507223, 0.249275,
		-0.543214, 0.589901, -0.597441,
		35.274792, 28.729687, 33.510029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296986, 27.672207, 33.452255>,  <35.655041, 28.316757, 33.928238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296986, 27.672207, 33.452255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.228161, 28.040953, 33.313366>,  <35.186867, 28.262199, 33.230034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.228161, 28.040953, 33.313366>,  <35.296986, 27.672207, 33.452255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228161, 28.040953, 33.313366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046435, -0.359675, -0.931921,
		-0.983992, -0.144223, 0.104692,
		-0.172059, 0.921864, -0.347220,
		35.176544, 28.317513, 33.209198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689888, 27.689764, 32.890892>,  <35.296986, 27.672207, 33.452255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689888, 27.689764, 32.890892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.889713, 28.027885, 32.815102>,  <35.009609, 28.230759, 32.769627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.889713, 28.027885, 32.815102>,  <34.689888, 27.689764, 32.890892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889713, 28.027885, 32.815102> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026530, -0.233553, -0.971982,
		-0.865874, 0.480535, -0.139099,
		0.499559, 0.845304, -0.189479,
		35.039581, 28.281477, 32.758259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407436, 28.042616, 32.156563>,  <34.689888, 27.689764, 32.890892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407436, 28.042616, 32.156563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.769310, 28.191221, 32.240013>,  <34.986435, 28.280384, 32.290085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.769310, 28.191221, 32.240013>,  <34.407436, 28.042616, 32.156563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769310, 28.191221, 32.240013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178355, 0.114489, -0.977283,
		-0.386962, 0.921341, 0.037315,
		0.904682, 0.371516, 0.208629,
		35.040714, 28.302675, 32.302601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556110, 28.611637, 31.635803>,  <34.407436, 28.042616, 32.156563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556110, 28.611637, 31.635803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.923088, 28.531704, 31.773420>,  <35.143276, 28.483744, 31.855991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.923088, 28.531704, 31.773420>,  <34.556110, 28.611637, 31.635803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923088, 28.531704, 31.773420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379827, 0.182459, -0.906885,
		0.118450, 0.962692, 0.243297,
		0.917443, -0.199831, 0.344044,
		35.198322, 28.471754, 31.876633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016029, 29.082653, 31.208548>,  <34.556110, 28.611637, 31.635803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016029, 29.082653, 31.208548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.250034, 28.798044, 31.364237>,  <35.390438, 28.627279, 31.457651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.250034, 28.798044, 31.364237>,  <35.016029, 29.082653, 31.208548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250034, 28.798044, 31.364237> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503129, -0.058012, -0.862262,
		0.636097, 0.700266, 0.324049,
		0.585015, -0.711521, 0.389225,
		35.425537, 28.584587, 31.481005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646362, 29.323799, 31.064056>,  <35.016029, 29.082653, 31.208548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646362, 29.323799, 31.064056> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.666164, 28.929623, 31.129116>,  <35.678047, 28.693117, 31.168152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.666164, 28.929623, 31.129116>,  <35.646362, 29.323799, 31.064056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666164, 28.929623, 31.129116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556145, -0.108068, -0.824029,
		0.829610, 0.131249, 0.542698,
		0.049505, -0.985442, 0.162648,
		35.681015, 28.633989, 31.177910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279350, 29.242310, 30.938124>,  <35.646362, 29.323799, 31.064056>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279350, 29.242310, 30.938124> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.118450, 28.877119, 30.910807>,  <36.021908, 28.658005, 30.894417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.118450, 28.877119, 30.910807>,  <36.279350, 29.242310, 30.938124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118450, 28.877119, 30.910807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366984, -0.092455, -0.925621,
		0.838758, -0.397396, 0.372239,
		-0.402253, -0.912978, -0.068291,
		35.997776, 28.603226, 30.890320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811035, 28.819576, 30.637733>,  <36.279350, 29.242310, 30.938124>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811035, 28.819576, 30.637733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.467934, 28.628216, 30.562475>,  <36.262074, 28.513399, 30.517321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.467934, 28.628216, 30.562475>,  <36.811035, 28.819576, 30.637733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467934, 28.628216, 30.562475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326149, -0.223538, -0.918508,
		0.397356, -0.849214, 0.347769,
		-0.857750, -0.478399, -0.188146,
		36.210609, 28.484695, 30.506031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067448, 28.259346, 30.236826>,  <36.811035, 28.819576, 30.637733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067448, 28.259346, 30.236826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.677113, 28.260969, 30.149450>,  <36.442909, 28.261944, 30.097025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.677113, 28.260969, 30.149450>,  <37.067448, 28.259346, 30.236826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677113, 28.260969, 30.149450> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218325, 0.055578, -0.974292,
		0.008183, -0.998446, -0.055123,
		-0.975842, 0.004062, -0.218440,
		36.384361, 28.262188, 30.083918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544025, 27.630728, 30.244123>,  <37.067448, 28.259346, 30.236826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544025, 27.630728, 30.244123> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.933949, 27.710995, 30.283077>,  <38.167904, 27.759155, 30.306450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.933949, 27.710995, 30.283077>,  <37.544025, 27.630728, 30.244123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933949, 27.710995, 30.283077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044817, -0.251484, 0.966823,
		0.218501, -0.946830, -0.236155,
		0.974807, 0.200668, 0.097384,
		38.226391, 27.771194, 30.312292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877476, 27.094719, 30.632038>,  <37.544025, 27.630728, 30.244123>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877476, 27.094719, 30.632038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.112370, 27.416588, 30.667025>,  <38.253307, 27.609709, 30.688017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.112370, 27.416588, 30.667025>,  <37.877476, 27.094719, 30.632038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112370, 27.416588, 30.667025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073531, -0.054579, 0.995798,
		0.806067, -0.591203, 0.027118,
		0.587239, 0.804674, 0.087466,
		38.288540, 27.657990, 30.693264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053894, 27.102585, 31.385607>,  <37.877476, 27.094719, 30.632038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053894, 27.102585, 31.385607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.157810, 27.475258, 31.284042>,  <38.220161, 27.698862, 31.223103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.157810, 27.475258, 31.284042>,  <38.053894, 27.102585, 31.385607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157810, 27.475258, 31.284042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068172, 0.244590, 0.967227,
		0.963255, -0.268590, 0.000028,
		0.259795, 0.931684, -0.253913,
		38.235748, 27.754763, 31.207869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609306, 27.306185, 31.866510>,  <38.053894, 27.102585, 31.385607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609306, 27.306185, 31.866510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.486595, 27.652945, 31.709349>,  <38.412968, 27.861000, 31.615051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.486595, 27.652945, 31.709349>,  <38.609306, 27.306185, 31.866510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486595, 27.652945, 31.709349> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046372, 0.425934, 0.903565,
		0.950652, 0.258971, -0.170866,
		-0.306775, 0.866899, -0.392906,
		38.394562, 27.913013, 31.591476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934021, 27.766891, 32.274189>,  <38.609306, 27.306185, 31.866510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934021, 27.766891, 32.274189> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.655861, 27.992308, 32.095821>,  <38.488964, 28.127558, 31.988800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.655861, 27.992308, 32.095821>,  <38.934021, 27.766891, 32.274189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655861, 27.992308, 32.095821> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102619, 0.692031, 0.714536,
		0.711262, 0.451125, -0.539066,
		-0.695396, 0.563541, -0.445921,
		38.447243, 28.161369, 31.962046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170353, 28.520082, 32.123398>,  <38.934021, 27.766891, 32.274189>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170353, 28.520082, 32.123398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.773342, 28.530098, 32.171185>,  <38.535137, 28.536106, 32.199856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.773342, 28.530098, 32.171185>,  <39.170353, 28.520082, 32.123398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773342, 28.530098, 32.171185> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108125, 0.634469, 0.765348,
		-0.056634, 0.772543, -0.632432,
		-0.992523, 0.025036, 0.119464,
		38.475586, 28.537609, 32.207024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085247, 29.175692, 32.460453>,  <39.170353, 28.520082, 32.123398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085247, 29.175692, 32.460453> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.730194, 28.995634, 32.499386>,  <38.517162, 28.887600, 32.522747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.730194, 28.995634, 32.499386>,  <39.085247, 29.175692, 32.460453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730194, 28.995634, 32.499386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087246, 0.371879, 0.924172,
		-0.452207, 0.811836, -0.369366,
		-0.887636, -0.450143, 0.097336,
		38.463902, 28.860592, 32.528587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654247, 29.683483, 32.813705>,  <39.085247, 29.175692, 32.460453>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654247, 29.683483, 32.813705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.480106, 29.326599, 32.861744>,  <38.375622, 29.112469, 32.890568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.480106, 29.326599, 32.861744>,  <38.654247, 29.683483, 32.813705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480106, 29.326599, 32.861744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149117, 0.203030, 0.967751,
		-0.887823, 0.403407, -0.221434,
		-0.435355, -0.892212, 0.120100,
		38.349499, 29.058935, 32.897774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991215, 29.814812, 33.091663>,  <38.654247, 29.683483, 32.813705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991215, 29.814812, 33.091663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.129044, 29.452286, 33.189537>,  <38.211739, 29.234770, 33.248260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.129044, 29.452286, 33.189537>,  <37.991215, 29.814812, 33.091663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129044, 29.452286, 33.189537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276950, 0.150902, 0.948961,
		-0.896979, -0.394746, -0.199008,
		0.344568, -0.906314, 0.244681,
		38.232414, 29.180391, 33.262939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569595, 29.673935, 33.615376>,  <37.991215, 29.814812, 33.091663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569595, 29.673935, 33.615376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.841629, 29.383358, 33.654896>,  <38.004848, 29.209011, 33.678608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.841629, 29.383358, 33.654896>,  <37.569595, 29.673935, 33.615376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841629, 29.383358, 33.654896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271212, -0.124090, 0.954487,
		-0.681119, -0.675932, -0.281412,
		0.680089, -0.726442, 0.098801,
		38.045654, 29.165426, 33.684536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234299, 29.027435, 33.854946>,  <37.569595, 29.673935, 33.615376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234299, 29.027435, 33.854946> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.614822, 28.993536, 33.973488>,  <37.843136, 28.973196, 34.044613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.614822, 28.993536, 33.973488>,  <37.234299, 29.027435, 33.854946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614822, 28.993536, 33.973488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297991, -0.007129, 0.954542,
		-0.078789, -0.996377, -0.032038,
		0.951312, -0.084754, 0.296350,
		37.900215, 28.968111, 34.062393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179100, 28.677788, 34.391270>,  <37.234299, 29.027435, 33.854946>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179100, 28.677788, 34.391270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.548561, 28.822662, 34.441357>,  <37.770237, 28.909588, 34.471409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.548561, 28.822662, 34.441357>,  <37.179100, 28.677788, 34.391270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548561, 28.822662, 34.441357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096689, -0.095931, 0.990681,
		0.370826, -0.927155, -0.053588,
		0.923656, 0.362189, 0.125219,
		37.825657, 28.931318, 34.478924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529655, 28.268419, 34.841957>,  <37.179100, 28.677788, 34.391270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529655, 28.268419, 34.841957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.728745, 28.614960, 34.858482>,  <37.848198, 28.822884, 34.868397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.728745, 28.614960, 34.858482>,  <37.529655, 28.268419, 34.841957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728745, 28.614960, 34.858482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177311, 0.055011, 0.982616,
		0.849020, -0.496393, 0.180994,
		0.497721, 0.866353, 0.041311,
		37.878059, 28.874866, 34.870876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029163, 28.210281, 35.412457>,  <37.529655, 28.268419, 34.841957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029163, 28.210281, 35.412457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.984657, 28.601068, 35.339626>,  <37.957954, 28.835541, 35.295929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.984657, 28.601068, 35.339626>,  <38.029163, 28.210281, 35.412457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984657, 28.601068, 35.339626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252435, 0.149420, 0.956007,
		0.961196, 0.152331, 0.229996,
		-0.111263, 0.976969, -0.182076,
		37.951279, 28.894159, 35.285004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.926090, 30.732655, 30.288530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.725536, 30.907909, 29.990093>,  <39.605206, 31.013062, 29.811031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.725536, 30.907909, 29.990093>,  <39.926090, 30.732655, 30.288530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.725536, 30.907909, 29.990093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399192, -0.647907, -0.648739,
		-0.767635, -0.623099, 0.149948,
		-0.501381, 0.438137, -0.746092,
		39.575123, 31.039351, 29.766266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584221, 30.179016, 29.938084>,  <39.926090, 30.732655, 30.288530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584221, 30.179016, 29.938084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.613338, 30.470642, 29.665859>,  <39.630810, 30.645618, 29.502525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.613338, 30.470642, 29.665859>,  <39.584221, 30.179016, 29.938084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613338, 30.470642, 29.665859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181880, -0.680633, -0.709689,
		-0.980622, -0.072117, -0.182151,
		0.072798, 0.729066, -0.680560,
		39.635178, 30.689362, 29.461691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256508, 29.961643, 29.324013>,  <39.584221, 30.179016, 29.938084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256508, 29.961643, 29.324013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.490643, 30.264236, 29.207315>,  <39.631123, 30.445793, 29.137297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.490643, 30.264236, 29.207315>,  <39.256508, 29.961643, 29.324013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490643, 30.264236, 29.207315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231608, -0.500837, -0.833978,
		-0.777008, 0.420585, -0.468365,
		0.585334, 0.756485, -0.291744,
		39.666245, 30.491182, 29.119793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187744, 30.010885, 28.570602>,  <39.256508, 29.961643, 29.324013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187744, 30.010885, 28.570602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.513885, 30.232466, 28.637928>,  <39.709572, 30.365414, 28.678324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.513885, 30.232466, 28.637928>,  <39.187744, 30.010885, 28.570602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513885, 30.232466, 28.637928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376550, -0.286567, -0.880959,
		-0.439775, 0.781676, -0.442245,
		0.815357, 0.553952, 0.168315,
		39.758492, 30.398651, 28.688423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322304, 30.329638, 27.907070>,  <39.187744, 30.010885, 28.570602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322304, 30.329638, 27.907070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.652573, 30.385908, 28.125601>,  <39.850735, 30.419670, 28.256720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.652573, 30.385908, 28.125601>,  <39.322304, 30.329638, 27.907070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.652573, 30.385908, 28.125601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563397, -0.155707, -0.811381,
		-0.029074, 0.977735, -0.207819,
		0.825675, 0.140675, 0.546326,
		39.900276, 30.428110, 28.289499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709156, 30.848522, 27.619743>,  <39.322304, 30.329638, 27.907070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709156, 30.848522, 27.619743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.965385, 30.615631, 27.820015>,  <40.119122, 30.475897, 27.940178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.965385, 30.615631, 27.820015>,  <39.709156, 30.848522, 27.619743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965385, 30.615631, 27.820015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492776, -0.188378, -0.849521,
		0.588933, 0.790900, 0.166239,
		0.640570, -0.582230, 0.500678,
		40.157555, 30.440962, 27.970219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346462, 31.039097, 27.314892>,  <39.709156, 30.848522, 27.619743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.346462, 31.039097, 27.314892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.395435, 30.684139, 27.492674>,  <40.424820, 30.471165, 27.599342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.395435, 30.684139, 27.492674>,  <40.346462, 31.039097, 27.314892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395435, 30.684139, 27.492674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639275, -0.272041, -0.719251,
		0.759169, 0.372188, 0.533983,
		0.122431, -0.887395, 0.444456,
		40.432163, 30.417921, 27.626011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.098953, 30.895847, 27.301037>,  <40.346462, 31.039097, 27.314892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.098953, 30.895847, 27.301037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.913189, 30.544308, 27.344757>,  <40.801731, 30.333384, 27.370989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.913189, 30.544308, 27.344757>,  <41.098953, 30.895847, 27.301037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.913189, 30.544308, 27.344757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435746, -0.334199, -0.835725,
		0.771004, -0.340493, 0.538161,
		-0.464411, -0.878849, 0.109300,
		40.773865, 30.280653, 27.377546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.643436, 30.348167, 27.130911>,  <41.098953, 30.895847, 27.301037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.643436, 30.348167, 27.130911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.275478, 30.203249, 27.070875>,  <41.054703, 30.116297, 27.034853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.275478, 30.203249, 27.070875>,  <41.643436, 30.348167, 27.130911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.275478, 30.203249, 27.070875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231022, -0.191391, -0.953938,
		0.316884, -0.912200, 0.259759,
		-0.919899, -0.362298, -0.150089,
		40.999508, 30.094559, 27.025848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.781704, 29.707317, 26.801395>,  <41.643436, 30.348167, 27.130911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.781704, 29.707317, 26.801395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.396049, 29.796871, 26.744385>,  <41.164658, 29.850603, 26.710178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.396049, 29.796871, 26.744385>,  <41.781704, 29.707317, 26.801395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.396049, 29.796871, 26.744385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061497, -0.333943, -0.940585,
		-0.258175, -0.915619, 0.308199,
		-0.964139, 0.223882, -0.142524,
		41.106808, 29.864037, 26.701628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.452789, 29.091057, 26.551737>,  <41.781704, 29.707317, 26.801395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.452789, 29.091057, 26.551737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.234371, 29.398668, 26.418810>,  <41.103321, 29.583235, 26.339054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.234371, 29.398668, 26.418810>,  <41.452789, 29.091057, 26.551737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.234371, 29.398668, 26.418810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030552, -0.378130, -0.925248,
		-0.837200, -0.515378, 0.182980,
		-0.546043, 0.769028, -0.332316,
		41.070557, 29.629377, 26.319115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.136806, 28.691536, 25.928974>,  <41.452789, 29.091057, 26.551737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.136806, 28.691536, 25.928974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.037365, 29.078222, 25.904785>,  <40.977699, 29.310234, 25.890272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.037365, 29.078222, 25.904785>,  <41.136806, 28.691536, 25.928974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.037365, 29.078222, 25.904785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128737, -0.028903, -0.991258,
		-0.960012, -0.254216, -0.117267,
		-0.248604, 0.966715, -0.060475,
		40.962784, 29.368237, 25.886642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862911, 28.761965, 25.207294>,  <41.136806, 28.691536, 25.928974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.862911, 28.761965, 25.207294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.947155, 29.119036, 25.366676>,  <40.997704, 29.333279, 25.462305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.947155, 29.119036, 25.366676>,  <40.862911, 28.761965, 25.207294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.947155, 29.119036, 25.366676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258725, 0.342162, -0.903320,
		-0.942711, 0.293341, -0.158895,
		0.210613, 0.892679, 0.398455,
		41.010338, 29.386839, 25.486214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488594, 29.302296, 24.868742>,  <40.862911, 28.761965, 25.207294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.488594, 29.302296, 24.868742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.840832, 29.430256, 25.008575>,  <41.052174, 29.507032, 25.092476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.840832, 29.430256, 25.008575>,  <40.488594, 29.302296, 24.868742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.840832, 29.430256, 25.008575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308209, 0.173700, -0.935327,
		-0.359935, 0.931392, 0.054364,
		0.880599, 0.319901, 0.349584,
		41.105011, 29.526226, 25.113451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050232, 28.855215, 25.233635>,  <40.488594, 29.302296, 24.868742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050232, 28.855215, 25.233635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.889206, 28.511265, 25.108063>,  <39.792591, 28.304893, 25.032719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.889206, 28.511265, 25.108063>,  <40.050232, 28.855215, 25.233635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889206, 28.511265, 25.108063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475313, -0.096740, 0.874482,
		-0.782317, 0.501251, -0.369767,
		-0.402563, -0.859877, -0.313932,
		39.768436, 28.253302, 25.013884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422417, 28.854441, 25.413776>,  <40.050232, 28.855215, 25.233635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422417, 28.854441, 25.413776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.479145, 28.461361, 25.366123>,  <39.513184, 28.225513, 25.337530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.479145, 28.461361, 25.366123>,  <39.422417, 28.854441, 25.413776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479145, 28.461361, 25.366123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460433, -0.172025, 0.870867,
		-0.876293, -0.068653, -0.476863,
		0.141820, -0.982698, -0.119134,
		39.521690, 28.166552, 25.330383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873108, 28.512348, 25.789467>,  <39.422417, 28.854441, 25.413776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873108, 28.512348, 25.789467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.077087, 28.178690, 25.705412>,  <39.199474, 27.978495, 25.654980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.077087, 28.178690, 25.705412>,  <38.873108, 28.512348, 25.789467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077087, 28.178690, 25.705412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286363, -0.394971, 0.872923,
		-0.811140, -0.384971, -0.440282,
		0.509949, -0.834143, -0.210135,
		39.230072, 27.928448, 25.642372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401409, 27.894541, 25.799965>,  <38.873108, 28.512348, 25.789467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401409, 27.894541, 25.799965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.779800, 27.789251, 25.875692>,  <39.006836, 27.726078, 25.921129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.779800, 27.789251, 25.875692>,  <38.401409, 27.894541, 25.799965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779800, 27.789251, 25.875692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296256, -0.464431, 0.834588,
		-0.131758, -0.845587, -0.517322,
		0.945977, -0.263224, 0.189317,
		39.063595, 27.710283, 25.932487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338371, 27.222464, 26.114416>,  <38.401409, 27.894541, 25.799965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338371, 27.222464, 26.114416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.681297, 27.389782, 26.234438>,  <38.887054, 27.490173, 26.306450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.681297, 27.389782, 26.234438>,  <38.338371, 27.222464, 26.114416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681297, 27.389782, 26.234438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251820, -0.167598, 0.953151,
		0.448989, -0.892714, -0.038349,
		0.857319, 0.418297, 0.300053,
		38.938492, 27.515270, 26.324453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623993, 26.694838, 26.597866>,  <38.338371, 27.222464, 26.114416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623993, 26.694838, 26.597866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.815945, 27.033463, 26.689993>,  <38.931118, 27.236637, 26.745270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.815945, 27.033463, 26.689993>,  <38.623993, 26.694838, 26.597866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815945, 27.033463, 26.689993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155862, -0.176080, 0.971958,
		0.863376, -0.502325, 0.047449,
		0.479884, 0.846561, 0.230317,
		38.959911, 27.287432, 26.759089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009609, 26.545158, 27.093731>,  <38.623993, 26.694838, 26.597866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009609, 26.545158, 27.093731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.025524, 26.942101, 27.140465>,  <39.035072, 27.180265, 27.168505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.025524, 26.942101, 27.140465>,  <39.009609, 26.545158, 27.093731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025524, 26.942101, 27.140465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023334, -0.115970, 0.992978,
		0.998936, -0.042234, 0.018541,
		0.039787, 0.992354, 0.116832,
		39.037460, 27.239807, 27.175514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289902, 26.623446, 27.793678>,  <39.009609, 26.545158, 27.093731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289902, 26.623446, 27.793678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.161774, 26.994331, 27.716040>,  <39.084896, 27.216862, 27.669456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.161774, 26.994331, 27.716040>,  <39.289902, 26.623446, 27.793678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161774, 26.994331, 27.716040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041474, 0.190969, 0.980719,
		0.946402, 0.322190, -0.022715,
		-0.320316, 0.927213, -0.194096,
		39.065678, 27.272495, 27.657810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694809, 27.006884, 28.255274>,  <39.289902, 26.623446, 27.793678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694809, 27.006884, 28.255274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.355053, 27.193590, 28.156754>,  <39.151199, 27.305614, 28.097641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.355053, 27.193590, 28.156754>,  <39.694809, 27.006884, 28.255274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355053, 27.193590, 28.156754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197765, 0.151181, 0.968521,
		0.489309, 0.871363, -0.036102,
		-0.849391, 0.466766, -0.246300,
		39.100235, 27.333620, 28.082863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796066, 27.695234, 28.467520>,  <39.694809, 27.006884, 28.255274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796066, 27.695234, 28.467520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.398731, 27.669540, 28.429268>,  <39.160328, 27.654123, 28.406317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.398731, 27.669540, 28.429268>,  <39.796066, 27.695234, 28.467520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398731, 27.669540, 28.429268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109314, 0.263590, 0.958421,
		-0.036357, 0.962494, -0.268857,
		-0.993342, -0.064235, -0.095631,
		39.100727, 27.650270, 28.400579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487934, 28.400291, 28.666054>,  <39.796066, 27.695234, 28.467520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487934, 28.400291, 28.666054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.228226, 28.097958, 28.699902>,  <39.072399, 27.916557, 28.720211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.228226, 28.097958, 28.699902>,  <39.487934, 28.400291, 28.666054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228226, 28.097958, 28.699902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212507, 0.287115, 0.934026,
		-0.730267, 0.588453, -0.347036,
		-0.649270, -0.755836, 0.084620,
		39.033443, 27.871206, 28.725288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854305, 28.745043, 29.060024>,  <39.487934, 28.400291, 28.666054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854305, 28.745043, 29.060024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.841320, 28.345285, 29.065039>,  <38.833527, 28.105431, 29.068048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.841320, 28.345285, 29.065039>,  <38.854305, 28.745043, 29.060024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841320, 28.345285, 29.065039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271474, 0.020891, 0.962219,
		-0.961898, 0.027837, -0.271988,
		-0.032467, -0.999394, 0.012538,
		38.831581, 28.045467, 29.068800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083542, 28.511236, 29.350534>,  <38.854305, 28.745043, 29.060024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083542, 28.511236, 29.350534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.324154, 28.201296, 29.428268>,  <38.468521, 28.015331, 29.474909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.324154, 28.201296, 29.428268>,  <38.083542, 28.511236, 29.350534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324154, 28.201296, 29.428268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344288, -0.031945, 0.938320,
		-0.720851, -0.631335, -0.285988,
		0.601530, -0.774852, 0.194334,
		38.504612, 27.968840, 29.486568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627010, 28.006588, 29.653799>,  <38.083542, 28.511236, 29.350534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627010, 28.006588, 29.653799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.002476, 27.910439, 29.752691>,  <38.227757, 27.852749, 29.812027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.002476, 27.910439, 29.752691>,  <37.627010, 28.006588, 29.653799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002476, 27.910439, 29.752691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276956, -0.098424, 0.955829,
		-0.205422, -0.965678, -0.158960,
		0.938668, -0.240373, 0.247232,
		38.284077, 27.838327, 29.826860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946220, 27.699850, 29.574364>,  <37.627010, 28.006588, 29.653799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946220, 27.699850, 29.574364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.647057, 27.965288, 29.580942>,  <36.467556, 28.124550, 29.584890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.647057, 27.965288, 29.580942>,  <36.946220, 27.699850, 29.574364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647057, 27.965288, 29.580942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080449, -0.066020, -0.994570,
		-0.658904, -0.745175, 0.102762,
		-0.747913, 0.663593, 0.016448,
		36.422684, 28.164366, 29.585876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544868, 27.264616, 29.334225>,  <36.946220, 27.699850, 29.574364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544868, 27.264616, 29.334225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.346451, 27.604620, 29.263323>,  <36.227398, 27.808622, 29.220781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.346451, 27.604620, 29.263323>,  <36.544868, 27.264616, 29.334225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346451, 27.604620, 29.263323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165736, -0.293079, -0.941614,
		-0.852331, -0.437708, 0.286258,
		-0.496048, 0.850010, -0.177257,
		36.197636, 27.859623, 29.210146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050591, 27.044506, 28.913202>,  <36.544868, 27.264616, 29.334225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050591, 27.044506, 28.913202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.016376, 27.436932, 28.843693>,  <35.995850, 27.672386, 28.801987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.016376, 27.436932, 28.843693>,  <36.050591, 27.044506, 28.913202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016376, 27.436932, 28.843693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105916, -0.182376, -0.977508,
		-0.990689, -0.065207, 0.119510,
		-0.085536, 0.981064, -0.173771,
		35.990715, 27.731251, 28.791561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586323, 27.124605, 28.402267>,  <36.050591, 27.044506, 28.913202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586323, 27.124605, 28.402267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.767254, 27.481081, 28.388493>,  <35.875813, 27.694965, 28.380228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.767254, 27.481081, 28.388493>,  <35.586323, 27.124605, 28.402267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767254, 27.481081, 28.388493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209086, 0.068425, -0.975500,
		-0.866998, 0.448443, 0.217285,
		0.452324, 0.891188, -0.034439,
		35.902950, 27.748438, 28.378160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380375, 27.306320, 27.759682>,  <35.586323, 27.124605, 28.402267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380375, 27.306320, 27.759682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.653950, 27.581963, 27.855490>,  <35.818092, 27.747347, 27.912975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.653950, 27.581963, 27.855490>,  <35.380375, 27.306320, 27.759682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653950, 27.581963, 27.855490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092045, 0.244185, -0.965350,
		-0.723714, 0.682282, 0.103578,
		0.683934, 0.689104, 0.239521,
		35.859131, 27.788694, 27.927345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241585, 27.987865, 27.439034>,  <35.380375, 27.306320, 27.759682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241585, 27.987865, 27.439034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.633892, 27.959526, 27.511787>,  <35.869274, 27.942522, 27.555439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.633892, 27.959526, 27.511787>,  <35.241585, 27.987865, 27.439034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633892, 27.959526, 27.511787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195168, 0.339790, -0.920029,
		0.003380, 0.937829, 0.347081,
		0.980764, -0.070849, 0.181885,
		35.928120, 27.938271, 27.566353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467785, 28.577999, 27.094856>,  <35.241585, 27.987865, 27.439034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467785, 28.577999, 27.094856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.776550, 28.327543, 27.138855>,  <35.961807, 28.177269, 27.165255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.776550, 28.327543, 27.138855>,  <35.467785, 28.577999, 27.094856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776550, 28.327543, 27.138855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103944, -0.046392, -0.993501,
		0.627176, 0.778328, 0.029274,
		0.771911, -0.626142, 0.109998,
		36.008125, 28.139700, 27.171854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608410, 29.276014, 27.184845>,  <35.467785, 28.577999, 27.094856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608410, 29.276014, 27.184845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.519287, 29.629452, 27.020103>,  <35.465813, 29.841515, 26.921259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.519287, 29.629452, 27.020103>,  <35.608410, 29.276014, 27.184845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519287, 29.629452, 27.020103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747886, 0.116070, 0.653601,
		0.625320, 0.453645, 0.634965,
		-0.222803, 0.883591, -0.411856,
		35.452446, 29.894529, 26.896547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555988, 29.712360, 27.718721>,  <35.608410, 29.276014, 27.184845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555988, 29.712360, 27.718721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.354462, 29.883081, 27.418320>,  <35.233543, 29.985514, 27.238079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.354462, 29.883081, 27.418320>,  <35.555988, 29.712360, 27.718721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354462, 29.883081, 27.418320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718075, 0.276316, 0.638763,
		0.480140, 0.861098, 0.167262,
		-0.503820, 0.426802, -0.751003,
		35.203316, 30.011122, 27.193018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420433, 30.370935, 27.979889>,  <35.555988, 29.712360, 27.718721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420433, 30.370935, 27.979889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.162201, 30.291782, 27.684843>,  <35.007263, 30.244291, 27.507816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.162201, 30.291782, 27.684843>,  <35.420433, 30.370935, 27.979889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162201, 30.291782, 27.684843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763558, 0.185575, 0.618499,
		0.014493, 0.962499, -0.270896,
		-0.645576, -0.197881, -0.737614,
		34.968529, 30.232418, 27.463558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992241, 31.004215, 27.915937>,  <35.420433, 30.370935, 27.979889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992241, 31.004215, 27.915937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.775024, 30.722116, 27.733624>,  <34.644695, 30.552858, 27.624235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.775024, 30.722116, 27.733624>,  <34.992241, 31.004215, 27.915937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775024, 30.722116, 27.733624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724133, 0.118495, 0.679405,
		-0.425139, 0.698990, -0.575039,
		-0.543037, -0.705246, -0.455785,
		34.612114, 30.510542, 27.596888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298599, 31.308102, 27.856667>,  <34.992241, 31.004215, 27.915937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298599, 31.308102, 27.856667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.275070, 30.908957, 27.845268>,  <34.260952, 30.669470, 27.838428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.275070, 30.908957, 27.845268>,  <34.298599, 31.308102, 27.856667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275070, 30.908957, 27.845268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763459, 0.026578, 0.645308,
		-0.643171, 0.059715, -0.763390,
		-0.058824, -0.997862, -0.028496,
		34.257423, 30.609598, 27.836720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599998, 31.265291, 27.795124>,  <34.298599, 31.308102, 27.856667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599998, 31.265291, 27.795124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.772484, 30.929413, 27.927162>,  <33.875977, 30.727886, 28.006386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.772484, 30.929413, 27.927162>,  <33.599998, 31.265291, 27.795124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772484, 30.929413, 27.927162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493079, 0.087071, 0.865617,
		-0.755597, -0.536029, -0.376491,
		0.431215, -0.839697, 0.330095,
		33.901848, 30.677504, 28.026190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090515, 30.879597, 28.206841>,  <33.599998, 31.265291, 27.795124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090515, 30.879597, 28.206841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.441528, 30.749134, 28.347441>,  <33.652138, 30.670856, 28.431801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.441528, 30.749134, 28.347441>,  <33.090515, 30.879597, 28.206841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441528, 30.749134, 28.347441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289392, 0.224256, 0.930571,
		-0.382338, -0.918330, 0.102406,
		0.877536, -0.326157, 0.351499,
		33.704788, 30.651287, 28.452890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.827415, 32.429436, 24.578440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.026585, 32.204338, 24.842375>,  <40.146088, 32.069279, 25.000736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.026585, 32.204338, 24.842375>,  <39.827415, 32.429436, 24.578440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.026585, 32.204338, 24.842375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519607, 0.415577, 0.746528,
		-0.694318, -0.714574, -0.085478,
		0.497927, -0.562743, 0.659840,
		40.175964, 32.035515, 25.040327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330429, 32.061398, 24.906904>,  <39.827415, 32.429436, 24.578440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330429, 32.061398, 24.906904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.649685, 32.067265, 25.147821>,  <39.841240, 32.070786, 25.292372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.649685, 32.067265, 25.147821>,  <39.330429, 32.061398, 24.906904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649685, 32.067265, 25.147821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580931, 0.283658, 0.762927,
		-0.159654, -0.958813, 0.234920,
		0.798141, 0.014668, 0.602291,
		39.889126, 32.071667, 25.328508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069054, 31.697741, 25.515520>,  <39.330429, 32.061398, 24.906904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069054, 31.697741, 25.515520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.400585, 31.899675, 25.612000>,  <39.599506, 32.020836, 25.669888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.400585, 31.899675, 25.612000>,  <39.069054, 31.697741, 25.515520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400585, 31.899675, 25.612000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471968, 0.399351, 0.785981,
		0.300470, -0.765283, 0.569262,
		0.828833, 0.504837, 0.241196,
		39.649235, 32.051125, 25.684359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138191, 31.724266, 26.310820>,  <39.069054, 31.697741, 25.515520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.138191, 31.724266, 26.310820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.393425, 32.020458, 26.226398>,  <39.546566, 32.198174, 26.175747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.393425, 32.020458, 26.226398>,  <39.138191, 31.724266, 26.310820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393425, 32.020458, 26.226398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351933, 0.524276, 0.775421,
		0.684832, -0.420506, 0.595130,
		0.638082, 0.740479, -0.211051,
		39.584850, 32.242603, 26.163084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510391, 31.944979, 26.983807>,  <39.138191, 31.724266, 26.310820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510391, 31.944979, 26.983807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.515324, 32.240433, 26.714209>,  <39.518284, 32.417706, 26.552450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.515324, 32.240433, 26.714209>,  <39.510391, 31.944979, 26.983807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515324, 32.240433, 26.714209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330612, 0.639148, 0.694396,
		0.943686, 0.214267, 0.252084,
		0.012333, 0.738633, -0.673994,
		39.519024, 32.462025, 26.512011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901333, 32.438675, 27.347612>,  <39.510391, 31.944979, 26.983807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901333, 32.438675, 27.347612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.757881, 32.658356, 27.045683>,  <39.671810, 32.790165, 26.864525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.757881, 32.658356, 27.045683>,  <39.901333, 32.438675, 27.347612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757881, 32.658356, 27.045683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274948, 0.710596, 0.647655,
		0.892069, 0.439807, -0.103841,
		-0.358633, 0.549202, -0.754824,
		39.650291, 32.823116, 26.819235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161068, 33.214127, 27.353033>,  <39.901333, 32.438675, 27.347612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161068, 33.214127, 27.353033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.825764, 33.210285, 27.134958>,  <39.624580, 33.207981, 27.004114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.825764, 33.210285, 27.134958>,  <40.161068, 33.214127, 27.353033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825764, 33.210285, 27.134958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350648, 0.775176, 0.525498,
		0.417570, 0.631672, -0.653166,
		-0.838261, -0.009599, -0.545185,
		39.574284, 33.207405, 26.971403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105576, 33.947788, 27.158186>,  <40.161068, 33.214127, 27.353033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105576, 33.947788, 27.158186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.749374, 33.765854, 27.153666>,  <39.535652, 33.656693, 27.150953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.749374, 33.765854, 27.153666>,  <40.105576, 33.947788, 27.158186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.749374, 33.765854, 27.153666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393356, 0.757176, 0.521494,
		-0.228640, 0.468836, -0.853180,
		-0.890503, -0.454838, -0.011299,
		39.482224, 33.629402, 27.150276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641815, 34.425678, 27.147364>,  <40.105576, 33.947788, 27.158186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641815, 34.425678, 27.147364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.387253, 34.156326, 27.297853>,  <39.234516, 33.994713, 27.388147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.387253, 34.156326, 27.297853>,  <39.641815, 34.425678, 27.147364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387253, 34.156326, 27.297853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506340, 0.732641, 0.454816,
		-0.581902, 0.098950, -0.807217,
		-0.636404, -0.673384, 0.376223,
		39.196331, 33.954311, 27.410721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046421, 34.742111, 27.261482>,  <39.641815, 34.425678, 27.147364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046421, 34.742111, 27.261482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.931114, 34.419537, 27.467997>,  <38.861931, 34.225990, 27.591906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.931114, 34.419537, 27.467997>,  <39.046421, 34.742111, 27.261482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931114, 34.419537, 27.467997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589935, 0.574271, 0.567617,
		-0.754239, -0.140948, -0.641294,
		-0.288272, -0.806441, 0.516288,
		38.844631, 34.177605, 27.622883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338459, 34.770081, 27.219864>,  <39.046421, 34.742111, 27.261482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338459, 34.770081, 27.219864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.432053, 34.541485, 27.534481>,  <38.488209, 34.404327, 27.723251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.432053, 34.541485, 27.534481>,  <38.338459, 34.770081, 27.219864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432053, 34.541485, 27.534481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716220, 0.445765, 0.536956,
		-0.657478, -0.688978, -0.305010,
		0.233988, -0.571491, 0.786541,
		38.502251, 34.370037, 27.770443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721478, 34.548882, 27.471054>,  <38.338459, 34.770081, 27.219864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721478, 34.548882, 27.471054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.973129, 34.519722, 27.780603>,  <38.124123, 34.502228, 27.966333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.973129, 34.519722, 27.780603>,  <37.721478, 34.548882, 27.471054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973129, 34.519722, 27.780603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597685, 0.591153, 0.541582,
		-0.496957, -0.803258, 0.328343,
		0.629131, -0.072897, 0.773873,
		38.161869, 34.497852, 28.012766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056606, 34.138340, 27.518070>,  <37.721478, 34.548882, 27.471054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056606, 34.138340, 27.518070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.679367, 34.201679, 27.401112>,  <36.453026, 34.239685, 27.330936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.679367, 34.201679, 27.401112>,  <37.056606, 34.138340, 27.518070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679367, 34.201679, 27.401112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196697, -0.443318, -0.874517,
		-0.268103, -0.882266, 0.386945,
		-0.943096, 0.158350, -0.292394,
		36.396439, 34.249184, 27.313393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856438, 33.580425, 27.149296>,  <37.056606, 34.138340, 27.518070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856438, 33.580425, 27.149296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.569164, 33.820187, 27.007912>,  <36.396801, 33.964043, 26.923080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.569164, 33.820187, 27.007912>,  <36.856438, 33.580425, 27.149296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569164, 33.820187, 27.007912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173138, -0.338052, -0.925064,
		-0.673975, -0.725559, 0.139002,
		-0.718179, 0.599403, -0.353461,
		36.353710, 34.000008, 26.901873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422394, 33.135120, 26.761419>,  <36.856438, 33.580425, 27.149296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422394, 33.135120, 26.761419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.383392, 33.509201, 26.625244>,  <36.359989, 33.733650, 26.543539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.383392, 33.509201, 26.625244>,  <36.422394, 33.135120, 26.761419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383392, 33.509201, 26.625244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057384, -0.336215, -0.940035,
		-0.993579, -0.111195, -0.020883,
		-0.097506, 0.935198, -0.340437,
		36.354141, 33.789761, 26.523113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884514, 33.028248, 26.403303>,  <36.422394, 33.135120, 26.761419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884514, 33.028248, 26.403303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.059605, 33.360085, 26.264633>,  <36.164658, 33.559185, 26.181431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.059605, 33.360085, 26.264633>,  <35.884514, 33.028248, 26.403303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059605, 33.360085, 26.264633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021071, -0.376003, -0.926379,
		-0.898863, 0.412802, -0.147104,
		0.437722, 0.829588, -0.346674,
		36.190922, 33.608959, 26.160631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562363, 33.173431, 25.781689>,  <35.884514, 33.028248, 26.403303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562363, 33.173431, 25.781689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.907211, 33.375740, 25.769430>,  <36.114120, 33.497128, 25.762075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.907211, 33.375740, 25.769430>,  <35.562363, 33.173431, 25.781689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907211, 33.375740, 25.769430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170655, -0.346773, -0.922294,
		-0.477100, 0.789899, -0.385273,
		0.862121, 0.505775, -0.030645,
		36.165848, 33.527473, 25.760237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569950, 33.468273, 25.084293>,  <35.562363, 33.173431, 25.781689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569950, 33.468273, 25.084293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.938042, 33.432835, 25.236780>,  <36.158897, 33.411572, 25.328272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.938042, 33.432835, 25.236780>,  <35.569950, 33.468273, 25.084293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938042, 33.432835, 25.236780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333509, -0.332207, -0.882275,
		0.204808, 0.939036, -0.276160,
		0.920231, -0.088596, 0.381216,
		36.214111, 33.406258, 25.351145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063477, 33.782372, 24.554440>,  <35.569950, 33.468273, 25.084293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063477, 33.782372, 24.554440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.289749, 33.533157, 24.770527>,  <36.425510, 33.383629, 24.900179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.289749, 33.533157, 24.770527>,  <36.063477, 33.782372, 24.554440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289749, 33.533157, 24.770527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381688, -0.382884, -0.841257,
		0.730974, 0.682075, 0.021216,
		0.565678, -0.623035, 0.540218,
		36.459454, 33.346245, 24.932592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753170, 33.786682, 24.241486>,  <36.063477, 33.782372, 24.554440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753170, 33.786682, 24.241486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.774525, 33.471352, 24.486658>,  <36.787338, 33.282154, 24.633762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.774525, 33.471352, 24.486658>,  <36.753170, 33.786682, 24.241486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774525, 33.471352, 24.486658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413463, -0.541270, -0.732172,
		0.908954, 0.292514, 0.297048,
		0.053387, -0.788329, 0.612934,
		36.790543, 33.234852, 24.670538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484272, 33.446705, 24.185923>,  <36.753170, 33.786682, 24.241486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484272, 33.446705, 24.185923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.273663, 33.155621, 24.361742>,  <37.147297, 32.980968, 24.467234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.273663, 33.155621, 24.361742>,  <37.484272, 33.446705, 24.185923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273663, 33.155621, 24.361742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471249, -0.680143, -0.561542,
		0.707597, -0.088531, 0.701048,
		-0.526526, -0.727714, 0.439547,
		37.115704, 32.937305, 24.493607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936459, 33.016228, 24.557463>,  <37.484272, 33.446705, 24.185923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936459, 33.016228, 24.557463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.606899, 32.804970, 24.475239>,  <37.409164, 32.678215, 24.425905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.606899, 32.804970, 24.475239>,  <37.936459, 33.016228, 24.557463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606899, 32.804970, 24.475239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549380, -0.655209, -0.518540,
		0.139180, -0.540154, 0.829977,
		-0.823900, -0.528143, -0.205558,
		37.359730, 32.646526, 24.413570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148556, 32.335922, 24.581093>,  <37.936459, 33.016228, 24.557463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148556, 32.335922, 24.581093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.802231, 32.299656, 24.384258>,  <37.594437, 32.277897, 24.266157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.802231, 32.299656, 24.384258>,  <38.148556, 32.335922, 24.581093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802231, 32.299656, 24.384258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441917, -0.599811, -0.667035,
		-0.234683, -0.794989, 0.559390,
		-0.865814, -0.090662, -0.492084,
		37.542488, 32.272457, 24.236633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927917, 31.621809, 24.584053>,  <38.148556, 32.335922, 24.581093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927917, 31.621809, 24.584053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.756645, 31.796141, 24.267393>,  <37.653881, 31.900740, 24.077396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.756645, 31.796141, 24.267393>,  <37.927917, 31.621809, 24.584053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756645, 31.796141, 24.267393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456564, -0.651668, -0.605705,
		-0.779877, -0.620793, 0.080051,
		-0.428184, 0.435827, -0.791652,
		37.628189, 31.926889, 24.029898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651699, 31.083639, 24.193209>,  <37.927917, 31.621809, 24.584053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651699, 31.083639, 24.193209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.735310, 31.397324, 23.959518>,  <37.785477, 31.585535, 23.819305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.735310, 31.397324, 23.959518>,  <37.651699, 31.083639, 24.193209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735310, 31.397324, 23.959518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464776, -0.605301, -0.646215,
		-0.860401, -0.136456, -0.491009,
		0.209028, 0.784213, -0.584223,
		37.798019, 31.632587, 23.784252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160976, 30.778696, 24.814457>,  <37.651699, 31.083639, 24.193209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160976, 30.778696, 24.814457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.814171, 30.705379, 24.629114>,  <37.606087, 30.661390, 24.517908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.814171, 30.705379, 24.629114>,  <38.160976, 30.778696, 24.814457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814171, 30.705379, 24.629114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441753, -0.147491, 0.884930,
		-0.230541, 0.971931, 0.046907,
		-0.867009, -0.183291, -0.463357,
		37.554070, 30.650393, 24.490107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694134, 31.035070, 25.239679>,  <38.160976, 30.778696, 24.814457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694134, 31.035070, 25.239679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.457317, 30.801355, 25.017656>,  <37.315228, 30.661127, 24.884441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.457317, 30.801355, 25.017656>,  <37.694134, 31.035070, 25.239679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457317, 30.801355, 25.017656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554123, -0.204965, 0.806807,
		-0.585175, 0.785237, -0.202419,
		-0.592046, -0.584288, -0.555058,
		37.279705, 30.626068, 24.851139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033924, 31.309479, 25.365768>,  <37.694134, 31.035070, 25.239679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033924, 31.309479, 25.365768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.985184, 30.933428, 25.238449>,  <36.955940, 30.707798, 25.162058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.985184, 30.933428, 25.238449>,  <37.033924, 31.309479, 25.365768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985184, 30.933428, 25.238449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673806, -0.157117, 0.722011,
		-0.728791, 0.302453, -0.614317,
		-0.121855, -0.940126, -0.318301,
		36.948627, 30.651390, 25.142960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234814, 31.257339, 25.262150>,  <37.033924, 31.309479, 25.365768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234814, 31.257339, 25.262150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.406464, 30.897343, 25.292780>,  <36.509453, 30.681345, 25.311159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.406464, 30.897343, 25.292780>,  <36.234814, 31.257339, 25.262150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406464, 30.897343, 25.292780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682201, -0.267380, 0.680521,
		-0.591989, -0.344271, -0.728716,
		0.429128, -0.899992, 0.076576,
		36.535202, 30.627346, 25.315752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877464, 30.741079, 24.966389>,  <36.234814, 31.257339, 25.262150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877464, 30.741079, 24.966389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.095917, 30.523478, 25.221199>,  <36.226986, 30.392916, 25.374084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.095917, 30.523478, 25.221199>,  <35.877464, 30.741079, 24.966389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095917, 30.523478, 25.221199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837260, -0.379176, 0.393981,
		0.027217, -0.748521, -0.662552,
		0.546127, -0.544005, 0.637026,
		36.259754, 30.360275, 25.412308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478931, 30.020018, 25.078926>,  <35.877464, 30.741079, 24.966389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478931, 30.020018, 25.078926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.739071, 30.036945, 25.382309>,  <35.895153, 30.047102, 25.564339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.739071, 30.036945, 25.382309>,  <35.478931, 30.020018, 25.078926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739071, 30.036945, 25.382309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712653, -0.311703, 0.628464,
		0.263008, -0.949237, -0.172558,
		0.650348, 0.042317, 0.758457,
		35.934174, 30.049641, 25.609846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479839, 29.391880, 25.511581>,  <35.478931, 30.020018, 25.078926>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479839, 29.391880, 25.511581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.613815, 29.682590, 25.751451>,  <35.694199, 29.857018, 25.895374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.613815, 29.682590, 25.751451>,  <35.479839, 29.391880, 25.511581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613815, 29.682590, 25.751451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569961, -0.350521, 0.743155,
		0.750308, -0.590703, 0.296831,
		0.334938, 0.726777, 0.599676,
		35.714298, 29.900623, 25.931355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636444, 29.087496, 26.218187>,  <35.479839, 29.391880, 25.511581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636444, 29.087496, 26.218187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.596119, 29.481964, 26.270802>,  <35.571926, 29.718645, 26.302370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.596119, 29.481964, 26.270802>,  <35.636444, 29.087496, 26.218187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596119, 29.481964, 26.270802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577975, -0.165662, 0.799063,
		0.809804, 0.004530, 0.586683,
		-0.100811, 0.986172, 0.131536,
		35.565876, 29.777815, 26.310263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211090, 28.929386, 26.711021>,  <35.636444, 29.087496, 26.218187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211090, 28.929386, 26.711021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.273624, 28.538017, 26.765060>,  <36.311146, 28.303196, 26.797483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.273624, 28.538017, 26.765060>,  <36.211090, 28.929386, 26.711021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273624, 28.538017, 26.765060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316566, -0.079928, -0.945197,
		0.935599, 0.190533, 0.297240,
		0.156333, -0.978422, 0.135097,
		36.320526, 28.244492, 26.805590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844570, 28.793158, 26.370029>,  <36.211090, 28.929386, 26.711021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844570, 28.793158, 26.370029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.630703, 28.455133, 26.370441>,  <36.502380, 28.252319, 26.370689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.630703, 28.455133, 26.370441>,  <36.844570, 28.793158, 26.370029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630703, 28.455133, 26.370441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297077, -0.189105, -0.935941,
		0.791120, -0.500115, 0.352157,
		-0.534672, -0.845059, 0.001032,
		36.470303, 28.201616, 26.370750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242573, 28.252140, 26.041977>,  <36.844570, 28.793158, 26.370029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242573, 28.252140, 26.041977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.887398, 28.068804, 26.026503>,  <36.674294, 27.958803, 26.017218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.887398, 28.068804, 26.026503>,  <37.242573, 28.252140, 26.041977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887398, 28.068804, 26.026503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195228, -0.299386, -0.933946,
		0.416483, -0.836835, 0.355316,
		-0.887935, -0.458339, -0.038684,
		36.621017, 27.931301, 26.014896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387592, 27.721905, 25.686832>,  <37.242573, 28.252140, 26.041977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387592, 27.721905, 25.686832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.989326, 27.744833, 25.657511>,  <36.750366, 27.758591, 25.639917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.989326, 27.744833, 25.657511>,  <37.387592, 27.721905, 25.686832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989326, 27.744833, 25.657511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053857, -0.287424, -0.956288,
		-0.075884, -0.956087, 0.283090,
		-0.995661, 0.057320, -0.073303,
		36.690628, 27.762030, 25.635519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139095, 27.177727, 25.267698>,  <37.387592, 27.721905, 25.686832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139095, 27.177727, 25.267698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.824371, 27.423784, 25.247618>,  <36.635536, 27.571419, 25.235569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.824371, 27.423784, 25.247618>,  <37.139095, 27.177727, 25.267698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824371, 27.423784, 25.247618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061885, -0.159560, -0.985246,
		-0.614081, -0.772098, 0.163613,
		-0.786813, 0.615147, -0.050202,
		36.588326, 27.608328, 25.232557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668762, 26.835321, 24.837708>,  <37.139095, 27.177727, 25.267698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668762, 26.835321, 24.837708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.514404, 27.204304, 24.832588>,  <36.421791, 27.425694, 24.829515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.514404, 27.204304, 24.832588>,  <36.668762, 26.835321, 24.837708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514404, 27.204304, 24.832588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208000, -0.100514, -0.972950,
		-0.898789, -0.372793, 0.230659,
		-0.385893, 0.922454, -0.012800,
		36.398636, 27.481041, 24.828749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079239, 26.758459, 24.510052>,  <36.668762, 26.835321, 24.837708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079239, 26.758459, 24.510052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.161697, 27.147915, 24.470991>,  <36.211170, 27.381588, 24.447556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.161697, 27.147915, 24.470991>,  <36.079239, 26.758459, 24.510052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161697, 27.147915, 24.470991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089480, -0.080621, -0.992720,
		-0.974422, 0.213379, 0.070502,
		0.206142, 0.973637, -0.097652,
		36.223541, 27.440006, 24.441696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716747, 27.081264, 23.883717>,  <36.079239, 26.758459, 24.510052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716747, 27.081264, 23.883717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.029442, 27.319902, 23.956337>,  <36.217060, 27.463085, 23.999908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.029442, 27.319902, 23.956337>,  <35.716747, 27.081264, 23.883717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029442, 27.319902, 23.956337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161472, 0.087554, -0.982986,
		-0.602339, 0.797753, -0.027889,
		0.781738, 0.596594, 0.181552,
		36.263962, 27.498880, 24.010803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626541, 27.712591, 23.461981>,  <35.716747, 27.081264, 23.883717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626541, 27.712591, 23.461981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.020576, 27.658779, 23.504871>,  <36.257000, 27.626492, 23.530605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.020576, 27.658779, 23.504871>,  <35.626541, 27.712591, 23.461981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020576, 27.658779, 23.504871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120006, 0.090776, -0.988614,
		0.123267, 0.986743, 0.105567,
		0.985091, -0.134532, 0.107225,
		36.316105, 27.618420, 23.537039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.143879, 31.510025, 38.991714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.509602, 31.379993, 39.088352>,  <33.729034, 31.301975, 39.146336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.509602, 31.379993, 39.088352>,  <33.143879, 31.510025, 38.991714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509602, 31.379993, 39.088352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077688, -0.444657, -0.892325,
		0.397502, 0.834628, -0.381298,
		0.914307, -0.325079, 0.241592,
		33.783894, 31.282469, 39.160831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619446, 31.721603, 38.406975>,  <33.143879, 31.510025, 38.991714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619446, 31.721603, 38.406975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.825665, 31.438593, 38.600311>,  <33.949394, 31.268785, 38.716312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.825665, 31.438593, 38.600311>,  <33.619446, 31.721603, 38.406975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825665, 31.438593, 38.600311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279030, -0.394708, -0.875413,
		0.810156, 0.586183, -0.006070,
		0.515548, -0.707527, 0.483338,
		33.980328, 31.226336, 38.745312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299129, 31.741573, 38.151596>,  <33.619446, 31.721603, 38.406975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299129, 31.741573, 38.151596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.246620, 31.368685, 38.286491>,  <34.215115, 31.144951, 38.367428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.246620, 31.368685, 38.286491>,  <34.299129, 31.741573, 38.151596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246620, 31.368685, 38.286491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387363, -0.361371, -0.848152,
		0.912534, 0.019297, 0.408545,
		-0.131270, -0.932222, 0.337238,
		34.207241, 31.089018, 38.387661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936344, 31.325224, 38.119007>,  <34.299129, 31.741573, 38.151596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936344, 31.325224, 38.119007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.644634, 31.051720, 38.108982>,  <34.469608, 30.887617, 38.102966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.644634, 31.051720, 38.108982>,  <34.936344, 31.325224, 38.119007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644634, 31.051720, 38.108982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406122, -0.403095, -0.820109,
		0.550655, -0.608265, 0.571657,
		-0.729276, -0.683761, -0.025064,
		34.425850, 30.846592, 38.101463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294495, 30.813293, 37.821255>,  <34.936344, 31.325224, 38.119007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294495, 30.813293, 37.821255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.930637, 30.648998, 37.796436>,  <34.712322, 30.550421, 37.781544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.930637, 30.648998, 37.796436>,  <35.294495, 30.813293, 37.821255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930637, 30.648998, 37.796436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246592, -0.413719, -0.876373,
		0.334291, -0.812483, 0.477621,
		-0.909639, -0.410741, -0.062050,
		34.657745, 30.525776, 37.777821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341946, 30.015827, 37.631779>,  <35.294495, 30.813293, 37.821255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341946, 30.015827, 37.631779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.971027, 30.119104, 37.523373>,  <34.748474, 30.181070, 37.458328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.971027, 30.119104, 37.523373>,  <35.341946, 30.015827, 37.631779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971027, 30.119104, 37.523373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096969, -0.533611, -0.840153,
		-0.361540, -0.805355, 0.469780,
		-0.927300, 0.258194, -0.271016,
		34.692837, 30.196564, 37.442066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176907, 29.449268, 37.187225>,  <35.341946, 30.015827, 37.631779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176907, 29.449268, 37.187225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.923447, 29.744682, 37.095089>,  <34.771370, 29.921930, 37.039806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.923447, 29.744682, 37.095089>,  <35.176907, 29.449268, 37.187225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923447, 29.744682, 37.095089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029621, -0.274367, -0.961169,
		-0.773054, -0.615866, 0.151976,
		-0.633649, 0.738533, -0.230343,
		34.733353, 29.966242, 37.025986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726730, 29.189955, 36.726749>,  <35.176907, 29.449268, 37.187225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726730, 29.189955, 36.726749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.704090, 29.580893, 36.645168>,  <34.690506, 29.815454, 36.596218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.704090, 29.580893, 36.645168>,  <34.726730, 29.189955, 36.726749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704090, 29.580893, 36.645168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041579, -0.201797, -0.978544,
		-0.997531, -0.063865, -0.029215,
		-0.056599, 0.977343, -0.203954,
		34.687111, 29.874096, 36.583981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105885, 29.272457, 36.323223>,  <34.726730, 29.189955, 36.726749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105885, 29.272457, 36.323223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.343258, 29.583448, 36.239929>,  <34.485683, 29.770042, 36.189953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.343258, 29.583448, 36.239929>,  <34.105885, 29.272457, 36.323223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343258, 29.583448, 36.239929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129311, -0.163257, -0.978072,
		-0.794426, 0.607350, 0.003654,
		0.593436, 0.777479, -0.208233,
		34.521290, 29.816692, 36.177460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683750, 29.674690, 35.901138>,  <34.105885, 29.272457, 36.323223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683750, 29.674690, 35.901138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.066429, 29.782465, 35.857094>,  <34.296036, 29.847130, 35.830666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.066429, 29.782465, 35.857094>,  <33.683750, 29.674690, 35.901138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066429, 29.782465, 35.857094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082193, -0.112834, -0.990209,
		-0.279225, 0.956385, -0.085803,
		0.956702, 0.269438, -0.110114,
		34.353439, 29.863297, 35.824059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717461, 30.151144, 35.447079>,  <33.683750, 29.674690, 35.901138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717461, 30.151144, 35.447079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.084732, 29.993402, 35.431896>,  <34.305096, 29.898758, 35.422787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.084732, 29.993402, 35.431896>,  <33.717461, 30.151144, 35.447079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084732, 29.993402, 35.431896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112627, -0.167963, -0.979338,
		0.379831, 0.903479, -0.198634,
		0.918174, -0.394354, -0.037959,
		34.360184, 29.875095, 35.420509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054409, 30.506996, 34.943573>,  <33.717461, 30.151144, 35.447079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054409, 30.506996, 34.943573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.267918, 30.171728, 34.988403>,  <34.396023, 29.970568, 35.015301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.267918, 30.171728, 34.988403>,  <34.054409, 30.506996, 34.943573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267918, 30.171728, 34.988403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130606, -0.049229, -0.990211,
		0.835483, 0.543182, 0.083193,
		0.533769, -0.838171, 0.112073,
		34.428047, 29.920277, 35.022026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478058, 31.210251, 34.848793>,  <34.054409, 30.506996, 34.943573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478058, 31.210251, 34.848793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.299603, 31.539305, 34.707809>,  <34.192528, 31.736738, 34.623219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.299603, 31.539305, 34.707809>,  <34.478058, 31.210251, 34.848793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299603, 31.539305, 34.707809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174128, 0.306511, 0.935805,
		0.877859, 0.478875, 0.006497,
		-0.446143, 0.822636, -0.352459,
		34.165760, 31.786095, 34.602074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611507, 31.684195, 35.345081>,  <34.478058, 31.210251, 34.848793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611507, 31.684195, 35.345081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.302982, 31.839352, 35.143242>,  <34.117867, 31.932446, 35.022137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.302982, 31.839352, 35.143242>,  <34.611507, 31.684195, 35.345081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302982, 31.839352, 35.143242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474638, 0.177637, 0.862070,
		0.424024, 0.904426, 0.047094,
		-0.771312, 0.387891, -0.504597,
		34.071590, 31.955719, 34.991863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449902, 32.332417, 35.636185>,  <34.611507, 31.684195, 35.345081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449902, 32.332417, 35.636185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.115269, 32.225906, 35.444675>,  <33.914490, 32.161999, 35.329769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.115269, 32.225906, 35.444675>,  <34.449902, 32.332417, 35.636185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115269, 32.225906, 35.444675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547735, 0.423914, 0.721307,
		0.010891, 0.865675, -0.500488,
		-0.836581, -0.266279, -0.478777,
		33.864296, 32.146023, 35.301041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958828, 32.852921, 35.764614>,  <34.449902, 32.332417, 35.636185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958828, 32.852921, 35.764614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.724552, 32.557781, 35.630417>,  <33.583988, 32.380699, 35.549900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.724552, 32.557781, 35.630417>,  <33.958828, 32.852921, 35.764614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724552, 32.557781, 35.630417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724707, 0.291335, 0.624438,
		-0.362999, 0.608858, -0.705354,
		-0.585688, -0.737846, -0.335489,
		33.548847, 32.336426, 35.529770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233433, 33.123463, 35.498821>,  <33.958828, 32.852921, 35.764614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233433, 33.123463, 35.498821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.203815, 32.743732, 35.620998>,  <33.186047, 32.515892, 35.694305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.203815, 32.743732, 35.620998>,  <33.233433, 33.123463, 35.498821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203815, 32.743732, 35.620998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708857, 0.265534, 0.653463,
		-0.701456, -0.168130, -0.692598,
		-0.074041, -0.949328, 0.305440,
		33.181602, 32.458935, 35.712631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584038, 32.920559, 35.280678>,  <33.233433, 33.123463, 35.498821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584038, 32.920559, 35.280678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.712528, 32.707207, 35.593681>,  <32.789623, 32.579197, 35.781483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.712528, 32.707207, 35.593681>,  <32.584038, 32.920559, 35.280678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712528, 32.707207, 35.593681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852093, 0.197755, 0.484593,
		-0.413218, -0.822433, -0.390967,
		0.321230, -0.533383, 0.782505,
		32.808899, 32.547192, 35.828434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074638, 32.467609, 35.299526>,  <32.584038, 32.920559, 35.280678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074638, 32.467609, 35.299526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.249996, 32.469479, 35.659035>,  <32.355209, 32.470600, 35.874741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.249996, 32.469479, 35.659035>,  <32.074638, 32.467609, 35.299526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249996, 32.469479, 35.659035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893358, 0.111964, 0.435173,
		-0.098595, -0.993701, 0.053261,
		0.438395, 0.004675, 0.898770,
		32.381516, 32.470882, 35.928665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.678522, 32.074097, 35.712788>,  <32.074638, 32.467609, 35.299526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.678522, 32.074097, 35.712788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.886406, 32.276070, 35.988453>,  <32.011135, 32.397255, 36.153851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.886406, 32.276070, 35.988453>,  <31.678522, 32.074097, 35.712788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886406, 32.276070, 35.988453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846953, 0.198627, 0.493171,
		0.112131, -0.839995, 0.530881,
		0.519708, 0.504932, 0.689164,
		32.042316, 32.427551, 36.195202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.479057, 31.857285, 36.310436>,  <31.678522, 32.074097, 35.712788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.479057, 31.857285, 36.310436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.623962, 32.216347, 36.410820>,  <31.710905, 32.431786, 36.471050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.623962, 32.216347, 36.410820>,  <31.479057, 31.857285, 36.310436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623962, 32.216347, 36.410820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815722, 0.175065, 0.551317,
		0.450960, -0.404431, 0.795658,
		0.362261, 0.897657, 0.250956,
		31.732641, 32.485645, 36.486107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409029, 31.857071, 37.040142>,  <31.479057, 31.857285, 36.310436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409029, 31.857071, 37.040142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.437464, 32.234833, 36.911739>,  <31.454525, 32.461491, 36.834698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.437464, 32.234833, 36.911739>,  <31.409029, 31.857071, 37.040142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437464, 32.234833, 36.911739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824932, 0.236579, 0.513340,
		0.560744, 0.228315, 0.795888,
		0.071087, 0.944406, -0.321005,
		31.458790, 32.518154, 36.815437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.997749, 32.195126, 37.497257>,  <31.409029, 31.857071, 37.040142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.997749, 32.195126, 37.497257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.067827, 32.475273, 37.220478>,  <31.109875, 32.643360, 37.054409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.067827, 32.475273, 37.220478>,  <30.997749, 32.195126, 37.497257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067827, 32.475273, 37.220478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964261, 0.263952, 0.023022,
		0.198765, 0.663185, 0.721580,
		0.175194, 0.700367, -0.691948,
		31.120386, 32.685383, 37.012894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.632318, 32.746265, 37.796253>,  <30.997749, 32.195126, 37.497257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.632318, 32.746265, 37.796253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.691975, 32.875385, 37.422398>,  <30.727768, 32.952858, 37.198082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.691975, 32.875385, 37.422398>,  <30.632318, 32.746265, 37.796253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.691975, 32.875385, 37.422398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931464, 0.363091, -0.023231,
		0.331861, 0.874051, 0.354829,
		0.149140, 0.322801, -0.934642,
		30.736717, 32.972225, 37.142006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475166, 33.484299, 37.783543>,  <30.632318, 32.746265, 37.796253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.475166, 33.484299, 37.783543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.410137, 33.331669, 37.419571>,  <30.371120, 33.240089, 37.201187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.410137, 33.331669, 37.419571>,  <30.475166, 33.484299, 37.783543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.410137, 33.331669, 37.419571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956256, 0.288229, 0.049979,
		0.243197, 0.878250, -0.411744,
		-0.162571, -0.381578, -0.909928,
		30.361366, 33.217197, 37.146591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.160622, 33.949303, 37.441280>,  <30.475166, 33.484299, 37.783543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.160622, 33.949303, 37.441280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.085575, 33.633003, 37.208206>,  <30.040548, 33.443226, 37.068359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.085575, 33.633003, 37.208206>,  <30.160622, 33.949303, 37.441280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.085575, 33.633003, 37.208206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969215, 0.245329, -0.020858,
		0.159444, 0.560836, -0.812429,
		-0.187615, -0.790744, -0.582687,
		30.029291, 33.395779, 37.033401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.813807, 34.189606, 36.776287>,  <30.160622, 33.949303, 37.441280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.813807, 34.189606, 36.776287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.739008, 33.813725, 36.890820>,  <29.694128, 33.588196, 36.959538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.739008, 33.813725, 36.890820>,  <29.813807, 34.189606, 36.776287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.739008, 33.813725, 36.890820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978248, 0.204771, 0.033157,
		-0.089790, -0.273901, -0.957557,
		-0.186998, -0.939706, 0.286329,
		29.682909, 33.531815, 36.976719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.351831, 34.348015, 36.388557>,  <29.813807, 34.189606, 36.776287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.351831, 34.348015, 36.388557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.597181, 34.662998, 36.412834>,  <30.744390, 34.851990, 36.427402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.597181, 34.662998, 36.412834>,  <30.351831, 34.348015, 36.388557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.597181, 34.662998, 36.412834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053142, 0.117824, -0.991611,
		-0.788004, 0.605002, 0.114117,
		0.613373, 0.787458, 0.060695,
		30.781193, 34.899235, 36.431042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.183792, 34.897892, 35.868050>,  <30.351831, 34.348015, 36.388557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.183792, 34.897892, 35.868050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.553432, 34.997089, 35.984352>,  <30.775217, 35.056606, 36.054134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.553432, 34.997089, 35.984352>,  <30.183792, 34.897892, 35.868050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.553432, 34.997089, 35.984352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209761, 0.306827, -0.928363,
		-0.319439, 0.918889, 0.231520,
		0.924099, 0.247991, 0.290759,
		30.830662, 35.071487, 36.071579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.369890, 35.553780, 35.469540>,  <30.183792, 34.897892, 35.868050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.369890, 35.553780, 35.469540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.707586, 35.372311, 35.583694>,  <30.910204, 35.263432, 35.652187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.707586, 35.372311, 35.583694>,  <30.369890, 35.553780, 35.469540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.707586, 35.372311, 35.583694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364644, 0.095931, -0.926192,
		0.392805, 0.885993, 0.246416,
		0.844238, -0.453668, 0.285390,
		30.960857, 35.236210, 35.669312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.746931, 35.989834, 35.338520>,  <30.369890, 35.553780, 35.469540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.746931, 35.989834, 35.338520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.975212, 35.661728, 35.353786>,  <31.112181, 35.464863, 35.362946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.975212, 35.661728, 35.353786>,  <30.746931, 35.989834, 35.338520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.975212, 35.661728, 35.353786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447155, 0.271457, -0.852270,
		0.688731, 0.503457, 0.521709,
		0.570703, -0.820269, 0.038162,
		31.146423, 35.415646, 35.365234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.355057, 36.254009, 35.197403>,  <30.746931, 35.989834, 35.338520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.355057, 36.254009, 35.197403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.385029, 35.860470, 35.132370>,  <31.403011, 35.624348, 35.093349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.385029, 35.860470, 35.132370>,  <31.355057, 36.254009, 35.197403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385029, 35.860470, 35.132370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430393, 0.178981, -0.884719,
		0.899526, -0.003683, 0.436851,
		0.074930, -0.983846, -0.162583,
		31.407507, 35.565315, 35.083595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021461, 36.224518, 34.863178>,  <31.355057, 36.254009, 35.197403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021461, 36.224518, 34.863178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.858294, 35.871464, 34.769753>,  <31.760391, 35.659630, 34.713699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.858294, 35.871464, 34.769753>,  <32.021461, 36.224518, 34.863178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858294, 35.871464, 34.769753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419813, 0.045841, -0.906452,
		0.810774, -0.467816, 0.351843,
		-0.407924, -0.882636, -0.233561,
		31.735916, 35.606674, 34.699684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576591, 35.878006, 34.744534>,  <32.021461, 36.224518, 34.863178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576591, 35.878006, 34.744534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.265892, 35.692883, 34.573666>,  <32.079472, 35.581810, 34.471146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.265892, 35.692883, 34.573666>,  <32.576591, 35.878006, 34.744534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.265892, 35.692883, 34.573666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499625, -0.039851, -0.865324,
		0.383454, -0.885563, 0.262183,
		-0.776748, -0.462806, -0.427169,
		32.032867, 35.554043, 34.445515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884102, 35.288601, 34.426495>,  <32.576591, 35.878006, 34.744534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884102, 35.288601, 34.426495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.541718, 35.356979, 34.231308>,  <32.336288, 35.398006, 34.114197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.541718, 35.356979, 34.231308>,  <32.884102, 35.288601, 34.426495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541718, 35.356979, 34.231308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479853, -0.088816, -0.872842,
		-0.192548, -0.981269, -0.006006,
		-0.855960, 0.170946, -0.487966,
		32.284931, 35.408264, 34.084919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803688, 34.824539, 33.905590>,  <32.884102, 35.288601, 34.426495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803688, 34.824539, 33.905590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.573261, 35.121643, 33.769089>,  <32.435005, 35.299904, 33.687187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.573261, 35.121643, 33.769089>,  <32.803688, 34.824539, 33.905590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573261, 35.121643, 33.769089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386631, -0.120230, -0.914364,
		-0.720182, -0.658673, -0.217914,
		-0.576067, 0.742761, -0.341251,
		32.400440, 35.344471, 33.666714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777279, 34.835899, 33.139153>,  <32.803688, 34.824539, 33.905590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777279, 34.835899, 33.139153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.566994, 35.174339, 33.174343>,  <32.440823, 35.377403, 33.195457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.566994, 35.174339, 33.174343>,  <32.777279, 34.835899, 33.139153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566994, 35.174339, 33.174343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235974, 0.244411, -0.940521,
		-0.817277, -0.473685, -0.328148,
		-0.525713, 0.846101, 0.087974,
		32.409279, 35.428169, 33.200737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153290, 34.880760, 32.721359>,  <32.777279, 34.835899, 33.139153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153290, 34.880760, 32.721359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.369003, 35.210323, 32.791054>,  <32.498432, 35.408062, 32.832870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.369003, 35.210323, 32.791054>,  <32.153290, 34.880760, 32.721359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369003, 35.210323, 32.791054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187341, 0.084343, -0.978667,
		-0.821023, 0.560419, -0.108866,
		0.539282, 0.823903, 0.174237,
		32.530788, 35.457493, 32.843327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.257286, 35.099258, 31.977325>,  <32.153290, 34.880760, 32.721359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.257286, 35.099258, 31.977325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.491371, 35.349449, 32.183746>,  <32.631821, 35.499561, 32.307598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.491371, 35.349449, 32.183746>,  <32.257286, 35.099258, 31.977325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491371, 35.349449, 32.183746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406984, 0.323883, -0.854087,
		-0.701350, 0.709845, -0.065018,
		0.585211, 0.625475, 0.516051,
		32.666935, 35.537090, 32.338562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152264, 35.774464, 31.695824>,  <32.257286, 35.099258, 31.977325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152264, 35.774464, 31.695824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.511452, 35.747303, 31.869740>,  <32.726963, 35.731007, 31.974089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.511452, 35.747303, 31.869740>,  <32.152264, 35.774464, 31.695824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511452, 35.747303, 31.869740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430416, 0.341223, -0.835649,
		-0.091618, 0.937527, 0.335633,
		0.897969, -0.067901, 0.434788,
		32.780842, 35.726933, 32.000175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551174, 36.330795, 31.369137>,  <32.152264, 35.774464, 31.695824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551174, 36.330795, 31.369137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.839947, 36.108768, 31.534407>,  <33.013210, 35.975552, 31.633568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.839947, 36.108768, 31.534407>,  <32.551174, 36.330795, 31.369137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839947, 36.108768, 31.534407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608559, 0.225103, -0.760910,
		0.329352, 0.800765, 0.500302,
		0.721930, -0.555071, 0.413175,
		33.056526, 35.942245, 31.658360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196609, 36.804928, 31.353256>,  <32.551174, 36.330795, 31.369137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196609, 36.804928, 31.353256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.292259, 36.418648, 31.393740>,  <33.349651, 36.186878, 31.418030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.292259, 36.418648, 31.393740>,  <33.196609, 36.804928, 31.353256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292259, 36.418648, 31.393740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584447, 0.059911, -0.809217,
		0.775397, 0.252658, 0.578727,
		0.239127, -0.965699, 0.101210,
		33.363998, 36.128937, 31.424103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897141, 36.789474, 31.338371>,  <33.196609, 36.804928, 31.353256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897141, 36.789474, 31.338371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.792778, 36.418079, 31.232662>,  <33.730160, 36.195244, 31.169237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.792778, 36.418079, 31.232662>,  <33.897141, 36.789474, 31.338371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792778, 36.418079, 31.232662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746967, -0.020748, -0.664538,
		0.611532, -0.370783, 0.698963,
		-0.260902, -0.928488, -0.264275,
		33.714508, 36.139534, 31.153379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545017, 36.343300, 31.387236>,  <33.897141, 36.789474, 31.338371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545017, 36.343300, 31.387236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.269241, 36.181232, 31.147066>,  <34.103775, 36.083992, 31.002964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.269241, 36.181232, 31.147066>,  <34.545017, 36.343300, 31.387236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269241, 36.181232, 31.147066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723244, -0.339450, -0.601408,
		0.039861, -0.848886, 0.527070,
		-0.689441, -0.405173, -0.600421,
		34.062408, 36.059681, 30.966940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855408, 35.658123, 31.226801>,  <34.545017, 36.343300, 31.387236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855408, 35.658123, 31.226801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.590923, 35.735386, 30.936840>,  <34.432232, 35.781742, 30.762863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.590923, 35.735386, 30.936840>,  <34.855408, 35.658123, 31.226801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590923, 35.735386, 30.936840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593971, -0.455451, -0.663147,
		-0.458233, -0.869059, 0.186440,
		-0.661228, 0.193136, -0.724898,
		34.392559, 35.793331, 30.719368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920204, 35.136745, 30.820379>,  <34.855408, 35.658123, 31.226801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920204, 35.136745, 30.820379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.718739, 35.370289, 30.565687>,  <34.597858, 35.510414, 30.412872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.718739, 35.370289, 30.565687>,  <34.920204, 35.136745, 30.820379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718739, 35.370289, 30.565687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423304, -0.475709, -0.771048,
		-0.753082, -0.657883, -0.007550,
		-0.503668, 0.583859, -0.636732,
		34.567638, 35.545444, 30.374668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660259, 34.699013, 30.377680>,  <34.920204, 35.136745, 30.820379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660259, 34.699013, 30.377680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.657387, 35.046616, 30.179781>,  <34.655663, 35.255177, 30.061043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.657387, 35.046616, 30.179781>,  <34.660259, 34.699013, 30.377680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657387, 35.046616, 30.179781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279513, -0.473293, -0.835384,
		-0.960115, -0.144287, -0.239500,
		-0.007181, 0.869008, -0.494746,
		34.655231, 35.307320, 30.031357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338547, 34.471817, 29.728344>,  <34.660259, 34.699013, 30.377680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338547, 34.471817, 29.728344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.532276, 34.818600, 29.681318>,  <34.648514, 35.026669, 29.653103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.532276, 34.818600, 29.681318>,  <34.338547, 34.471817, 29.728344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532276, 34.818600, 29.681318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131210, -0.204835, -0.969962,
		-0.864995, 0.454348, -0.212959,
		0.484322, 0.866955, -0.117566,
		34.677574, 35.078686, 29.646048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143494, 34.628170, 29.091408>,  <34.338547, 34.471817, 29.728344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143494, 34.628170, 29.091408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.483292, 34.820774, 29.177666>,  <34.687172, 34.936337, 29.229420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.483292, 34.820774, 29.177666>,  <34.143494, 34.628170, 29.091408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483292, 34.820774, 29.177666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368653, -0.249339, -0.895503,
		-0.377426, 0.840225, -0.389323,
		0.849497, 0.481511, 0.215644,
		34.738140, 34.965229, 29.242359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270668, 35.259853, 28.595549>,  <34.143494, 34.628170, 29.091408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270668, 35.259853, 28.595549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.637081, 35.147888, 28.710463>,  <34.856930, 35.080708, 28.779411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.637081, 35.147888, 28.710463>,  <34.270668, 35.259853, 28.595549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637081, 35.147888, 28.710463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243783, -0.180233, -0.952936,
		0.318520, 0.942955, -0.096860,
		0.916032, -0.279916, 0.287284,
		34.911892, 35.063915, 28.796648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791294, 35.480995, 28.073425>,  <34.270668, 35.259853, 28.595549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791294, 35.480995, 28.073425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.997284, 35.211586, 28.285524>,  <35.120876, 35.049938, 28.412785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.997284, 35.211586, 28.285524>,  <34.791294, 35.480995, 28.073425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997284, 35.211586, 28.285524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386204, -0.369942, -0.844979,
		0.765277, 0.639927, 0.069608,
		0.514974, -0.673526, 0.530250,
		35.151775, 35.009529, 28.444599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468990, 35.670021, 27.980843>,  <34.791294, 35.480995, 28.073425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468990, 35.670021, 27.980843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.498146, 35.293034, 28.111340>,  <35.515640, 35.066841, 28.189638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.498146, 35.293034, 28.111340>,  <35.468990, 35.670021, 27.980843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498146, 35.293034, 28.111340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563661, -0.230934, -0.793067,
		0.822784, 0.241697, 0.514401,
		0.072889, -0.942471, 0.326244,
		35.520012, 35.010292, 28.209213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186165, 35.518726, 27.904348>,  <35.468990, 35.670021, 27.980843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186165, 35.518726, 27.904348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.028671, 35.151131, 27.912666>,  <35.934174, 34.930573, 27.917658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.028671, 35.151131, 27.912666>,  <36.186165, 35.518726, 27.904348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028671, 35.151131, 27.912666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636334, -0.288820, -0.715306,
		0.663364, -0.268409, 0.698502,
		-0.393736, -0.918988, 0.020795,
		35.910549, 34.875435, 27.918905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729134, 34.946800, 27.990004>,  <36.186165, 35.518726, 27.904348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729134, 34.946800, 27.990004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.421551, 34.760361, 27.814981>,  <36.237000, 34.648499, 27.709969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.421551, 34.760361, 27.814981>,  <36.729134, 34.946800, 27.990004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421551, 34.760361, 27.814981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599898, -0.289512, -0.745859,
		0.220968, -0.836022, 0.502235,
		-0.768957, -0.466100, -0.437555,
		36.190865, 34.620529, 27.683714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165424, 34.442036, 28.221901>,  <36.729134, 34.946800, 27.990004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165424, 34.442036, 28.221901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.535446, 34.475510, 28.370102>,  <37.757458, 34.495594, 28.459023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.535446, 34.475510, 28.370102>,  <37.165424, 34.442036, 28.221901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535446, 34.475510, 28.370102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379768, 0.185696, 0.906252,
		0.007034, -0.979038, 0.203557,
		0.925055, 0.083679, 0.370501,
		37.812962, 34.500614, 28.481253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198853, 34.072208, 28.891287>,  <37.165424, 34.442036, 28.221901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198853, 34.072208, 28.891287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.524086, 34.302837, 28.923439>,  <37.719227, 34.441216, 28.942730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.524086, 34.302837, 28.923439>,  <37.198853, 34.072208, 28.891287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524086, 34.302837, 28.923439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239213, 0.205029, 0.949073,
		0.530731, -0.790902, 0.304629,
		0.813082, 0.576573, 0.080379,
		37.768009, 34.475811, 28.947554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493645, 33.846310, 29.418198>,  <37.198853, 34.072208, 28.891287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493645, 33.846310, 29.418198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.632053, 34.216595, 29.357109>,  <37.715099, 34.438766, 29.320456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.632053, 34.216595, 29.357109>,  <37.493645, 33.846310, 29.418198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632053, 34.216595, 29.357109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121015, 0.205454, 0.971156,
		0.930389, -0.317561, 0.183117,
		0.346024, 0.925712, -0.152722,
		37.735859, 34.494308, 29.311293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961208, 33.985016, 29.941813>,  <37.493645, 33.846310, 29.418198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961208, 33.985016, 29.941813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.858994, 34.349384, 29.812246>,  <37.797665, 34.568005, 29.734507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.858994, 34.349384, 29.812246>,  <37.961208, 33.985016, 29.941813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858994, 34.349384, 29.812246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214450, 0.273290, 0.937723,
		0.942716, 0.309083, 0.125513,
		-0.255533, 0.910923, -0.323918,
		37.782333, 34.622662, 29.715071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408981, 34.500397, 30.204014>,  <37.961208, 33.985016, 29.941813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408981, 34.500397, 30.204014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.059921, 34.671967, 30.110628>,  <37.850487, 34.774910, 30.054598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.059921, 34.671967, 30.110628>,  <38.408981, 34.500397, 30.204014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059921, 34.671967, 30.110628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123504, 0.268687, 0.955277,
		0.472471, 0.862456, -0.181496,
		-0.872650, 0.428925, -0.233463,
		37.798126, 34.800644, 30.040588>
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
