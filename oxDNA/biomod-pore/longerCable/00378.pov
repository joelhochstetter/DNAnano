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
	<24.154003, 34.657833, 34.955830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.480940, 34.887306, 34.934502>,  <24.677101, 35.024990, 34.921703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.480940, 34.887306, 34.934502>,  <24.154003, 34.657833, 34.955830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.480940, 34.887306, 34.934502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576139, -0.814451, 0.068793,
		-0.003962, -0.086948, -0.996205,
		0.817342, 0.573680, -0.053321,
		24.726143, 35.059410, 34.918507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.591797, 34.161591, 34.754295>,  <24.154003, 34.657833, 34.955830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.591797, 34.161591, 34.754295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.810194, 34.482327, 34.851406>,  <24.941233, 34.674767, 34.909672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.810194, 34.482327, 34.851406>,  <24.591797, 34.161591, 34.754295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.810194, 34.482327, 34.851406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827744, -0.561041, -0.008560,
		0.129344, 0.205630, -0.970044,
		0.545995, 0.801841, 0.242777,
		24.973993, 34.722878, 34.924240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.133930, 34.314465, 34.251808>,  <24.591797, 34.161591, 34.754295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.133930, 34.314465, 34.251808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.271212, 34.448990, 34.602604>,  <25.353580, 34.529705, 34.813080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.271212, 34.448990, 34.602604>,  <25.133930, 34.314465, 34.251808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.271212, 34.448990, 34.602604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820542, -0.561728, -0.105700,
		0.457081, 0.755881, -0.468744,
		0.343203, 0.336310, 0.876987,
		25.374172, 34.549885, 34.865700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.874071, 34.398449, 34.211269>,  <25.133930, 34.314465, 34.251808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.874071, 34.398449, 34.211269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.847738, 34.364422, 34.608948>,  <25.831938, 34.344006, 34.847557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.847738, 34.364422, 34.608948>,  <25.874071, 34.398449, 34.211269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.847738, 34.364422, 34.608948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825968, -0.563680, 0.006462,
		0.559860, 0.821601, 0.107373,
		-0.065833, -0.085069, 0.994198,
		25.827988, 34.338902, 34.907207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.577501, 34.599457, 34.580082>,  <25.874071, 34.398449, 34.211269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.577501, 34.599457, 34.580082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.371960, 34.371208, 34.836315>,  <26.248634, 34.234261, 34.990055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.371960, 34.371208, 34.836315>,  <26.577501, 34.599457, 34.580082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.371960, 34.371208, 34.836315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788355, -0.608558, 0.090298,
		0.338304, 0.551405, 0.762563,
		-0.513855, -0.570622, 0.640581,
		26.217804, 34.200020, 35.028488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.965015, 34.594746, 35.064766>,  <26.577501, 34.599457, 34.580082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.965015, 34.594746, 35.064766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.749866, 34.263607, 35.128479>,  <26.620777, 34.064926, 35.166706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.749866, 34.263607, 35.128479>,  <26.965015, 34.594746, 35.064766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.749866, 34.263607, 35.128479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841453, -0.538740, 0.041435,
		0.051508, 0.156312, 0.986364,
		-0.537870, -0.827844, 0.159279,
		26.588505, 34.015255, 35.176262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.205223, 34.293041, 35.616169>,  <26.965015, 34.594746, 35.064766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.205223, 34.293041, 35.616169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.022226, 34.010895, 35.399593>,  <26.912428, 33.841606, 35.269650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.022226, 34.010895, 35.399593>,  <27.205223, 34.293041, 35.616169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.022226, 34.010895, 35.399593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872252, -0.474345, -0.119054,
		-0.172851, -0.526735, 0.832270,
		-0.457493, -0.705370, -0.541436,
		26.884979, 33.799282, 35.237164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.195786, 33.631561, 35.910809>,  <27.205223, 34.293041, 35.616169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.195786, 33.631561, 35.910809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.203028, 33.584663, 35.513634>,  <27.207373, 33.556526, 35.275330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.203028, 33.584663, 35.513634>,  <27.195786, 33.631561, 35.910809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.203028, 33.584663, 35.513634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736583, -0.669986, 0.092541,
		-0.676105, -0.733057, 0.074230,
		0.018105, -0.117244, -0.992938,
		27.208460, 33.549492, 35.215752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.095991, 32.918468, 35.741398>,  <27.195786, 33.631561, 35.910809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.095991, 32.918468, 35.741398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.264870, 33.038006, 35.399067>,  <27.366198, 33.109730, 35.193668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.264870, 33.038006, 35.399067>,  <27.095991, 32.918468, 35.741398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.264870, 33.038006, 35.399067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540125, -0.841143, -0.027262,
		-0.728019, -0.450744, -0.516543,
		0.422199, 0.298845, -0.855827,
		27.391529, 33.127659, 35.142319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.096354, 32.353615, 35.269184>,  <27.095991, 32.918468, 35.741398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.096354, 32.353615, 35.269184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.390989, 32.595562, 35.148140>,  <27.567770, 32.740730, 35.075512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.390989, 32.595562, 35.148140>,  <27.096354, 32.353615, 35.269184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.390989, 32.595562, 35.148140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641051, -0.767014, 0.027263,
		-0.215615, -0.214070, -0.952725,
		0.736589, 0.604867, -0.302610,
		27.611965, 32.777023, 35.057358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.494476, 31.987612, 34.808250>,  <27.096354, 32.353615, 35.269184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.494476, 31.987612, 34.808250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.757435, 32.273727, 34.903065>,  <27.915211, 32.445396, 34.959953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.757435, 32.273727, 34.903065>,  <27.494476, 31.987612, 34.808250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.757435, 32.273727, 34.903065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736999, -0.675880, -0.004435,
		0.157038, 0.177614, -0.971490,
		0.657398, 0.715290, 0.237040,
		27.954655, 32.488316, 34.974178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.138342, 31.926023, 34.352612>,  <27.494476, 31.987612, 34.808250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.138342, 31.926023, 34.352612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.213953, 32.099327, 34.705101>,  <28.259319, 32.203308, 34.916595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.213953, 32.099327, 34.705101>,  <28.138342, 31.926023, 34.352612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.213953, 32.099327, 34.705101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717725, -0.673420, 0.177133,
		0.670179, 0.598994, -0.438254,
		0.189027, 0.433257, 0.881225,
		28.270660, 32.229305, 34.969467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.848206, 31.974068, 34.367622>,  <28.138342, 31.926023, 34.352612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.848206, 31.974068, 34.367622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.653519, 31.913897, 34.711826>,  <28.536707, 31.877794, 34.918350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.653519, 31.913897, 34.711826>,  <28.848206, 31.974068, 34.367622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.653519, 31.913897, 34.711826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615973, -0.757584, 0.215971,
		0.619420, 0.635168, 0.461389,
		-0.486719, -0.150427, 0.860509,
		28.507504, 31.868769, 34.969978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.374605, 31.927366, 34.908684>,  <28.848206, 31.974068, 34.367622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.374605, 31.927366, 34.908684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.039127, 31.748505, 35.033035>,  <28.837841, 31.641188, 35.107647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.039127, 31.748505, 35.033035>,  <29.374605, 31.927366, 34.908684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.039127, 31.748505, 35.033035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531527, -0.796429, 0.288410,
		0.118632, 0.407130, 0.905633,
		-0.838693, -0.447154, 0.310882,
		28.787519, 31.614359, 35.126301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.053940, 32.226471, 35.549686>,  <29.374605, 31.927366, 34.908684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.053940, 32.226471, 35.549686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.023430, 32.321152, 35.162254>,  <29.005123, 32.377960, 34.929794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.023430, 32.321152, 35.162254>,  <29.053940, 32.226471, 35.549686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.023430, 32.321152, 35.162254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703187, 0.675931, 0.220558,
		0.706902, 0.697919, 0.114889,
		-0.076275, 0.236701, -0.968584,
		29.000547, 32.392162, 34.871677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.197084, 32.964951, 35.396641>,  <29.053940, 32.226471, 35.549686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.197084, 32.964951, 35.396641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.930765, 32.805340, 35.144455>,  <28.770973, 32.709572, 34.993141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.930765, 32.805340, 35.144455>,  <29.197084, 32.964951, 35.396641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.930765, 32.805340, 35.144455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710060, 0.598406, 0.371115,
		0.229191, 0.694758, -0.681750,
		-0.665798, -0.399027, -0.630469,
		28.731026, 32.685631, 34.955315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.732126, 33.496536, 35.306923>,  <29.197084, 32.964951, 35.396641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.732126, 33.496536, 35.306923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.507595, 33.192184, 35.176712>,  <28.372875, 33.009575, 35.098583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.507595, 33.192184, 35.176712>,  <28.732126, 33.496536, 35.306923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.507595, 33.192184, 35.176712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757283, 0.630895, -0.168802,
		0.333814, 0.151765, -0.930342,
		-0.561330, -0.760880, -0.325531,
		28.339195, 32.963921, 35.079052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.394409, 33.702316, 34.602818>,  <28.732126, 33.496536, 35.306923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.394409, 33.702316, 34.602818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.163307, 33.402405, 34.731834>,  <28.024647, 33.222458, 34.809246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.163307, 33.402405, 34.731834>,  <28.394409, 33.702316, 34.602818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.163307, 33.402405, 34.731834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815894, 0.519527, -0.253786,
		0.022712, -0.409788, -0.911898,
		-0.577754, -0.749777, 0.322544,
		27.989981, 33.177471, 34.828598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.908201, 33.655186, 34.080700>,  <28.394409, 33.702316, 34.602818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.908201, 33.655186, 34.080700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.758654, 33.506729, 34.420696>,  <27.668926, 33.417656, 34.624695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.758654, 33.506729, 34.420696>,  <27.908201, 33.655186, 34.080700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.758654, 33.506729, 34.420696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774147, 0.629598, -0.065602,
		-0.510804, -0.682542, -0.522701,
		-0.373867, -0.371138, 0.849988,
		27.646494, 33.395390, 34.675694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.207478, 33.405178, 33.937080>,  <27.908201, 33.655186, 34.080700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.207478, 33.405178, 33.937080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.255367, 33.506344, 34.321102>,  <27.284101, 33.567043, 34.551514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.255367, 33.506344, 34.321102>,  <27.207478, 33.405178, 33.937080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.255367, 33.506344, 34.321102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888463, 0.458838, -0.010080,
		-0.443058, -0.851763, 0.279641,
		0.119724, 0.252917, 0.960052,
		27.291285, 33.582218, 34.609119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.878962, 32.771759, 34.279079>,  <27.207478, 33.405178, 33.937080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.878962, 32.771759, 34.279079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.934391, 33.060307, 34.550499>,  <26.967649, 33.233433, 34.713352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.934391, 33.060307, 34.550499>,  <26.878962, 32.771759, 34.279079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.934391, 33.060307, 34.550499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976495, 0.213737, -0.027803,
		-0.165087, -0.658746, 0.734030,
		0.138575, 0.721367, 0.678547,
		26.975964, 33.276718, 34.754063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.247988, 32.884686, 34.595703>,  <26.878962, 32.771759, 34.279079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.247988, 32.884686, 34.595703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.460432, 33.159599, 34.793919>,  <26.587898, 33.324547, 34.912849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.460432, 33.159599, 34.793919>,  <26.247988, 32.884686, 34.595703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.460432, 33.159599, 34.793919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845104, 0.471803, 0.251398,
		-0.061014, -0.552302, 0.831408,
		0.531108, 0.687287, 0.495540,
		26.619764, 33.365784, 34.942581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.911854, 32.937069, 35.352345>,  <26.247988, 32.884686, 34.595703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.911854, 32.937069, 35.352345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.110943, 33.276199, 35.279175>,  <26.230396, 33.479679, 35.235275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.110943, 33.276199, 35.279175>,  <25.911854, 32.937069, 35.352345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.110943, 33.276199, 35.279175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786895, 0.530106, 0.315886,
		0.364784, -0.013285, 0.930998,
		0.497724, 0.847827, -0.182921,
		26.260260, 33.530548, 35.224300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.160713, 32.995060, 35.340832>,  <25.911854, 32.937069, 35.352345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.160713, 32.995060, 35.340832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.112782, 32.899696, 35.726330>,  <25.084023, 32.842476, 35.957626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.112782, 32.899696, 35.726330>,  <25.160713, 32.995060, 35.340832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.112782, 32.899696, 35.726330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991434, -0.022079, -0.128733,
		0.051971, -0.970911, -0.233732,
		-0.119827, -0.238420, 0.963741,
		25.076834, 32.828171, 36.015453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.490530, 33.447948, 35.784050>,  <25.160713, 32.995060, 35.340832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.490530, 33.447948, 35.784050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.745491, 33.665806, 35.566029>,  <25.898468, 33.796520, 35.435215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.745491, 33.665806, 35.566029>,  <25.490530, 33.447948, 35.784050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.745491, 33.665806, 35.566029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595638, 0.797021, 0.099862,
		0.488806, 0.261001, 0.832434,
		0.637404, 0.544643, -0.545051,
		25.936712, 33.829197, 35.402512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.696779, 34.149418, 36.159576>,  <25.490530, 33.447948, 35.784050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.696779, 34.149418, 36.159576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.737371, 34.209995, 35.766281>,  <25.761726, 34.246342, 35.530304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.737371, 34.209995, 35.766281>,  <25.696779, 34.149418, 36.159576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.737371, 34.209995, 35.766281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541776, 0.837342, 0.073056,
		0.834374, 0.525283, 0.167026,
		0.101483, 0.151446, -0.983242,
		25.767817, 34.255428, 35.471310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.695391, 34.836903, 36.147991>,  <25.696779, 34.149418, 36.159576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.695391, 34.836903, 36.147991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.596390, 34.744141, 35.771702>,  <25.536989, 34.688484, 35.545929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.596390, 34.744141, 35.771702>,  <25.695391, 34.836903, 36.147991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.596390, 34.744141, 35.771702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597172, 0.801097, -0.040366,
		0.762973, 0.551784, -0.336759,
		-0.247503, -0.231902, -0.940725,
		25.522139, 34.674572, 35.489483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.205204, 35.408188, 36.132389>,  <25.695391, 34.836903, 36.147991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.205204, 35.408188, 36.132389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.095926, 35.304039, 36.502811>,  <26.030359, 35.241550, 36.725063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.095926, 35.304039, 36.502811>,  <26.205204, 35.408188, 36.132389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.095926, 35.304039, 36.502811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157034, 0.961830, 0.224105,
		-0.949055, -0.084197, -0.303654,
		-0.273194, -0.260372, 0.926051,
		26.013968, 35.225925, 36.780628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.609592, 35.762417, 36.249069>,  <26.205204, 35.408188, 36.132389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.609592, 35.762417, 36.249069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.780373, 35.655376, 36.594578>,  <25.882841, 35.591152, 36.801884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.780373, 35.655376, 36.594578>,  <25.609592, 35.762417, 36.249069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.780373, 35.655376, 36.594578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052932, 0.946177, 0.319292,
		-0.902725, -0.182044, 0.389806,
		0.426950, -0.267600, 0.863773,
		25.908457, 35.575096, 36.853710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.177462, 35.868050, 36.898602>,  <25.609592, 35.762417, 36.249069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.177462, 35.868050, 36.898602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.567812, 35.898006, 36.980633>,  <25.802023, 35.915981, 37.029850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.567812, 35.898006, 36.980633>,  <25.177462, 35.868050, 36.898602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.567812, 35.898006, 36.980633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116220, 0.973377, 0.197561,
		-0.184821, -0.216630, 0.958600,
		0.975876, 0.074895, 0.205077,
		25.860575, 35.920475, 37.042156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.224962, 36.355480, 37.475903>,  <25.177462, 35.868050, 36.898602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.224962, 36.355480, 37.475903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.594547, 36.332748, 37.324608>,  <25.816298, 36.319111, 37.233829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.594547, 36.332748, 37.324608>,  <25.224962, 36.355480, 37.475903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.594547, 36.332748, 37.324608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097046, 0.991372, 0.088117,
		0.369967, -0.118123, 0.921505,
		0.923962, -0.056828, -0.378238,
		25.871737, 36.315701, 37.211136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.644836, 36.630798, 37.925018>,  <25.224962, 36.355480, 37.475903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.644836, 36.630798, 37.925018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.852100, 36.665169, 37.584637>,  <25.976458, 36.685791, 37.380405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.852100, 36.665169, 37.584637>,  <25.644836, 36.630798, 37.925018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.852100, 36.665169, 37.584637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097656, 0.982489, 0.158677,
		0.849691, -0.165321, 0.500693,
		0.518158, 0.085931, -0.850957,
		26.007547, 36.690948, 37.329350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.274263, 36.971645, 38.089363>,  <25.644836, 36.630798, 37.925018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.274263, 36.971645, 38.089363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097265, 37.031551, 37.735691>,  <25.991066, 37.067497, 37.523487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097265, 37.031551, 37.735691>,  <26.274263, 36.971645, 38.089363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.097265, 37.031551, 37.735691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032400, 0.982642, 0.182663,
		0.896186, 0.109475, -0.429961,
		-0.442495, 0.149769, -0.884176,
		25.964518, 37.076481, 37.470440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.644627, 37.513889, 37.641857>,  <26.274263, 36.971645, 38.089363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.644627, 37.513889, 37.641857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.247997, 37.479916, 37.602722>,  <26.010019, 37.459534, 37.579239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.247997, 37.479916, 37.602722>,  <26.644627, 37.513889, 37.641857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.247997, 37.479916, 37.602722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106153, 0.965527, 0.237673,
		0.074280, 0.246056, -0.966405,
		-0.991571, -0.084933, -0.097839,
		25.950525, 37.454437, 37.573372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.353477, 37.971233, 37.246773>,  <26.644627, 37.513889, 37.641857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.353477, 37.971233, 37.246773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.103354, 37.885281, 37.546856>,  <25.953279, 37.833710, 37.726906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.103354, 37.885281, 37.546856>,  <26.353477, 37.971233, 37.246773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.103354, 37.885281, 37.546856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153887, 0.908510, 0.388495,
		-0.765053, 0.358377, -0.535032,
		-0.625310, -0.214885, 0.750208,
		25.915760, 37.820816, 37.771919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.066381, 37.771843, 37.115467>,  <26.353477, 37.971233, 37.246773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.066381, 37.771843, 37.115467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.743513, 37.710384, 36.887478>,  <26.549791, 37.673512, 36.750683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.743513, 37.710384, 36.887478>,  <27.066381, 37.771843, 37.115467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.743513, 37.710384, 36.887478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335548, 0.913799, 0.228863,
		0.485678, 0.375985, -0.789147,
		-0.807171, -0.153643, -0.569973,
		26.501362, 37.664291, 36.716484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.020405, 38.314358, 36.636986>,  <27.066381, 37.771843, 37.115467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.020405, 38.314358, 36.636986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.653055, 38.162228, 36.680695>,  <26.432646, 38.070950, 36.706921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.653055, 38.162228, 36.680695>,  <27.020405, 38.314358, 36.636986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.653055, 38.162228, 36.680695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380265, 0.924610, 0.022236,
		-0.109493, -0.021132, -0.993763,
		-0.918373, -0.380328, 0.109274,
		26.377542, 38.048130, 36.713478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.487394, 38.561844, 36.081944>,  <27.020405, 38.314358, 36.636986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.487394, 38.561844, 36.081944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.285801, 38.464348, 36.413387>,  <26.164845, 38.405849, 36.612255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.285801, 38.464348, 36.413387>,  <26.487394, 38.561844, 36.081944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.285801, 38.464348, 36.413387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367996, 0.928519, 0.049303,
		-0.781396, -0.280077, -0.557653,
		-0.503983, -0.243739, 0.828609,
		26.134605, 38.391228, 36.661968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.825146, 38.911430, 36.048878>,  <26.487394, 38.561844, 36.081944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.825146, 38.911430, 36.048878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.891050, 38.837914, 36.436501>,  <25.930593, 38.793804, 36.669075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.891050, 38.837914, 36.436501>,  <25.825146, 38.911430, 36.048878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.891050, 38.837914, 36.436501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241621, 0.945030, 0.220312,
		-0.956281, -0.270444, 0.111299,
		0.164763, -0.183788, 0.969059,
		25.940479, 38.782776, 36.727219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.507219, 39.643452, 36.032478>,  <25.825146, 38.911430, 36.048878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.507219, 39.643452, 36.032478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.433140, 39.715019, 36.418987>,  <25.388693, 39.757961, 36.650894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.433140, 39.715019, 36.418987>,  <25.507219, 39.643452, 36.032478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.433140, 39.715019, 36.418987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431183, -0.868783, 0.243509,
		0.883053, 0.461739, 0.083751,
		-0.185199, 0.178920, 0.966276,
		25.377581, 39.768696, 36.708870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.068104, 39.562836, 36.486320>,  <25.507219, 39.643452, 36.032478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.068104, 39.562836, 36.486320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.736588, 39.459309, 36.684761>,  <25.537678, 39.397194, 36.803825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.736588, 39.459309, 36.684761>,  <26.068104, 39.562836, 36.486320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.736588, 39.459309, 36.684761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349850, -0.931619, 0.098441,
		0.436701, 0.255149, 0.862665,
		-0.828792, -0.258815, 0.496103,
		25.487949, 39.381664, 36.833591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.188873, 39.221664, 37.185509>,  <26.068104, 39.562836, 36.486320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.188873, 39.221664, 37.185509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.863279, 39.111362, 36.981003>,  <25.667923, 39.045181, 36.858299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.863279, 39.111362, 36.981003>,  <26.188873, 39.221664, 37.185509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.863279, 39.111362, 36.981003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405049, -0.900312, -0.159290,
		-0.416371, -0.336746, 0.844534,
		-0.813985, -0.275753, -0.511262,
		25.619083, 39.028637, 36.827625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.864996, 38.569019, 37.508926>,  <26.188873, 39.221664, 37.185509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.864996, 38.569019, 37.508926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.719309, 38.576653, 37.136478>,  <25.631897, 38.581230, 36.913010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.719309, 38.576653, 37.136478>,  <25.864996, 38.569019, 37.508926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.719309, 38.576653, 37.136478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127584, -0.989342, -0.070177,
		-0.922534, -0.144355, 0.357901,
		-0.364217, 0.019078, -0.931119,
		25.610044, 38.582375, 36.857143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.296181, 38.061993, 37.588760>,  <25.864996, 38.569019, 37.508926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.296181, 38.061993, 37.588760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.543217, 38.152004, 37.287312>,  <25.691439, 38.206009, 37.106441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.543217, 38.152004, 37.287312>,  <25.296181, 38.061993, 37.588760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.543217, 38.152004, 37.287312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435390, -0.895800, 0.089324,
		-0.654993, -0.383284, -0.651212,
		0.617592, 0.225024, -0.753621,
		25.728495, 38.219513, 37.061226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.109585, 37.676167, 37.038540>,  <25.296181, 38.061993, 37.588760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.109585, 37.676167, 37.038540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.484663, 37.779060, 36.945110>,  <25.709709, 37.840797, 36.889053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.484663, 37.779060, 36.945110>,  <25.109585, 37.676167, 37.038540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.484663, 37.779060, 36.945110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261331, -0.965151, -0.013795,
		-0.228984, -0.048105, -0.972241,
		0.937695, 0.257235, -0.233575,
		25.765972, 37.856232, 36.875038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.464657, 37.249767, 36.387035>,  <25.109585, 37.676167, 37.038540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.464657, 37.249767, 36.387035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.748917, 37.373154, 36.639965>,  <25.919472, 37.447186, 36.791721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.748917, 37.373154, 36.639965>,  <25.464657, 37.249767, 36.387035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.748917, 37.373154, 36.639965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405248, -0.914158, -0.009499,
		0.575110, 0.262997, -0.774649,
		0.710649, 0.308462, 0.632320,
		25.962111, 37.465691, 36.829662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.169899, 37.263199, 36.116394>,  <25.464657, 37.249767, 36.387035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.169899, 37.263199, 36.116394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.162447, 37.181904, 36.507977>,  <26.157976, 37.133125, 36.742924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.162447, 37.181904, 36.507977>,  <26.169899, 37.263199, 36.116394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.162447, 37.181904, 36.507977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344211, -0.920573, -0.184566,
		0.938708, 0.333528, 0.087105,
		-0.018628, -0.203236, 0.978952,
		26.156858, 37.120934, 36.801662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.847355, 36.966446, 36.317623>,  <26.169899, 37.263199, 36.116394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.847355, 36.966446, 36.317623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.589724, 36.869213, 36.607746>,  <26.435144, 36.810875, 36.781822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.589724, 36.869213, 36.607746>,  <26.847355, 36.966446, 36.317623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.589724, 36.869213, 36.607746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336580, -0.941508, -0.016651,
		0.686933, 0.233401, 0.688220,
		-0.644078, -0.243080, 0.725311,
		26.396500, 36.796288, 36.825340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.069054, 36.272850, 36.474072>,  <26.847355, 36.966446, 36.317623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.069054, 36.272850, 36.474072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.717545, 36.300472, 36.662960>,  <26.506639, 36.317047, 36.776295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.717545, 36.300472, 36.662960>,  <27.069054, 36.272850, 36.474072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.717545, 36.300472, 36.662960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064410, -0.997584, 0.026019,
		0.472877, -0.007551, 0.881096,
		-0.878771, 0.069055, 0.472221,
		26.453913, 36.321190, 36.804626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.512270, 36.874302, 36.653862>,  <27.069054, 36.272850, 36.474072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.512270, 36.874302, 36.653862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.754122, 36.828987, 36.338497>,  <27.899233, 36.801796, 36.149281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.754122, 36.828987, 36.338497>,  <27.512270, 36.874302, 36.653862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.754122, 36.828987, 36.338497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687238, 0.426182, -0.588280,
		0.402653, 0.897515, 0.179823,
		0.604628, -0.113291, -0.788410,
		27.935511, 36.794998, 36.101974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669834, 37.539761, 36.318626>,  <27.512270, 36.874302, 36.653862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.669834, 37.539761, 36.318626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.665100, 37.281326, 36.013355>,  <27.662260, 37.126266, 35.830193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.665100, 37.281326, 36.013355>,  <27.669834, 37.539761, 36.318626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.665100, 37.281326, 36.013355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693951, 0.554814, -0.458926,
		0.719925, 0.524174, -0.454917,
		-0.011837, -0.646082, -0.763176,
		27.661549, 37.087502, 35.784401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.050009, 37.746479, 35.681095>,  <27.669834, 37.539761, 36.318626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.050009, 37.746479, 35.681095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.036537, 37.899193, 36.050552>,  <28.028454, 37.990822, 36.272224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.036537, 37.899193, 36.050552>,  <28.050009, 37.746479, 35.681095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.036537, 37.899193, 36.050552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574405, -0.748888, 0.330493,
		0.817878, 0.541673, -0.194076,
		-0.033678, 0.381782, 0.923639,
		28.026434, 38.013729, 36.327644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.562418, 37.817120, 36.263008>,  <28.050009, 37.746479, 35.681095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.562418, 37.817120, 36.263008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.725691, 38.051617, 36.542923>,  <28.823654, 38.192314, 36.710873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.725691, 38.051617, 36.542923>,  <28.562418, 37.817120, 36.263008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.725691, 38.051617, 36.542923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282821, -0.810050, 0.513645,
		0.867987, -0.011745, -0.496449,
		0.408181, 0.586243, 0.699791,
		28.848145, 38.227489, 36.752861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.285112, 37.582695, 36.476936>,  <28.562418, 37.817120, 36.263008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.285112, 37.582695, 36.476936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.174637, 37.784603, 36.804089>,  <29.108353, 37.905750, 37.000378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.174637, 37.784603, 36.804089>,  <29.285112, 37.582695, 36.476936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.174637, 37.784603, 36.804089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589815, -0.582874, 0.558907,
		0.758841, 0.636760, -0.136739,
		-0.276188, 0.504772, 0.817879,
		29.091780, 37.936035, 37.049454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.847223, 37.687714, 36.844742>,  <29.285112, 37.582695, 36.476936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.847223, 37.687714, 36.844742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.537130, 37.683105, 37.097370>,  <29.351074, 37.680340, 37.248947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.537130, 37.683105, 37.097370>,  <29.847223, 37.687714, 36.844742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.537130, 37.683105, 37.097370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437187, -0.731455, 0.523298,
		0.455938, 0.681792, 0.572084,
		-0.775234, -0.011516, 0.631569,
		29.304560, 37.679649, 37.286842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.162636, 37.758263, 37.453781>,  <29.847223, 37.687714, 36.844742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.162636, 37.758263, 37.453781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.808401, 37.575966, 37.489647>,  <29.595860, 37.466587, 37.511166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.808401, 37.575966, 37.489647>,  <30.162636, 37.758263, 37.453781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.808401, 37.575966, 37.489647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447010, -0.783817, 0.431061,
		-0.126173, 0.421822, 0.897857,
		-0.885586, -0.455739, 0.089662,
		29.542725, 37.439243, 37.516544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.045479, 37.534184, 38.139774>,  <30.162636, 37.758263, 37.453781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.045479, 37.534184, 38.139774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.841784, 37.268188, 37.921246>,  <29.719566, 37.108589, 37.790131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.841784, 37.268188, 37.921246>,  <30.045479, 37.534184, 38.139774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.841784, 37.268188, 37.921246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428399, -0.746425, 0.509239,
		-0.746425, 0.025283, 0.664990,
		-0.509239, -0.664990, -0.546319,
		29.689013, 37.068691, 37.757351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.772673, 37.133682, 38.660892>,  <30.045479, 37.534184, 38.139774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.772673, 37.133682, 38.660892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.816320, 36.934738, 38.316631>,  <29.842508, 36.815372, 38.110073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.816320, 36.934738, 38.316631>,  <29.772673, 37.133682, 38.660892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.816320, 36.934738, 38.316631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281090, -0.815045, 0.506647,
		-0.953458, -0.297205, 0.050868,
		0.109119, -0.497364, -0.860652,
		29.849056, 36.785530, 38.058437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.853430, 36.460232, 38.871349>,  <29.772673, 37.133682, 38.660892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.853430, 36.460232, 38.871349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.947275, 36.390736, 38.488773>,  <30.003582, 36.349037, 38.259228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.947275, 36.390736, 38.488773>,  <29.853430, 36.460232, 38.871349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.947275, 36.390736, 38.488773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322665, -0.914197, 0.245215,
		-0.916976, -0.366139, -0.158421,
		0.234611, -0.173739, -0.956437,
		30.017660, 36.338615, 38.201843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.526707, 35.767338, 38.743992>,  <29.853430, 36.460232, 38.871349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.526707, 35.767338, 38.743992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.808081, 35.826595, 38.465931>,  <29.976904, 35.862148, 38.299095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.808081, 35.826595, 38.465931>,  <29.526707, 35.767338, 38.743992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.808081, 35.826595, 38.465931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433158, -0.864781, 0.254024,
		-0.563520, -0.479799, -0.672487,
		0.703434, 0.148145, -0.695150,
		30.019112, 35.871040, 38.257385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.543394, 35.179546, 38.307640>,  <29.526707, 35.767338, 38.743992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.543394, 35.179546, 38.307640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.896317, 35.365089, 38.275726>,  <30.108070, 35.476418, 38.256577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.896317, 35.365089, 38.275726>,  <29.543394, 35.179546, 38.307640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.896317, 35.365089, 38.275726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443462, -0.876072, -0.189313,
		-0.157715, 0.131650, -0.978670,
		0.882308, 0.463860, -0.079788,
		30.161009, 35.504246, 38.251789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.948057, 34.799496, 37.804947>,  <29.543394, 35.179546, 38.307640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.948057, 34.799496, 37.804947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.228643, 35.030830, 37.971542>,  <30.396996, 35.169632, 38.071499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.228643, 35.030830, 37.971542>,  <29.948057, 34.799496, 37.804947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.228643, 35.030830, 37.971542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693315, -0.689117, -0.210788,
		0.165105, 0.436622, -0.884365,
		0.701466, 0.578341, 0.416493,
		30.439083, 35.204334, 38.096489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.596170, 35.060654, 37.312016>,  <29.948057, 34.799496, 37.804947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.596170, 35.060654, 37.312016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.695974, 35.019905, 37.697216>,  <30.755856, 34.995457, 37.928337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.695974, 35.019905, 37.697216>,  <30.596170, 35.060654, 37.312016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.695974, 35.019905, 37.697216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694543, -0.674147, -0.251267,
		0.674800, 0.731538, -0.097452,
		0.249508, -0.101870, 0.963000,
		30.770826, 34.989346, 37.986115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218700, 35.258434, 37.547607>,  <30.596170, 35.060654, 37.312016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218700, 35.258434, 37.547607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.103020, 34.932140, 37.747982>,  <31.033611, 34.736362, 37.868206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.103020, 34.932140, 37.747982>,  <31.218700, 35.258434, 37.547607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.103020, 34.932140, 37.747982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639087, -0.554127, -0.533396,
		0.712692, 0.165882, 0.681582,
		-0.289202, -0.815737, 0.500934,
		31.016258, 34.687420, 37.898262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.593569, 34.798542, 37.287952>,  <31.218700, 35.258434, 37.547607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.593569, 34.798542, 37.287952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350052, 34.578381, 37.516487>,  <31.203941, 34.446285, 37.653610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350052, 34.578381, 37.516487>,  <31.593569, 34.798542, 37.287952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350052, 34.578381, 37.516487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292061, -0.825097, -0.483648,
		0.737611, -0.127576, 0.663064,
		-0.608794, -0.550400, 0.571341,
		31.167414, 34.413261, 37.687889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927723, 34.262005, 37.795792>,  <31.593569, 34.798542, 37.287952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927723, 34.262005, 37.795792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572090, 34.136211, 37.662746>,  <31.358711, 34.060734, 37.582920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572090, 34.136211, 37.662746>,  <31.927723, 34.262005, 37.795792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572090, 34.136211, 37.662746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457275, -0.577193, -0.676571,
		0.020792, -0.753622, 0.656979,
		-0.889082, -0.314487, -0.332611,
		31.305365, 34.041866, 37.562962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976942, 33.512787, 37.616085>,  <31.927723, 34.262005, 37.795792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976942, 33.512787, 37.616085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654757, 33.664890, 37.434258>,  <31.461445, 33.756153, 37.325161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654757, 33.664890, 37.434258>,  <31.976942, 33.512787, 37.616085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654757, 33.664890, 37.434258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151158, -0.609831, -0.777983,
		-0.573045, -0.695349, 0.433717,
		-0.805463, 0.380259, -0.454568,
		31.413116, 33.778969, 37.297886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500216, 32.856136, 37.429474>,  <31.976942, 33.512787, 37.616085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500216, 32.856136, 37.429474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.422546, 33.173607, 37.198864>,  <31.375944, 33.364090, 37.060497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.422546, 33.173607, 37.198864>,  <31.500216, 32.856136, 37.429474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.422546, 33.173607, 37.198864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191768, -0.607081, -0.771153,
		-0.962040, -0.039179, 0.270080,
		-0.194173, 0.793674, -0.576523,
		31.364294, 33.411709, 37.025906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.804581, 32.717449, 37.068623>,  <31.500216, 32.856136, 37.429474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.804581, 32.717449, 37.068623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.022284, 32.967438, 36.844765>,  <31.152906, 33.117432, 36.710449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.022284, 32.967438, 36.844765>,  <30.804581, 32.717449, 37.068623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.022284, 32.967438, 36.844765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201975, -0.549860, -0.810469,
		-0.814241, 0.554138, -0.173037,
		0.544258, 0.624968, -0.559641,
		31.185560, 33.154930, 36.676872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.374901, 32.821140, 36.395847>,  <30.804581, 32.717449, 37.068623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.374901, 32.821140, 36.395847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.728130, 32.986328, 36.306728>,  <30.940067, 33.085442, 36.253258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.728130, 32.986328, 36.306728>,  <30.374901, 32.821140, 36.395847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.728130, 32.986328, 36.306728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064970, -0.362621, -0.929669,
		-0.464715, 0.835441, -0.293390,
		0.883074, 0.412969, -0.222794,
		30.993052, 33.110218, 36.239891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.266336, 33.232597, 35.783154>,  <30.374901, 32.821140, 36.395847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.266336, 33.232597, 35.783154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.655371, 33.148102, 35.822044>,  <30.888792, 33.097404, 35.845379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.655371, 33.148102, 35.822044>,  <30.266336, 33.232597, 35.783154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.655371, 33.148102, 35.822044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005780, -0.396034, -0.918218,
		0.232466, 0.893609, -0.383957,
		0.972587, -0.211235, 0.097229,
		30.947147, 33.084732, 35.851212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.505331, 33.529255, 35.159065>,  <30.266336, 33.232597, 35.783154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.505331, 33.529255, 35.159065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783941, 33.263241, 35.266830>,  <30.951107, 33.103634, 35.331490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783941, 33.263241, 35.266830>,  <30.505331, 33.529255, 35.159065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.783941, 33.263241, 35.266830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014503, -0.362344, -0.931931,
		0.717387, 0.653020, -0.242736,
		0.696524, -0.665035, 0.269412,
		30.992899, 33.063732, 35.347652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.988243, 33.602196, 34.730515>,  <30.505331, 33.529255, 35.159065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.988243, 33.602196, 34.730515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.054441, 33.229176, 34.858864>,  <31.094160, 33.005363, 34.935875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.054441, 33.229176, 34.858864>,  <30.988243, 33.602196, 34.730515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.054441, 33.229176, 34.858864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068097, -0.335390, -0.939615,
		0.983857, 0.133650, -0.119009,
		0.165494, -0.932551, 0.320875,
		31.104090, 32.949409, 34.955128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.504068, 33.457577, 34.330158>,  <30.988243, 33.602196, 34.730515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.504068, 33.457577, 34.330158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.314066, 33.128258, 34.454445>,  <31.200064, 32.930664, 34.529015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.314066, 33.128258, 34.454445>,  <31.504068, 33.457577, 34.330158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.314066, 33.128258, 34.454445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091030, -0.305226, -0.947919,
		0.875261, -0.478553, 0.070040,
		-0.475007, -0.823301, 0.310715,
		31.171564, 32.881268, 34.547661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790701, 32.918842, 34.013546>,  <31.504068, 33.457577, 34.330158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790701, 32.918842, 34.013546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.436584, 32.763153, 34.115345>,  <31.224115, 32.669739, 34.176422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.436584, 32.763153, 34.115345>,  <31.790701, 32.918842, 34.013546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.436584, 32.763153, 34.115345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082100, -0.407848, -0.909351,
		0.457735, -0.825933, 0.329109,
		-0.885290, -0.389222, 0.254496,
		31.170998, 32.646385, 34.191692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875399, 32.170547, 33.716534>,  <31.790701, 32.918842, 34.013546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875399, 32.170547, 33.716534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485344, 32.195984, 33.801449>,  <31.251312, 32.211246, 33.852398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485344, 32.195984, 33.801449>,  <31.875399, 32.170547, 33.716534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.485344, 32.195984, 33.801449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213038, -0.532856, -0.818950,
		0.061044, -0.843813, 0.533154,
		-0.975135, 0.063590, 0.212292,
		31.192802, 32.215061, 33.865135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655449, 31.473219, 33.584900>,  <31.875399, 32.170547, 33.716534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655449, 31.473219, 33.584900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.317133, 31.686256, 33.572327>,  <31.114143, 31.814079, 33.564781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.317133, 31.686256, 33.572327>,  <31.655449, 31.473219, 33.584900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.317133, 31.686256, 33.572327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243687, -0.438064, -0.865284,
		-0.474617, -0.724185, 0.500295,
		-0.845787, 0.532593, -0.031438,
		31.063396, 31.846033, 33.562897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.163935, 31.010582, 33.385677>,  <31.655449, 31.473219, 33.584900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.163935, 31.010582, 33.385677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.055811, 31.381250, 33.281212>,  <30.990936, 31.603651, 33.218533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.055811, 31.381250, 33.281212>,  <31.163935, 31.010582, 33.385677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.055811, 31.381250, 33.281212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346103, -0.346661, -0.871802,
		-0.898412, -0.145267, 0.414431,
		-0.270312, 0.926673, -0.261167,
		30.974718, 31.659252, 33.202862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.584742, 30.869127, 32.966763>,  <31.163935, 31.010582, 33.385677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.584742, 30.869127, 32.966763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704313, 31.242756, 32.888630>,  <30.776056, 31.466932, 32.841751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704313, 31.242756, 32.888630>,  <30.584742, 30.869127, 32.966763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704313, 31.242756, 32.888630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203555, -0.137571, -0.969350,
		-0.932313, 0.329527, 0.149011,
		0.298928, 0.934070, -0.195336,
		30.793991, 31.522976, 32.830029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.082352, 31.099293, 32.614536>,  <30.584742, 30.869127, 32.966763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.082352, 31.099293, 32.614536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.368559, 31.356457, 32.505211>,  <30.540283, 31.510756, 32.439617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.368559, 31.356457, 32.505211>,  <30.082352, 31.099293, 32.614536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.368559, 31.356457, 32.505211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270046, -0.106278, -0.956964,
		-0.644288, 0.758533, 0.097571,
		0.715519, 0.642909, -0.273312,
		30.583214, 31.549330, 32.423218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.803242, 31.588226, 32.190132>,  <30.082352, 31.099293, 32.614536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.803242, 31.588226, 32.190132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.194822, 31.610336, 32.111549>,  <30.429771, 31.623602, 32.064400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.194822, 31.610336, 32.111549>,  <29.803242, 31.588226, 32.190132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.194822, 31.610336, 32.111549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202479, 0.142557, -0.968855,
		-0.025546, 0.988242, 0.150748,
		0.978953, 0.055274, -0.196457,
		30.488508, 31.626919, 32.052612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.835409, 31.889011, 31.607437>,  <29.803242, 31.588226, 32.190132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.835409, 31.889011, 31.607437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.213074, 31.757776, 31.595285>,  <30.439672, 31.679035, 31.587994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.213074, 31.757776, 31.595285>,  <29.835409, 31.889011, 31.607437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.213074, 31.757776, 31.595285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014463, 0.050848, -0.998602,
		0.329172, 0.943279, 0.043263,
		0.944159, -0.328086, -0.030380,
		30.496321, 31.659351, 31.586172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.240219, 32.491714, 31.365274>,  <29.835409, 31.889011, 31.607437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.240219, 32.491714, 31.365274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.423529, 32.141411, 31.304569>,  <30.533514, 31.931229, 31.268147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.423529, 32.141411, 31.304569>,  <30.240219, 32.491714, 31.365274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.423529, 32.141411, 31.304569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016469, 0.162350, -0.986596,
		0.888659, 0.454629, 0.059978,
		0.458272, -0.875760, -0.151761,
		30.561010, 31.878683, 31.259041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.849230, 32.683784, 30.970453>,  <30.240219, 32.491714, 31.365274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.849230, 32.683784, 30.970453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.762865, 32.294987, 30.933355>,  <30.711046, 32.061707, 30.911097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.762865, 32.294987, 30.933355>,  <30.849230, 32.683784, 30.970453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.762865, 32.294987, 30.933355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228893, 0.142723, -0.962932,
		0.949205, -0.186681, -0.253299,
		-0.215913, -0.971998, -0.092743,
		30.698092, 32.003387, 30.905533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.074881, 32.450512, 30.373041>,  <30.849230, 32.683784, 30.970453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.074881, 32.450512, 30.373041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.835196, 32.138474, 30.445038>,  <30.691385, 31.951250, 30.488235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.835196, 32.138474, 30.445038>,  <31.074881, 32.450512, 30.373041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.835196, 32.138474, 30.445038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293277, 0.004692, -0.956016,
		0.744938, -0.625645, -0.231595,
		-0.599213, -0.780094, 0.179992,
		30.655432, 31.904446, 30.499035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.168669, 32.119793, 29.808693>,  <31.074881, 32.450512, 30.373041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.168669, 32.119793, 29.808693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.839594, 31.936567, 29.943367>,  <30.642149, 31.826632, 30.024172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.839594, 31.936567, 29.943367>,  <31.168669, 32.119793, 29.808693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.839594, 31.936567, 29.943367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270249, -0.205924, -0.940511,
		0.500150, -0.864737, 0.045619,
		-0.822688, -0.458068, 0.336687,
		30.592787, 31.799147, 30.044373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.164097, 31.456337, 29.499300>,  <31.168669, 32.119793, 29.808693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.164097, 31.456337, 29.499300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.790228, 31.546949, 29.608896>,  <30.565907, 31.601316, 29.674654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.790228, 31.546949, 29.608896>,  <31.164097, 31.456337, 29.499300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.790228, 31.546949, 29.608896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334469, -0.299112, -0.893679,
		-0.120492, -0.926939, 0.355340,
		-0.934672, 0.226532, 0.273991,
		30.509827, 31.614910, 29.691093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.826365, 30.874044, 29.321548>,  <31.164097, 31.456337, 29.499300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.826365, 30.874044, 29.321548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.572319, 31.182997, 29.324568>,  <30.419891, 31.368368, 29.326380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.572319, 31.182997, 29.324568>,  <30.826365, 30.874044, 29.321548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.572319, 31.182997, 29.324568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447506, -0.359974, -0.818631,
		-0.629579, -0.523301, 0.574270,
		-0.635113, 0.772382, 0.007549,
		30.381784, 31.414711, 29.326832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.158268, 30.619905, 29.056360>,  <30.826365, 30.874044, 29.321548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.158268, 30.619905, 29.056360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.120537, 31.017956, 29.067854>,  <30.097898, 31.256786, 29.074751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.120537, 31.017956, 29.067854>,  <30.158268, 30.619905, 29.056360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.120537, 31.017956, 29.067854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449619, -0.016830, -0.893062,
		-0.888226, -0.097160, 0.449015,
		-0.094327, 0.995126, 0.028736,
		30.092239, 31.316494, 29.076475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.410999, 30.663284, 28.885393>,  <30.158268, 30.619905, 29.056360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.410999, 30.663284, 28.885393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.589777, 31.009939, 28.796686>,  <29.697042, 31.217932, 28.743462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.589777, 31.009939, 28.796686>,  <29.410999, 30.663284, 28.885393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.589777, 31.009939, 28.796686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332736, -0.069067, -0.940488,
		-0.830379, 0.494134, 0.257492,
		0.446943, 0.866638, -0.221767,
		29.723860, 31.269930, 28.730156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.940901, 31.093611, 28.625601>,  <29.410999, 30.663284, 28.885393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.940901, 31.093611, 28.625601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.276093, 31.273359, 28.501759>,  <29.477207, 31.381208, 28.427454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.276093, 31.273359, 28.501759>,  <28.940901, 31.093611, 28.625601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.276093, 31.273359, 28.501759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396552, 0.111692, -0.911193,
		-0.374885, 0.886335, 0.271795,
		0.837979, 0.449373, -0.309606,
		29.527487, 31.408171, 28.408876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.741331, 31.661167, 28.241047>,  <28.940901, 31.093611, 28.625601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.741331, 31.661167, 28.241047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.115788, 31.604931, 28.112129>,  <29.340462, 31.571190, 28.034779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.115788, 31.604931, 28.112129>,  <28.741331, 31.661167, 28.241047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.115788, 31.604931, 28.112129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319350, 0.043644, -0.946631,
		0.147154, 0.989105, -0.004040,
		0.936142, -0.140591, -0.322293,
		29.396629, 31.562754, 28.015442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.847000, 32.123959, 27.544769>,  <28.741331, 31.661167, 28.241047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.847000, 32.123959, 27.544769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.169567, 31.887465, 27.540142>,  <29.363108, 31.745567, 27.537365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.169567, 31.887465, 27.540142>,  <28.847000, 32.123959, 27.544769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.169567, 31.887465, 27.540142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009113, 0.007138, -0.999933,
		0.591278, 0.806468, 0.000368,
		0.806416, -0.591235, -0.011569,
		29.411491, 31.710094, 27.536671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.192316, 32.405228, 27.032856>,  <28.847000, 32.123959, 27.544769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.192316, 32.405228, 27.032856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389084, 32.059986, 27.078569>,  <29.507145, 31.852840, 27.105997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389084, 32.059986, 27.078569>,  <29.192316, 32.405228, 27.032856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.389084, 32.059986, 27.078569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010533, -0.125352, -0.992056,
		0.870578, 0.489215, -0.052571,
		0.491918, -0.863108, 0.114281,
		29.536659, 31.801054, 27.112854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.902481, 32.379002, 26.695772>,  <29.192316, 32.405228, 27.032856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.902481, 32.379002, 26.695772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.738880, 32.015018, 26.723154>,  <29.640718, 31.796627, 26.739584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.738880, 32.015018, 26.723154>,  <29.902481, 32.379002, 26.695772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.738880, 32.015018, 26.723154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159273, -0.002678, -0.987231,
		0.898525, -0.414684, -0.143836,
		-0.409004, -0.909961, 0.068454,
		29.616179, 31.742029, 26.743690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.218584, 31.910370, 26.254627>,  <29.902481, 32.379002, 26.695772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.218584, 31.910370, 26.254627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.857693, 31.742990, 26.296366>,  <29.641157, 31.642563, 26.321409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.857693, 31.742990, 26.296366>,  <30.218584, 31.910370, 26.254627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.857693, 31.742990, 26.296366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075332, -0.085314, -0.993502,
		0.424630, -0.904225, 0.045450,
		-0.902227, -0.418447, 0.104344,
		29.587025, 31.617456, 26.327669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.291473, 31.420626, 25.814470>,  <30.218584, 31.910370, 26.254627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.291473, 31.420626, 25.814470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.893572, 31.442842, 25.848825>,  <29.654831, 31.456173, 25.869438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.893572, 31.442842, 25.848825>,  <30.291473, 31.420626, 25.814470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.893572, 31.442842, 25.848825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096609, -0.234417, -0.967324,
		-0.033594, -0.970548, 0.238553,
		-0.994755, 0.055543, 0.085889,
		29.595146, 31.459505, 25.874592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.975590, 30.865255, 25.433292>,  <30.291473, 31.420626, 25.814470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.975590, 30.865255, 25.433292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.701990, 31.156261, 25.454712>,  <29.537830, 31.330866, 25.467564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.701990, 31.156261, 25.454712>,  <29.975590, 30.865255, 25.433292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.701990, 31.156261, 25.454712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151749, -0.070105, -0.985930,
		-0.713526, -0.682500, 0.158352,
		-0.683998, 0.727516, 0.053547,
		29.496790, 31.374516, 25.470776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.369656, 30.680170, 24.978083>,  <29.975590, 30.865255, 25.433292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.369656, 30.680170, 24.978083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.335344, 31.077290, 25.011539>,  <29.314758, 31.315561, 25.031614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.335344, 31.077290, 25.011539>,  <29.369656, 30.680170, 24.978083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.335344, 31.077290, 25.011539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184833, 0.066639, -0.980508,
		-0.979019, -0.099564, 0.177786,
		-0.085776, 0.992797, 0.083644,
		29.309612, 31.375130, 25.036633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.905817, 30.859747, 24.431528>,  <29.369656, 30.680170, 24.978083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.905817, 30.859747, 24.431528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.047234, 31.208733, 24.566475>,  <29.132084, 31.418123, 24.647444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.047234, 31.208733, 24.566475>,  <28.905817, 30.859747, 24.431528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.047234, 31.208733, 24.566475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306450, 0.448782, -0.839454,
		-0.883798, 0.193394, 0.426028,
		0.353539, 0.872464, 0.337367,
		29.153296, 31.470472, 24.667685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.456606, 31.348669, 24.104286>,  <28.905817, 30.859747, 24.431528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.456606, 31.348669, 24.104286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.781563, 31.566784, 24.186926>,  <28.976536, 31.697653, 24.236509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.781563, 31.566784, 24.186926>,  <28.456606, 31.348669, 24.104286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.781563, 31.566784, 24.186926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099784, 0.479074, -0.872084,
		-0.574514, 0.687857, 0.443606,
		0.812390, 0.545289, 0.206598,
		29.025280, 31.730371, 24.248905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.265066, 32.058086, 23.864880>,  <28.456606, 31.348669, 24.104286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.265066, 32.058086, 23.864880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.663864, 32.047112, 23.893854>,  <28.903143, 32.040527, 23.911238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.663864, 32.047112, 23.893854>,  <28.265066, 32.058086, 23.864880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.663864, 32.047112, 23.893854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076136, 0.519223, -0.851241,
		-0.014251, 0.854198, 0.519753,
		0.996996, -0.027441, 0.072434,
		28.962963, 32.038879, 23.915585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.504877, 32.713497, 23.682545>,  <28.265066, 32.058086, 23.864880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.504877, 32.713497, 23.682545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.840351, 32.509087, 23.607220>,  <29.041636, 32.386440, 23.562025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.840351, 32.509087, 23.607220>,  <28.504877, 32.713497, 23.682545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.840351, 32.509087, 23.607220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088525, 0.469091, -0.878702,
		0.537372, 0.720285, 0.438658,
		0.838686, -0.511022, -0.188313,
		29.091957, 32.355782, 23.550726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.888071, 33.161301, 23.358156>,  <28.504877, 32.713497, 23.682545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.888071, 33.161301, 23.358156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.071568, 32.826580, 23.238611>,  <29.181665, 32.625748, 23.166883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.071568, 32.826580, 23.238611>,  <28.888071, 33.161301, 23.358156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.071568, 32.826580, 23.238611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162922, 0.409851, -0.897484,
		0.873507, 0.363021, 0.324349,
		0.458740, -0.836802, -0.298864,
		29.209190, 32.575539, 23.148952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.344027, 33.273830, 22.886841>,  <28.888071, 33.161301, 23.358156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.344027, 33.273830, 22.886841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.307575, 32.888691, 22.785166>,  <29.285706, 32.657608, 22.724161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.307575, 32.888691, 22.785166>,  <29.344027, 33.273830, 22.886841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.307575, 32.888691, 22.785166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104934, 0.244544, -0.963944,
		0.990295, -0.114514, 0.078751,
		-0.091127, -0.962852, -0.254187,
		29.280237, 32.599834, 22.708910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.872238, 33.137936, 22.357788>,  <29.344027, 33.273830, 22.886841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.872238, 33.137936, 22.357788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.594093, 32.852776, 22.321468>,  <29.427206, 32.681679, 22.299677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.594093, 32.852776, 22.321468>,  <29.872238, 33.137936, 22.357788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.594093, 32.852776, 22.321468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012926, 0.138734, -0.990245,
		0.718545, -0.687404, -0.105685,
		-0.695361, -0.712902, -0.090801,
		29.385485, 32.638905, 22.294228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.195255, 32.668915, 21.956909>,  <29.872238, 33.137936, 22.357788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.195255, 32.668915, 21.956909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.796391, 32.640934, 21.945782>,  <29.557072, 32.624146, 21.939106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.796391, 32.640934, 21.945782>,  <30.195255, 32.668915, 21.956909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.796391, 32.640934, 21.945782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024443, 0.048624, -0.998518,
		0.071219, -0.996363, -0.046776,
		-0.997161, -0.069970, -0.027817,
		29.497242, 32.619946, 21.937437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.047426, 32.382359, 21.317623>,  <30.195255, 32.668915, 21.956909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.047426, 32.382359, 21.317623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.675779, 32.495293, 21.413141>,  <29.452791, 32.563053, 21.470453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.675779, 32.495293, 21.413141>,  <30.047426, 32.382359, 21.317623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.675779, 32.495293, 21.413141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233048, 0.054294, -0.970948,
		-0.287102, -0.957777, 0.015353,
		-0.929118, 0.282339, 0.238796,
		29.397043, 32.579994, 21.484779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.620571, 32.034176, 20.844469>,  <30.047426, 32.382359, 21.317623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.620571, 32.034176, 20.844469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.418400, 32.341534, 21.001499>,  <29.297096, 32.525948, 21.095716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.418400, 32.341534, 21.001499>,  <29.620571, 32.034176, 20.844469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.418400, 32.341534, 21.001499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318338, 0.256817, -0.912527,
		-0.802000, -0.586188, 0.114806,
		-0.505428, 0.768394, 0.392573,
		29.266771, 32.572052, 21.119270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.173388, 32.429653, 20.218452>,  <29.620571, 32.034176, 20.844469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.173388, 32.429653, 20.218452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.331232, 32.728310, 20.432673>,  <29.425940, 32.907501, 20.561205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.331232, 32.728310, 20.432673>,  <29.173388, 32.429653, 20.218452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.331232, 32.728310, 20.432673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305359, 0.656285, -0.689961,
		-0.866624, 0.108732, 0.486970,
		0.394612, 0.746637, 0.535550,
		29.449615, 32.952301, 20.593338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.675337, 32.954357, 20.266752>,  <29.173388, 32.429653, 20.218452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.675337, 32.954357, 20.266752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.025036, 33.145947, 20.298443>,  <29.234856, 33.260902, 20.317457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.025036, 33.145947, 20.298443>,  <28.675337, 32.954357, 20.266752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.025036, 33.145947, 20.298443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311604, 0.678747, -0.664985,
		-0.372286, 0.556673, 0.742642,
		0.874246, 0.478976, 0.079226,
		29.287310, 33.289639, 20.322210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.582947, 33.683086, 20.415352>,  <28.675337, 32.954357, 20.266752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.582947, 33.683086, 20.415352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.934771, 33.652206, 20.227560>,  <29.145864, 33.633678, 20.114885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.934771, 33.652206, 20.227560>,  <28.582947, 33.683086, 20.415352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.934771, 33.652206, 20.227560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284815, 0.704981, -0.649525,
		0.381120, 0.705012, 0.598085,
		0.879561, -0.077204, -0.469480,
		29.198639, 33.629044, 20.086716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.048418, 34.128101, 20.823355>,  <28.582947, 33.683086, 20.415352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.048418, 34.128101, 20.823355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.122147, 34.518120, 20.872862>,  <28.166384, 34.752129, 20.902567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.122147, 34.518120, 20.872862>,  <28.048418, 34.128101, 20.823355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.122147, 34.518120, 20.872862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064169, 0.113719, -0.991439,
		-0.980769, 0.190685, -0.041606,
		0.184321, 0.975042, 0.123768,
		28.177443, 34.810631, 20.909992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.637201, 34.415672, 20.268766>,  <28.048418, 34.128101, 20.823355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.637201, 34.415672, 20.268766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.873493, 34.721355, 20.372322>,  <28.015268, 34.904766, 20.434456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.873493, 34.721355, 20.372322>,  <27.637201, 34.415672, 20.268766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.873493, 34.721355, 20.372322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066005, 0.274009, -0.959459,
		-0.804166, 0.583868, 0.111424,
		0.590729, 0.764210, 0.258887,
		28.050713, 34.950619, 20.449987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.361090, 35.100037, 20.169449>,  <27.637201, 34.415672, 20.268766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.361090, 35.100037, 20.169449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.756662, 35.068699, 20.119047>,  <27.994005, 35.049896, 20.088806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.756662, 35.068699, 20.119047>,  <27.361090, 35.100037, 20.169449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.756662, 35.068699, 20.119047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098500, 0.288436, -0.952419,
		0.110959, 0.954289, 0.277526,
		0.988932, -0.078343, -0.126002,
		28.053341, 35.045197, 20.081247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.777191, 35.804970, 19.992315>,  <27.361090, 35.100037, 20.169449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.777191, 35.804970, 19.992315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.867825, 35.446632, 19.839413>,  <27.922205, 35.231628, 19.747671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.867825, 35.446632, 19.839413>,  <27.777191, 35.804970, 19.992315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.867825, 35.446632, 19.839413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064731, 0.405448, -0.911823,
		0.971839, 0.181860, 0.149857,
		0.226583, -0.895845, -0.382258,
		27.935799, 35.177879, 19.724735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.469269, 35.763222, 19.593763>,  <27.777191, 35.804970, 19.992315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.469269, 35.763222, 19.593763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.164978, 35.540771, 19.459885>,  <27.982405, 35.407303, 19.379557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.164978, 35.540771, 19.459885>,  <28.469269, 35.763222, 19.593763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.164978, 35.540771, 19.459885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147592, 0.353937, -0.923550,
		0.632071, -0.751967, -0.187169,
		-0.760726, -0.556124, -0.334698,
		27.936760, 35.373936, 19.359476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.955582, 35.622704, 20.044209>,  <28.469269, 35.763222, 19.593763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.955582, 35.622704, 20.044209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.567142, 35.565300, 20.120497>,  <28.334080, 35.530857, 20.166269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.567142, 35.565300, 20.120497>,  <28.955582, 35.622704, 20.044209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.567142, 35.565300, 20.120497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217198, -0.199980, 0.955423,
		-0.098973, 0.969233, 0.225370,
		-0.971097, -0.143511, 0.190723,
		28.275814, 35.522247, 20.177713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.802109, 35.948746, 20.617777>,  <28.955582, 35.622704, 20.044209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.802109, 35.948746, 20.617777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.537279, 35.649597, 20.598394>,  <28.378382, 35.470108, 20.586765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.537279, 35.649597, 20.598394>,  <28.802109, 35.948746, 20.617777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.537279, 35.649597, 20.598394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092764, -0.145937, 0.984935,
		-0.743677, 0.647604, 0.165996,
		-0.662073, -0.747872, -0.048456,
		28.338657, 35.425236, 20.583858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.377325, 36.054028, 21.162624>,  <28.802109, 35.948746, 20.617777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.377325, 36.054028, 21.162624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.291662, 35.670910, 21.085928>,  <28.240265, 35.441040, 21.039909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.291662, 35.670910, 21.085928>,  <28.377325, 36.054028, 21.162624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.291662, 35.670910, 21.085928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125637, -0.167655, 0.977807,
		-0.968686, 0.233492, -0.084430,
		-0.214155, -0.957796, -0.191741,
		28.227415, 35.383572, 21.028406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.598450, 35.927048, 21.367455>,  <28.377325, 36.054028, 21.162624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.598450, 35.927048, 21.367455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820942, 35.594666, 21.371752>,  <27.954437, 35.395237, 21.374331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820942, 35.594666, 21.371752>,  <27.598450, 35.927048, 21.367455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.820942, 35.594666, 21.371752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011223, 0.005415, 0.999922,
		-0.830952, -0.556309, -0.006314,
		0.556231, -0.830958, 0.010743,
		27.987812, 35.345379, 21.374975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.404659, 35.534439, 21.908533>,  <27.598450, 35.927048, 21.367455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.404659, 35.534439, 21.908533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.774424, 35.387646, 21.866993>,  <27.996283, 35.299568, 21.842070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.774424, 35.387646, 21.866993>,  <27.404659, 35.534439, 21.908533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.774424, 35.387646, 21.866993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113202, 0.003989, 0.993564,
		-0.364212, -0.930217, 0.045231,
		0.924411, -0.366988, -0.103850,
		28.051746, 35.277550, 21.835838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.452969, 35.101257, 22.389538>,  <27.404659, 35.534439, 21.908533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.452969, 35.101257, 22.389538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.835739, 35.184048, 22.308094>,  <28.065401, 35.233723, 22.259228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.835739, 35.184048, 22.308094>,  <27.452969, 35.101257, 22.389538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.835739, 35.184048, 22.308094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202395, 0.027257, 0.978924,
		0.208162, -0.977966, -0.015808,
		0.956925, 0.206975, -0.203610,
		28.122816, 35.246140, 22.247011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.784697, 34.692791, 22.992090>,  <27.452969, 35.101257, 22.389538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.784697, 34.692791, 22.992090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.078873, 34.925072, 22.852423>,  <28.255379, 35.064442, 22.768623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.078873, 34.925072, 22.852423>,  <27.784697, 34.692791, 22.992090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.078873, 34.925072, 22.852423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487214, -0.095068, 0.868093,
		0.470907, -0.808548, -0.352842,
		0.735438, 0.580701, -0.349167,
		28.299503, 35.099281, 22.747673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.404079, 34.350948, 23.098047>,  <27.784697, 34.692791, 22.992090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.404079, 34.350948, 23.098047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.490705, 34.741455, 23.099127>,  <28.542681, 34.975758, 23.099775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.490705, 34.741455, 23.099127>,  <28.404079, 34.350948, 23.098047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.490705, 34.741455, 23.099127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489799, -0.111044, 0.864735,
		0.844510, -0.185948, -0.502222,
		0.216564, 0.976265, 0.002700,
		28.555676, 35.034336, 23.099937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.921215, 34.385166, 23.526270>,  <28.404079, 34.350948, 23.098047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.921215, 34.385166, 23.526270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.797413, 34.764927, 23.504955>,  <28.723131, 34.992783, 23.492167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.797413, 34.764927, 23.504955>,  <28.921215, 34.385166, 23.526270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.797413, 34.764927, 23.504955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293495, 0.148683, 0.944327,
		0.904470, 0.276636, -0.324663,
		-0.309507, 0.949403, -0.053288,
		28.704561, 35.049747, 23.488970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.497349, 34.715805, 23.697132>,  <28.921215, 34.385166, 23.526270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.497349, 34.715805, 23.697132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182512, 34.948799, 23.778320>,  <28.993610, 35.088596, 23.827034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182512, 34.948799, 23.778320>,  <29.497349, 34.715805, 23.697132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.182512, 34.948799, 23.778320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355502, 0.159457, 0.920973,
		0.504088, 0.797047, -0.332582,
		-0.787092, 0.582485, 0.202971,
		28.946384, 35.123547, 23.839212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.766220, 35.359032, 23.971825>,  <29.497349, 34.715805, 23.697132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.766220, 35.359032, 23.971825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.381561, 35.355095, 24.081470>,  <29.150766, 35.352734, 24.147259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.381561, 35.355095, 24.081470>,  <29.766220, 35.359032, 23.971825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.381561, 35.355095, 24.081470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257796, 0.308920, 0.915483,
		-0.093687, 0.951037, -0.294536,
		-0.961646, -0.009839, 0.274116,
		29.093067, 35.352142, 24.163706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.672239, 36.035156, 24.360071>,  <29.766220, 35.359032, 23.971825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.672239, 36.035156, 24.360071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.346161, 35.819195, 24.443939>,  <29.150515, 35.689617, 24.494261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.346161, 35.819195, 24.443939>,  <29.672239, 36.035156, 24.360071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.346161, 35.819195, 24.443939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166065, 0.128929, 0.977650,
		-0.554869, 0.831794, -0.015443,
		-0.815195, -0.539903, 0.209671,
		29.101603, 35.657223, 24.506840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.385378, 36.376949, 24.939430>,  <29.672239, 36.035156, 24.360071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.385378, 36.376949, 24.939430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.244902, 36.003246, 24.964197>,  <29.160616, 35.779026, 24.979057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.244902, 36.003246, 24.964197>,  <29.385378, 36.376949, 24.939430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.244902, 36.003246, 24.964197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032400, 0.053966, 0.998017,
		-0.935744, 0.352498, 0.011318,
		-0.351189, -0.934255, 0.061919,
		29.139545, 35.722969, 24.982773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.857115, 36.302509, 25.469418>,  <29.385378, 36.376949, 24.939430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.857115, 36.302509, 25.469418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.028057, 35.945042, 25.414677>,  <29.130623, 35.730560, 25.381832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.028057, 35.945042, 25.414677>,  <28.857115, 36.302509, 25.469418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.028057, 35.945042, 25.414677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161746, -0.073353, 0.984102,
		-0.889498, -0.442696, 0.113199,
		0.427355, -0.893666, -0.136851,
		29.156263, 35.676941, 25.373621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863420, 36.100273, 26.095955>,  <28.857115, 36.302509, 25.469418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.863420, 36.100273, 26.095955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.059847, 35.783165, 25.951530>,  <29.177702, 35.592899, 25.864876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.059847, 35.783165, 25.951530>,  <28.863420, 36.100273, 26.095955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.059847, 35.783165, 25.951530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255278, -0.265322, 0.929751,
		-0.832880, -0.548738, 0.072087,
		0.491064, -0.792774, -0.361062,
		29.207167, 35.545334, 25.843212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.648516, 35.503586, 26.470316>,  <28.863420, 36.100273, 26.095955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.648516, 35.503586, 26.470316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.994488, 35.385689, 26.307825>,  <29.202070, 35.314949, 26.210331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.994488, 35.385689, 26.307825>,  <28.648516, 35.503586, 26.470316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.994488, 35.385689, 26.307825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352874, -0.218434, 0.909817,
		-0.356897, -0.930275, -0.084922,
		0.864930, -0.294744, -0.406229,
		29.253967, 35.297264, 26.185957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.745041, 34.912113, 26.814466>,  <28.648516, 35.503586, 26.470316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.745041, 34.912113, 26.814466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.098324, 35.020237, 26.661169>,  <29.310293, 35.085114, 26.569191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.098324, 35.020237, 26.661169>,  <28.745041, 34.912113, 26.814466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.098324, 35.020237, 26.661169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448980, -0.251240, 0.857494,
		0.135504, -0.929414, -0.343261,
		0.883207, 0.270312, -0.383244,
		29.363287, 35.101330, 26.546196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.208773, 34.372730, 26.893167>,  <28.745041, 34.912113, 26.814466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.208773, 34.372730, 26.893167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.417585, 34.713490, 26.876419>,  <29.542873, 34.917946, 26.866369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.417585, 34.713490, 26.876419>,  <29.208773, 34.372730, 26.893167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.417585, 34.713490, 26.876419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588262, -0.324064, 0.740898,
		0.617601, -0.411403, -0.670311,
		0.522031, 0.851898, -0.041871,
		29.574194, 34.969059, 26.863857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.892431, 34.145378, 26.969563>,  <29.208773, 34.372730, 26.893167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.892431, 34.145378, 26.969563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.931376, 34.538456, 27.032587>,  <29.954742, 34.774303, 27.070402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.931376, 34.538456, 27.032587>,  <29.892431, 34.145378, 26.969563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.931376, 34.538456, 27.032587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750107, -0.176500, 0.637328,
		0.654111, 0.056137, -0.754313,
		0.097358, 0.982699, 0.157559,
		29.960583, 34.833267, 27.079855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.565014, 34.228607, 27.016142>,  <29.892431, 34.145378, 26.969563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.565014, 34.228607, 27.016142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.406836, 34.561394, 27.171810>,  <30.311928, 34.761066, 27.265211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.406836, 34.561394, 27.171810>,  <30.565014, 34.228607, 27.016142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.406836, 34.561394, 27.171810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696260, -0.004810, 0.717774,
		0.599036, 0.554804, -0.577363,
		-0.395446, 0.831967, 0.389169,
		30.288202, 34.810986, 27.288561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.088350, 34.571678, 27.331903>,  <30.565014, 34.228607, 27.016142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.088350, 34.571678, 27.331903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.786648, 34.766071, 27.508499>,  <30.605627, 34.882710, 27.614456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.786648, 34.766071, 27.508499>,  <31.088350, 34.571678, 27.331903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.786648, 34.766071, 27.508499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512317, 0.015074, 0.858664,
		0.410645, 0.873836, -0.260349,
		-0.754256, 0.485987, 0.441491,
		30.560371, 34.911869, 27.640945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.414795, 35.087185, 27.766848>,  <31.088350, 34.571678, 27.331903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.414795, 35.087185, 27.766848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.042706, 35.039543, 27.905697>,  <30.819452, 35.010956, 27.989006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.042706, 35.039543, 27.905697>,  <31.414795, 35.087185, 27.766848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.042706, 35.039543, 27.905697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357653, -0.082248, 0.930226,
		-0.082248, 0.989469, 0.119109,
		-0.930226, -0.119109, 0.347122,
		30.763638, 35.003811, 28.009832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403389, 35.536533, 28.354378>,  <31.414795, 35.087185, 27.766848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403389, 35.536533, 28.354378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.099142, 35.278465, 28.383261>,  <30.916594, 35.123623, 28.400591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.099142, 35.278465, 28.383261>,  <31.403389, 35.536533, 28.354378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.099142, 35.278465, 28.383261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120614, -0.031147, 0.992211,
		-0.637897, 0.763402, 0.101508,
		-0.760618, -0.645172, 0.072208,
		30.870956, 35.084915, 28.404922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980650, 35.875153, 28.877136>,  <31.403389, 35.536533, 28.354378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980650, 35.875153, 28.877136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.933090, 35.480175, 28.835546>,  <30.904554, 35.243187, 28.810593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.933090, 35.480175, 28.835546>,  <30.980650, 35.875153, 28.877136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.933090, 35.480175, 28.835546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027862, -0.101357, 0.994460,
		-0.992515, 0.121139, -0.015460,
		-0.118901, -0.987447, -0.103974,
		30.897421, 35.183941, 28.804354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.385689, 35.728516, 29.282301>,  <30.980650, 35.875153, 28.877136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.385689, 35.728516, 29.282301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.581337, 35.384464, 29.224421>,  <30.698727, 35.178032, 29.189693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.581337, 35.384464, 29.224421>,  <30.385689, 35.728516, 29.282301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.581337, 35.384464, 29.224421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072212, -0.125396, 0.989475,
		-0.869221, -0.494423, 0.000778,
		0.489122, -0.860129, -0.144700,
		30.728073, 35.126427, 29.181011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.117311, 35.313690, 29.704651>,  <30.385689, 35.728516, 29.282301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.117311, 35.313690, 29.704651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.466042, 35.125439, 29.650349>,  <30.675280, 35.012489, 29.617767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.466042, 35.125439, 29.650349>,  <30.117311, 35.313690, 29.704651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.466042, 35.125439, 29.650349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065411, -0.162807, 0.984487,
		-0.485432, -0.867180, -0.111155,
		0.871824, -0.470631, -0.135755,
		30.727589, 34.984249, 29.609623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.985477, 34.679073, 29.953882>,  <30.117311, 35.313690, 29.704651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.985477, 34.679073, 29.953882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.383997, 34.713173, 29.949398>,  <30.623108, 34.733631, 29.946709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.383997, 34.713173, 29.949398>,  <29.985477, 34.679073, 29.953882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.383997, 34.713173, 29.949398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040026, -0.344471, 0.937943,
		0.076097, -0.934918, -0.346608,
		0.996297, 0.085248, -0.011208,
		30.682886, 34.738747, 29.946035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.211618, 34.162769, 30.335608>,  <29.985477, 34.679073, 29.953882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.211618, 34.162769, 30.335608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.549618, 34.375248, 30.310921>,  <30.752417, 34.502735, 30.296108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.549618, 34.375248, 30.310921>,  <30.211618, 34.162769, 30.335608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.549618, 34.375248, 30.310921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161413, -0.143318, 0.976425,
		0.509831, -0.835037, -0.206846,
		0.844996, 0.531199, -0.061718,
		30.803116, 34.534607, 30.292406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749767, 33.766582, 30.736235>,  <30.211618, 34.162769, 30.335608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.749767, 33.766582, 30.736235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.850252, 34.153404, 30.719713>,  <30.910543, 34.385498, 30.709801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.850252, 34.153404, 30.719713>,  <30.749767, 33.766582, 30.736235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.850252, 34.153404, 30.719713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041497, 0.031871, 0.998630,
		0.967042, -0.252582, -0.032123,
		0.251213, 0.967050, -0.041302,
		30.925615, 34.443520, 30.707323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.211933, 33.881485, 31.226610>,  <30.749767, 33.766582, 30.736235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.211933, 33.881485, 31.226610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.078964, 34.251942, 31.155336>,  <30.999182, 34.474216, 31.112572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.078964, 34.251942, 31.155336>,  <31.211933, 33.881485, 31.226610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.078964, 34.251942, 31.155336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144096, 0.236583, 0.960867,
		0.932057, 0.293740, -0.212100,
		-0.332424, 0.926145, -0.178182,
		30.979237, 34.529785, 31.101881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652679, 34.307449, 31.622229>,  <31.211933, 33.881485, 31.226610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652679, 34.307449, 31.622229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338135, 34.543140, 31.547998>,  <31.149408, 34.684555, 31.503460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338135, 34.543140, 31.547998>,  <31.652679, 34.307449, 31.622229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.338135, 34.543140, 31.547998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010593, 0.287494, 0.957724,
		0.617673, 0.755085, -0.219833,
		-0.786364, 0.589231, -0.185576,
		31.102226, 34.719910, 31.492325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826099, 35.008862, 31.851048>,  <31.652679, 34.307449, 31.622229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826099, 35.008862, 31.851048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426216, 35.006161, 31.860285>,  <31.186285, 35.004539, 31.865828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426216, 35.006161, 31.860285>,  <31.826099, 35.008862, 31.851048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426216, 35.006161, 31.860285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021574, 0.173409, 0.984614,
		-0.010657, 0.984827, -0.173213,
		-0.999710, -0.006756, 0.023094,
		31.126303, 35.004135, 31.867212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619810, 35.680893, 32.281681>,  <31.826099, 35.008862, 31.851048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619810, 35.680893, 32.281681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.298100, 35.443806, 32.264587>,  <31.105074, 35.301552, 32.254330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.298100, 35.443806, 32.264587>,  <31.619810, 35.680893, 32.281681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.298100, 35.443806, 32.264587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315917, 0.365552, 0.875539,
		-0.503327, 0.717674, -0.481254,
		-0.804275, -0.592719, -0.042733,
		31.056816, 35.265991, 32.251766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.112206, 36.142097, 32.449520>,  <31.619810, 35.680893, 32.281681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.112206, 36.142097, 32.449520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.982170, 35.768337, 32.507767>,  <30.904148, 35.544079, 32.542713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.982170, 35.768337, 32.507767>,  <31.112206, 36.142097, 32.449520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.982170, 35.768337, 32.507767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260842, 0.236606, 0.935938,
		-0.908999, 0.266279, -0.320650,
		-0.325089, -0.934405, 0.145618,
		30.884644, 35.488014, 32.551453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470886, 36.189854, 32.738056>,  <31.112206, 36.142097, 32.449520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.470886, 36.189854, 32.738056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.615528, 35.830284, 32.836998>,  <30.702314, 35.614544, 32.896362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.615528, 35.830284, 32.836998>,  <30.470886, 36.189854, 32.738056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.615528, 35.830284, 32.836998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276480, 0.149983, 0.949244,
		-0.890393, -0.411641, -0.194299,
		0.361606, -0.898920, 0.247354,
		30.724010, 35.560608, 32.911205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.148079, 36.182320, 33.293598>,  <30.470886, 36.189854, 32.738056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.148079, 36.182320, 33.293598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.357204, 35.842091, 33.316166>,  <30.482679, 35.637951, 33.329708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.357204, 35.842091, 33.316166>,  <30.148079, 36.182320, 33.293598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.357204, 35.842091, 33.316166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020443, 0.078680, 0.996690,
		-0.852201, -0.519930, 0.058523,
		0.522814, -0.850577, 0.056422,
		30.514050, 35.586918, 33.333092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.853998, 35.803101, 33.838120>,  <30.148079, 36.182320, 33.293598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.853998, 35.803101, 33.838120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.228897, 35.676815, 33.778931>,  <30.453836, 35.601044, 33.743416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.228897, 35.676815, 33.778931>,  <29.853998, 35.803101, 33.838120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.228897, 35.676815, 33.778931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124352, -0.093821, 0.987792,
		-0.325740, -0.944206, -0.048674,
		0.937246, -0.315710, -0.147975,
		30.510071, 35.582104, 33.734539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.860764, 35.127502, 34.205227>,  <29.853998, 35.803101, 33.838120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.860764, 35.127502, 34.205227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.241892, 35.235687, 34.150116>,  <30.470570, 35.300598, 34.117050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.241892, 35.235687, 34.150116>,  <29.860764, 35.127502, 34.205227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.241892, 35.235687, 34.150116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243029, -0.407820, 0.880125,
		0.181849, -0.872086, -0.454309,
		0.952821, 0.270461, -0.137781,
		30.527739, 35.316826, 34.108780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.253801, 34.550289, 34.553036>,  <29.860764, 35.127502, 34.205227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.253801, 34.550289, 34.553036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459652, 34.892952, 34.538601>,  <30.583162, 35.098549, 34.529942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459652, 34.892952, 34.538601>,  <30.253801, 34.550289, 34.553036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.459652, 34.892952, 34.538601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255943, -0.113318, 0.960027,
		0.818323, -0.503291, -0.277571,
		0.514627, 0.856655, -0.036083,
		30.614040, 35.149948, 34.527775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.923658, 34.468975, 34.836990>,  <30.253801, 34.550289, 34.553036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.923658, 34.468975, 34.836990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.835356, 34.858551, 34.857777>,  <30.782373, 35.092297, 34.870247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.835356, 34.858551, 34.857777>,  <30.923658, 34.468975, 34.836990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.835356, 34.858551, 34.857777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299976, 0.017105, 0.953794,
		0.928052, 0.226145, -0.295935,
		-0.220758, 0.973943, 0.051964,
		30.769129, 35.150734, 34.873367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548523, 34.783901, 35.133461>,  <30.923658, 34.468975, 34.836990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548523, 34.783901, 35.133461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241816, 35.036743, 35.178215>,  <31.057791, 35.188446, 35.205067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241816, 35.036743, 35.178215>,  <31.548523, 34.783901, 35.133461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241816, 35.036743, 35.178215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303000, 0.202733, 0.931177,
		0.565915, 0.747896, -0.346976,
		-0.766767, 0.632100, 0.111883,
		31.011786, 35.226372, 35.211781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764118, 35.451241, 35.183998>,  <31.548523, 34.783901, 35.133461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764118, 35.451241, 35.183998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413185, 35.456749, 35.375870>,  <31.202625, 35.460056, 35.490993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413185, 35.456749, 35.375870>,  <31.764118, 35.451241, 35.183998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413185, 35.456749, 35.375870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434478, 0.447207, 0.781815,
		-0.203748, 0.894325, -0.398335,
		-0.877334, 0.013775, 0.479682,
		31.149984, 35.460880, 35.519775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446064, 35.425835, 34.887543>,  <31.764118, 35.451241, 35.183998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446064, 35.425835, 34.887543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744373, 35.678192, 34.973141>,  <32.923359, 35.829605, 35.024498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744373, 35.678192, 34.973141>,  <32.446064, 35.425835, 34.887543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744373, 35.678192, 34.973141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514741, -0.341776, -0.786277,
		-0.422919, 0.696536, -0.579635,
		0.745775, 0.630893, 0.213992,
		32.968105, 35.867458, 35.037338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740669, 35.902176, 34.436569>,  <32.446064, 35.425835, 34.887543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740669, 35.902176, 34.436569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058945, 35.776695, 34.643826>,  <33.249908, 35.701408, 34.768181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058945, 35.776695, 34.643826>,  <32.740669, 35.902176, 34.436569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058945, 35.776695, 34.643826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310722, -0.522904, -0.793740,
		0.519936, 0.792568, -0.318595,
		0.795687, -0.313700, 0.518145,
		33.297649, 35.682587, 34.799271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323223, 36.055702, 34.132732>,  <32.740669, 35.902176, 34.436569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323223, 36.055702, 34.132732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380913, 35.715549, 34.335140>,  <33.415527, 35.511459, 34.456585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380913, 35.715549, 34.335140>,  <33.323223, 36.055702, 34.132732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380913, 35.715549, 34.335140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411158, -0.413633, -0.812316,
		0.900083, 0.325206, 0.289986,
		0.144222, -0.850381, 0.506015,
		33.424179, 35.460434, 34.486946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024368, 35.900898, 34.024090>,  <33.323223, 36.055702, 34.132732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024368, 35.900898, 34.024090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837139, 35.556732, 34.104691>,  <33.724804, 35.350235, 34.153049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837139, 35.556732, 34.104691>,  <34.024368, 35.900898, 34.024090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837139, 35.556732, 34.104691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241448, -0.343865, -0.907447,
		0.850067, -0.376096, 0.368697,
		-0.468069, -0.860412, 0.201501,
		33.696720, 35.298607, 34.165142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536442, 35.419785, 33.805038>,  <34.024368, 35.900898, 34.024090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536442, 35.419785, 33.805038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.189575, 35.220650, 33.810429>,  <33.981453, 35.101170, 33.813663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.189575, 35.220650, 33.810429>,  <34.536442, 35.419785, 33.805038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189575, 35.220650, 33.810429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165940, -0.314342, -0.934694,
		0.469556, -0.808302, 0.355198,
		-0.867169, -0.497832, 0.013471,
		33.929424, 35.071301, 33.814468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675400, 34.731922, 33.476330>,  <34.536442, 35.419785, 33.805038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675400, 34.731922, 33.476330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283207, 34.808613, 33.458878>,  <34.047894, 34.854626, 33.448406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283207, 34.808613, 33.458878>,  <34.675400, 34.731922, 33.476330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283207, 34.808613, 33.458878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010773, -0.169177, -0.985527,
		-0.196345, -0.966755, 0.163808,
		-0.980476, 0.191739, -0.043632,
		33.989063, 34.866131, 33.445789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383713, 34.310627, 32.975559>,  <34.675400, 34.731922, 33.476330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383713, 34.310627, 32.975559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090664, 34.581852, 32.999218>,  <33.914833, 34.744587, 33.013412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090664, 34.581852, 32.999218>,  <34.383713, 34.310627, 32.975559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090664, 34.581852, 32.999218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072354, 0.008823, -0.997340,
		-0.676777, -0.734955, 0.042596,
		-0.732625, 0.678059, 0.059148,
		33.870876, 34.785271, 33.016964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.930431, 34.182083, 32.466801>,  <34.383713, 34.310627, 32.975559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.930431, 34.182083, 32.466801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784222, 34.549820, 32.525036>,  <33.696495, 34.770462, 32.559978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784222, 34.549820, 32.525036>,  <33.930431, 34.182083, 32.466801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784222, 34.549820, 32.525036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307915, 0.028178, -0.950997,
		-0.878397, -0.392442, 0.272781,
		-0.365524, 0.919345, 0.145591,
		33.674564, 34.825623, 32.568714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519321, 34.162731, 31.941839>,  <33.930431, 34.182083, 32.466801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519321, 34.162731, 31.941839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534477, 34.555023, 32.018494>,  <33.543571, 34.790398, 32.064487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534477, 34.555023, 32.018494>,  <33.519321, 34.162731, 31.941839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534477, 34.555023, 32.018494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185551, 0.195342, -0.963022,
		-0.981904, 0.000932, 0.189378,
		0.037891, 0.980734, 0.191634,
		33.545845, 34.849243, 32.075985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840317, 34.488281, 31.758774>,  <33.519321, 34.162731, 31.941839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840317, 34.488281, 31.758774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102486, 34.790386, 31.758881>,  <33.259789, 34.971649, 31.758944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102486, 34.790386, 31.758881>,  <32.840317, 34.488281, 31.758774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102486, 34.790386, 31.758881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265484, 0.230717, -0.936103,
		-0.707064, 0.613472, 0.351727,
		0.655422, 0.755263, 0.000265,
		33.299114, 35.016964, 31.758961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513470, 35.156223, 31.468361>,  <32.840317, 34.488281, 31.758774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513470, 35.156223, 31.468361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909756, 35.178818, 31.418901>,  <33.147530, 35.192375, 31.389225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909756, 35.178818, 31.418901>,  <32.513470, 35.156223, 31.468361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909756, 35.178818, 31.418901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135883, 0.384686, -0.912991,
		-0.004007, 0.921317, 0.388791,
		0.990717, 0.056488, -0.123650,
		33.206970, 35.195763, 31.381807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514423, 35.747482, 31.084076>,  <32.513470, 35.156223, 31.468361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514423, 35.747482, 31.084076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877010, 35.591244, 31.019897>,  <33.094563, 35.497501, 30.981390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877010, 35.591244, 31.019897>,  <32.514423, 35.747482, 31.084076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877010, 35.591244, 31.019897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014787, 0.409096, -0.912372,
		0.422007, 0.824667, 0.376610,
		0.906472, -0.390596, -0.160447,
		33.148952, 35.474064, 30.971764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781952, 36.238911, 30.764538>,  <32.514423, 35.747482, 31.084076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781952, 36.238911, 30.764538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027985, 35.935513, 30.678411>,  <33.175606, 35.753475, 30.626736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027985, 35.935513, 30.678411>,  <32.781952, 36.238911, 30.764538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027985, 35.935513, 30.678411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032340, 0.297121, -0.954292,
		0.787800, 0.580003, 0.207283,
		0.615081, -0.758495, -0.215315,
		33.212509, 35.707966, 30.613817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289177, 36.500389, 30.390491>,  <32.781952, 36.238911, 30.764538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289177, 36.500389, 30.390491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299889, 36.115086, 30.283598>,  <33.306316, 35.883904, 30.219461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299889, 36.115086, 30.283598>,  <33.289177, 36.500389, 30.390491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299889, 36.115086, 30.283598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179250, 0.267625, -0.946703,
		0.983439, -0.022550, 0.179831,
		0.026779, -0.963259, -0.267235,
		33.307922, 35.826107, 30.203428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781620, 36.557091, 29.961269>,  <33.289177, 36.500389, 30.390491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781620, 36.557091, 29.961269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.580570, 36.220818, 29.880644>,  <33.459942, 36.019054, 29.832268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.580570, 36.220818, 29.880644>,  <33.781620, 36.557091, 29.961269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.580570, 36.220818, 29.880644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006033, 0.236561, -0.971598,
		0.864485, -0.487130, -0.123973,
		-0.502622, -0.840680, -0.201565,
		33.429783, 35.968613, 29.820175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082535, 36.426205, 29.264074>,  <33.781620, 36.557091, 29.961269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082535, 36.426205, 29.264074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763798, 36.190449, 29.317234>,  <33.572556, 36.048996, 29.349131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763798, 36.190449, 29.317234>,  <34.082535, 36.426205, 29.264074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763798, 36.190449, 29.317234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255809, 0.129837, -0.957969,
		0.547359, -0.797349, -0.254230,
		-0.796844, -0.589387, 0.132901,
		33.524746, 36.013634, 29.357105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098660, 35.957024, 28.663246>,  <34.082535, 36.426205, 29.264074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098660, 35.957024, 28.663246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724018, 35.985920, 28.800394>,  <33.499233, 36.003258, 28.882683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724018, 35.985920, 28.800394>,  <34.098660, 35.957024, 28.663246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724018, 35.985920, 28.800394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344429, -0.009991, -0.938759,
		-0.064393, -0.997337, 0.034240,
		-0.936602, 0.072243, 0.342869,
		33.443039, 36.007591, 28.903255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698391, 35.574352, 28.163328>,  <34.098660, 35.957024, 28.663246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698391, 35.574352, 28.163328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445377, 35.830975, 28.336906>,  <33.293568, 35.984947, 28.441053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445377, 35.830975, 28.336906>,  <33.698391, 35.574352, 28.163328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445377, 35.830975, 28.336906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577050, -0.016630, -0.816540,
		-0.516637, -0.766898, 0.380727,
		-0.632535, 0.641553, 0.433946,
		33.255615, 36.023441, 28.467091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145000, 35.372528, 27.885733>,  <33.698391, 35.574352, 28.163328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145000, 35.372528, 27.885733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.052536, 35.747269, 27.990709>,  <32.997055, 35.972111, 28.053696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.052536, 35.747269, 27.990709>,  <33.145000, 35.372528, 27.885733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052536, 35.747269, 27.990709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721488, 0.015897, -0.692245,
		-0.652701, -0.349371, 0.672251,
		-0.231163, 0.936850, 0.262443,
		32.983189, 36.028324, 28.069443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434650, 35.420109, 28.052759>,  <33.145000, 35.372528, 27.885733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434650, 35.420109, 28.052759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566189, 35.783596, 27.949926>,  <32.645111, 36.001690, 27.888227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566189, 35.783596, 27.949926>,  <32.434650, 35.420109, 28.052759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566189, 35.783596, 27.949926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705298, 0.055285, -0.706752,
		-0.628027, 0.413729, 0.659098,
		0.328842, 0.908720, -0.257082,
		32.664841, 36.056213, 27.872803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887281, 35.656048, 27.769051>,  <32.434650, 35.420109, 28.052759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887281, 35.656048, 27.769051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134872, 35.950729, 27.660139>,  <32.283428, 36.127537, 27.594793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134872, 35.950729, 27.660139>,  <31.887281, 35.656048, 27.769051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134872, 35.950729, 27.660139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539073, 0.146374, -0.829442,
		-0.571200, 0.660182, 0.487740,
		0.618975, 0.736705, -0.272278,
		32.320564, 36.171741, 27.578455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423746, 36.135342, 27.593992>,  <31.887281, 35.656048, 27.769051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423746, 36.135342, 27.593992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781574, 36.191998, 27.424437>,  <31.996271, 36.225990, 27.322702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781574, 36.191998, 27.424437>,  <31.423746, 36.135342, 27.593992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.781574, 36.191998, 27.424437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445172, 0.198421, -0.873184,
		-0.039569, 0.969829, 0.240555,
		0.894570, 0.141639, -0.423890,
		32.049946, 36.234489, 27.297270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.354443, 36.708229, 27.038282>,  <31.423746, 36.135342, 27.593992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.354443, 36.708229, 27.038282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677677, 36.485355, 26.961821>,  <31.871618, 36.351631, 26.915943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677677, 36.485355, 26.961821>,  <31.354443, 36.708229, 27.038282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677677, 36.485355, 26.961821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217527, 0.019309, -0.975863,
		0.547425, 0.830165, -0.105599,
		0.808089, -0.557183, -0.191154,
		31.920103, 36.318199, 26.904474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687302, 37.036934, 26.388292>,  <31.354443, 36.708229, 27.038282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687302, 37.036934, 26.388292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809780, 36.657436, 26.419617>,  <31.883266, 36.429737, 26.438412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809780, 36.657436, 26.419617>,  <31.687302, 37.036934, 26.388292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.809780, 36.657436, 26.419617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203856, -0.145700, -0.968098,
		0.929885, 0.280464, -0.238019,
		0.306196, -0.948742, 0.078311,
		31.901638, 36.372814, 26.443110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.012821, 36.962997, 25.744932>,  <31.687302, 37.036934, 26.388292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.012821, 36.962997, 25.744932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974945, 36.582947, 25.863792>,  <31.952219, 36.354916, 25.935108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974945, 36.582947, 25.863792>,  <32.012821, 36.962997, 25.744932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974945, 36.582947, 25.863792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202531, -0.273863, -0.940202,
		0.974687, -0.149209, -0.166497,
		-0.094689, -0.950124, 0.297150,
		31.946539, 36.297909, 25.952938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580276, 36.540035, 25.393265>,  <32.012821, 36.962997, 25.744932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580276, 36.540035, 25.393265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290985, 36.286987, 25.504076>,  <32.117413, 36.135159, 25.570562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290985, 36.286987, 25.504076>,  <32.580276, 36.540035, 25.393265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290985, 36.286987, 25.504076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044165, -0.357946, -0.932697,
		0.689200, -0.686784, 0.230936,
		-0.723224, -0.632616, 0.277028,
		32.074017, 36.097202, 25.587185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751858, 35.974602, 25.138668>,  <32.580276, 36.540035, 25.393265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751858, 35.974602, 25.138668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361713, 35.916176, 25.204811>,  <32.127628, 35.881119, 25.244497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361713, 35.916176, 25.204811>,  <32.751858, 35.974602, 25.138668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361713, 35.916176, 25.204811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048929, -0.587610, -0.807664,
		0.215135, -0.795852, 0.565983,
		-0.975358, -0.146064, 0.165356,
		32.069107, 35.872356, 25.254417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596256, 35.259758, 25.094007>,  <32.751858, 35.974602, 25.138668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596256, 35.259758, 25.094007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.253796, 35.457222, 25.032957>,  <32.048317, 35.575703, 24.996326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.253796, 35.457222, 25.032957>,  <32.596256, 35.259758, 25.094007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.253796, 35.457222, 25.032957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230076, -0.628682, -0.742849,
		-0.462668, -0.600879, 0.651830,
		-0.856156, 0.493663, -0.152623,
		31.996948, 35.605320, 24.987169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000172, 34.767696, 25.034494>,  <32.596256, 35.259758, 25.094007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000172, 34.767696, 25.034494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863800, 35.086952, 24.835800>,  <31.781977, 35.278503, 24.716583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863800, 35.086952, 24.835800>,  <32.000172, 34.767696, 25.034494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.863800, 35.086952, 24.835800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356271, -0.598673, -0.717399,
		-0.869964, -0.067610, 0.488457,
		-0.340929, 0.798135, -0.496737,
		31.761520, 35.326393, 24.686779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463522, 34.490852, 24.677290>,  <32.000172, 34.767696, 25.034494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463522, 34.490852, 24.677290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488447, 34.838833, 24.481613>,  <31.503403, 35.047619, 24.364208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488447, 34.838833, 24.481613>,  <31.463522, 34.490852, 24.677290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488447, 34.838833, 24.481613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249497, -0.461003, -0.851603,
		-0.966369, 0.175118, 0.188323,
		0.062313, 0.869948, -0.489190,
		31.507141, 35.099819, 24.334856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824707, 34.551125, 24.326666>,  <31.463522, 34.490852, 24.677290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824707, 34.551125, 24.326666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.087347, 34.788799, 24.140842>,  <31.244930, 34.931404, 24.029348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.087347, 34.788799, 24.140842>,  <30.824707, 34.551125, 24.326666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.087347, 34.788799, 24.140842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281256, -0.378613, -0.881786,
		-0.699838, 0.709640, -0.081477,
		0.656599, 0.594191, -0.464559,
		31.284327, 34.967056, 24.001474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470633, 34.983574, 23.752327>,  <30.824707, 34.551125, 24.326666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.470633, 34.983574, 23.752327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.861017, 34.971569, 23.665983>,  <31.095249, 34.964367, 23.614176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.861017, 34.971569, 23.665983>,  <30.470633, 34.983574, 23.752327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.861017, 34.971569, 23.665983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213187, -0.337155, -0.916994,
		-0.045255, 0.940971, -0.335449,
		0.975963, -0.030015, -0.215860,
		31.153807, 34.962566, 23.601225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487326, 35.234814, 23.030563>,  <30.470633, 34.983574, 23.752327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487326, 35.234814, 23.030563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841122, 35.057556, 23.088943>,  <31.053400, 34.951202, 23.123972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841122, 35.057556, 23.088943>,  <30.487326, 35.234814, 23.030563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841122, 35.057556, 23.088943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044538, -0.391593, -0.919060,
		0.464428, 0.806399, -0.366097,
		0.884490, -0.443143, 0.145952,
		31.106468, 34.924614, 23.132729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.851543, 35.507053, 22.564627>,  <30.487326, 35.234814, 23.030563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.851543, 35.507053, 22.564627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012135, 35.153385, 22.660172>,  <31.108490, 34.941185, 22.717499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012135, 35.153385, 22.660172>,  <30.851543, 35.507053, 22.564627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.012135, 35.153385, 22.660172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015425, -0.254241, -0.967018,
		0.915738, 0.391922, -0.088434,
		0.401479, -0.884171, 0.238863,
		31.132578, 34.888134, 22.731831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.336832, 35.434628, 22.084106>,  <30.851543, 35.507053, 22.564627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.336832, 35.434628, 22.084106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.310272, 35.071281, 22.249252>,  <31.294336, 34.853271, 22.348339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.310272, 35.071281, 22.249252>,  <31.336832, 35.434628, 22.084106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.310272, 35.071281, 22.249252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082087, -0.407401, -0.909553,
		0.994411, -0.094285, -0.047513,
		-0.066401, -0.908369, 0.412863,
		31.290352, 34.798771, 22.373112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700712, 35.098495, 21.576849>,  <31.336832, 35.434628, 22.084106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700712, 35.098495, 21.576849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480164, 34.840843, 21.788918>,  <31.347834, 34.686253, 21.916159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480164, 34.840843, 21.788918>,  <31.700712, 35.098495, 21.576849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480164, 34.840843, 21.788918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169573, -0.535701, -0.827206,
		0.816844, -0.546001, 0.186143,
		-0.551372, -0.644133, 0.530171,
		31.314753, 34.647602, 21.947969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936577, 34.448536, 21.422613>,  <31.700712, 35.098495, 21.576849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.936577, 34.448536, 21.422613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567026, 34.365322, 21.551094>,  <31.345295, 34.315392, 21.628183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567026, 34.365322, 21.551094>,  <31.936577, 34.448536, 21.422613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567026, 34.365322, 21.551094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121212, -0.637038, -0.761242,
		0.362984, -0.742228, 0.563329,
		-0.923878, -0.208037, 0.321202,
		31.289864, 34.302910, 21.647455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769859, 33.712032, 21.304642>,  <31.936577, 34.448536, 21.422613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769859, 33.712032, 21.304642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.411585, 33.884220, 21.349260>,  <31.196619, 33.987534, 21.376032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.411585, 33.884220, 21.349260>,  <31.769859, 33.712032, 21.304642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411585, 33.884220, 21.349260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376879, -0.601699, -0.704216,
		-0.236023, -0.672798, 0.701168,
		-0.895687, 0.430467, 0.111548,
		31.142879, 34.013359, 21.382725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165874, 33.288937, 20.785320>,  <31.769859, 33.712032, 21.304642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165874, 33.288937, 20.785320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484718, 33.061432, 20.704193>,  <32.676025, 32.924931, 20.655518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484718, 33.061432, 20.704193>,  <32.165874, 33.288937, 20.785320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484718, 33.061432, 20.704193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152978, -0.134714, 0.979004,
		-0.584140, -0.811397, -0.020373,
		0.797106, -0.568759, -0.202818,
		32.723850, 32.890804, 20.643349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085052, 32.650013, 21.177704>,  <32.165874, 33.288937, 20.785320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085052, 32.650013, 21.177704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473278, 32.724724, 21.116877>,  <32.706211, 32.769550, 21.080379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473278, 32.724724, 21.116877>,  <32.085052, 32.650013, 21.177704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473278, 32.724724, 21.116877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161746, -0.037629, 0.986115,
		0.178461, -0.981681, -0.066731,
		0.970562, 0.186777, -0.152068,
		32.764446, 32.780758, 21.071257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391266, 32.170429, 21.585121>,  <32.085052, 32.650013, 21.177704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391266, 32.170429, 21.585121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656254, 32.466324, 21.537935>,  <32.815247, 32.643860, 21.509623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656254, 32.466324, 21.537935>,  <32.391266, 32.170429, 21.585121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656254, 32.466324, 21.537935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102803, 0.066207, 0.992496,
		0.742000, -0.669627, -0.032188,
		0.662471, 0.739741, -0.117965,
		32.854996, 32.688248, 21.502546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950012, 31.949379, 21.975332>,  <32.391266, 32.170429, 21.585121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950012, 31.949379, 21.975332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027477, 32.338184, 21.922144>,  <33.073956, 32.571468, 21.890230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027477, 32.338184, 21.922144>,  <32.950012, 31.949379, 21.975332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027477, 32.338184, 21.922144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253529, 0.081347, 0.963901,
		0.947743, -0.220385, -0.230680,
		0.193664, 0.972015, -0.132970,
		33.085575, 32.629787, 21.882254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498615, 32.040245, 22.347486>,  <32.950012, 31.949379, 21.975332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498615, 32.040245, 22.347486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370163, 32.417252, 22.310530>,  <33.293091, 32.643456, 22.288357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370163, 32.417252, 22.310530>,  <33.498615, 32.040245, 22.347486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370163, 32.417252, 22.310530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297273, 0.192950, 0.935093,
		0.899167, 0.272826, -0.342148,
		-0.321135, 0.942516, -0.092390,
		33.273823, 32.700005, 22.282812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056320, 32.366077, 22.602978>,  <33.498615, 32.040245, 22.347486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056320, 32.366077, 22.602978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743935, 32.612919, 22.641508>,  <33.556503, 32.761024, 22.664627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743935, 32.612919, 22.641508>,  <34.056320, 32.366077, 22.602978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743935, 32.612919, 22.641508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327864, 0.273784, 0.904183,
		0.531605, 0.737714, -0.416142,
		-0.780961, 0.617107, 0.096325,
		33.509647, 32.798050, 22.670406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288116, 32.963978, 22.783421>,  <34.056320, 32.366077, 22.602978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288116, 32.963978, 22.783421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906944, 32.986526, 22.902578>,  <33.678242, 33.000053, 22.974073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906944, 32.986526, 22.902578>,  <34.288116, 32.963978, 22.783421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906944, 32.986526, 22.902578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290874, 0.447103, 0.845867,
		-0.085510, 0.892704, -0.442456,
		-0.952932, 0.056369, 0.297897,
		33.621063, 33.003437, 22.991947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165913, 33.631298, 22.987841>,  <34.288116, 32.963978, 22.783421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165913, 33.631298, 22.987841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887676, 33.409653, 23.170755>,  <33.720734, 33.276665, 23.280504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887676, 33.409653, 23.170755>,  <34.165913, 33.631298, 22.987841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887676, 33.409653, 23.170755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226654, 0.434744, 0.871565,
		-0.681746, 0.709901, -0.176814,
		-0.695594, -0.554110, 0.457286,
		33.678997, 33.243420, 23.307941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917358, 34.026997, 23.525015>,  <34.165913, 33.631298, 22.987841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917358, 34.026997, 23.525015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800247, 33.660725, 23.635153>,  <33.729980, 33.440964, 23.701237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800247, 33.660725, 23.635153>,  <33.917358, 34.026997, 23.525015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800247, 33.660725, 23.635153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219098, 0.216058, 0.951480,
		-0.930740, 0.338899, 0.137367,
		-0.292776, -0.915678, 0.275346,
		33.712414, 33.386021, 23.717756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600780, 34.085651, 24.169613>,  <33.917358, 34.026997, 23.525015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600780, 34.085651, 24.169613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667606, 33.692207, 24.142471>,  <33.707703, 33.456142, 24.126186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667606, 33.692207, 24.142471>,  <33.600780, 34.085651, 24.169613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667606, 33.692207, 24.142471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045868, -0.060993, 0.997084,
		-0.984879, -0.169686, 0.034926,
		0.167061, -0.983609, -0.067854,
		33.717724, 33.397125, 24.122114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137356, 33.825478, 24.748217>,  <33.600780, 34.085651, 24.169613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137356, 33.825478, 24.748217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408993, 33.543194, 24.667406>,  <33.571976, 33.373825, 24.618919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408993, 33.543194, 24.667406>,  <33.137356, 33.825478, 24.748217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408993, 33.543194, 24.667406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016386, -0.289726, 0.956969,
		-0.733873, -0.646557, -0.208314,
		0.679089, -0.705707, -0.202027,
		33.612720, 33.331482, 24.606798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810894, 33.217968, 25.127565>,  <33.137356, 33.825478, 24.748217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810894, 33.217968, 25.127565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202461, 33.152073, 25.079254>,  <33.437401, 33.112534, 25.050266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202461, 33.152073, 25.079254>,  <32.810894, 33.217968, 25.127565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202461, 33.152073, 25.079254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029277, -0.472014, 0.881105,
		-0.202164, -0.866062, -0.457238,
		0.978914, -0.164741, -0.120780,
		33.496136, 33.102650, 25.043020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913906, 32.556522, 25.305330>,  <32.810894, 33.217968, 25.127565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913906, 32.556522, 25.305330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.278698, 32.712017, 25.357746>,  <33.497574, 32.805313, 25.389194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.278698, 32.712017, 25.357746>,  <32.913906, 32.556522, 25.305330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278698, 32.712017, 25.357746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073908, -0.469895, 0.879623,
		0.403519, -0.792515, -0.457266,
		0.911981, 0.388740, 0.131038,
		33.552292, 32.828640, 25.397057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354450, 32.058750, 25.567709>,  <32.913906, 32.556522, 25.305330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354450, 32.058750, 25.567709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545849, 32.397804, 25.659416>,  <33.660686, 32.601234, 25.714441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545849, 32.397804, 25.659416>,  <33.354450, 32.058750, 25.567709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545849, 32.397804, 25.659416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025720, -0.274517, 0.961238,
		0.877714, -0.454051, -0.153156,
		0.478495, 0.847631, 0.229269,
		33.689396, 32.652092, 25.728197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886299, 31.922638, 26.108349>,  <33.354450, 32.058750, 25.567709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886299, 31.922638, 26.108349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853451, 32.320621, 26.131376>,  <33.833744, 32.559410, 26.145193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853451, 32.320621, 26.131376>,  <33.886299, 31.922638, 26.108349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853451, 32.320621, 26.131376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106143, -0.048703, 0.993158,
		0.990954, 0.087667, -0.101609,
		-0.082119, 0.994959, 0.057567,
		33.828815, 32.619110, 26.148647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520687, 32.241890, 26.491169>,  <33.886299, 31.922638, 26.108349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520687, 32.241890, 26.491169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230171, 32.516689, 26.481895>,  <34.055862, 32.681568, 26.476332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230171, 32.516689, 26.481895>,  <34.520687, 32.241890, 26.491169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230171, 32.516689, 26.481895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167763, 0.209863, 0.963231,
		0.666605, 0.695693, -0.267674,
		-0.726288, 0.687000, -0.023184,
		34.012283, 32.722790, 26.474939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727482, 32.705338, 26.891438>,  <34.520687, 32.241890, 26.491169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727482, 32.705338, 26.891438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347424, 32.829334, 26.878063>,  <34.119389, 32.903732, 26.870039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347424, 32.829334, 26.878063>,  <34.727482, 32.705338, 26.891438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347424, 32.829334, 26.878063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065986, 0.304729, 0.950150,
		0.304729, 0.900580, -0.309994,
		-0.950150, 0.309994, -0.033435,
		34.062378, 32.922333, 26.868032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789715, 33.240891, 27.173903>,  <34.727482, 32.705338, 26.891438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789715, 33.240891, 27.173903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392006, 33.202381, 27.192490>,  <34.153381, 33.179276, 27.203642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392006, 33.202381, 27.192490>,  <34.789715, 33.240891, 27.173903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.392006, 33.202381, 27.192490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011884, 0.531536, 0.846952,
		-0.106237, 0.841547, -0.529634,
		-0.994270, -0.096272, 0.046468,
		34.093723, 33.173500, 27.206430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484024, 33.988037, 27.320677>,  <34.789715, 33.240891, 27.173903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484024, 33.988037, 27.320677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241409, 33.697571, 27.450172>,  <34.095840, 33.523293, 27.527870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241409, 33.697571, 27.450172>,  <34.484024, 33.988037, 27.320677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241409, 33.697571, 27.450172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077727, 0.459397, 0.884824,
		-0.791249, 0.511512, -0.335082,
		-0.606534, -0.726161, 0.323739,
		34.059448, 33.479721, 27.547295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986633, 34.309818, 27.725920>,  <34.484024, 33.988037, 27.320677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986633, 34.309818, 27.725920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014328, 33.927208, 27.839245>,  <34.030945, 33.697643, 27.907240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014328, 33.927208, 27.839245>,  <33.986633, 34.309818, 27.725920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014328, 33.927208, 27.839245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057059, 0.287328, 0.956131,
		-0.995967, -0.050038, 0.074473,
		0.069241, -0.956524, 0.283314,
		34.035099, 33.640251, 27.924238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733753, 34.308353, 28.362436>,  <33.986633, 34.309818, 27.725920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733753, 34.308353, 28.362436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890945, 33.940907, 28.379009>,  <33.985260, 33.720440, 28.388952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890945, 33.940907, 28.379009>,  <33.733753, 34.308353, 28.362436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890945, 33.940907, 28.379009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092468, 0.084304, 0.992141,
		-0.914888, -0.386057, 0.118072,
		0.392976, -0.918615, 0.041431,
		34.008839, 33.665321, 28.391438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395317, 33.926205, 28.908018>,  <33.733753, 34.308353, 28.362436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395317, 33.926205, 28.908018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726704, 33.708115, 28.856850>,  <33.925537, 33.577259, 28.826149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726704, 33.708115, 28.856850>,  <33.395317, 33.926205, 28.908018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726704, 33.708115, 28.856850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112797, -0.061283, 0.991726,
		-0.548557, -0.836044, 0.010729,
		0.828470, -0.545228, -0.127920,
		33.975246, 33.544548, 28.818474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393166, 33.522343, 29.490894>,  <33.395317, 33.926205, 28.908018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393166, 33.522343, 29.490894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771133, 33.501434, 29.361658>,  <33.997913, 33.488888, 29.284117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771133, 33.501434, 29.361658>,  <33.393166, 33.522343, 29.490894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771133, 33.501434, 29.361658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324897, 0.030657, 0.945252,
		-0.039507, -0.998162, 0.045953,
		0.944924, -0.052274, -0.323089,
		34.054611, 33.485752, 29.264730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691456, 33.242863, 30.034863>,  <33.393166, 33.522343, 29.490894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691456, 33.242863, 30.034863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019928, 33.360687, 29.839354>,  <34.217010, 33.431381, 29.722048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019928, 33.360687, 29.839354>,  <33.691456, 33.242863, 30.034863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019928, 33.360687, 29.839354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493069, 0.064990, 0.867559,
		0.287315, -0.953420, -0.091871,
		0.821178, 0.294562, -0.488774,
		34.266281, 33.449055, 29.692720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308151, 32.781052, 30.258936>,  <33.691456, 33.242863, 30.034863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308151, 32.781052, 30.258936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478367, 33.116085, 30.121897>,  <34.580498, 33.317104, 30.039673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478367, 33.116085, 30.121897>,  <34.308151, 32.781052, 30.258936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478367, 33.116085, 30.121897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605256, 0.018016, 0.795827,
		0.672743, -0.546014, -0.499285,
		0.425538, 0.837583, -0.342598,
		34.606030, 33.367359, 30.019117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000290, 32.655766, 30.345613>,  <34.308151, 32.781052, 30.258936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000290, 32.655766, 30.345613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973785, 33.054604, 30.330555>,  <34.957882, 33.293907, 30.321520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973785, 33.054604, 30.330555>,  <35.000290, 32.655766, 30.345613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973785, 33.054604, 30.330555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699516, 0.073323, 0.710846,
		0.711539, 0.020766, -0.702340,
		-0.066259, 0.997092, -0.037646,
		34.953907, 33.353733, 30.319262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689316, 33.026257, 30.231558>,  <35.000290, 32.655766, 30.345613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689316, 33.026257, 30.231558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436371, 33.273479, 30.418371>,  <35.284603, 33.421814, 30.530460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436371, 33.273479, 30.418371>,  <35.689316, 33.026257, 30.231558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436371, 33.273479, 30.418371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743936, 0.316357, 0.588623,
		0.216055, 0.719666, -0.659849,
		-0.632360, 0.618061, 0.467035,
		35.246662, 33.458897, 30.558481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947632, 33.765060, 30.234264>,  <35.689316, 33.026257, 30.231558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947632, 33.765060, 30.234264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690067, 33.737640, 30.539072>,  <35.535526, 33.721188, 30.721956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690067, 33.737640, 30.539072>,  <35.947632, 33.765060, 30.234264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690067, 33.737640, 30.539072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699208, 0.351623, 0.622470,
		-0.310614, 0.933628, -0.178484,
		-0.643915, -0.068551, 0.762020,
		35.496891, 33.717075, 30.767677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216129, 34.183537, 30.598255>,  <35.947632, 33.765060, 30.234264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216129, 34.183537, 30.598255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912975, 34.131733, 30.854019>,  <35.731083, 34.100651, 31.007477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912975, 34.131733, 30.854019>,  <36.216129, 34.183537, 30.598255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912975, 34.131733, 30.854019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549148, 0.402494, 0.732418,
		-0.352212, 0.906215, -0.233924,
		-0.757881, -0.129508, 0.639409,
		35.685612, 34.092880, 31.045841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014450, 34.875389, 30.964203>,  <36.216129, 34.183537, 30.598255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014450, 34.875389, 30.964203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931717, 34.559498, 31.195219>,  <35.882076, 34.369965, 31.333828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931717, 34.559498, 31.195219>,  <36.014450, 34.875389, 30.964203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931717, 34.559498, 31.195219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667802, 0.317457, 0.673248,
		-0.715026, 0.524929, 0.461722,
		-0.206830, -0.789728, 0.577538,
		35.869667, 34.322578, 31.368481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983978, 35.128769, 31.567764>,  <36.014450, 34.875389, 30.964203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983978, 35.128769, 31.567764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.051216, 34.739235, 31.628946>,  <36.091560, 34.505516, 31.665655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.051216, 34.739235, 31.628946>,  <35.983978, 35.128769, 31.567764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051216, 34.739235, 31.628946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710150, 0.227248, 0.666367,
		-0.683688, -0.003393, 0.729766,
		0.168099, -0.973831, 0.152957,
		36.101646, 34.447086, 31.674833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991417, 34.943142, 32.289879>,  <35.983978, 35.128769, 31.567764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991417, 34.943142, 32.289879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220020, 34.652069, 32.138161>,  <36.357182, 34.477425, 32.047131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220020, 34.652069, 32.138161>,  <35.991417, 34.943142, 32.289879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220020, 34.652069, 32.138161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732701, 0.244379, 0.635160,
		-0.369500, -0.640908, 0.672835,
		0.571506, -0.727678, -0.379296,
		36.391472, 34.433765, 32.024372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255615, 34.563713, 32.860153>,  <35.991417, 34.943142, 32.289879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255615, 34.563713, 32.860153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512650, 34.465401, 32.569866>,  <36.666870, 34.406414, 32.395695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512650, 34.465401, 32.569866>,  <36.255615, 34.563713, 32.860153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512650, 34.465401, 32.569866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764422, 0.270320, 0.585308,
		0.052320, -0.930870, 0.361584,
		0.642590, -0.245780, -0.725721,
		36.705425, 34.391666, 32.352150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784225, 34.172573, 33.150299>,  <36.255615, 34.563713, 32.860153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784225, 34.172573, 33.150299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.958759, 34.297443, 32.812740>,  <37.063480, 34.372368, 32.610207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.958759, 34.297443, 32.812740>,  <36.784225, 34.172573, 33.150299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958759, 34.297443, 32.812740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872816, 0.081051, 0.481272,
		0.218641, -0.946560, -0.237110,
		0.436335, 0.312179, -0.843893,
		37.089661, 34.391098, 32.559574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453915, 33.657532, 32.993446>,  <36.784225, 34.172573, 33.150299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453915, 33.657532, 32.993446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515644, 33.999260, 32.794922>,  <37.552681, 34.204296, 32.675808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515644, 33.999260, 32.794922>,  <37.453915, 33.657532, 32.993446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515644, 33.999260, 32.794922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913308, 0.068274, 0.401506,
		0.376899, -0.515247, -0.769719,
		0.154323, 0.854318, -0.496312,
		37.561939, 34.255554, 32.646027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087044, 33.531254, 32.853825>,  <37.453915, 33.657532, 32.993446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087044, 33.531254, 32.853825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008915, 33.922668, 32.827541>,  <37.962036, 34.157516, 32.811771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008915, 33.922668, 32.827541>,  <38.087044, 33.531254, 32.853825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008915, 33.922668, 32.827541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872963, 0.204003, 0.443079,
		0.446973, 0.029181, -0.894071,
		-0.195323, 0.978535, -0.065710,
		37.950317, 34.216228, 32.807827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705929, 33.798260, 32.792912>,  <38.087044, 33.531254, 32.853825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705929, 33.798260, 32.792912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503353, 34.138508, 32.849438>,  <38.381809, 34.342655, 32.883354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503353, 34.138508, 32.849438>,  <38.705929, 33.798260, 32.792912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503353, 34.138508, 32.849438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813507, 0.416999, 0.405363,
		0.285878, 0.320256, -0.903167,
		-0.506440, 0.850616, 0.141319,
		38.351421, 34.393692, 32.891834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118874, 34.437466, 32.515789>,  <38.705929, 33.798260, 32.792912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118874, 34.437466, 32.515789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880730, 34.558079, 32.813683>,  <38.737843, 34.630447, 32.992420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880730, 34.558079, 32.813683>,  <39.118874, 34.437466, 32.515789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880730, 34.558079, 32.813683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802509, 0.268304, 0.532910,
		-0.039124, 0.914926, -0.401722,
		-0.595356, 0.301536, 0.744733,
		38.702122, 34.648540, 33.037102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394756, 35.066845, 32.735142>,  <39.118874, 34.437466, 32.515789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394756, 35.066845, 32.735142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.158314, 34.973034, 33.043839>,  <39.016449, 34.916748, 33.229057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.158314, 34.973034, 33.043839>,  <39.394756, 35.066845, 32.735142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158314, 34.973034, 33.043839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701649, 0.322423, 0.635399,
		-0.397847, 0.917082, -0.026029,
		-0.591106, -0.234529, 0.771745,
		38.980984, 34.902676, 33.275360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343918, 35.606087, 33.165028>,  <39.394756, 35.066845, 32.735142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343918, 35.606087, 33.165028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256294, 35.294022, 33.399414>,  <39.203720, 35.106781, 33.540047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256294, 35.294022, 33.399414>,  <39.343918, 35.606087, 33.165028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256294, 35.294022, 33.399414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746759, 0.252463, 0.615315,
		-0.627982, 0.572366, 0.527291,
		-0.219063, -0.780167, 0.585962,
		39.190575, 35.059971, 33.575203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326775, 35.921455, 33.769882>,  <39.343918, 35.606087, 33.165028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326775, 35.921455, 33.769882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373562, 35.527359, 33.819881>,  <39.401634, 35.290901, 33.849880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373562, 35.527359, 33.819881>,  <39.326775, 35.921455, 33.769882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373562, 35.527359, 33.819881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789014, 0.168629, 0.590781,
		-0.603138, 0.029524, 0.797090,
		0.116970, -0.985237, 0.125002,
		39.408653, 35.231789, 33.857384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479130, 35.754864, 34.526691>,  <39.326775, 35.921455, 33.769882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.479130, 35.754864, 34.526691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587505, 35.427670, 34.323719>,  <39.652531, 35.231354, 34.201935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587505, 35.427670, 34.323719>,  <39.479130, 35.754864, 34.526691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587505, 35.427670, 34.323719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855811, -0.036629, 0.515990,
		-0.440661, -0.574069, 0.690118,
		0.270936, -0.817987, -0.507436,
		39.668785, 35.182274, 34.171490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766907, 35.361393, 35.051693>,  <39.479130, 35.754864, 34.526691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766907, 35.361393, 35.051693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.910713, 35.206326, 34.712173>,  <39.996998, 35.113285, 34.508461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.910713, 35.206326, 34.712173>,  <39.766907, 35.361393, 35.051693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910713, 35.206326, 34.712173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840180, -0.261295, 0.475208,
		-0.406010, -0.883990, 0.231769,
		0.359519, -0.387667, -0.848799,
		40.018570, 35.090027, 34.457535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892315, 34.648884, 35.019241>,  <39.766907, 35.361393, 35.051693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892315, 34.648884, 35.019241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168896, 34.772694, 34.758137>,  <40.334843, 34.846977, 34.601475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168896, 34.772694, 34.758137>,  <39.892315, 34.648884, 35.019241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.168896, 34.772694, 34.758137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713946, -0.430801, 0.551989,
		-0.110356, -0.847706, -0.518860,
		0.691450, 0.309523, -0.652758,
		40.376331, 34.865551, 34.562309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398609, 34.039970, 34.819572>,  <39.892315, 34.648884, 35.019241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398609, 34.039970, 34.819572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.588223, 34.376888, 34.716946>,  <40.701988, 34.579041, 34.655369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.588223, 34.376888, 34.716946>,  <40.398609, 34.039970, 34.819572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.588223, 34.376888, 34.716946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842843, -0.349752, 0.409010,
		0.254774, -0.410128, -0.875720,
		0.474031, 0.842299, -0.256566,
		40.730431, 34.629578, 34.639977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069389, 33.898056, 34.642700>,  <40.398609, 34.039970, 34.819572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069389, 33.898056, 34.642700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131538, 34.292797, 34.660492>,  <41.168827, 34.529640, 34.671165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131538, 34.292797, 34.660492>,  <41.069389, 33.898056, 34.642700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131538, 34.292797, 34.660492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878198, -0.158606, 0.451235,
		0.452357, -0.031049, -0.891296,
		0.155375, 0.986854, 0.044480,
		41.178150, 34.588852, 34.673836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.756378, 33.993698, 34.372677>,  <41.069389, 33.898056, 34.642700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.756378, 33.993698, 34.372677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.660233, 34.314583, 34.591286>,  <41.602543, 34.507114, 34.722450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.660233, 34.314583, 34.591286>,  <41.756378, 33.993698, 34.372677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.660233, 34.314583, 34.591286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851233, -0.096385, 0.515860,
		0.466504, 0.589212, -0.659699,
		-0.240366, 0.802209, 0.546521,
		41.588123, 34.555244, 34.755241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.328171, 34.471886, 34.305099>,  <41.756378, 33.993698, 34.372677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.328171, 34.471886, 34.305099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.131432, 34.553307, 34.643719>,  <42.013390, 34.602158, 34.846889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.131432, 34.553307, 34.643719>,  <42.328171, 34.471886, 34.305099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.131432, 34.553307, 34.643719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865059, 0.003933, 0.501656,
		0.098784, 0.979056, -0.178020,
		-0.491849, 0.203554, 0.846552,
		41.983875, 34.614372, 34.897686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.566971, 35.176414, 34.716644>,  <42.328171, 34.471886, 34.305099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.566971, 35.176414, 34.716644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.410175, 34.878906, 34.933216>,  <42.316097, 34.700401, 35.063160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.410175, 34.878906, 34.933216>,  <42.566971, 35.176414, 34.716644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.410175, 34.878906, 34.933216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828269, -0.029177, 0.559571,
		-0.400396, 0.667797, 0.627480,
		-0.391987, -0.743772, 0.541433,
		42.292580, 34.655773, 35.095646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.728622, 35.356709, 35.299576>,  <42.566971, 35.176414, 34.716644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.728622, 35.356709, 35.299576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.639130, 34.974106, 35.374451>,  <42.585434, 34.744545, 35.419376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.639130, 34.974106, 35.374451>,  <42.728622, 35.356709, 35.299576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.639130, 34.974106, 35.374451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754852, -0.048564, 0.654095,
		-0.616556, 0.287640, 0.732886,
		-0.223736, -0.956506, 0.187183,
		42.572010, 34.687153, 35.430607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.642857, 35.266590, 35.945744>,  <42.728622, 35.356709, 35.299576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.642857, 35.266590, 35.945744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.794392, 34.913780, 35.833668>,  <42.885315, 34.702095, 35.766422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.794392, 34.913780, 35.833668>,  <42.642857, 35.266590, 35.945744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.794392, 34.913780, 35.833668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544867, -0.032147, 0.837906,
		-0.748065, -0.470097, 0.468410,
		0.378839, -0.882029, -0.280189,
		42.908043, 34.649170, 35.749611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.547958, 34.661137, 36.493065>,  <42.642857, 35.266590, 35.945744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.547958, 34.661137, 36.493065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.889160, 34.648945, 36.284660>,  <43.093884, 34.641632, 36.159618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.889160, 34.648945, 36.284660>,  <42.547958, 34.661137, 36.493065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.889160, 34.648945, 36.284660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519068, -0.054275, 0.853008,
		-0.054275, -0.998061, -0.030477,
		-0.853008, 0.030477, 0.521007,
		43.145061, 34.639801, 36.128357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.145458, 34.722240, 36.907883>,  <42.547958, 34.661137, 36.493065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.145458, 34.722240, 36.907883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.300644, 34.557796, 36.577919>,  <43.393757, 34.459129, 36.379940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.300644, 34.557796, 36.577919>,  <43.145458, 34.722240, 36.907883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.300644, 34.557796, 36.577919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843143, -0.203201, 0.497815,
		-0.372278, -0.888649, 0.267788,
		0.387968, -0.411110, -0.824906,
		43.417034, 34.434464, 36.330448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.522003, 34.149529, 37.031548>,  <43.145458, 34.722240, 36.907883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.522003, 34.149529, 37.031548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.680668, 34.220390, 36.671265>,  <43.775867, 34.262905, 36.455093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.680668, 34.220390, 36.671265>,  <43.522003, 34.149529, 37.031548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.680668, 34.220390, 36.671265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856372, -0.424774, 0.293589,
		-0.330588, -0.887797, -0.320200,
		0.396660, 0.177153, -0.900709,
		43.799667, 34.273537, 36.401051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.864456, 33.543907, 36.883419>,  <43.522003, 34.149529, 37.031548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.864456, 33.543907, 36.883419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.017769, 33.853088, 36.681175>,  <44.109756, 34.038597, 36.559830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.017769, 33.853088, 36.681175>,  <43.864456, 33.543907, 36.883419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.017769, 33.853088, 36.681175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921062, -0.279044, 0.271623,
		0.068864, -0.569806, -0.818888,
		0.383278, 0.772952, -0.505611,
		44.132751, 34.084972, 36.529491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.532238, 33.226490, 36.679092>,  <43.864456, 33.543907, 36.883419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.532238, 33.226490, 36.679092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.551594, 33.618237, 36.600605>,  <44.563206, 33.853283, 36.553513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.551594, 33.618237, 36.600605>,  <44.532238, 33.226490, 36.679092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.551594, 33.618237, 36.600605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996183, -0.033031, 0.080800,
		0.072651, -0.199383, -0.977225,
		0.048389, 0.979365, -0.196222,
		44.566109, 33.912045, 36.541737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.921112, 33.354279, 36.138638>,  <44.532238, 33.226490, 36.679092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.921112, 33.354279, 36.138638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.936710, 33.719753, 36.300457>,  <44.946068, 33.939037, 36.397549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.936710, 33.719753, 36.300457>,  <44.921112, 33.354279, 36.138638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.936710, 33.719753, 36.300457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998743, -0.048395, 0.013037,
		0.031490, 0.403528, -0.914425,
		0.038993, 0.913686, 0.404545,
		44.948410, 33.993858, 36.421822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.377274, 33.724850, 35.715401>,  <44.921112, 33.354279, 36.138638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.377274, 33.724850, 35.715401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.368290, 33.883167, 36.082626>,  <45.362900, 33.978157, 36.302963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.368290, 33.883167, 36.082626>,  <45.377274, 33.724850, 35.715401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.368290, 33.883167, 36.082626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997111, -0.057781, 0.049301,
		0.072560, 0.916521, -0.393350,
		-0.022457, 0.395792, 0.918066,
		45.361553, 34.001904, 36.358047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.973835, 34.109806, 35.557503>,  <45.377274, 33.724850, 35.715401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.973835, 34.109806, 35.557503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.889500, 34.074184, 35.946884>,  <45.838898, 34.052811, 36.180515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.889500, 34.074184, 35.946884>,  <45.973835, 34.109806, 35.557503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.889500, 34.074184, 35.946884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977222, -0.043788, 0.207651,
		0.024134, 0.995064, 0.096255,
		-0.210841, -0.089052, 0.973456,
		45.826248, 34.047470, 36.238922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.063232, 34.701542, 35.995953>,  <45.973835, 34.109806, 35.557503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.063232, 34.701542, 35.995953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.140472, 34.329067, 36.119633>,  <46.186817, 34.105583, 36.193840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.140472, 34.329067, 36.119633>,  <46.063232, 34.701542, 35.995953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.140472, 34.329067, 36.119633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980568, 0.172021, -0.094320,
		0.034641, 0.321404, 0.946308,
		0.193100, -0.931186, 0.309200,
		46.198402, 34.049713, 36.212391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.757565, 34.756710, 36.296993>,  <46.063232, 34.701542, 35.995953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.757565, 34.756710, 36.296993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.643814, 34.382572, 36.212849>,  <46.575565, 34.158089, 36.162361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.643814, 34.382572, 36.212849>,  <46.757565, 34.756710, 36.296993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.643814, 34.382572, 36.212849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898913, -0.183859, -0.397684,
		0.333295, -0.302192, 0.893081,
		-0.284377, -0.935348, -0.210365,
		46.558502, 34.101967, 36.149738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.275223, 34.166714, 36.591976>,  <46.757565, 34.756710, 36.296993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.275223, 34.166714, 36.591976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.094208, 34.053543, 36.253708>,  <46.985600, 33.985641, 36.050747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.094208, 34.053543, 36.253708>,  <47.275223, 34.166714, 36.591976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.094208, 34.053543, 36.253708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882116, -0.281002, -0.378033,
		-0.130680, -0.917056, 0.376738,
		-0.452541, -0.282925, -0.845671,
		46.958447, 33.968666, 36.000008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.557068, 33.647648, 36.199921>,  <47.275223, 34.166714, 36.591976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.557068, 33.647648, 36.199921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.428162, 33.545788, 36.564625>,  <47.350819, 33.484673, 36.783447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.428162, 33.545788, 36.564625>,  <47.557068, 33.647648, 36.199921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.428162, 33.545788, 36.564625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902441, 0.373533, -0.214646,
		-0.285912, -0.891979, -0.350184,
		-0.322265, -0.254651, 0.911756,
		47.331482, 33.469391, 36.838150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.824043, 33.420868, 36.093529>,  <47.557068, 33.647648, 36.199921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.824043, 33.420868, 36.093529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.856884, 33.532814, 36.476139>,  <46.876591, 33.599983, 36.705704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.856884, 33.532814, 36.476139>,  <46.824043, 33.420868, 36.093529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.856884, 33.532814, 36.476139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954064, 0.299549, -0.005751,
		-0.288135, -0.912111, 0.291602,
		0.082103, 0.279864, 0.956522,
		46.881516, 33.616772, 36.763096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.193577, 33.217999, 36.560871>,  <46.824043, 33.420868, 36.093529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.193577, 33.217999, 36.560871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.345711, 33.555965, 36.711319>,  <46.436989, 33.758743, 36.801586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.345711, 33.555965, 36.711319>,  <46.193577, 33.217999, 36.560871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.345711, 33.555965, 36.711319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915157, 0.402544, 0.021135,
		-0.133547, -0.352244, 0.926331,
		0.380333, 0.844916, 0.376117,
		46.459812, 33.809441, 36.824154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.895664, 33.286167, 37.115292>,  <46.193577, 33.217999, 36.560871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.895664, 33.286167, 37.115292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.983902, 33.657337, 36.995102>,  <46.036842, 33.880039, 36.922989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.983902, 33.657337, 36.995102>,  <45.895664, 33.286167, 37.115292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.983902, 33.657337, 36.995102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975214, 0.215272, -0.051142,
		0.017228, 0.304310, 0.952417,
		0.220592, 0.927930, -0.300476,
		46.050079, 33.935715, 36.904961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.515091, 33.873455, 37.485252>,  <45.895664, 33.286167, 37.115292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.515091, 33.873455, 37.485252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.615864, 33.988552, 37.115662>,  <45.676327, 34.057610, 36.893906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.615864, 33.988552, 37.115662>,  <45.515091, 33.873455, 37.485252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.615864, 33.988552, 37.115662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908527, 0.399186, -0.123406,
		0.333329, 0.870547, 0.361994,
		0.251934, 0.287746, -0.923976,
		45.691444, 34.074875, 36.838470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.379440, 34.658497, 37.462826>,  <45.515091, 33.873455, 37.485252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.379440, 34.658497, 37.462826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.369133, 34.447083, 37.123417>,  <45.362949, 34.320236, 36.919773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.369133, 34.447083, 37.123417>,  <45.379440, 34.658497, 37.462826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.369133, 34.447083, 37.123417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900403, 0.381020, -0.209992,
		0.434291, 0.758601, -0.485711,
		-0.025766, -0.528534, -0.848521,
		45.361404, 34.288521, 36.868862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.871967, 35.057823, 37.104023>,  <45.379440, 34.658497, 37.462826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.871967, 35.057823, 37.104023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.893875, 34.716553, 36.896526>,  <44.907021, 34.511791, 36.772026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.893875, 34.716553, 36.896526>,  <44.871967, 35.057823, 37.104023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.893875, 34.716553, 36.896526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846065, 0.236242, -0.477875,
		0.530259, 0.465066, -0.708900,
		0.054771, -0.853173, -0.518745,
		44.910305, 34.460602, 36.740902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.706017, 35.281097, 36.460957>,  <44.871967, 35.057823, 37.104023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.706017, 35.281097, 36.460957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.666023, 34.883587, 36.480572>,  <44.642029, 34.645081, 36.492340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.666023, 34.883587, 36.480572>,  <44.706017, 35.281097, 36.460957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.666023, 34.883587, 36.480572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839762, 0.057844, -0.539865,
		0.533670, -0.095159, -0.840322,
		-0.099980, -0.993780, 0.049041,
		44.636028, 34.585453, 36.495285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.732410, 34.980949, 35.793392>,  <44.706017, 35.281097, 36.460957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.732410, 34.980949, 35.793392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.553490, 34.704903, 36.020958>,  <44.446136, 34.539276, 36.157497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.553490, 34.704903, 36.020958>,  <44.732410, 34.980949, 35.793392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.553490, 34.704903, 36.020958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816444, 0.055364, -0.574765,
		0.365155, -0.721581, -0.588203,
		-0.447304, -0.690113, 0.568914,
		44.419300, 34.497868, 36.191631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.407112, 34.595657, 35.283035>,  <44.732410, 34.980949, 35.793392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.407112, 34.595657, 35.283035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.220757, 34.493629, 35.621948>,  <44.108944, 34.432411, 35.825298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.220757, 34.493629, 35.621948>,  <44.407112, 34.595657, 35.283035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.220757, 34.493629, 35.621948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826649, -0.216066, -0.519583,
		0.315600, -0.942473, -0.110192,
		-0.465884, -0.255071, 0.847285,
		44.080990, 34.417107, 35.876133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.925583, 34.182652, 35.131298>,  <44.407112, 34.595657, 35.283035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.925583, 34.182652, 35.131298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.787163, 34.270245, 35.496220>,  <43.704109, 34.322800, 35.715172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.787163, 34.270245, 35.496220>,  <43.925583, 34.182652, 35.131298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.787163, 34.270245, 35.496220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933999, -0.172499, -0.312874,
		0.088858, -0.960361, 0.264219,
		-0.346050, 0.218979, 0.912304,
		43.683350, 34.335938, 35.769909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.515633, 33.579876, 35.397442>,  <43.925583, 34.182652, 35.131298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.515633, 33.579876, 35.397442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.399723, 33.942490, 35.520222>,  <43.330177, 34.160057, 35.593891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.399723, 33.942490, 35.520222>,  <43.515633, 33.579876, 35.397442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.399723, 33.942490, 35.520222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952374, -0.241300, -0.186436,
		-0.094944, -0.346356, 0.933286,
		-0.289775, 0.906538, 0.306950,
		43.312790, 34.214451, 35.612305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.912098, 33.460304, 35.310368>,  <43.515633, 33.579876, 35.397442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.912098, 33.460304, 35.310368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.902420, 33.825169, 35.474010>,  <42.896614, 34.044086, 35.572197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.902420, 33.825169, 35.474010>,  <42.912098, 33.460304, 35.310368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.902420, 33.825169, 35.474010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999585, -0.015660, -0.024191,
		-0.015660, -0.409526, 0.912164,
		0.024191, -0.912164, -0.409110,
		42.895164, 34.098820, 35.596745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.390362, 33.497467, 35.777615>,  <42.912098, 33.460304, 35.310368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.390362, 33.497467, 35.777615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.449436, 33.870342, 35.645424>,  <42.484882, 34.094067, 35.566109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.449436, 33.870342, 35.645424>,  <42.390362, 33.497467, 35.777615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.449436, 33.870342, 35.645424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962126, 0.058001, -0.266362,
		-0.229132, 0.357296, 0.905449,
		0.147688, 0.932188, -0.330474,
		42.493744, 34.149998, 35.546280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.681042, 33.609982, 35.708923>,  <42.390362, 33.497467, 35.777615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.681042, 33.609982, 35.708923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.855751, 33.927570, 35.539768>,  <41.960575, 34.118126, 35.438274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.855751, 33.927570, 35.539768>,  <41.681042, 33.609982, 35.708923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.855751, 33.927570, 35.539768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862885, 0.236893, -0.446443,
		-0.254284, 0.559899, 0.788576,
		0.436771, 0.793974, -0.422891,
		41.986782, 34.165764, 35.412903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315796, 34.178585, 35.887840>,  <41.681042, 33.609982, 35.708923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315796, 34.178585, 35.887840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478645, 34.274555, 35.535320>,  <41.576355, 34.332138, 35.323807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478645, 34.274555, 35.535320>,  <41.315796, 34.178585, 35.887840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.478645, 34.274555, 35.535320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912936, 0.136793, -0.384493,
		0.028307, 0.961105, 0.274728,
		0.407119, 0.239925, -0.881300,
		41.600780, 34.346531, 35.270931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.331249, 34.853783, 35.980991>,  <41.315796, 34.178585, 35.887840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.331249, 34.853783, 35.980991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.527973, 34.780014, 35.640614>,  <41.646008, 34.735752, 35.436386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.527973, 34.780014, 35.640614>,  <41.331249, 34.853783, 35.980991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.527973, 34.780014, 35.640614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765166, 0.374838, -0.523467,
		0.415506, 0.908562, 0.043237,
		0.491809, -0.184420, -0.850948,
		41.675514, 34.724689, 35.385330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.303989, 35.461132, 35.555855>,  <41.331249, 34.853783, 35.980991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.303989, 35.461132, 35.555855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358612, 35.166267, 35.291149>,  <41.391388, 34.989349, 35.132324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358612, 35.166267, 35.291149>,  <41.303989, 35.461132, 35.555855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358612, 35.166267, 35.291149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673801, 0.420580, -0.607540,
		0.726185, 0.528866, -0.439269,
		0.136560, -0.737166, -0.661768,
		41.399578, 34.945118, 35.092617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311222, 35.791210, 34.902088>,  <41.303989, 35.461132, 35.555855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.311222, 35.791210, 34.902088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.220619, 35.404392, 34.855572>,  <41.166260, 35.172302, 34.827663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.220619, 35.404392, 34.855572>,  <41.311222, 35.791210, 34.902088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.220619, 35.404392, 34.855572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652217, 0.239260, -0.719283,
		0.723401, -0.087074, -0.684915,
		-0.226504, -0.967043, -0.116290,
		41.152668, 35.114281, 34.820686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156841, 35.790115, 34.293606>,  <41.311222, 35.791210, 34.902088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.156841, 35.790115, 34.293606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.992153, 35.441017, 34.398533>,  <40.893341, 35.231560, 34.461487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.992153, 35.441017, 34.398533>,  <41.156841, 35.790115, 34.293606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.992153, 35.441017, 34.398533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691317, 0.111562, -0.713887,
		0.593775, -0.475263, -0.649274,
		-0.411718, -0.872742, 0.262314,
		40.868637, 35.179195, 34.477226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.071278, 35.345634, 33.619095>,  <41.156841, 35.790115, 34.293606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.071278, 35.345634, 33.619095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.852787, 35.179531, 33.910080>,  <40.721691, 35.079868, 34.084671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.852787, 35.179531, 33.910080>,  <41.071278, 35.345634, 33.619095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.852787, 35.179531, 33.910080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795373, -0.015254, -0.605928,
		0.262713, -0.909576, -0.321953,
		-0.546226, -0.415258, 0.727460,
		40.688919, 35.054955, 34.128319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619198, 34.700161, 33.399441>,  <41.071278, 35.345634, 33.619095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619198, 34.700161, 33.399441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.428051, 34.852211, 33.716213>,  <40.313362, 34.943443, 33.906277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.428051, 34.852211, 33.716213>,  <40.619198, 34.700161, 33.399441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.428051, 34.852211, 33.716213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877765, -0.171430, -0.447371,
		-0.034298, -0.908908, 0.415583,
		-0.477862, 0.380129, 0.791928,
		40.284691, 34.966251, 33.953793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067959, 34.138103, 33.544678>,  <40.619198, 34.700161, 33.399441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067959, 34.138103, 33.544678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948174, 34.465778, 33.740334>,  <39.876301, 34.662384, 33.857727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948174, 34.465778, 33.740334>,  <40.067959, 34.138103, 33.544678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948174, 34.465778, 33.740334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921945, -0.116464, -0.369396,
		-0.245637, -0.561579, 0.790121,
		-0.299466, 0.819186, 0.489137,
		39.858334, 34.711533, 33.887074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562038, 33.942577, 33.997654>,  <40.067959, 34.138103, 33.544678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562038, 33.942577, 33.997654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516716, 34.331390, 33.915367>,  <39.489521, 34.564678, 33.865997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516716, 34.331390, 33.915367>,  <39.562038, 33.942577, 33.997654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516716, 34.331390, 33.915367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927702, -0.177629, -0.328355,
		-0.355712, 0.153637, 0.921881,
		-0.113305, 0.972031, -0.205714,
		39.482723, 34.623001, 33.853653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606644, 33.211895, 34.246799>,  <39.562038, 33.942577, 33.997654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606644, 33.211895, 34.246799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691483, 32.820999, 34.248478>,  <39.742386, 32.586460, 34.249485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691483, 32.820999, 34.248478>,  <39.606644, 33.211895, 34.246799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691483, 32.820999, 34.248478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803882, 0.176911, 0.567870,
		-0.555686, -0.117072, 0.823108,
		0.212098, -0.977239, 0.004195,
		39.755112, 32.527828, 34.249737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734455, 32.934151, 34.985153>,  <39.606644, 33.211895, 34.246799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734455, 32.934151, 34.985153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.945297, 32.757881, 34.694508>,  <40.071800, 32.652119, 34.520119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.945297, 32.757881, 34.694508>,  <39.734455, 32.934151, 34.985153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.945297, 32.757881, 34.694508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844710, 0.178231, 0.504677,
		-0.092890, -0.879798, 0.466184,
		0.527102, -0.440670, -0.726618,
		40.103428, 32.625679, 34.476521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091763, 32.367672, 35.284855>,  <39.734455, 32.934151, 34.985153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.091763, 32.367672, 35.284855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.272110, 32.544533, 34.974701>,  <40.380318, 32.650650, 34.788609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.272110, 32.544533, 34.974701>,  <40.091763, 32.367672, 35.284855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272110, 32.544533, 34.974701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805808, 0.172005, 0.566646,
		0.383916, -0.880291, -0.278741,
		0.450869, 0.442156, -0.775381,
		40.407372, 32.677181, 34.742088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.720715, 31.973228, 35.108608>,  <40.091763, 32.367672, 35.284855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.720715, 31.973228, 35.108608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716644, 32.363049, 35.019035>,  <40.714203, 32.596939, 34.965290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716644, 32.363049, 35.019035>,  <40.720715, 31.973228, 35.108608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716644, 32.363049, 35.019035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842602, 0.128946, 0.522871,
		0.538440, -0.183367, -0.822471,
		-0.010177, 0.974551, -0.223935,
		40.713593, 32.655415, 34.951855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383602, 31.506960, 34.945408>,  <40.720715, 31.973228, 35.108608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.383602, 31.506960, 34.945408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.727898, 31.415541, 35.127354>,  <41.934475, 31.360689, 35.236523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.727898, 31.415541, 35.127354>,  <41.383602, 31.506960, 34.945408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.727898, 31.415541, 35.127354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508980, 0.401616, -0.761344,
		-0.008678, 0.886832, 0.462011,
		0.860735, -0.228547, 0.454865,
		41.986118, 31.346977, 35.263813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.817993, 32.103363, 35.052475>,  <41.383602, 31.506960, 34.945408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.817993, 32.103363, 35.052475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.040829, 31.772406, 35.024010>,  <42.174530, 31.573830, 35.006931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.040829, 31.772406, 35.024010>,  <41.817993, 32.103363, 35.052475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.040829, 31.772406, 35.024010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609401, 0.465514, -0.641815,
		0.564162, 0.314184, 0.763550,
		0.557091, -0.827397, -0.071161,
		42.207954, 31.524187, 35.002663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.602123, 32.195160, 35.351425>,  <41.817993, 32.103363, 35.052475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.602123, 32.195160, 35.351425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.536423, 31.942598, 35.048279>,  <42.497002, 31.791061, 34.866390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.536423, 31.942598, 35.048279>,  <42.602123, 32.195160, 35.351425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.536423, 31.942598, 35.048279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592390, 0.551183, -0.587598,
		0.788731, -0.545462, 0.283504,
		-0.164250, -0.631402, -0.757862,
		42.487148, 31.753178, 34.820919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.273338, 31.976728, 35.124805>,  <42.602123, 32.195160, 35.351425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.273338, 31.976728, 35.124805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.986404, 31.975866, 34.846115>,  <42.814243, 31.975349, 34.678902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.986404, 31.975866, 34.846115>,  <43.273338, 31.976728, 35.124805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.986404, 31.975866, 34.846115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587684, 0.535260, -0.606732,
		0.374236, -0.844684, -0.382696,
		-0.717339, -0.002157, -0.696721,
		42.771202, 31.975220, 34.637100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.443714, 31.862694, 34.439766>,  <43.273338, 31.976728, 35.124805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.443714, 31.862694, 34.439766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.109653, 32.069244, 34.364006>,  <42.909218, 32.193176, 34.318550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.109653, 32.069244, 34.364006>,  <43.443714, 31.862694, 34.439766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.109653, 32.069244, 34.364006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321605, 0.179104, -0.929780,
		-0.446196, -0.837422, -0.315650,
		-0.835152, 0.516378, -0.189404,
		42.859108, 32.224159, 34.307186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.152756, 32.032902, 34.105133>,  <43.443714, 31.862694, 34.439766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.152756, 32.032902, 34.105133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.280468, 32.369835, 33.931450>,  <44.357098, 32.571995, 33.827240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.280468, 32.369835, 33.931450>,  <44.152756, 32.032902, 34.105133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.280468, 32.369835, 33.931450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442308, 0.537678, 0.717821,
		0.838106, -0.037135, 0.544241,
		0.319283, 0.842332, -0.434206,
		44.376251, 32.622536, 33.801189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.114582, 32.510799, 34.638687>,  <44.152756, 32.032902, 34.105133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.114582, 32.510799, 34.638687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.206280, 32.760849, 34.340244>,  <44.261299, 32.910877, 34.161179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.206280, 32.760849, 34.340244>,  <44.114582, 32.510799, 34.638687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.206280, 32.760849, 34.340244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358706, 0.766826, 0.532267,
		0.904862, 0.145612, 0.400027,
		0.229247, 0.625120, -0.746104,
		44.275055, 32.948383, 34.116413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.472000, 33.048599, 34.852390>,  <44.114582, 32.510799, 34.638687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.472000, 33.048599, 34.852390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.276012, 33.162350, 34.522770>,  <44.158421, 33.230602, 34.324997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.276012, 33.162350, 34.522770>,  <44.472000, 33.048599, 34.852390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.276012, 33.162350, 34.522770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300714, 0.832133, 0.465968,
		0.818232, 0.476112, -0.322200,
		-0.489966, 0.284381, -0.824051,
		44.129021, 33.247665, 34.275555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.248413, 33.240749, 35.069851>,  <44.472000, 33.048599, 34.852390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.248413, 33.240749, 35.069851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.161942, 33.551117, 34.832794>,  <45.110058, 33.737335, 34.690559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.161942, 33.551117, 34.832794>,  <45.248413, 33.240749, 35.069851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.161942, 33.551117, 34.832794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912160, -0.055957, -0.405995,
		-0.348180, -0.628351, -0.695662,
		-0.216180, 0.775915, -0.592640,
		45.097088, 33.783890, 34.655003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.268806, 33.109291, 34.235249>,  <45.248413, 33.240749, 35.069851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.268806, 33.109291, 34.235249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.359856, 33.481194, 34.351002>,  <45.414486, 33.704334, 34.420452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.359856, 33.481194, 34.351002>,  <45.268806, 33.109291, 34.235249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.359856, 33.481194, 34.351002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903607, -0.090933, -0.418598,
		-0.362881, 0.356767, -0.860834,
		0.227620, 0.929757, 0.289379,
		45.428143, 33.760120, 34.437817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.660679, 33.601730, 33.733509>,  <45.268806, 33.109291, 34.235249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.660679, 33.601730, 33.733509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.794746, 33.768261, 34.071579>,  <45.875187, 33.868179, 34.274422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.794746, 33.768261, 34.071579>,  <45.660679, 33.601730, 33.733509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.794746, 33.768261, 34.071579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939748, -0.083629, -0.331480,
		-0.067324, 0.905359, -0.419276,
		0.335172, 0.416331, 0.845179,
		45.895298, 33.893162, 34.325134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.988171, 34.257511, 33.619099>,  <45.660679, 33.601730, 33.733509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.988171, 34.257511, 33.619099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.128082, 34.046997, 33.929111>,  <46.212029, 33.920689, 34.115120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.128082, 34.046997, 33.929111>,  <45.988171, 34.257511, 33.619099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.128082, 34.046997, 33.929111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915855, 0.018007, -0.401105,
		0.197140, 0.850117, 0.488299,
		0.349779, -0.526285, 0.775034,
		46.233017, 33.889111, 34.161621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.507832, 34.625294, 34.052864>,  <45.988171, 34.257511, 33.619099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.507832, 34.625294, 34.052864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.555542, 34.228832, 34.029591>,  <46.584167, 33.990955, 34.015625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.555542, 34.228832, 34.029591>,  <46.507832, 34.625294, 34.052864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.555542, 34.228832, 34.029591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898915, 0.132685, -0.417548,
		0.421575, -0.002498, 0.906790,
		0.119275, -0.991155, -0.058182,
		46.591324, 33.931484, 34.012135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.053474, 34.357052, 34.528267>,  <46.507832, 34.625294, 34.052864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.053474, 34.357052, 34.528267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.032681, 34.150600, 34.186295>,  <47.020206, 34.026730, 33.981110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.032681, 34.150600, 34.186295>,  <47.053474, 34.357052, 34.528267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.032681, 34.150600, 34.186295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986452, 0.106847, -0.124482,
		0.155595, -0.849819, 0.503585,
		-0.051980, -0.516132, -0.854930,
		47.017086, 33.995762, 33.929817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.549088, 33.786423, 34.587326>,  <47.053474, 34.357052, 34.528267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.549088, 33.786423, 34.587326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.476757, 33.897900, 34.210045>,  <47.433357, 33.964787, 33.983677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.476757, 33.897900, 34.210045>,  <47.549088, 33.786423, 34.587326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.476757, 33.897900, 34.210045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982975, 0.019446, -0.182708,
		-0.032578, -0.960182, -0.277469,
		-0.180829, 0.278697, -0.943201,
		47.422508, 33.981510, 33.927086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.453091, 34.278748, 35.267906>,  <47.549088, 33.786423, 34.587326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.453091, 34.278748, 35.267906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.589668, 34.573929, 35.500748>,  <47.671616, 34.751038, 35.640453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.589668, 34.573929, 35.500748>,  <47.453091, 34.278748, 35.267906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.589668, 34.573929, 35.500748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581268, 0.320896, -0.747765,
		-0.738610, 0.593677, -0.319381,
		0.341443, 0.737952, 0.582102,
		47.692101, 34.795315, 35.675377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.440304, 34.949234, 34.861885>,  <47.453091, 34.278748, 35.267906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.440304, 34.949234, 34.861885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.725292, 34.926582, 35.141651>,  <47.896286, 34.912991, 35.309509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.725292, 34.926582, 35.141651>,  <47.440304, 34.949234, 34.861885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.725292, 34.926582, 35.141651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644343, 0.447503, -0.620131,
		-0.277871, 0.892487, 0.355323,
		0.712468, -0.056634, 0.699416,
		47.939034, 34.909592, 35.351475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.750809, 29.412500, 27.569294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.385853, 29.558504, 27.643387>,  <32.166878, 29.646107, 27.687843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.385853, 29.558504, 27.643387>,  <32.750809, 29.412500, 27.569294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.385853, 29.558504, 27.643387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321083, 0.357554, 0.876961,
		0.253871, 0.859606, -0.443427,
		-0.912390, 0.365012, 0.185232,
		32.112137, 29.668007, 27.698956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854580, 30.064388, 27.802462>,  <32.750809, 29.412500, 27.569294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854580, 30.064388, 27.802462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.488087, 29.978022, 27.937452>,  <32.268188, 29.926201, 28.018448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.488087, 29.978022, 27.937452>,  <32.854580, 30.064388, 27.802462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488087, 29.978022, 27.937452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266582, 0.300242, 0.915854,
		-0.299075, 0.929104, -0.217532,
		-0.916236, -0.215919, 0.337478,
		32.213215, 29.913246, 28.038696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632858, 30.664169, 28.234554>,  <32.854580, 30.064388, 27.802462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632858, 30.664169, 28.234554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.390434, 30.364868, 28.342485>,  <32.244980, 30.185287, 28.407244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.390434, 30.364868, 28.342485>,  <32.632858, 30.664169, 28.234554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390434, 30.364868, 28.342485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115838, 0.252581, 0.960617,
		-0.786938, 0.613448, -0.066404,
		-0.606061, -0.748254, 0.269826,
		32.208614, 30.140392, 28.423433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.156475, 30.950943, 28.655556>,  <32.632858, 30.664169, 28.234554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.156475, 30.950943, 28.655556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.122868, 30.566597, 28.761141>,  <32.102703, 30.335989, 28.824492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.122868, 30.566597, 28.761141>,  <32.156475, 30.950943, 28.655556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122868, 30.566597, 28.761141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052795, 0.268818, 0.961743,
		-0.995065, 0.066869, -0.073315,
		-0.084019, -0.960867, 0.263961,
		32.097660, 30.278337, 28.840330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595652, 30.893694, 29.114985>,  <32.156475, 30.950943, 28.655556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.595652, 30.893694, 29.114985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.838081, 30.581133, 29.174425>,  <31.983540, 30.393597, 29.210091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.838081, 30.581133, 29.174425>,  <31.595652, 30.893694, 29.114985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838081, 30.581133, 29.174425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032103, 0.210705, 0.977022,
		-0.794760, -0.587378, 0.152788,
		0.606074, -0.781403, 0.148603,
		32.019905, 30.346712, 29.219006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331310, 30.453604, 29.776527>,  <31.595652, 30.893694, 29.114985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331310, 30.453604, 29.776527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.714895, 30.354591, 29.721220>,  <31.945047, 30.295185, 29.688036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.714895, 30.354591, 29.721220>,  <31.331310, 30.453604, 29.776527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.714895, 30.354591, 29.721220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186934, 0.185303, 0.964737,
		-0.213179, -0.950995, 0.223971,
		0.958963, -0.247530, -0.138270,
		32.002583, 30.280333, 29.679739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.437220, 30.068401, 30.325146>,  <31.331310, 30.453604, 29.776527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.437220, 30.068401, 30.325146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.791540, 30.204601, 30.199026>,  <32.004131, 30.286322, 30.123354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.791540, 30.204601, 30.199026>,  <31.437220, 30.068401, 30.325146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791540, 30.204601, 30.199026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249315, 0.223867, 0.942192,
		0.391401, -0.913205, 0.113411,
		0.885803, 0.340500, -0.315298,
		32.057281, 30.306751, 30.104437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867449, 29.823662, 30.843159>,  <31.437220, 30.068401, 30.325146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.867449, 29.823662, 30.843159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.113239, 30.065475, 30.640394>,  <32.260712, 30.210564, 30.518736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.113239, 30.065475, 30.640394>,  <31.867449, 29.823662, 30.843159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113239, 30.065475, 30.640394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439993, 0.270727, 0.856220,
		0.654849, -0.749163, -0.099635,
		0.614475, 0.604534, -0.506912,
		32.297581, 30.246836, 30.488321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563812, 29.629507, 31.021238>,  <31.867449, 29.823662, 30.843159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563812, 29.629507, 31.021238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.538727, 30.017378, 30.926760>,  <32.523678, 30.250101, 30.870071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.538727, 30.017378, 30.926760>,  <32.563812, 29.629507, 31.021238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538727, 30.017378, 30.926760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437397, 0.239428, 0.866809,
		0.897079, -0.048954, -0.439149,
		-0.062711, 0.969679, -0.236198,
		32.519913, 30.308281, 30.855900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.223652, 29.891077, 31.205496>,  <32.563812, 29.629507, 31.021238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.223652, 29.891077, 31.205496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.001637, 30.222496, 31.175983>,  <32.868427, 30.421347, 31.158276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.001637, 30.222496, 31.175983>,  <33.223652, 29.891077, 31.205496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001637, 30.222496, 31.175983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448590, 0.372839, 0.812255,
		0.700499, 0.417736, -0.578618,
		-0.555039, 0.828546, -0.073781,
		32.835125, 30.471060, 31.153849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607273, 30.498749, 30.826218>,  <33.223652, 29.891077, 31.205496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607273, 30.498749, 30.826218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.323750, 30.620317, 31.080845>,  <33.153633, 30.693258, 31.233622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.323750, 30.620317, 31.080845>,  <33.607273, 30.498749, 30.826218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323750, 30.620317, 31.080845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703239, 0.374978, 0.604025,
		-0.055123, 0.875799, -0.479519,
		-0.708813, 0.303921, 0.636566,
		33.111107, 30.711494, 31.271814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776619, 31.207783, 30.991020>,  <33.607273, 30.498749, 30.826218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776619, 31.207783, 30.991020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.523327, 31.161234, 31.297087>,  <33.371353, 31.133305, 31.480726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.523327, 31.161234, 31.297087>,  <33.776619, 31.207783, 30.991020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523327, 31.161234, 31.297087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579325, 0.584314, 0.568295,
		-0.513232, 0.803140, -0.302586,
		-0.633226, -0.116372, 0.765168,
		33.333359, 31.126322, 31.526638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722164, 31.899235, 31.350773>,  <33.776619, 31.207783, 30.991020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722164, 31.899235, 31.350773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.616299, 31.630051, 31.627056>,  <33.552780, 31.468540, 31.792826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.616299, 31.630051, 31.627056>,  <33.722164, 31.899235, 31.350773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616299, 31.630051, 31.627056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452625, 0.545762, 0.705177,
		-0.851517, 0.499269, 0.160152,
		-0.264668, -0.672959, 0.690707,
		33.536900, 31.428164, 31.834269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707260, 32.246418, 32.061207>,  <33.722164, 31.899235, 31.350773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707260, 32.246418, 32.061207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.691021, 31.870684, 32.197437>,  <33.681278, 31.645243, 32.279175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.691021, 31.870684, 32.197437>,  <33.707260, 32.246418, 32.061207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691021, 31.870684, 32.197437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470208, 0.282796, 0.836021,
		-0.881621, 0.194079, 0.430206,
		-0.040594, -0.939340, 0.340576,
		33.678844, 31.588882, 32.299610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407944, 32.324509, 32.685375>,  <33.707260, 32.246418, 32.061207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407944, 32.324509, 32.685375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.630234, 31.992357, 32.669178>,  <33.763607, 31.793066, 32.659462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.630234, 31.992357, 32.669178>,  <33.407944, 32.324509, 32.685375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630234, 31.992357, 32.669178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520554, 0.309577, 0.795730,
		-0.648222, -0.463285, 0.604297,
		0.555727, -0.830378, -0.040490,
		33.796951, 31.743244, 32.657032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575256, 32.286934, 33.282600>,  <33.407944, 32.324509, 32.685375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575256, 32.286934, 33.282600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.842258, 32.031605, 33.129246>,  <34.002460, 31.878407, 33.037235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.842258, 32.031605, 33.129246>,  <33.575256, 32.286934, 33.282600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842258, 32.031605, 33.129246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644285, 0.237008, 0.727134,
		-0.373283, -0.732372, 0.569466,
		0.667501, -0.638325, -0.383385,
		34.042507, 31.840107, 33.014229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729374, 31.863113, 33.833210>,  <33.575256, 32.286934, 33.282600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729374, 31.863113, 33.833210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.039402, 31.804287, 33.587399>,  <34.225418, 31.768991, 33.439911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.039402, 31.804287, 33.587399>,  <33.729374, 31.863113, 33.833210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039402, 31.804287, 33.587399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631851, 0.189203, 0.751642,
		0.005729, -0.970862, 0.239569,
		0.775069, -0.147066, -0.614525,
		34.271923, 31.760168, 33.403042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215439, 31.199114, 33.961380>,  <33.729374, 31.863113, 33.833210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215439, 31.199114, 33.961380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.429371, 31.475739, 33.767185>,  <34.557732, 31.641712, 33.650669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.429371, 31.475739, 33.767185>,  <34.215439, 31.199114, 33.961380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429371, 31.475739, 33.767185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646681, 0.034788, 0.761967,
		0.543835, -0.721481, -0.428613,
		0.534834, 0.691560, -0.485487,
		34.589821, 31.683207, 33.621540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963135, 30.979691, 34.135220>,  <34.215439, 31.199114, 33.961380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963135, 30.979691, 34.135220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.011005, 31.330002, 33.948162>,  <35.039726, 31.540188, 33.835930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.011005, 31.330002, 33.948162>,  <34.963135, 30.979691, 34.135220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011005, 31.330002, 33.948162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599674, 0.311631, 0.737073,
		0.791245, -0.368643, -0.487887,
		0.119676, 0.875779, -0.467642,
		35.046909, 31.592735, 33.807869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691845, 31.032232, 33.935307>,  <34.963135, 30.979691, 34.135220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691845, 31.032232, 33.935307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.508152, 31.386499, 33.962723>,  <35.397938, 31.599060, 33.979172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.508152, 31.386499, 33.962723>,  <35.691845, 31.032232, 33.935307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508152, 31.386499, 33.962723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721963, 0.327169, 0.609696,
		0.517565, 0.329474, -0.789666,
		-0.459233, 0.885668, 0.068537,
		35.370380, 31.652201, 33.983284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172531, 31.473513, 33.841469>,  <35.691845, 31.032232, 33.935307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172531, 31.473513, 33.841469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.903370, 31.709648, 34.019772>,  <35.741871, 31.851330, 34.126755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.903370, 31.709648, 34.019772>,  <36.172531, 31.473513, 33.841469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903370, 31.709648, 34.019772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722101, 0.393453, 0.569003,
		0.160519, 0.704767, -0.691040,
		-0.672906, 0.590337, 0.445757,
		35.701496, 31.886749, 34.153500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510063, 32.150509, 33.776989>,  <36.172531, 31.473513, 33.841469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510063, 32.150509, 33.776989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.213451, 32.178959, 34.043846>,  <36.035484, 32.196030, 34.203960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.213451, 32.178959, 34.043846>,  <36.510063, 32.150509, 33.776989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213451, 32.178959, 34.043846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639521, 0.375577, 0.670787,
		-0.202850, 0.924058, -0.323990,
		-0.741529, 0.071129, 0.667140,
		35.990993, 32.200298, 34.243988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563450, 32.777168, 33.954361>,  <36.510063, 32.150509, 33.776989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563450, 32.777168, 33.954361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.383171, 32.567371, 34.243298>,  <36.275005, 32.441494, 34.416660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.383171, 32.567371, 34.243298>,  <36.563450, 32.777168, 33.954361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383171, 32.567371, 34.243298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713311, 0.274917, 0.644677,
		-0.536713, 0.805808, 0.250223,
		-0.450696, -0.524493, 0.722343,
		36.247963, 32.410023, 34.459999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172760, 32.559132, 33.826229>,  <36.563450, 32.777168, 33.954361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172760, 32.559132, 33.826229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.542374, 32.417435, 33.768726>,  <37.764141, 32.332417, 33.734222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.542374, 32.417435, 33.768726>,  <37.172760, 32.559132, 33.826229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542374, 32.417435, 33.768726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304939, -0.456147, -0.836028,
		0.230583, 0.816358, -0.529520,
		0.924037, -0.354245, -0.143760,
		37.819584, 32.311161, 33.725597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222786, 32.555134, 33.108536>,  <37.172760, 32.559132, 33.826229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222786, 32.555134, 33.108536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.524574, 32.308277, 33.197891>,  <37.705647, 32.160164, 33.251503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.524574, 32.308277, 33.197891>,  <37.222786, 32.555134, 33.108536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524574, 32.308277, 33.197891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325314, -0.647238, -0.689386,
		0.570036, 0.447453, -0.689090,
		0.754473, -0.617146, 0.223386,
		37.750916, 32.123135, 33.264908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591064, 32.449116, 32.486767>,  <37.222786, 32.555134, 33.108536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591064, 32.449116, 32.486767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.675201, 32.132332, 32.716045>,  <37.725685, 31.942261, 32.853611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.675201, 32.132332, 32.716045>,  <37.591064, 32.449116, 32.486767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675201, 32.132332, 32.716045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187834, -0.608128, -0.771297,
		0.959414, 0.054571, -0.276672,
		0.210343, -0.791961, 0.573196,
		37.738304, 31.894743, 32.888004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877968, 32.010914, 32.034618>,  <37.591064, 32.449116, 32.486767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877968, 32.010914, 32.034618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.803799, 31.754164, 32.332241>,  <37.759296, 31.600113, 32.510815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.803799, 31.754164, 32.332241>,  <37.877968, 32.010914, 32.034618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803799, 31.754164, 32.332241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220247, -0.710773, -0.668052,
		0.957659, -0.287745, -0.009581,
		-0.185419, -0.641876, 0.744053,
		37.748173, 31.561602, 32.555458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231949, 31.347216, 31.931046>,  <37.877968, 32.010914, 32.034618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231949, 31.347216, 31.931046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.914669, 31.262119, 32.159283>,  <37.724300, 31.211061, 32.296227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.914669, 31.262119, 32.159283>,  <38.231949, 31.347216, 31.931046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914669, 31.262119, 32.159283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306677, -0.669944, -0.676110,
		0.526102, -0.711278, 0.466155,
		-0.793200, -0.212743, 0.570591,
		37.676708, 31.198296, 32.330460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203732, 30.679375, 31.977146>,  <38.231949, 31.347216, 31.931046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203732, 30.679375, 31.977146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.834770, 30.817873, 32.045605>,  <37.613396, 30.900972, 32.086681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.834770, 30.817873, 32.045605>,  <38.203732, 30.679375, 31.977146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834770, 30.817873, 32.045605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367707, -0.651643, -0.663441,
		-0.118187, -0.674890, 0.728393,
		-0.922401, 0.346245, 0.171146,
		37.558048, 30.921747, 32.096947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865845, 30.193209, 31.708559>,  <38.203732, 30.679375, 31.977146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865845, 30.193209, 31.708559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.548370, 30.428879, 31.769142>,  <37.357887, 30.570282, 31.805492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.548370, 30.428879, 31.769142>,  <37.865845, 30.193209, 31.708559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548370, 30.428879, 31.769142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507353, -0.503716, -0.699187,
		-0.335652, -0.631776, 0.698711,
		-0.793682, 0.589176, 0.151460,
		37.310265, 30.605633, 31.814581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270634, 29.778112, 31.511770>,  <37.865845, 30.193209, 31.708559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270634, 29.778112, 31.511770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.125198, 30.150471, 31.525867>,  <37.037937, 30.373886, 31.534327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.125198, 30.150471, 31.525867>,  <37.270634, 29.778112, 31.511770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125198, 30.150471, 31.525867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697646, -0.247023, -0.672511,
		-0.617330, -0.269104, 0.739248,
		-0.363586, 0.930894, 0.035245,
		37.016121, 30.429739, 31.536442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599781, 29.683992, 31.636492>,  <37.270634, 29.778112, 31.511770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599781, 29.683992, 31.636492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.672340, 30.041769, 31.472994>,  <36.715878, 30.256435, 31.374895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.672340, 30.041769, 31.472994>,  <36.599781, 29.683992, 31.636492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672340, 30.041769, 31.472994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503181, -0.272692, -0.820029,
		-0.844928, 0.354425, 0.400599,
		0.181399, 0.894440, -0.408745,
		36.726761, 30.310101, 31.350370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062260, 29.865648, 31.284092>,  <36.599781, 29.683992, 31.636492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062260, 29.865648, 31.284092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.341698, 30.092791, 31.109964>,  <36.509361, 30.229076, 31.005487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.341698, 30.092791, 31.109964>,  <36.062260, 29.865648, 31.284092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341698, 30.092791, 31.109964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452574, -0.120552, -0.883541,
		-0.554200, 0.814254, 0.172779,
		0.698598, 0.567854, -0.435320,
		36.551277, 30.263147, 30.979368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741375, 30.384974, 30.859066>,  <36.062260, 29.865648, 31.284092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741375, 30.384974, 30.859066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.115784, 30.371511, 30.718939>,  <36.340431, 30.363434, 30.634863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.115784, 30.371511, 30.718939>,  <35.741375, 30.384974, 30.859066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115784, 30.371511, 30.718939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338627, 0.184996, -0.922555,
		0.095858, 0.982163, 0.161764,
		0.936025, -0.033656, -0.350320,
		36.396591, 30.361414, 30.613842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892673, 31.077707, 30.396145>,  <35.741375, 30.384974, 30.859066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892673, 31.077707, 30.396145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.132099, 30.783092, 30.270142>,  <36.275757, 30.606323, 30.194540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.132099, 30.783092, 30.270142>,  <35.892673, 31.077707, 30.396145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132099, 30.783092, 30.270142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295971, 0.162073, -0.941347,
		0.744390, 0.656694, -0.120982,
		0.598569, -0.736536, -0.315008,
		36.311668, 30.562132, 30.175640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224117, 31.316948, 29.761114>,  <35.892673, 31.077707, 30.396145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224117, 31.316948, 29.761114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.292709, 30.923082, 29.748262>,  <36.333866, 30.686764, 29.740551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.292709, 30.923082, 29.748262>,  <36.224117, 31.316948, 29.761114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292709, 30.923082, 29.748262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316830, -0.024239, -0.948172,
		0.932852, 0.172773, -0.316128,
		0.171481, -0.984663, -0.032129,
		36.344154, 30.627684, 29.738625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658089, 31.124229, 29.160324>,  <36.224117, 31.316948, 29.761114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658089, 31.124229, 29.160324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.428246, 30.814219, 29.265516>,  <36.290340, 30.628212, 29.328632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.428246, 30.814219, 29.265516>,  <36.658089, 31.124229, 29.160324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428246, 30.814219, 29.265516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379526, -0.032359, -0.924615,
		0.725112, -0.631098, -0.275549,
		-0.574606, -0.775028, 0.262982,
		36.255863, 30.581711, 29.344410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625446, 30.693901, 28.535187>,  <36.658089, 31.124229, 29.160324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625446, 30.693901, 28.535187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.320343, 30.593336, 28.773512>,  <36.137280, 30.532997, 28.916508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.320343, 30.593336, 28.773512>,  <36.625446, 30.693901, 28.535187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320343, 30.593336, 28.773512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565440, -0.187808, -0.803123,
		0.313814, -0.949484, 0.001093,
		-0.762757, -0.251413, 0.595813,
		36.091515, 30.517912, 28.952255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471611, 30.056320, 28.211786>,  <36.625446, 30.693901, 28.535187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471611, 30.056320, 28.211786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.146980, 30.125092, 28.435133>,  <35.952202, 30.166355, 28.569141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.146980, 30.125092, 28.435133>,  <36.471611, 30.056320, 28.211786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146980, 30.125092, 28.435133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576163, -0.077170, -0.813684,
		-0.096814, -0.982081, 0.161694,
		-0.811581, 0.171938, 0.558367,
		35.903507, 30.176670, 28.602644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969017, 29.473173, 28.200989>,  <36.471611, 30.056320, 28.211786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969017, 29.473173, 28.200989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.767876, 29.812965, 28.264885>,  <35.647190, 30.016840, 28.303223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.767876, 29.812965, 28.264885>,  <35.969017, 29.473173, 28.200989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767876, 29.812965, 28.264885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521592, -0.150847, -0.839754,
		-0.689259, -0.505596, 0.518937,
		-0.502856, 0.849481, 0.159742,
		35.617020, 30.067810, 28.312807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.056820, 29.230469, 28.200844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.111748, 29.623425, 28.150158>,  <35.144703, 29.859198, 28.119745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.111748, 29.623425, 28.150158>,  <35.056820, 29.230469, 28.200844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111748, 29.623425, 28.150158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589574, -0.021738, -0.807422,
		-0.795956, 0.185581, 0.576206,
		0.137317, 0.982389, -0.126716,
		35.152943, 29.918140, 28.112143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454582, 29.387379, 27.968985>,  <35.056820, 29.230469, 28.200844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454582, 29.387379, 27.968985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.631248, 29.738672, 27.895624>,  <34.737247, 29.949448, 27.851608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.631248, 29.738672, 27.895624>,  <34.454582, 29.387379, 27.968985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631248, 29.738672, 27.895624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589519, 0.129984, -0.797227,
		-0.676313, 0.460226, 0.575146,
		0.441665, 0.878235, -0.183402,
		34.763748, 30.002142, 27.840603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898479, 29.835167, 27.677464>,  <34.454582, 29.387379, 27.968985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898479, 29.835167, 27.677464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.234348, 30.018942, 27.561628>,  <34.435871, 30.129208, 27.492126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.234348, 30.018942, 27.561628>,  <33.898479, 29.835167, 27.677464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234348, 30.018942, 27.561628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400034, 0.162595, -0.901962,
		-0.367310, 0.873201, 0.320318,
		0.839676, 0.459438, -0.289587,
		34.486252, 30.156773, 27.474752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658195, 30.472662, 27.479099>,  <33.898479, 29.835167, 27.677464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658195, 30.472662, 27.479099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.005573, 30.376801, 27.305489>,  <34.214001, 30.319283, 27.201323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.005573, 30.376801, 27.305489>,  <33.658195, 30.472662, 27.479099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005573, 30.376801, 27.305489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455264, -0.038806, -0.889510,
		0.196333, 0.970082, -0.142807,
		0.868440, -0.239655, -0.434025,
		34.266106, 30.304903, 27.175282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804199, 31.010845, 26.875490>,  <33.658195, 30.472662, 27.479099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804199, 31.010845, 26.875490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.989838, 30.661041, 26.819130>,  <34.101219, 30.451159, 26.785313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.989838, 30.661041, 26.819130>,  <33.804199, 31.010845, 26.875490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989838, 30.661041, 26.819130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353558, -0.037033, -0.934679,
		0.812166, 0.483595, -0.326376,
		0.464093, -0.874508, -0.140902,
		34.129066, 30.398689, 26.776859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192707, 31.030855, 26.229609>,  <33.804199, 31.010845, 26.875490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192707, 31.030855, 26.229609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.148582, 30.639029, 26.296875>,  <34.122108, 30.403933, 26.337234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.148582, 30.639029, 26.296875>,  <34.192707, 31.030855, 26.229609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148582, 30.639029, 26.296875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284712, -0.130963, -0.949625,
		0.952245, -0.152634, -0.264447,
		-0.110313, -0.979567, 0.168166,
		34.115490, 30.345158, 26.347324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417984, 30.768427, 25.628172>,  <34.192707, 31.030855, 26.229609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417984, 30.768427, 25.628172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.223679, 30.447836, 25.767698>,  <34.107094, 30.255482, 25.851414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.223679, 30.447836, 25.767698>,  <34.417984, 30.768427, 25.628172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223679, 30.447836, 25.767698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322846, -0.206331, -0.923687,
		0.812284, -0.561306, -0.158526,
		-0.485762, -0.801476, 0.348814,
		34.077950, 30.207394, 25.872343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695274, 30.170784, 25.390348>,  <34.417984, 30.768427, 25.628172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695274, 30.170784, 25.390348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.324593, 30.051872, 25.482307>,  <34.102184, 29.980526, 25.537483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.324593, 30.051872, 25.482307>,  <34.695274, 30.170784, 25.390348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324593, 30.051872, 25.482307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078359, -0.445453, -0.891870,
		0.367543, -0.844510, 0.389507,
		-0.926700, -0.297279, 0.229898,
		34.046581, 29.962688, 25.551277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630310, 29.424665, 25.268517>,  <34.695274, 30.170784, 25.390348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630310, 29.424665, 25.268517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.264919, 29.578135, 25.214317>,  <34.045685, 29.670216, 25.181799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.264919, 29.578135, 25.214317>,  <34.630310, 29.424665, 25.268517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264919, 29.578135, 25.214317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014312, -0.363092, -0.931643,
		-0.406645, -0.849093, 0.337166,
		-0.913474, 0.383674, -0.135497,
		33.990875, 29.693235, 25.173668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199844, 28.919958, 24.779562>,  <34.630310, 29.424665, 25.268517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199844, 28.919958, 24.779562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.990101, 29.259995, 24.759995>,  <33.864254, 29.464016, 24.748255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.990101, 29.259995, 24.759995>,  <34.199844, 28.919958, 24.779562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990101, 29.259995, 24.759995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113675, -0.126820, -0.985391,
		-0.843876, -0.511136, 0.163133,
		-0.524357, 0.850092, -0.048917,
		33.832794, 29.515022, 24.745319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572437, 28.750511, 24.344933>,  <34.199844, 28.919958, 24.779562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572437, 28.750511, 24.344933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.622166, 29.147373, 24.339621>,  <33.652000, 29.385490, 24.336433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.622166, 29.147373, 24.339621>,  <33.572437, 28.750511, 24.344933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622166, 29.147373, 24.339621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122954, 0.002121, -0.992410,
		-0.984595, 0.125007, 0.122253,
		0.124318, 0.992154, -0.013282,
		33.659462, 29.445019, 24.335636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.083767, 28.907290, 23.933836>,  <33.572437, 28.750511, 24.344933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.083767, 28.907290, 23.933836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.335804, 29.217884, 23.936699>,  <33.487026, 29.404242, 23.938416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.335804, 29.217884, 23.936699>,  <33.083767, 28.907290, 23.933836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335804, 29.217884, 23.936699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136355, 0.119711, -0.983400,
		-0.764454, 0.618658, 0.181307,
		0.630093, 0.776487, 0.007157,
		33.524834, 29.450830, 23.938847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736950, 29.455254, 23.700500>,  <33.083767, 28.907290, 23.933836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736950, 29.455254, 23.700500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.123810, 29.533018, 23.634987>,  <33.355927, 29.579678, 23.595678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.123810, 29.533018, 23.634987>,  <32.736950, 29.455254, 23.700500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123810, 29.533018, 23.634987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198297, 0.173838, -0.964603,
		-0.159060, 0.965393, 0.206679,
		0.967150, 0.194413, -0.163784,
		33.413956, 29.591343, 23.585852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704147, 30.039047, 23.239710>,  <32.736950, 29.455254, 23.700500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704147, 30.039047, 23.239710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.084831, 29.917456, 23.222553>,  <33.313244, 29.844500, 23.212259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.084831, 29.917456, 23.222553>,  <32.704147, 30.039047, 23.239710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084831, 29.917456, 23.222553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068815, 0.347405, -0.935187,
		0.299179, 0.887078, 0.351548,
		0.951712, -0.303980, -0.042892,
		33.370346, 29.826262, 23.209686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034943, 30.612209, 23.021696>,  <32.704147, 30.039047, 23.239710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034943, 30.612209, 23.021696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.266399, 30.300732, 22.924692>,  <33.405273, 30.113846, 22.866489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.266399, 30.300732, 22.924692>,  <33.034943, 30.612209, 23.021696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266399, 30.300732, 22.924692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034163, 0.320229, -0.946724,
		0.814866, 0.539529, 0.211901,
		0.578642, -0.778692, -0.242512,
		33.439991, 30.067123, 22.851938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521145, 30.775621, 22.563217>,  <33.034943, 30.612209, 23.021696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521145, 30.775621, 22.563217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.545361, 30.389143, 22.462978>,  <33.559891, 30.157255, 22.402836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.545361, 30.389143, 22.462978>,  <33.521145, 30.775621, 22.563217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545361, 30.389143, 22.462978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061632, 0.246958, -0.967064,
		0.996261, 0.073990, -0.044598,
		0.060539, -0.966197, -0.250595,
		33.563522, 30.099283, 22.387800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819233, 30.791870, 21.952356>,  <33.521145, 30.775621, 22.563217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819233, 30.791870, 21.952356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.693283, 30.413492, 21.921255>,  <33.617714, 30.186466, 21.902594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.693283, 30.413492, 21.921255>,  <33.819233, 30.791870, 21.952356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693283, 30.413492, 21.921255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038189, 0.094480, -0.994794,
		0.948364, -0.310268, -0.065874,
		-0.314877, -0.945943, -0.077753,
		33.598820, 30.129709, 21.897930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083523, 30.592428, 21.296814>,  <33.819233, 30.791870, 21.952356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083523, 30.592428, 21.296814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.816494, 30.310961, 21.394140>,  <33.656277, 30.142080, 21.452536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.816494, 30.310961, 21.394140>,  <34.083523, 30.592428, 21.296814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816494, 30.310961, 21.394140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331595, -0.011608, -0.943350,
		0.666630, -0.710434, -0.225583,
		-0.667570, -0.703668, 0.243315,
		33.616222, 30.099861, 21.467134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120430, 30.071320, 20.765753>,  <34.083523, 30.592428, 21.296814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120430, 30.071320, 20.765753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.759445, 30.004705, 20.924660>,  <33.542854, 29.964737, 21.020004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.759445, 30.004705, 20.924660>,  <34.120430, 30.071320, 20.765753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759445, 30.004705, 20.924660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411949, 0.064084, -0.908951,
		0.125914, -0.983951, -0.126438,
		-0.902465, -0.166536, 0.397269,
		33.488705, 29.954746, 21.043840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788258, 29.532284, 20.329773>,  <34.120430, 30.071320, 20.765753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788258, 29.532284, 20.329773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.482079, 29.709507, 20.516443>,  <33.298370, 29.815840, 20.628447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.482079, 29.709507, 20.516443>,  <33.788258, 29.532284, 20.329773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482079, 29.709507, 20.516443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456162, 0.137924, -0.879144,
		-0.453876, -0.885821, 0.096531,
		-0.765449, 0.443056, 0.466678,
		33.252445, 29.842424, 20.656446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189022, 29.350130, 20.041958>,  <33.788258, 29.532284, 20.329773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189022, 29.350130, 20.041958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.043549, 29.666773, 20.238361>,  <32.956264, 29.856758, 20.356203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.043549, 29.666773, 20.238361>,  <33.189022, 29.350130, 20.041958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043549, 29.666773, 20.238361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616966, 0.190219, -0.763655,
		-0.697914, -0.580667, 0.419215,
		-0.363687, 0.791608, 0.491009,
		32.934444, 29.904255, 20.385664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412952, 29.246662, 20.129665>,  <33.189022, 29.350130, 20.041958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412952, 29.246662, 20.129665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.508015, 29.634548, 20.107138>,  <32.565052, 29.867279, 20.093620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.508015, 29.634548, 20.107138>,  <32.412952, 29.246662, 20.129665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508015, 29.634548, 20.107138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566018, 0.091132, -0.819340,
		-0.789394, 0.226600, 0.570534,
		0.237656, 0.969715, -0.056321,
		32.579311, 29.925463, 20.090242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790260, 29.756144, 20.122725>,  <32.412952, 29.246662, 20.129665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790260, 29.756144, 20.122725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.088772, 29.910284, 19.905626>,  <32.267879, 30.002768, 19.775368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.088772, 29.910284, 19.905626>,  <31.790260, 29.756144, 20.122725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088772, 29.910284, 19.905626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535654, -0.136377, -0.833353,
		-0.395152, 0.912637, 0.104640,
		0.746277, 0.385352, -0.542747,
		32.312656, 30.025890, 19.742802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.581007, 30.256842, 19.541595>,  <31.790260, 29.756144, 20.122725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.581007, 30.256842, 19.541595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.951647, 30.138260, 19.449053>,  <32.174030, 30.067112, 19.393526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.951647, 30.138260, 19.449053>,  <31.581007, 30.256842, 19.541595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951647, 30.138260, 19.449053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247605, -0.017928, -0.968695,
		0.283025, 0.954879, -0.090015,
		0.926601, -0.296453, -0.231359,
		32.229626, 30.049324, 19.379644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699286, 30.878168, 19.999311>,  <31.581007, 30.256842, 19.541595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699286, 30.878168, 19.999311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.326208, 31.018681, 19.966612>,  <31.102362, 31.102987, 19.946991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.326208, 31.018681, 19.966612>,  <31.699286, 30.878168, 19.999311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.326208, 31.018681, 19.966612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105233, -0.048252, 0.993276,
		0.344975, 0.935026, 0.081970,
		-0.932694, 0.351281, -0.081750,
		31.046400, 31.124065, 19.942087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658449, 31.444323, 20.464563>,  <31.699286, 30.878168, 19.999311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658449, 31.444323, 20.464563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.282753, 31.312618, 20.425749>,  <31.057335, 31.233595, 20.402460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.282753, 31.312618, 20.425749>,  <31.658449, 31.444323, 20.464563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.282753, 31.312618, 20.425749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105763, 0.008652, 0.994354,
		-0.326563, 0.944199, -0.042949,
		-0.939240, -0.329261, -0.097036,
		31.000980, 31.213840, 20.396639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340027, 31.876570, 20.841381>,  <31.658449, 31.444323, 20.464563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340027, 31.876570, 20.841381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.113981, 31.548889, 20.802282>,  <30.978354, 31.352282, 20.778822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.113981, 31.548889, 20.802282>,  <31.340027, 31.876570, 20.841381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113981, 31.548889, 20.802282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124989, -0.032103, 0.991638,
		-0.815489, 0.572607, -0.084249,
		-0.565115, -0.819201, -0.097749,
		30.944447, 31.303129, 20.772957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.805395, 31.963856, 21.296564>,  <31.340027, 31.876570, 20.841381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.805395, 31.963856, 21.296564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.737558, 31.580524, 21.204609>,  <30.696856, 31.350527, 21.149435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.737558, 31.580524, 21.204609>,  <30.805395, 31.963856, 21.296564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737558, 31.580524, 21.204609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194966, -0.196033, 0.961020,
		-0.966036, 0.207803, -0.153595,
		-0.169593, -0.958326, -0.229889,
		30.686680, 31.293026, 21.135643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421425, 31.780285, 21.825071>,  <30.805395, 31.963856, 21.296564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421425, 31.780285, 21.825071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.543859, 31.432972, 21.668919>,  <30.617321, 31.224585, 21.575228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.543859, 31.432972, 21.668919>,  <30.421425, 31.780285, 21.825071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.543859, 31.432972, 21.668919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259401, -0.470614, 0.843347,
		-0.915982, -0.156871, -0.369282,
		0.306086, -0.868282, -0.390381,
		30.635685, 31.172487, 21.551804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.927490, 31.209297, 22.067982>,  <30.421425, 31.780285, 21.825071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.927490, 31.209297, 22.067982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.275185, 31.019176, 22.013550>,  <30.483801, 30.905104, 21.980890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.275185, 31.019176, 22.013550>,  <29.927490, 31.209297, 22.067982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.275185, 31.019176, 22.013550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113812, -0.460226, 0.880477,
		-0.481132, -0.749847, -0.454138,
		0.869229, -0.475312, -0.136088,
		30.535955, 30.876585, 21.972725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.727486, 30.536970, 22.256506>,  <29.927490, 31.209297, 22.067982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.727486, 30.536970, 22.256506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.125896, 30.572145, 22.250870>,  <30.364943, 30.593250, 22.247488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.125896, 30.572145, 22.250870>,  <29.727486, 30.536970, 22.256506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125896, 30.572145, 22.250870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049942, -0.420498, 0.905918,
		0.073739, -0.903022, -0.423219,
		0.996026, 0.087938, -0.014092,
		30.424704, 30.598526, 22.246643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.967907, 29.875851, 22.447058>,  <29.727486, 30.536970, 22.256506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.967907, 29.875851, 22.447058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.277218, 30.120777, 22.512917>,  <30.462805, 30.267733, 22.552433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.277218, 30.120777, 22.512917>,  <29.967907, 29.875851, 22.447058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.277218, 30.120777, 22.512917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096520, -0.370319, 0.923876,
		0.626676, -0.698522, -0.345461,
		0.773279, 0.612315, 0.164649,
		30.509201, 30.304472, 22.562311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.524845, 29.517313, 22.733055>,  <29.967907, 29.875851, 22.447058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.524845, 29.517313, 22.733055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.587198, 29.892048, 22.858299>,  <30.624611, 30.116888, 22.933445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.587198, 29.892048, 22.858299>,  <30.524845, 29.517313, 22.733055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.587198, 29.892048, 22.858299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293486, -0.346597, 0.890919,
		0.943168, -0.046985, -0.328977,
		0.155882, 0.936836, 0.313110,
		30.633963, 30.173100, 22.952232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202852, 29.497934, 23.122076>,  <30.524845, 29.517313, 22.733055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202852, 29.497934, 23.122076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.043470, 29.849474, 23.227036>,  <30.947842, 30.060398, 23.290010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.043470, 29.849474, 23.227036>,  <31.202852, 29.497934, 23.122076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.043470, 29.849474, 23.227036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270373, -0.160828, 0.949228,
		0.876431, 0.449171, -0.173535,
		-0.398456, 0.878851, 0.262398,
		30.923933, 30.113129, 23.305756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797192, 30.014967, 23.414455>,  <31.202852, 29.497934, 23.122076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797192, 30.014967, 23.414455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.434933, 30.082535, 23.570030>,  <31.217577, 30.123075, 23.663374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.434933, 30.082535, 23.570030>,  <31.797192, 30.014967, 23.414455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434933, 30.082535, 23.570030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371209, -0.127519, 0.919752,
		0.204961, 0.977346, 0.052783,
		-0.905646, 0.168920, 0.388936,
		31.163239, 30.133211, 23.686710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925955, 30.500940, 23.926048>,  <31.797192, 30.014967, 23.414455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925955, 30.500940, 23.926048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.561203, 30.370741, 24.026072>,  <31.342352, 30.292622, 24.086086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.561203, 30.370741, 24.026072>,  <31.925955, 30.500940, 23.926048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561203, 30.370741, 24.026072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314076, -0.161099, 0.935630,
		-0.264264, 0.931717, 0.249134,
		-0.911878, -0.325500, 0.250058,
		31.287640, 30.273090, 24.101089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.581560, 30.871525, 24.597897>,  <31.925955, 30.500940, 23.926048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.581560, 30.871525, 24.597897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.386595, 30.522295, 24.592667>,  <31.269615, 30.312757, 24.589529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.386595, 30.522295, 24.592667>,  <31.581560, 30.871525, 24.597897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.386595, 30.522295, 24.592667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279064, -0.169946, 0.945114,
		-0.827376, 0.457013, 0.326478,
		-0.487413, -0.873074, -0.013073,
		31.240372, 30.260372, 24.588745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028173, 30.974442, 25.085587>,  <31.581560, 30.871525, 24.597897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028173, 30.974442, 25.085587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.105196, 30.582531, 25.063833>,  <31.151409, 30.347383, 25.050781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.105196, 30.582531, 25.063833>,  <31.028173, 30.974442, 25.085587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.105196, 30.582531, 25.063833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214674, -0.012017, 0.976612,
		-0.957516, -0.199725, 0.208019,
		0.192554, -0.979778, -0.054383,
		31.162962, 30.288597, 25.047518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.748629, 30.714819, 25.709192>,  <31.028173, 30.974442, 25.085587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.748629, 30.714819, 25.709192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.974100, 30.405748, 25.592411>,  <31.109383, 30.220306, 25.522343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.974100, 30.405748, 25.592411>,  <30.748629, 30.714819, 25.709192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974100, 30.405748, 25.592411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195497, -0.218613, 0.956028,
		-0.802525, -0.595969, 0.027829,
		0.563679, -0.772677, -0.291953,
		31.143204, 30.173944, 25.504826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.516870, 30.116646, 26.174763>,  <30.748629, 30.714819, 25.709192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.516870, 30.116646, 26.174763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.873703, 30.045708, 26.008514>,  <31.087803, 30.003145, 25.908766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.873703, 30.045708, 26.008514>,  <30.516870, 30.116646, 26.174763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.873703, 30.045708, 26.008514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314077, -0.417930, 0.852461,
		-0.324876, -0.891002, -0.317129,
		0.892083, -0.177341, -0.415618,
		31.141327, 29.992504, 25.883829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.620087, 29.414822, 26.174015>,  <30.516870, 30.116646, 26.174763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.620087, 29.414822, 26.174015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.971279, 29.606003, 26.184666>,  <31.181995, 29.720713, 26.191057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.971279, 29.606003, 26.184666>,  <30.620087, 29.414822, 26.174015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.971279, 29.606003, 26.184666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217505, -0.447862, 0.867244,
		0.426429, -0.755631, -0.497172,
		0.877980, 0.477955, 0.026628,
		31.234673, 29.749390, 26.192654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.171194, 28.866318, 26.335571>,  <30.620087, 29.414822, 26.174015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.171194, 28.866318, 26.335571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.338808, 29.224024, 26.398441>,  <31.439377, 29.438646, 26.436163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.338808, 29.224024, 26.398441>,  <31.171194, 28.866318, 26.335571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.338808, 29.224024, 26.398441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385441, -0.331934, 0.860962,
		0.822099, -0.300190, -0.483777,
		0.419034, 0.894263, 0.157177,
		31.464518, 29.492302, 26.445595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876230, 28.747839, 26.670521>,  <31.171194, 28.866318, 26.335571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876230, 28.747839, 26.670521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.788809, 29.130554, 26.747246>,  <31.736355, 29.360184, 26.793282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.788809, 29.130554, 26.747246>,  <31.876230, 28.747839, 26.670521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788809, 29.130554, 26.747246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214653, -0.144614, 0.965925,
		0.951923, 0.252282, -0.173771,
		-0.218556, 0.956787, 0.191815,
		31.723242, 29.417591, 26.804790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295155, 28.875626, 27.301569>,  <31.876230, 28.747839, 26.670521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.295155, 28.875626, 27.301569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.052876, 29.193714, 27.312578>,  <31.907509, 29.384567, 27.319183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.052876, 29.193714, 27.312578>,  <32.295155, 28.875626, 27.301569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.052876, 29.193714, 27.312578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203073, 0.121043, 0.971653,
		0.769348, 0.594114, -0.234803,
		-0.605694, 0.795221, 0.027524,
		31.871168, 29.432280, 27.320835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.534012, 30.255598, 30.102114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.169964, 30.280212, 30.266010>,  <36.951534, 30.294981, 30.364349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.169964, 30.280212, 30.266010>,  <37.534012, 30.255598, 30.102114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169964, 30.280212, 30.266010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407784, 0.308210, 0.859487,
		-0.073399, 0.949326, -0.305602,
		-0.910123, 0.061535, 0.409742,
		36.896927, 30.298674, 30.388933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520824, 30.943316, 30.485275>,  <37.534012, 30.255598, 30.102114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520824, 30.943316, 30.485275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.203308, 30.750063, 30.633051>,  <37.012798, 30.634111, 30.721716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.203308, 30.750063, 30.633051>,  <37.520824, 30.943316, 30.485275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203308, 30.750063, 30.633051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175848, 0.399180, 0.899852,
		-0.582220, 0.779256, -0.231905,
		-0.793786, -0.483132, 0.369441,
		36.965172, 30.605124, 30.743883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063622, 31.399626, 30.739639>,  <37.520824, 30.943316, 30.485275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063622, 31.399626, 30.739639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.958263, 31.062170, 30.926783>,  <36.895050, 30.859695, 31.039068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.958263, 31.062170, 30.926783>,  <37.063622, 31.399626, 30.739639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958263, 31.062170, 30.926783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219245, 0.419943, 0.880670,
		-0.939443, 0.334541, 0.074353,
		-0.263396, -0.843641, 0.467859,
		36.879246, 30.809078, 31.067141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655090, 31.631208, 31.246891>,  <37.063622, 31.399626, 30.739639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655090, 31.631208, 31.246891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.771225, 31.263456, 31.353058>,  <36.840908, 31.042805, 31.416758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.771225, 31.263456, 31.353058>,  <36.655090, 31.631208, 31.246891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771225, 31.263456, 31.353058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239421, 0.338337, 0.910058,
		-0.926488, -0.200679, 0.318351,
		0.290339, -0.919378, 0.265418,
		36.858326, 30.987642, 31.432684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363922, 31.418903, 31.867655>,  <36.655090, 31.631208, 31.246891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363922, 31.418903, 31.867655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.690720, 31.189049, 31.848402>,  <36.886799, 31.051136, 31.836851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.690720, 31.189049, 31.848402>,  <36.363922, 31.418903, 31.867655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690720, 31.189049, 31.848402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187656, 0.186019, 0.964459,
		-0.545259, -0.796989, 0.259810,
		0.816993, -0.574635, -0.048132,
		36.935818, 31.016659, 31.833963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323593, 31.181692, 32.507816>,  <36.363922, 31.418903, 31.867655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323593, 31.181692, 32.507816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.698101, 31.103804, 32.390869>,  <36.922806, 31.057070, 32.320702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.698101, 31.103804, 32.390869>,  <36.323593, 31.181692, 32.507816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698101, 31.103804, 32.390869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333168, 0.228439, 0.914776,
		-0.111337, -0.953886, 0.278756,
		0.936271, -0.194721, -0.292371,
		36.978981, 31.045387, 32.303158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667221, 30.929272, 33.126862>,  <36.323593, 31.181692, 32.507816>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667221, 30.929272, 33.126862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.968956, 31.005484, 32.875568>,  <37.149998, 31.051210, 32.724792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.968956, 31.005484, 32.875568>,  <36.667221, 30.929272, 33.126862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968956, 31.005484, 32.875568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522477, 0.405185, 0.750229,
		0.397473, -0.894166, 0.206114,
		0.754343, 0.190506, -0.628231,
		37.195255, 31.062641, 32.687099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315361, 30.823774, 33.494713>,  <36.667221, 30.929272, 33.126862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315361, 30.823774, 33.494713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.441517, 31.058369, 33.196301>,  <37.517208, 31.199125, 33.017254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.441517, 31.058369, 33.196301>,  <37.315361, 30.823774, 33.494713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441517, 31.058369, 33.196301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472530, 0.584702, 0.659423,
		0.822950, -0.560495, -0.092726,
		0.315387, 0.586488, -0.746031,
		37.536133, 31.234316, 32.972492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107292, 30.947159, 33.554062>,  <37.315361, 30.823774, 33.494713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107292, 30.947159, 33.554062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.965336, 31.280605, 33.384766>,  <37.880161, 31.480673, 33.283188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.965336, 31.280605, 33.384766>,  <38.107292, 30.947159, 33.554062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965336, 31.280605, 33.384766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510291, 0.552050, 0.659427,
		0.783361, 0.018049, -0.621305,
		-0.354894, 0.833616, -0.423244,
		37.858868, 31.530689, 33.257793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641708, 31.318832, 33.556362>,  <38.107292, 30.947159, 33.554062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641708, 31.318832, 33.556362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.364086, 31.594229, 33.472202>,  <38.197514, 31.759466, 33.421707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.364086, 31.594229, 33.472202>,  <38.641708, 31.318832, 33.556362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364086, 31.594229, 33.472202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502695, 0.672680, 0.542953,
		0.515347, 0.271076, -0.812979,
		-0.694057, 0.688490, -0.210395,
		38.155869, 31.800776, 33.409084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016510, 31.825300, 33.553406>,  <38.641708, 31.318832, 33.556362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016510, 31.825300, 33.553406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.646217, 31.958342, 33.625397>,  <38.424042, 32.038166, 33.668591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.646217, 31.958342, 33.625397>,  <39.016510, 31.825300, 33.553406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646217, 31.958342, 33.625397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354394, 0.596878, 0.719820,
		0.131990, 0.730145, -0.670423,
		-0.925734, 0.332603, 0.179977,
		38.368496, 32.058125, 33.679390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821186, 32.562199, 33.463490>,  <39.016510, 31.825300, 33.553406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821186, 32.562199, 33.463490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.579636, 32.411011, 33.744194>,  <38.434704, 32.320297, 33.912617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.579636, 32.411011, 33.744194>,  <38.821186, 32.562199, 33.463490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579636, 32.411011, 33.744194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208532, 0.774841, 0.596771,
		-0.769313, 0.506718, -0.389094,
		-0.603881, -0.377965, 0.701762,
		38.398472, 32.297623, 33.954723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467579, 33.059196, 33.726265>,  <38.821186, 32.562199, 33.463490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467579, 33.059196, 33.726265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.437531, 32.796387, 34.026314>,  <38.419502, 32.638702, 34.206345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.437531, 32.796387, 34.026314>,  <38.467579, 33.059196, 33.726265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437531, 32.796387, 34.026314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216444, 0.723568, 0.655440,
		-0.973400, 0.211599, 0.087851,
		-0.075124, -0.657020, 0.750121,
		38.414993, 32.599281, 34.251350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405033, 33.463982, 34.268749>,  <38.467579, 33.059196, 33.726265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405033, 33.463982, 34.268749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.469265, 33.110100, 34.443802>,  <38.507805, 32.897770, 34.548832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.469265, 33.110100, 34.443802>,  <38.405033, 33.463982, 34.268749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469265, 33.110100, 34.443802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204468, 0.463582, 0.862140,
		-0.965612, -0.048960, 0.255334,
		0.160579, -0.884700, 0.437630,
		38.517437, 32.844688, 34.575092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803673, 34.041008, 34.250069>,  <38.405033, 33.463982, 34.268749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803673, 34.041008, 34.250069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.907749, 34.380333, 34.065605>,  <38.970196, 34.583927, 33.954926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.907749, 34.380333, 34.065605>,  <38.803673, 34.041008, 34.250069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907749, 34.380333, 34.065605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898471, 0.037794, -0.437402,
		-0.353623, 0.528150, 0.772016,
		0.260192, 0.848310, -0.461162,
		38.985806, 34.634827, 33.927258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186619, 34.385178, 34.161682>,  <38.803673, 34.041008, 34.250069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186619, 34.385178, 34.161682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.444118, 34.558266, 33.909225>,  <38.598618, 34.662117, 33.757751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.444118, 34.558266, 33.909225>,  <38.186619, 34.385178, 34.161682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444118, 34.558266, 33.909225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737571, 0.131092, -0.662422,
		-0.203904, 0.891947, 0.403551,
		0.643748, 0.432718, -0.631145,
		38.637241, 34.688080, 33.719883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855492, 35.071087, 33.933781>,  <38.186619, 34.385178, 34.161682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855492, 35.071087, 33.933781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.126842, 34.922707, 33.680103>,  <38.289654, 34.833679, 33.527897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.126842, 34.922707, 33.680103>,  <37.855492, 35.071087, 33.933781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126842, 34.922707, 33.680103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682316, 0.002061, -0.731054,
		0.272490, 0.928652, -0.251705,
		0.678376, -0.370948, -0.634196,
		38.330357, 34.811420, 33.489845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625561, 35.387913, 33.304317>,  <37.855492, 35.071087, 33.933781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625561, 35.387913, 33.304317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.875404, 35.104977, 33.171932>,  <38.025311, 34.935215, 33.092503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.875404, 35.104977, 33.171932>,  <37.625561, 35.387913, 33.304317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875404, 35.104977, 33.171932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562511, -0.113536, -0.818957,
		0.541703, 0.697699, -0.468801,
		0.624611, -0.707337, -0.330961,
		38.062786, 34.892776, 33.072643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923229, 35.505653, 32.619900>,  <37.625561, 35.387913, 33.304317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923229, 35.505653, 32.619900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.910812, 35.108490, 32.665806>,  <37.903362, 34.870193, 32.693352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.910812, 35.108490, 32.665806>,  <37.923229, 35.505653, 32.619900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910812, 35.108490, 32.665806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667162, -0.064919, -0.742078,
		0.744265, -0.099604, -0.660415,
		-0.031040, -0.992907, 0.114769,
		37.901501, 34.810619, 32.700237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921715, 35.221767, 31.891491>,  <37.923229, 35.505653, 32.619900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921715, 35.221767, 31.891491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.796276, 34.923080, 32.126118>,  <37.721012, 34.743866, 32.266895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.796276, 34.923080, 32.126118>,  <37.921715, 35.221767, 31.891491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796276, 34.923080, 32.126118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807805, -0.114896, -0.578144,
		0.499107, -0.655138, -0.567174,
		-0.313598, -0.746722, 0.586569,
		37.702198, 34.699062, 32.302090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711597, 34.685661, 31.474981>,  <37.921715, 35.221767, 31.891491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711597, 34.685661, 31.474981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.526241, 34.595192, 31.817703>,  <37.415028, 34.540913, 32.023335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.526241, 34.595192, 31.817703>,  <37.711597, 34.685661, 31.474981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526241, 34.595192, 31.817703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781942, -0.350553, -0.515440,
		0.416933, -0.908823, -0.014407,
		-0.463394, -0.226169, 0.856804,
		37.387222, 34.527340, 32.074745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565331, 33.949249, 31.496283>,  <37.711597, 34.685661, 31.474981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565331, 33.949249, 31.496283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.291397, 34.109905, 31.739492>,  <37.127037, 34.206299, 31.885418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.291397, 34.109905, 31.739492>,  <37.565331, 33.949249, 31.496283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291397, 34.109905, 31.739492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723407, -0.475104, -0.500957,
		0.087672, -0.782921, 0.615913,
		-0.684833, 0.401636, 0.608024,
		37.085949, 34.230396, 31.921900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042500, 33.451424, 31.584419>,  <37.565331, 33.949249, 31.496283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042500, 33.451424, 31.584419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.838551, 33.759922, 31.736845>,  <36.716183, 33.945023, 31.828300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.838551, 33.759922, 31.736845>,  <37.042500, 33.451424, 31.584419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838551, 33.759922, 31.736845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824524, -0.311804, -0.472163,
		-0.245334, -0.554943, 0.794890,
		-0.509873, 0.771244, 0.381068,
		36.685589, 33.991295, 31.851164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383808, 33.176254, 31.926577>,  <37.042500, 33.451424, 31.584419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383808, 33.176254, 31.926577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.289452, 33.554012, 31.834951>,  <36.232838, 33.780666, 31.779976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.289452, 33.554012, 31.834951>,  <36.383808, 33.176254, 31.926577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289452, 33.554012, 31.834951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892966, -0.303637, -0.332289,
		-0.383366, 0.126164, 0.914939,
		-0.235886, 0.944398, -0.229064,
		36.218685, 33.837330, 31.766232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681885, 33.175423, 31.974743>,  <36.383808, 33.176254, 31.926577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681885, 33.175423, 31.974743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.732265, 33.529667, 31.795935>,  <35.762493, 33.742214, 31.688650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.732265, 33.529667, 31.795935>,  <35.681885, 33.175423, 31.974743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732265, 33.529667, 31.795935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867341, -0.120409, -0.482929,
		-0.481513, 0.448543, 0.752963,
		0.125951, 0.885613, -0.447019,
		35.770050, 33.795349, 31.661829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080971, 33.697697, 32.086060>,  <35.681885, 33.175423, 31.974743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080971, 33.697697, 32.086060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.267612, 33.740658, 31.734890>,  <35.379597, 33.766434, 31.524189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.267612, 33.740658, 31.734890>,  <35.080971, 33.697697, 32.086060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267612, 33.740658, 31.734890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883341, 0.006551, -0.468686,
		-0.044587, 0.994194, 0.097932,
		0.466606, 0.107405, -0.877920,
		35.407593, 33.772881, 31.471514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581577, 33.989807, 31.596380>,  <35.080971, 33.697697, 32.086060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581577, 33.989807, 31.596380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.878357, 33.909836, 31.340399>,  <35.056423, 33.861851, 31.186810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.878357, 33.909836, 31.340399>,  <34.581577, 33.989807, 31.596380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878357, 33.909836, 31.340399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647103, 0.036200, -0.761542,
		0.175423, 0.979141, -0.102518,
		0.741946, -0.199932, -0.639956,
		35.100941, 33.849857, 31.148413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528557, 34.388916, 31.090527>,  <34.581577, 33.989807, 31.596380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528557, 34.388916, 31.090527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.747723, 34.100529, 30.920822>,  <34.879223, 33.927498, 30.819000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.747723, 34.100529, 30.920822>,  <34.528557, 34.388916, 31.090527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747723, 34.100529, 30.920822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507665, 0.116518, -0.853639,
		0.664877, 0.683106, -0.302166,
		0.547919, -0.720964, -0.424259,
		34.912098, 33.884239, 30.793545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356354, 35.081078, 30.746056>,  <34.528557, 34.388916, 31.090527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356354, 35.081078, 30.746056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.979858, 35.198490, 30.812878>,  <33.753960, 35.268936, 30.852970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.979858, 35.198490, 30.812878>,  <34.356354, 35.081078, 30.746056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979858, 35.198490, 30.812878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084507, -0.274212, 0.957949,
		0.326993, 0.915778, 0.233295,
		-0.941241, 0.293528, 0.167055,
		33.697487, 35.286549, 30.862993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446266, 35.600395, 31.251701>,  <34.356354, 35.081078, 30.746056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446266, 35.600395, 31.251701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.074013, 35.465511, 31.308578>,  <33.850662, 35.384583, 31.342705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.074013, 35.465511, 31.308578>,  <34.446266, 35.600395, 31.251701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074013, 35.465511, 31.308578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210605, -0.175725, 0.961648,
		-0.299286, 0.924885, 0.234552,
		-0.930631, -0.337206, 0.142193,
		33.794823, 35.364349, 31.351236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171577, 35.978802, 31.813505>,  <34.446266, 35.600395, 31.251701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171577, 35.978802, 31.813505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.925758, 35.664284, 31.787964>,  <33.778267, 35.475574, 31.772638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.925758, 35.664284, 31.787964>,  <34.171577, 35.978802, 31.813505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925758, 35.664284, 31.787964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067170, -0.132804, 0.988864,
		-0.786015, 0.603415, 0.134429,
		-0.614548, -0.786291, -0.063854,
		33.741394, 35.428398, 31.768808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733879, 36.146797, 32.341724>,  <34.171577, 35.978802, 31.813505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733879, 36.146797, 32.341724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.693043, 35.755470, 32.269638>,  <33.668541, 35.520676, 32.226387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.693043, 35.755470, 32.269638>,  <33.733879, 36.146797, 32.341724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693043, 35.755470, 32.269638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053589, -0.175486, 0.983022,
		-0.993330, 0.110019, -0.034511,
		-0.102095, -0.978315, -0.180212,
		33.662415, 35.461975, 32.215576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290630, 36.038330, 32.820366>,  <33.733879, 36.146797, 32.341724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290630, 36.038330, 32.820366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.433960, 35.674225, 32.737392>,  <33.519958, 35.455761, 32.687607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.433960, 35.674225, 32.737392>,  <33.290630, 36.038330, 32.820366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433960, 35.674225, 32.737392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100349, -0.258458, 0.960796,
		-0.928188, -0.323462, -0.183955,
		0.358326, -0.910259, -0.207438,
		33.541458, 35.401146, 32.675159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043442, 35.726620, 33.332081>,  <33.290630, 36.038330, 32.820366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043442, 35.726620, 33.332081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.286308, 35.428436, 33.222065>,  <33.432026, 35.249527, 33.156055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.286308, 35.428436, 33.222065>,  <33.043442, 35.726620, 33.332081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286308, 35.428436, 33.222065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033220, -0.369659, 0.928574,
		-0.793883, -0.554658, -0.249207,
		0.607162, -0.745457, -0.275040,
		33.468456, 35.204800, 33.139553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747341, 35.092915, 33.448288>,  <33.043442, 35.726620, 33.332081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747341, 35.092915, 33.448288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.135380, 34.995831, 33.448986>,  <33.368202, 34.937580, 33.449406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.135380, 34.995831, 33.448986>,  <32.747341, 35.092915, 33.448288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135380, 34.995831, 33.448986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027069, -0.101047, 0.994513,
		-0.241205, -0.964821, -0.104596,
		0.970096, -0.242713, 0.001744,
		33.426411, 34.923016, 33.449509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776268, 34.494381, 33.821320>,  <32.747341, 35.092915, 33.448288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776268, 34.494381, 33.821320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.134098, 34.672955, 33.813000>,  <33.348797, 34.780098, 33.808006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.134098, 34.672955, 33.813000>,  <32.776268, 34.494381, 33.821320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134098, 34.672955, 33.813000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047295, -0.048285, 0.997713,
		0.444409, -0.893513, -0.064309,
		0.894575, 0.446434, -0.020800,
		33.402470, 34.806885, 33.806759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145119, 34.152935, 34.320244>,  <32.776268, 34.494381, 33.821320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145119, 34.152935, 34.320244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.338417, 34.502136, 34.293896>,  <33.454395, 34.711658, 34.278088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.338417, 34.502136, 34.293896>,  <33.145119, 34.152935, 34.320244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338417, 34.502136, 34.293896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156428, 0.160130, 0.974622,
		0.861398, -0.460675, 0.213944,
		0.483243, 0.873005, -0.065873,
		33.483391, 34.764038, 34.274136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515560, 34.138973, 34.895649>,  <33.145119, 34.152935, 34.320244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515560, 34.138973, 34.895649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.485760, 34.519009, 34.774467>,  <33.467880, 34.747028, 34.701759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.485760, 34.519009, 34.774467>,  <33.515560, 34.138973, 34.895649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485760, 34.519009, 34.774467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029855, 0.301539, 0.952986,
		0.996774, 0.080040, 0.005901,
		-0.074497, 0.950088, -0.302956,
		33.463409, 34.804035, 34.683582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901398, 34.643566, 35.259838>,  <33.515560, 34.138973, 34.895649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901398, 34.643566, 35.259838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.597172, 34.861149, 35.118046>,  <33.414635, 34.991699, 35.032970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.597172, 34.861149, 35.118046>,  <33.901398, 34.643566, 35.259838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597172, 34.861149, 35.118046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108438, 0.431878, 0.895390,
		0.640142, 0.719441, -0.269486,
		-0.760565, 0.543954, -0.354478,
		33.369003, 35.024334, 35.011703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918354, 35.381805, 35.459438>,  <33.901398, 34.643566, 35.259838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918354, 35.381805, 35.459438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.526245, 35.324318, 35.405155>,  <33.290981, 35.289825, 35.372585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.526245, 35.324318, 35.405155>,  <33.918354, 35.381805, 35.459438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526245, 35.324318, 35.405155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169556, 0.258484, 0.951019,
		-0.101605, 0.955264, -0.277753,
		-0.980269, -0.143723, -0.135708,
		33.232166, 35.281200, 35.364441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.052094, 37.039795, 27.147394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852131, 36.729984, 27.302420>,  <32.732155, 36.544098, 27.395435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852131, 36.729984, 27.302420>,  <33.052094, 37.039795, 27.147394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852131, 36.729984, 27.302420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489941, 0.116108, 0.863989,
		-0.714181, 0.621794, 0.321430,
		-0.499902, -0.774527, 0.387564,
		32.702160, 36.497627, 27.418690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105488, 37.237495, 27.861107>,  <33.052094, 37.039795, 27.147394>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105488, 37.237495, 27.861107> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968987, 36.861526, 27.865013>,  <32.887085, 36.635944, 27.867357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968987, 36.861526, 27.865013>,  <33.105488, 37.237495, 27.861107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.968987, 36.861526, 27.865013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352671, -0.118396, 0.928227,
		-0.871304, 0.320203, 0.371886,
		-0.341251, -0.939922, 0.009767,
		32.866611, 36.579552, 27.867943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688034, 37.214802, 28.494932>,  <33.105488, 37.237495, 27.861107>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688034, 37.214802, 28.494932> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783222, 36.843292, 28.381268>,  <32.840336, 36.620388, 28.313068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783222, 36.843292, 28.381268>,  <32.688034, 37.214802, 28.494932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783222, 36.843292, 28.381268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254450, -0.222735, 0.941087,
		-0.937351, -0.296254, 0.183323,
		0.237968, -0.928775, -0.284163,
		32.854614, 36.564659, 28.296019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412037, 36.824158, 29.009844>,  <32.688034, 37.214802, 28.494932>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412037, 36.824158, 29.009844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679329, 36.580597, 28.838867>,  <32.839703, 36.434460, 28.736280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679329, 36.580597, 28.838867>,  <32.412037, 36.824158, 29.009844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679329, 36.580597, 28.838867> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384913, -0.208705, 0.899046,
		-0.636645, -0.765294, 0.094914,
		0.668226, -0.608907, -0.427443,
		32.879795, 36.397926, 28.710634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.339912, 36.247112, 29.419285>,  <32.412037, 36.824158, 29.009844>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.339912, 36.247112, 29.419285> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682182, 36.129295, 29.249077>,  <32.887543, 36.058605, 29.146952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682182, 36.129295, 29.249077>,  <32.339912, 36.247112, 29.419285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682182, 36.129295, 29.249077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326579, -0.330518, 0.885497,
		-0.401458, -0.896662, -0.186624,
		0.855674, -0.294542, -0.425520,
		32.938885, 36.040932, 29.121420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375126, 35.482731, 29.538719>,  <32.339912, 36.247112, 29.419285>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375126, 35.482731, 29.538719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744503, 35.625011, 29.481115>,  <32.966129, 35.710381, 29.446554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744503, 35.625011, 29.481115>,  <32.375126, 35.482731, 29.538719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744503, 35.625011, 29.481115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281677, -0.373429, 0.883860,
		0.260613, -0.856754, -0.445031,
		0.923439, 0.355701, -0.144008,
		33.021534, 35.731720, 29.437914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847324, 34.867779, 29.524237>,  <32.375126, 35.482731, 29.538719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847324, 34.867779, 29.524237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039875, 35.208645, 29.606300>,  <33.155403, 35.413166, 29.655539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039875, 35.208645, 29.606300>,  <32.847324, 34.867779, 29.524237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.039875, 35.208645, 29.606300> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351224, -0.401983, 0.845607,
		0.803069, -0.334996, -0.492806,
		0.481375, 0.852166, 0.205161,
		33.184288, 35.464294, 29.667849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446911, 34.575264, 29.767786>,  <32.847324, 34.867779, 29.524237>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446911, 34.575264, 29.767786> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406261, 34.948444, 29.905933>,  <33.381870, 35.172352, 29.988821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406261, 34.948444, 29.905933>,  <33.446911, 34.575264, 29.767786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406261, 34.948444, 29.905933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246982, -0.312637, 0.917201,
		0.963677, 0.178509, -0.198651,
		-0.101623, 0.932949, 0.345369,
		33.375774, 35.228329, 30.009544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941612, 34.656715, 30.299917>,  <33.446911, 34.575264, 29.767786>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941612, 34.656715, 30.299917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721519, 34.979004, 30.387600>,  <33.589462, 35.172379, 30.440208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721519, 34.979004, 30.387600>,  <33.941612, 34.656715, 30.299917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721519, 34.979004, 30.387600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056185, -0.226198, 0.972460,
		0.833119, 0.547395, 0.079192,
		-0.550233, 0.805725, 0.219205,
		33.556450, 35.220722, 30.453362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650471, 34.590237, 30.310972>,  <33.941612, 34.656715, 30.299917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650471, 34.590237, 30.310972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761017, 34.205818, 30.312414>,  <34.827347, 33.975166, 30.313278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761017, 34.205818, 30.312414>,  <34.650471, 34.590237, 30.310972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761017, 34.205818, 30.312414> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370488, -0.110001, -0.922301,
		0.886769, 0.253561, -0.386456,
		0.276370, -0.961045, 0.003604,
		34.843929, 33.917503, 30.313496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082405, 34.563286, 29.727036>,  <34.650471, 34.590237, 30.310972>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082405, 34.563286, 29.727036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951874, 34.194687, 29.811283>,  <34.873554, 33.973530, 29.861832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951874, 34.194687, 29.811283>,  <35.082405, 34.563286, 29.727036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951874, 34.194687, 29.811283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276075, -0.120186, -0.953592,
		0.904041, -0.369333, -0.215180,
		-0.326331, -0.921493, 0.210617,
		34.853973, 33.918240, 29.874468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206081, 34.154900, 29.130762>,  <35.082405, 34.563286, 29.727036>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206081, 34.154900, 29.130762> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937454, 33.931522, 29.325548>,  <34.776279, 33.797497, 29.442419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937454, 33.931522, 29.325548>,  <35.206081, 34.154900, 29.130762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937454, 33.931522, 29.325548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400278, -0.279626, -0.872689,
		0.623519, -0.780991, -0.035747,
		-0.671566, -0.558447, 0.486966,
		34.735985, 33.763988, 29.471638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296028, 33.437973, 28.942516>,  <35.206081, 34.154900, 29.130762>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296028, 33.437973, 28.942516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908855, 33.473034, 29.036688>,  <34.676552, 33.494072, 29.093191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908855, 33.473034, 29.036688>,  <35.296028, 33.437973, 28.942516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908855, 33.473034, 29.036688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247247, -0.498378, -0.830956,
		0.044495, -0.862517, 0.504068,
		-0.967930, 0.087656, 0.235431,
		34.618477, 33.499332, 29.107317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034767, 32.801487, 28.896288>,  <35.296028, 33.437973, 28.942516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034767, 32.801487, 28.896288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705643, 33.020065, 28.833832>,  <34.508167, 33.151211, 28.796358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705643, 33.020065, 28.833832>,  <35.034767, 32.801487, 28.896288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705643, 33.020065, 28.833832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127514, -0.445251, -0.886280,
		-0.553828, -0.709329, 0.436036,
		-0.822809, 0.546447, -0.156143,
		34.458801, 33.183998, 28.786989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662369, 32.542244, 28.429317>,  <35.034767, 32.801487, 28.896288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662369, 32.542244, 28.429317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451210, 32.881466, 28.410910>,  <34.324512, 33.084999, 28.399866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451210, 32.881466, 28.410910>,  <34.662369, 32.542244, 28.429317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451210, 32.881466, 28.410910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122253, -0.129495, -0.984015,
		-0.840461, -0.513836, 0.172038,
		-0.527900, 0.848059, -0.046018,
		34.292839, 33.135883, 28.397104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915989, 32.401485, 28.260960>,  <34.662369, 32.542244, 28.429317>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915989, 32.401485, 28.260960> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965908, 32.779579, 28.140318>,  <33.995857, 33.006435, 28.067932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965908, 32.779579, 28.140318>,  <33.915989, 32.401485, 28.260960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965908, 32.779579, 28.140318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148469, -0.282768, -0.947628,
		-0.981011, 0.163038, 0.105049,
		0.124795, 0.945230, -0.301605,
		34.003345, 33.063148, 28.049837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293739, 32.452526, 27.799559>,  <33.915989, 32.401485, 28.260960>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293739, 32.452526, 27.799559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544392, 32.758549, 27.740202>,  <33.694782, 32.942162, 27.704588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544392, 32.758549, 27.740202>,  <33.293739, 32.452526, 27.799559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544392, 32.758549, 27.740202> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173922, -0.048319, -0.983573,
		-0.759658, 0.642150, 0.102782,
		0.626635, 0.765055, -0.148390,
		33.732384, 32.988064, 27.695684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853436, 32.913052, 27.491253>,  <33.293739, 32.452526, 27.799559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853436, 32.913052, 27.491253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227062, 33.007133, 27.383778>,  <33.451241, 33.063583, 27.319292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227062, 33.007133, 27.383778>,  <32.853436, 32.913052, 27.491253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227062, 33.007133, 27.383778> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232027, -0.172184, -0.957348,
		-0.271437, 0.956573, -0.106258,
		0.934069, 0.235205, -0.268688,
		33.507282, 33.077694, 27.303171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871616, 33.351162, 26.998890>,  <32.853436, 32.913052, 27.491253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871616, 33.351162, 26.998890> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244434, 33.215706, 26.947325>,  <33.468124, 33.134434, 26.916386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244434, 33.215706, 26.947325>,  <32.871616, 33.351162, 26.998890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244434, 33.215706, 26.947325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140581, -0.010040, -0.990018,
		0.333962, 0.940864, -0.056963,
		0.932044, -0.338636, -0.128914,
		33.524048, 33.114117, 26.908651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995251, 33.562977, 26.384056>,  <32.871616, 33.351162, 26.998890>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995251, 33.562977, 26.384056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314026, 33.329056, 26.444571>,  <33.505291, 33.188702, 26.480879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314026, 33.329056, 26.444571>,  <32.995251, 33.562977, 26.384056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314026, 33.329056, 26.444571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274137, 0.126974, -0.953272,
		0.538268, 0.801175, 0.261507,
		0.796942, -0.584804, 0.151286,
		33.553108, 33.153614, 26.489956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519886, 33.882427, 26.066769>,  <32.995251, 33.562977, 26.384056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519886, 33.882427, 26.066769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614521, 33.495476, 26.103020>,  <33.671303, 33.263306, 26.124769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614521, 33.495476, 26.103020>,  <33.519886, 33.882427, 26.066769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614521, 33.495476, 26.103020> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236817, -0.033048, -0.970992,
		0.942308, 0.251185, 0.221272,
		0.236586, -0.967375, 0.090627,
		33.685497, 33.205265, 26.130207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197990, 33.856674, 25.878115>,  <33.519886, 33.882427, 26.066769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197990, 33.856674, 25.878115> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037525, 33.493423, 25.830164>,  <33.941246, 33.275475, 25.801394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037525, 33.493423, 25.830164>,  <34.197990, 33.856674, 25.878115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037525, 33.493423, 25.830164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185044, 0.047826, -0.981566,
		0.897120, -0.415953, 0.148857,
		-0.401166, -0.908128, -0.119875,
		33.917175, 33.220985, 25.794201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639236, 33.580196, 25.429441>,  <34.197990, 33.856674, 25.878115>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639236, 33.580196, 25.429441> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308167, 33.355824, 25.422432>,  <34.109524, 33.221199, 25.418226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308167, 33.355824, 25.422432>,  <34.639236, 33.580196, 25.429441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308167, 33.355824, 25.422432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081732, -0.089585, -0.992620,
		0.555222, -0.823001, 0.119993,
		-0.827677, -0.560932, -0.017526,
		34.059864, 33.187546, 25.417173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<29.154434, 30.575304, 26.988075> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.325672, 30.920828, 26.881821>,  <29.428415, 31.128143, 26.818068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.325672, 30.920828, 26.881821>,  <29.154434, 30.575304, 26.988075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.325672, 30.920828, 26.881821> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385786, 0.091132, 0.918076,
		0.817253, -0.495504, -0.294233,
		0.428097, 0.863812, -0.265636,
		29.454102, 31.179972, 26.802130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.914713, 30.575565, 27.161684>,  <29.154434, 30.575304, 26.988075>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.914713, 30.575565, 27.161684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.813736, 30.961351, 27.130495>,  <29.753149, 31.192823, 27.111782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.813736, 30.961351, 27.130495>,  <29.914713, 30.575565, 27.161684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.813736, 30.961351, 27.130495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263595, 0.146083, 0.953508,
		0.931016, 0.220153, -0.291106,
		-0.252443, 0.964465, -0.077974,
		29.738003, 31.250690, 27.107103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.417294, 30.943300, 27.435144>,  <29.914713, 30.575565, 27.161684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.417294, 30.943300, 27.435144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.109924, 31.195702, 27.477777>,  <29.925503, 31.347141, 27.503357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.109924, 31.195702, 27.477777>,  <30.417294, 30.943300, 27.435144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109924, 31.195702, 27.477777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283255, 0.186025, 0.940830,
		0.573838, 0.753148, -0.321681,
		-0.768425, 0.631002, 0.106585,
		29.879396, 31.385002, 27.509752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.659832, 31.534681, 27.696428>,  <30.417294, 30.943300, 27.435144>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.659832, 31.534681, 27.696428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.268517, 31.561230, 27.774961>,  <30.033728, 31.577158, 27.822081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.268517, 31.561230, 27.774961>,  <30.659832, 31.534681, 27.696428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.268517, 31.561230, 27.774961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207245, 0.310114, 0.927836,
		0.000696, 0.948380, -0.317136,
		-0.978289, 0.066370, 0.196331,
		29.975029, 31.581141, 27.833860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574266, 32.105034, 28.082529>,  <30.659832, 31.534681, 27.696428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574266, 32.105034, 28.082529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.247120, 31.901072, 28.189177>,  <30.050831, 31.778694, 28.253166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.247120, 31.901072, 28.189177>,  <30.574266, 32.105034, 28.082529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.247120, 31.901072, 28.189177> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188104, 0.200970, 0.961368,
		-0.543791, 0.836425, -0.068451,
		-0.817868, -0.509907, 0.266620,
		30.001759, 31.748100, 28.269163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.232409, 32.480396, 28.533688>,  <30.574266, 32.105034, 28.082529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.232409, 32.480396, 28.533688> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.102037, 32.109058, 28.605173>,  <30.023815, 31.886255, 28.648064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.102037, 32.109058, 28.605173>,  <30.232409, 32.480396, 28.533688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.102037, 32.109058, 28.605173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265280, 0.091635, 0.959807,
		-0.907412, 0.360239, 0.216406,
		-0.325929, -0.928349, 0.178715,
		30.004259, 31.830553, 28.658787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.892824, 32.571655, 29.039747>,  <30.232409, 32.480396, 28.533688>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.892824, 32.571655, 29.039747> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.953779, 32.176643, 29.055555>,  <29.990353, 31.939636, 29.065041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.953779, 32.176643, 29.055555>,  <29.892824, 32.571655, 29.039747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.953779, 32.176643, 29.055555> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171462, 0.065799, 0.982991,
		-0.973334, -0.143020, 0.179351,
		0.152389, -0.987530, 0.039522,
		29.999496, 31.880384, 29.067411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.459166, 32.297325, 29.621744>,  <29.892824, 32.571655, 29.039747>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.459166, 32.297325, 29.621744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.737007, 32.022984, 29.534904>,  <29.903713, 31.858379, 29.482801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.737007, 32.022984, 29.534904>,  <29.459166, 32.297325, 29.621744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.737007, 32.022984, 29.534904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187739, -0.118505, 0.975044,
		-0.694462, -0.718029, 0.046447,
		0.694606, -0.685850, -0.217099,
		29.945389, 31.817228, 29.469774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.337816, 31.798056, 30.135992>,  <29.459166, 32.297325, 29.621744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.337816, 31.798056, 30.135992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.716829, 31.742851, 30.020658>,  <29.944237, 31.709728, 29.951458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.716829, 31.742851, 30.020658>,  <29.337816, 31.798056, 30.135992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.716829, 31.742851, 30.020658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291742, 0.004685, 0.956486,
		-0.130655, -0.990419, 0.044703,
		0.947531, -0.138012, -0.288335,
		30.001089, 31.701448, 29.934158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.509239, 31.328754, 30.550312>,  <29.337816, 31.798056, 30.135992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.509239, 31.328754, 30.550312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.852522, 31.468494, 30.399881>,  <30.058493, 31.552338, 30.309624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.852522, 31.468494, 30.399881>,  <29.509239, 31.328754, 30.550312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.852522, 31.468494, 30.399881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432599, -0.097898, 0.896256,
		0.276289, -0.931864, -0.235145,
		0.858209, 0.349349, -0.376075,
		30.109985, 31.573299, 30.287058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.950230, 30.858622, 30.790432>,  <29.509239, 31.328754, 30.550312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.950230, 30.858622, 30.790432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.178869, 31.163744, 30.669504>,  <30.316053, 31.346817, 30.596947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.178869, 31.163744, 30.669504>,  <29.950230, 30.858622, 30.790432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.178869, 31.163744, 30.669504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434441, 0.031212, 0.900159,
		0.696084, -0.645872, -0.313554,
		0.571601, 0.762808, -0.302320,
		30.350349, 31.392586, 30.578808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.567471, 30.692299, 30.715204>,  <29.950230, 30.858622, 30.790432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.567471, 30.692299, 30.715204> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.616693, 31.084255, 30.778032>,  <30.646227, 31.319429, 30.815729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.616693, 31.084255, 30.778032>,  <30.567471, 30.692299, 30.715204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.616693, 31.084255, 30.778032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633450, -0.199394, 0.747651,
		0.763935, 0.007491, -0.645249,
		0.123058, 0.979891, 0.157069,
		30.653610, 31.378223, 30.825153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.269121, 30.707451, 30.995422>,  <30.567471, 30.692299, 30.715204>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.269121, 30.707451, 30.995422> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.094147, 31.059805, 31.067745>,  <30.989162, 31.271217, 31.111139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.094147, 31.059805, 31.067745>,  <31.269121, 30.707451, 30.995422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.094147, 31.059805, 31.067745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520493, 0.084060, 0.849718,
		0.733305, 0.465806, -0.495265,
		-0.437436, 0.880885, 0.180808,
		30.962915, 31.324070, 31.121988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676727, 31.171774, 31.295017>,  <31.269121, 30.707451, 30.995422>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676727, 31.171774, 31.295017> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.332439, 31.338028, 31.412598>,  <31.125866, 31.437780, 31.483147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.332439, 31.338028, 31.412598>,  <31.676727, 31.171774, 31.295017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.332439, 31.338028, 31.412598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395606, 0.182684, 0.900068,
		0.320399, 0.890996, -0.321667,
		-0.860721, 0.415635, 0.293952,
		31.074223, 31.462719, 31.500784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282574, 31.636227, 31.056652>,  <31.676727, 31.171774, 31.295017>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282574, 31.636227, 31.056652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.457935, 31.277407, 31.078936>,  <32.563152, 31.062115, 31.092306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.457935, 31.277407, 31.078936>,  <32.282574, 31.636227, 31.056652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457935, 31.277407, 31.078936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345266, -0.225316, -0.911057,
		0.829816, 0.380176, -0.408500,
		0.438404, -0.897050, 0.055709,
		32.589455, 31.008291, 31.095648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697140, 31.516207, 30.428389>,  <32.282574, 31.636227, 31.056652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697140, 31.516207, 30.428389> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.654392, 31.144266, 30.569220>,  <32.628742, 30.921103, 30.653719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.654392, 31.144266, 30.569220>,  <32.697140, 31.516207, 30.428389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654392, 31.144266, 30.569220> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240231, -0.319468, -0.916640,
		0.964815, -0.182540, -0.189238,
		-0.106868, -0.929849, 0.352079,
		32.622334, 30.865311, 30.674843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047459, 31.158915, 30.006073>,  <32.697140, 31.516207, 30.428389>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047459, 31.158915, 30.006073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.818623, 30.870356, 30.162174>,  <32.681320, 30.697220, 30.255835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.818623, 30.870356, 30.162174>,  <33.047459, 31.158915, 30.006073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818623, 30.870356, 30.162174> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221144, -0.322516, -0.920369,
		0.789816, -0.612835, 0.024974,
		-0.572089, -0.721399, 0.390253,
		32.646996, 30.653936, 30.279249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211178, 30.565359, 29.629648>,  <33.047459, 31.158915, 30.006073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.211178, 30.565359, 29.629648> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.850376, 30.483410, 29.781654>,  <32.633896, 30.434240, 29.872858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.850376, 30.483410, 29.781654>,  <33.211178, 30.565359, 29.629648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850376, 30.483410, 29.781654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243208, -0.486131, -0.839361,
		0.356700, -0.849531, 0.388666,
		-0.902006, -0.204874, 0.380016,
		32.579773, 30.421947, 29.895658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202301, 29.895266, 29.438786>,  <33.211178, 30.565359, 29.629648>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202301, 29.895266, 29.438786> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.837181, 30.019920, 29.544373>,  <32.618111, 30.094713, 29.607725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.837181, 30.019920, 29.544373>,  <33.202301, 29.895266, 29.438786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837181, 30.019920, 29.544373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375233, -0.384770, -0.843298,
		-0.161234, -0.868813, 0.468154,
		-0.912800, 0.311635, 0.263970,
		32.563343, 30.113411, 29.623564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.748074, 29.313759, 29.267859>,  <33.202301, 29.895266, 29.438786>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.748074, 29.313759, 29.267859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.502983, 29.629391, 29.285395>,  <32.355930, 29.818769, 29.295916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.502983, 29.629391, 29.285395>,  <32.748074, 29.313759, 29.267859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502983, 29.629391, 29.285395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308763, -0.187954, -0.932383,
		-0.727484, -0.584831, 0.358802,
		-0.612726, 0.789079, 0.043841,
		32.319164, 29.866114, 29.298548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073456, 28.998646, 29.252388>,  <32.748074, 29.313759, 29.267859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073456, 28.998646, 29.252388> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.100094, 29.372673, 29.113125>,  <32.116077, 29.597090, 29.029566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.100094, 29.372673, 29.113125>,  <32.073456, 28.998646, 29.252388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100094, 29.372673, 29.113125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362022, -0.302513, -0.881718,
		-0.929788, 0.184757, 0.318369,
		0.066593, 0.935067, -0.348159,
		32.120071, 29.653193, 29.008677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482111, 29.129986, 28.780626>,  <32.073456, 28.998646, 29.252388>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482111, 29.129986, 28.780626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.726902, 29.430342, 28.681311>,  <31.873777, 29.610556, 28.621721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.726902, 29.430342, 28.681311>,  <31.482111, 29.129986, 28.780626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.726902, 29.430342, 28.681311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420239, 0.042784, -0.906404,
		-0.669985, 0.659043, 0.341735,
		0.611980, 0.750888, -0.248291,
		31.910496, 29.655607, 28.606823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.069492, 29.730356, 28.565487>,  <31.482111, 29.129986, 28.780626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.069492, 29.730356, 28.565487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.425350, 29.763359, 28.385832>,  <31.638865, 29.783161, 28.278038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.425350, 29.763359, 28.385832>,  <31.069492, 29.730356, 28.565487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.425350, 29.763359, 28.385832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454841, 0.072555, -0.887612,
		-0.040647, 0.993946, 0.102075,
		0.889645, 0.082507, -0.449138,
		31.692244, 29.788111, 28.251091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.907969, 30.087814, 27.959091>,  <31.069492, 29.730356, 28.565487>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.907969, 30.087814, 27.959091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.280104, 29.961922, 27.883814>,  <31.503384, 29.886385, 27.838648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.280104, 29.961922, 27.883814>,  <30.907969, 30.087814, 27.959091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280104, 29.961922, 27.883814> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175090, 0.069678, -0.982084,
		0.322207, 0.946619, 0.009717,
		0.930336, -0.314733, -0.188195,
		31.559204, 29.867502, 27.827356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.019428, 30.378107, 27.434572>,  <30.907969, 30.087814, 27.959091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.019428, 30.378107, 27.434572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.302166, 30.097021, 27.402164>,  <31.471809, 29.928370, 27.382721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.302166, 30.097021, 27.402164>,  <31.019428, 30.378107, 27.434572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.302166, 30.097021, 27.402164> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024401, 0.090243, -0.995621,
		0.706946, 0.705727, 0.046641,
		0.706846, -0.702713, -0.081017,
		31.514219, 29.886208, 27.377859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.598274, 30.644663, 27.021643>,  <31.019428, 30.378107, 27.434572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.598274, 30.644663, 27.021643> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.617874, 30.247967, 26.974224>,  <31.629635, 30.009949, 26.945772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.617874, 30.247967, 26.974224>,  <31.598274, 30.644663, 27.021643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617874, 30.247967, 26.974224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053135, 0.121109, -0.991216,
		0.997384, 0.042272, 0.058631,
		0.049001, -0.991739, -0.118546,
		31.632574, 29.950445, 26.938660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081326, 30.592836, 26.580061>,  <31.598274, 30.644663, 27.021643>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081326, 30.592836, 26.580061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.864861, 30.258535, 26.542828>,  <31.734982, 30.057955, 26.520489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.864861, 30.258535, 26.542828>,  <32.081326, 30.592836, 26.580061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864861, 30.258535, 26.542828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037444, 0.086632, -0.995536,
		0.840085, -0.542230, -0.015588,
		-0.541161, -0.835752, -0.093081,
		31.702513, 30.007811, 26.514904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445332, 30.184631, 26.002560>,  <32.081326, 30.592836, 26.580061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445332, 30.184631, 26.002560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.069519, 30.056089, 26.049915>,  <31.844032, 29.978964, 26.078329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.069519, 30.056089, 26.049915>,  <32.445332, 30.184631, 26.002560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.069519, 30.056089, 26.049915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157764, 0.099298, -0.982472,
		0.303967, -0.941738, -0.143992,
		-0.939529, -0.321355, 0.118389,
		31.787661, 29.959682, 26.085432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980034, 29.504311, 25.998018>,  <32.445332, 30.184631, 26.002560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980034, 29.504311, 25.998018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.321777, 29.644157, 25.844221>,  <33.526825, 29.728065, 25.751944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.321777, 29.644157, 25.844221>,  <32.980034, 29.504311, 25.998018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321777, 29.644157, 25.844221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425184, -0.044856, 0.903995,
		0.298803, -0.935819, -0.186973,
		0.854363, 0.349615, -0.384492,
		33.578087, 29.749043, 25.728874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510933, 29.114346, 26.248240>,  <32.980034, 29.504311, 25.998018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510933, 29.114346, 26.248240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.699978, 29.451561, 26.145533>,  <33.813404, 29.653891, 26.083908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.699978, 29.451561, 26.145533>,  <33.510933, 29.114346, 26.248240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699978, 29.451561, 26.145533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445856, 0.022592, 0.894819,
		0.760166, -0.537382, -0.365196,
		0.472609, 0.843037, -0.256769,
		33.841759, 29.704472, 26.068502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216301, 29.060045, 26.446449>,  <33.510933, 29.114346, 26.248240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216301, 29.060045, 26.446449> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.168552, 29.456631, 26.425457>,  <34.139904, 29.694582, 26.412861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.168552, 29.456631, 26.425457>,  <34.216301, 29.060045, 26.446449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168552, 29.456631, 26.425457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577779, 0.112355, 0.808423,
		0.807417, 0.066178, -0.586258,
		-0.119368, 0.991462, -0.052481,
		34.132740, 29.754070, 26.409712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856159, 29.400928, 26.559021>,  <34.216301, 29.060045, 26.446449>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856159, 29.400928, 26.559021> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.620472, 29.718260, 26.620275>,  <34.479061, 29.908659, 26.657028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.620472, 29.718260, 26.620275>,  <34.856159, 29.400928, 26.559021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620472, 29.718260, 26.620275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613480, 0.315934, 0.723760,
		0.525798, 0.520401, -0.672845,
		-0.589219, 0.793328, 0.153138,
		34.443707, 29.956259, 26.666218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359135, 29.937536, 26.521891>,  <34.856159, 29.400928, 26.559021>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359135, 29.937536, 26.521891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.026161, 30.041977, 26.717390>,  <34.826378, 30.104641, 26.834690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.026161, 30.041977, 26.717390>,  <35.359135, 29.937536, 26.521891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026161, 30.041977, 26.717390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549170, 0.271110, 0.790513,
		0.073902, 0.926458, -0.369072,
		-0.832436, 0.261104, 0.488748,
		34.776432, 30.120308, 26.864014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599522, 30.484844, 26.957949>,  <35.359135, 29.937536, 26.521891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599522, 30.484844, 26.957949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.263264, 30.359087, 27.134344>,  <35.061508, 30.283632, 27.240181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.263264, 30.359087, 27.134344>,  <35.599522, 30.484844, 26.957949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263264, 30.359087, 27.134344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426390, 0.117838, 0.896831,
		-0.333922, 0.941951, 0.034993,
		-0.840647, -0.314392, 0.440987,
		35.011070, 30.264769, 27.266640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443821, 31.047298, 27.438740>,  <35.599522, 30.484844, 26.957949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443821, 31.047298, 27.438740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.239830, 30.723763, 27.555841>,  <35.117435, 30.529640, 27.626102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.239830, 30.723763, 27.555841>,  <35.443821, 31.047298, 27.438740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239830, 30.723763, 27.555841> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536088, -0.032691, 0.843529,
		-0.672709, 0.587120, 0.450281,
		-0.509973, -0.808840, 0.292756,
		35.086838, 30.481112, 27.643669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127563, 31.269617, 28.077818>,  <35.443821, 31.047298, 27.438740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127563, 31.269617, 28.077818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.112358, 30.870401, 28.097700>,  <35.103233, 30.630871, 28.109629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.112358, 30.870401, 28.097700>,  <35.127563, 31.269617, 28.077818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112358, 30.870401, 28.097700> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433919, 0.028319, 0.900507,
		-0.900149, 0.055803, 0.431992,
		-0.038017, -0.998040, 0.049705,
		35.100952, 30.570990, 28.112612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869423, 31.069946, 28.784718>,  <35.127563, 31.269617, 28.077818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869423, 31.069946, 28.784718> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.081444, 30.765907, 28.634357>,  <35.208656, 30.583485, 28.544142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.081444, 30.765907, 28.634357>,  <34.869423, 31.069946, 28.784718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081444, 30.765907, 28.634357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466914, -0.108425, 0.877631,
		-0.707842, -0.640699, 0.297430,
		0.530048, -0.760098, -0.375899,
		35.240459, 30.537878, 28.521587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896339, 30.610023, 29.345043>,  <34.869423, 31.069946, 28.784718>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896339, 30.610023, 29.345043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.199966, 30.485912, 29.116117>,  <35.382141, 30.411446, 28.978762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.199966, 30.485912, 29.116117>,  <34.896339, 30.610023, 29.345043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199966, 30.485912, 29.116117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562254, -0.130682, 0.816574,
		-0.328156, -0.941621, 0.075259,
		0.759068, -0.310278, -0.572314,
		35.427689, 30.392828, 28.944424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140324, 30.039059, 29.660316>,  <34.896339, 30.610023, 29.345043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140324, 30.039059, 29.660316> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.430664, 30.174917, 29.421061>,  <35.604870, 30.256433, 29.277506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.430664, 30.174917, 29.421061>,  <35.140324, 30.039059, 29.660316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430664, 30.174917, 29.421061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675738, -0.189661, 0.712325,
		0.128496, -0.921232, -0.367180,
		0.725856, 0.339648, -0.598141,
		35.648422, 30.276812, 29.241619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673691, 29.486517, 29.714706>,  <35.140324, 30.039059, 29.660316>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673691, 29.486517, 29.714706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.846146, 29.829067, 29.601044>,  <35.949619, 30.034597, 29.532846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.846146, 29.829067, 29.601044>,  <35.673691, 29.486517, 29.714706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846146, 29.829067, 29.601044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694924, -0.114282, 0.709944,
		0.575504, -0.503549, -0.644387,
		0.431133, 0.856375, -0.284158,
		35.975487, 30.085979, 29.515797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389656, 29.346882, 29.722366>,  <35.673691, 29.486517, 29.714706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389656, 29.346882, 29.722366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.355885, 29.743963, 29.756811>,  <36.335621, 29.982212, 29.777477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.355885, 29.743963, 29.756811>,  <36.389656, 29.346882, 29.722366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355885, 29.743963, 29.756811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640174, -0.012185, 0.768133,
		0.763577, 0.119976, -0.634473,
		-0.084427, 0.992702, 0.086110,
		36.330555, 30.041775, 29.782644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013103, 29.568506, 29.774649>,  <36.389656, 29.346882, 29.722366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013103, 29.568506, 29.774649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.816078, 29.886829, 29.915545>,  <36.697861, 30.077824, 30.000082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.816078, 29.886829, 29.915545>,  <37.013103, 29.568506, 29.774649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816078, 29.886829, 29.915545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617307, 0.034195, 0.785979,
		0.613442, 0.604585, -0.508100,
		-0.492566, 0.795806, 0.352238,
		36.668308, 30.125570, 30.021215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.816265, 32.999069, 24.969501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.416668, 33.003834, 24.986830>,  <34.176910, 33.006691, 24.997227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.416668, 33.003834, 24.986830>,  <34.816265, 32.999069, 24.969501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416668, 33.003834, 24.986830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042052, 0.091439, -0.994922,
		-0.015813, -0.995739, -0.090846,
		-0.998990, 0.011912, 0.043319,
		34.116970, 33.007408, 24.999825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507484, 32.405975, 24.496342>,  <34.816265, 32.999069, 24.969501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507484, 32.405975, 24.496342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.221989, 32.685276, 24.518320>,  <34.050690, 32.852856, 24.531507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.221989, 32.685276, 24.518320>,  <34.507484, 32.405975, 24.496342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221989, 32.685276, 24.518320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171822, -0.098504, -0.980191,
		-0.679009, -0.709042, 0.190281,
		-0.713740, 0.698253, 0.054944,
		34.007866, 32.894753, 24.534803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952965, 32.121464, 24.067871>,  <34.507484, 32.405975, 24.496342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952965, 32.121464, 24.067871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.891552, 32.515919, 24.093033>,  <33.854702, 32.752590, 24.108130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.891552, 32.515919, 24.093033>,  <33.952965, 32.121464, 24.067871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891552, 32.515919, 24.093033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324950, 0.009732, -0.945681,
		-0.933185, -0.165636, 0.318952,
		-0.153535, 0.986139, 0.062905,
		33.845490, 32.811760, 24.111904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228722, 32.192944, 23.894764>,  <33.952965, 32.121464, 24.067871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228722, 32.192944, 23.894764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.417076, 32.541218, 23.837961>,  <33.530090, 32.750183, 23.803879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.417076, 32.541218, 23.837961>,  <33.228722, 32.192944, 23.894764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417076, 32.541218, 23.837961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421426, 0.080594, -0.903275,
		-0.775026, 0.485187, 0.404881,
		0.470888, 0.870689, -0.142008,
		33.558342, 32.802425, 23.795359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.639755, 32.587189, 23.761066>,  <33.228722, 32.192944, 23.894764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.639755, 32.587189, 23.761066> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.973606, 32.748878, 23.611401>,  <33.173916, 32.845894, 23.521601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.973606, 32.748878, 23.611401>,  <32.639755, 32.587189, 23.761066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973606, 32.748878, 23.611401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448647, 0.104801, -0.887543,
		-0.319556, 0.908635, 0.268825,
		0.834626, 0.404227, -0.374166,
		33.223995, 32.870148, 23.499151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421478, 33.184601, 23.407667>,  <32.639755, 32.587189, 23.761066>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421478, 33.184601, 23.407667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.789310, 33.104881, 23.272226>,  <33.010010, 33.057049, 23.190962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.789310, 33.104881, 23.272226>,  <32.421478, 33.184601, 23.407667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789310, 33.104881, 23.272226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314900, 0.141519, -0.938515,
		0.234964, 0.969666, 0.067379,
		0.919581, -0.199300, -0.338600,
		33.065186, 33.045090, 23.170647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.502953, 33.627567, 22.721451>,  <32.421478, 33.184601, 23.407667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.502953, 33.627567, 22.721451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.775402, 33.334831, 22.712772>,  <32.938873, 33.159187, 22.707565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.775402, 33.334831, 22.712772>,  <32.502953, 33.627567, 22.721451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775402, 33.334831, 22.712772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051645, -0.018468, -0.998495,
		0.730341, 0.681223, -0.050375,
		0.681128, -0.731843, -0.021694,
		32.979740, 33.115280, 22.706264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814682, 33.915379, 22.213255>,  <32.502953, 33.627567, 22.721451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814682, 33.915379, 22.213255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.963440, 33.544189, 22.222723>,  <33.052696, 33.321476, 22.228405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.963440, 33.544189, 22.222723>,  <32.814682, 33.915379, 22.213255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963440, 33.544189, 22.222723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027253, -0.014575, -0.999522,
		0.927874, 0.372364, 0.019869,
		0.371896, -0.927972, 0.023672,
		33.075008, 33.265797, 22.229824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248703, 33.911320, 21.745747>,  <32.814682, 33.915379, 22.213255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248703, 33.911320, 21.745747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.193626, 33.517120, 21.785421>,  <33.160580, 33.280602, 21.809227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.193626, 33.517120, 21.785421>,  <33.248703, 33.911320, 21.745747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193626, 33.517120, 21.785421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200087, -0.125752, -0.971675,
		0.970055, -0.113940, 0.214500,
		-0.137687, -0.985497, 0.099188,
		33.152321, 33.221470, 21.815178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725861, 33.644928, 21.297562>,  <33.248703, 33.911320, 21.745747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725861, 33.644928, 21.297562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.466000, 33.346149, 21.354160>,  <33.310081, 33.166882, 21.388121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.466000, 33.346149, 21.354160>,  <33.725861, 33.644928, 21.297562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466000, 33.346149, 21.354160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057956, -0.234243, -0.970449,
		0.758020, -0.622252, 0.195466,
		-0.649651, -0.746949, 0.141498,
		33.271103, 33.122066, 21.396610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029354, 33.086842, 21.045017>,  <33.725861, 33.644928, 21.297562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029354, 33.086842, 21.045017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.641830, 32.987804, 21.041016>,  <33.409317, 32.928383, 21.038614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.641830, 32.987804, 21.041016>,  <34.029354, 33.086842, 21.045017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641830, 32.987804, 21.041016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090219, -0.314846, -0.944845,
		0.230791, -0.916279, 0.327365,
		-0.968811, -0.247597, -0.010002,
		33.351189, 32.913525, 21.038015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865479, 32.394588, 20.814255>,  <34.029354, 33.086842, 21.045017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865479, 32.394588, 20.814255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.538807, 32.589142, 20.690022>,  <33.342804, 32.705875, 20.615482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.538807, 32.589142, 20.690022>,  <33.865479, 32.394588, 20.814255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538807, 32.589142, 20.690022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165262, -0.318530, -0.933395,
		-0.552922, -0.813612, 0.179756,
		-0.816680, 0.486388, -0.310582,
		33.293804, 32.735058, 20.596848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532528, 32.035019, 20.483999>,  <33.865479, 32.394588, 20.814255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532528, 32.035019, 20.483999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.437057, 32.392162, 20.331247>,  <33.379776, 32.606449, 20.239595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.437057, 32.392162, 20.331247>,  <33.532528, 32.035019, 20.483999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437057, 32.392162, 20.331247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248365, -0.324042, -0.912859,
		-0.938801, -0.312727, -0.144413,
		-0.238680, 0.892860, -0.381882,
		33.365452, 32.660019, 20.216682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048225, 31.872782, 20.093630>,  <33.532528, 32.035019, 20.483999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.048225, 31.872782, 20.093630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.195511, 32.222698, 19.967672>,  <33.283882, 32.432648, 19.892097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.195511, 32.222698, 19.967672>,  <33.048225, 31.872782, 20.093630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195511, 32.222698, 19.967672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072173, -0.364563, -0.928378,
		-0.926934, 0.319117, -0.197375,
		0.368217, 0.874790, -0.314894,
		33.305977, 32.485134, 19.873203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774635, 31.176792, 20.254465>,  <33.048225, 31.872782, 20.093630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774635, 31.176792, 20.254465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.686871, 30.788540, 20.214998>,  <32.634212, 30.555588, 20.191319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.686871, 30.788540, 20.214998>,  <32.774635, 31.176792, 20.254465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686871, 30.788540, 20.214998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387035, -0.179426, 0.904439,
		-0.895580, 0.160256, 0.415037,
		-0.219410, -0.970631, -0.098666,
		32.621048, 30.497351, 20.185398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547886, 30.957733, 20.957418>,  <32.774635, 31.176792, 20.254465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547886, 30.957733, 20.957418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.624763, 30.617922, 20.760904>,  <32.670891, 30.414036, 20.642996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.624763, 30.617922, 20.760904>,  <32.547886, 30.957733, 20.957418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624763, 30.617922, 20.760904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211274, -0.453061, 0.866083,
		-0.958344, -0.270255, 0.092407,
		0.192197, -0.849528, -0.491286,
		32.682423, 30.363064, 20.613518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160671, 30.400854, 21.219442>,  <32.547886, 30.957733, 20.957418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160671, 30.400854, 21.219442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.501827, 30.260279, 21.065006>,  <32.706520, 30.175934, 20.972343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.501827, 30.260279, 21.065006>,  <32.160671, 30.400854, 21.219442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501827, 30.260279, 21.065006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222070, -0.425082, 0.877491,
		-0.472509, -0.834142, -0.284502,
		0.852889, -0.351443, -0.386093,
		32.757694, 30.154846, 20.949179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321331, 29.821167, 21.654047>,  <32.160671, 30.400854, 21.219442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321331, 29.821167, 21.654047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.664612, 29.874109, 21.455664>,  <32.870579, 29.905874, 21.336634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.664612, 29.874109, 21.455664>,  <32.321331, 29.821167, 21.654047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664612, 29.874109, 21.455664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512309, -0.281265, 0.811436,
		-0.032097, -0.950459, -0.309189,
		0.858201, 0.132356, -0.495957,
		32.922073, 29.913816, 21.306877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705650, 29.276241, 21.859318>,  <32.321331, 29.821167, 21.654047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705650, 29.276241, 21.859318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.982685, 29.520632, 21.705940>,  <33.148907, 29.667265, 21.613913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.982685, 29.520632, 21.705940>,  <32.705650, 29.276241, 21.859318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982685, 29.520632, 21.705940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567836, -0.133977, 0.812165,
		0.444839, -0.780231, -0.439724,
		0.692590, 0.610974, -0.383445,
		33.190460, 29.703924, 21.590906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286549, 28.925295, 21.711798>,  <32.705650, 29.276241, 21.859318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286549, 28.925295, 21.711798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.349052, 29.312113, 21.792206>,  <33.386555, 29.544203, 21.840450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.349052, 29.312113, 21.792206>,  <33.286549, 28.925295, 21.711798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349052, 29.312113, 21.792206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389183, -0.247337, 0.887334,
		0.907811, -0.060418, -0.415005,
		0.156257, 0.967044, 0.201022,
		33.395931, 29.602226, 21.852512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882736, 28.889805, 22.077963>,  <33.286549, 28.925295, 21.711798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882736, 28.889805, 22.077963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.764297, 29.261871, 22.164789>,  <33.693233, 29.485111, 22.216885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.764297, 29.261871, 22.164789>,  <33.882736, 28.889805, 22.077963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764297, 29.261871, 22.164789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417668, -0.078289, 0.905220,
		0.859000, 0.358693, -0.365320,
		-0.296095, 0.930167, 0.217065,
		33.675468, 29.540922, 22.229908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391525, 29.211493, 22.557661>,  <33.882736, 28.889805, 22.077963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391525, 29.211493, 22.557661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.085106, 29.453106, 22.645586>,  <33.901253, 29.598074, 22.698341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.085106, 29.453106, 22.645586>,  <34.391525, 29.211493, 22.557661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085106, 29.453106, 22.645586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357134, 0.115634, 0.926868,
		0.534441, 0.788526, -0.304301,
		-0.766047, 0.604032, 0.219810,
		33.855293, 29.634315, 22.711529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603233, 29.431591, 23.129929>,  <34.391525, 29.211493, 22.557661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603233, 29.431591, 23.129929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.244972, 29.609119, 23.141447>,  <34.030014, 29.715637, 23.148357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.244972, 29.609119, 23.141447>,  <34.603233, 29.431591, 23.129929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244972, 29.609119, 23.141447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038374, 0.012609, 0.999184,
		0.443097, 0.896026, -0.028325,
		-0.895652, 0.443822, 0.028797,
		33.976276, 29.742266, 23.150085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633438, 30.101498, 23.523279>,  <34.603233, 29.431591, 23.129929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633438, 30.101498, 23.523279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.254223, 29.974825, 23.535551>,  <34.026695, 29.898821, 23.542913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.254223, 29.974825, 23.535551>,  <34.633438, 30.101498, 23.523279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254223, 29.974825, 23.535551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014167, 0.054309, 0.998424,
		-0.317850, 0.946976, -0.047001,
		-0.948035, -0.316683, 0.030678,
		33.969810, 29.879820, 23.544754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098450, 30.609999, 23.840654>,  <34.633438, 30.101498, 23.523279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098450, 30.609999, 23.840654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.932571, 30.248875, 23.886185>,  <33.833042, 30.032200, 23.913502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.932571, 30.248875, 23.886185>,  <34.098450, 30.609999, 23.840654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932571, 30.248875, 23.886185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189111, 0.207863, 0.959703,
		-0.890091, 0.376462, -0.256932,
		-0.414699, -0.902812, 0.113824,
		33.808163, 29.978031, 23.920332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715515, 30.794743, 24.374235>,  <34.098450, 30.609999, 23.840654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715515, 30.794743, 24.374235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.683331, 30.396885, 24.348297>,  <33.664021, 30.158171, 24.332735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.683331, 30.396885, 24.348297>,  <33.715515, 30.794743, 24.374235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683331, 30.396885, 24.348297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277330, -0.040144, 0.959936,
		-0.957399, 0.095225, -0.272615,
		-0.080466, -0.994646, -0.064843,
		33.659191, 30.098492, 24.328844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074234, 30.556719, 24.624838>,  <33.715515, 30.794743, 24.374235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074234, 30.556719, 24.624838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.312752, 30.238523, 24.667986>,  <33.455864, 30.047607, 24.693874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.312752, 30.238523, 24.667986>,  <33.074234, 30.556719, 24.624838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312752, 30.238523, 24.667986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054466, 0.093976, 0.994083,
		-0.800917, -0.598640, 0.012710,
		0.596293, -0.795486, 0.107872,
		33.491638, 29.999878, 24.700348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818180, 30.227118, 25.232555>,  <33.074234, 30.556719, 24.624838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818180, 30.227118, 25.232555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.178787, 30.055828, 25.207621>,  <33.395153, 29.953054, 25.192659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.178787, 30.055828, 25.207621>,  <32.818180, 30.227118, 25.232555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178787, 30.055828, 25.207621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030921, -0.079934, 0.996320,
		-0.431633, -0.900129, -0.058821,
		0.901519, -0.428226, -0.062335,
		33.449242, 29.927361, 25.188921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320980, 29.651894, 25.408157>,  <32.818180, 30.227118, 25.232555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320980, 29.651894, 25.408157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.956022, 29.730555, 25.551748>,  <31.737047, 29.777752, 25.637903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.956022, 29.730555, 25.551748>,  <32.320980, 29.651894, 25.408157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956022, 29.730555, 25.551748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334703, 0.146370, -0.930886,
		-0.235605, -0.969486, -0.067727,
		-0.912394, 0.196653, 0.358976,
		31.682304, 29.789551, 25.659441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907751, 29.199314, 24.950071>,  <32.320980, 29.651894, 25.408157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907751, 29.199314, 24.950071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.692104, 29.486986, 25.125402>,  <31.562716, 29.659590, 25.230600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.692104, 29.486986, 25.125402>,  <31.907751, 29.199314, 24.950071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.692104, 29.486986, 25.125402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479492, 0.165777, -0.861746,
		-0.692416, -0.674756, 0.255469,
		-0.539117, 0.719182, 0.438326,
		31.530369, 29.702742, 25.256901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.236618, 28.979282, 24.871611>,  <31.907751, 29.199314, 24.950071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.236618, 28.979282, 24.871611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.229313, 29.375210, 24.928074>,  <31.224930, 29.612766, 24.961952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.229313, 29.375210, 24.928074>,  <31.236618, 28.979282, 24.871611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.229313, 29.375210, 24.928074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464357, 0.116634, -0.877935,
		-0.885460, -0.081583, 0.457499,
		-0.018265, 0.989819, 0.141158,
		31.223833, 29.672155, 24.970421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.545868, 29.183241, 24.561817>,  <31.236618, 28.979282, 24.871611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.545868, 29.183241, 24.561817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.728706, 29.538273, 24.584675>,  <30.838409, 29.751293, 24.598389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.728706, 29.538273, 24.584675>,  <30.545868, 29.183241, 24.561817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.728706, 29.538273, 24.584675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417005, 0.270616, -0.867683,
		-0.785603, 0.372783, 0.493822,
		0.457094, 0.887581, 0.057144,
		30.865835, 29.804546, 24.601818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.081125, 29.778330, 24.375834>,  <30.545868, 29.183241, 24.561817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.081125, 29.778330, 24.375834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.447472, 29.920271, 24.300713>,  <30.667280, 30.005436, 24.255640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.447472, 29.920271, 24.300713>,  <30.081125, 29.778330, 24.375834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.447472, 29.920271, 24.300713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308491, 0.322621, -0.894846,
		-0.256948, 0.877494, 0.404946,
		0.915866, 0.354851, -0.187803,
		30.722231, 30.026726, 24.244371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.043894, 30.534063, 24.140772>,  <30.081125, 29.778330, 24.375834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.043894, 30.534063, 24.140772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.394249, 30.415930, 23.988144>,  <30.604462, 30.345049, 23.896566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.394249, 30.415930, 23.988144>,  <30.043894, 30.534063, 24.140772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394249, 30.415930, 23.988144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214997, 0.469078, -0.856587,
		0.431966, 0.832312, 0.347364,
		0.875889, -0.295334, -0.381571,
		30.657015, 30.327330, 23.873672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303183, 31.190601, 23.716967>,  <30.043894, 30.534063, 24.140772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303183, 31.190601, 23.716967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.482716, 30.857851, 23.586409>,  <30.590435, 30.658201, 23.508074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.482716, 30.857851, 23.586409>,  <30.303183, 31.190601, 23.716967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.482716, 30.857851, 23.586409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026475, 0.352714, -0.935357,
		0.893223, 0.428461, 0.136286,
		0.448834, -0.831874, -0.326396,
		30.617365, 30.608290, 23.488489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.258064, 31.921247, 24.029722>,  <30.303183, 31.190601, 23.716967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.258064, 31.921247, 24.029722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.865076, 31.953861, 23.962667>,  <29.629282, 31.973429, 23.922434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.865076, 31.953861, 23.962667>,  <30.258064, 31.921247, 24.029722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.865076, 31.953861, 23.962667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173445, -0.070284, 0.982332,
		0.068311, 0.994189, 0.083193,
		-0.982472, 0.081534, -0.167636,
		29.570335, 31.978321, 23.912376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051081, 32.373589, 24.427977>,  <30.258064, 31.921247, 24.029722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.051081, 32.373589, 24.427977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.734619, 32.132069, 24.388992>,  <29.544743, 31.987156, 24.365601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.734619, 32.132069, 24.388992>,  <30.051081, 32.373589, 24.427977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.734619, 32.132069, 24.388992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006963, -0.150450, 0.988593,
		-0.611580, 0.782806, 0.114825,
		-0.791152, -0.603804, -0.097463,
		29.497274, 31.950928, 24.359753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.532711, 32.690220, 24.914228>,  <30.051081, 32.373589, 24.427977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.532711, 32.690220, 24.914228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.433706, 32.309860, 24.839905>,  <29.374304, 32.081642, 24.795311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.433706, 32.309860, 24.839905>,  <29.532711, 32.690220, 24.914228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.433706, 32.309860, 24.839905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033310, -0.183312, 0.982490,
		-0.968312, 0.249368, 0.013697,
		-0.247512, -0.950901, -0.185809,
		29.359453, 32.024590, 24.784163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.086758, 32.609154, 25.335825>,  <29.532711, 32.690220, 24.914228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.086758, 32.609154, 25.335825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.113844, 32.219799, 25.248253>,  <29.130096, 31.986185, 25.195709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.113844, 32.219799, 25.248253>,  <29.086758, 32.609154, 25.335825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.113844, 32.219799, 25.248253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135684, -0.226378, 0.964543,
		-0.988435, -0.035611, -0.147403,
		0.067717, -0.973388, -0.218929,
		29.134159, 31.927782, 25.182575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.512968, 32.222908, 25.578451>,  <29.086758, 32.609154, 25.335825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.512968, 32.222908, 25.578451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.812269, 31.957775, 25.567345>,  <28.991850, 31.798695, 25.560680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.812269, 31.957775, 25.567345>,  <28.512968, 32.222908, 25.578451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.812269, 31.957775, 25.567345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101062, -0.155253, 0.982692,
		-0.655673, -0.732493, -0.183156,
		0.748251, -0.662835, -0.027768,
		29.036745, 31.758924, 25.559015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.341251, 31.740671, 26.078619>,  <28.512968, 32.222908, 25.578451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.341251, 31.740671, 26.078619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.720335, 31.640520, 25.999462>,  <28.947784, 31.580429, 25.951967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.720335, 31.640520, 25.999462>,  <28.341251, 31.740671, 26.078619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.720335, 31.640520, 25.999462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106740, -0.335689, 0.935905,
		-0.300756, -0.908089, -0.291411,
		0.947709, -0.250374, -0.197890,
		29.004646, 31.565407, 25.940094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.407480, 31.078379, 26.372778>,  <28.341251, 31.740671, 26.078619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.407480, 31.078379, 26.372778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.751020, 31.283199, 26.367479>,  <28.957146, 31.406092, 26.364300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.751020, 31.283199, 26.367479>,  <28.407480, 31.078379, 26.372778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.751020, 31.283199, 26.367479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081060, -0.110337, 0.990583,
		0.505769, -0.851838, -0.136270,
		0.858853, 0.512052, -0.013245,
		29.008677, 31.436815, 26.363506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.153873, 34.760677, 21.646473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.393354, 34.442635, 21.607779>,  <30.537043, 34.251808, 21.584562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.393354, 34.442635, 21.607779>,  <30.153873, 34.760677, 21.646473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.393354, 34.442635, 21.607779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516641, 0.291056, 0.805214,
		-0.612076, -0.532062, 0.585041,
		0.598703, -0.795108, -0.096736,
		30.572966, 34.204102, 21.578758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.138050, 34.234474, 22.172699>,  <30.153873, 34.760677, 21.646473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.138050, 34.234474, 22.172699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.503702, 34.214287, 22.011791>,  <30.723093, 34.202175, 21.915247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.503702, 34.214287, 22.011791>,  <30.138050, 34.234474, 22.172699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.503702, 34.214287, 22.011791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405148, 0.150225, 0.901824,
		0.014920, -0.987363, 0.157771,
		0.914129, -0.050465, -0.402270,
		30.777941, 34.199146, 21.891109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475458, 33.698887, 22.535059>,  <30.138050, 34.234474, 22.172699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.475458, 33.698887, 22.535059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.729578, 33.962967, 22.374798>,  <30.882050, 34.121414, 22.278641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.729578, 33.962967, 22.374798>,  <30.475458, 33.698887, 22.535059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.729578, 33.962967, 22.374798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312744, 0.254410, 0.915132,
		0.706104, -0.706686, -0.044848,
		0.635302, 0.660205, -0.400652,
		30.920168, 34.161030, 22.254602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.181547, 33.589012, 22.809484>,  <30.475458, 33.698887, 22.535059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.181547, 33.589012, 22.809484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.191952, 33.967533, 22.680593>,  <31.198195, 34.194645, 22.603258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.191952, 33.967533, 22.680593>,  <31.181547, 33.589012, 22.809484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.191952, 33.967533, 22.680593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345607, 0.293949, 0.891151,
		0.938019, -0.134543, -0.319404,
		0.026010, 0.946305, -0.322228,
		31.199755, 34.251423, 22.583925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834547, 33.838234, 23.069315>,  <31.181547, 33.589012, 22.809484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834547, 33.838234, 23.069315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.610069, 34.154644, 22.971872>,  <31.475382, 34.344490, 22.913406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.610069, 34.154644, 22.971872>,  <31.834547, 33.838234, 23.069315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610069, 34.154644, 22.971872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261769, 0.448841, 0.854411,
		0.785199, 0.415723, -0.458952,
		-0.561195, 0.791022, -0.243606,
		31.441711, 34.391953, 22.898790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209721, 34.386608, 23.454399>,  <31.834547, 33.838234, 23.069315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209721, 34.386608, 23.454399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.859440, 34.556908, 23.363287>,  <31.649271, 34.659088, 23.308620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.859440, 34.556908, 23.363287>,  <32.209721, 34.386608, 23.454399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.859440, 34.556908, 23.363287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189110, 0.736463, 0.649508,
		0.444277, 0.525701, -0.725435,
		-0.875703, 0.425748, -0.227778,
		31.596729, 34.684631, 23.294954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399673, 35.091740, 23.285233>,  <32.209721, 34.386608, 23.454399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399673, 35.091740, 23.285233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.012222, 35.059250, 23.379179>,  <31.779751, 35.039757, 23.435547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.012222, 35.059250, 23.379179>,  <32.399673, 35.091740, 23.285233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012222, 35.059250, 23.379179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123754, 0.661911, 0.739296,
		-0.215509, 0.745169, -0.631094,
		-0.968628, -0.081224, 0.234866,
		31.721634, 35.034882, 23.449638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182045, 35.702812, 23.433620>,  <32.399673, 35.091740, 23.285233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182045, 35.702812, 23.433620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.884428, 35.489494, 23.594618>,  <31.705858, 35.361504, 23.691217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.884428, 35.489494, 23.594618>,  <32.182045, 35.702812, 23.433620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884428, 35.489494, 23.594618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108369, 0.690763, 0.714914,
		-0.659289, 0.488306, -0.571747,
		-0.744039, -0.533295, 0.402496,
		31.661217, 35.329506, 23.715366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.670189, 36.208485, 23.701612>,  <32.182045, 35.702812, 23.433620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.670189, 36.208485, 23.701612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.629986, 35.864601, 23.901930>,  <31.605864, 35.658272, 24.022120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.629986, 35.864601, 23.901930>,  <31.670189, 36.208485, 23.701612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629986, 35.864601, 23.901930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047374, 0.498636, 0.865516,
		-0.993808, 0.110717, -0.009390,
		-0.100509, -0.859711, 0.500794,
		31.599833, 35.606689, 24.052168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127378, 36.309574, 24.100384>,  <31.670189, 36.208485, 23.701612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127378, 36.309574, 24.100384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.325319, 36.017612, 24.289007>,  <31.444084, 35.842438, 24.402182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.325319, 36.017612, 24.289007>,  <31.127378, 36.309574, 24.100384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.325319, 36.017612, 24.289007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011998, 0.548347, 0.836165,
		-0.868895, -0.408120, 0.280108,
		0.494852, -0.729900, 0.471559,
		31.473774, 35.798641, 24.430475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.810528, 36.115162, 24.780439>,  <31.127378, 36.309574, 24.100384>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.810528, 36.115162, 24.780439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.166264, 35.948612, 24.856026>,  <31.379705, 35.848682, 24.901377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.166264, 35.948612, 24.856026>,  <30.810528, 36.115162, 24.780439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.166264, 35.948612, 24.856026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041472, 0.338112, 0.940192,
		-0.455365, -0.843986, 0.283428,
		0.889338, -0.416376, 0.188966,
		31.433065, 35.823700, 24.912716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.775700, 35.696915, 25.411741>,  <30.810528, 36.115162, 24.780439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.775700, 35.696915, 25.411741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.166059, 35.771358, 25.366163>,  <31.400276, 35.816025, 25.338818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.166059, 35.771358, 25.366163>,  <30.775700, 35.696915, 25.411741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.166059, 35.771358, 25.366163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036898, 0.373904, 0.926733,
		0.215076, -0.908603, 0.358026,
		0.975900, 0.186107, -0.113943,
		31.458830, 35.827190, 25.331980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.440359, 35.047016, 25.757132>,  <30.775700, 35.696915, 25.411741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.440359, 35.047016, 25.757132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.074108, 35.126930, 25.896679>,  <29.854357, 35.174881, 25.980408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.074108, 35.126930, 25.896679>,  <30.440359, 35.047016, 25.757132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074108, 35.126930, 25.896679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367424, -0.063666, -0.927872,
		-0.163166, -0.977769, 0.131700,
		-0.915629, 0.199787, 0.348868,
		29.799419, 35.186867, 26.001339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007853, 34.801369, 25.190805>,  <30.440359, 35.047016, 25.757132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.007853, 34.801369, 25.190805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.746914, 34.996204, 25.423077>,  <29.590351, 35.113106, 25.562439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.746914, 34.996204, 25.423077>,  <30.007853, 34.801369, 25.190805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.746914, 34.996204, 25.423077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683224, -0.046268, -0.728742,
		-0.328096, -0.872125, 0.362974,
		-0.652348, 0.487090, 0.580677,
		29.551208, 35.142330, 25.597281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.434401, 34.428791, 25.374781>,  <30.007853, 34.801369, 25.190805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.434401, 34.428791, 25.374781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.358900, 34.820072, 25.340141>,  <29.313601, 35.054840, 25.319357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.358900, 34.820072, 25.340141>,  <29.434401, 34.428791, 25.374781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.358900, 34.820072, 25.340141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613910, -0.186365, -0.767061,
		-0.766478, -0.091617, 0.635703,
		-0.188749, 0.978200, -0.086600,
		29.302275, 35.113533, 25.314161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.793795, 34.440479, 25.058344>,  <29.434401, 34.428791, 25.374781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.793795, 34.440479, 25.058344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.893726, 34.827198, 25.036823>,  <28.953686, 35.059227, 25.023911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.893726, 34.827198, 25.036823>,  <28.793795, 34.440479, 25.058344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.893726, 34.827198, 25.036823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455541, 0.068323, -0.887589,
		-0.854440, 0.246256, 0.457483,
		0.249830, 0.966794, -0.053802,
		28.968676, 35.117237, 25.020683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.223286, 34.731441, 24.880955>,  <28.793795, 34.440479, 25.058344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.223286, 34.731441, 24.880955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.488487, 35.008640, 24.767691>,  <28.647608, 35.174961, 24.699732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.488487, 35.008640, 24.767691>,  <28.223286, 34.731441, 24.880955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.488487, 35.008640, 24.767691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427966, 0.040523, -0.902886,
		-0.614223, 0.719800, 0.323446,
		0.663004, 0.692998, -0.283160,
		28.687389, 35.216541, 24.682743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.834745, 35.305099, 24.444029>,  <28.223286, 34.731441, 24.880955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.834745, 35.305099, 24.444029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.227802, 35.317719, 24.370909>,  <28.463636, 35.325291, 24.327036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.227802, 35.317719, 24.370909>,  <27.834745, 35.305099, 24.444029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.227802, 35.317719, 24.370909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183288, 0.013257, -0.982970,
		-0.028584, 0.999415, 0.018809,
		0.982644, 0.031544, -0.182801,
		28.522594, 35.327183, 24.316069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.907072, 35.925793, 24.021431>,  <27.834745, 35.305099, 24.444029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.907072, 35.925793, 24.021431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.221207, 35.685284, 23.962484>,  <28.409687, 35.540977, 23.927116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.221207, 35.685284, 23.962484>,  <27.907072, 35.925793, 24.021431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.221207, 35.685284, 23.962484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172142, 0.016561, -0.984933,
		0.594653, 0.798873, -0.090498,
		0.785338, -0.601271, -0.147367,
		28.456808, 35.504902, 23.918274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.235104, 36.216530, 23.462582>,  <27.907072, 35.925793, 24.021431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.235104, 36.216530, 23.462582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.408947, 35.857227, 23.488682>,  <28.513252, 35.641647, 23.504341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.408947, 35.857227, 23.488682>,  <28.235104, 36.216530, 23.462582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.408947, 35.857227, 23.488682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042382, -0.092768, -0.994785,
		0.899622, 0.429575, -0.078388,
		0.434607, -0.898253, 0.065250,
		28.539330, 35.587749, 23.508257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.779772, 36.292480, 22.999214>,  <28.235104, 36.216530, 23.462582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.779772, 36.292480, 22.999214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.721607, 35.899239, 23.043697>,  <28.686708, 35.663296, 23.070387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.721607, 35.899239, 23.043697>,  <28.779772, 36.292480, 22.999214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.721607, 35.899239, 23.043697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012202, -0.114178, -0.993385,
		0.989296, -0.143094, 0.028599,
		-0.145413, -0.983101, 0.111210,
		28.677982, 35.604309, 23.077061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.078184, 36.073235, 22.364256>,  <28.779772, 36.292480, 22.999214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.078184, 36.073235, 22.364256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.860142, 35.759590, 22.482931>,  <28.729317, 35.571404, 22.554136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.860142, 35.759590, 22.482931>,  <29.078184, 36.073235, 22.364256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.860142, 35.759590, 22.482931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090630, -0.296700, -0.950660,
		0.833454, -0.545100, 0.090669,
		-0.545106, -0.784114, 0.296688,
		28.696609, 35.524357, 22.571938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.374891, 35.428272, 22.041391>,  <29.078184, 36.073235, 22.364256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.374891, 35.428272, 22.041391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.991133, 35.351219, 22.123810>,  <28.760878, 35.304989, 22.173262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.991133, 35.351219, 22.123810>,  <29.374891, 35.428272, 22.041391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.991133, 35.351219, 22.123810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150532, -0.268100, -0.951558,
		0.238541, -0.943936, 0.228216,
		-0.959395, -0.192632, 0.206046,
		28.703314, 35.293430, 22.185623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.215801, 34.804569, 21.585526>,  <29.374891, 35.428272, 22.041391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.215801, 34.804569, 21.585526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.863838, 34.972698, 21.674150>,  <28.652660, 35.073574, 21.727325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.863838, 34.972698, 21.674150>,  <29.215801, 34.804569, 21.585526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.863838, 34.972698, 21.674150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332783, -0.212343, -0.918785,
		-0.339140, -0.882179, 0.326719,
		-0.879909, 0.420323, 0.221561,
		28.599865, 35.098793, 21.740620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.745333, 34.291824, 21.409597>,  <29.215801, 34.804569, 21.585526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.745333, 34.291824, 21.409597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.536531, 34.632641, 21.393938>,  <28.411251, 34.837132, 21.384542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.536531, 34.632641, 21.393938>,  <28.745333, 34.291824, 21.409597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.536531, 34.632641, 21.393938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378423, -0.272486, -0.884617,
		-0.764401, -0.446957, 0.464672,
		-0.522002, 0.852045, -0.039150,
		28.379930, 34.888256, 21.382193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.106173, 33.745983, 21.102909>,  <28.745333, 34.291824, 21.409597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.106173, 33.745983, 21.102909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.007885, 33.366310, 21.024252>,  <28.948912, 33.138504, 20.977057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.007885, 33.366310, 21.024252>,  <29.106173, 33.745983, 21.102909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.007885, 33.366310, 21.024252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030259, -0.210276, 0.977174,
		-0.968869, 0.234160, 0.080390,
		-0.245720, -0.949185, -0.196645,
		28.934170, 33.081554, 20.965258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.508680, 33.545761, 21.430967>,  <29.106173, 33.745983, 21.102909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.508680, 33.545761, 21.430967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.724983, 33.215893, 21.364635>,  <28.854765, 33.017971, 21.324837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.724983, 33.215893, 21.364635>,  <28.508680, 33.545761, 21.430967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.724983, 33.215893, 21.364635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046022, -0.225848, 0.973075,
		-0.839920, -0.518564, -0.160081,
		0.540755, -0.824673, -0.165829,
		28.887209, 32.968491, 21.314886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.172043, 32.989510, 21.712652>,  <28.508680, 33.545761, 21.430967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.172043, 32.989510, 21.712652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.546862, 32.861347, 21.657108>,  <28.771753, 32.784451, 21.623783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.546862, 32.861347, 21.657108>,  <28.172043, 32.989510, 21.712652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.546862, 32.861347, 21.657108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006009, -0.412383, 0.910991,
		-0.349146, -0.852809, -0.388348,
		0.937049, -0.320402, -0.138858,
		28.827976, 32.765224, 21.615450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.209572, 32.278465, 21.854450>,  <28.172043, 32.989510, 21.712652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.209572, 32.278465, 21.854450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.597715, 32.369995, 21.885542>,  <28.830603, 32.424911, 21.904196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.597715, 32.369995, 21.885542>,  <28.209572, 32.278465, 21.854450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.597715, 32.369995, 21.885542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012368, -0.368241, 0.929648,
		0.241346, -0.901132, -0.360156,
		0.970360, 0.228821, 0.077728,
		28.888824, 32.438641, 21.908861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.575258, 31.639849, 22.077093>,  <28.209572, 32.278465, 21.854450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.575258, 31.639849, 22.077093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.814596, 31.949753, 22.158806>,  <28.958199, 32.135696, 22.207832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.814596, 31.949753, 22.158806>,  <28.575258, 31.639849, 22.077093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.814596, 31.949753, 22.158806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131141, -0.346215, 0.928944,
		0.790432, -0.529041, -0.308760,
		0.598347, 0.774758, 0.204281,
		28.994101, 32.182178, 22.220091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.125036, 31.389469, 22.514421>,  <28.575258, 31.639849, 22.077093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.125036, 31.389469, 22.514421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.174175, 31.783342, 22.563917>,  <29.203659, 32.019665, 22.593615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.174175, 31.783342, 22.563917>,  <29.125036, 31.389469, 22.514421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.174175, 31.783342, 22.563917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456789, -0.166793, 0.873798,
		0.881052, -0.050820, -0.470282,
		0.122847, 0.984681, 0.123740,
		29.211029, 32.078747, 22.601040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.841581, 31.565346, 22.777056>,  <29.125036, 31.389469, 22.514421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.841581, 31.565346, 22.777056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.620285, 31.873972, 22.902668>,  <29.487507, 32.059147, 22.978035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.620285, 31.873972, 22.902668>,  <29.841581, 31.565346, 22.777056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.620285, 31.873972, 22.902668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240679, -0.212852, 0.946978,
		0.797496, 0.599486, -0.067941,
		-0.553239, 0.771564, 0.314032,
		29.454313, 32.105442, 22.996878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.147602, 31.839317, 23.330523>,  <29.841581, 31.565346, 22.777056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.147602, 31.839317, 23.330523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.762777, 31.943886, 23.361753>,  <29.531883, 32.006626, 23.380491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.762777, 31.943886, 23.361753>,  <30.147602, 31.839317, 23.330523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.762777, 31.943886, 23.361753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053774, -0.098873, 0.993646,
		0.267478, 0.960148, 0.081064,
		-0.962062, 0.261419, 0.078078,
		29.474159, 32.022312, 23.385178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.893553, 31.425623, 23.318611>,  <30.147602, 31.839317, 23.330523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.893553, 31.425623, 23.318611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.792253, 31.052837, 23.214838>,  <30.731474, 30.829166, 23.152575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.792253, 31.052837, 23.214838>,  <30.893553, 31.425623, 23.318611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.792253, 31.052837, 23.214838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044194, 0.279038, -0.959263,
		0.966391, -0.231467, -0.111853,
		-0.253249, -0.931966, -0.259430,
		30.716278, 30.773247, 23.137009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446846, 31.150362, 22.884480>,  <30.893553, 31.425623, 23.318611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.446846, 31.150362, 22.884480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.160757, 30.894762, 22.771246>,  <30.989103, 30.741402, 22.703306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.160757, 30.894762, 22.771246>,  <31.446846, 31.150362, 22.884480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.160757, 30.894762, 22.771246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303558, 0.080816, -0.949379,
		0.629529, -0.764951, 0.136171,
		-0.715224, -0.638998, -0.283083,
		30.946190, 30.703062, 22.686321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697735, 30.780617, 22.278391>,  <31.446846, 31.150362, 22.884480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697735, 30.780617, 22.278391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.301638, 30.726952, 22.263332>,  <31.063978, 30.694754, 22.254297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.301638, 30.726952, 22.263332>,  <31.697735, 30.780617, 22.278391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.301638, 30.726952, 22.263332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014305, 0.170852, -0.985193,
		0.138596, -0.976122, -0.167266,
		-0.990246, -0.134151, -0.037643,
		31.004564, 30.686703, 22.252039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576885, 30.188538, 21.786934>,  <31.697735, 30.780617, 22.278391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576885, 30.188538, 21.786934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.260426, 30.430849, 21.820675>,  <31.070549, 30.576235, 21.840919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.260426, 30.430849, 21.820675>,  <31.576885, 30.188538, 21.786934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.260426, 30.430849, 21.820675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009046, 0.149492, -0.988721,
		-0.611555, -0.781464, -0.123750,
		-0.791150, 0.605777, 0.084354,
		31.023081, 30.612581, 21.845982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233490, 30.028498, 21.198734>,  <31.576885, 30.188538, 21.786934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233490, 30.028498, 21.198734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.070850, 30.375664, 21.312860>,  <30.973267, 30.583963, 21.381336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.070850, 30.375664, 21.312860>,  <31.233490, 30.028498, 21.198734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.070850, 30.375664, 21.312860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101952, 0.267243, -0.958221,
		-0.907901, -0.418698, -0.020174,
		-0.406597, 0.867913, 0.285318,
		30.948872, 30.636038, 21.398457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.609446, 30.007309, 20.976076>,  <31.233490, 30.028498, 21.198734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.609446, 30.007309, 20.976076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.641905, 30.402178, 21.031080>,  <30.661381, 30.639099, 21.064083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.641905, 30.402178, 21.031080>,  <30.609446, 30.007309, 20.976076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.641905, 30.402178, 21.031080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158415, 0.148986, -0.976068,
		-0.984033, 0.057421, 0.168472,
		0.081147, 0.987171, 0.137511,
		30.666248, 30.698330, 21.072334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.005934, 30.383217, 20.686235>,  <30.609446, 30.007309, 20.976076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.005934, 30.383217, 20.686235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.301989, 30.652182, 20.689217>,  <30.479622, 30.813560, 20.691006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.301989, 30.652182, 20.689217>,  <30.005934, 30.383217, 20.686235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.301989, 30.652182, 20.689217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208861, 0.240402, -0.947937,
		-0.639197, 0.700048, 0.318372,
		0.740138, 0.672414, 0.007452,
		30.524031, 30.853907, 20.691452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.727671, 30.926542, 20.278893>,  <30.005934, 30.383217, 20.686235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.727671, 30.926542, 20.278893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.121872, 30.985147, 20.313107>,  <30.358393, 31.020311, 20.333635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.121872, 30.985147, 20.313107>,  <29.727671, 30.926542, 20.278893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.121872, 30.985147, 20.313107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023083, 0.383698, -0.923170,
		-0.168077, 0.911762, 0.374753,
		0.985504, 0.146513, 0.085537,
		30.417522, 31.029102, 20.338768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.801056, 31.452711, 19.875963>,  <29.727671, 30.926542, 20.278893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.801056, 31.452711, 19.875963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.177078, 31.317530, 19.894230>,  <30.402691, 31.236420, 19.905190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.177078, 31.317530, 19.894230>,  <29.801056, 31.452711, 19.875963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.177078, 31.317530, 19.894230> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111966, 0.179374, -0.977389,
		0.322121, 0.923911, 0.206461,
		0.940054, -0.337954, 0.045667,
		30.459095, 31.216143, 19.907930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.175091, 32.259338, 35.217911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.430019, 32.220512, 34.912125>,  <35.582977, 32.197216, 34.728653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.430019, 32.220512, 34.912125>,  <35.175091, 32.259338, 35.217911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430019, 32.220512, 34.912125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756078, -0.270455, -0.595986,
		-0.148902, 0.957826, -0.245756,
		0.637317, -0.097067, -0.764464,
		35.621216, 32.191391, 34.682785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886078, 32.646732, 34.721344>,  <35.175091, 32.259338, 35.217911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886078, 32.646732, 34.721344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.129635, 32.377388, 34.553616>,  <35.275768, 32.215782, 34.452980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.129635, 32.377388, 34.553616>,  <34.886078, 32.646732, 34.721344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129635, 32.377388, 34.553616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668484, -0.150984, -0.728240,
		0.427061, 0.723729, -0.542066,
		0.608891, -0.673365, -0.419322,
		35.312302, 32.175377, 34.427818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711716, 32.823788, 34.019115>,  <34.886078, 32.646732, 34.721344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711716, 32.823788, 34.019115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.919991, 32.482533, 34.006165>,  <35.044956, 32.277779, 33.998394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.919991, 32.482533, 34.006165>,  <34.711716, 32.823788, 34.019115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919991, 32.482533, 34.006165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448649, -0.241161, -0.860555,
		0.726360, 0.462606, -0.508327,
		0.520686, -0.853134, -0.032378,
		35.076195, 32.226593, 33.996452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117512, 32.788826, 33.347733>,  <34.711716, 32.823788, 34.019115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117512, 32.788826, 33.347733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.097042, 32.410290, 33.475365>,  <35.084763, 32.183167, 33.551945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.097042, 32.410290, 33.475365>,  <35.117512, 32.788826, 33.347733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097042, 32.410290, 33.475365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478398, -0.257233, -0.839623,
		0.876651, -0.195612, -0.439567,
		-0.051170, -0.946344, 0.319084,
		35.081692, 32.126385, 33.571091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253136, 32.380421, 32.789097>,  <35.117512, 32.788826, 33.347733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253136, 32.380421, 32.789097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.058052, 32.167446, 33.065834>,  <34.941002, 32.039661, 33.231876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.058052, 32.167446, 33.065834>,  <35.253136, 32.380421, 32.789097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058052, 32.167446, 33.065834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583680, -0.390453, -0.711944,
		0.649201, -0.751036, -0.120348,
		-0.487705, -0.532439, 0.691847,
		34.911739, 32.007713, 33.273388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190639, 31.766457, 32.470341>,  <35.253136, 32.380421, 32.789097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190639, 31.766457, 32.470341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.922638, 31.734816, 32.765591>,  <34.761837, 31.715832, 32.942741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.922638, 31.734816, 32.765591>,  <35.190639, 31.766457, 32.470341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922638, 31.734816, 32.765591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548770, -0.616844, -0.564229,
		0.499940, -0.783101, 0.369882,
		-0.670008, -0.079100, 0.738127,
		34.721634, 31.711086, 32.987030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963299, 31.082335, 32.475948>,  <35.190639, 31.766457, 32.470341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963299, 31.082335, 32.475948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.681175, 31.308535, 32.646946>,  <34.511902, 31.444254, 32.749546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.681175, 31.308535, 32.646946>,  <34.963299, 31.082335, 32.475948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681175, 31.308535, 32.646946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686450, -0.394236, -0.611036,
		-0.177004, -0.724424, 0.666243,
		-0.705306, 0.565498, 0.427499,
		34.469582, 31.478184, 32.775196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485733, 30.669519, 32.757076>,  <34.963299, 31.082335, 32.475948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485733, 30.669519, 32.757076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.266434, 30.999308, 32.700977>,  <34.134853, 31.197180, 32.667316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.266434, 30.999308, 32.700977>,  <34.485733, 30.669519, 32.757076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266434, 30.999308, 32.700977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587118, -0.498862, -0.637518,
		-0.595579, -0.267178, 0.757563,
		-0.548250, 0.824471, -0.140247,
		34.101959, 31.246649, 32.658905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771061, 30.428232, 32.770092>,  <34.485733, 30.669519, 32.757076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771061, 30.428232, 32.770092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.767910, 30.785883, 32.590996>,  <33.766022, 31.000473, 32.483536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.767910, 30.785883, 32.590996>,  <33.771061, 30.428232, 32.770092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767910, 30.785883, 32.590996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812240, -0.266891, -0.518686,
		-0.583270, 0.359590, 0.728348,
		-0.007875, 0.894128, -0.447743,
		33.765549, 31.054121, 32.456673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131638, 30.481764, 32.682018>,  <33.771061, 30.428232, 32.770092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131638, 30.481764, 32.682018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.244400, 30.779388, 32.439728>,  <33.312057, 30.957964, 32.294353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.244400, 30.779388, 32.439728>,  <33.131638, 30.481764, 32.682018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244400, 30.779388, 32.439728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805012, -0.160048, -0.571262,
		-0.521999, 0.648658, 0.553859,
		0.281909, 0.744061, -0.605722,
		33.328972, 31.002607, 32.258011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536354, 30.876596, 32.508183>,  <33.131638, 30.481764, 32.682018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536354, 30.876596, 32.508183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.789730, 30.926908, 32.202782>,  <32.941753, 30.957096, 32.019543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.789730, 30.926908, 32.202782>,  <32.536354, 30.876596, 32.508183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789730, 30.926908, 32.202782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736223, -0.205756, -0.644702,
		-0.238187, 0.970487, -0.037730,
		0.633438, 0.125782, -0.763502,
		32.979763, 30.964643, 31.973730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193947, 31.173168, 32.037331>,  <32.536354, 30.876596, 32.508183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193947, 31.173168, 32.037331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.467815, 31.014252, 31.792910>,  <32.632137, 30.918901, 31.646255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.467815, 31.014252, 31.792910>,  <32.193947, 31.173168, 32.037331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467815, 31.014252, 31.792910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701007, -0.129410, -0.701314,
		0.199549, 0.908522, -0.367107,
		0.684667, -0.397291, -0.611057,
		32.673214, 30.895065, 31.609592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.734064, 31.753511, 31.834103>,  <32.193947, 31.173168, 32.037331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.734064, 31.753511, 31.834103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.342726, 31.699793, 31.897095>,  <31.107922, 31.667561, 31.934891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.342726, 31.699793, 31.897095>,  <31.734064, 31.753511, 31.834103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.342726, 31.699793, 31.897095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087748, 0.419979, 0.903282,
		-0.187448, 0.897542, -0.399101,
		-0.978347, -0.134298, 0.157482,
		31.049221, 31.659504, 31.944340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.583643, 32.370956, 32.070766>,  <31.734064, 31.753511, 31.834103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.583643, 32.370956, 32.070766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.283695, 32.132439, 32.185402>,  <31.103727, 31.989328, 32.254185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.283695, 32.132439, 32.185402>,  <31.583643, 32.370956, 32.070766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.283695, 32.132439, 32.185402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093743, 0.333046, 0.938239,
		-0.654911, 0.730422, -0.193842,
		-0.749869, -0.596292, 0.286588,
		31.058735, 31.953550, 32.271378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.084412, 32.747734, 32.477585>,  <31.583643, 32.370956, 32.070766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.084412, 32.747734, 32.477585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.026443, 32.368740, 32.591610>,  <30.991663, 32.141342, 32.660027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.026443, 32.368740, 32.591610>,  <31.084412, 32.747734, 32.477585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026443, 32.368740, 32.591610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035980, 0.282870, 0.958483,
		-0.988789, 0.149162, -0.006903,
		-0.144922, -0.947489, 0.285065,
		30.982967, 32.084492, 32.677128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.412144, 32.761169, 32.864471>,  <31.084412, 32.747734, 32.477585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.412144, 32.761169, 32.864471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.608965, 32.429272, 32.969860>,  <30.727057, 32.230133, 33.033092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.608965, 32.429272, 32.969860>,  <30.412144, 32.761169, 32.864471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.608965, 32.429272, 32.969860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151837, 0.216210, 0.964468,
		-0.857223, -0.514572, -0.019599,
		0.492051, -0.829740, 0.263471,
		30.756580, 32.180351, 33.048901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.034403, 32.631069, 33.428875>,  <30.412144, 32.761169, 32.864471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.034403, 32.631069, 33.428875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.350683, 32.390064, 33.472279>,  <30.540451, 32.245461, 33.498322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.350683, 32.390064, 33.472279>,  <30.034403, 32.631069, 33.428875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.350683, 32.390064, 33.472279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050291, 0.240573, 0.969327,
		-0.610137, -0.760988, 0.220521,
		0.790698, -0.602512, 0.108512,
		30.587893, 32.209312, 33.504833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.919283, 32.439739, 34.152931>,  <30.034403, 32.631069, 33.428875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.919283, 32.439739, 34.152931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.299829, 32.347618, 34.071091>,  <30.528158, 32.292347, 34.021984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.299829, 32.347618, 34.071091>,  <29.919283, 32.439739, 34.152931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.299829, 32.347618, 34.071091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237955, 0.127556, 0.962864,
		-0.195654, -0.964722, 0.176154,
		0.951366, -0.230305, -0.204604,
		30.585239, 32.278526, 34.009708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.187853, 32.124641, 34.750065>,  <29.919283, 32.439739, 34.152931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.187853, 32.124641, 34.750065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.523466, 32.249748, 34.571987>,  <30.724834, 32.324814, 34.465141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.523466, 32.249748, 34.571987>,  <30.187853, 32.124641, 34.750065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.523466, 32.249748, 34.571987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329912, 0.358196, 0.873415,
		0.432646, -0.879699, 0.197351,
		0.839033, 0.312771, -0.445195,
		30.775177, 32.343578, 34.438427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734602, 31.790482, 35.050858>,  <30.187853, 32.124641, 34.750065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734602, 31.790482, 35.050858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.888227, 32.121418, 34.886906>,  <30.980402, 32.319981, 34.788536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.888227, 32.121418, 34.886906>,  <30.734602, 31.790482, 35.050858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888227, 32.121418, 34.886906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403424, 0.248940, 0.880498,
		0.830509, -0.503522, -0.238161,
		0.384062, 0.827342, -0.409880,
		31.003447, 32.369621, 34.763943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.437330, 31.737373, 35.298725>,  <30.734602, 31.790482, 35.050858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.437330, 31.737373, 35.298725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.328213, 32.111984, 35.210632>,  <31.262743, 32.336750, 35.157776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.328213, 32.111984, 35.210632>,  <31.437330, 31.737373, 35.298725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328213, 32.111984, 35.210632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202908, 0.279775, 0.938378,
		0.940432, 0.211295, -0.266349,
		-0.272793, 0.936526, -0.220236,
		31.246374, 32.392941, 35.144562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.827219, 32.146107, 35.822006>,  <31.437330, 31.737373, 35.298725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.827219, 32.146107, 35.822006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.582340, 32.425911, 35.674549>,  <31.435413, 32.593796, 35.586075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.582340, 32.425911, 35.674549>,  <31.827219, 32.146107, 35.822006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.582340, 32.425911, 35.674549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144169, 0.557154, 0.817799,
		0.777452, 0.447506, -0.441935,
		-0.612196, 0.699513, -0.368644,
		31.398682, 32.635765, 35.563957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161797, 32.717072, 35.928429>,  <31.827219, 32.146107, 35.822006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161797, 32.717072, 35.928429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.790747, 32.861786, 35.891277>,  <31.568117, 32.948616, 35.868988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.790747, 32.861786, 35.891277>,  <32.161797, 32.717072, 35.928429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790747, 32.861786, 35.891277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170305, 0.630962, 0.756890,
		0.332435, 0.686291, -0.646909,
		-0.927622, 0.361789, -0.092875,
		31.512461, 32.970322, 35.863415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.167206, 33.497719, 35.918446>,  <32.161797, 32.717072, 35.928429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.167206, 33.497719, 35.918446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.803583, 33.371651, 36.027466>,  <31.585409, 33.296009, 36.092876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.803583, 33.371651, 36.027466>,  <32.167206, 33.497719, 35.918446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.803583, 33.371651, 36.027466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017053, 0.681708, 0.731425,
		-0.416324, 0.660259, -0.625086,
		-0.909056, -0.315170, 0.272552,
		31.530867, 33.277100, 36.109230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858294, 34.027870, 36.066429>,  <32.167206, 33.497719, 35.918446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.858294, 34.027870, 36.066429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.622295, 33.760303, 36.247295>,  <31.480696, 33.599762, 36.355816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.622295, 33.760303, 36.247295>,  <31.858294, 34.027870, 36.066429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622295, 33.760303, 36.247295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026448, 0.543712, 0.838855,
		-0.806972, 0.506881, -0.303097,
		-0.589997, -0.668916, 0.452166,
		31.445295, 33.559628, 36.382946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.088203, 34.254417, 36.185684>,  <31.858294, 34.027870, 36.066429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.088203, 34.254417, 36.185684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.232580, 34.004997, 36.463074>,  <31.319206, 33.855343, 36.629509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.232580, 34.004997, 36.463074>,  <31.088203, 34.254417, 36.185684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232580, 34.004997, 36.463074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232746, 0.659841, 0.714451,
		-0.903079, -0.419276, 0.093033,
		0.360940, -0.623553, 0.693473,
		31.340862, 33.817932, 36.671116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.849394, 34.928928, 36.436520>,  <31.088203, 34.254417, 36.185684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.849394, 34.928928, 36.436520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.978617, 35.304657, 36.390381>,  <31.056150, 35.530094, 36.362698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.978617, 35.304657, 36.390381>,  <30.849394, 34.928928, 36.436520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.978617, 35.304657, 36.390381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609983, 0.113484, -0.784246,
		-0.723572, 0.323714, 0.609634,
		0.323055, 0.939324, -0.115346,
		31.075533, 35.586452, 36.355778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.298256, 35.255878, 36.173927>,  <30.849394, 34.928928, 36.436520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.298256, 35.255878, 36.173927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.597904, 35.508911, 36.095280>,  <30.777693, 35.660732, 36.048092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.597904, 35.508911, 36.095280>,  <30.298256, 35.255878, 36.173927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.597904, 35.508911, 36.095280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395993, 0.189689, -0.898447,
		-0.531047, 0.750903, 0.392598,
		0.749119, 0.632584, -0.196618,
		30.822639, 35.698685, 36.036293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.928423, 35.713993, 35.888649>,  <30.298256, 35.255878, 36.173927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.928423, 35.713993, 35.888649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.313343, 35.692886, 35.781918>,  <30.544294, 35.680222, 35.717880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.313343, 35.692886, 35.781918>,  <29.928423, 35.713993, 35.888649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.313343, 35.692886, 35.781918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264232, 0.051289, -0.963094,
		0.064507, 0.997289, 0.035412,
		0.962299, -0.052770, -0.266824,
		30.602034, 35.677055, 35.701870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.188942, 36.254246, 35.344650>,  <29.928423, 35.713993, 35.888649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.188942, 36.254246, 35.344650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.443094, 35.949314, 35.295418>,  <30.595585, 35.766354, 35.265877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.443094, 35.949314, 35.295418>,  <30.188942, 36.254246, 35.344650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.443094, 35.949314, 35.295418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149457, 0.034977, -0.988149,
		0.757599, 0.646245, -0.091712,
		0.635379, -0.762328, -0.123084,
		30.633707, 35.720615, 35.258492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.776052, 36.397774, 34.896202>,  <30.188942, 36.254246, 35.344650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.776052, 36.397774, 34.896202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.743242, 35.999138, 34.892540>,  <30.723557, 35.759956, 34.890343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.743242, 35.999138, 34.892540>,  <30.776052, 36.397774, 34.896202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.743242, 35.999138, 34.892540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031976, 0.006551, -0.999467,
		0.996117, -0.082274, 0.031329,
		-0.082025, -0.996588, -0.009156,
		30.718636, 35.700161, 34.889793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.350767, 36.188545, 34.560715>,  <30.776052, 36.397774, 34.896202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.350767, 36.188545, 34.560715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.098646, 35.878769, 34.538952>,  <30.947374, 35.692902, 34.525894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.098646, 35.878769, 34.538952>,  <31.350767, 36.188545, 34.560715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098646, 35.878769, 34.538952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197371, -0.092067, -0.975996,
		0.750843, -0.625910, 0.210883,
		-0.630301, -0.774442, -0.054408,
		30.909555, 35.646435, 34.522629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750044, 35.682480, 34.264488>,  <31.350767, 36.188545, 34.560715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.750044, 35.682480, 34.264488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.366728, 35.591370, 34.195442>,  <31.136738, 35.536701, 34.154015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.366728, 35.591370, 34.195442>,  <31.750044, 35.682480, 34.264488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.366728, 35.591370, 34.195442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249293, -0.370855, -0.894606,
		0.139758, -0.900324, 0.412171,
		-0.958290, -0.227780, -0.172615,
		31.079241, 35.523037, 34.143658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.733923, 35.134789, 33.869473>,  <31.750044, 35.682480, 34.264488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.733923, 35.134789, 33.869473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.353815, 35.249538, 33.820999>,  <31.125750, 35.318390, 33.791916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.353815, 35.249538, 33.820999>,  <31.733923, 35.134789, 33.869473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353815, 35.249538, 33.820999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055010, -0.228398, -0.972013,
		-0.306526, -0.930342, 0.201259,
		-0.950272, 0.286876, -0.121188,
		31.068733, 35.335602, 33.784641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466166, 34.612900, 33.539242>,  <31.733923, 35.134789, 33.869473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466166, 34.612900, 33.539242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.197729, 34.901325, 33.470306>,  <31.036667, 35.074383, 33.428944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.197729, 34.901325, 33.470306>,  <31.466166, 34.612900, 33.539242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197729, 34.901325, 33.470306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017127, -0.217315, -0.975951,
		-0.741177, -0.657904, 0.133488,
		-0.671091, 0.721066, -0.172337,
		30.996401, 35.117645, 33.418606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.020653, 34.338974, 33.239166>,  <31.466166, 34.612900, 33.539242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.020653, 34.338974, 33.239166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.922810, 34.715149, 33.144730>,  <30.864103, 34.940853, 33.088066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.922810, 34.715149, 33.144730>,  <31.020653, 34.338974, 33.239166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.922810, 34.715149, 33.144730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058442, -0.257345, -0.964551,
		-0.967859, -0.222140, 0.117910,
		-0.244608, 0.940440, -0.236091,
		30.849426, 34.997280, 33.073902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.434023, 34.295784, 32.648998>,  <31.020653, 34.338974, 33.239166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.434023, 34.295784, 32.648998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.570765, 34.670296, 32.616711>,  <30.652809, 34.895004, 32.597340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.570765, 34.670296, 32.616711>,  <30.434023, 34.295784, 32.648998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.570765, 34.670296, 32.616711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011860, -0.081586, -0.996596,
		-0.939678, 0.341648, -0.016786,
		0.341855, 0.936280, -0.080716,
		30.673321, 34.951180, 32.592495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.022688, 34.499432, 32.172478>,  <30.434023, 34.295784, 32.648998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.022688, 34.499432, 32.172478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.323978, 34.762417, 32.180355>,  <30.504753, 34.920208, 32.185081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.323978, 34.762417, 32.180355>,  <30.022688, 34.499432, 32.172478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.323978, 34.762417, 32.180355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054376, -0.032410, -0.997994,
		-0.655508, 0.752788, -0.060162,
		0.753228, 0.657465, 0.019689,
		30.549946, 34.959656, 32.186260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.807781, 35.023346, 31.752546>,  <30.022688, 34.499432, 32.172478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.807781, 35.023346, 31.752546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.206892, 35.005062, 31.771950>,  <30.446358, 34.994091, 31.783592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.206892, 35.005062, 31.771950>,  <29.807781, 35.023346, 31.752546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.206892, 35.005062, 31.771950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047074, -0.031952, -0.998380,
		0.047184, 0.998444, -0.029729,
		0.997776, -0.045708, 0.048508,
		30.506226, 34.991348, 31.786503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106693, 35.586353, 31.327696>,  <29.807781, 35.023346, 31.752546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106693, 35.586353, 31.327696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.383827, 35.300148, 31.363514>,  <30.550108, 35.128426, 31.385004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.383827, 35.300148, 31.363514>,  <30.106693, 35.586353, 31.327696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.383827, 35.300148, 31.363514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237220, 0.108893, -0.965334,
		0.680961, 0.690057, 0.245180,
		0.692834, -0.715516, 0.089543,
		30.591677, 35.085495, 31.390377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.625999, 35.765480, 30.931385>,  <30.106693, 35.586353, 31.327696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.625999, 35.765480, 30.931385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.731737, 35.383385, 30.984524>,  <30.795179, 35.154129, 31.016407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.731737, 35.383385, 30.984524>,  <30.625999, 35.765480, 30.931385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731737, 35.383385, 30.984524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201801, -0.079912, -0.976161,
		0.943079, 0.284851, 0.171643,
		0.264344, -0.955235, 0.132847,
		30.811041, 35.096813, 31.024378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.273001, 35.678326, 30.653751>,  <30.625999, 35.765480, 30.931385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.273001, 35.678326, 30.653751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.154331, 35.296551, 30.666647>,  <31.083130, 35.067486, 30.674383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.154331, 35.296551, 30.666647>,  <31.273001, 35.678326, 30.653751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.154331, 35.296551, 30.666647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183729, -0.090172, -0.978832,
		0.937138, -0.284472, 0.202109,
		-0.296675, -0.954434, 0.032238,
		31.065329, 35.010220, 30.676319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.793398, 35.380585, 30.288465>,  <31.273001, 35.678326, 30.653751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.793398, 35.380585, 30.288465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.476742, 35.136539, 30.301569>,  <31.286749, 34.990112, 30.309431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.476742, 35.136539, 30.301569>,  <31.793398, 35.380585, 30.288465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.476742, 35.136539, 30.301569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107766, -0.192207, -0.975419,
		0.601409, -0.768651, 0.217907,
		-0.791640, -0.610109, 0.032761,
		31.239250, 34.953506, 30.311398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964773, 34.796719, 29.900063>,  <31.793398, 35.380585, 30.288465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964773, 34.796719, 29.900063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.566643, 34.763683, 29.920076>,  <31.327765, 34.743862, 29.932085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.566643, 34.763683, 29.920076>,  <31.964773, 34.796719, 29.900063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566643, 34.763683, 29.920076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026524, -0.264391, -0.964051,
		0.092851, -0.960872, 0.260965,
		-0.995327, -0.082591, 0.050035,
		31.268045, 34.738907, 29.935087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750689, 34.226532, 29.512186>,  <31.964773, 34.796719, 29.900063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.750689, 34.226532, 29.512186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.440189, 34.476601, 29.544687>,  <31.253889, 34.626640, 29.564188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.440189, 34.476601, 29.544687>,  <31.750689, 34.226532, 29.512186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440189, 34.476601, 29.544687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175657, -0.090705, -0.980264,
		-0.605460, -0.775201, 0.180225,
		-0.776249, 0.625169, 0.081251,
		31.207315, 34.664150, 29.569063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.354700, 33.921356, 29.109283>,  <31.750689, 34.226532, 29.512186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.354700, 33.921356, 29.109283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.184425, 34.281769, 29.142591>,  <31.082260, 34.498016, 29.162577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.184425, 34.281769, 29.142591>,  <31.354700, 33.921356, 29.109283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.184425, 34.281769, 29.142591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249225, -0.028283, -0.968032,
		-0.869871, -0.432833, 0.236599,
		-0.425689, 0.901030, 0.083270,
		31.056719, 34.552078, 29.167572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.711334, 33.890423, 28.721178>,  <31.354700, 33.921356, 29.109283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.711334, 33.890423, 28.721178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.736916, 34.287128, 28.765553>,  <30.752264, 34.525154, 28.792177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.736916, 34.287128, 28.765553>,  <30.711334, 33.890423, 28.721178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.736916, 34.287128, 28.765553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406524, 0.127412, -0.904712,
		-0.911399, 0.012761, 0.411326,
		0.063953, 0.991768, 0.110935,
		30.756102, 34.584660, 28.798834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.009186, 34.125416, 28.538748>,  <30.711334, 33.890423, 28.721178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.009186, 34.125416, 28.538748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.246181, 34.446182, 28.508041>,  <30.388378, 34.638641, 28.489616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.246181, 34.446182, 28.508041>,  <30.009186, 34.125416, 28.538748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.246181, 34.446182, 28.508041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457741, 0.256712, -0.851218,
		-0.662896, 0.539477, 0.519167,
		0.592489, 0.801913, -0.076768,
		30.423927, 34.686756, 28.485012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.589787, 34.706932, 28.577541>,  <30.009186, 34.125416, 28.538748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.589787, 34.706932, 28.577541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.936394, 34.796005, 28.398855>,  <30.144358, 34.849449, 28.291643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.936394, 34.796005, 28.398855>,  <29.589787, 34.706932, 28.577541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.936394, 34.796005, 28.398855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497556, 0.314018, -0.808598,
		-0.039786, 0.922932, 0.382901,
		0.866519, 0.222686, -0.446717,
		30.196350, 34.862812, 28.264839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.455854, 35.324032, 28.245186>,  <29.589787, 34.706932, 28.577541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.455854, 35.324032, 28.245186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.782978, 35.178364, 28.066940>,  <29.979252, 35.090965, 27.959993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.782978, 35.178364, 28.066940>,  <29.455854, 35.324032, 28.245186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.782978, 35.178364, 28.066940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303642, 0.384718, -0.871661,
		0.488866, 0.848159, 0.204049,
		0.817809, -0.364168, -0.445612,
		30.028320, 35.069115, 27.933256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.585882, 35.812435, 27.889822>,  <29.455854, 35.324032, 28.245186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.585882, 35.812435, 27.889822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.802105, 35.531963, 27.703857>,  <29.931839, 35.363678, 27.592279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.802105, 35.531963, 27.703857>,  <29.585882, 35.812435, 27.889822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.802105, 35.531963, 27.703857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266342, 0.381556, -0.885142,
		0.798036, 0.602294, 0.019498,
		0.540556, -0.701182, -0.464912,
		29.964272, 35.321609, 27.564384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.939495, 36.110992, 27.287184>,  <29.585882, 35.812435, 27.889822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.939495, 36.110992, 27.287184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.924122, 35.716434, 27.223253>,  <29.914898, 35.479698, 27.184895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.924122, 35.716434, 27.223253>,  <29.939495, 36.110992, 27.287184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.924122, 35.716434, 27.223253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194016, 0.164267, -0.967148,
		0.980245, -0.006160, -0.197689,
		-0.038431, -0.986397, -0.159827,
		29.912592, 35.420517, 27.175304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.223433, 36.075268, 26.689783>,  <29.939495, 36.110992, 27.287184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.223433, 36.075268, 26.689783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.051079, 35.717987, 26.741203>,  <29.947666, 35.503620, 26.772055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.051079, 35.717987, 26.741203>,  <30.223433, 36.075268, 26.689783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.051079, 35.717987, 26.741203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192497, -0.048196, -0.980113,
		0.881636, -0.447063, -0.151172,
		-0.430886, -0.893203, 0.128549,
		29.921812, 35.450027, 26.779768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.445873, 35.667675, 26.158356>,  <30.223433, 36.075268, 26.689783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.445873, 35.667675, 26.158356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.111105, 35.484756, 26.278648>,  <29.910244, 35.375004, 26.350824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.111105, 35.484756, 26.278648>,  <30.445873, 35.667675, 26.158356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.111105, 35.484756, 26.278648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298385, -0.079404, -0.951137,
		0.458833, -0.885761, -0.069996,
		-0.836922, -0.457299, 0.300731,
		29.860027, 35.347569, 26.368868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.135563, 35.302956, 25.984318>,  <30.445873, 35.667675, 26.158356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.135563, 35.302956, 25.984318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.405663, 35.567524, 25.853743>,  <31.567722, 35.726265, 25.775398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.405663, 35.567524, 25.853743>,  <31.135563, 35.302956, 25.984318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405663, 35.567524, 25.853743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341704, 0.111696, 0.933147,
		0.653665, -0.741651, -0.150587,
		0.675249, 0.661421, -0.326436,
		31.608236, 35.765949, 25.755812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766077, 35.093189, 26.359858>,  <31.135563, 35.302956, 25.984318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766077, 35.093189, 26.359858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.827980, 35.473244, 26.251574>,  <31.865122, 35.701279, 26.186604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.827980, 35.473244, 26.251574>,  <31.766077, 35.093189, 26.359858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.827980, 35.473244, 26.251574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446202, 0.177255, 0.877202,
		0.881450, -0.256544, -0.396523,
		0.154755, 0.950140, -0.270712,
		31.874407, 35.758286, 26.170361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.472481, 35.243172, 26.474934>,  <31.766077, 35.093189, 26.359858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.472481, 35.243172, 26.474934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.279167, 35.593201, 26.485374>,  <32.163177, 35.803219, 26.491638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.279167, 35.593201, 26.485374>,  <32.472481, 35.243172, 26.474934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279167, 35.593201, 26.485374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507010, 0.255455, 0.823215,
		0.713706, 0.411082, -0.567129,
		-0.483285, 0.875074, 0.026102,
		32.134182, 35.855724, 26.493206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.026421, 35.783016, 26.611156>,  <32.472481, 35.243172, 26.474934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.026421, 35.783016, 26.611156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.669907, 35.941334, 26.699659>,  <32.455997, 36.036324, 26.752760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.669907, 35.941334, 26.699659>,  <33.026421, 35.783016, 26.611156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669907, 35.941334, 26.699659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400362, 0.457836, 0.793786,
		0.212876, 0.796074, -0.566524,
		-0.891288, 0.395793, 0.221255,
		32.402519, 36.060070, 26.766035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117943, 36.544334, 26.613464>,  <33.026421, 35.783016, 26.611156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117943, 36.544334, 26.613464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.822788, 36.416306, 26.851145>,  <32.645695, 36.339489, 26.993753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.822788, 36.416306, 26.851145>,  <33.117943, 36.544334, 26.613464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822788, 36.416306, 26.851145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477026, 0.375492, 0.794639,
		-0.477462, 0.869803, -0.124386,
		-0.737886, -0.320075, 0.594203,
		32.601421, 36.320282, 27.029406>
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
