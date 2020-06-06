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
	<24.295269, 35.086567, 34.628487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.251226, 34.914368, 34.986828>,  <24.224800, 34.811047, 35.201832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.251226, 34.914368, 34.986828>,  <24.295269, 35.086567, 34.628487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.251226, 34.914368, 34.986828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660178, -0.705457, -0.257866,
		0.742994, 0.563027, 0.361884,
		-0.110108, -0.430501, 0.895849,
		24.218193, 34.785217, 35.255581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.968658, 34.862278, 34.874199>,  <24.295269, 35.086567, 34.628487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.968658, 34.862278, 34.874199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.688663, 34.620228, 35.025906>,  <24.520666, 34.474998, 35.116928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.688663, 34.620228, 35.025906>,  <24.968658, 34.862278, 34.874199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.688663, 34.620228, 35.025906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527598, -0.796096, -0.296432,
		0.481310, -0.007398, 0.876519,
		-0.699986, -0.605126, 0.379266,
		24.478668, 34.438690, 35.139687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.212996, 34.385723, 35.468445>,  <24.968658, 34.862278, 34.874199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.212996, 34.385723, 35.468445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.954906, 34.251911, 35.193699>,  <24.800053, 34.171623, 35.028851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.954906, 34.251911, 35.193699>,  <25.212996, 34.385723, 35.468445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.954906, 34.251911, 35.193699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620423, -0.754064, -0.215553,
		-0.445829, -0.565224, 0.694088,
		-0.645222, -0.334529, -0.686862,
		24.761339, 34.151554, 34.987640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.218338, 33.688339, 35.465427>,  <25.212996, 34.385723, 35.468445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.218338, 33.688339, 35.465427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.165100, 33.841930, 35.099949>,  <25.133158, 33.934086, 34.880661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.165100, 33.841930, 35.099949>,  <25.218338, 33.688339, 35.465427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.165100, 33.841930, 35.099949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607399, -0.696885, -0.381337,
		-0.783168, -0.605734, -0.140475,
		-0.133094, 0.383976, -0.913700,
		25.125172, 33.957123, 34.825840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.977001, 33.167450, 35.046558>,  <25.218338, 33.688339, 35.465427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.977001, 33.167450, 35.046558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.211330, 33.449829, 34.887333>,  <25.351927, 33.619255, 34.791798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.211330, 33.449829, 34.887333>,  <24.977001, 33.167450, 35.046558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.211330, 33.449829, 34.887333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629505, -0.705708, -0.325114,
		-0.510428, -0.060122, -0.857816,
		0.585822, 0.705947, -0.398060,
		25.387077, 33.661613, 34.767914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.067484, 33.064991, 34.282543>,  <24.977001, 33.167450, 35.046558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.067484, 33.064991, 34.282543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.382740, 33.234516, 34.461079>,  <25.571894, 33.336231, 34.568199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.382740, 33.234516, 34.461079>,  <25.067484, 33.064991, 34.282543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.382740, 33.234516, 34.461079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565408, -0.785070, -0.252939,
		0.243206, 0.451714, -0.858374,
		0.788140, 0.423815, 0.446337,
		25.619183, 33.361660, 34.594978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.624393, 33.041935, 33.787125>,  <25.067484, 33.064991, 34.282543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.624393, 33.041935, 33.787125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.791815, 33.087543, 34.147526>,  <25.892267, 33.114910, 34.363766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.791815, 33.087543, 34.147526>,  <25.624393, 33.041935, 33.787125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.791815, 33.087543, 34.147526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408810, -0.909548, -0.074807,
		0.810978, 0.399651, -0.427310,
		0.418555, 0.114022, 0.901005,
		25.917381, 33.121750, 34.417828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.204098, 32.769161, 33.747334>,  <25.624393, 33.041935, 33.787125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.204098, 32.769161, 33.747334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.110390, 32.759083, 34.136070>,  <26.054165, 32.753036, 34.369312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.110390, 32.759083, 34.136070>,  <26.204098, 32.769161, 33.747334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.110390, 32.759083, 34.136070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424308, -0.902074, 0.078895,
		0.874688, 0.430844, 0.222022,
		-0.234272, -0.025197, 0.971844,
		26.040108, 32.751522, 34.427624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.767918, 32.782784, 34.138275>,  <26.204098, 32.769161, 33.747334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.767918, 32.782784, 34.138275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.489588, 32.606373, 34.365017>,  <26.322590, 32.500526, 34.501060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.489588, 32.606373, 34.365017>,  <26.767918, 32.782784, 34.138275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.489588, 32.606373, 34.365017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587080, -0.803914, 0.095185,
		0.413719, 0.399018, 0.818304,
		-0.695826, -0.441030, 0.566850,
		26.280840, 32.474064, 34.535072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.103832, 32.395588, 34.585564>,  <26.767918, 32.782784, 34.138275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.103832, 32.395588, 34.585564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.736231, 32.257198, 34.661175>,  <26.515669, 32.174164, 34.706543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.736231, 32.257198, 34.661175>,  <27.103832, 32.395588, 34.585564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.736231, 32.257198, 34.661175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385564, -0.888785, 0.247793,
		0.082275, 0.300605, 0.950193,
		-0.919006, -0.345973, 0.189027,
		26.460529, 32.153408, 34.717884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.195358, 32.125099, 35.165699>,  <27.103832, 32.395588, 34.585564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.195358, 32.125099, 35.165699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.869064, 31.950649, 35.013718>,  <26.673288, 31.845980, 34.922527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.869064, 31.950649, 35.013718>,  <27.195358, 32.125099, 35.165699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.869064, 31.950649, 35.013718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353150, -0.895761, 0.269996,
		-0.458103, 0.086064, 0.884723,
		-0.815737, -0.436126, -0.379957,
		26.624344, 31.819811, 34.899731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.826895, 31.754349, 35.659828>,  <27.195358, 32.125099, 35.165699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.826895, 31.754349, 35.659828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.768187, 31.579033, 35.305119>,  <26.732962, 31.473845, 35.092293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.768187, 31.579033, 35.305119>,  <26.826895, 31.754349, 35.659828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.768187, 31.579033, 35.305119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235483, -0.886187, 0.399024,
		-0.960732, -0.150255, 0.233275,
		-0.146770, -0.438288, -0.886771,
		26.724155, 31.447546, 35.039089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.271875, 31.215252, 35.689369>,  <26.826895, 31.754349, 35.659828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.271875, 31.215252, 35.689369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.550512, 31.116953, 35.419743>,  <26.717695, 31.057974, 35.257965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.550512, 31.116953, 35.419743>,  <26.271875, 31.215252, 35.689369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.550512, 31.116953, 35.419743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168058, -0.857483, 0.486292,
		-0.697505, -0.452030, -0.556018,
		0.696594, -0.245748, -0.674065,
		26.759491, 31.043228, 35.217522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.135914, 30.639460, 35.200233>,  <26.271875, 31.215252, 35.689369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.135914, 30.639460, 35.200233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.518351, 30.688265, 35.093651>,  <26.747812, 30.717548, 35.029701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.518351, 30.688265, 35.093651>,  <26.135914, 30.639460, 35.200233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.518351, 30.688265, 35.093651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024739, -0.939567, -0.341472,
		-0.292018, 0.319887, -0.901331,
		0.956093, 0.122014, -0.266457,
		26.805178, 30.724869, 35.013714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.260489, 30.570072, 34.417213>,  <26.135914, 30.639460, 35.200233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.260489, 30.570072, 34.417213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.550596, 30.436327, 34.657940>,  <26.724661, 30.356079, 34.802376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.550596, 30.436327, 34.657940>,  <26.260489, 30.570072, 34.417213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.550596, 30.436327, 34.657940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269145, -0.942281, -0.199165,
		0.633678, -0.017529, -0.773398,
		0.725268, -0.334363, 0.601821,
		26.768177, 30.336018, 34.838486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.071899, 31.140646, 33.963276>,  <26.260489, 30.570072, 34.417213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.071899, 31.140646, 33.963276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.222637, 31.197416, 34.329411>,  <26.313080, 31.231478, 34.549091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.222637, 31.197416, 34.329411>,  <26.071899, 31.140646, 33.963276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.222637, 31.197416, 34.329411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628725, 0.764876, 0.140250,
		-0.680215, -0.628349, 0.377472,
		0.376845, 0.141926, 0.915339,
		26.335691, 31.239994, 34.604012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.554295, 31.242783, 34.397713>,  <26.071899, 31.140646, 33.963276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.554295, 31.242783, 34.397713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.874781, 31.420710, 34.557808>,  <26.067072, 31.527466, 34.653866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.874781, 31.420710, 34.557808>,  <25.554295, 31.242783, 34.397713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.874781, 31.420710, 34.557808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528063, 0.840205, 0.123307,
		-0.281432, -0.310146, 0.908078,
		0.801215, 0.444820, 0.400238,
		26.115145, 31.554155, 34.677879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.241999, 31.634377, 34.748749>,  <25.554295, 31.242783, 34.397713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.241999, 31.634377, 34.748749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.609259, 31.792847, 34.745930>,  <25.829615, 31.887928, 34.744236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.609259, 31.792847, 34.745930>,  <25.241999, 31.634377, 34.748749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.609259, 31.792847, 34.745930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385374, 0.896976, 0.216612,
		0.092142, -0.196164, 0.976232,
		0.918149, 0.396174, -0.007052,
		25.884703, 31.911699, 34.743813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.322859, 32.136223, 35.361450>,  <25.241999, 31.634377, 34.748749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.322859, 32.136223, 35.361450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.603703, 32.241219, 35.096680>,  <25.772209, 32.304214, 34.937817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.603703, 32.241219, 35.096680>,  <25.322859, 32.136223, 35.361450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.603703, 32.241219, 35.096680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234149, 0.962989, 0.133514,
		0.672469, 0.061247, 0.737587,
		0.702111, 0.262489, -0.661922,
		25.814335, 32.319965, 34.898102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.567692, 32.645287, 35.632797>,  <25.322859, 32.136223, 35.361450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.567692, 32.645287, 35.632797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.706343, 32.677116, 35.258949>,  <25.789534, 32.696217, 35.034641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.706343, 32.677116, 35.258949>,  <25.567692, 32.645287, 35.632797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.706343, 32.677116, 35.258949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235846, 0.971779, -0.004727,
		0.907869, 0.222065, 0.355614,
		0.346628, 0.079578, -0.934621,
		25.810331, 32.700989, 34.978561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.177656, 32.545395, 35.343426>,  <25.567692, 32.645287, 35.632797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.177656, 32.545395, 35.343426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.320192, 32.725304, 35.015835>,  <26.405714, 32.833248, 34.819279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.320192, 32.725304, 35.015835>,  <26.177656, 32.545395, 35.343426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.320192, 32.725304, 35.015835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346966, 0.877542, 0.330962,
		0.867545, 0.166222, 0.468759,
		0.356342, 0.449767, -0.818980,
		26.427094, 32.860233, 34.770142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.592495, 33.156612, 35.550747>,  <26.177656, 32.545395, 35.343426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.592495, 33.156612, 35.550747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.391270, 33.175896, 35.205585>,  <26.270535, 33.187466, 34.998489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.391270, 33.175896, 35.205585>,  <26.592495, 33.156612, 35.550747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.391270, 33.175896, 35.205585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451640, 0.836600, 0.310035,
		0.736851, 0.545689, -0.399091,
		-0.503062, 0.048204, -0.862905,
		26.240351, 33.190357, 34.946712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.551086, 33.897095, 35.341591>,  <26.592495, 33.156612, 35.550747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.551086, 33.897095, 35.341591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.258795, 33.716854, 35.136459>,  <26.083420, 33.608711, 35.013382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.258795, 33.716854, 35.136459>,  <26.551086, 33.897095, 35.341591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.258795, 33.716854, 35.136459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602982, 0.778237, 0.175385,
		0.320071, 0.437384, -0.840387,
		-0.730731, -0.450603, -0.512825,
		26.039576, 33.581673, 34.982613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.442225, 34.253593, 34.625736>,  <26.551086, 33.897095, 35.341591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.442225, 34.253593, 34.625736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.102997, 34.092518, 34.763504>,  <25.899460, 33.995872, 34.846165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.102997, 34.092518, 34.763504>,  <26.442225, 34.253593, 34.625736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.102997, 34.092518, 34.763504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428533, 0.903525, 0.001192,
		-0.311675, -0.146586, -0.938814,
		-0.848067, -0.402684, 0.344423,
		25.848577, 33.971714, 34.866833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.071104, 34.592918, 34.724060>,  <26.442225, 34.253593, 34.625736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.071104, 34.592918, 34.724060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.407526, 34.722672, 34.897221>,  <27.609379, 34.800522, 35.001118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.407526, 34.722672, 34.897221>,  <27.071104, 34.592918, 34.724060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.407526, 34.722672, 34.897221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232310, 0.506121, -0.830586,
		-0.488527, 0.799136, 0.350319,
		0.841055, 0.324381, 0.432901,
		27.659843, 34.819984, 35.027092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.083916, 35.236946, 34.603851>,  <27.071104, 34.592918, 34.724060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.083916, 35.236946, 34.603851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.460249, 35.104340, 34.631939>,  <27.686049, 35.024776, 34.648792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.460249, 35.104340, 34.631939>,  <27.083916, 35.236946, 34.603851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.460249, 35.104340, 34.631939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220549, 0.441714, -0.869624,
		0.257280, 0.833657, 0.488695,
		0.940832, -0.331518, 0.070218,
		27.742498, 35.004883, 34.653004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.597784, 35.679333, 34.340363>,  <27.083916, 35.236946, 34.603851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.597784, 35.679333, 34.340363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.762573, 35.322655, 34.265354>,  <27.861446, 35.108650, 34.220348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.762573, 35.322655, 34.265354>,  <27.597784, 35.679333, 34.340363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.762573, 35.322655, 34.265354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238334, 0.304081, -0.922351,
		0.879474, 0.335293, 0.337794,
		0.411975, -0.891691, -0.187520,
		27.886166, 35.055149, 34.209099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.140076, 36.024113, 34.787922>,  <27.597784, 35.679333, 34.340363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.140076, 36.024113, 34.787922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.159603, 35.814804, 35.128227>,  <27.171320, 35.689220, 35.332413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.159603, 35.814804, 35.128227>,  <27.140076, 36.024113, 34.787922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.159603, 35.814804, 35.128227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982795, 0.177075, 0.052520,
		-0.178132, 0.833565, 0.522913,
		0.048816, -0.523272, 0.850766,
		27.174248, 35.657822, 35.383457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.639000, 36.402241, 35.192883>,  <27.140076, 36.024113, 34.787922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.639000, 36.402241, 35.192883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.628393, 36.019279, 35.307896>,  <27.622028, 35.789501, 35.376904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.628393, 36.019279, 35.307896>,  <27.639000, 36.402241, 35.192883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.628393, 36.019279, 35.307896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997976, -0.041986, -0.047764,
		0.057802, 0.285683, 0.956580,
		-0.026517, -0.957404, 0.287531,
		27.620438, 35.732059, 35.394154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078854, 36.270184, 35.851028>,  <27.639000, 36.402241, 35.192883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.078854, 36.270184, 35.851028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.029346, 35.960350, 35.602928>,  <27.999643, 35.774452, 35.454067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.029346, 35.960350, 35.602928>,  <28.078854, 36.270184, 35.851028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.029346, 35.960350, 35.602928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976542, -0.206064, 0.062475,
		-0.176203, -0.597965, 0.781915,
		-0.123766, -0.774581, -0.620247,
		27.992216, 35.727974, 35.416855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.250494, 35.613678, 36.261387>,  <28.078854, 36.270184, 35.851028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.250494, 35.613678, 36.261387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.319464, 35.608162, 35.867416>,  <28.360846, 35.604855, 35.631035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.319464, 35.608162, 35.867416>,  <28.250494, 35.613678, 36.261387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.319464, 35.608162, 35.867416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882564, -0.441882, 0.160691,
		-0.437437, -0.896967, -0.064019,
		0.172424, -0.013792, -0.984926,
		28.371191, 35.604027, 35.571938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.349348, 34.944706, 36.007164>,  <28.250494, 35.613678, 36.261387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.349348, 34.944706, 36.007164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.556723, 35.215614, 35.798347>,  <28.681147, 35.378159, 35.673058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.556723, 35.215614, 35.798347>,  <28.349348, 34.944706, 36.007164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.556723, 35.215614, 35.798347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851008, -0.468413, 0.237433,
		-0.083721, -0.567351, -0.819209,
		0.518436, 0.677275, -0.522036,
		28.712254, 35.418797, 35.641735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.771723, 34.638226, 35.441185>,  <28.349348, 34.944706, 36.007164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.771723, 34.638226, 35.441185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.937389, 34.995850, 35.509457>,  <29.036789, 35.210423, 35.550419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.937389, 34.995850, 35.509457>,  <28.771723, 34.638226, 35.441185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.937389, 34.995850, 35.509457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881368, -0.440756, 0.170074,
		0.227283, 0.079993, -0.970538,
		0.414166, 0.894056, 0.170679,
		29.061640, 35.264065, 35.560661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392939, 34.480442, 35.266464>,  <28.771723, 34.638226, 35.441185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392939, 34.480442, 35.266464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.446289, 34.833973, 35.445827>,  <29.478300, 35.046089, 35.553444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.446289, 34.833973, 35.445827>,  <29.392939, 34.480442, 35.266464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.446289, 34.833973, 35.445827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969908, -0.209394, 0.124227,
		0.203688, 0.418342, -0.885156,
		0.133377, 0.883823, 0.448405,
		29.486301, 35.099121, 35.580349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.825392, 33.815048, 35.367470>,  <29.392939, 34.480442, 35.266464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.825392, 33.815048, 35.367470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.606932, 33.824100, 35.032516>,  <29.475855, 33.829533, 34.831547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.606932, 33.824100, 35.032516>,  <29.825392, 33.815048, 35.367470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.606932, 33.824100, 35.032516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836483, 0.038852, 0.546614,
		0.044901, 0.998989, -0.002292,
		-0.546151, 0.022626, -0.837381,
		29.443087, 33.830887, 34.781303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303717, 34.172737, 35.691822>,  <29.825392, 33.815048, 35.367470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303717, 34.172737, 35.691822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.482727, 34.355694, 35.999199>,  <30.590134, 34.465469, 36.183624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.482727, 34.355694, 35.999199>,  <30.303717, 34.172737, 35.691822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.482727, 34.355694, 35.999199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719450, 0.694522, 0.005600,
		-0.531141, -0.555364, 0.639890,
		0.447528, 0.457395, 0.768446,
		30.616985, 34.492912, 36.229733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957499, 34.329399, 36.256134>,  <30.303717, 34.172737, 35.691822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.957499, 34.329399, 36.256134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.219412, 34.621372, 36.177692>,  <30.376560, 34.796555, 36.130627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.219412, 34.621372, 36.177692>,  <29.957499, 34.329399, 36.256134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.219412, 34.621372, 36.177692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755204, 0.642301, -0.130829,
		0.030463, 0.233765, 0.971816,
		0.654781, 0.729934, -0.196106,
		30.415846, 34.840351, 36.118862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.741240, 34.927788, 36.643940>,  <29.957499, 34.329399, 36.256134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.741240, 34.927788, 36.643940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942642, 35.073090, 36.330372>,  <30.063484, 35.160271, 36.142231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942642, 35.073090, 36.330372>,  <29.741240, 34.927788, 36.643940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.942642, 35.073090, 36.330372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671001, 0.735981, -0.089942,
		0.544277, 0.571297, 0.614315,
		0.503507, 0.363253, -0.783918,
		30.093695, 35.182064, 36.095196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.772875, 35.592010, 36.668629>,  <29.741240, 34.927788, 36.643940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.772875, 35.592010, 36.668629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.829731, 35.537319, 36.276485>,  <29.863844, 35.504505, 36.041199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.829731, 35.537319, 36.276485>,  <29.772875, 35.592010, 36.668629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.829731, 35.537319, 36.276485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884732, 0.426604, -0.187770,
		0.443898, 0.894044, -0.060328,
		0.142139, -0.136725, -0.980359,
		29.872374, 35.496304, 35.982376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.572243, 36.181385, 36.321274>,  <29.772875, 35.592010, 36.668629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.572243, 36.181385, 36.321274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.544144, 35.876690, 36.063648>,  <29.527285, 35.693874, 35.909073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.544144, 35.876690, 36.063648>,  <29.572243, 36.181385, 36.321274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.544144, 35.876690, 36.063648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822244, 0.409778, -0.394963,
		0.564783, 0.501836, -0.655119,
		-0.070246, -0.761736, -0.644068,
		29.523069, 35.648170, 35.870426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.531395, 36.473213, 35.638374>,  <29.572243, 36.181385, 36.321274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.531395, 36.473213, 35.638374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.405891, 36.096115, 35.593147>,  <29.330589, 35.869854, 35.566010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.405891, 36.096115, 35.593147>,  <29.531395, 36.473213, 35.638374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.405891, 36.096115, 35.593147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775943, 0.323213, -0.541706,
		0.547238, -0.082228, -0.832928,
		-0.313757, -0.942747, -0.113070,
		29.311764, 35.813290, 35.559227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.372486, 36.356621, 34.894562>,  <29.531395, 36.473213, 35.638374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.372486, 36.356621, 34.894562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.173561, 36.086391, 35.112289>,  <29.054207, 35.924252, 35.242924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.173561, 36.086391, 35.112289>,  <29.372486, 36.356621, 34.894562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.173561, 36.086391, 35.112289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834838, 0.201927, -0.512124,
		0.236071, -0.709094, -0.664422,
		-0.497309, -0.675582, 0.544310,
		29.024368, 35.883717, 35.275585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.873566, 36.011372, 34.508099>,  <29.372486, 36.356621, 34.894562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.873566, 36.011372, 34.508099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.744600, 35.958046, 34.882965>,  <28.667221, 35.926048, 35.107883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.744600, 35.958046, 34.882965>,  <28.873566, 36.011372, 34.508099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.744600, 35.958046, 34.882965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896275, 0.361500, -0.256922,
		-0.304532, -0.922792, -0.236042,
		-0.322415, -0.133317, 0.937164,
		28.647877, 35.918053, 35.164116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.316292, 35.337257, 34.769321>,  <28.873566, 36.011372, 34.508099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.316292, 35.337257, 34.769321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.496105, 35.547001, 35.058590>,  <29.603992, 35.672848, 35.232151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.496105, 35.547001, 35.058590>,  <29.316292, 35.337257, 34.769321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.496105, 35.547001, 35.058590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662286, -0.738906, 0.124078,
		0.599414, 0.423166, -0.679436,
		0.449534, 0.524354, 0.723168,
		29.630966, 35.704308, 35.275539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.118004, 35.336899, 34.707462>,  <29.316292, 35.337257, 34.769321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.118004, 35.336899, 34.707462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.051018, 35.378513, 35.099613>,  <30.010826, 35.403481, 35.334904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.051018, 35.378513, 35.099613>,  <30.118004, 35.336899, 34.707462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.051018, 35.378513, 35.099613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733311, -0.651510, 0.194398,
		0.658947, 0.751473, 0.032816,
		-0.167465, 0.104034, 0.980374,
		30.000778, 35.409725, 35.393726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.763519, 35.579155, 35.009361>,  <30.118004, 35.336899, 34.707462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.763519, 35.579155, 35.009361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.543659, 35.441734, 35.313953>,  <30.411743, 35.359280, 35.496708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.543659, 35.441734, 35.313953>,  <30.763519, 35.579155, 35.009361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.543659, 35.441734, 35.313953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746374, -0.611400, 0.262899,
		0.375251, 0.712853, 0.592475,
		-0.549648, -0.343555, 0.761483,
		30.378765, 35.338669, 35.542397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173803, 35.593121, 35.554153>,  <30.763519, 35.579155, 35.009361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.173803, 35.593121, 35.554153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.890841, 35.314831, 35.604031>,  <30.721064, 35.147858, 35.633957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.890841, 35.314831, 35.604031>,  <31.173803, 35.593121, 35.554153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890841, 35.314831, 35.604031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700210, -0.665761, 0.257816,
		-0.096353, 0.269692, 0.958114,
		-0.707405, -0.695722, 0.124693,
		30.678619, 35.106113, 35.641438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340029, 35.296844, 36.257984>,  <31.173803, 35.593121, 35.554153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340029, 35.296844, 36.257984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126902, 35.022854, 36.059223>,  <30.999025, 34.858459, 35.939968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126902, 35.022854, 36.059223>,  <31.340029, 35.296844, 36.257984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.126902, 35.022854, 36.059223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612190, -0.717404, 0.332498,
		-0.584232, -0.127036, 0.801583,
		-0.532819, -0.684977, -0.496901,
		30.967056, 34.817360, 35.910152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.908403, 35.262131, 35.715115>,  <31.340029, 35.296844, 36.257984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.908403, 35.262131, 35.715115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302498, 35.226883, 35.773830>,  <32.538956, 35.205734, 35.809059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302498, 35.226883, 35.773830>,  <31.908403, 35.262131, 35.715115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302498, 35.226883, 35.773830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078690, 0.528354, 0.845370,
		-0.152050, -0.844439, 0.513618,
		0.985235, -0.088122, 0.146785,
		32.598068, 35.200447, 35.817867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077332, 35.000175, 36.445618>,  <31.908403, 35.262131, 35.715115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077332, 35.000175, 36.445618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361095, 35.242912, 36.302242>,  <32.531353, 35.388554, 36.216217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361095, 35.242912, 36.302242>,  <32.077332, 35.000175, 36.445618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361095, 35.242912, 36.302242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027875, 0.484018, 0.874614,
		0.704242, -0.630453, 0.326453,
		0.709413, 0.606840, -0.358440,
		32.573917, 35.424965, 36.194710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641426, 34.967876, 36.893394>,  <32.077332, 35.000175, 36.445618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641426, 34.967876, 36.893394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613598, 35.322357, 36.710175>,  <32.596901, 35.535046, 36.600243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613598, 35.322357, 36.710175>,  <32.641426, 34.967876, 36.893394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613598, 35.322357, 36.710175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056428, 0.454928, 0.888739,
		0.995980, 0.087676, 0.018358,
		-0.069570, 0.886202, -0.458046,
		32.592728, 35.588219, 36.572762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156429, 35.401196, 37.263195>,  <32.641426, 34.967876, 36.893394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156429, 35.401196, 37.263195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916271, 35.661285, 37.076977>,  <32.772175, 35.817337, 36.965244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916271, 35.661285, 37.076977>,  <33.156429, 35.401196, 37.263195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916271, 35.661285, 37.076977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123592, 0.650602, 0.749294,
		0.790094, 0.392337, -0.470982,
		-0.600397, 0.650222, -0.465547,
		32.736153, 35.856354, 36.937313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455547, 36.027386, 37.379059>,  <33.156429, 35.401196, 37.263195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455547, 36.027386, 37.379059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.094730, 36.144485, 37.252182>,  <32.878239, 36.214745, 37.176056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.094730, 36.144485, 37.252182>,  <33.455547, 36.027386, 37.379059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094730, 36.144485, 37.252182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026866, 0.695350, 0.718169,
		0.430808, 0.656342, -0.619371,
		-0.902044, 0.292753, -0.317195,
		32.824116, 36.232311, 37.157024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412334, 36.846321, 37.102398>,  <33.455547, 36.027386, 37.379059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412334, 36.846321, 37.102398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058620, 36.721020, 37.240917>,  <32.846394, 36.645840, 37.324028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058620, 36.721020, 37.240917>,  <33.412334, 36.846321, 37.102398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058620, 36.721020, 37.240917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068092, 0.647172, 0.759297,
		-0.461964, 0.695012, -0.550952,
		-0.884281, -0.313252, 0.346295,
		32.793335, 36.627045, 37.344807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043602, 37.428455, 37.367157>,  <33.412334, 36.846321, 37.102398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043602, 37.428455, 37.367157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.886600, 37.106140, 37.544537>,  <32.792400, 36.912750, 37.650963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.886600, 37.106140, 37.544537>,  <33.043602, 37.428455, 37.367157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886600, 37.106140, 37.544537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064490, 0.456842, 0.887207,
		-0.917488, 0.376828, -0.127346,
		-0.392501, -0.805789, 0.443449,
		32.768848, 36.864403, 37.677570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636677, 37.831711, 37.844593>,  <33.043602, 37.428455, 37.367157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636677, 37.831711, 37.844593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704357, 37.453083, 37.954411>,  <32.744965, 37.225906, 38.020302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704357, 37.453083, 37.954411>,  <32.636677, 37.831711, 37.844593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704357, 37.453083, 37.954411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062757, 0.267645, 0.961472,
		-0.983582, -0.179908, -0.014120,
		0.169198, -0.946572, 0.274541,
		32.755116, 37.169113, 38.036774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160263, 37.661228, 38.382038>,  <32.636677, 37.831711, 37.844593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160263, 37.661228, 38.382038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815868, 37.564861, 38.561218>,  <32.609230, 37.507042, 38.668728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815868, 37.564861, 38.561218>,  <33.160263, 37.661228, 38.382038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815868, 37.564861, 38.561218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233868, -0.594570, -0.769280,
		0.451670, -0.767102, 0.455575,
		-0.860988, -0.240916, 0.447950,
		32.557571, 37.492588, 38.695602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.044468, 36.917557, 38.629704>,  <33.160263, 37.661228, 38.382038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.044468, 36.917557, 38.629704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701920, 37.095768, 38.525299>,  <32.496391, 37.202694, 38.462658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701920, 37.095768, 38.525299>,  <33.044468, 36.917557, 38.629704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701920, 37.095768, 38.525299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015515, -0.483051, -0.875454,
		-0.516124, -0.753766, 0.406760,
		-0.856373, 0.445532, -0.261009,
		32.445007, 37.229427, 38.446999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410881, 36.398506, 38.544506>,  <33.044468, 36.917557, 38.629704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410881, 36.398506, 38.544506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370415, 36.708973, 38.295563>,  <32.346134, 36.895252, 38.146198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370415, 36.708973, 38.295563>,  <32.410881, 36.398506, 38.544506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370415, 36.708973, 38.295563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136503, -0.608821, -0.781476,
		-0.985460, -0.164014, -0.044356,
		-0.101168, 0.776168, -0.622357,
		32.340065, 36.941822, 38.108856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767815, 36.289494, 38.130482>,  <32.410881, 36.398506, 38.544506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767815, 36.289494, 38.130482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.067818, 36.507740, 37.980927>,  <32.247818, 36.638687, 37.891193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.067818, 36.507740, 37.980927>,  <31.767815, 36.289494, 38.130482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067818, 36.507740, 37.980927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049698, -0.517189, -0.854427,
		-0.659560, 0.659407, -0.360780,
		0.750007, 0.545616, -0.373888,
		32.292820, 36.671425, 37.868759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.553495, 36.676498, 37.496475>,  <31.767815, 36.289494, 38.130482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.553495, 36.676498, 37.496475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.944576, 36.592728, 37.490299>,  <32.179226, 36.542465, 37.486591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.944576, 36.592728, 37.490299>,  <31.553495, 36.676498, 37.496475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.944576, 36.592728, 37.490299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078999, -0.298679, -0.951078,
		0.194570, 0.931091, -0.308564,
		0.977702, -0.209427, -0.015442,
		32.237888, 36.529900, 37.485668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577187, 36.419952, 36.912434>,  <31.553495, 36.676498, 37.496475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577187, 36.419952, 36.912434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.964216, 36.366947, 36.998447>,  <32.196434, 36.335144, 37.050056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.964216, 36.366947, 36.998447>,  <31.577187, 36.419952, 36.912434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.964216, 36.366947, 36.998447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142013, -0.418641, -0.896979,
		0.208888, 0.898432, -0.386247,
		0.967573, -0.132516, 0.215038,
		32.254490, 36.327190, 37.062958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963093, 36.673157, 36.294296>,  <31.577187, 36.419952, 36.912434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963093, 36.673157, 36.294296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223183, 36.427677, 36.473442>,  <32.379238, 36.280392, 36.580929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223183, 36.427677, 36.473442>,  <31.963093, 36.673157, 36.294296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.223183, 36.427677, 36.473442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285738, -0.348681, -0.892623,
		0.703961, 0.708379, -0.051365,
		0.650225, -0.613695, 0.447869,
		32.418251, 36.243568, 36.607803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664875, 36.769501, 36.051788>,  <31.963093, 36.673157, 36.294296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.664875, 36.769501, 36.051788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606384, 36.397240, 36.185951>,  <32.571289, 36.173882, 36.266449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606384, 36.397240, 36.185951>,  <32.664875, 36.769501, 36.051788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606384, 36.397240, 36.185951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243221, -0.362466, -0.899701,
		0.958885, -0.049984, 0.279358,
		-0.146228, -0.930656, 0.335406,
		32.562515, 36.118042, 36.286572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215858, 36.506702, 35.749947>,  <32.664875, 36.769501, 36.051788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215858, 36.506702, 35.749947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017410, 36.167683, 35.825344>,  <32.898342, 35.964272, 35.870583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017410, 36.167683, 35.825344>,  <33.215858, 36.506702, 35.749947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017410, 36.167683, 35.825344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147469, -0.296198, -0.943674,
		0.855640, -0.440376, 0.271936,
		-0.496118, -0.847547, 0.188497,
		32.868576, 35.913418, 35.881893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601490, 35.800774, 35.606544>,  <33.215858, 36.506702, 35.749947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601490, 35.800774, 35.606544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206425, 35.775635, 35.549168>,  <32.969387, 35.760551, 35.514740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206425, 35.775635, 35.549168>,  <33.601490, 35.800774, 35.606544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206425, 35.775635, 35.549168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152136, -0.167637, -0.974039,
		0.037168, -0.983844, 0.175130,
		-0.987661, -0.062847, -0.143447,
		32.910126, 35.756783, 35.506134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.507812, 35.250019, 35.217552>,  <33.601490, 35.800774, 35.606544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.507812, 35.250019, 35.217552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158306, 35.442501, 35.189327>,  <32.948605, 35.557991, 35.172394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158306, 35.442501, 35.189327>,  <33.507812, 35.250019, 35.217552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158306, 35.442501, 35.189327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094428, -0.310168, -0.945980,
		-0.477100, -0.819898, 0.316452,
		-0.873761, 0.481209, -0.070560,
		32.896179, 35.586864, 35.168159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009464, 34.841320, 34.934250>,  <33.507812, 35.250019, 35.217552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009464, 34.841320, 34.934250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997002, 35.224651, 34.820663>,  <32.989525, 35.454651, 34.752514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997002, 35.224651, 34.820663>,  <33.009464, 34.841320, 34.934250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997002, 35.224651, 34.820663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203712, -0.272048, -0.940474,
		-0.978535, -0.087148, -0.186747,
		-0.031156, 0.958329, -0.283962,
		32.987656, 35.512150, 34.735474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536774, 34.885052, 34.353363>,  <33.009464, 34.841320, 34.934250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536774, 34.885052, 34.353363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.814281, 35.173119, 34.350826>,  <32.980785, 35.345959, 34.349304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.814281, 35.173119, 34.350826>,  <32.536774, 34.885052, 34.353363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814281, 35.173119, 34.350826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349278, -0.344153, -0.871530,
		-0.629831, 0.602426, -0.490302,
		0.693771, 0.720168, -0.006344,
		33.022411, 35.389168, 34.348923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463242, 35.169979, 33.662052>,  <32.536774, 34.885052, 34.353363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463242, 35.169979, 33.662052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832802, 35.262886, 33.783680>,  <33.054539, 35.318630, 33.856659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832802, 35.262886, 33.783680>,  <32.463242, 35.169979, 33.662052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832802, 35.262886, 33.783680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372959, -0.369086, -0.851280,
		-0.085494, 0.899904, -0.427624,
		0.923901, 0.232266, 0.304073,
		33.109970, 35.332565, 33.874901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803955, 35.566677, 33.094521>,  <32.463242, 35.169979, 33.662052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803955, 35.566677, 33.094521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097458, 35.432705, 33.330971>,  <33.273560, 35.352322, 33.472839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097458, 35.432705, 33.330971>,  <32.803955, 35.566677, 33.094521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097458, 35.432705, 33.330971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439857, -0.428932, -0.789014,
		0.517816, 0.838952, -0.167410,
		0.733752, -0.334928, 0.591127,
		33.317585, 35.332226, 33.508308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360161, 35.815502, 32.692322>,  <32.803955, 35.566677, 33.094521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360161, 35.815502, 32.692322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514694, 35.548550, 32.946991>,  <33.607414, 35.388378, 33.099792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514694, 35.548550, 32.946991>,  <33.360161, 35.815502, 32.692322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514694, 35.548550, 32.946991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582673, -0.358506, -0.729360,
		0.715009, 0.652749, 0.250359,
		0.386334, -0.667377, 0.636675,
		33.630596, 35.348335, 33.137993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053139, 35.842464, 32.650890>,  <33.360161, 35.815502, 32.692322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053139, 35.842464, 32.650890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992954, 35.477661, 32.803524>,  <33.956844, 35.258781, 32.895103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992954, 35.477661, 32.803524>,  <34.053139, 35.842464, 32.650890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992954, 35.477661, 32.803524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506849, -0.402557, -0.762267,
		0.848802, 0.078716, 0.522818,
		-0.150462, -0.912004, 0.381589,
		33.947815, 35.204060, 32.917999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727806, 35.551056, 32.637989>,  <34.053139, 35.842464, 32.650890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727806, 35.551056, 32.637989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492115, 35.235157, 32.706242>,  <34.350700, 35.045620, 32.747192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492115, 35.235157, 32.706242>,  <34.727806, 35.551056, 32.637989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492115, 35.235157, 32.706242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620456, -0.577551, -0.530537,
		0.517535, -0.206741, 0.830311,
		-0.589230, -0.789743, 0.170629,
		34.315346, 34.998234, 32.757431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232368, 35.003662, 32.815289>,  <34.727806, 35.551056, 32.637989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232368, 35.003662, 32.815289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883564, 34.847404, 32.697308>,  <34.674282, 34.753651, 32.626518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883564, 34.847404, 32.697308>,  <35.232368, 35.003662, 32.815289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883564, 34.847404, 32.697308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473358, -0.519560, -0.711329,
		0.124628, -0.759906, 0.637975,
		-0.872009, -0.390642, -0.294956,
		34.621960, 34.730213, 32.608822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292847, 34.351707, 32.831314>,  <35.232368, 35.003662, 32.815289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292847, 34.351707, 32.831314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004868, 34.384010, 32.555588>,  <34.832081, 34.403393, 32.390152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004868, 34.384010, 32.555588>,  <35.292847, 34.351707, 32.831314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004868, 34.384010, 32.555588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623842, -0.359938, -0.693733,
		-0.304134, -0.929475, 0.208757,
		-0.719947, 0.080756, -0.689315,
		34.788883, 34.408237, 32.348793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185646, 33.640423, 32.561749>,  <35.292847, 34.351707, 32.831314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185646, 33.640423, 32.561749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031689, 33.900524, 32.299747>,  <34.939312, 34.056583, 32.142548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031689, 33.900524, 32.299747>,  <35.185646, 33.640423, 32.561749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031689, 33.900524, 32.299747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480605, -0.464663, -0.743712,
		-0.787956, -0.601047, -0.133669,
		-0.384895, 0.650254, -0.655000,
		34.916222, 34.095600, 32.103249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037533, 33.309151, 32.003056>,  <35.185646, 33.640423, 32.561749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037533, 33.309151, 32.003056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037277, 33.667084, 31.824492>,  <35.037125, 33.881844, 31.717354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037277, 33.667084, 31.824492>,  <35.037533, 33.309151, 32.003056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037277, 33.667084, 31.824492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587321, -0.360965, -0.724402,
		-0.809354, -0.262645, -0.525323,
		-0.000637, 0.894831, -0.446406,
		35.037086, 33.935532, 31.690569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117878, 33.149162, 31.210035>,  <35.037533, 33.309151, 32.003056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117878, 33.149162, 31.210035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187805, 33.542995, 31.212154>,  <35.229763, 33.779297, 31.213427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187805, 33.542995, 31.212154>,  <35.117878, 33.149162, 31.210035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187805, 33.542995, 31.212154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374938, -0.061596, -0.925001,
		-0.910417, 0.163698, -0.379927,
		0.174823, 0.984586, 0.005299,
		35.240253, 33.838371, 31.213743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896461, 33.463554, 30.512707>,  <35.117878, 33.149162, 31.210035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896461, 33.463554, 30.512707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161156, 33.725430, 30.658854>,  <35.319973, 33.882553, 30.746542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161156, 33.725430, 30.658854>,  <34.896461, 33.463554, 30.512707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161156, 33.725430, 30.658854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345735, 0.165951, -0.923541,
		-0.665264, 0.737458, -0.116534,
		0.661733, 0.654688, 0.365366,
		35.359676, 33.921837, 30.768463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992168, 33.958843, 29.957308>,  <34.896461, 33.463554, 30.512707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992168, 33.958843, 29.957308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.314152, 34.033058, 30.182739>,  <35.507339, 34.077587, 30.317999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.314152, 34.033058, 30.182739>,  <34.992168, 33.958843, 29.957308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314152, 34.033058, 30.182739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535046, 0.183569, -0.824638,
		-0.256459, 0.965338, 0.048493,
		0.804956, 0.185540, 0.563579,
		35.555637, 34.088718, 30.351812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241520, 34.581532, 29.729057>,  <34.992168, 33.958843, 29.957308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241520, 34.581532, 29.729057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546227, 34.396130, 29.910105>,  <35.729050, 34.284889, 30.018734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546227, 34.396130, 29.910105>,  <35.241520, 34.581532, 29.729057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546227, 34.396130, 29.910105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604910, 0.258780, -0.753072,
		0.231927, 0.847462, 0.477512,
		0.761770, -0.463509, 0.452620,
		35.774757, 34.257076, 30.045891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768555, 35.084682, 29.727095>,  <35.241520, 34.581532, 29.729057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768555, 35.084682, 29.727095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903057, 34.708073, 29.718493>,  <35.983757, 34.482105, 29.713331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903057, 34.708073, 29.718493>,  <35.768555, 35.084682, 29.727095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903057, 34.708073, 29.718493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398247, 0.162846, -0.902707,
		0.853424, 0.294974, 0.429717,
		0.336253, -0.941526, -0.021504,
		36.003933, 34.425613, 29.712042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369442, 35.130119, 29.290976>,  <35.768555, 35.084682, 29.727095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369442, 35.130119, 29.290976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321785, 34.734348, 29.324051>,  <36.293190, 34.496887, 29.343895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321785, 34.734348, 29.324051>,  <36.369442, 35.130119, 29.290976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321785, 34.734348, 29.324051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414280, -0.125223, -0.901494,
		0.902317, -0.073151, 0.424820,
		-0.119142, -0.989428, 0.082686,
		36.286041, 34.437519, 29.348856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020039, 34.801693, 29.133320>,  <36.369442, 35.130119, 29.290976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020039, 34.801693, 29.133320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.725632, 34.538212, 29.070854>,  <36.548988, 34.380123, 29.033375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.725632, 34.538212, 29.070854>,  <37.020039, 34.801693, 29.133320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725632, 34.538212, 29.070854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372208, -0.201079, -0.906106,
		0.565453, -0.725037, 0.393172,
		-0.736019, -0.658702, -0.156164,
		36.504826, 34.340603, 29.024004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308208, 34.301067, 28.688534>,  <37.020039, 34.801693, 29.133320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308208, 34.301067, 28.688534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924805, 34.209221, 28.620966>,  <36.694763, 34.154114, 28.580425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924805, 34.209221, 28.620966>,  <37.308208, 34.301067, 28.688534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924805, 34.209221, 28.620966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202048, -0.129248, -0.970810,
		0.201086, -0.964660, 0.170279,
		-0.958510, -0.229621, -0.168917,
		36.637253, 34.140335, 28.570292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362110, 33.784668, 28.338743>,  <37.308208, 34.301067, 28.688534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362110, 33.784668, 28.338743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984997, 33.896893, 28.266689>,  <36.758728, 33.964226, 28.223457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984997, 33.896893, 28.266689>,  <37.362110, 33.784668, 28.338743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984997, 33.896893, 28.266689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128721, -0.192108, -0.972895,
		-0.307565, -0.940414, 0.145001,
		-0.942780, 0.280564, -0.180137,
		36.702164, 33.981060, 28.212648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032856, 33.413353, 27.976871>,  <37.362110, 33.784668, 28.338743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032856, 33.413353, 27.976871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.773746, 33.704674, 27.887465>,  <36.618279, 33.879467, 27.833820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.773746, 33.704674, 27.887465>,  <37.032856, 33.413353, 27.976871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773746, 33.704674, 27.887465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109033, -0.201742, -0.973351,
		-0.753986, -0.654886, 0.051275,
		-0.647778, 0.728303, -0.223515,
		36.579414, 33.923164, 27.820410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731564, 33.198853, 27.387682>,  <37.032856, 33.413353, 27.976871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731564, 33.198853, 27.387682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595406, 33.574608, 27.371294>,  <36.513710, 33.800060, 27.361462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595406, 33.574608, 27.371294>,  <36.731564, 33.198853, 27.387682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595406, 33.574608, 27.371294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029008, -0.054041, -0.998117,
		-0.939834, -0.338568, 0.045645,
		-0.340397, 0.939389, -0.040968,
		36.493286, 33.856426, 27.359003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095654, 33.264210, 26.923840>,  <36.731564, 33.198853, 27.387682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095654, 33.264210, 26.923840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294662, 33.611050, 26.933735>,  <36.414066, 33.819153, 26.939672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294662, 33.611050, 26.933735>,  <36.095654, 33.264210, 26.923840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294662, 33.611050, 26.933735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233566, -0.106443, -0.966497,
		-0.835415, 0.486632, -0.255483,
		0.497523, 0.867098, 0.024737,
		36.443920, 33.871178, 26.941156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857445, 33.526566, 26.325205>,  <36.095654, 33.264210, 26.923840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857445, 33.526566, 26.325205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163464, 33.760330, 26.433397>,  <36.347076, 33.900589, 26.498312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163464, 33.760330, 26.433397>,  <35.857445, 33.526566, 26.325205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163464, 33.760330, 26.433397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169861, 0.222008, -0.960135,
		-0.621167, 0.780494, 0.070578,
		0.765049, 0.584416, 0.270479,
		36.392979, 33.935654, 26.514542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872017, 34.080875, 25.807760>,  <35.857445, 33.526566, 26.325205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872017, 34.080875, 25.807760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225216, 34.080826, 25.995514>,  <36.437134, 34.080795, 26.108166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225216, 34.080826, 25.995514>,  <35.872017, 34.080875, 25.807760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225216, 34.080826, 25.995514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449449, 0.288563, -0.845415,
		-0.135343, 0.957461, 0.254855,
		0.882994, -0.000124, 0.469385,
		36.490112, 34.080788, 26.136330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268330, 34.787170, 25.731518>,  <35.872017, 34.080875, 25.807760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268330, 34.787170, 25.731518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538986, 34.501678, 25.803905>,  <36.701382, 34.330383, 25.847338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538986, 34.501678, 25.803905>,  <36.268330, 34.787170, 25.731518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538986, 34.501678, 25.803905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625968, 0.428183, -0.651785,
		0.387709, 0.554306, 0.736497,
		0.676643, -0.713726, 0.180967,
		36.741978, 34.287560, 25.858196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862225, 35.152359, 25.843355>,  <36.268330, 34.787170, 25.731518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862225, 35.152359, 25.843355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970882, 34.780495, 25.743801>,  <37.036076, 34.557377, 25.684069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970882, 34.780495, 25.743801>,  <36.862225, 35.152359, 25.843355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970882, 34.780495, 25.743801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592898, 0.365365, -0.717621,
		0.758077, 0.047374, 0.650442,
		0.271645, -0.929658, -0.248887,
		37.052376, 34.501598, 25.669136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582642, 35.176632, 25.882212>,  <36.862225, 35.152359, 25.843355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582642, 35.176632, 25.882212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497875, 34.872993, 25.636003>,  <37.447014, 34.690811, 25.488279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497875, 34.872993, 25.636003>,  <37.582642, 35.176632, 25.882212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497875, 34.872993, 25.636003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550777, 0.427509, -0.716855,
		0.807302, -0.490927, 0.327496,
		-0.211916, -0.759096, -0.615520,
		37.434299, 34.645264, 25.451347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151272, 34.853882, 25.644249>,  <37.582642, 35.176632, 25.882212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151272, 34.853882, 25.644249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869186, 34.820190, 25.362661>,  <37.699936, 34.799976, 25.193708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869186, 34.820190, 25.362661>,  <38.151272, 34.853882, 25.644249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869186, 34.820190, 25.362661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628249, 0.385940, -0.675539,
		0.328590, -0.918671, -0.219255,
		-0.705217, -0.084228, -0.703970,
		37.657619, 34.794922, 25.151470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567440, 34.781342, 25.085815>,  <38.151272, 34.853882, 25.644249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567440, 34.781342, 25.085815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222160, 34.880764, 24.910044>,  <38.014992, 34.940418, 24.804581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222160, 34.880764, 24.910044>,  <38.567440, 34.781342, 25.085815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222160, 34.880764, 24.910044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497485, 0.270575, -0.824195,
		-0.085963, -0.930057, -0.357216,
		-0.863203, 0.248560, -0.439430,
		37.963200, 34.955334, 24.778215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651276, 34.490551, 24.393917>,  <38.567440, 34.781342, 25.085815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651276, 34.490551, 24.393917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375793, 34.780495, 24.400356>,  <38.210503, 34.954460, 24.404221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375793, 34.780495, 24.400356>,  <38.651276, 34.490551, 24.393917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375793, 34.780495, 24.400356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368229, 0.368815, -0.853453,
		-0.624573, -0.581851, -0.520920,
		-0.688706, 0.724862, 0.016098,
		38.169182, 34.997952, 24.405186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213055, 34.389145, 23.809635>,  <38.651276, 34.490551, 24.393917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213055, 34.389145, 23.809635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179108, 34.770714, 23.924751>,  <38.158741, 34.999657, 23.993822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179108, 34.770714, 23.924751>,  <38.213055, 34.389145, 23.809635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179108, 34.770714, 23.924751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352354, 0.298903, -0.886850,
		-0.932011, 0.026143, -0.361486,
		-0.084864, 0.953925, 0.287792,
		38.153648, 35.056892, 24.011089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822647, 34.809280, 23.212774>,  <38.213055, 34.389145, 23.809635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822647, 34.809280, 23.212774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.014595, 35.074730, 23.442322>,  <38.129765, 35.234001, 23.580051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.014595, 35.074730, 23.442322>,  <37.822647, 34.809280, 23.212774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014595, 35.074730, 23.442322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395918, 0.419913, -0.816653,
		-0.782927, 0.619092, -0.061238,
		0.479869, 0.663625, 0.573871,
		38.158554, 35.273819, 23.614483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713661, 35.495434, 22.885052>,  <37.822647, 34.809280, 23.212774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713661, 35.495434, 22.885052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033329, 35.536503, 23.121962>,  <38.225128, 35.561142, 23.264109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033329, 35.536503, 23.121962>,  <37.713661, 35.495434, 22.885052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033329, 35.536503, 23.121962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499376, 0.435059, -0.749231,
		-0.334597, 0.894530, 0.296414,
		0.799167, 0.102668, 0.592276,
		38.273079, 35.567303, 23.299644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953716, 36.089321, 22.788702>,  <37.713661, 35.495434, 22.885052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953716, 36.089321, 22.788702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287254, 35.902050, 22.905666>,  <38.487377, 35.789688, 22.975845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287254, 35.902050, 22.905666>,  <37.953716, 36.089321, 22.788702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287254, 35.902050, 22.905666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503914, 0.429404, -0.749455,
		0.225320, 0.772281, 0.593981,
		0.833848, -0.468182, 0.292410,
		38.537407, 35.761597, 22.993389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472630, 36.561512, 22.770660>,  <37.953716, 36.089321, 22.788702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472630, 36.561512, 22.770660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.680798, 36.220638, 22.748926>,  <38.805698, 36.016113, 22.735886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.680798, 36.220638, 22.748926>,  <38.472630, 36.561512, 22.770660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680798, 36.220638, 22.748926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626744, 0.424416, -0.653500,
		0.579961, 0.306040, 0.754973,
		0.520420, -0.852180, -0.054336,
		38.836922, 35.964985, 22.732626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160057, 36.801575, 22.813290>,  <38.472630, 36.561512, 22.770660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160057, 36.801575, 22.813290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.252972, 36.438995, 22.672211>,  <39.308720, 36.221447, 22.587563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.252972, 36.438995, 22.672211>,  <39.160057, 36.801575, 22.813290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252972, 36.438995, 22.672211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522089, 0.422149, -0.741090,
		0.820649, -0.011992, 0.571306,
		0.232289, -0.906447, -0.352697,
		39.322659, 36.167061, 22.566402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876766, 36.834934, 22.589958>,  <39.160057, 36.801575, 22.813290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876766, 36.834934, 22.589958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754421, 36.519520, 22.376545>,  <39.681015, 36.330273, 22.248497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754421, 36.519520, 22.376545>,  <39.876766, 36.834934, 22.589958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754421, 36.519520, 22.376545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541831, 0.316616, -0.778571,
		0.782857, -0.527223, 0.330412,
		-0.305867, -0.788537, -0.533531,
		39.662663, 36.282959, 22.216486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381344, 36.708782, 22.201256>,  <39.876766, 36.834934, 22.589958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381344, 36.708782, 22.201256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.068699, 36.539795, 22.017693>,  <39.881111, 36.438400, 21.907555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.068699, 36.539795, 22.017693>,  <40.381344, 36.708782, 22.201256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068699, 36.539795, 22.017693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343749, 0.322173, -0.882067,
		0.520497, -0.847185, -0.106590,
		-0.781613, -0.422472, -0.458908,
		39.834213, 36.413052, 21.880020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653229, 36.583462, 21.561478>,  <40.381344, 36.708782, 22.201256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653229, 36.583462, 21.561478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271400, 36.493675, 21.483078>,  <40.042305, 36.439804, 21.436039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271400, 36.493675, 21.483078>,  <40.653229, 36.583462, 21.561478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271400, 36.493675, 21.483078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147054, 0.217231, -0.964980,
		0.259187, -0.949960, -0.174352,
		-0.954566, -0.224471, -0.195999,
		39.985031, 36.426334, 21.424278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667999, 36.127136, 20.862623>,  <40.653229, 36.583462, 21.561478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667999, 36.127136, 20.862623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.323814, 36.326283, 20.905966>,  <40.117306, 36.445770, 20.931973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.323814, 36.326283, 20.905966>,  <40.667999, 36.127136, 20.862623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.323814, 36.326283, 20.905966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091380, 0.360008, -0.928463,
		-0.501260, -0.789002, -0.355267,
		-0.860458, 0.497866, 0.108359,
		40.065678, 36.475643, 20.938473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139107, 35.924885, 20.272188>,  <40.667999, 36.127136, 20.862623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139107, 35.924885, 20.272188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063637, 36.286263, 20.426170>,  <40.018353, 36.503090, 20.518559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063637, 36.286263, 20.426170>,  <40.139107, 35.924885, 20.272188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063637, 36.286263, 20.426170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176995, 0.416860, -0.891572,
		-0.965957, -0.100086, -0.238558,
		-0.188679, 0.903444, 0.384954,
		40.007034, 36.557297, 20.541656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075794, 36.238380, 19.693729>,  <40.139107, 35.924885, 20.272188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075794, 36.238380, 19.693729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.061550, 36.552570, 19.940874>,  <40.053001, 36.741085, 20.089161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.061550, 36.552570, 19.940874>,  <40.075794, 36.238380, 19.693729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061550, 36.552570, 19.940874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055647, 0.615737, -0.785984,
		-0.997815, -0.062374, 0.021781,
		-0.035613, 0.785479, 0.617862,
		40.050865, 36.788216, 20.126232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674519, 36.772076, 19.393215>,  <40.075794, 36.238380, 19.693729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674519, 36.772076, 19.393215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.923965, 36.964520, 19.639675>,  <40.073635, 37.079987, 19.787550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.923965, 36.964520, 19.639675>,  <39.674519, 36.772076, 19.393215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.923965, 36.964520, 19.639675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070308, 0.819509, -0.568737,
		-0.778563, 0.311353, 0.544885,
		0.623616, 0.481107, 0.616149,
		40.111050, 37.108852, 19.824520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257675, 37.368984, 19.671432>,  <39.674519, 36.772076, 19.393215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257675, 37.368984, 19.671432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654530, 37.386097, 19.624390>,  <39.892643, 37.396366, 19.596163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654530, 37.386097, 19.624390>,  <39.257675, 37.368984, 19.671432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654530, 37.386097, 19.624390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118729, 0.618891, -0.776452,
		0.039568, 0.784311, 0.619105,
		0.992138, 0.042783, -0.117609,
		39.952171, 37.398933, 19.589108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572124, 37.993774, 19.912035>,  <39.257675, 37.368984, 19.671432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572124, 37.993774, 19.912035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589935, 38.393375, 19.910482>,  <39.600624, 38.633137, 19.909550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589935, 38.393375, 19.910482>,  <39.572124, 37.993774, 19.912035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589935, 38.393375, 19.910482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270011, -0.015778, -0.962728,
		-0.961827, 0.041821, -0.270444,
		0.044529, 0.999001, -0.003883,
		39.603294, 38.693077, 19.909317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178970, 38.277515, 19.342081>,  <39.572124, 37.993774, 19.912035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178970, 38.277515, 19.342081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.432854, 38.567867, 19.448101>,  <39.585182, 38.742077, 19.511713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.432854, 38.567867, 19.448101>,  <39.178970, 38.277515, 19.342081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432854, 38.567867, 19.448101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293219, 0.091117, -0.951693,
		-0.714962, 0.681764, -0.155008,
		0.634706, 0.725876, 0.265051,
		39.623264, 38.785629, 19.527617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703045, 38.049389, 18.822193>,  <39.178970, 38.277515, 19.342081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703045, 38.049389, 18.822193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824753, 37.703476, 18.662405>,  <39.897778, 37.495930, 18.566532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824753, 37.703476, 18.662405>,  <39.703045, 38.049389, 18.822193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824753, 37.703476, 18.662405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948650, 0.237004, 0.209506,
		-0.086500, -0.442706, 0.892485,
		0.304272, -0.864778, -0.399472,
		39.916035, 37.444042, 18.542564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306980, 37.957504, 19.178513>,  <39.703045, 38.049389, 18.822193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306980, 37.957504, 19.178513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.299213, 37.698505, 18.873785>,  <40.294552, 37.543106, 18.690948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.299213, 37.698505, 18.873785>,  <40.306980, 37.957504, 19.178513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299213, 37.698505, 18.873785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996123, 0.052860, -0.070318,
		0.085801, -0.760232, 0.643960,
		-0.019418, -0.647497, -0.761820,
		40.293388, 37.504257, 18.645239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822033, 38.424824, 19.489750>,  <40.306980, 37.957504, 19.178513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.822033, 38.424824, 19.489750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.953522, 38.100143, 19.682865>,  <41.032413, 37.905334, 19.798735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.953522, 38.100143, 19.682865>,  <40.822033, 38.424824, 19.489750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.953522, 38.100143, 19.682865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928308, -0.371744, 0.007057,
		0.173746, -0.450497, -0.875708,
		0.328718, -0.811701, 0.482789,
		41.052135, 37.856632, 19.827702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818073, 39.078167, 19.697220>,  <40.822033, 38.424824, 19.489750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.818073, 39.078167, 19.697220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.467571, 39.167431, 19.526400>,  <40.257271, 39.220989, 19.423906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.467571, 39.167431, 19.526400>,  <40.818073, 39.078167, 19.697220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467571, 39.167431, 19.526400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353169, 0.305470, 0.884285,
		0.327789, 0.925682, -0.188857,
		-0.876257, 0.223160, -0.427052,
		40.204693, 39.234379, 19.398285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459835, 39.719086, 19.961157>,  <40.818073, 39.078167, 19.697220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.459835, 39.719086, 19.961157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196873, 39.447613, 19.830181>,  <40.039097, 39.284729, 19.751596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196873, 39.447613, 19.830181>,  <40.459835, 39.719086, 19.961157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196873, 39.447613, 19.830181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505332, 0.074721, 0.859684,
		-0.558984, 0.730623, -0.392080,
		-0.657402, -0.678680, -0.327439,
		39.999653, 39.244007, 19.731949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693439, 40.006687, 20.035688>,  <40.459835, 39.719086, 19.961157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693439, 40.006687, 20.035688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.648884, 39.612907, 19.981342>,  <39.622150, 39.376640, 19.948734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.648884, 39.612907, 19.981342>,  <39.693439, 40.006687, 20.035688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.648884, 39.612907, 19.981342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616679, -0.038738, 0.786261,
		-0.779295, 0.171363, -0.602772,
		-0.111386, -0.984446, -0.135864,
		39.615467, 39.317574, 19.940582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011284, 39.875866, 20.058338>,  <39.693439, 40.006687, 20.035688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011284, 39.875866, 20.058338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.187939, 39.536282, 20.174421>,  <39.293930, 39.332531, 20.244072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.187939, 39.536282, 20.174421>,  <39.011284, 39.875866, 20.058338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187939, 39.536282, 20.174421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417449, 0.091879, 0.904044,
		-0.794162, -0.520406, -0.313821,
		0.441637, -0.848962, 0.290209,
		39.320431, 39.281593, 20.261484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493481, 39.533066, 20.435564>,  <39.011284, 39.875866, 20.058338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493481, 39.533066, 20.435564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826653, 39.343494, 20.549843>,  <39.026554, 39.229752, 20.618410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826653, 39.343494, 20.549843>,  <38.493481, 39.533066, 20.435564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826653, 39.343494, 20.549843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292526, 0.061163, 0.954300,
		-0.469746, -0.878435, -0.087693,
		0.832927, -0.473931, 0.285696,
		39.076530, 39.201317, 20.635551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257919, 39.162495, 20.902767>,  <38.493481, 39.533066, 20.435564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257919, 39.162495, 20.902767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649658, 39.186878, 20.979874>,  <38.884701, 39.201508, 21.026138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649658, 39.186878, 20.979874>,  <38.257919, 39.162495, 20.902767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649658, 39.186878, 20.979874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189615, -0.053880, 0.980379,
		0.070145, -0.996685, -0.041210,
		0.979350, 0.060955, 0.192766,
		38.943462, 39.205166, 21.037703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302086, 38.640133, 21.430702>,  <38.257919, 39.162495, 20.902767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302086, 38.640133, 21.430702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653236, 38.831623, 21.435659>,  <38.863926, 38.946518, 21.438633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653236, 38.831623, 21.435659>,  <38.302086, 38.640133, 21.430702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653236, 38.831623, 21.435659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023759, -0.069385, 0.997307,
		0.478300, -0.875216, -0.072286,
		0.877875, 0.478730, 0.012393,
		38.916599, 38.975243, 21.439377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821480, 38.235420, 21.762110>,  <38.302086, 38.640133, 21.430702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821480, 38.235420, 21.762110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.895226, 38.628380, 21.774103>,  <38.939472, 38.864155, 21.781300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.895226, 38.628380, 21.774103>,  <38.821480, 38.235420, 21.762110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895226, 38.628380, 21.774103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051289, -0.040082, 0.997879,
		0.981519, -0.182437, -0.057776,
		0.184366, 0.982400, 0.029984,
		38.950535, 38.923100, 21.783098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427666, 38.396652, 22.228624>,  <38.821480, 38.235420, 21.762110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427666, 38.396652, 22.228624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219959, 38.737740, 22.205845>,  <39.095337, 38.942390, 22.192177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219959, 38.737740, 22.205845>,  <39.427666, 38.396652, 22.228624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219959, 38.737740, 22.205845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067424, 0.025555, 0.997397,
		0.851950, 0.521753, 0.044223,
		-0.519264, 0.852714, -0.056951,
		39.064178, 38.993553, 22.188759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751656, 38.816235, 22.737650>,  <39.427666, 38.396652, 22.228624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751656, 38.816235, 22.737650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387390, 38.964542, 22.664740>,  <39.168831, 39.053528, 22.620995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387390, 38.964542, 22.664740>,  <39.751656, 38.816235, 22.737650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387390, 38.964542, 22.664740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186828, 0.023935, 0.982101,
		0.368492, 0.928418, 0.047473,
		-0.910664, 0.370766, -0.182275,
		39.114189, 39.075771, 22.610058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693665, 39.462803, 23.059250>,  <39.751656, 38.816235, 22.737650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693665, 39.462803, 23.059250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314117, 39.375805, 22.967730>,  <39.086391, 39.323605, 22.912817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314117, 39.375805, 22.967730>,  <39.693665, 39.462803, 23.059250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314117, 39.375805, 22.967730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275419, 0.216174, 0.936704,
		-0.154270, 0.951821, -0.265023,
		-0.948865, -0.217498, -0.228800,
		39.029457, 39.310555, 22.899090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362900, 40.033062, 23.327587>,  <39.693665, 39.462803, 23.059250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362900, 40.033062, 23.327587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106293, 39.729687, 23.281578>,  <38.952328, 39.547661, 23.253973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106293, 39.729687, 23.281578>,  <39.362900, 40.033062, 23.327587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106293, 39.729687, 23.281578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245436, 0.060872, 0.967500,
		-0.726786, 0.648898, -0.225198,
		-0.641517, -0.758437, -0.115022,
		38.913837, 39.502155, 23.247072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629440, 40.244026, 23.609293>,  <39.362900, 40.033062, 23.327587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629440, 40.244026, 23.609293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.648228, 39.844467, 23.608810>,  <38.659500, 39.604733, 23.608521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.648228, 39.844467, 23.608810>,  <38.629440, 40.244026, 23.609293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648228, 39.844467, 23.608810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276367, -0.014156, 0.960948,
		-0.959904, -0.044798, -0.276726,
		0.046966, -0.998896, -0.001208,
		38.662319, 39.544800, 23.608448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082092, 40.151222, 23.950958>,  <38.629440, 40.244026, 23.609293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082092, 40.151222, 23.950958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249630, 39.789986, 23.988890>,  <38.350155, 39.573242, 24.011648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249630, 39.789986, 23.988890>,  <38.082092, 40.151222, 23.950958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249630, 39.789986, 23.988890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531178, -0.158969, 0.832214,
		-0.736491, -0.398941, -0.546286,
		0.418846, -0.903092, 0.094829,
		38.375282, 39.519058, 24.017338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669132, 39.762394, 24.310829>,  <38.082092, 40.151222, 23.950958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669132, 39.762394, 24.310829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.009579, 39.560051, 24.366989>,  <38.213848, 39.438644, 24.400684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.009579, 39.560051, 24.366989>,  <37.669132, 39.762394, 24.310829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009579, 39.560051, 24.366989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381496, -0.412256, 0.827349,
		-0.360631, -0.757736, -0.543858,
		0.851121, -0.505847, 0.140401,
		38.264915, 39.408295, 24.409109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405609, 39.067135, 24.494104>,  <37.669132, 39.762394, 24.310829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405609, 39.067135, 24.494104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.789524, 39.075768, 24.606060>,  <38.019875, 39.080948, 24.673233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.789524, 39.075768, 24.606060>,  <37.405609, 39.067135, 24.494104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789524, 39.075768, 24.606060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259469, -0.312321, 0.913855,
		0.107138, -0.949731, -0.294162,
		0.959790, 0.021583, 0.279887,
		38.077461, 39.082241, 24.690025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473469, 38.480770, 24.934111>,  <37.405609, 39.067135, 24.494104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473469, 38.480770, 24.934111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758018, 38.742821, 25.035892>,  <37.928749, 38.900051, 25.096962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758018, 38.742821, 25.035892>,  <37.473469, 38.480770, 24.934111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758018, 38.742821, 25.035892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106540, -0.257343, 0.960429,
		0.694687, -0.710338, -0.113271,
		0.711379, 0.655129, 0.254452,
		37.971432, 38.939358, 25.112228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711559, 38.116695, 25.423805>,  <37.473469, 38.480770, 24.934111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711559, 38.116695, 25.423805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.848614, 38.482262, 25.510855>,  <37.930847, 38.701603, 25.563084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.848614, 38.482262, 25.510855>,  <37.711559, 38.116695, 25.423805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848614, 38.482262, 25.510855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177178, -0.164628, 0.970312,
		0.922611, -0.371019, 0.105519,
		0.342633, 0.913916, 0.217624,
		37.951405, 38.756435, 25.576141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115459, 37.999485, 25.983875>,  <37.711559, 38.116695, 25.423805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115459, 37.999485, 25.983875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033371, 38.390759, 25.996832>,  <37.984119, 38.625523, 26.004606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033371, 38.390759, 25.996832>,  <38.115459, 37.999485, 25.983875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033371, 38.390759, 25.996832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135821, -0.061241, 0.988839,
		0.969245, 0.198533, 0.145426,
		-0.205223, 0.978179, 0.032393,
		37.971806, 38.684212, 26.006550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516541, 38.274014, 26.525158>,  <38.115459, 37.999485, 25.983875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516541, 38.274014, 26.525158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212376, 38.529572, 26.478525>,  <38.029877, 38.682907, 26.450546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212376, 38.529572, 26.478525>,  <38.516541, 38.274014, 26.525158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212376, 38.529572, 26.478525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183920, -0.039688, 0.982140,
		0.622855, 0.768272, 0.147684,
		-0.760411, 0.638892, -0.116580,
		37.984253, 38.721241, 26.443552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483662, 38.644260, 27.205715>,  <38.516541, 38.274014, 26.525158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483662, 38.644260, 27.205715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128517, 38.724216, 27.039949>,  <37.915428, 38.772190, 26.940491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128517, 38.724216, 27.039949>,  <38.483662, 38.644260, 27.205715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128517, 38.724216, 27.039949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417698, 0.027511, 0.908169,
		0.192939, 0.979431, 0.059069,
		-0.887864, 0.199894, -0.414415,
		37.862160, 38.784184, 26.915625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276310, 39.016361, 27.709660>,  <38.483662, 38.644260, 27.205715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276310, 39.016361, 27.709660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940487, 38.926632, 27.511740>,  <37.738995, 38.872795, 27.392988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940487, 38.926632, 27.511740>,  <38.276310, 39.016361, 27.709660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940487, 38.926632, 27.511740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506986, -0.003779, 0.861946,
		-0.195224, 0.974508, -0.110557,
		-0.839555, -0.224323, -0.494800,
		37.688622, 38.859337, 27.363300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699055, 39.450012, 28.023706>,  <38.276310, 39.016361, 27.709660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.699055, 39.450012, 28.023706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525028, 39.133820, 27.851259>,  <37.420612, 38.944103, 27.747791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525028, 39.133820, 27.851259>,  <37.699055, 39.450012, 28.023706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525028, 39.133820, 27.851259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659990, -0.045728, 0.749881,
		-0.612478, 0.610782, -0.501813,
		-0.435067, -0.790477, -0.431117,
		37.394508, 38.896675, 27.721924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988384, 39.507866, 28.178553>,  <37.699055, 39.450012, 28.023706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988384, 39.507866, 28.178553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025509, 39.120186, 28.087297>,  <37.047783, 38.887577, 28.032545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025509, 39.120186, 28.087297>,  <36.988384, 39.507866, 28.178553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025509, 39.120186, 28.087297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780109, -0.213160, 0.588211,
		-0.618722, 0.123381, -0.775861,
		0.092808, -0.969195, -0.228137,
		37.053352, 38.829426, 28.018856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293518, 39.239845, 27.973114>,  <36.988384, 39.507866, 28.178553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293518, 39.239845, 27.973114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505962, 38.925385, 28.099531>,  <36.633430, 38.736710, 28.175381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505962, 38.925385, 28.099531>,  <36.293518, 39.239845, 27.973114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505962, 38.925385, 28.099531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581887, -0.067295, 0.810481,
		-0.615894, -0.614358, -0.493193,
		0.531115, -0.786152, 0.316040,
		36.665298, 38.689537, 28.194344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810696, 38.715160, 28.139141>,  <36.293518, 39.239845, 27.973114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810696, 38.715160, 28.139141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143768, 38.576427, 28.311811>,  <36.343613, 38.493187, 28.415413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143768, 38.576427, 28.311811>,  <35.810696, 38.715160, 28.139141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143768, 38.576427, 28.311811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530065, -0.273684, 0.802576,
		-0.160214, -0.897110, -0.411735,
		0.832684, -0.346830, 0.431678,
		36.393574, 38.472378, 28.441315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624393, 38.048641, 28.424612>,  <35.810696, 38.715160, 28.139141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624393, 38.048641, 28.424612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958084, 38.141544, 28.624660>,  <36.158298, 38.197289, 28.744690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958084, 38.141544, 28.624660>,  <35.624393, 38.048641, 28.424612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958084, 38.141544, 28.624660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451126, -0.234089, 0.861213,
		0.317100, -0.944064, -0.090504,
		0.834225, 0.232262, 0.500121,
		36.208351, 38.211224, 28.774696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827965, 37.509933, 28.710226>,  <35.624393, 38.048641, 28.424612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827965, 37.509933, 28.710226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996262, 37.785320, 28.946527>,  <36.097240, 37.950550, 29.088308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996262, 37.785320, 28.946527>,  <35.827965, 37.509933, 28.710226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996262, 37.785320, 28.946527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449935, -0.407096, 0.794878,
		0.787739, -0.600241, 0.138482,
		0.420743, 0.688465, 0.590755,
		36.122486, 37.991859, 29.123755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882275, 37.137009, 29.367315>,  <35.827965, 37.509933, 28.710226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882275, 37.137009, 29.367315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.942345, 37.509686, 29.499617>,  <35.978386, 37.733292, 29.578999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.942345, 37.509686, 29.499617>,  <35.882275, 37.137009, 29.367315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942345, 37.509686, 29.499617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289618, -0.278414, 0.915755,
		0.945287, -0.233319, 0.228023,
		0.150178, 0.931691, 0.330755,
		35.987396, 37.789192, 29.598843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288258, 37.054604, 29.973770>,  <35.882275, 37.137009, 29.367315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288258, 37.054604, 29.973770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.127129, 37.420532, 29.985325>,  <36.030453, 37.640091, 29.992258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.127129, 37.420532, 29.985325>,  <36.288258, 37.054604, 29.973770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127129, 37.420532, 29.985325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366684, -0.190216, 0.910692,
		0.838617, 0.356253, 0.412074,
		-0.402820, 0.914823, 0.028886,
		36.006283, 37.694981, 29.993990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390942, 37.245132, 30.640312>,  <36.288258, 37.054604, 29.973770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390942, 37.245132, 30.640312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109062, 37.505291, 30.526903>,  <35.939934, 37.661385, 30.458858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109062, 37.505291, 30.526903>,  <36.390942, 37.245132, 30.640312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109062, 37.505291, 30.526903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392730, -0.024768, 0.919320,
		0.590896, 0.759194, 0.272883,
		-0.704702, 0.650392, -0.283523,
		35.897652, 37.700409, 30.441847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428448, 37.845459, 31.124348>,  <36.390942, 37.245132, 30.640312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428448, 37.845459, 31.124348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063942, 37.848778, 30.959648>,  <35.845238, 37.850769, 30.860828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063942, 37.848778, 30.959648>,  <36.428448, 37.845459, 31.124348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063942, 37.848778, 30.959648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410955, 0.046852, 0.910451,
		0.026848, 0.998867, -0.039284,
		-0.911260, 0.008299, -0.411748,
		35.790565, 37.851269, 30.836124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142536, 38.412537, 31.369074>,  <36.428448, 37.845459, 31.124348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142536, 38.412537, 31.369074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.845127, 38.174862, 31.246359>,  <35.666683, 38.032257, 31.172729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.845127, 38.174862, 31.246359>,  <36.142536, 38.412537, 31.369074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845127, 38.174862, 31.246359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450162, 0.105483, 0.886695,
		-0.494502, 0.797379, -0.345909,
		-0.743520, -0.594188, -0.306788,
		35.622070, 37.996605, 31.154322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572372, 38.750351, 31.560820>,  <36.142536, 38.412537, 31.369074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572372, 38.750351, 31.560820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482437, 38.361279, 31.537729>,  <35.428478, 38.127834, 31.523874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482437, 38.361279, 31.537729>,  <35.572372, 38.750351, 31.560820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482437, 38.361279, 31.537729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384793, 0.034204, 0.922369,
		-0.895200, 0.229593, -0.381973,
		-0.224834, -0.972686, -0.057726,
		35.414986, 38.069473, 31.520411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876884, 38.778713, 31.870974>,  <35.572372, 38.750351, 31.560820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876884, 38.778713, 31.870974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960999, 38.388905, 31.839767>,  <35.011467, 38.155018, 31.821043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960999, 38.388905, 31.839767>,  <34.876884, 38.778713, 31.870974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960999, 38.388905, 31.839767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505210, -0.176644, 0.844725,
		-0.836984, -0.138221, -0.529484,
		0.210289, -0.974521, -0.078017,
		35.024086, 38.096550, 31.816362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184170, 38.374416, 31.802362>,  <34.876884, 38.778713, 31.870974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184170, 38.374416, 31.802362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477859, 38.154533, 31.961731>,  <34.654072, 38.022602, 32.057350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477859, 38.154533, 31.961731>,  <34.184170, 38.374416, 31.802362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477859, 38.154533, 31.961731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523295, -0.084347, 0.847967,
		-0.432531, -0.831086, -0.349591,
		0.734220, -0.549711, 0.398420,
		34.698124, 37.989620, 32.081257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817219, 37.891857, 32.183796>,  <34.184170, 38.374416, 31.802362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817219, 37.891857, 32.183796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191605, 37.890682, 32.324627>,  <34.416237, 37.889977, 32.409126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191605, 37.890682, 32.324627>,  <33.817219, 37.891857, 32.183796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191605, 37.890682, 32.324627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348520, 0.134260, 0.927636,
		-0.049997, -0.990942, 0.124639,
		0.935967, -0.002940, 0.352075,
		34.472393, 37.889801, 32.430248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728687, 37.455654, 32.681904>,  <33.817219, 37.891857, 32.183796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728687, 37.455654, 32.681904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070145, 37.642670, 32.773731>,  <34.275021, 37.754879, 32.828827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070145, 37.642670, 32.773731>,  <33.728687, 37.455654, 32.681904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070145, 37.642670, 32.773731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272206, 0.024684, 0.961922,
		0.444071, -0.883627, 0.148338,
		0.853642, 0.467540, 0.229567,
		34.326237, 37.782932, 32.842602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928558, 36.978802, 33.171143>,  <33.728687, 37.455654, 32.681904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928558, 36.978802, 33.171143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091694, 37.342781, 33.201248>,  <34.189575, 37.561169, 33.219311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091694, 37.342781, 33.201248>,  <33.928558, 36.978802, 33.171143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091694, 37.342781, 33.201248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301506, 0.056413, 0.951794,
		0.861837, -0.410869, 0.297362,
		0.407837, 0.909947, 0.075260,
		34.214046, 37.615765, 33.223827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355366, 36.899128, 33.749443>,  <33.928558, 36.978802, 33.171143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355366, 36.899128, 33.749443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323826, 37.297882, 33.748840>,  <34.304901, 37.537136, 33.748478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323826, 37.297882, 33.748840>,  <34.355366, 36.899128, 33.749443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323826, 37.297882, 33.748840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159007, -0.011082, 0.987215,
		0.984124, 0.078080, 0.159385,
		-0.078848, 0.996885, -0.001510,
		34.300171, 37.596947, 33.748386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880219, 37.232063, 34.250256>,  <34.355366, 36.899128, 33.749443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880219, 37.232063, 34.250256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571552, 37.484104, 34.215603>,  <34.386353, 37.635330, 34.194813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571552, 37.484104, 34.215603>,  <34.880219, 37.232063, 34.250256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571552, 37.484104, 34.215603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136059, -0.030479, 0.990232,
		0.621311, 0.775911, 0.109251,
		-0.771661, 0.630106, -0.086633,
		34.340054, 37.673138, 34.189613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083267, 37.709408, 34.602356>,  <34.880219, 37.232063, 34.250256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083267, 37.709408, 34.602356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684620, 37.721123, 34.571648>,  <34.445431, 37.728153, 34.553223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684620, 37.721123, 34.571648>,  <35.083267, 37.709408, 34.602356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684620, 37.721123, 34.571648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080510, -0.161399, 0.983600,
		0.016416, 0.986454, 0.163211,
		-0.996619, 0.029287, -0.076770,
		34.385635, 37.729908, 34.548618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718773, 38.175869, 34.462536>,  <35.083267, 37.709408, 34.602356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718773, 38.175869, 34.462536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979984, 38.414158, 34.649586>,  <36.136711, 38.557129, 34.761814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979984, 38.414158, 34.649586>,  <35.718773, 38.175869, 34.462536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979984, 38.414158, 34.649586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322678, 0.339748, -0.883431,
		-0.685150, 0.727799, 0.029640,
		0.653030, 0.595719, 0.467623,
		36.175892, 38.592873, 34.789871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723068, 38.881519, 34.116806>,  <35.718773, 38.175869, 34.462536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723068, 38.881519, 34.116806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071217, 38.790646, 34.291546>,  <36.280106, 38.736122, 34.396389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071217, 38.790646, 34.291546>,  <35.723068, 38.881519, 34.116806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071217, 38.790646, 34.291546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491633, 0.351661, -0.796638,
		0.027357, 0.908143, 0.417766,
		0.870373, -0.227181, 0.436852,
		36.332329, 38.722492, 34.422600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081135, 39.575275, 34.042995>,  <35.723068, 38.881519, 34.116806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081135, 39.575275, 34.042995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345215, 39.280704, 34.102062>,  <36.503662, 39.103962, 34.137501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345215, 39.280704, 34.102062>,  <36.081135, 39.575275, 34.042995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345215, 39.280704, 34.102062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582039, 0.377361, -0.720298,
		0.474725, 0.561490, 0.677765,
		0.660203, -0.736429, 0.147667,
		36.543274, 39.059776, 34.146362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739185, 39.907364, 34.013229>,  <36.081135, 39.575275, 34.042995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739185, 39.907364, 34.013229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795933, 39.518040, 33.941074>,  <36.829979, 39.284447, 33.897781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795933, 39.518040, 33.941074>,  <36.739185, 39.907364, 34.013229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795933, 39.518040, 33.941074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579867, 0.229399, -0.781748,
		0.802264, 0.006305, 0.596936,
		0.141866, -0.973312, -0.180383,
		36.838493, 39.226048, 33.886959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402958, 39.895809, 33.770138>,  <36.739185, 39.907364, 34.013229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402958, 39.895809, 33.770138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225670, 39.560516, 33.643063>,  <37.119297, 39.359341, 33.566818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225670, 39.560516, 33.643063>,  <37.402958, 39.895809, 33.770138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225670, 39.560516, 33.643063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538846, 0.034086, -0.841714,
		0.716378, -0.544251, 0.436569,
		-0.443223, -0.838230, -0.317686,
		37.092701, 39.309048, 33.547756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047646, 39.546223, 33.517029>,  <37.402958, 39.895809, 33.770138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047646, 39.546223, 33.517029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.713463, 39.413040, 33.342144>,  <37.512955, 39.333130, 33.237213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.713463, 39.413040, 33.342144>,  <38.047646, 39.546223, 33.517029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713463, 39.413040, 33.342144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452485, 0.034739, -0.891095,
		0.311882, -0.942303, 0.121634,
		-0.835456, -0.332954, -0.437212,
		37.462826, 39.313152, 33.210979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239456, 39.015785, 33.054901>,  <38.047646, 39.546223, 33.517029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239456, 39.015785, 33.054901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.876808, 39.101276, 32.909370>,  <37.659222, 39.152573, 32.822052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.876808, 39.101276, 32.909370>,  <38.239456, 39.015785, 33.054901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876808, 39.101276, 32.909370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376248, 0.019163, -0.926321,
		-0.191010, -0.976705, -0.097789,
		-0.906616, 0.213729, -0.363823,
		37.604824, 39.165394, 32.800224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073360, 38.487755, 32.411819>,  <38.239456, 39.015785, 33.054901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073360, 38.487755, 32.411819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843960, 38.815289, 32.402050>,  <37.706318, 39.011810, 32.396187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843960, 38.815289, 32.402050>,  <38.073360, 38.487755, 32.411819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843960, 38.815289, 32.402050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255302, 0.150320, -0.955105,
		-0.778405, -0.553992, -0.295260,
		-0.573504, 0.818839, -0.024425,
		37.671909, 39.060940, 32.394722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703461, 38.474388, 31.758907>,  <38.073360, 38.487755, 32.411819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703461, 38.474388, 31.758907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678078, 38.856888, 31.873146>,  <37.662849, 39.086388, 31.941689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678078, 38.856888, 31.873146>,  <37.703461, 38.474388, 31.758907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678078, 38.856888, 31.873146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432543, 0.284249, -0.855634,
		-0.899378, 0.069239, -0.431655,
		-0.063454, 0.956247, 0.285596,
		37.659042, 39.143761, 31.958824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518032, 38.797588, 31.167761>,  <37.703461, 38.474388, 31.758907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518032, 38.797588, 31.167761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674526, 39.077473, 31.406872>,  <37.768421, 39.245403, 31.550339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674526, 39.077473, 31.406872>,  <37.518032, 38.797588, 31.167761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674526, 39.077473, 31.406872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527017, 0.362149, -0.768831,
		-0.754446, 0.615831, -0.227075,
		0.391235, 0.699714, 0.597776,
		37.791897, 39.287388, 31.586205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444408, 39.443653, 30.796818>,  <37.518032, 38.797588, 31.167761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444408, 39.443653, 30.796818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740849, 39.529278, 31.051361>,  <37.918713, 39.580654, 31.204086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740849, 39.529278, 31.051361>,  <37.444408, 39.443653, 30.796818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740849, 39.529278, 31.051361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485021, 0.484692, -0.727893,
		-0.464251, 0.848087, 0.255381,
		0.741097, 0.214060, 0.636359,
		37.963177, 39.593494, 31.242270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666126, 40.156231, 30.637598>,  <37.444408, 39.443653, 30.796818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666126, 40.156231, 30.637598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964848, 40.012043, 30.861151>,  <38.144081, 39.925529, 30.995283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964848, 40.012043, 30.861151>,  <37.666126, 40.156231, 30.637598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964848, 40.012043, 30.861151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656547, 0.533524, -0.533197,
		-0.105978, 0.765125, 0.635100,
		0.746803, -0.360466, 0.558882,
		38.188889, 39.903904, 31.028816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093250, 40.794262, 30.811686>,  <37.666126, 40.156231, 30.637598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093250, 40.794262, 30.811686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274933, 40.437912, 30.814024>,  <38.383942, 40.224102, 30.815428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274933, 40.437912, 30.814024>,  <38.093250, 40.794262, 30.811686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274933, 40.437912, 30.814024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660742, 0.332454, -0.672975,
		0.597596, 0.309529, 0.739642,
		0.454203, -0.890879, 0.005846,
		38.411194, 40.170647, 30.815777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764488, 40.910557, 30.707211>,  <38.093250, 40.794262, 30.811686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764488, 40.910557, 30.707211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773548, 40.527554, 30.592209>,  <38.778984, 40.297752, 30.523207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773548, 40.527554, 30.592209>,  <38.764488, 40.910557, 30.707211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773548, 40.527554, 30.592209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515633, 0.257565, -0.817180,
		0.856510, -0.129742, 0.499557,
		0.022646, -0.957511, -0.287506,
		38.780342, 40.240299, 30.505957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378292, 40.850727, 30.482922>,  <38.764488, 40.910557, 30.707211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378292, 40.850727, 30.482922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216358, 40.522976, 30.320572>,  <39.119198, 40.326324, 30.223162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216358, 40.522976, 30.320572>,  <39.378292, 40.850727, 30.482922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216358, 40.522976, 30.320572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535688, 0.147204, -0.831486,
		0.741045, -0.554036, 0.379336,
		-0.404833, -0.819375, -0.405876,
		39.094910, 40.277164, 30.198809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954193, 40.508568, 30.173426>,  <39.378292, 40.850727, 30.482922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954193, 40.508568, 30.173426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636902, 40.333332, 30.004253>,  <39.446529, 40.228191, 29.902750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636902, 40.333332, 30.004253>,  <39.954193, 40.508568, 30.173426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636902, 40.333332, 30.004253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449762, 0.046704, -0.891926,
		0.410498, -0.897717, 0.159990,
		-0.793225, -0.438091, -0.422931,
		39.398933, 40.201904, 29.877375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297207, 40.170300, 29.686710>,  <39.954193, 40.508568, 30.173426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297207, 40.170300, 29.686710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.922199, 40.134609, 29.552189>,  <39.697197, 40.113194, 29.471476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.922199, 40.134609, 29.552189>,  <40.297207, 40.170300, 29.686710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922199, 40.134609, 29.552189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343680, -0.086715, -0.935075,
		0.054271, -0.992229, 0.111963,
		-0.937517, -0.089227, -0.336303,
		39.640945, 40.107841, 29.451298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286957, 39.635433, 29.138695>,  <40.297207, 40.170300, 29.686710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286957, 39.635433, 29.138695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948616, 39.842758, 29.088284>,  <39.745613, 39.967155, 29.058037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948616, 39.842758, 29.088284>,  <40.286957, 39.635433, 29.138695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948616, 39.842758, 29.088284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180616, 0.055993, -0.981959,
		-0.501908, -0.853354, -0.140979,
		-0.845853, 0.518316, -0.126026,
		39.694859, 39.998253, 29.050476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858303, 39.181717, 28.723932>,  <40.286957, 39.635433, 29.138695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858303, 39.181717, 28.723932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.763573, 39.567997, 28.681343>,  <39.706734, 39.799767, 28.655790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.763573, 39.567997, 28.681343>,  <39.858303, 39.181717, 28.723932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763573, 39.567997, 28.681343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113565, -0.081321, -0.990197,
		-0.964891, -0.246598, -0.090410,
		-0.236829, 0.965700, -0.106471,
		39.692524, 39.857708, 28.649403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380489, 39.222614, 28.174204>,  <39.858303, 39.181717, 28.723932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380489, 39.222614, 28.174204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.524857, 39.593658, 28.212725>,  <39.611477, 39.816284, 28.235836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.524857, 39.593658, 28.212725>,  <39.380489, 39.222614, 28.174204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524857, 39.593658, 28.212725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161729, 0.039441, -0.986047,
		-0.918466, 0.371460, -0.135786,
		0.360921, 0.927611, 0.096301,
		39.633133, 39.871941, 28.241615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062325, 39.540546, 27.657059>,  <39.380489, 39.222614, 28.174204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062325, 39.540546, 27.657059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376705, 39.771023, 27.746752>,  <39.565334, 39.909309, 27.800568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376705, 39.771023, 27.746752>,  <39.062325, 39.540546, 27.657059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376705, 39.771023, 27.746752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162348, 0.157619, -0.974063,
		-0.596592, 0.801971, 0.030337,
		0.785952, 0.576193, 0.224232,
		39.612492, 39.943882, 27.814022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099056, 40.034309, 27.169666>,  <39.062325, 39.540546, 27.657059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099056, 40.034309, 27.169666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472321, 40.035469, 27.313440>,  <39.696281, 40.036163, 27.399706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472321, 40.035469, 27.313440>,  <39.099056, 40.034309, 27.169666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472321, 40.035469, 27.313440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345434, 0.269275, -0.898980,
		-0.099391, 0.963059, 0.250277,
		0.933165, 0.002897, 0.359437,
		39.752270, 40.036339, 27.421272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346859, 40.671677, 26.967953>,  <39.099056, 40.034309, 27.169666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346859, 40.671677, 26.967953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646931, 40.412010, 27.018257>,  <39.826973, 40.256210, 27.048441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646931, 40.412010, 27.018257>,  <39.346859, 40.671677, 26.967953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646931, 40.412010, 27.018257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319279, 0.189062, -0.928610,
		0.579045, 0.736776, 0.349095,
		0.750178, -0.649166, 0.125762,
		39.871983, 40.217258, 27.055986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868805, 41.049175, 26.712297>,  <39.346859, 40.671677, 26.967953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868805, 41.049175, 26.712297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.000847, 40.671654, 26.718801>,  <40.080070, 40.445141, 26.722704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.000847, 40.671654, 26.718801>,  <39.868805, 41.049175, 26.712297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000847, 40.671654, 26.718801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435495, 0.136989, -0.889707,
		0.837482, 0.300775, 0.456243,
		0.330102, -0.943805, 0.016261,
		40.099876, 40.388512, 26.723680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561649, 41.037247, 26.569757>,  <39.868805, 41.049175, 26.712297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.561649, 41.037247, 26.569757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431599, 40.672279, 26.470337>,  <40.353569, 40.453297, 26.410685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431599, 40.672279, 26.470337>,  <40.561649, 41.037247, 26.569757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431599, 40.672279, 26.470337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444734, 0.084429, -0.891674,
		0.834569, -0.400445, 0.378336,
		-0.325123, -0.912423, -0.248554,
		40.334061, 40.398552, 26.395771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.118679, 40.749336, 26.240734>,  <40.561649, 41.037247, 26.569757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.118679, 40.749336, 26.240734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835659, 40.492001, 26.123772>,  <40.665848, 40.337601, 26.053595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835659, 40.492001, 26.123772>,  <41.118679, 40.749336, 26.240734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.835659, 40.492001, 26.123772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469092, -0.118116, -0.875215,
		0.528519, -0.756419, 0.385355,
		-0.707545, -0.643335, -0.292404,
		40.623394, 40.299000, 26.036051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.433781, 40.244728, 25.890903>,  <41.118679, 40.749336, 26.240734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.433781, 40.244728, 25.890903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.065479, 40.162910, 25.758013>,  <40.844498, 40.113819, 25.678278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.065479, 40.162910, 25.758013>,  <41.433781, 40.244728, 25.890903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.065479, 40.162910, 25.758013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389109, -0.419503, -0.820129,
		0.028383, -0.884409, 0.465849,
		-0.920754, -0.204543, -0.332225,
		40.789253, 40.101547, 25.658346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.522362, 39.643688, 25.546858>,  <41.433781, 40.244728, 25.890903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.522362, 39.643688, 25.546858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.189156, 39.804852, 25.395199>,  <40.989231, 39.901550, 25.304203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.189156, 39.804852, 25.395199>,  <41.522362, 39.643688, 25.546858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.189156, 39.804852, 25.395199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173339, -0.460731, -0.870449,
		-0.525399, -0.790816, 0.313954,
		-0.833013, 0.402912, -0.379147,
		40.939251, 39.925724, 25.281454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.134312, 39.101254, 25.386341>,  <41.522362, 39.643688, 25.546858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.134312, 39.101254, 25.386341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.006603, 39.413010, 25.170708>,  <40.929977, 39.600063, 25.041328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.006603, 39.413010, 25.170708>,  <41.134312, 39.101254, 25.386341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.006603, 39.413010, 25.170708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005350, -0.570327, -0.821400,
		-0.947647, -0.259369, 0.186261,
		-0.319276, 0.779394, -0.539081,
		40.910820, 39.646828, 25.008984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.808994, 38.802868, 24.910969>,  <41.134312, 39.101254, 25.386341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.808994, 38.802868, 24.910969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.912312, 39.168446, 24.785759>,  <40.974300, 39.387794, 24.710632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.912312, 39.168446, 24.785759>,  <40.808994, 38.802868, 24.910969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.912312, 39.168446, 24.785759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229290, -0.372759, -0.899153,
		-0.938462, 0.160472, -0.305840,
		0.258293, 0.913947, -0.313026,
		40.989799, 39.442631, 24.691851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.534710, 38.796070, 24.335892>,  <40.808994, 38.802868, 24.910969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.534710, 38.796070, 24.335892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.798111, 39.093681, 24.290663>,  <40.956154, 39.272247, 24.263525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.798111, 39.093681, 24.290663>,  <40.534710, 38.796070, 24.335892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.798111, 39.093681, 24.290663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234477, -0.345609, -0.908612,
		-0.715116, 0.571813, -0.402044,
		0.658506, 0.744033, -0.113073,
		40.995663, 39.316891, 24.256741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346481, 39.103836, 23.726490>,  <40.534710, 38.796070, 24.335892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.346481, 39.103836, 23.726490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.723480, 39.229149, 23.773054>,  <40.949680, 39.304337, 23.800993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.723480, 39.229149, 23.773054>,  <40.346481, 39.103836, 23.726490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.723480, 39.229149, 23.773054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232990, -0.366187, -0.900901,
		-0.239607, 0.876220, -0.418122,
		0.942499, 0.313280, 0.116409,
		41.006229, 39.323132, 23.807978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.620724, 39.614555, 23.172651>,  <40.346481, 39.103836, 23.726490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.620724, 39.614555, 23.172651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.941853, 39.434467, 23.329000>,  <41.134529, 39.326416, 23.422810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.941853, 39.434467, 23.329000>,  <40.620724, 39.614555, 23.172651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941853, 39.434467, 23.329000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276424, -0.299803, -0.913076,
		0.528269, 0.841083, -0.116237,
		0.802821, -0.450219, 0.390872,
		41.182697, 39.299400, 23.446262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.103905, 39.894501, 22.720751>,  <40.620724, 39.614555, 23.172651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.103905, 39.894501, 22.720751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.270901, 39.585991, 22.912935>,  <41.371098, 39.400887, 23.028246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.270901, 39.585991, 22.912935>,  <41.103905, 39.894501, 22.720751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.270901, 39.585991, 22.912935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410795, -0.311435, -0.856887,
		0.810525, 0.555113, 0.186813,
		0.417489, -0.771270, 0.480463,
		41.396149, 39.354610, 23.057074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704800, 39.820534, 22.300220>,  <41.103905, 39.894501, 22.720751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.704800, 39.820534, 22.300220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.635128, 39.484322, 22.505419>,  <41.593327, 39.282593, 22.628538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.635128, 39.484322, 22.505419>,  <41.704800, 39.820534, 22.300220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.635128, 39.484322, 22.505419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280300, -0.541729, -0.792440,
		0.943978, 0.005767, 0.329959,
		-0.174179, -0.840533, 0.512997,
		41.582874, 39.232162, 22.659317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.306465, 39.312702, 22.412598>,  <41.704800, 39.820534, 22.300220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.306465, 39.312702, 22.412598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.998055, 39.062672, 22.461256>,  <41.813007, 38.912655, 22.490452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.998055, 39.062672, 22.461256>,  <42.306465, 39.312702, 22.412598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.998055, 39.062672, 22.461256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305621, -0.530817, -0.790461,
		0.558670, -0.572290, 0.600311,
		-0.771028, -0.625074, 0.121647,
		41.766747, 38.875149, 22.497749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.564751, 38.664623, 22.371208>,  <42.306465, 39.312702, 22.412598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.564751, 38.664623, 22.371208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184433, 38.545147, 22.338285>,  <41.956242, 38.473461, 22.318533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184433, 38.545147, 22.338285>,  <42.564751, 38.664623, 22.371208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.184433, 38.545147, 22.338285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299685, -0.819242, -0.488909,
		0.078604, -0.489517, 0.868444,
		-0.950794, -0.298690, -0.082305,
		41.899193, 38.455540, 22.313595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.675644, 37.966087, 22.272642>,  <42.564751, 38.664623, 22.371208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.675644, 37.966087, 22.272642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.938046, 37.671387, 22.338186>,  <43.095486, 37.494568, 22.377514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.938046, 37.671387, 22.338186>,  <42.675644, 37.966087, 22.272642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.938046, 37.671387, 22.338186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272456, -0.028693, 0.961740,
		-0.703864, -0.675553, -0.219556,
		0.656006, -0.736753, 0.163863,
		43.134846, 37.450359, 22.387344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.215900, 37.515644, 22.560711>,  <42.675644, 37.966087, 22.272642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.215900, 37.515644, 22.560711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.582970, 37.400951, 22.670734>,  <42.803211, 37.332134, 22.736750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.582970, 37.400951, 22.670734>,  <42.215900, 37.515644, 22.560711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.582970, 37.400951, 22.670734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346561, -0.239012, 0.907066,
		-0.194338, -0.927718, -0.318704,
		0.917675, -0.286727, 0.275062,
		42.858273, 37.314930, 22.753252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.174175, 36.771580, 22.913322>,  <42.215900, 37.515644, 22.560711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.174175, 36.771580, 22.913322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.523426, 36.929813, 23.027281>,  <42.732975, 37.024754, 23.095655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.523426, 36.929813, 23.027281>,  <42.174175, 36.771580, 22.913322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.523426, 36.929813, 23.027281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156122, -0.326724, 0.932136,
		0.461818, -0.858351, -0.223512,
		0.873127, 0.395582, 0.284894,
		42.785362, 37.048489, 23.112749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416931, 36.290508, 23.359997>,  <42.174175, 36.771580, 22.913322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.416931, 36.290508, 23.359997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.632854, 36.607605, 23.473251>,  <42.762409, 36.797863, 23.541204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.632854, 36.607605, 23.473251>,  <42.416931, 36.290508, 23.359997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.632854, 36.607605, 23.473251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352856, -0.092287, 0.931115,
		0.764265, -0.602529, 0.229908,
		0.539806, 0.792743, 0.283138,
		42.794796, 36.845428, 23.558193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.776573, 36.047802, 23.991625>,  <42.416931, 36.290508, 23.359997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.776573, 36.047802, 23.991625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.798912, 36.447163, 23.995117>,  <42.812317, 36.686779, 23.997213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.798912, 36.447163, 23.995117>,  <42.776573, 36.047802, 23.991625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.798912, 36.447163, 23.995117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188700, 0.001967, 0.982033,
		0.980446, -0.056490, 0.188509,
		0.055846, 0.998401, 0.008731,
		42.815666, 36.746681, 23.997736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.179699, 36.278851, 24.647238>,  <42.776573, 36.047802, 23.991625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.179699, 36.278851, 24.647238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.948021, 36.585457, 24.536257>,  <42.809013, 36.769421, 24.469667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.948021, 36.585457, 24.536257>,  <43.179699, 36.278851, 24.647238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.948021, 36.585457, 24.536257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304596, 0.112204, 0.945850,
		0.756141, 0.632347, 0.168490,
		-0.579200, 0.766517, -0.277452,
		42.774261, 36.815411, 24.453022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.180462, 36.813835, 25.234695>,  <43.179699, 36.278851, 24.647238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.180462, 36.813835, 25.234695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.850533, 36.891151, 25.022169>,  <42.652573, 36.937542, 24.894653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.850533, 36.891151, 25.022169>,  <43.180462, 36.813835, 25.234695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.850533, 36.891151, 25.022169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491700, 0.218642, 0.842868,
		0.279090, 0.956469, -0.085299,
		-0.824827, 0.193295, -0.531316,
		42.603085, 36.949139, 24.862774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.861855, 37.476406, 25.524612>,  <43.180462, 36.813835, 25.234695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.861855, 37.476406, 25.524612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.579163, 37.264992, 25.336491>,  <42.409550, 37.138142, 25.223618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.579163, 37.264992, 25.336491>,  <42.861855, 37.476406, 25.524612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.579163, 37.264992, 25.336491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608738, 0.115530, 0.784915,
		-0.360524, 0.841011, -0.403390,
		-0.706725, -0.528539, -0.470304,
		42.367146, 37.106430, 25.195400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.177273, 37.590324, 25.901466>,  <42.861855, 37.476406, 25.524612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.177273, 37.590324, 25.901466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.062599, 37.286415, 25.668037>,  <41.993793, 37.104069, 25.527979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.062599, 37.286415, 25.668037>,  <42.177273, 37.590324, 25.901466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.062599, 37.286415, 25.668037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685366, -0.262969, 0.679059,
		-0.669392, 0.594638, -0.445333,
		-0.286685, -0.759772, -0.583574,
		41.976593, 37.058483, 25.492966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515533, 37.705330, 25.763874>,  <42.177273, 37.590324, 25.901466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.515533, 37.705330, 25.763874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.561222, 37.313629, 25.696922>,  <41.588634, 37.078609, 25.656752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.561222, 37.313629, 25.696922>,  <41.515533, 37.705330, 25.763874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.561222, 37.313629, 25.696922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780293, -0.192712, 0.594984,
		-0.614896, 0.062645, -0.786116,
		0.114221, -0.979254, -0.167379,
		41.595490, 37.019852, 25.646709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844269, 37.366520, 25.692318>,  <41.515533, 37.705330, 25.763874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.844269, 37.366520, 25.692318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.077538, 37.049110, 25.761862>,  <41.217499, 36.858665, 25.803589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.077538, 37.049110, 25.761862>,  <40.844269, 37.366520, 25.692318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.077538, 37.049110, 25.761862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667938, -0.346584, 0.658588,
		-0.462348, -0.500201, -0.732143,
		0.583176, -0.793523, 0.173861,
		41.252491, 36.811054, 25.814020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476101, 36.728069, 25.733900>,  <40.844269, 37.366520, 25.692318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.476101, 36.728069, 25.733900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804699, 36.662640, 25.952402>,  <41.001858, 36.623383, 26.083504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804699, 36.662640, 25.952402>,  <40.476101, 36.728069, 25.733900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.804699, 36.662640, 25.952402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561029, -0.403163, 0.722984,
		0.101967, -0.900390, -0.422966,
		0.821492, -0.163576, 0.546254,
		41.051147, 36.613567, 26.116278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.223064, 36.232792, 26.211107>,  <40.476101, 36.728069, 25.733900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.223064, 36.232792, 26.211107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.581383, 36.325459, 26.362833>,  <40.796375, 36.381058, 26.453869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.581383, 36.325459, 26.362833>,  <40.223064, 36.232792, 26.211107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.581383, 36.325459, 26.362833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318888, -0.259501, 0.911576,
		0.309613, -0.937545, -0.158584,
		0.895796, 0.231665, 0.379316,
		40.850121, 36.394958, 26.476627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497009, 35.677876, 26.687946>,  <40.223064, 36.232792, 26.211107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.497009, 35.677876, 26.687946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.672920, 36.020374, 26.796341>,  <40.778465, 36.225872, 26.861378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.672920, 36.020374, 26.796341>,  <40.497009, 35.677876, 26.687946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.672920, 36.020374, 26.796341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257205, -0.169018, 0.951461,
		0.860489, -0.488131, 0.145901,
		0.439778, 0.856248, 0.270988,
		40.804855, 36.277248, 26.877638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822826, 35.436676, 27.217571>,  <40.497009, 35.677876, 26.687946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.822826, 35.436676, 27.217571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799686, 35.834194, 27.255581>,  <40.785801, 36.072704, 27.278387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799686, 35.834194, 27.255581>,  <40.822826, 35.436676, 27.217571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799686, 35.834194, 27.255581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286526, -0.107709, 0.951999,
		0.956324, 0.027848, 0.290979,
		-0.057852, 0.993792, 0.095025,
		40.782330, 36.132332, 27.284088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.144352, 35.588280, 27.870661>,  <40.822826, 35.436676, 27.217571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.144352, 35.588280, 27.870661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.915508, 35.906677, 27.791582>,  <40.778202, 36.097713, 27.744135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.915508, 35.906677, 27.791582>,  <41.144352, 35.588280, 27.870661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.915508, 35.906677, 27.791582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333735, -0.005746, 0.942649,
		0.749204, 0.605281, 0.268938,
		-0.572113, 0.795991, -0.197699,
		40.743874, 36.145473, 27.732273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.157082, 35.954319, 28.486088>,  <41.144352, 35.588280, 27.870661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.157082, 35.954319, 28.486088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.855610, 36.154282, 28.315416>,  <40.674725, 36.274261, 28.213015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.855610, 36.154282, 28.315416>,  <41.157082, 35.954319, 28.486088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.855610, 36.154282, 28.315416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222485, 0.416809, 0.881346,
		0.618435, 0.759185, -0.202919,
		-0.753683, 0.499909, -0.426677,
		40.629505, 36.304253, 28.187414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.157375, 36.742527, 28.639799>,  <41.157082, 35.954319, 28.486088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.157375, 36.742527, 28.639799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.779457, 36.648663, 28.548321>,  <40.552708, 36.592342, 28.493433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.779457, 36.648663, 28.548321>,  <41.157375, 36.742527, 28.639799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779457, 36.648663, 28.548321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314641, 0.454837, 0.833141,
		-0.091490, 0.859102, -0.503562,
		-0.944791, -0.234665, -0.228696,
		40.496021, 36.578262, 28.479712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888329, 37.405163, 28.634155>,  <41.157375, 36.742527, 28.639799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888329, 37.405163, 28.634155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.612694, 37.119724, 28.684654>,  <40.447315, 36.948460, 28.714954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.612694, 37.119724, 28.684654>,  <40.888329, 37.405163, 28.634155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.612694, 37.119724, 28.684654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443520, 0.553057, 0.705279,
		-0.573109, 0.430003, -0.697598,
		-0.689083, -0.713601, 0.126247,
		40.405968, 36.905643, 28.722528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345074, 37.767437, 28.744364>,  <40.888329, 37.405163, 28.634155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345074, 37.767437, 28.744364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.222828, 37.412502, 28.882488>,  <40.149483, 37.199543, 28.965363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.222828, 37.412502, 28.882488>,  <40.345074, 37.767437, 28.744364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222828, 37.412502, 28.882488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352601, 0.442347, 0.824623,
		-0.884463, 0.130258, -0.448061,
		-0.305612, -0.887335, 0.345310,
		40.131145, 37.146301, 28.986082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694225, 37.996666, 29.009758>,  <40.345074, 37.767437, 28.744364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694225, 37.996666, 29.009758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.768677, 37.640610, 29.176134>,  <39.813347, 37.426975, 29.275959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.768677, 37.640610, 29.176134>,  <39.694225, 37.996666, 29.009758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768677, 37.640610, 29.176134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296571, 0.352693, 0.887498,
		-0.936697, -0.288547, -0.198343,
		0.186131, -0.890140, 0.415941,
		39.824516, 37.373569, 29.300917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248421, 37.903233, 29.522177>,  <39.694225, 37.996666, 29.009758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248421, 37.903233, 29.522177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487717, 37.610600, 29.652954>,  <39.631294, 37.435020, 29.731421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487717, 37.610600, 29.652954>,  <39.248421, 37.903233, 29.522177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487717, 37.610600, 29.652954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224178, 0.238912, 0.944809,
		-0.769321, -0.638515, -0.021080,
		0.598239, -0.731587, 0.326941,
		39.667187, 37.391125, 29.751036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979828, 37.569656, 30.059227>,  <39.248421, 37.903233, 29.522177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979828, 37.569656, 30.059227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368328, 37.489368, 30.110413>,  <39.601429, 37.441196, 30.141125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368328, 37.489368, 30.110413>,  <38.979828, 37.569656, 30.059227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368328, 37.489368, 30.110413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047569, 0.363073, 0.930546,
		-0.233243, -0.909884, 0.343088,
		0.971254, -0.200722, 0.127966,
		39.659706, 37.429153, 30.148802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031517, 37.149857, 30.670677>,  <38.979828, 37.569656, 30.059227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031517, 37.149857, 30.670677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385231, 37.330673, 30.623873>,  <39.597462, 37.439163, 30.595789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385231, 37.330673, 30.623873>,  <39.031517, 37.149857, 30.670677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385231, 37.330673, 30.623873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066296, 0.369600, 0.926823,
		0.462213, -0.811820, 0.356801,
		0.884287, 0.452044, -0.117014,
		39.650517, 37.466286, 30.588768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333256, 37.242367, 31.374762>,  <39.031517, 37.149857, 30.670677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333256, 37.242367, 31.374762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617695, 37.440380, 31.175049>,  <39.788357, 37.559189, 31.055222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617695, 37.440380, 31.175049>,  <39.333256, 37.242367, 31.374762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617695, 37.440380, 31.175049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319811, 0.404670, 0.856716,
		0.626148, -0.768885, 0.129443,
		0.711097, 0.495034, -0.499281,
		39.831024, 37.588890, 31.025265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065163, 37.012093, 31.625599>,  <39.333256, 37.242367, 31.374762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065163, 37.012093, 31.625599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.090977, 37.371132, 31.451174>,  <40.106464, 37.586555, 31.346519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.090977, 37.371132, 31.451174>,  <40.065163, 37.012093, 31.625599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.090977, 37.371132, 31.451174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356560, 0.387389, 0.850173,
		0.932041, -0.210345, -0.295050,
		0.064531, 0.897599, -0.436064,
		40.110336, 37.640411, 31.320354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683273, 37.231548, 32.000759>,  <40.065163, 37.012093, 31.625599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683273, 37.231548, 32.000759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.490021, 37.549282, 31.853455>,  <40.374069, 37.739922, 31.765072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.490021, 37.549282, 31.853455>,  <40.683273, 37.231548, 32.000759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490021, 37.549282, 31.853455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268470, 0.534749, 0.801229,
		0.833371, 0.288232, -0.471609,
		-0.483132, 0.794334, -0.368263,
		40.345081, 37.787582, 31.742975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.190346, 37.728031, 32.176559>,  <40.683273, 37.231548, 32.000759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.190346, 37.728031, 32.176559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.845699, 37.925812, 32.130722>,  <40.638912, 38.044479, 32.103218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.845699, 37.925812, 32.130722>,  <41.190346, 37.728031, 32.176559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845699, 37.925812, 32.130722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308759, 0.689806, 0.654855,
		0.402846, 0.528851, -0.747015,
		-0.861617, 0.494453, -0.114598,
		40.587215, 38.074146, 32.096344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.412567, 38.328011, 32.343300>,  <41.190346, 37.728031, 32.176559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.412567, 38.328011, 32.343300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.015331, 38.368973, 32.366238>,  <40.776989, 38.393551, 32.380001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.015331, 38.368973, 32.366238>,  <41.412567, 38.328011, 32.343300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015331, 38.368973, 32.366238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105615, 0.566632, 0.817174,
		0.051187, 0.817583, -0.573531,
		-0.993089, 0.102402, 0.057345,
		40.717403, 38.399693, 32.383442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.379028, 39.000027, 32.560303>,  <41.412567, 38.328011, 32.343300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.379028, 39.000027, 32.560303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036671, 38.809456, 32.640755>,  <40.831257, 38.695114, 32.689026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036671, 38.809456, 32.640755>,  <41.379028, 39.000027, 32.560303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.036671, 38.809456, 32.640755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125320, 0.568415, 0.813142,
		-0.501732, 0.670760, -0.546211,
		-0.855897, -0.476430, 0.201132,
		40.779900, 38.666527, 32.701096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853977, 39.500057, 32.642033>,  <41.379028, 39.000027, 32.560303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853977, 39.500057, 32.642033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.779690, 39.172871, 32.859821>,  <40.735119, 38.976559, 32.990494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.779690, 39.172871, 32.859821>,  <40.853977, 39.500057, 32.642033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779690, 39.172871, 32.859821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037108, 0.547875, 0.835737,
		-0.981902, 0.175416, -0.071397,
		-0.185719, -0.817962, 0.544469,
		40.723972, 38.927483, 33.023163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.546154, 39.826656, 33.178726>,  <40.853977, 39.500057, 32.642033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.546154, 39.826656, 33.178726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563335, 39.450012, 33.312305>,  <40.573647, 39.224026, 33.392452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563335, 39.450012, 33.312305>,  <40.546154, 39.826656, 33.178726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563335, 39.450012, 33.312305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101496, 0.328415, 0.939065,
		-0.993908, -0.074232, -0.081462,
		0.042956, -0.941612, 0.333949,
		40.576221, 39.167530, 33.412491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036560, 39.677147, 33.560188>,  <40.546154, 39.826656, 33.178726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036560, 39.677147, 33.560188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275932, 39.387157, 33.696598>,  <40.419556, 39.213165, 33.778442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275932, 39.387157, 33.696598>,  <40.036560, 39.677147, 33.560188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275932, 39.387157, 33.696598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280113, 0.209459, 0.936837,
		-0.750610, -0.656158, -0.077727,
		0.598432, -0.724971, 0.341021,
		40.455463, 39.169666, 33.798904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658665, 39.469051, 34.168667>,  <40.036560, 39.677147, 33.560188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658665, 39.469051, 34.168667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.048771, 39.381012, 34.176720>,  <40.282837, 39.328190, 34.181549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.048771, 39.381012, 34.176720>,  <39.658665, 39.469051, 34.168667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048771, 39.381012, 34.176720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032482, 0.232823, 0.971977,
		-0.218618, -0.947285, 0.234215,
		0.975270, -0.220099, 0.020129,
		40.341351, 39.314983, 34.182758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778683, 39.145660, 34.806004>,  <39.658665, 39.469051, 34.168667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778683, 39.145660, 34.806004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148476, 39.264248, 34.710140>,  <40.370350, 39.335403, 34.652622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148476, 39.264248, 34.710140>,  <39.778683, 39.145660, 34.806004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148476, 39.264248, 34.710140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180518, 0.213262, 0.960173,
		0.335776, -0.930925, 0.143638,
		0.924482, 0.296474, -0.239658,
		40.425819, 39.353191, 34.638245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154697, 38.851048, 35.335285>,  <39.778683, 39.145660, 34.806004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.154697, 38.851048, 35.335285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402538, 39.117416, 35.169083>,  <40.551243, 39.277237, 35.069363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402538, 39.117416, 35.169083>,  <40.154697, 38.851048, 35.335285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402538, 39.117416, 35.169083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225287, 0.356212, 0.906840,
		0.751894, -0.655484, 0.070684,
		0.619598, 0.665923, -0.415506,
		40.588417, 39.317192, 35.044430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.808060, 38.664913, 35.638565>,  <40.154697, 38.851048, 35.335285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.808060, 38.664913, 35.638565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815022, 39.050282, 35.531601>,  <40.819199, 39.281502, 35.467422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815022, 39.050282, 35.531601>,  <40.808060, 38.664913, 35.638565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.815022, 39.050282, 35.531601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328572, 0.247088, 0.911586,
		0.944319, -0.103727, -0.312255,
		0.017401, 0.963425, -0.267412,
		40.820244, 39.339310, 35.451378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502861, 38.972279, 35.806656>,  <40.808060, 38.664913, 35.638565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.502861, 38.972279, 35.806656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.240654, 39.273537, 35.784485>,  <41.083328, 39.454292, 35.771183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.240654, 39.273537, 35.784485>,  <41.502861, 38.972279, 35.806656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240654, 39.273537, 35.784485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354200, 0.371450, 0.858235,
		0.666963, 0.542954, -0.510255,
		-0.655517, 0.753143, -0.055430,
		41.043999, 39.499481, 35.767857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.890659, 39.659817, 35.782547>,  <41.502861, 38.972279, 35.806656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.890659, 39.659817, 35.782547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.517570, 39.689255, 35.923748>,  <41.293716, 39.706917, 36.008469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.517570, 39.689255, 35.923748>,  <41.890659, 39.659817, 35.782547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.517570, 39.689255, 35.923748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338130, 0.518630, 0.785296,
		-0.125285, 0.851825, -0.508623,
		-0.932723, 0.073595, 0.353005,
		41.237755, 39.711334, 36.029648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.924934, 40.300697, 36.084084>,  <41.890659, 39.659817, 35.782547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.924934, 40.300697, 36.084084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.610146, 40.106281, 36.236103>,  <41.421272, 39.989632, 36.327316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.610146, 40.106281, 36.236103>,  <41.924934, 40.300697, 36.084084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.610146, 40.106281, 36.236103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254240, 0.305789, 0.917527,
		-0.562172, 0.818691, -0.117075,
		-0.786972, -0.486043, 0.380050,
		41.374054, 39.960468, 36.350117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.721455, 40.737873, 36.559555>,  <41.924934, 40.300697, 36.084084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.721455, 40.737873, 36.559555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.499958, 40.429996, 36.686638>,  <41.367058, 40.245270, 36.762886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.499958, 40.429996, 36.686638>,  <41.721455, 40.737873, 36.559555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.499958, 40.429996, 36.686638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145431, 0.286285, 0.947043,
		-0.819888, 0.570625, -0.046592,
		-0.553745, -0.769693, 0.317708,
		41.333836, 40.199089, 36.781952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.379513, 41.008167, 37.210621>,  <41.721455, 40.737873, 36.559555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.379513, 41.008167, 37.210621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.372318, 40.610519, 37.253345>,  <41.368004, 40.371933, 37.278980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.372318, 40.610519, 37.253345>,  <41.379513, 41.008167, 37.210621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.372318, 40.610519, 37.253345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206037, 0.100847, 0.973334,
		-0.978379, 0.039510, 0.203011,
		-0.017983, -0.994117, 0.106807,
		41.366924, 40.312283, 37.285389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.921684, 40.904472, 37.747608>,  <41.379513, 41.008167, 37.210621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.921684, 40.904472, 37.747608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135239, 40.566360, 37.738857>,  <41.263371, 40.363495, 37.733608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135239, 40.566360, 37.738857>,  <40.921684, 40.904472, 37.747608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.135239, 40.566360, 37.738857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146085, 0.066725, 0.987019,
		-0.832844, -0.530146, 0.159106,
		0.533881, -0.845276, -0.021875,
		41.295403, 40.312778, 37.732296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690357, 40.488613, 38.284073>,  <40.921684, 40.904472, 37.747608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690357, 40.488613, 38.284073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.050583, 40.334721, 38.203110>,  <41.266716, 40.242386, 38.154530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.050583, 40.334721, 38.203110>,  <40.690357, 40.488613, 38.284073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.050583, 40.334721, 38.203110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206786, -0.030452, 0.977912,
		-0.382396, -0.922526, 0.052133,
		0.900562, -0.384731, -0.202410,
		41.320751, 40.219303, 38.142387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706413, 39.899536, 38.701572>,  <40.690357, 40.488613, 38.284073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706413, 39.899536, 38.701572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.090889, 39.971001, 38.617485>,  <41.321575, 40.013878, 38.567032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.090889, 39.971001, 38.617485>,  <40.706413, 39.899536, 38.701572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.090889, 39.971001, 38.617485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249320, -0.236311, 0.939147,
		0.118110, -0.955112, -0.271684,
		0.961192, 0.178659, -0.210218,
		41.379246, 40.024597, 38.554420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.157505, 39.343414, 38.851685>,  <40.706413, 39.899536, 38.701572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.157505, 39.343414, 38.851685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.418613, 39.646397, 38.856602>,  <41.575279, 39.828186, 38.859554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.418613, 39.646397, 38.856602>,  <41.157505, 39.343414, 38.851685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.418613, 39.646397, 38.856602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276298, -0.253165, 0.927128,
		0.705370, -0.601807, -0.374543,
		0.652774, 0.757453, 0.012297,
		41.614445, 39.873634, 38.860291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.816933, 39.086620, 39.070694>,  <41.157505, 39.343414, 38.851685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.816933, 39.086620, 39.070694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.756680, 39.469963, 39.167747>,  <41.720528, 39.699966, 39.225979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.756680, 39.469963, 39.167747>,  <41.816933, 39.086620, 39.070694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.756680, 39.469963, 39.167747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284464, -0.193034, 0.939052,
		0.946779, 0.210472, -0.243539,
		-0.150633, 0.958352, 0.242632,
		41.711491, 39.757469, 39.240536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.109833, 39.151112, 39.756039>,  <41.816933, 39.086620, 39.070694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.109833, 39.151112, 39.756039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939865, 39.512848, 39.740009>,  <41.837883, 39.729889, 39.730392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939865, 39.512848, 39.740009>,  <42.109833, 39.151112, 39.756039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.939865, 39.512848, 39.740009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061986, 0.015102, 0.997963,
		0.903106, 0.426539, 0.049639,
		-0.424920, 0.904343, -0.040078,
		41.812389, 39.784149, 39.727985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.508167, 39.530094, 40.158928>,  <42.109833, 39.151112, 39.756039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.508167, 39.530094, 40.158928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.137226, 39.679035, 40.144146>,  <41.914661, 39.768402, 40.135277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.137226, 39.679035, 40.144146>,  <42.508167, 39.530094, 40.158928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.137226, 39.679035, 40.144146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098450, -0.147508, 0.984149,
		0.361002, 0.916293, 0.173451,
		-0.927354, 0.372356, -0.036959,
		41.859020, 39.790741, 40.133057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.580711, 40.062496, 40.569389>,  <42.508167, 39.530094, 40.158928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.580711, 40.062496, 40.569389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.217846, 39.894859, 40.554283>,  <42.000126, 39.794277, 40.545219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.217846, 39.894859, 40.554283>,  <42.580711, 40.062496, 40.569389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.217846, 39.894859, 40.554283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107400, -0.317379, 0.942197,
		-0.406850, 0.850667, 0.332924,
		-0.907159, -0.419089, -0.037764,
		41.945698, 39.769131, 40.542953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.170017, 40.297184, 41.216122>,  <42.580711, 40.062496, 40.569389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.170017, 40.297184, 41.216122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.011505, 39.956451, 41.079098>,  <41.916397, 39.752014, 40.996883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.011505, 39.956451, 41.079098>,  <42.170017, 40.297184, 41.216122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.011505, 39.956451, 41.079098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075819, -0.402198, 0.912408,
		-0.914995, 0.335594, 0.223966,
		-0.396277, -0.851830, -0.342565,
		41.892624, 39.700901, 40.976330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.831173, 40.048161, 41.701168>,  <42.170017, 40.297184, 41.216122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.831173, 40.048161, 41.701168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.884712, 39.718540, 41.480976>,  <41.916836, 39.520767, 41.348862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.884712, 39.718540, 41.480976>,  <41.831173, 40.048161, 41.701168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.884712, 39.718540, 41.480976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110474, -0.564426, 0.818058,
		-0.984826, -0.048678, -0.166580,
		0.133844, -0.824047, -0.550484,
		41.924866, 39.471325, 41.315830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286961, 39.458935, 41.726067>,  <41.831173, 40.048161, 41.701168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.286961, 39.458935, 41.726067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.657249, 39.321358, 41.663151>,  <41.879425, 39.238811, 41.625401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.657249, 39.321358, 41.663151>,  <41.286961, 39.458935, 41.726067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.657249, 39.321358, 41.663151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098777, -0.621330, 0.777298,
		-0.365069, -0.704028, -0.609154,
		0.925726, -0.343938, -0.157286,
		41.934967, 39.218178, 41.615963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629845, 38.939240, 41.877113>,  <41.286961, 39.458935, 41.726067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629845, 38.939240, 41.877113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.963806, 38.746067, 41.771503>,  <41.164185, 38.630161, 41.708138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.963806, 38.746067, 41.771503>,  <40.629845, 38.939240, 41.877113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.963806, 38.746067, 41.771503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092545, -0.596052, 0.797595,
		-0.542558, -0.641482, -0.542340,
		0.834905, -0.482932, -0.264026,
		41.214279, 38.601189, 41.692295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476879, 38.266247, 41.653648>,  <40.629845, 38.939240, 41.877113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.476879, 38.266247, 41.653648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831280, 38.316845, 41.832088>,  <41.043919, 38.347202, 41.939152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831280, 38.316845, 41.832088>,  <40.476879, 38.266247, 41.653648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.831280, 38.316845, 41.832088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252101, -0.676041, 0.692397,
		0.389167, -0.725925, -0.567082,
		0.885999, 0.126497, 0.446100,
		41.097080, 38.354794, 41.965919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806316, 37.567486, 41.774990>,  <40.476879, 38.266247, 41.653648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.806316, 37.567486, 41.774990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961697, 37.826881, 42.036850>,  <41.054924, 37.982517, 42.193966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961697, 37.826881, 42.036850>,  <40.806316, 37.567486, 41.774990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961697, 37.826881, 42.036850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314664, -0.574382, 0.755693,
		0.866077, -0.499546, -0.019065,
		0.388454, 0.648489, 0.654648,
		41.078232, 38.021427, 42.233246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014000, 37.143715, 42.257465>,  <40.806316, 37.567486, 41.774990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014000, 37.143715, 42.257465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.043503, 37.493332, 42.449554>,  <41.061203, 37.703102, 42.564808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.043503, 37.493332, 42.449554>,  <41.014000, 37.143715, 42.257465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.043503, 37.493332, 42.449554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367888, -0.423732, 0.827714,
		0.926941, -0.237717, 0.290296,
		0.073754, 0.874038, 0.480227,
		41.065628, 37.755543, 42.593624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.336823, 37.001450, 42.952362>,  <41.014000, 37.143715, 42.257465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.336823, 37.001450, 42.952362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.183994, 37.369579, 42.985897>,  <41.092297, 37.590458, 43.006020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.183994, 37.369579, 42.985897>,  <41.336823, 37.001450, 42.952362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.183994, 37.369579, 42.985897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114510, -0.137170, 0.983906,
		0.917011, 0.366321, 0.157795,
		-0.382070, 0.920322, 0.083839,
		41.069374, 37.645676, 43.011047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.684032, 37.418392, 43.491413>,  <41.336823, 37.001450, 42.952362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.684032, 37.418392, 43.491413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308983, 37.544563, 43.432949>,  <41.083954, 37.620266, 43.397873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308983, 37.544563, 43.432949>,  <41.684032, 37.418392, 43.491413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.308983, 37.544563, 43.432949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199529, -0.143995, 0.969254,
		0.284686, 0.937960, 0.197950,
		-0.937626, 0.315430, -0.146157,
		41.027695, 37.639191, 43.389103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.602249, 37.799477, 44.105980>,  <41.684032, 37.418392, 43.491413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.602249, 37.799477, 44.105980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231010, 37.801456, 43.957058>,  <41.008266, 37.802643, 43.867706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231010, 37.801456, 43.957058>,  <41.602249, 37.799477, 44.105980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231010, 37.801456, 43.957058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372049, 0.026984, 0.927821,
		0.014639, 0.999624, -0.023202,
		-0.928098, 0.004950, -0.372304,
		40.952579, 37.802940, 43.845367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.342876, 38.436684, 44.337574>,  <41.602249, 37.799477, 44.105980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.342876, 38.436684, 44.337574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.059082, 38.168400, 44.251064>,  <40.888805, 38.007427, 44.199158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.059082, 38.168400, 44.251064>,  <41.342876, 38.436684, 44.337574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.059082, 38.168400, 44.251064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396316, 0.125982, 0.909430,
		-0.582720, 0.730939, -0.355197,
		-0.709486, -0.670713, -0.216270,
		40.846237, 37.967186, 44.186184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636879, 38.603424, 44.731182>,  <41.342876, 38.436684, 44.337574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636879, 38.603424, 44.731182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662567, 38.207939, 44.677048>,  <40.677979, 37.970646, 44.644569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662567, 38.207939, 44.677048>,  <40.636879, 38.603424, 44.731182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.662567, 38.207939, 44.677048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455043, -0.149708, 0.877795,
		-0.888150, 0.005209, -0.459523,
		0.064222, -0.988716, -0.135333,
		40.681835, 37.911324, 44.636448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882164, 38.264782, 45.400352>,  <40.636879, 38.603424, 44.731182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882164, 38.264782, 45.400352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704895, 37.918797, 45.494537>,  <40.598534, 37.711205, 45.551048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704895, 37.918797, 45.494537>,  <40.882164, 38.264782, 45.400352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704895, 37.918797, 45.494537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296017, -0.106726, -0.949202,
		0.846153, -0.490358, -0.208745,
		-0.443170, -0.864962, 0.235461,
		40.571945, 37.659309, 45.565174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.205605, 37.766563, 44.919571>,  <40.882164, 38.264782, 45.400352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.205605, 37.766563, 44.919571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.850292, 37.634487, 45.047276>,  <40.637104, 37.555241, 45.123898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.850292, 37.634487, 45.047276>,  <41.205605, 37.766563, 44.919571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.850292, 37.634487, 45.047276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305369, -0.094647, -0.947519,
		0.343075, -0.939158, -0.016756,
		-0.888284, -0.330187, 0.319261,
		40.583805, 37.535431, 45.143055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.089363, 37.113525, 44.695740>,  <41.205605, 37.766563, 44.919571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.089363, 37.113525, 44.695740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.734375, 37.281803, 44.771008>,  <40.521381, 37.382771, 44.816170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.734375, 37.281803, 44.771008>,  <41.089363, 37.113525, 44.695740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.734375, 37.281803, 44.771008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239722, -0.072671, -0.968118,
		-0.393611, -0.904285, 0.165344,
		-0.887471, 0.420699, 0.188173,
		40.468132, 37.408012, 44.827461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432693, 36.764851, 44.353775>,  <41.089363, 37.113525, 44.695740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.432693, 36.764851, 44.353775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388550, 37.159229, 44.403934>,  <40.362064, 37.395859, 44.434032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388550, 37.159229, 44.403934>,  <40.432693, 36.764851, 44.353775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388550, 37.159229, 44.403934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065535, 0.118681, -0.990767,
		-0.991729, -0.117554, 0.051518,
		-0.110355, 0.985949, 0.125403,
		40.355442, 37.455013, 44.441555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936680, 37.005672, 43.820145>,  <40.432693, 36.764851, 44.353775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.936680, 37.005672, 43.820145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162788, 37.312515, 43.941483>,  <40.298454, 37.496620, 44.014286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162788, 37.312515, 43.941483>,  <39.936680, 37.005672, 43.820145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162788, 37.312515, 43.941483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072211, 0.320304, -0.944559,
		-0.821736, 0.555839, 0.125666,
		0.565274, 0.767104, 0.303343,
		40.332371, 37.542645, 44.032486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775681, 37.625359, 43.382225>,  <39.936680, 37.005672, 43.820145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775681, 37.625359, 43.382225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.131783, 37.713600, 43.541615>,  <40.345444, 37.766544, 43.637249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.131783, 37.713600, 43.541615>,  <39.775681, 37.625359, 43.382225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.131783, 37.713600, 43.541615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300975, 0.371694, -0.878212,
		-0.341846, 0.901763, 0.264507,
		0.890256, 0.220603, 0.398471,
		40.398861, 37.779781, 43.661156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942490, 38.368828, 43.226681>,  <39.775681, 37.625359, 43.382225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942490, 38.368828, 43.226681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271908, 38.152069, 43.293758>,  <40.469559, 38.022015, 43.334003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271908, 38.152069, 43.293758>,  <39.942490, 38.368828, 43.226681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271908, 38.152069, 43.293758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456776, 0.458237, -0.762479,
		0.336339, 0.704536, 0.624904,
		0.823548, -0.541893, 0.167692,
		40.518970, 37.989502, 43.344067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469837, 38.811363, 43.106312>,  <39.942490, 38.368828, 43.226681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469837, 38.811363, 43.106312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651409, 38.455189, 43.093269>,  <40.760353, 38.241482, 43.085442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651409, 38.455189, 43.093269>,  <40.469837, 38.811363, 43.106312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.651409, 38.455189, 43.093269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527987, 0.298279, -0.795148,
		0.717758, 0.343725, 0.605538,
		0.453931, -0.890440, -0.032610,
		40.787590, 38.188057, 43.083485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139904, 38.950108, 43.199387>,  <40.469837, 38.811363, 43.106312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139904, 38.950108, 43.199387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105690, 38.605003, 43.000061>,  <41.085163, 38.397942, 42.880466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105690, 38.605003, 43.000061>,  <41.139904, 38.950108, 43.199387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.105690, 38.605003, 43.000061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510010, 0.391742, -0.765786,
		0.855905, -0.319649, 0.406510,
		-0.085535, -0.862764, -0.498318,
		41.080029, 38.346172, 42.850567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.682011, 38.904873, 42.969692>,  <41.139904, 38.950108, 43.199387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.682011, 38.904873, 42.969692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.493649, 38.640972, 42.735435>,  <41.380630, 38.482632, 42.594879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.493649, 38.640972, 42.735435>,  <41.682011, 38.904873, 42.969692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.493649, 38.640972, 42.735435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634900, 0.207460, -0.744220,
		0.612498, -0.722279, 0.321183,
		-0.470902, -0.659752, -0.585644,
		41.352379, 38.443047, 42.559742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.135677, 38.686790, 42.621311>,  <41.682011, 38.904873, 42.969692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.135677, 38.686790, 42.621311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.808044, 38.587971, 42.414207>,  <41.611465, 38.528679, 42.289948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.808044, 38.587971, 42.414207>,  <42.135677, 38.686790, 42.621311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.808044, 38.587971, 42.414207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395439, 0.410708, -0.821552,
		0.415644, -0.877649, -0.238689,
		-0.819066, -0.247086, -0.517765,
		41.562321, 38.513855, 42.258881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.353161, 38.588036, 41.951317>,  <42.135677, 38.686790, 42.621311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.353161, 38.588036, 41.951317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.957615, 38.643707, 41.930267>,  <41.720287, 38.677113, 41.917637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.957615, 38.643707, 41.930267>,  <42.353161, 38.588036, 41.951317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.957615, 38.643707, 41.930267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105768, 0.408723, -0.906509,
		-0.104662, -0.901983, -0.418894,
		-0.988868, 0.139183, -0.052623,
		41.660954, 38.685463, 41.914482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.113522, 38.303825, 41.283958>,  <42.353161, 38.588036, 41.951317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.113522, 38.303825, 41.283958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.888371, 38.606480, 41.417034>,  <41.753281, 38.788071, 41.496880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.888371, 38.606480, 41.417034>,  <42.113522, 38.303825, 41.283958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.888371, 38.606480, 41.417034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106992, 0.332421, -0.937043,
		-0.819588, -0.563032, -0.106158,
		-0.562874, 0.756631, 0.332688,
		41.719509, 38.833469, 41.516842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.617226, 38.352207, 40.828537>,  <42.113522, 38.303825, 41.283958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.617226, 38.352207, 40.828537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.637726, 38.712955, 41.000118>,  <41.650024, 38.929405, 41.103065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.637726, 38.712955, 41.000118>,  <41.617226, 38.352207, 40.828537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.637726, 38.712955, 41.000118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054709, 0.426334, -0.902910,
		-0.997186, 0.069741, -0.027491,
		0.051249, 0.901873, 0.428950,
		41.653099, 38.983517, 41.128803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145416, 38.729168, 40.473961>,  <41.617226, 38.352207, 40.828537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.145416, 38.729168, 40.473961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.375469, 39.012657, 40.637386>,  <41.513500, 39.182751, 40.735443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.375469, 39.012657, 40.637386>,  <41.145416, 38.729168, 40.473961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.375469, 39.012657, 40.637386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130175, 0.572358, -0.809606,
		-0.807635, 0.412447, 0.421441,
		0.575135, 0.708727, 0.408566,
		41.548008, 39.225277, 40.759956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773857, 39.299000, 40.429935>,  <41.145416, 38.729168, 40.473961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773857, 39.299000, 40.429935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.154758, 39.414921, 40.468353>,  <41.383301, 39.484474, 40.491405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.154758, 39.414921, 40.468353>,  <40.773857, 39.299000, 40.429935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.154758, 39.414921, 40.468353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112673, 0.625974, -0.771661,
		-0.283747, 0.723998, 0.628740,
		0.952256, 0.289799, 0.096044,
		41.440434, 39.501862, 40.497166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.016376, 40.041504, 40.515469>,  <40.773857, 39.299000, 40.429935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.016376, 40.041504, 40.515469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.210850, 39.789417, 40.273323>,  <41.327534, 39.638165, 40.128036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.210850, 39.789417, 40.273323>,  <41.016376, 40.041504, 40.515469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.210850, 39.789417, 40.273323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410647, 0.446722, -0.794864,
		0.771361, 0.635036, -0.041607,
		0.486180, -0.630213, -0.605360,
		41.356705, 39.600353, 40.091717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831573, 40.578743, 40.067356>,  <41.016376, 40.041504, 40.515469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831573, 40.578743, 40.067356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.170773, 40.367134, 40.054512>,  <41.374294, 40.240170, 40.046806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.170773, 40.367134, 40.054512>,  <40.831573, 40.578743, 40.067356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.170773, 40.367134, 40.054512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017355, 0.088271, -0.995945,
		0.529712, 0.844004, 0.084035,
		0.848000, -0.529023, -0.032110,
		41.425171, 40.208427, 40.044880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330772, 40.934216, 39.588165>,  <40.831573, 40.578743, 40.067356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.330772, 40.934216, 39.588165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511532, 40.581413, 39.641621>,  <41.619987, 40.369732, 39.673695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511532, 40.581413, 39.641621>,  <41.330772, 40.934216, 39.588165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511532, 40.581413, 39.641621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268702, -0.008274, -0.963188,
		0.850640, 0.471171, 0.233257,
		0.451897, -0.882003, 0.133643,
		41.647102, 40.316811, 39.681713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.946117, 40.990932, 39.432564>,  <41.330772, 40.934216, 39.588165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.946117, 40.990932, 39.432564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.843163, 40.610909, 39.361977>,  <41.781391, 40.382893, 39.319626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.843163, 40.610909, 39.361977>,  <41.946117, 40.990932, 39.432564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.843163, 40.610909, 39.361977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227528, 0.117900, -0.966608,
		0.939140, -0.288941, 0.185819,
		-0.257384, -0.950059, -0.176467,
		41.765945, 40.325890, 39.309036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.481812, 40.804615, 38.931900>,  <41.946117, 40.990932, 39.432564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.481812, 40.804615, 38.931900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.204224, 40.516834, 38.920670>,  <42.037670, 40.344166, 38.913929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.204224, 40.516834, 38.920670>,  <42.481812, 40.804615, 38.931900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.204224, 40.516834, 38.920670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012539, 0.026919, -0.999559,
		0.719894, -0.694017, -0.009659,
		-0.693971, -0.719455, -0.028081,
		41.996033, 40.300999, 38.912247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.594719, 40.208313, 38.428852>,  <42.481812, 40.804615, 38.931900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.594719, 40.208313, 38.428852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.196976, 40.172306, 38.451305>,  <41.958328, 40.150700, 38.464779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.196976, 40.172306, 38.451305>,  <42.594719, 40.208313, 38.428852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.196976, 40.172306, 38.451305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041224, -0.159682, -0.986307,
		0.097751, -0.983055, 0.155070,
		-0.994357, -0.090020, 0.056135,
		41.898670, 40.145302, 38.468147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.503666, 39.740726, 37.847038>,  <42.594719, 40.208313, 38.428852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.503666, 39.740726, 37.847038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.139519, 39.864796, 37.956600>,  <41.921032, 39.939236, 38.022339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.139519, 39.864796, 37.956600>,  <42.503666, 39.740726, 37.847038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.139519, 39.864796, 37.956600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346701, -0.210371, -0.914080,
		-0.225923, -0.927104, 0.299059,
		-0.910361, 0.310196, 0.273901,
		41.866409, 39.957848, 38.038773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.003452, 39.248817, 37.697304>,  <42.503666, 39.740726, 37.847038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.003452, 39.248817, 37.697304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.794567, 39.589943, 37.698498>,  <41.669235, 39.794617, 37.699215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.794567, 39.589943, 37.698498>,  <42.003452, 39.248817, 37.697304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.794567, 39.589943, 37.698498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377442, -0.227984, -0.897531,
		-0.764744, -0.469826, 0.440942,
		-0.522211, 0.852811, 0.002983,
		41.637905, 39.845787, 37.699394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475830, 38.991272, 37.314819>,  <42.003452, 39.248817, 37.697304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.475830, 38.991272, 37.314819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.426105, 39.387947, 37.301544>,  <41.396271, 39.625954, 37.293579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.426105, 39.387947, 37.301544>,  <41.475830, 38.991272, 37.314819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.426105, 39.387947, 37.301544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456020, -0.086802, -0.885727,
		-0.881245, -0.094971, 0.463020,
		-0.124310, 0.991688, -0.033185,
		41.388813, 39.685455, 37.291588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.999027, 39.030674, 36.765354>,  <41.475830, 38.991272, 37.314819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.999027, 39.030674, 36.765354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.274967, 38.764668, 36.879803>,  <42.440533, 38.605064, 36.948471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.274967, 38.764668, 36.879803>,  <41.999027, 39.030674, 36.765354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.274967, 38.764668, 36.879803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477433, -0.120806, 0.870324,
		-0.544210, -0.736997, -0.400836,
		0.689850, -0.665012, 0.286124,
		42.481922, 38.565163, 36.965641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.709034, 38.342667, 36.964184>,  <41.999027, 39.030674, 36.765354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.709034, 38.342667, 36.964184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.065639, 38.358978, 37.144650>,  <42.279602, 38.368767, 37.252930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.065639, 38.358978, 37.144650>,  <41.709034, 38.342667, 36.964184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.065639, 38.358978, 37.144650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432323, -0.220875, 0.874249,
		0.135303, -0.974449, -0.179281,
		0.891509, 0.040781, 0.451162,
		42.333092, 38.371212, 37.279999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.858208, 37.745678, 37.319653>,  <41.709034, 38.342667, 36.964184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.858208, 37.745678, 37.319653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.047596, 38.046913, 37.502377>,  <42.161228, 38.227654, 37.612011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.047596, 38.046913, 37.502377>,  <41.858208, 37.745678, 37.319653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.047596, 38.046913, 37.502377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392270, -0.284072, 0.874887,
		0.788638, -0.593427, 0.160916,
		0.473470, 0.753091, 0.456813,
		42.189636, 38.272842, 37.639420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.117813, 37.421051, 37.925358>,  <41.858208, 37.745678, 37.319653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.117813, 37.421051, 37.925358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.112999, 37.816990, 37.981998>,  <42.110111, 38.054554, 38.015984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.112999, 37.816990, 37.981998>,  <42.117813, 37.421051, 37.925358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.112999, 37.816990, 37.981998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317860, -0.138051, 0.938034,
		0.948061, -0.033716, 0.316296,
		-0.012039, 0.989851, 0.141598,
		42.109386, 38.113945, 38.024479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.665928, 37.163242, 38.490208>,  <42.117813, 37.421051, 37.925358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.665928, 37.163242, 38.490208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.618225, 36.927006, 38.170963>,  <42.589603, 36.785263, 37.979416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.618225, 36.927006, 38.170963>,  <42.665928, 37.163242, 38.490208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.618225, 36.927006, 38.170963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854856, -0.469916, 0.219999,
		-0.504974, -0.656031, 0.560914,
		-0.119256, -0.590595, -0.798108,
		42.582447, 36.749828, 37.931530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.507721, 36.413166, 38.673115>,  <42.665928, 37.163242, 38.490208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.507721, 36.413166, 38.673115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.712299, 36.461170, 38.332756>,  <42.835045, 36.489971, 38.128540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.712299, 36.461170, 38.332756>,  <42.507721, 36.413166, 38.673115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.712299, 36.461170, 38.332756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725479, -0.590997, 0.352707,
		-0.460547, -0.797697, -0.389328,
		0.511445, 0.120012, -0.850894,
		42.865734, 36.497173, 38.077488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.733543, 35.793724, 38.232376>,  <42.507721, 36.413166, 38.673115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.733543, 35.793724, 38.232376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.002544, 36.085674, 38.183361>,  <43.163944, 36.260845, 38.153954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.002544, 36.085674, 38.183361>,  <42.733543, 35.793724, 38.232376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.002544, 36.085674, 38.183361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737065, -0.645557, 0.199979,
		0.066857, -0.224804, -0.972108,
		0.672507, 0.729876, -0.122535,
		43.204296, 36.304638, 38.146599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.367168, 35.683910, 37.771191>,  <42.733543, 35.793724, 38.232376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.367168, 35.683910, 37.771191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.487381, 35.899109, 38.086212>,  <43.559509, 36.028229, 38.275227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.487381, 35.899109, 38.086212>,  <43.367168, 35.683910, 37.771191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.487381, 35.899109, 38.086212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588182, -0.754557, 0.291007,
		0.750816, 0.375769, -0.543206,
		0.300529, 0.537997, 0.787554,
		43.577541, 36.060509, 38.322479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.047207, 35.513962, 37.858593>,  <43.367168, 35.683910, 37.771191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.047207, 35.513962, 37.858593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.943527, 35.611431, 38.232426>,  <43.881321, 35.669914, 38.456726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.943527, 35.611431, 38.232426>,  <44.047207, 35.513962, 37.858593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.943527, 35.611431, 38.232426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555709, -0.753806, 0.350663,
		0.789940, 0.610244, 0.059970,
		-0.259196, 0.243677, 0.934580,
		43.865768, 35.684536, 38.512798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.287842, 34.787781, 37.609371>,  <44.047207, 35.513962, 37.858593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.287842, 34.787781, 37.609371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.123482, 34.554775, 37.328846>,  <44.024868, 34.414970, 37.160530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.123482, 34.554775, 37.328846>,  <44.287842, 34.787781, 37.609371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.123482, 34.554775, 37.328846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585419, 0.421118, -0.692780,
		0.698891, -0.695222, 0.167980,
		-0.410896, -0.582517, -0.701312,
		44.000214, 34.380020, 37.118454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.846218, 34.452980, 37.341148>,  <44.287842, 34.787781, 37.609371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.846218, 34.452980, 37.341148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.574894, 34.460495, 37.047337>,  <44.412098, 34.465004, 36.871048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.574894, 34.460495, 37.047337>,  <44.846218, 34.452980, 37.341148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.574894, 34.460495, 37.047337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692160, 0.351816, -0.630190,
		0.246582, -0.935881, -0.251644,
		-0.678315, 0.018784, -0.734531,
		44.371399, 34.466129, 36.826977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.949486, 33.940426, 36.823570>,  <44.846218, 34.452980, 37.341148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.949486, 33.940426, 36.823570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.832329, 34.316597, 36.754517>,  <44.762035, 34.542301, 36.713085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.832329, 34.316597, 36.754517>,  <44.949486, 33.940426, 36.823570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.832329, 34.316597, 36.754517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855313, 0.176998, -0.486941,
		-0.427379, -0.290279, -0.856204,
		-0.292895, 0.940431, -0.172634,
		44.744461, 34.598724, 36.702724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.947159, 34.108891, 36.057018>,  <44.949486, 33.940426, 36.823570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.947159, 34.108891, 36.057018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.000164, 34.459225, 36.242645>,  <45.031967, 34.669426, 36.354023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.000164, 34.459225, 36.242645>,  <44.947159, 34.108891, 36.057018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.000164, 34.459225, 36.242645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750321, 0.217287, -0.624343,
		-0.647656, 0.430934, -0.628361,
		0.132517, 0.875832, 0.464066,
		45.039921, 34.721973, 36.381866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.891598, 34.604298, 35.554047>,  <44.947159, 34.108891, 36.057018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.891598, 34.604298, 35.554047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.136166, 34.721527, 35.848061>,  <45.282906, 34.791866, 36.024467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.136166, 34.721527, 35.848061>,  <44.891598, 34.604298, 35.554047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.136166, 34.721527, 35.848061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718073, 0.184788, -0.670988,
		-0.332477, 0.938061, -0.097468,
		0.611417, 0.293077, 0.735034,
		45.319592, 34.809452, 36.068569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.260319, 35.124496, 35.142124>,  <44.891598, 34.604298, 35.554047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.260319, 35.124496, 35.142124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.431885, 35.084232, 35.501213>,  <45.534824, 35.060074, 35.716667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.431885, 35.084232, 35.501213>,  <45.260319, 35.124496, 35.142124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.431885, 35.084232, 35.501213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900919, 0.120417, -0.416946,
		-0.066132, 0.987607, 0.142332,
		0.428918, -0.100656, 0.897718,
		45.560558, 35.054035, 35.770527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.566902, 35.779655, 35.353664>,  <45.260319, 35.124496, 35.142124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.566902, 35.779655, 35.353664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.723595, 35.431324, 35.472458>,  <45.817612, 35.222324, 35.543736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.723595, 35.431324, 35.472458>,  <45.566902, 35.779655, 35.353664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.723595, 35.431324, 35.472458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879133, 0.259045, -0.400027,
		0.271423, 0.417793, 0.867052,
		0.391734, -0.870830, 0.296985,
		45.841114, 35.170074, 35.561554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.270111, 35.808704, 35.722332>,  <45.566902, 35.779655, 35.353664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.270111, 35.808704, 35.722332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.226486, 35.478374, 35.501019>,  <46.200310, 35.280178, 35.368233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.226486, 35.478374, 35.501019>,  <46.270111, 35.808704, 35.722332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.226486, 35.478374, 35.501019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901918, 0.151793, -0.404355,
		0.417911, -0.543114, 0.728271,
		-0.109064, -0.825825, -0.553280,
		46.193768, 35.230629, 35.335033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.818039, 35.382362, 35.944107>,  <46.270111, 35.808704, 35.722332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.818039, 35.382362, 35.944107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.665890, 35.345531, 35.576012>,  <46.574600, 35.323433, 35.355156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.665890, 35.345531, 35.576012>,  <46.818039, 35.382362, 35.944107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.665890, 35.345531, 35.576012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899292, 0.195414, -0.391264,
		0.215856, -0.976388, 0.008481,
		-0.380368, -0.092083, -0.920240,
		46.551781, 35.317905, 35.299938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.102497, 35.944607, 35.534729>,  <46.818039, 35.382362, 35.944107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.102497, 35.944607, 35.534729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.029285, 35.561546, 35.445827>,  <46.985359, 35.331711, 35.392487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.029285, 35.561546, 35.445827>,  <47.102497, 35.944607, 35.534729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.029285, 35.561546, 35.445827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783768, -0.005665, -0.621027,
		0.593471, -0.287862, 0.751617,
		-0.183028, -0.957655, -0.222255,
		46.974377, 35.274250, 35.379150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.767941, 35.516495, 35.727150>,  <47.102497, 35.944607, 35.534729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.767941, 35.516495, 35.727150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.541595, 35.418785, 35.412159>,  <47.405788, 35.360161, 35.223164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.541595, 35.418785, 35.412159>,  <47.767941, 35.516495, 35.727150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.541595, 35.418785, 35.412159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802096, 0.058029, -0.594369,
		0.190885, -0.967969, 0.163095,
		-0.565866, -0.244274, -0.787481,
		47.371834, 35.345501, 35.175915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.039955, 34.883450, 35.278442>,  <47.767941, 35.516495, 35.727150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.039955, 34.883450, 35.278442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.808693, 35.108540, 35.042110>,  <47.669937, 35.243595, 34.900311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.808693, 35.108540, 35.042110>,  <48.039955, 34.883450, 35.278442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.808693, 35.108540, 35.042110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784351, 0.183801, -0.592462,
		-0.224798, -0.805951, -0.547640,
		-0.578152, 0.562726, -0.590830,
		47.635246, 35.277359, 34.864861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.766289, 33.619991, 28.192085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.471249, 33.426590, 28.003546>,  <40.294224, 33.310551, 27.890421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.471249, 33.426590, 28.003546>,  <40.766289, 33.619991, 28.192085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471249, 33.426590, 28.003546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566654, 0.063602, 0.821497,
		-0.367215, 0.873031, -0.320890,
		-0.737602, -0.483499, -0.471351,
		40.249969, 33.281540, 27.862141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236336, 34.112648, 28.129519>,  <40.766289, 33.619991, 28.192085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236336, 34.112648, 28.129519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.054466, 33.758999, 28.086443>,  <39.945347, 33.546810, 28.060596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.054466, 33.758999, 28.086443>,  <40.236336, 34.112648, 28.129519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054466, 33.758999, 28.086443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736189, 0.305007, 0.604149,
		-0.501297, 0.353970, -0.789561,
		-0.454672, -0.884125, -0.107690,
		39.918064, 33.493763, 28.054136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494675, 34.266872, 28.136889>,  <40.236336, 34.112648, 28.129519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494675, 34.266872, 28.136889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.543484, 33.877335, 28.213547>,  <39.572769, 33.643612, 28.259541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.543484, 33.877335, 28.213547>,  <39.494675, 34.266872, 28.136889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543484, 33.877335, 28.213547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698939, 0.052779, 0.713232,
		-0.704695, -0.220980, -0.674220,
		0.122026, -0.973849, 0.191645,
		39.580093, 33.585178, 28.271040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835175, 34.066692, 28.244047>,  <39.494675, 34.266872, 28.136889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835175, 34.066692, 28.244047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.063335, 33.782394, 28.408720>,  <39.200233, 33.611816, 28.507524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.063335, 33.782394, 28.408720>,  <38.835175, 34.066692, 28.244047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063335, 33.782394, 28.408720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471659, 0.126909, 0.872601,
		-0.672441, -0.691909, -0.262839,
		0.570404, -0.710743, 0.411684,
		39.234455, 33.569172, 28.532225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330948, 33.710091, 28.569166>,  <38.835175, 34.066692, 28.244047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330948, 33.710091, 28.569166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.662861, 33.574966, 28.746861>,  <38.862007, 33.493893, 28.853477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.662861, 33.574966, 28.746861>,  <38.330948, 33.710091, 28.569166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662861, 33.574966, 28.746861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464342, 0.023675, 0.885339,
		-0.309594, -0.940917, -0.137214,
		0.829782, -0.337810, 0.444237,
		38.911797, 33.473625, 28.880131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057823, 33.150726, 29.074585>,  <38.330948, 33.710091, 28.569166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057823, 33.150726, 29.074585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.424580, 33.271378, 29.179146>,  <38.644634, 33.343769, 29.241882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.424580, 33.271378, 29.179146>,  <38.057823, 33.150726, 29.074585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424580, 33.271378, 29.179146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318237, 0.157162, 0.934893,
		0.240907, -0.940384, 0.240089,
		0.916891, 0.301627, 0.261403,
		38.699646, 33.361866, 29.257566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231968, 32.822266, 29.750582>,  <38.057823, 33.150726, 29.074585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231968, 32.822266, 29.750582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.476143, 33.135357, 29.702087>,  <38.622650, 33.323212, 29.672991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.476143, 33.135357, 29.702087>,  <38.231968, 32.822266, 29.750582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476143, 33.135357, 29.702087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193512, 0.295807, 0.935442,
		0.768061, -0.547569, 0.332039,
		0.610439, 0.782730, -0.121236,
		38.659275, 33.370174, 29.665716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722488, 32.755421, 30.340157>,  <38.231968, 32.822266, 29.750582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722488, 32.755421, 30.340157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.701801, 33.139343, 30.229811>,  <38.689388, 33.369698, 30.163603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.701801, 33.139343, 30.229811>,  <38.722488, 32.755421, 30.340157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701801, 33.139343, 30.229811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199319, 0.260755, 0.944605,
		0.978569, 0.103839, 0.177822,
		-0.051719, 0.959804, -0.275864,
		38.686287, 33.427284, 30.147051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931057, 33.076328, 30.855770>,  <38.722488, 32.755421, 30.340157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931057, 33.076328, 30.855770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.759045, 33.371387, 30.647556>,  <38.655838, 33.548424, 30.522629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.759045, 33.371387, 30.647556>,  <38.931057, 33.076328, 30.855770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759045, 33.371387, 30.647556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136695, 0.516722, 0.845170,
		0.892407, 0.434601, -0.121372,
		-0.430028, 0.737645, -0.520534,
		38.630035, 33.592682, 30.491396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139179, 33.682602, 31.277754>,  <38.931057, 33.076328, 30.855770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139179, 33.682602, 31.277754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.815487, 33.789448, 31.068453>,  <38.621269, 33.853554, 30.942873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.815487, 33.789448, 31.068453>,  <39.139179, 33.682602, 31.277754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815487, 33.789448, 31.068453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254379, 0.643523, 0.721921,
		0.529560, 0.717306, -0.452812,
		-0.809233, 0.267114, -0.523251,
		38.572716, 33.869583, 30.911478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194881, 34.395851, 31.267374>,  <39.139179, 33.682602, 31.277754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194881, 34.395851, 31.267374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.805443, 34.314083, 31.226725>,  <38.571781, 34.265022, 31.202335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.805443, 34.314083, 31.226725>,  <39.194881, 34.395851, 31.267374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805443, 34.314083, 31.226725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218895, 0.709547, 0.669797,
		-0.064812, 0.674355, -0.735557,
		-0.973594, -0.204420, -0.101626,
		38.513363, 34.252758, 31.196238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869072, 34.984814, 31.216721>,  <39.194881, 34.395851, 31.267374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869072, 34.984814, 31.216721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.578373, 34.734093, 31.329111>,  <38.403954, 34.583660, 31.396545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.578373, 34.734093, 31.329111>,  <38.869072, 34.984814, 31.216721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578373, 34.734093, 31.329111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270372, 0.637061, 0.721839,
		-0.631451, 0.448630, -0.632456,
		-0.726752, -0.626805, 0.280976,
		38.360348, 34.546051, 31.413404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310616, 35.436665, 31.291777>,  <38.869072, 34.984814, 31.216721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310616, 35.436665, 31.291777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.244778, 35.105003, 31.505476>,  <38.205276, 34.906006, 31.633696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.244778, 35.105003, 31.505476>,  <38.310616, 35.436665, 31.291777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244778, 35.105003, 31.505476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341186, 0.556059, 0.757886,
		-0.925474, -0.057538, -0.374416,
		-0.164590, -0.829149, 0.534249,
		38.195400, 34.856258, 31.665751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752274, 35.565369, 31.728062>,  <38.310616, 35.436665, 31.291777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752274, 35.565369, 31.728062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.900360, 35.257053, 31.935457>,  <37.989212, 35.072063, 32.059895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.900360, 35.257053, 31.935457>,  <37.752274, 35.565369, 31.728062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900360, 35.257053, 31.935457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353510, 0.399253, 0.845948,
		-0.859052, -0.496474, -0.124670,
		0.370217, -0.770786, 0.518487,
		38.011425, 35.025818, 32.091003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234818, 35.393047, 32.092304>,  <37.752274, 35.565369, 31.728062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234818, 35.393047, 32.092304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.554562, 35.241272, 32.278656>,  <37.746407, 35.150208, 32.390469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.554562, 35.241272, 32.278656>,  <37.234818, 35.393047, 32.092304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554562, 35.241272, 32.278656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311433, 0.401439, 0.861311,
		-0.513840, -0.833589, 0.202724,
		0.799361, -0.379441, 0.465882,
		37.794369, 35.127441, 32.418419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068428, 35.383106, 32.800568>,  <37.234818, 35.393047, 32.092304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068428, 35.383106, 32.800568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.456257, 35.293468, 32.839993>,  <37.688953, 35.239685, 32.863647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.456257, 35.293468, 32.839993>,  <37.068428, 35.383106, 32.800568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456257, 35.293468, 32.839993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033143, 0.278732, 0.959797,
		-0.242555, -0.933858, 0.262823,
		0.969571, -0.224093, 0.098558,
		37.747128, 35.226242, 32.869560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148468, 34.810646, 33.325890>,  <37.068428, 35.383106, 32.800568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148468, 34.810646, 33.325890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.486576, 35.017487, 33.272053>,  <37.689442, 35.141590, 33.239750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.486576, 35.017487, 33.272053>,  <37.148468, 34.810646, 33.325890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486576, 35.017487, 33.272053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067624, 0.353395, 0.933027,
		0.530036, -0.779562, 0.333684,
		0.845274, 0.517103, -0.134595,
		37.740158, 35.172619, 33.231674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534668, 34.546238, 33.916607>,  <37.148468, 34.810646, 33.325890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534668, 34.546238, 33.916607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.718845, 34.885902, 33.813137>,  <37.829353, 35.089703, 33.751057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.718845, 34.885902, 33.813137>,  <37.534668, 34.546238, 33.916607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718845, 34.885902, 33.813137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008072, 0.295394, 0.955341,
		0.887653, -0.437791, 0.142866,
		0.460442, 0.849165, -0.258674,
		37.856979, 35.140652, 33.735535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067410, 34.613792, 34.389816>,  <37.534668, 34.546238, 33.916607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067410, 34.613792, 34.389816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.990223, 34.977798, 34.243046>,  <37.943909, 35.196201, 34.154984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.990223, 34.977798, 34.243046>,  <38.067410, 34.613792, 34.389816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990223, 34.977798, 34.243046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162277, 0.339210, 0.926608,
		0.967692, 0.238353, 0.082217,
		-0.192971, 0.910013, -0.366930,
		37.932331, 35.250801, 34.132965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405373, 35.068531, 34.925106>,  <38.067410, 34.613792, 34.389816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405373, 35.068531, 34.925106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.166218, 35.318054, 34.723747>,  <38.022724, 35.467766, 34.602932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.166218, 35.318054, 34.723747>,  <38.405373, 35.068531, 34.925106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166218, 35.318054, 34.723747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206027, 0.487313, 0.848575,
		0.774654, 0.611061, -0.162835,
		-0.597883, 0.623804, -0.503394,
		37.986855, 35.505196, 34.572727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522785, 35.832481, 35.184181>,  <38.405373, 35.068531, 34.925106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522785, 35.832481, 35.184181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.152946, 35.816078, 35.032692>,  <37.931042, 35.806236, 34.941799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.152946, 35.816078, 35.032692>,  <38.522785, 35.832481, 35.184181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152946, 35.816078, 35.032692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370521, 0.327724, 0.869086,
		0.088481, 0.943883, -0.318207,
		-0.924600, -0.041005, -0.378725,
		37.875565, 35.803776, 34.919075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274647, 36.555019, 35.171677>,  <38.522785, 35.832481, 35.184181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274647, 36.555019, 35.171677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.973042, 36.292526, 35.160191>,  <37.792080, 36.135029, 35.153297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.973042, 36.292526, 35.160191>,  <38.274647, 36.555019, 35.171677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973042, 36.292526, 35.160191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366518, 0.384045, 0.847451,
		-0.545096, 0.649514, -0.530096,
		-0.754012, -0.656232, -0.028717,
		37.746838, 36.095657, 35.151577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527737, 37.159645, 35.483616>,  <38.274647, 36.555019, 35.171677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527737, 37.159645, 35.483616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.867680, 37.323051, 35.616795>,  <39.071648, 37.421093, 35.696701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.867680, 37.323051, 35.616795>,  <38.527737, 37.159645, 35.483616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867680, 37.323051, 35.616795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506575, -0.459027, -0.729846,
		-0.145320, 0.788931, -0.597051,
		0.849861, 0.408512, 0.332947,
		39.122639, 37.445606, 35.716679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779026, 37.517525, 34.974163>,  <38.527737, 37.159645, 35.483616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779026, 37.517525, 34.974163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.082546, 37.397709, 35.205509>,  <39.264656, 37.325821, 35.344315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.082546, 37.397709, 35.205509>,  <38.779026, 37.517525, 34.974163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082546, 37.397709, 35.205509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364579, -0.540498, -0.758250,
		0.539731, 0.786216, -0.300922,
		0.758797, -0.299541, 0.578362,
		39.310184, 37.307846, 35.379017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326786, 37.621239, 34.502705>,  <38.779026, 37.517525, 34.974163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326786, 37.621239, 34.502705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.449749, 37.366924, 34.785908>,  <39.523525, 37.214336, 34.955830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.449749, 37.366924, 34.785908>,  <39.326786, 37.621239, 34.502705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449749, 37.366924, 34.785908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404057, -0.586415, -0.702037,
		0.861533, 0.501886, 0.076626,
		0.307408, -0.635789, 0.708006,
		39.541973, 37.176186, 34.998310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.063995, 37.727837, 34.383389>,  <39.326786, 37.621239, 34.502705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.063995, 37.727837, 34.383389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.004086, 37.386337, 34.582859>,  <39.968140, 37.181438, 34.702541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.004086, 37.386337, 34.582859>,  <40.063995, 37.727837, 34.383389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004086, 37.386337, 34.582859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548783, -0.491328, -0.676339,
		0.822437, 0.172365, 0.542114,
		-0.149778, -0.853749, 0.498677,
		39.959152, 37.130211, 34.732464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700783, 37.401665, 34.580105>,  <40.063995, 37.727837, 34.383389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.700783, 37.401665, 34.580105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.441410, 37.097408, 34.567719>,  <40.285786, 36.914856, 34.560287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.441410, 37.097408, 34.567719>,  <40.700783, 37.401665, 34.580105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.441410, 37.097408, 34.567719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614349, -0.498837, -0.611340,
		0.449565, -0.415436, 0.790762,
		-0.648434, -0.760641, -0.030963,
		40.246880, 36.869217, 34.558430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139183, 36.805790, 34.327362>,  <40.700783, 37.401665, 34.580105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139183, 36.805790, 34.327362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.782902, 36.623989, 34.323856>,  <40.569134, 36.514908, 34.321754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.782902, 36.623989, 34.323856>,  <41.139183, 36.805790, 34.327362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.782902, 36.623989, 34.323856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376073, -0.725890, -0.575893,
		0.255385, -0.516244, 0.817478,
		-0.890701, -0.454506, -0.008764,
		40.515690, 36.487637, 34.321228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.325996, 36.005409, 34.429039>,  <41.139183, 36.805790, 34.327362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.325996, 36.005409, 34.429039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.989288, 36.091419, 34.230972>,  <40.787266, 36.143024, 34.112133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.989288, 36.091419, 34.230972>,  <41.325996, 36.005409, 34.429039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.989288, 36.091419, 34.230972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322684, -0.534937, -0.780844,
		-0.432785, -0.817072, 0.380907,
		-0.841767, 0.215026, -0.495169,
		40.736759, 36.155926, 34.082420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.271328, 35.429020, 33.997005>,  <41.325996, 36.005409, 34.429039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.271328, 35.429020, 33.997005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.022614, 35.693810, 33.829590>,  <40.873386, 35.852684, 33.729141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.022614, 35.693810, 33.829590>,  <41.271328, 35.429020, 33.997005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.022614, 35.693810, 33.829590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200163, -0.382343, -0.902080,
		-0.757177, -0.644677, 0.105234,
		-0.621786, 0.661970, -0.418541,
		40.836079, 35.892399, 33.704029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850945, 35.063831, 33.558495>,  <41.271328, 35.429020, 33.997005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.850945, 35.063831, 33.558495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.800636, 35.437344, 33.424488>,  <40.770451, 35.661449, 33.344082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.800636, 35.437344, 33.424488>,  <40.850945, 35.063831, 33.558495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.800636, 35.437344, 33.424488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037498, -0.332986, -0.942186,
		-0.991351, -0.131059, 0.006864,
		-0.125767, 0.933779, -0.335020,
		40.762905, 35.717476, 33.323982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249069, 35.067478, 33.086693>,  <40.850945, 35.063831, 33.558495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249069, 35.067478, 33.086693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.457664, 35.399109, 33.006012>,  <40.582821, 35.598087, 32.957603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.457664, 35.399109, 33.006012>,  <40.249069, 35.067478, 33.086693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457664, 35.399109, 33.006012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009424, -0.241968, -0.970238,
		-0.853208, 0.504064, -0.133996,
		0.521485, 0.829078, -0.201699,
		40.614109, 35.647831, 32.945503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817989, 35.474720, 32.521378>,  <40.249069, 35.067478, 33.086693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.817989, 35.474720, 32.521378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.202190, 35.585857, 32.515106>,  <40.432709, 35.652538, 32.511341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.202190, 35.585857, 32.515106>,  <39.817989, 35.474720, 32.521378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202190, 35.585857, 32.515106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130666, -0.500029, -0.856094,
		-0.245699, 0.820229, -0.516582,
		0.960499, 0.277841, -0.015681,
		40.490341, 35.669209, 32.510403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955612, 35.767391, 31.909414>,  <39.817989, 35.474720, 32.521378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955612, 35.767391, 31.909414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.325348, 35.678238, 32.033295>,  <40.547192, 35.624744, 32.107624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.325348, 35.678238, 32.033295>,  <39.955612, 35.767391, 31.909414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325348, 35.678238, 32.033295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275874, -0.170344, -0.945979,
		0.263602, 0.959846, -0.095967,
		0.924341, -0.222887, 0.309700,
		40.602650, 35.611370, 32.126205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448658, 36.145218, 31.512718>,  <39.955612, 35.767391, 31.909414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.448658, 36.145218, 31.512718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.640125, 35.819649, 31.644413>,  <40.755005, 35.624306, 31.723431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.640125, 35.819649, 31.644413>,  <40.448658, 36.145218, 31.512718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.640125, 35.819649, 31.644413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382692, -0.144078, -0.912573,
		0.790203, 0.562818, 0.242517,
		0.478671, -0.813927, 0.329237,
		40.783726, 35.575470, 31.743183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.142338, 36.150223, 31.190924>,  <40.448658, 36.145218, 31.512718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.142338, 36.150223, 31.190924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.107285, 35.766632, 31.298767>,  <41.086250, 35.536480, 31.363474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.107285, 35.766632, 31.298767>,  <41.142338, 36.150223, 31.190924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.107285, 35.766632, 31.298767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254982, -0.283229, -0.924535,
		0.962966, -0.012276, 0.269342,
		-0.087635, -0.958974, 0.269610,
		41.080994, 35.478939, 31.379650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.746391, 35.832287, 30.958376>,  <41.142338, 36.150223, 31.190924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.746391, 35.832287, 30.958376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.506466, 35.519123, 31.024446>,  <41.362511, 35.331226, 31.064089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.506466, 35.519123, 31.024446>,  <41.746391, 35.832287, 30.958376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.506466, 35.519123, 31.024446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254722, -0.382531, -0.888137,
		0.758513, -0.490641, 0.428870,
		-0.599812, -0.782906, 0.165178,
		41.326523, 35.284252, 31.073999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.120842, 35.181179, 30.911999>,  <41.746391, 35.832287, 30.958376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.120842, 35.181179, 30.911999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.748741, 35.060467, 30.828522>,  <41.525478, 34.988041, 30.778437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.748741, 35.060467, 30.828522>,  <42.120842, 35.181179, 30.911999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.748741, 35.060467, 30.828522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337259, -0.479299, -0.810264,
		0.144497, -0.824136, 0.547649,
		-0.930256, -0.301780, -0.208691,
		41.469666, 34.969933, 30.765915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.196693, 34.493927, 30.819923>,  <42.120842, 35.181179, 30.911999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.196693, 34.493927, 30.819923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.849422, 34.572483, 30.637625>,  <41.641060, 34.619617, 30.528246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.849422, 34.572483, 30.637625>,  <42.196693, 34.493927, 30.819923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.849422, 34.572483, 30.637625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337104, -0.440569, -0.832021,
		-0.364187, -0.875973, 0.316288,
		-0.868176, 0.196390, -0.455744,
		41.588970, 34.631401, 30.500902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919445, 33.862007, 30.503344>,  <42.196693, 34.493927, 30.819923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.919445, 33.862007, 30.503344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.764858, 34.165688, 30.293865>,  <41.672108, 34.347897, 30.168179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.764858, 34.165688, 30.293865>,  <41.919445, 33.862007, 30.503344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.764858, 34.165688, 30.293865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221950, -0.474572, -0.851774,
		-0.895198, -0.445418, 0.014903,
		-0.386469, 0.759199, -0.523697,
		41.648918, 34.393448, 30.136757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.285847, 33.545311, 29.888817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.443382, 33.893562, 29.770903>,  <41.537903, 34.102512, 29.700153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.443382, 33.893562, 29.770903>,  <41.285847, 33.545311, 29.888817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.443382, 33.893562, 29.770903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072002, -0.348943, -0.934374,
		-0.916354, 0.346769, -0.200115,
		0.393841, 0.870626, -0.294788,
		41.561535, 34.154751, 29.682467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970417, 33.641926, 29.148281>,  <41.285847, 33.545311, 29.888817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.970417, 33.641926, 29.148281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.209793, 33.961628, 29.126150>,  <41.353420, 34.153450, 29.112871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.209793, 33.961628, 29.126150>,  <40.970417, 33.641926, 29.148281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.209793, 33.961628, 29.126150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136391, -0.169683, -0.976015,
		-0.789473, 0.576540, -0.210557,
		0.598439, 0.799256, -0.055325,
		41.389324, 34.201405, 29.109552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790810, 34.223183, 28.676123>,  <40.970417, 33.641926, 29.148281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790810, 34.223183, 28.676123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.185585, 34.260956, 28.728336>,  <41.422451, 34.283619, 28.759665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.185585, 34.260956, 28.728336>,  <40.790810, 34.223183, 28.676123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185585, 34.260956, 28.728336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148549, -0.219717, -0.964188,
		-0.062367, 0.970983, -0.230874,
		0.986936, 0.094430, 0.130536,
		41.481667, 34.289284, 28.767496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.007885, 34.517532, 28.050667>,  <40.790810, 34.223183, 28.676123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.007885, 34.517532, 28.050667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.361271, 34.395340, 28.192751>,  <41.573303, 34.322025, 28.278002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.361271, 34.395340, 28.192751>,  <41.007885, 34.517532, 28.050667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.361271, 34.395340, 28.192751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309399, -0.188902, -0.931981,
		0.351804, 0.933272, -0.072372,
		0.883463, -0.305482, 0.355210,
		41.626308, 34.303696, 28.299314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.574989, 34.926750, 27.648668>,  <41.007885, 34.517532, 28.050667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.574989, 34.926750, 27.648668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.746902, 34.605629, 27.813980>,  <41.850052, 34.412956, 27.913166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.746902, 34.605629, 27.813980>,  <41.574989, 34.926750, 27.648668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.746902, 34.605629, 27.813980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359961, -0.267427, -0.893818,
		0.828078, 0.532913, 0.174041,
		0.429785, -0.802799, 0.413278,
		41.875839, 34.364788, 27.937963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.235077, 34.886463, 27.390997>,  <41.574989, 34.926750, 27.648668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.235077, 34.886463, 27.390997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.143398, 34.514774, 27.506943>,  <42.088390, 34.291763, 27.576509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.143398, 34.514774, 27.506943>,  <42.235077, 34.886463, 27.390997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.143398, 34.514774, 27.506943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480725, -0.366995, -0.796378,
		0.846389, -0.043179, 0.530812,
		-0.229192, -0.929220, 0.289863,
		42.074642, 34.236008, 27.593903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.767715, 34.583431, 27.106352>,  <42.235077, 34.886463, 27.390997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.767715, 34.583431, 27.106352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.537464, 34.265640, 27.183764>,  <42.399315, 34.074966, 27.230211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.537464, 34.265640, 27.183764>,  <42.767715, 34.583431, 27.106352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.537464, 34.265640, 27.183764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335841, -0.445486, -0.829911,
		0.745564, -0.412724, 0.523253,
		-0.575626, -0.794482, 0.193529,
		42.364777, 34.027294, 27.241823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.205231, 34.004154, 27.087389>,  <42.767715, 34.583431, 27.106352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.205231, 34.004154, 27.087389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.838013, 33.861023, 27.019093>,  <42.617683, 33.775143, 26.978115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.838013, 33.861023, 27.019093>,  <43.205231, 34.004154, 27.087389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.838013, 33.861023, 27.019093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333874, -0.465465, -0.819677,
		0.213832, -0.809505, 0.546788,
		-0.918044, -0.357832, -0.170741,
		42.562599, 33.753674, 26.967871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.311951, 33.320595, 26.898962>,  <43.205231, 34.004154, 27.087389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.311951, 33.320595, 26.898962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.958832, 33.450005, 26.762728>,  <42.746960, 33.527649, 26.680986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.958832, 33.450005, 26.762728>,  <43.311951, 33.320595, 26.898962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.958832, 33.450005, 26.762728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264309, -0.257285, -0.929486,
		-0.388337, -0.910570, 0.141622,
		-0.882799, 0.323522, -0.340585,
		42.693993, 33.547062, 26.660553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.217449, 32.962101, 26.265648>,  <43.311951, 33.320595, 26.898962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.217449, 32.962101, 26.265648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.969265, 33.269024, 26.200823>,  <42.820354, 33.453178, 26.161928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.969265, 33.269024, 26.200823>,  <43.217449, 32.962101, 26.265648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.969265, 33.269024, 26.200823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406767, 0.138197, -0.903018,
		-0.670498, -0.626210, -0.397862,
		-0.620462, 0.767309, -0.162061,
		42.783127, 33.499218, 26.152205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.066040, 32.932281, 25.568113>,  <43.217449, 32.962101, 26.265648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.066040, 32.932281, 25.568113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.921379, 33.296986, 25.645990>,  <42.834583, 33.515808, 25.692717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.921379, 33.296986, 25.645990>,  <43.066040, 32.932281, 25.568113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.921379, 33.296986, 25.645990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221206, 0.286780, -0.932108,
		-0.905691, -0.294030, -0.305400,
		-0.361650, 0.911759, 0.194693,
		42.812885, 33.570515, 25.704399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.734200, 33.023438, 25.074724>,  <43.066040, 32.932281, 25.568113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.734200, 33.023438, 25.074724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.789360, 33.401226, 25.194031>,  <42.822456, 33.627899, 25.265615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.789360, 33.401226, 25.194031>,  <42.734200, 33.023438, 25.074724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.789360, 33.401226, 25.194031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107970, 0.285016, -0.952422,
		-0.984544, 0.163542, -0.062671,
		0.137899, 0.944468, 0.298269,
		42.830730, 33.684566, 25.283512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.300415, 33.463196, 24.677778>,  <42.734200, 33.023438, 25.074724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.300415, 33.463196, 24.677778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.585697, 33.713902, 24.803322>,  <42.756866, 33.864326, 24.878649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.585697, 33.713902, 24.803322>,  <42.300415, 33.463196, 24.677778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.585697, 33.713902, 24.803322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150358, 0.300543, -0.941842,
		-0.684640, 0.718917, 0.120110,
		0.713205, 0.626763, 0.313859,
		42.799660, 33.901932, 24.897480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.130020, 33.985020, 24.296883>,  <42.300415, 33.463196, 24.677778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.130020, 33.985020, 24.296883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.504417, 34.062267, 24.414608>,  <42.729057, 34.108616, 24.485243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.504417, 34.062267, 24.414608>,  <42.130020, 33.985020, 24.296883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.504417, 34.062267, 24.414608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260604, 0.181917, -0.948152,
		-0.236644, 0.964164, 0.119947,
		0.935994, 0.193116, 0.294315,
		42.785217, 34.120201, 24.502903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.346531, 34.747204, 24.096123>,  <42.130020, 33.985020, 24.296883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.346531, 34.747204, 24.096123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.681190, 34.531101, 24.132217>,  <42.881985, 34.401440, 24.153875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.681190, 34.531101, 24.132217>,  <42.346531, 34.747204, 24.096123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.681190, 34.531101, 24.132217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349701, 0.400051, -0.847153,
		0.421582, 0.740324, 0.523631,
		0.836647, -0.540259, 0.090238,
		42.932186, 34.369022, 24.159288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.840092, 35.223274, 23.970734>,  <42.346531, 34.747204, 24.096123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.840092, 35.223274, 23.970734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.019009, 34.872078, 23.902542>,  <43.126358, 34.661362, 23.861628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.019009, 34.872078, 23.902542>,  <42.840092, 35.223274, 23.970734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.019009, 34.872078, 23.902542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181751, 0.275859, -0.943858,
		0.875727, 0.391195, 0.282965,
		0.447291, -0.877991, -0.170477,
		43.153194, 34.608681, 23.851398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.454720, 35.404125, 23.667570>,  <42.840092, 35.223274, 23.970734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.454720, 35.404125, 23.667570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.423538, 35.018265, 23.566874>,  <43.404831, 34.786747, 23.506454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.423538, 35.018265, 23.566874>,  <43.454720, 35.404125, 23.667570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.423538, 35.018265, 23.566874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223481, 0.229177, -0.947383,
		0.971586, -0.130112, 0.197716,
		-0.077954, -0.964650, -0.251742,
		43.400150, 34.728870, 23.491350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.981518, 35.310486, 23.269957>,  <43.454720, 35.404125, 23.667570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.981518, 35.310486, 23.269957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.755150, 34.994743, 23.174747>,  <43.619331, 34.805298, 23.117622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.755150, 34.994743, 23.174747>,  <43.981518, 35.310486, 23.269957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.755150, 34.994743, 23.174747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321815, 0.054310, -0.945244,
		0.759061, -0.611529, 0.223292,
		-0.565916, -0.789356, -0.238024,
		43.585377, 34.757938, 23.103340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.357384, 34.954151, 22.733274>,  <43.981518, 35.310486, 23.269957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.357384, 34.954151, 22.733274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.974274, 34.843418, 22.702188>,  <43.744408, 34.776978, 22.683537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.974274, 34.843418, 22.702188>,  <44.357384, 34.954151, 22.733274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.974274, 34.843418, 22.702188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054504, 0.090595, -0.994395,
		0.282321, -0.956638, -0.071681,
		-0.957770, -0.276832, -0.077717,
		43.686943, 34.760368, 22.678873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.411945, 34.556095, 22.162331>,  <44.357384, 34.954151, 22.733274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.411945, 34.556095, 22.162331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.018776, 34.622467, 22.194155>,  <43.782875, 34.662292, 22.213249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.018776, 34.622467, 22.194155>,  <44.411945, 34.556095, 22.162331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.018776, 34.622467, 22.194155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076783, 0.023085, -0.996781,
		-0.167237, -0.985867, -0.009950,
		-0.982922, 0.165935, 0.079558,
		43.723900, 34.672249, 22.218021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.139706, 34.128296, 21.757259>,  <44.411945, 34.556095, 22.162331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.139706, 34.128296, 21.757259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.852955, 34.405693, 21.785999>,  <43.680904, 34.572132, 21.803244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.852955, 34.405693, 21.785999>,  <44.139706, 34.128296, 21.757259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.852955, 34.405693, 21.785999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163225, -0.066744, -0.984329,
		-0.677825, -0.717369, 0.161042,
		-0.716876, 0.693489, 0.071852,
		43.637894, 34.613739, 21.807554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.640320, 33.840553, 21.367588>,  <44.139706, 34.128296, 21.757259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.640320, 33.840553, 21.367588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.574902, 34.234516, 21.390266>,  <43.535652, 34.470894, 21.403873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.574902, 34.234516, 21.390266>,  <43.640320, 33.840553, 21.367588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.574902, 34.234516, 21.390266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178433, 0.026988, -0.983582,
		-0.970265, -0.170977, 0.171326,
		-0.163546, 0.984905, 0.056694,
		43.525837, 34.529987, 21.407274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.991364, 33.911400, 21.091299>,  <43.640320, 33.840553, 21.367588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.991364, 33.911400, 21.091299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.180920, 34.258755, 21.032883>,  <43.294651, 34.467167, 20.997833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.180920, 34.258755, 21.032883>,  <42.991364, 33.911400, 21.091299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.180920, 34.258755, 21.032883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212323, -0.048274, -0.976006,
		-0.854605, 0.493524, 0.161503,
		0.473886, 0.868391, -0.146042,
		43.323086, 34.519272, 20.989071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.527565, 34.332783, 20.662136>,  <42.991364, 33.911400, 21.091299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.527565, 34.332783, 20.662136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.906410, 34.452957, 20.617023>,  <43.133717, 34.525063, 20.589956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.906410, 34.452957, 20.617023>,  <42.527565, 34.332783, 20.662136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.906410, 34.452957, 20.617023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081083, -0.116006, -0.989933,
		-0.310498, 0.946720, -0.085510,
		0.947110, 0.300439, -0.112782,
		43.190544, 34.543087, 20.583189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.237190, 34.073380, 20.007086>,  <42.527565, 34.332783, 20.662136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.237190, 34.073380, 20.007086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.854336, 34.064201, 19.891592>,  <41.624622, 34.058693, 19.822296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.854336, 34.064201, 19.891592>,  <42.237190, 34.073380, 20.007086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.854336, 34.064201, 19.891592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282278, 0.297309, 0.912100,
		0.064913, 0.954506, -0.291042,
		-0.957134, -0.022948, -0.288735,
		41.567196, 34.057316, 19.804972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.906639, 34.682480, 20.281351>,  <42.237190, 34.073380, 20.007086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.906639, 34.682480, 20.281351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.622753, 34.405918, 20.227310>,  <41.452419, 34.239979, 20.194885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.622753, 34.405918, 20.227310>,  <41.906639, 34.682480, 20.281351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.622753, 34.405918, 20.227310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363462, 0.195085, 0.910954,
		-0.603485, 0.695627, -0.389756,
		-0.709720, -0.691408, -0.135103,
		41.409836, 34.198494, 20.186779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362511, 35.010040, 20.540333>,  <41.906639, 34.682480, 20.281351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.362511, 35.010040, 20.540333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.274174, 34.620129, 20.553164>,  <41.221172, 34.386181, 20.560862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.274174, 34.620129, 20.553164>,  <41.362511, 35.010040, 20.540333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.274174, 34.620129, 20.553164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331598, 0.105972, 0.937450,
		-0.917209, 0.196393, -0.346639,
		-0.220842, -0.974782, 0.032075,
		41.207920, 34.327694, 20.562786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723392, 34.981194, 20.773914>,  <41.362511, 35.010040, 20.540333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723392, 34.981194, 20.773914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.859093, 34.611668, 20.844875>,  <40.940514, 34.389950, 20.887451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.859093, 34.611668, 20.844875>,  <40.723392, 34.981194, 20.773914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859093, 34.611668, 20.844875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392918, 0.032188, 0.919010,
		-0.854709, -0.381475, -0.352065,
		0.339247, -0.923818, 0.177400,
		40.960869, 34.334522, 20.898096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119713, 34.561485, 21.125910>,  <40.723392, 34.981194, 20.773914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119713, 34.561485, 21.125910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.457054, 34.372204, 21.227757>,  <40.659458, 34.258636, 21.288864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.457054, 34.372204, 21.227757>,  <40.119713, 34.561485, 21.125910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457054, 34.372204, 21.227757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356294, -0.137725, 0.924168,
		-0.402253, -0.870120, -0.284751,
		0.843355, -0.473204, 0.254618,
		40.710060, 34.230244, 21.304142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.920116, 34.116837, 21.495871>,  <40.119713, 34.561485, 21.125910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.920116, 34.116837, 21.495871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.302986, 34.055496, 21.594097>,  <40.532707, 34.018692, 21.653032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.302986, 34.055496, 21.594097>,  <39.920116, 34.116837, 21.495871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302986, 34.055496, 21.594097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259356, -0.077249, 0.962688,
		-0.128656, -0.985148, -0.113712,
		0.957174, -0.153347, 0.245565,
		40.590137, 34.009491, 21.667767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976494, 33.504555, 21.873924>,  <39.920116, 34.116837, 21.495871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976494, 33.504555, 21.873924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.283413, 33.736801, 21.982838>,  <40.467564, 33.876148, 22.048185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.283413, 33.736801, 21.982838>,  <39.976494, 33.504555, 21.873924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.283413, 33.736801, 21.982838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312426, -0.032343, 0.949391,
		0.560038, -0.813535, 0.156582,
		0.767299, 0.580615, 0.272283,
		40.513603, 33.910984, 22.064522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358753, 33.114616, 22.414541>,  <39.976494, 33.504555, 21.873924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.358753, 33.114616, 22.414541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.448406, 33.502144, 22.456797>,  <40.502197, 33.734661, 22.482149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.448406, 33.502144, 22.456797>,  <40.358753, 33.114616, 22.414541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448406, 33.502144, 22.456797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069731, -0.092176, 0.993298,
		0.972061, -0.229995, 0.046897,
		0.224131, 0.968817, 0.105639,
		40.515644, 33.792789, 22.488489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768997, 33.009232, 22.961874>,  <40.358753, 33.114616, 22.414541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.768997, 33.009232, 22.961874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.638454, 33.387329, 22.960934>,  <40.560127, 33.614189, 22.960369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.638454, 33.387329, 22.960934>,  <40.768997, 33.009232, 22.961874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638454, 33.387329, 22.960934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095149, 0.035326, 0.994836,
		0.940445, 0.324448, -0.101468,
		-0.326358, 0.945244, -0.002352,
		40.540546, 33.670902, 22.960228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.300117, 33.376789, 23.276529>,  <40.768997, 33.009232, 22.961874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.300117, 33.376789, 23.276529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.962456, 33.589203, 23.305944>,  <40.759861, 33.716652, 23.323593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.962456, 33.589203, 23.305944>,  <41.300117, 33.376789, 23.276529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.962456, 33.589203, 23.305944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104655, 0.028697, 0.994095,
		0.525792, 0.846862, -0.079800,
		-0.844151, 0.531038, 0.073539,
		40.709209, 33.748516, 23.328007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.482590, 33.907726, 23.683235>,  <41.300117, 33.376789, 23.276529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.482590, 33.907726, 23.683235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.087830, 33.853951, 23.718903>,  <40.850971, 33.821686, 23.740303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.087830, 33.853951, 23.718903>,  <41.482590, 33.907726, 23.683235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.087830, 33.853951, 23.718903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109809, -0.154918, 0.981806,
		-0.118176, 0.978738, 0.167651,
		-0.986902, -0.134435, 0.089167,
		40.791759, 33.813622, 23.745653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.355556, 34.176109, 24.343540>,  <41.482590, 33.907726, 23.683235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.355556, 34.176109, 24.343540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.016136, 33.976269, 24.273844>,  <40.812485, 33.856365, 24.232027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.016136, 33.976269, 24.273844>,  <41.355556, 34.176109, 24.343540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.016136, 33.976269, 24.273844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016465, -0.354078, 0.935071,
		-0.528856, 0.790588, 0.308680,
		-0.848552, -0.499600, -0.174239,
		40.761570, 33.826389, 24.221573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.929726, 34.314625, 24.971983>,  <41.355556, 34.176109, 24.343540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.929726, 34.314625, 24.971983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.758469, 33.994102, 24.804842>,  <40.655712, 33.801788, 24.704557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.758469, 33.994102, 24.804842>,  <40.929726, 34.314625, 24.971983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758469, 33.994102, 24.804842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107547, -0.413908, 0.903943,
		-0.897287, 0.431959, 0.091035,
		-0.428147, -0.801306, -0.417850,
		40.630024, 33.753712, 24.679487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365929, 34.179165, 25.347754>,  <40.929726, 34.314625, 24.971983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.365929, 34.179165, 25.347754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.436253, 33.830757, 25.164268>,  <40.478447, 33.621712, 25.054178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.436253, 33.830757, 25.164268>,  <40.365929, 34.179165, 25.347754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.436253, 33.830757, 25.164268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072108, -0.476111, 0.876424,
		-0.981780, -0.121005, -0.146511,
		0.175807, -0.871021, -0.458711,
		40.488995, 33.569450, 25.026655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764000, 33.822365, 25.381636>,  <40.365929, 34.179165, 25.347754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764000, 33.822365, 25.381636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.069649, 33.569874, 25.328470>,  <40.253040, 33.418381, 25.296570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.069649, 33.569874, 25.328470>,  <39.764000, 33.822365, 25.381636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069649, 33.569874, 25.328470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224496, -0.453392, 0.862576,
		-0.604743, -0.629277, -0.488156,
		0.764125, -0.631226, -0.132916,
		40.298885, 33.380505, 25.288595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445850, 33.122822, 25.521988>,  <39.764000, 33.822365, 25.381636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445850, 33.122822, 25.521988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.842796, 33.121109, 25.571280>,  <40.080963, 33.120083, 25.600855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.842796, 33.121109, 25.571280>,  <39.445850, 33.122822, 25.521988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842796, 33.121109, 25.571280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115246, -0.387587, 0.914601,
		0.043846, -0.921824, -0.385122,
		0.992369, -0.004282, 0.123230,
		40.140507, 33.119823, 25.608248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654060, 32.414749, 25.813057>,  <39.445850, 33.122822, 25.521988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654060, 32.414749, 25.813057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.914093, 32.702923, 25.909697>,  <40.070114, 32.875828, 25.967680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.914093, 32.702923, 25.909697>,  <39.654060, 32.414749, 25.813057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914093, 32.702923, 25.909697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004265, -0.314486, 0.949253,
		0.759852, -0.618122, -0.201369,
		0.650081, 0.720433, 0.241599,
		40.109119, 32.919052, 25.982176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218525, 32.129890, 26.136555>,  <39.654060, 32.414749, 25.813057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218525, 32.129890, 26.136555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.273617, 32.500687, 26.276104>,  <40.306671, 32.723164, 26.359833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.273617, 32.500687, 26.276104>,  <40.218525, 32.129890, 26.136555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273617, 32.500687, 26.276104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200446, -0.318855, 0.926366,
		0.969975, -0.197520, 0.141896,
		0.137732, 0.926994, 0.348873,
		40.314938, 32.778786, 26.380766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551365, 32.038506, 26.761574>,  <40.218525, 32.129890, 26.136555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551365, 32.038506, 26.761574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.441788, 32.421894, 26.793285>,  <40.376041, 32.651928, 26.812313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.441788, 32.421894, 26.793285>,  <40.551365, 32.038506, 26.761574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.441788, 32.421894, 26.793285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204538, -0.138609, 0.968995,
		0.939745, 0.249232, 0.234015,
		-0.273941, 0.958473, 0.079280,
		40.359604, 32.709435, 26.817070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.947895, 32.463104, 27.338041>,  <40.551365, 32.038506, 26.761574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.947895, 32.463104, 27.338041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.597630, 32.651608, 27.295868>,  <40.387470, 32.764709, 27.270563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.597630, 32.651608, 27.295868>,  <40.947895, 32.463104, 27.338041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.597630, 32.651608, 27.295868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230119, -0.215260, 0.949057,
		0.424559, 0.855321, 0.296943,
		-0.875668, 0.471263, -0.105435,
		40.334930, 32.792988, 27.264238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.819645, 35.280704, 32.413269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.462727, 35.421944, 32.300743>,  <41.248577, 35.506687, 32.233227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.462727, 35.421944, 32.300743>,  <41.819645, 35.280704, 32.413269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.462727, 35.421944, 32.300743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064004, 0.517886, 0.853052,
		0.446899, 0.779176, -0.439505,
		-0.892292, 0.353098, -0.281314,
		41.195038, 35.527874, 32.216351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.792061, 36.021954, 32.474621>,  <41.819645, 35.280704, 32.413269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.792061, 36.021954, 32.474621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.408676, 35.910168, 32.497402>,  <41.178646, 35.843094, 32.511070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.408676, 35.910168, 32.497402>,  <41.792061, 36.021954, 32.474621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.408676, 35.910168, 32.497402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104420, 0.529660, 0.841758,
		-0.265410, 0.800848, -0.536842,
		-0.958464, -0.279468, 0.056952,
		41.121136, 35.826328, 32.514488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.484154, 36.589058, 32.728603>,  <41.792061, 36.021954, 32.474621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.484154, 36.589058, 32.728603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.204762, 36.310738, 32.795513>,  <41.037125, 36.143745, 32.835659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.204762, 36.310738, 32.795513>,  <41.484154, 36.589058, 32.728603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.204762, 36.310738, 32.795513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251656, 0.457641, 0.852780,
		-0.669922, 0.553552, -0.494756,
		-0.698479, -0.695805, 0.167279,
		40.995216, 36.101997, 32.845695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.746006, 36.913929, 32.816975>,  <41.484154, 36.589058, 32.728603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.746006, 36.913929, 32.816975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.782257, 36.557949, 32.995762>,  <40.804008, 36.344360, 33.103035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.782257, 36.557949, 32.995762>,  <40.746006, 36.913929, 32.816975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.782257, 36.557949, 32.995762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394483, 0.380027, 0.836638,
		-0.914423, -0.252145, -0.316628,
		0.090627, -0.889945, 0.446972,
		40.809444, 36.290966, 33.129852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083668, 36.738834, 33.125153>,  <40.746006, 36.913929, 32.816975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083668, 36.738834, 33.125153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.335018, 36.486580, 33.307339>,  <40.485828, 36.335228, 33.416649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.335018, 36.486580, 33.307339>,  <40.083668, 36.738834, 33.125153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.335018, 36.486580, 33.307339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421821, 0.215716, 0.880644,
		-0.653616, -0.745497, -0.130465,
		0.628374, -0.630636, 0.455462,
		40.523529, 36.297390, 33.443977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613468, 36.283482, 33.372482>,  <40.083668, 36.738834, 33.125153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613468, 36.283482, 33.372482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.957237, 36.289967, 33.576889>,  <40.163498, 36.293858, 33.699532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.957237, 36.289967, 33.576889>,  <39.613468, 36.283482, 33.372482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.957237, 36.289967, 33.576889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479249, 0.373707, 0.794143,
		-0.178096, -0.927405, 0.328940,
		0.859420, 0.016210, 0.511014,
		40.215065, 36.294830, 33.730194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342648, 36.035339, 34.038033>,  <39.613468, 36.283482, 33.372482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342648, 36.035339, 34.038033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.700397, 36.197529, 34.113594>,  <39.915047, 36.294842, 34.158932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.700397, 36.197529, 34.113594>,  <39.342648, 36.035339, 34.038033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700397, 36.197529, 34.113594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363974, 0.414164, 0.834261,
		0.260031, -0.814899, 0.518000,
		0.894375, 0.405472, 0.188907,
		39.968712, 36.319172, 34.170265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444939, 35.874985, 34.688530>,  <39.342648, 36.035339, 34.038033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444939, 35.874985, 34.688530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.712006, 36.170200, 34.649479>,  <39.872246, 36.347328, 34.626049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.712006, 36.170200, 34.649479>,  <39.444939, 35.874985, 34.688530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.712006, 36.170200, 34.649479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205243, 0.308537, 0.928806,
		0.715613, -0.600091, 0.357475,
		0.667663, 0.738035, -0.097629,
		39.912304, 36.391609, 34.620190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674492, 35.990322, 35.360893>,  <39.444939, 35.874985, 34.688530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674492, 35.990322, 35.360893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.781059, 36.332119, 35.182514>,  <39.844997, 36.537197, 35.075485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.781059, 36.332119, 35.182514>,  <39.674492, 35.990322, 35.360893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781059, 36.332119, 35.182514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275079, 0.510835, 0.814481,
		0.923772, -0.094318, 0.371146,
		0.266415, 0.854489, -0.445950,
		39.860985, 36.588467, 35.048729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869564, 36.405724, 35.957687>,  <39.674492, 35.990322, 35.360893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869564, 36.405724, 35.957687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.808289, 36.661350, 35.656189>,  <39.771523, 36.814728, 35.475292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.808289, 36.661350, 35.656189>,  <39.869564, 36.405724, 35.957687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808289, 36.661350, 35.656189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204672, 0.725686, 0.656878,
		0.966769, 0.254899, 0.019630,
		-0.153192, 0.639067, -0.753741,
		39.762329, 36.853069, 35.430065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255737, 37.016796, 36.174175>,  <39.869564, 36.405724, 35.957687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255737, 37.016796, 36.174175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.989021, 37.129864, 35.898354>,  <39.828991, 37.197704, 35.732861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.989021, 37.129864, 35.898354>,  <40.255737, 37.016796, 36.174175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989021, 37.129864, 35.898354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321626, 0.725521, 0.608421,
		0.672272, 0.627467, -0.392855,
		-0.666789, 0.282672, -0.689557,
		39.788986, 37.214664, 35.691486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273342, 37.788464, 36.092369>,  <40.255737, 37.016796, 36.174175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273342, 37.788464, 36.092369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.900455, 37.672714, 36.005436>,  <39.676723, 37.603264, 35.953278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.900455, 37.672714, 36.005436>,  <40.273342, 37.788464, 36.092369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900455, 37.672714, 36.005436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361869, 0.753233, 0.549264,
		0.004755, 0.590678, -0.806893,
		-0.932217, -0.289377, -0.217330,
		39.620789, 37.585899, 35.940235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883530, 38.435265, 35.961025>,  <40.273342, 37.788464, 36.092369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883530, 38.435265, 35.961025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.658806, 38.131775, 36.092907>,  <39.523972, 37.949680, 36.172035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.658806, 38.131775, 36.092907>,  <39.883530, 38.435265, 35.961025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658806, 38.131775, 36.092907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333699, 0.572523, 0.748907,
		-0.756978, 0.310722, -0.574836,
		-0.561809, -0.758728, 0.329700,
		39.490265, 37.904156, 36.191818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327560, 38.635952, 36.598278>,  <39.883530, 38.435265, 35.961025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.327560, 38.635952, 36.598278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.015461, 38.878948, 36.538719>,  <39.828201, 39.024746, 36.502983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.015461, 38.878948, 36.538719>,  <40.327560, 38.635952, 36.598278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015461, 38.878948, 36.538719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547217, 0.547706, -0.632908,
		-0.302929, -0.575307, -0.759774,
		-0.780249, 0.607487, -0.148901,
		39.781387, 39.061195, 36.494049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682816, 39.105152, 37.064690>,  <40.327560, 38.635952, 36.598278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682816, 39.105152, 37.064690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.896442, 39.436344, 36.996315>,  <41.024616, 39.635059, 36.955292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.896442, 39.436344, 36.996315>,  <40.682816, 39.105152, 37.064690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.896442, 39.436344, 36.996315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416051, 0.081379, -0.905693,
		-0.735988, 0.554815, 0.387945,
		0.534063, 0.827984, -0.170938,
		41.056660, 39.684738, 36.945034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190334, 39.543743, 36.628040>,  <40.682816, 39.105152, 37.064690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190334, 39.543743, 36.628040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.555305, 39.683151, 36.542244>,  <40.774288, 39.766796, 36.490768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.555305, 39.683151, 36.542244>,  <40.190334, 39.543743, 36.628040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.555305, 39.683151, 36.542244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295551, 0.198682, -0.934438,
		-0.283051, 0.916004, 0.284288,
		0.912432, 0.348516, -0.214489,
		40.829037, 39.787704, 36.477898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.063511, 40.228138, 36.345901>,  <40.190334, 39.543743, 36.628040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.063511, 40.228138, 36.345901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.412685, 40.065853, 36.237549>,  <40.622189, 39.968483, 36.172539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.412685, 40.065853, 36.237549>,  <40.063511, 40.228138, 36.345901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412685, 40.065853, 36.237549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271097, 0.058197, -0.960791,
		0.405571, 0.912145, -0.059185,
		0.872937, -0.405714, -0.270883,
		40.674568, 39.944138, 36.156284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298477, 40.546173, 35.666557>,  <40.063511, 40.228138, 36.345901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298477, 40.546173, 35.666557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.502270, 40.203358, 35.697311>,  <40.624546, 39.997669, 35.715763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.502270, 40.203358, 35.697311>,  <40.298477, 40.546173, 35.666557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502270, 40.203358, 35.697311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308271, -0.265213, -0.913581,
		0.803365, 0.441755, -0.399322,
		0.509484, -0.857038, 0.076883,
		40.655113, 39.946247, 35.720375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.881866, 40.612167, 35.178448>,  <40.298477, 40.546173, 35.666557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.881866, 40.612167, 35.178448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.835098, 40.220673, 35.245861>,  <40.807037, 39.985775, 35.286308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.835098, 40.220673, 35.245861>,  <40.881866, 40.612167, 35.178448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.835098, 40.220673, 35.245861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014680, -0.171381, -0.985095,
		0.993033, -0.112701, 0.034406,
		-0.116918, -0.978737, 0.168532,
		40.800022, 39.927052, 35.296421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281628, 40.287174, 34.628098>,  <40.881866, 40.612167, 35.178448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.281628, 40.287174, 34.628098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.052338, 39.986713, 34.759048>,  <40.914764, 39.806435, 34.837620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.052338, 39.986713, 34.759048>,  <41.281628, 40.287174, 34.628098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.052338, 39.986713, 34.759048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070321, -0.352967, -0.932989,
		0.816375, -0.557835, 0.149508,
		-0.573226, -0.751155, 0.327381,
		40.880371, 39.761368, 34.857262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.552559, 39.776543, 34.242775>,  <41.281628, 40.287174, 34.628098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.552559, 39.776543, 34.242775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.202038, 39.631218, 34.369328>,  <40.991726, 39.544022, 34.445259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.202038, 39.631218, 34.369328>,  <41.552559, 39.776543, 34.242775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202038, 39.631218, 34.369328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063533, -0.563830, -0.823443,
		0.477556, -0.741685, 0.471002,
		-0.876301, -0.363316, 0.316383,
		40.939148, 39.522224, 34.464241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.573769, 38.991272, 34.159397>,  <41.552559, 39.776543, 34.242775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.573769, 38.991272, 34.159397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.188709, 39.099403, 34.165413>,  <40.957672, 39.164284, 34.169022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.188709, 39.099403, 34.165413>,  <41.573769, 38.991272, 34.159397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.188709, 39.099403, 34.165413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203462, -0.685656, -0.698913,
		-0.178624, -0.675869, 0.715049,
		-0.962651, 0.270327, 0.015039,
		40.899914, 39.180500, 34.169926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.280895, 38.372192, 34.296116>,  <41.573769, 38.991272, 34.159397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.280895, 38.372192, 34.296116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.008179, 38.619102, 34.139076>,  <40.844547, 38.767250, 34.044853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.008179, 38.619102, 34.139076>,  <41.280895, 38.372192, 34.296116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.008179, 38.619102, 34.139076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199275, -0.673085, -0.712212,
		-0.703885, -0.407342, 0.581909,
		-0.681788, 0.617275, -0.392601,
		40.803642, 38.804283, 34.021297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763474, 37.944241, 33.898815>,  <41.280895, 38.372192, 34.296116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.763474, 37.944241, 33.898815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.719891, 38.313374, 33.751026>,  <40.693741, 38.534855, 33.662354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.719891, 38.313374, 33.751026>,  <40.763474, 37.944241, 33.898815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.719891, 38.313374, 33.751026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371024, -0.382580, -0.846153,
		-0.922210, 0.044893, 0.384075,
		-0.108953, 0.922831, -0.369475,
		40.687206, 38.590221, 33.640182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137398, 37.977760, 33.674461>,  <40.763474, 37.944241, 33.898815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137398, 37.977760, 33.674461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.314655, 38.264641, 33.459332>,  <40.421009, 38.436768, 33.330254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.314655, 38.264641, 33.459332>,  <40.137398, 37.977760, 33.674461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314655, 38.264641, 33.459332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384743, -0.389723, -0.836713,
		-0.809691, 0.577705, 0.103235,
		0.443140, 0.717198, -0.537823,
		40.447598, 38.479801, 33.297985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693588, 38.032112, 33.049053>,  <40.137398, 37.977760, 33.674461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693588, 38.032112, 33.049053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.997303, 38.266342, 32.935505>,  <40.179531, 38.406879, 32.867374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.997303, 38.266342, 32.935505>,  <39.693588, 38.032112, 33.049053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997303, 38.266342, 32.935505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231184, -0.165039, -0.958810,
		-0.608308, 0.793637, 0.010065,
		0.759286, 0.585579, -0.283871,
		40.225090, 38.442017, 32.850342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437244, 38.467388, 32.645805>,  <39.693588, 38.032112, 33.049053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437244, 38.467388, 32.645805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.824047, 38.441113, 32.547344>,  <40.056129, 38.425346, 32.488270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.824047, 38.441113, 32.547344>,  <39.437244, 38.467388, 32.645805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824047, 38.441113, 32.547344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252556, -0.374132, -0.892323,
		-0.033476, 0.925046, -0.378377,
		0.967003, -0.065690, -0.246151,
		40.114147, 38.421406, 32.473499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426189, 38.694954, 31.903719>,  <39.437244, 38.467388, 32.645805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426189, 38.694954, 31.903719> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.769711, 38.495792, 31.951950>,  <39.975822, 38.376293, 31.980888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.769711, 38.495792, 31.951950>,  <39.426189, 38.694954, 31.903719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769711, 38.495792, 31.951950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112083, -0.412281, -0.904136,
		0.499888, 0.762964, -0.409876,
		0.858807, -0.497907, 0.120579,
		40.027351, 38.346420, 31.988123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070717, 39.291683, 31.720284>,  <39.426189, 38.694954, 31.903719>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070717, 39.291683, 31.720284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.795742, 39.474945, 31.494884>,  <38.630756, 39.584904, 31.359646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.795742, 39.474945, 31.494884>,  <39.070717, 39.291683, 31.720284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795742, 39.474945, 31.494884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707913, -0.249482, 0.660771,
		0.162152, 0.853144, 0.495835,
		-0.687434, 0.458153, -0.563498,
		38.589512, 39.612392, 31.325834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837139, 39.760178, 32.189178>,  <39.070717, 39.291683, 31.720284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837139, 39.760178, 32.189178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.572823, 39.704491, 31.894159>,  <38.414234, 39.671078, 31.717148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.572823, 39.704491, 31.894159>,  <38.837139, 39.760178, 32.189178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572823, 39.704491, 31.894159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723449, -0.143648, 0.675268,
		-0.199953, 0.979788, -0.005793,
		-0.660788, -0.139213, -0.737549,
		38.374588, 39.662727, 31.672894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255257, 40.175880, 32.395191>,  <38.837139, 39.760178, 32.189178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255257, 40.175880, 32.395191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.106449, 39.910603, 32.135414>,  <38.017166, 39.751434, 31.979548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.106449, 39.910603, 32.135414>,  <38.255257, 40.175880, 32.395191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106449, 39.910603, 32.135414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721237, -0.233905, 0.652001,
		-0.584311, 0.710959, -0.391303,
		-0.372018, -0.663193, -0.649444,
		37.994843, 39.711643, 31.940580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489285, 40.344349, 32.374771>,  <38.255257, 40.175880, 32.395191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489285, 40.344349, 32.374771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.549076, 39.974930, 32.233509>,  <37.584949, 39.753277, 32.148754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.549076, 39.974930, 32.233509>,  <37.489285, 40.344349, 32.374771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549076, 39.974930, 32.233509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612349, -0.366895, 0.700298,
		-0.776328, 0.111574, -0.620376,
		0.149477, -0.923547, -0.353153,
		37.593918, 39.697865, 32.127563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830856, 40.090168, 32.386536>,  <37.489285, 40.344349, 32.374771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830856, 40.090168, 32.386536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.073013, 39.772739, 32.362064>,  <37.218307, 39.582283, 32.347382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.073013, 39.772739, 32.362064>,  <36.830856, 40.090168, 32.386536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073013, 39.772739, 32.362064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519195, -0.452004, 0.725347,
		-0.603268, -0.407357, -0.685659,
		0.605396, -0.793569, -0.061181,
		37.254631, 39.534668, 32.343712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443180, 39.528500, 32.330944>,  <36.830856, 40.090168, 32.386536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443180, 39.528500, 32.330944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.787697, 39.411644, 32.497238>,  <36.994408, 39.341530, 32.597015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.787697, 39.411644, 32.497238>,  <36.443180, 39.528500, 32.330944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787697, 39.411644, 32.497238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508054, -0.482278, 0.713645,
		-0.007985, -0.825870, -0.563804,
		0.861288, -0.292142, 0.415736,
		37.046082, 39.324001, 32.621960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435425, 38.767193, 32.587227>,  <36.443180, 39.528500, 32.330944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435425, 38.767193, 32.587227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.739483, 38.941124, 32.780354>,  <36.921917, 39.045483, 32.896229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.739483, 38.941124, 32.780354>,  <36.435425, 38.767193, 32.587227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739483, 38.941124, 32.780354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200139, -0.550253, 0.810658,
		0.618164, -0.712846, -0.331246,
		0.760143, 0.434824, 0.482815,
		36.967525, 39.071571, 32.925198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710777, 38.244072, 32.951077>,  <36.435425, 38.767193, 32.587227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710777, 38.244072, 32.951077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.873791, 38.553707, 33.144863>,  <36.971600, 38.739491, 33.261135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.873791, 38.553707, 33.144863>,  <36.710777, 38.244072, 32.951077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873791, 38.553707, 33.144863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118207, -0.481335, 0.868529,
		0.905509, -0.411219, -0.104656,
		0.407531, 0.774090, 0.484462,
		36.996052, 38.785934, 33.290203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966354, 37.993977, 33.478752>,  <36.710777, 38.244072, 32.951077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966354, 37.993977, 33.478752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.966099, 38.371696, 33.610382>,  <36.965946, 38.598328, 33.689362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.966099, 38.371696, 33.610382>,  <36.966354, 37.993977, 33.478752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966099, 38.371696, 33.610382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266640, -0.317324, 0.910060,
		0.963796, -0.087162, 0.251992,
		-0.000641, 0.944303, 0.329076,
		36.965908, 38.654987, 33.709106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283081, 38.014194, 34.129646>,  <36.966354, 37.993977, 33.478752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283081, 38.014194, 34.129646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.076191, 38.355530, 34.155857>,  <36.952057, 38.560329, 34.171585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.076191, 38.355530, 34.155857>,  <37.283081, 38.014194, 34.129646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076191, 38.355530, 34.155857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370225, -0.292118, 0.881816,
		0.771630, 0.431836, 0.467018,
		-0.517224, 0.853337, 0.065530,
		36.921024, 38.611530, 34.175518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431190, 38.294281, 34.861809>,  <37.283081, 38.014194, 34.129646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431190, 38.294281, 34.861809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.074844, 38.409309, 34.721146>,  <36.861038, 38.478329, 34.636749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.074844, 38.409309, 34.721146>,  <37.431190, 38.294281, 34.861809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074844, 38.409309, 34.721146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402756, -0.141957, 0.904232,
		0.210113, 0.947180, 0.242286,
		-0.890865, 0.287573, -0.351655,
		36.807587, 38.495583, 34.615650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173717, 38.732929, 35.396820>,  <37.431190, 38.294281, 34.861809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173717, 38.732929, 35.396820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.845310, 38.601589, 35.210007>,  <36.648266, 38.522785, 35.097919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.845310, 38.601589, 35.210007>,  <37.173717, 38.732929, 35.396820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845310, 38.601589, 35.210007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366958, -0.323168, 0.872298,
		-0.437350, 0.887552, 0.144835,
		-0.821016, -0.328351, -0.467032,
		36.599007, 38.503082, 35.069897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.711483, 40.549103, 28.222570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373581, 40.374931, 28.098133>,  <40.170837, 40.270428, 28.023470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373581, 40.374931, 28.098133>,  <40.711483, 40.549103, 28.222570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373581, 40.374931, 28.098133> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342575, -0.006587, 0.939467,
		-0.411124, 0.900197, -0.143604,
		-0.844760, -0.435433, -0.311093,
		40.120152, 40.244301, 28.004805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122551, 41.069046, 28.315615>,  <40.711483, 40.549103, 28.222570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122551, 41.069046, 28.315615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965786, 40.701527, 28.296820>,  <39.871727, 40.481014, 28.285543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965786, 40.701527, 28.296820>,  <40.122551, 41.069046, 28.315615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965786, 40.701527, 28.296820> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486460, 0.163608, 0.858247,
		-0.780872, 0.359214, -0.511081,
		-0.391911, -0.918802, -0.046986,
		39.848213, 40.425884, 28.282724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487885, 41.209236, 28.613998>,  <40.122551, 41.069046, 28.315615>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487885, 41.209236, 28.613998> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536285, 40.812202, 28.609304>,  <39.565327, 40.573982, 28.606489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536285, 40.812202, 28.609304>,  <39.487885, 41.209236, 28.613998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536285, 40.812202, 28.609304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599337, -0.082474, 0.796237,
		-0.791299, -0.089314, -0.604871,
		0.121001, -0.992583, -0.011733,
		39.572586, 40.514427, 28.605785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882446, 40.899429, 28.787849>,  <39.487885, 41.209236, 28.613998>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882446, 40.899429, 28.787849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100780, 40.571014, 28.854734>,  <39.231781, 40.373966, 28.894865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100780, 40.571014, 28.854734>,  <38.882446, 40.899429, 28.787849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100780, 40.571014, 28.854734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528687, -0.182661, 0.828930,
		-0.650040, -0.540863, -0.533775,
		0.545837, -0.821037, 0.167210,
		39.264530, 40.324703, 28.904898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483753, 40.234627, 28.896130>,  <38.882446, 40.899429, 28.787849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483753, 40.234627, 28.896130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831787, 40.193325, 29.088913>,  <39.040607, 40.168545, 29.204584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831787, 40.193325, 29.088913>,  <38.483753, 40.234627, 28.896130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831787, 40.193325, 29.088913> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484143, -0.362484, 0.796373,
		0.092476, -0.926253, -0.365382,
		0.870088, -0.103252, 0.481960,
		39.092815, 40.162350, 29.233501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354572, 39.725815, 29.307539>,  <38.483753, 40.234627, 28.896130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354572, 39.725815, 29.307539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694172, 39.847729, 29.480190>,  <38.897934, 39.920876, 29.583780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694172, 39.847729, 29.480190>,  <38.354572, 39.725815, 29.307539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694172, 39.847729, 29.480190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317490, -0.358718, 0.877794,
		0.422367, -0.882287, -0.207788,
		0.849003, 0.304780, 0.431628,
		38.948872, 39.939163, 29.609678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456402, 39.221600, 29.779045>,  <38.354572, 39.725815, 29.307539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456402, 39.221600, 29.779045> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668110, 39.536526, 29.905540>,  <38.795135, 39.725483, 29.981438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668110, 39.536526, 29.905540>,  <38.456402, 39.221600, 29.779045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668110, 39.536526, 29.905540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264289, -0.201196, 0.943224,
		0.806240, -0.582801, 0.101591,
		0.529272, 0.787314, 0.316240,
		38.826893, 39.772720, 30.000412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932625, 38.946320, 30.223396>,  <38.456402, 39.221600, 29.779045>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932625, 38.946320, 30.223396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890877, 39.334164, 30.311909>,  <38.865826, 39.566868, 30.365017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890877, 39.334164, 30.311909>,  <38.932625, 38.946320, 30.223396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890877, 39.334164, 30.311909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261421, -0.241421, 0.934545,
		0.959565, 0.039695, 0.278674,
		-0.104375, 0.969608, 0.221282,
		38.859566, 39.625046, 30.378294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176888, 39.106380, 30.985760>,  <38.932625, 38.946320, 30.223396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176888, 39.106380, 30.985760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915302, 39.401772, 30.920061>,  <38.758350, 39.579006, 30.880642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915302, 39.401772, 30.920061>,  <39.176888, 39.106380, 30.985760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915302, 39.401772, 30.920061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350473, -0.103330, 0.930855,
		0.670447, 0.666310, 0.326392,
		-0.653964, 0.738481, -0.164246,
		38.719112, 39.623314, 30.870787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787445, 38.885658, 31.268053>,  <39.176888, 39.106380, 30.985760>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787445, 38.885658, 31.268053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951565, 38.559731, 31.431868>,  <40.050037, 38.364174, 31.530155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951565, 38.559731, 31.431868>,  <39.787445, 38.885658, 31.268053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951565, 38.559731, 31.431868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035419, -0.462975, -0.885664,
		0.911264, 0.348880, -0.218817,
		0.410297, -0.814823, 0.409535,
		40.074654, 38.315285, 31.554728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329350, 38.771690, 30.813257>,  <39.787445, 38.885658, 31.268053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329350, 38.771690, 30.813257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255291, 38.422947, 30.994627>,  <40.210857, 38.213703, 31.103449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255291, 38.422947, 30.994627>,  <40.329350, 38.771690, 30.813257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.255291, 38.422947, 30.994627> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140327, -0.480126, -0.865902,
		0.972641, -0.096690, 0.211237,
		-0.185144, -0.871854, 0.453422,
		40.199749, 38.161392, 31.130653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658760, 38.344200, 30.385164>,  <40.329350, 38.771690, 30.813257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658760, 38.344200, 30.385164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425159, 38.080177, 30.574169>,  <40.285000, 37.921764, 30.687572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425159, 38.080177, 30.574169>,  <40.658760, 38.344200, 30.385164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.425159, 38.080177, 30.574169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004738, -0.584852, -0.811126,
		0.811739, -0.471460, 0.344682,
		-0.584001, -0.660056, 0.472513,
		40.249958, 37.882160, 30.715923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959625, 37.729279, 30.368038>,  <40.658760, 38.344200, 30.385164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959625, 37.729279, 30.368038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576687, 37.643169, 30.445124>,  <40.346924, 37.591503, 30.491375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576687, 37.643169, 30.445124>,  <40.959625, 37.729279, 30.368038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576687, 37.643169, 30.445124> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019734, -0.616712, -0.786942,
		0.288257, -0.757182, 0.586160,
		-0.957350, -0.215274, 0.192714,
		40.289482, 37.578587, 30.502937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.884045, 37.064041, 30.230261>,  <40.959625, 37.729279, 30.368038>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.884045, 37.064041, 30.230261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499371, 37.173225, 30.220001>,  <40.268566, 37.238735, 30.213846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499371, 37.173225, 30.220001>,  <40.884045, 37.064041, 30.230261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.499371, 37.173225, 30.220001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120415, -0.504572, -0.854931,
		-0.246303, -0.819085, 0.518106,
		-0.961683, 0.272960, -0.025648,
		40.210865, 37.255112, 30.212307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510803, 36.477650, 30.211872>,  <40.884045, 37.064041, 30.230261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510803, 36.477650, 30.211872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266613, 36.759846, 30.067871>,  <40.120098, 36.929165, 29.981470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266613, 36.759846, 30.067871>,  <40.510803, 36.477650, 30.211872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266613, 36.759846, 30.067871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155142, -0.552239, -0.819123,
		-0.776691, -0.444204, 0.446580,
		-0.610477, 0.705489, -0.360004,
		40.083469, 36.971493, 29.959869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205490, 36.172462, 29.771715>,  <40.510803, 36.477650, 30.211872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205490, 36.172462, 29.771715> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.088440, 36.533016, 29.644039>,  <40.018208, 36.749348, 29.567434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.088440, 36.533016, 29.644039>,  <40.205490, 36.172462, 29.771715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.088440, 36.533016, 29.644039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065807, -0.314027, -0.947131,
		-0.953959, -0.298162, 0.032576,
		-0.292629, 0.901380, -0.319190,
		40.000652, 36.803429, 29.548283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595318, 36.008949, 29.380096>,  <40.205490, 36.172462, 29.771715>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595318, 36.008949, 29.380096> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766045, 36.346664, 29.250479>,  <39.868481, 36.549294, 29.172709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766045, 36.346664, 29.250479>,  <39.595318, 36.008949, 29.380096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766045, 36.346664, 29.250479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117212, -0.406949, -0.905900,
		-0.896709, 0.348673, -0.272654,
		0.426819, 0.844287, -0.324046,
		39.894089, 36.599949, 29.153265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333866, 36.072731, 28.834776>,  <39.595318, 36.008949, 29.380096>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333866, 36.072731, 28.834776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647373, 36.319416, 28.805437>,  <39.835476, 36.467426, 28.787834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647373, 36.319416, 28.805437>,  <39.333866, 36.072731, 28.834776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647373, 36.319416, 28.805437> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117250, -0.262906, -0.957671,
		-0.609890, 0.741988, -0.278366,
		0.783764, 0.616712, -0.073346,
		39.882504, 36.504429, 28.783434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268978, 36.307423, 28.211750>,  <39.333866, 36.072731, 28.834776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268978, 36.307423, 28.211750> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649677, 36.392345, 28.300394>,  <39.878098, 36.443298, 28.353580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649677, 36.392345, 28.300394>,  <39.268978, 36.307423, 28.211750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649677, 36.392345, 28.300394> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250229, -0.118768, -0.960874,
		-0.177678, 0.969959, -0.166162,
		0.951744, 0.212305, 0.221610,
		39.935200, 36.456036, 28.366877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544987, 36.773777, 27.763859>,  <39.268978, 36.307423, 28.211750>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544987, 36.773777, 27.763859> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900925, 36.629547, 27.875689>,  <40.114487, 36.543011, 27.942787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900925, 36.629547, 27.875689>,  <39.544987, 36.773777, 27.763859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900925, 36.629547, 27.875689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327661, 0.078598, -0.941521,
		0.317510, 0.929415, 0.188085,
		0.889846, -0.360570, 0.279577,
		40.167877, 36.521378, 27.959562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112919, 37.261639, 27.538548>,  <39.544987, 36.773777, 27.763859>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112919, 37.261639, 27.538548> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316883, 36.920227, 27.581404>,  <40.439262, 36.715382, 27.607117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316883, 36.920227, 27.581404>,  <40.112919, 37.261639, 27.538548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316883, 36.920227, 27.581404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515914, 0.203773, -0.832051,
		0.688347, 0.479549, 0.544253,
		0.509914, -0.853528, 0.107139,
		40.469856, 36.664169, 27.613544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.769592, 37.429390, 27.449209>,  <40.112919, 37.261639, 27.538548>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.769592, 37.429390, 27.449209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.759445, 37.033337, 27.394077>,  <40.753357, 36.795704, 27.360998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.759445, 37.033337, 27.394077>,  <40.769592, 37.429390, 27.449209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.759445, 37.033337, 27.394077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589189, 0.096573, -0.802203,
		0.807597, -0.101556, 0.580925,
		-0.025367, -0.990131, -0.137828,
		40.751835, 36.736298, 27.352730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474514, 37.228607, 27.504438>,  <40.769592, 37.429390, 27.449209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474514, 37.228607, 27.504438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254425, 36.969471, 27.293707>,  <41.122372, 36.813988, 27.167267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254425, 36.969471, 27.293707>,  <41.474514, 37.228607, 27.504438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.254425, 36.969471, 27.293707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676153, 0.024536, -0.736353,
		0.489968, -0.761378, 0.424541,
		-0.550227, -0.647844, -0.526829,
		41.089355, 36.775120, 27.135658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.221790, 33.582275, 24.725080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.297581, 33.897007, 24.960028>,  <37.343056, 34.085846, 25.100996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.297581, 33.897007, 24.960028>,  <37.221790, 33.582275, 24.725080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297581, 33.897007, 24.960028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471861, -0.451631, 0.757217,
		0.861072, -0.420631, 0.285700,
		0.189478, 0.786829, 0.587366,
		37.354424, 34.133057, 25.136238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560852, 33.334473, 25.447676>,  <37.221790, 33.582275, 24.725080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560852, 33.334473, 25.447676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.415955, 33.699215, 25.524935>,  <37.329018, 33.918060, 25.571291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.415955, 33.699215, 25.524935>,  <37.560852, 33.334473, 25.447676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415955, 33.699215, 25.524935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435161, -0.348699, 0.830087,
		0.824267, 0.216643, 0.523116,
		-0.362242, 0.911852, 0.193147,
		37.307281, 33.972771, 25.582878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601456, 33.379852, 26.093508>,  <37.560852, 33.334473, 25.447676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601456, 33.379852, 26.093508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.346283, 33.682590, 26.036619>,  <37.193180, 33.864235, 26.002487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.346283, 33.682590, 26.036619>,  <37.601456, 33.379852, 26.093508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346283, 33.682590, 26.036619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335279, -0.106703, 0.936057,
		0.693279, 0.644821, 0.321824,
		-0.637929, 0.756849, -0.142220,
		37.154903, 33.909645, 25.993954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790489, 33.988308, 26.541338>,  <37.601456, 33.379852, 26.093508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790489, 33.988308, 26.541338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.403435, 33.994579, 26.440598>,  <37.171200, 33.998341, 26.380154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.403435, 33.994579, 26.440598>,  <37.790489, 33.988308, 26.541338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403435, 33.994579, 26.440598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244232, 0.192748, 0.950368,
		0.063442, 0.981123, -0.182682,
		-0.967639, 0.015677, -0.251850,
		37.113144, 33.999283, 26.365042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488281, 34.630989, 26.867552>,  <37.790489, 33.988308, 26.541338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488281, 34.630989, 26.867552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.168716, 34.412029, 26.767874>,  <36.976978, 34.280651, 26.708067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.168716, 34.412029, 26.767874>,  <37.488281, 34.630989, 26.867552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168716, 34.412029, 26.767874> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453624, 0.276341, 0.847267,
		-0.394933, 0.789928, -0.469086,
		-0.798907, -0.547402, -0.249194,
		36.929043, 34.247810, 26.693115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971466, 35.022335, 27.149477>,  <37.488281, 34.630989, 26.867552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971466, 35.022335, 27.149477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.826481, 34.656460, 27.077961>,  <36.739491, 34.436935, 27.035051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.826481, 34.656460, 27.077961>,  <36.971466, 35.022335, 27.149477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826481, 34.656460, 27.077961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450165, 0.003847, 0.892937,
		-0.816070, 0.404146, -0.413154,
		-0.362466, -0.914687, -0.178792,
		36.717739, 34.382053, 27.024323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235954, 35.133194, 27.174637>,  <36.971466, 35.022335, 27.149477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235954, 35.133194, 27.174637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.318039, 34.749058, 27.250143>,  <36.367290, 34.518578, 27.295446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.318039, 34.749058, 27.250143>,  <36.235954, 35.133194, 27.174637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318039, 34.749058, 27.250143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493568, 0.065004, 0.867274,
		-0.845150, -0.271146, -0.460654,
		0.205213, -0.960341, 0.188767,
		36.379604, 34.460957, 27.306772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657345, 34.806404, 27.608727>,  <36.235954, 35.133194, 27.174637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657345, 34.806404, 27.608727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.968319, 34.562592, 27.670773>,  <36.154903, 34.416306, 27.708000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.968319, 34.562592, 27.670773>,  <35.657345, 34.806404, 27.608727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968319, 34.562592, 27.670773> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238706, -0.057777, 0.969372,
		-0.581901, -0.790653, -0.190417,
		0.777439, -0.609532, 0.155113,
		36.201550, 34.379730, 27.717306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427925, 34.440037, 28.142241>,  <35.657345, 34.806404, 27.608727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427925, 34.440037, 28.142241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.799137, 34.291039, 28.142227>,  <36.021866, 34.201641, 28.142220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.799137, 34.291039, 28.142227>,  <35.427925, 34.440037, 28.142241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799137, 34.291039, 28.142227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112761, -0.281019, 0.953055,
		-0.355020, -0.884463, -0.302798,
		0.928033, -0.372497, -0.000034,
		36.077549, 34.179291, 28.142218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391533, 33.803654, 28.494822>,  <35.427925, 34.440037, 28.142241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391533, 33.803654, 28.494822> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.774700, 33.915932, 28.518852>,  <36.004601, 33.983299, 28.533272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.774700, 33.915932, 28.518852>,  <35.391533, 33.803654, 28.494822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774700, 33.915932, 28.518852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004376, -0.223554, 0.974682,
		0.287016, -0.933400, -0.215374,
		0.957916, 0.280692, 0.060079,
		36.062077, 34.000137, 28.536877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717262, 33.335922, 28.920464>,  <35.391533, 33.803654, 28.494822>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717262, 33.335922, 28.920464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.960182, 33.653461, 28.933079>,  <36.105934, 33.843983, 28.940649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.960182, 33.653461, 28.933079>,  <35.717262, 33.335922, 28.920464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960182, 33.653461, 28.933079> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097535, -0.113897, 0.988693,
		0.788460, -0.597360, -0.146598,
		0.607304, 0.793844, 0.031540,
		36.142372, 33.891613, 28.942541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376820, 33.161156, 29.348755>,  <35.717262, 33.335922, 28.920464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376820, 33.161156, 29.348755> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.301735, 33.554020, 29.344355>,  <36.256683, 33.789738, 29.341715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.301735, 33.554020, 29.344355>,  <36.376820, 33.161156, 29.348755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301735, 33.554020, 29.344355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097377, -0.007462, 0.995220,
		0.977386, 0.187885, 0.097041,
		-0.187711, 0.982163, -0.011002,
		36.245422, 33.848667, 29.341055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722626, 33.350475, 29.854048>,  <36.376820, 33.161156, 29.348755>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722626, 33.350475, 29.854048> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.476242, 33.659630, 29.793085>,  <36.328411, 33.845123, 29.756508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.476242, 33.659630, 29.793085>,  <36.722626, 33.350475, 29.854048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476242, 33.659630, 29.793085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242744, -0.002163, 0.970088,
		0.749442, 0.634535, 0.188947,
		-0.615964, 0.772891, -0.152408,
		36.291454, 33.891499, 29.747362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848282, 33.700714, 30.464262>,  <36.722626, 33.350475, 29.854048>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848282, 33.700714, 30.464262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.510853, 33.877987, 30.342951>,  <36.308395, 33.984352, 30.270164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.510853, 33.877987, 30.342951>,  <36.848282, 33.700714, 30.464262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510853, 33.877987, 30.342951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269498, 0.139115, 0.952900,
		0.464499, 0.885571, 0.002083,
		-0.843571, 0.443182, -0.303278,
		36.257782, 34.010941, 30.251966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454914, 34.212997, 30.333338>,  <36.848282, 33.700714, 30.464262>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454914, 34.212997, 30.333338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.800358, 34.121090, 30.512842>,  <38.007626, 34.065945, 30.620544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.800358, 34.121090, 30.512842>,  <37.454914, 34.212997, 30.333338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800358, 34.121090, 30.512842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352287, -0.361722, -0.863163,
		0.360658, 0.903527, -0.231440,
		0.863609, -0.229774, 0.448759,
		38.059441, 34.052158, 30.647470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954132, 34.549770, 29.958900>,  <37.454914, 34.212997, 30.333338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954132, 34.549770, 29.958900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.170944, 34.261982, 30.132597>,  <38.301033, 34.089310, 30.236814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.170944, 34.261982, 30.132597>,  <37.954132, 34.549770, 29.958900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170944, 34.261982, 30.132597> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395410, -0.237608, -0.887239,
		0.741520, 0.652616, 0.155694,
		0.542033, -0.719468, 0.434242,
		38.333553, 34.046143, 30.262869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645565, 34.619732, 29.623081>,  <37.954132, 34.549770, 29.958900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645565, 34.619732, 29.623081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.665646, 34.257156, 29.790815>,  <38.677692, 34.039612, 29.891457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.665646, 34.257156, 29.790815>,  <38.645565, 34.619732, 29.623081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665646, 34.257156, 29.790815> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557643, -0.322885, -0.764709,
		0.828562, 0.272226, 0.489264,
		0.050197, -0.906443, 0.419335,
		38.680706, 33.985222, 29.916616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392872, 34.418083, 29.544628>,  <38.645565, 34.619732, 29.623081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392872, 34.418083, 29.544628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.170547, 34.091152, 29.605354>,  <39.037155, 33.894993, 29.641790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.170547, 34.091152, 29.605354>,  <39.392872, 34.418083, 29.544628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170547, 34.091152, 29.605354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540070, -0.493850, -0.681496,
		0.631982, -0.296789, 0.715902,
		-0.555809, -0.817330, 0.151817,
		39.003803, 33.845955, 29.650900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795719, 33.902966, 29.718805>,  <39.392872, 34.418083, 29.544628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795719, 33.902966, 29.718805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.480141, 33.702427, 29.576700>,  <39.290794, 33.582104, 29.491438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.480141, 33.702427, 29.576700>,  <39.795719, 33.902966, 29.718805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480141, 33.702427, 29.576700> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566637, -0.369989, -0.736228,
		0.237663, -0.782150, 0.575984,
		-0.788948, -0.501348, -0.355262,
		39.243458, 33.552021, 29.470121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064693, 33.246941, 29.455698>,  <39.795719, 33.902966, 29.718805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064693, 33.246941, 29.455698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.710346, 33.308731, 29.280716>,  <39.497738, 33.345806, 29.175726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.710346, 33.308731, 29.280716>,  <40.064693, 33.246941, 29.455698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710346, 33.308731, 29.280716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380784, -0.296538, -0.875825,
		-0.265013, -0.942446, 0.203874,
		-0.885874, 0.154473, -0.437454,
		39.444584, 33.355072, 29.149479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986145, 32.677376, 29.077431>,  <40.064693, 33.246941, 29.455698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986145, 32.677376, 29.077431> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.751301, 32.958221, 28.916264>,  <39.610394, 33.126728, 28.819563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.751301, 32.958221, 28.916264>,  <39.986145, 32.677376, 29.077431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751301, 32.958221, 28.916264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385355, -0.195315, -0.901861,
		-0.711904, -0.684756, -0.155892,
		-0.587107, 0.702112, -0.402919,
		39.575169, 33.168854, 28.795387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665279, 32.364025, 28.570724>,  <39.986145, 32.677376, 29.077431>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665279, 32.364025, 28.570724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.652958, 32.754650, 28.485510>,  <39.645565, 32.989025, 28.434381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.652958, 32.754650, 28.485510>,  <39.665279, 32.364025, 28.570724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.652958, 32.754650, 28.485510> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359151, -0.188087, -0.914130,
		-0.932771, -0.104671, -0.344938,
		-0.030804, 0.976559, -0.213035,
		39.643715, 33.047619, 28.421598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415478, 32.337852, 27.850611>,  <39.665279, 32.364025, 28.570724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415478, 32.337852, 27.850611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.573406, 32.701363, 27.904629>,  <39.668163, 32.919468, 27.937038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.573406, 32.701363, 27.904629>,  <39.415478, 32.337852, 27.850611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573406, 32.701363, 27.904629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423573, -0.049616, -0.904502,
		-0.815291, 0.414321, -0.404523,
		0.394825, 0.908777, 0.135043,
		39.691853, 32.973995, 27.945141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273865, 32.586056, 27.365564>,  <39.415478, 32.337852, 27.850611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273865, 32.586056, 27.365564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.586117, 32.803768, 27.488449>,  <39.773468, 32.934395, 27.562180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.586117, 32.803768, 27.488449>,  <39.273865, 32.586056, 27.365564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586117, 32.803768, 27.488449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282141, 0.131723, -0.950287,
		-0.557688, 0.828498, -0.050737,
		0.780628, 0.544279, 0.307214,
		39.820305, 32.967052, 27.580614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129581, 33.369484, 27.267153>,  <39.273865, 32.586056, 27.365564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129581, 33.369484, 27.267153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.487095, 33.190571, 27.253950>,  <39.701603, 33.083221, 27.246029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.487095, 33.190571, 27.253950>,  <39.129581, 33.369484, 27.267153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487095, 33.190571, 27.253950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194601, 0.453061, -0.869980,
		0.404080, 0.771151, 0.491980,
		0.893784, -0.447281, -0.033006,
		39.755230, 33.056385, 27.244049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680630, 33.850182, 27.096594>,  <39.129581, 33.369484, 27.267153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680630, 33.850182, 27.096594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.846245, 33.500465, 26.995249>,  <39.945614, 33.290638, 26.934443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.846245, 33.500465, 26.995249>,  <39.680630, 33.850182, 27.096594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846245, 33.500465, 26.995249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498199, 0.450608, -0.740777,
		0.761818, 0.180488, 0.622139,
		0.414042, -0.874286, -0.253362,
		39.970459, 33.238178, 26.919241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336113, 33.974628, 26.852034>,  <39.680630, 33.850182, 27.096594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336113, 33.974628, 26.852034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.303345, 33.607006, 26.697824>,  <40.283684, 33.386433, 26.605299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.303345, 33.607006, 26.697824>,  <40.336113, 33.974628, 26.852034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303345, 33.607006, 26.697824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329987, 0.339993, -0.880632,
		0.940424, -0.199362, 0.275423,
		-0.081923, -0.919053, -0.385525,
		40.278767, 33.331291, 26.582167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.901787, 33.771805, 26.495552>,  <40.336113, 33.974628, 26.852034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.901787, 33.771805, 26.495552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.624088, 33.538094, 26.327438>,  <40.457470, 33.397865, 26.226570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.624088, 33.538094, 26.327438>,  <40.901787, 33.771805, 26.495552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624088, 33.538094, 26.327438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332815, 0.257151, -0.907253,
		0.638163, -0.769737, 0.015929,
		-0.694250, -0.584276, -0.420284,
		40.415813, 33.362812, 26.201353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.351143, 33.251190, 26.871632>,  <40.901787, 33.771805, 26.495552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.351143, 33.251190, 26.871632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.736370, 33.348927, 26.916893>,  <41.967506, 33.407566, 26.944050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.736370, 33.348927, 26.916893>,  <41.351143, 33.251190, 26.871632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.736370, 33.348927, 26.916893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148045, 0.129458, 0.980471,
		0.224921, -0.961009, 0.160850,
		0.963064, 0.244342, 0.113155,
		42.025291, 33.422230, 26.950840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.624165, 32.972801, 27.477383>,  <41.351143, 33.251190, 26.871632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.624165, 32.972801, 27.477383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.848354, 33.296803, 27.408377>,  <41.982868, 33.491203, 27.366974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.848354, 33.296803, 27.408377>,  <41.624165, 32.972801, 27.477383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.848354, 33.296803, 27.408377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160249, 0.310442, 0.936988,
		0.812518, -0.497515, 0.303797,
		0.560477, 0.810003, -0.172514,
		42.016499, 33.539803, 27.356623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.044823, 33.017494, 28.038027>,  <41.624165, 32.972801, 27.477383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.044823, 33.017494, 28.038027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.064793, 33.391678, 27.898075>,  <42.076775, 33.616188, 27.814104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.064793, 33.391678, 27.898075>,  <42.044823, 33.017494, 28.038027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.064793, 33.391678, 27.898075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079684, 0.352930, 0.932251,
		0.995569, -0.018662, 0.092161,
		0.049924, 0.935464, -0.349879,
		42.079769, 33.672318, 27.793112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.465996, 33.392681, 28.454779>,  <42.044823, 33.017494, 28.038027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.465996, 33.392681, 28.454779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.266838, 33.690125, 28.276272>,  <42.147343, 33.868591, 28.169168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.266838, 33.690125, 28.276272>,  <42.465996, 33.392681, 28.454779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.266838, 33.690125, 28.276272> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120018, 0.450552, 0.884646,
		0.858893, 0.494020, -0.135081,
		-0.497894, 0.743604, -0.446267,
		42.117470, 33.913204, 28.142391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.739906, 33.899639, 28.832788>,  <42.465996, 33.392681, 28.454779>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.739906, 33.899639, 28.832788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.407299, 34.051918, 28.670977>,  <42.207733, 34.143284, 28.573889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.407299, 34.051918, 28.670977>,  <42.739906, 33.899639, 28.832788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.407299, 34.051918, 28.670977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256253, 0.383238, 0.887391,
		0.492859, 0.841545, -0.221115,
		-0.831519, 0.380697, -0.404531,
		42.157845, 34.166126, 28.549618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.750843, 34.660702, 28.826633>,  <42.739906, 33.899639, 28.832788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.750843, 34.660702, 28.826633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.372387, 34.531410, 28.819235>,  <42.145313, 34.453835, 28.814796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.372387, 34.531410, 28.819235>,  <42.750843, 34.660702, 28.826633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.372387, 34.531410, 28.819235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147824, 0.380467, 0.912904,
		-0.288039, 0.866469, -0.407756,
		-0.946140, -0.323228, -0.018495,
		42.088547, 34.434441, 28.813686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.433968, 34.991379, 29.305660>,  <42.750843, 34.660702, 28.826633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.433968, 34.991379, 29.305660> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.104012, 34.776222, 29.236124>,  <41.906036, 34.647129, 29.194403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.104012, 34.776222, 29.236124>,  <42.433968, 34.991379, 29.305660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.104012, 34.776222, 29.236124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383061, 0.305737, 0.871659,
		-0.415711, 0.785617, -0.458247,
		-0.824893, -0.537895, -0.173841,
		41.856544, 34.614853, 29.183971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.848309, 35.388855, 29.359911>,  <42.433968, 34.991379, 29.305660>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.848309, 35.388855, 29.359911> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.757843, 35.010426, 29.452690>,  <41.703564, 34.783367, 29.508358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.757843, 35.010426, 29.452690>,  <41.848309, 35.388855, 29.359911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.757843, 35.010426, 29.452690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479021, 0.315355, 0.819201,
		-0.848168, 0.074167, -0.524510,
		-0.226165, -0.946071, 0.231946,
		41.689995, 34.726604, 29.522274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.110100, 35.397472, 29.452415>,  <41.848309, 35.388855, 29.359911>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.110100, 35.397472, 29.452415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.277477, 35.104713, 29.667534>,  <41.377903, 34.929058, 29.796604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.277477, 35.104713, 29.667534>,  <41.110100, 35.397472, 29.452415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.277477, 35.104713, 29.667534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502964, 0.306308, 0.808209,
		-0.756260, -0.608684, -0.239946,
		0.418447, -0.731901, 0.537795,
		41.403011, 34.885143, 29.828873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524185, 34.967098, 29.853779>,  <41.110100, 35.397472, 29.452415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524185, 34.967098, 29.853779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.856110, 34.855087, 30.046860>,  <41.055264, 34.787880, 30.162708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.856110, 34.855087, 30.046860>,  <40.524185, 34.967098, 29.853779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.856110, 34.855087, 30.046860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457022, 0.155353, 0.875784,
		-0.320232, -0.947339, 0.000935,
		0.829809, -0.280027, 0.482703,
		41.105053, 34.771080, 30.191671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294857, 34.639023, 30.416563>,  <40.524185, 34.967098, 29.853779>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294857, 34.639023, 30.416563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.658611, 34.759682, 30.531124>,  <40.876865, 34.832077, 30.599861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.658611, 34.759682, 30.531124>,  <40.294857, 34.639023, 30.416563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658611, 34.759682, 30.531124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330524, 0.106008, 0.937825,
		0.252526, -0.947510, 0.196103,
		0.909387, 0.301642, 0.286404,
		40.931427, 34.850174, 30.617044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419533, 34.339035, 31.088234>,  <40.294857, 34.639023, 30.416563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419533, 34.339035, 31.088234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.690834, 34.632294, 31.108126>,  <40.853615, 34.808250, 31.120060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.690834, 34.632294, 31.108126>,  <40.419533, 34.339035, 31.088234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690834, 34.632294, 31.108126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111611, 0.035893, 0.993104,
		0.726307, -0.679121, 0.106171,
		0.678249, 0.733148, 0.049728,
		40.894310, 34.852238, 31.123043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889206, 34.183838, 31.705515>,  <40.419533, 34.339035, 31.088234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.889206, 34.183838, 31.705515> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.926632, 34.573597, 31.623743>,  <40.949089, 34.807453, 31.574680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.926632, 34.573597, 31.623743>,  <40.889206, 34.183838, 31.705515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926632, 34.573597, 31.623743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024135, 0.207489, 0.977940,
		0.995320, -0.086570, 0.042932,
		0.093568, 0.974399, -0.204428,
		40.954700, 34.865917, 31.562414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502132, 34.592060, 32.173523>,  <40.889206, 34.183838, 31.705515>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.502132, 34.592060, 32.173523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.253578, 34.877998, 32.045227>,  <41.104446, 35.049561, 31.968248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.253578, 34.877998, 32.045227>,  <41.502132, 34.592060, 32.173523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.253578, 34.877998, 32.045227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078371, 0.350605, 0.933239,
		0.779579, 0.605033, -0.161836,
		-0.621381, 0.714850, -0.320741,
		41.067165, 35.092453, 31.949005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.943321, 36.800262, 27.124746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.619106, 36.670822, 26.929478>,  <41.424576, 36.593159, 26.812317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.619106, 36.670822, 26.929478>,  <41.943321, 36.800262, 27.124746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.619106, 36.670822, 26.929478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571167, -0.252303, -0.781096,
		0.129596, -0.911936, 0.389331,
		-0.810539, -0.323600, -0.488170,
		41.375946, 36.573742, 26.783026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.224194, 36.313892, 26.673321>,  <41.943321, 36.800262, 27.124746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.224194, 36.313892, 26.673321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.862720, 36.378242, 26.514591>,  <41.645836, 36.416851, 26.419353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.862720, 36.378242, 26.514591>,  <42.224194, 36.313892, 26.673321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.862720, 36.378242, 26.514591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411270, 0.068146, -0.908962,
		-0.119189, -0.984619, -0.127746,
		-0.903687, 0.160877, -0.396822,
		41.591614, 36.426506, 26.395544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.098892, 35.874142, 26.086956>,  <42.224194, 36.313892, 26.673321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.098892, 35.874142, 26.086956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.859200, 36.186310, 26.015553>,  <41.715385, 36.373611, 25.972710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.859200, 36.186310, 26.015553>,  <42.098892, 35.874142, 26.086956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.859200, 36.186310, 26.015553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465910, 0.158626, -0.870497,
		-0.651037, -0.604800, -0.458659,
		-0.599232, 0.780420, -0.178511,
		41.679428, 36.420437, 25.962000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.971157, 35.820084, 25.362707>,  <42.098892, 35.874142, 26.086956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.971157, 35.820084, 25.362707> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.865589, 36.187298, 25.481068>,  <41.802250, 36.407627, 25.552084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.865589, 36.187298, 25.481068>,  <41.971157, 35.820084, 25.362707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.865589, 36.187298, 25.481068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367407, 0.379333, -0.849187,
		-0.891829, -0.115402, -0.437406,
		-0.263921, 0.918035, 0.295901,
		41.786411, 36.462708, 25.569838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581528, 36.113743, 24.758396>,  <41.971157, 35.820084, 25.362707>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.581528, 36.113743, 24.758396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.724072, 36.396152, 25.003195>,  <41.809597, 36.565598, 25.150074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.724072, 36.396152, 25.003195>,  <41.581528, 36.113743, 24.758396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.724072, 36.396152, 25.003195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477632, 0.425297, -0.768759,
		-0.803044, 0.566260, -0.185663,
		0.356356, 0.706025, 0.611996,
		41.830978, 36.607960, 25.186794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.302734, 36.751755, 24.393328>,  <41.581528, 36.113743, 24.758396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.302734, 36.751755, 24.393328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.619568, 36.801716, 24.632328>,  <41.809666, 36.831692, 24.775728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.619568, 36.801716, 24.632328>,  <41.302734, 36.751755, 24.393328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.619568, 36.801716, 24.632328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540456, 0.311514, -0.781580,
		-0.283751, 0.941997, 0.179240,
		0.792081, 0.124903, 0.597500,
		41.857193, 36.839188, 24.811579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626183, 37.284683, 24.065523>,  <41.302734, 36.751755, 24.393328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.626183, 37.284683, 24.065523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.899284, 37.153008, 24.326439>,  <42.063145, 37.074001, 24.482988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.899284, 37.153008, 24.326439>,  <41.626183, 37.284683, 24.065523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.899284, 37.153008, 24.326439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729859, 0.265760, -0.629824,
		0.033977, 0.906094, 0.421709,
		0.682753, -0.329188, 0.652291,
		42.104111, 37.054253, 24.522127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.060196, 37.832172, 24.284044>,  <41.626183, 37.284683, 24.065523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.060196, 37.832172, 24.284044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.296249, 37.511822, 24.324718>,  <42.437881, 37.319611, 24.349123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.296249, 37.511822, 24.324718>,  <42.060196, 37.832172, 24.284044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.296249, 37.511822, 24.324718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433162, 0.207826, -0.877029,
		0.681259, 0.561609, 0.469554,
		0.590133, -0.800876, 0.101684,
		42.473289, 37.271561, 24.355223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.627243, 38.031609, 24.031984>,  <42.060196, 37.832172, 24.284044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.627243, 38.031609, 24.031984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.696491, 37.637699, 24.038380>,  <42.738041, 37.401356, 24.042217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.696491, 37.637699, 24.038380>,  <42.627243, 38.031609, 24.031984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.696491, 37.637699, 24.038380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412451, 0.057747, -0.909148,
		0.894379, 0.163989, 0.416166,
		0.173122, -0.984770, 0.015989,
		42.748428, 37.342266, 24.043177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.363087, 37.920269, 23.824577>,  <42.627243, 38.031609, 24.031984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.363087, 37.920269, 23.824577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.171413, 37.581692, 23.731699>,  <43.056412, 37.378544, 23.675972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.171413, 37.581692, 23.731699>,  <43.363087, 37.920269, 23.824577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.171413, 37.581692, 23.731699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316426, 0.080163, -0.945224,
		0.818694, -0.526407, 0.229425,
		-0.479181, -0.846445, -0.232197,
		43.027660, 37.327759, 23.662041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.936848, 37.645817, 23.393732>,  <43.363087, 37.920269, 23.824577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.936848, 37.645817, 23.393732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.589321, 37.462555, 23.318626>,  <43.380806, 37.352596, 23.273563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.589321, 37.462555, 23.318626>,  <43.936848, 37.645817, 23.393732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.589321, 37.462555, 23.318626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244047, -0.066288, -0.967495,
		0.430816, -0.886397, 0.169403,
		-0.868814, -0.458155, -0.187765,
		43.328678, 37.325108, 23.262297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.072296, 36.942394, 23.161615>,  <43.936848, 37.645817, 23.393732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.072296, 36.942394, 23.161615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.707935, 37.033749, 23.024149>,  <43.489319, 37.088562, 22.941669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.707935, 37.033749, 23.024149>,  <44.072296, 36.942394, 23.161615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.707935, 37.033749, 23.024149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341611, -0.049760, -0.938523,
		-0.231447, -0.972298, -0.032693,
		-0.910898, 0.228387, -0.343664,
		43.434666, 37.102264, 22.921049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.905788, 36.425503, 22.593515>,  <44.072296, 36.942394, 23.161615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.905788, 36.425503, 22.593515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.685207, 36.754936, 22.540445>,  <43.552856, 36.952599, 22.508604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.685207, 36.754936, 22.540445>,  <43.905788, 36.425503, 22.593515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.685207, 36.754936, 22.540445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280704, 0.033431, -0.959212,
		-0.785558, -0.566205, -0.249620,
		-0.551455, 0.823586, -0.132674,
		43.519772, 37.002010, 22.500643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.534698, 36.305141, 22.000315>,  <43.905788, 36.425503, 22.593515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.534698, 36.305141, 22.000315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.607723, 36.693932, 22.059553>,  <43.651539, 36.927208, 22.095097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.607723, 36.693932, 22.059553>,  <43.534698, 36.305141, 22.000315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.607723, 36.693932, 22.059553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432436, 0.055896, -0.899930,
		-0.882990, 0.228333, -0.410113,
		0.182560, 0.971977, 0.148095,
		43.662491, 36.985523, 22.103981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.318989, 35.797951, 21.457386>,  <43.534698, 36.305141, 22.000315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.318989, 35.797951, 21.457386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.376347, 35.402084, 21.457331>,  <43.410759, 35.164566, 21.457296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.376347, 35.402084, 21.457331>,  <43.318989, 35.797951, 21.457386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.376347, 35.402084, 21.457331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306855, -0.044595, 0.950711,
		-0.940893, -0.136281, -0.310079,
		0.143392, -0.989666, -0.000141,
		43.419365, 35.105186, 21.457289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.808529, 35.574375, 21.977922>,  <43.318989, 35.797951, 21.457386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.808529, 35.574375, 21.977922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.039719, 35.251953, 21.926991>,  <43.178432, 35.058498, 21.896431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.039719, 35.251953, 21.926991>,  <42.808529, 35.574375, 21.977922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.039719, 35.251953, 21.926991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090233, -0.218199, 0.971724,
		-0.811051, -0.550143, -0.198846,
		0.577975, -0.806059, -0.127329,
		43.213112, 35.010136, 21.888792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.464661, 34.939198, 22.202023>,  <42.808529, 35.574375, 21.977922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.464661, 34.939198, 22.202023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.859890, 34.882271, 22.225548>,  <43.097027, 34.848114, 22.239662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.859890, 34.882271, 22.225548>,  <42.464661, 34.939198, 22.202023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.859890, 34.882271, 22.225548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107339, -0.362682, 0.925710,
		-0.110410, -0.920982, -0.373632,
		0.988073, -0.142313, 0.058814,
		43.156311, 34.839577, 22.243193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.493141, 34.291862, 22.503519>,  <42.464661, 34.939198, 22.202023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.493141, 34.291862, 22.503519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.865517, 34.427715, 22.557196>,  <43.088943, 34.509228, 22.589401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.865517, 34.427715, 22.557196>,  <42.493141, 34.291862, 22.503519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.865517, 34.427715, 22.557196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002803, -0.360811, 0.932635,
		0.365167, -0.868601, -0.334941,
		0.930938, 0.339629, 0.134191,
		43.144798, 34.529602, 22.597452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.831505, 33.794418, 22.740900>,  <42.493141, 34.291862, 22.503519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.831505, 33.794418, 22.740900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.066223, 34.095688, 22.859831>,  <43.207054, 34.276447, 22.931189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.066223, 34.095688, 22.859831>,  <42.831505, 33.794418, 22.740900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.066223, 34.095688, 22.859831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072650, -0.414680, 0.907063,
		0.806468, -0.510661, -0.298051,
		0.586797, 0.753171, 0.297327,
		43.242264, 34.321640, 22.949028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.252655, 33.470879, 23.294180>,  <42.831505, 33.794418, 22.740900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.252655, 33.470879, 23.294180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.320446, 33.861847, 23.344671>,  <43.361118, 34.096428, 23.374966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.320446, 33.861847, 23.344671>,  <43.252655, 33.470879, 23.294180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.320446, 33.861847, 23.344671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054425, -0.137167, 0.989052,
		0.984031, -0.160748, -0.076442,
		0.169473, 0.977418, 0.126228,
		43.371288, 34.155071, 23.382540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.781216, 33.494034, 23.747667>,  <43.252655, 33.470879, 23.294180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.781216, 33.494034, 23.747667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.583759, 33.841202, 23.769691>,  <43.465286, 34.049503, 23.782906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.583759, 33.841202, 23.769691>,  <43.781216, 33.494034, 23.747667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.583759, 33.841202, 23.769691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086965, -0.112257, 0.989866,
		0.865306, 0.483852, 0.130893,
		-0.493643, 0.867920, 0.055058,
		43.435665, 34.101578, 23.786209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.021877, 33.732479, 24.258394>,  <43.781216, 33.494034, 23.747667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.021877, 33.732479, 24.258394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.673958, 33.925034, 24.215090>,  <43.465206, 34.040565, 24.189108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.673958, 33.925034, 24.215090>,  <44.021877, 33.732479, 24.258394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.673958, 33.925034, 24.215090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131720, -0.015094, 0.991172,
		0.475502, 0.876379, 0.076537,
		-0.869797, 0.481386, -0.108259,
		43.413017, 34.069450, 24.182611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.000061, 34.346779, 24.663034>,  <44.021877, 33.732479, 24.258394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.000061, 34.346779, 24.663034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.604637, 34.296951, 24.629004>,  <43.367382, 34.267056, 24.608585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.604637, 34.296951, 24.629004>,  <44.000061, 34.346779, 24.663034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.604637, 34.296951, 24.629004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114601, 0.253424, 0.960543,
		-0.098097, 0.959301, -0.264800,
		-0.988556, -0.124573, -0.085076,
		43.308071, 34.259579, 24.603481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.748039, 34.732914, 25.261103>,  <44.000061, 34.346779, 24.663034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.748039, 34.732914, 25.261103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.449215, 34.484684, 25.165785>,  <43.269920, 34.335747, 25.108593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.449215, 34.484684, 25.165785>,  <43.748039, 34.732914, 25.261103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.449215, 34.484684, 25.165785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339720, 0.048286, 0.939286,
		-0.571389, 0.782661, -0.246894,
		-0.747064, -0.620573, -0.238296,
		43.225094, 34.298512, 25.094296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.144852, 34.922001, 25.685915>,  <43.748039, 34.732914, 25.261103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.144852, 34.922001, 25.685915> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.050602, 34.553902, 25.560938>,  <42.994053, 34.333042, 25.485952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.050602, 34.553902, 25.560938>,  <43.144852, 34.922001, 25.685915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.050602, 34.553902, 25.560938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427549, -0.190556, 0.883680,
		-0.872746, 0.341797, -0.348553,
		-0.235620, -0.920252, -0.312442,
		42.979916, 34.277824, 25.467205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.450371, 34.775860, 25.891438>,  <43.144852, 34.922001, 25.685915>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.450371, 34.775860, 25.891438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.540432, 34.391949, 25.824350>,  <42.594471, 34.161602, 25.784098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.540432, 34.391949, 25.824350>,  <42.450371, 34.775860, 25.891438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.540432, 34.391949, 25.824350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541594, -0.266382, 0.797318,
		-0.809927, -0.088684, -0.579788,
		0.225155, -0.959779, -0.167719,
		42.607979, 34.104015, 25.774035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.809532, 34.364685, 25.953527>,  <42.450371, 34.775860, 25.891438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.809532, 34.364685, 25.953527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.101105, 34.097061, 26.011515>,  <42.276047, 33.936485, 26.046307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.101105, 34.097061, 26.011515>,  <41.809532, 34.364685, 25.953527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.101105, 34.097061, 26.011515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496138, -0.370384, 0.785278,
		-0.471709, -0.644335, -0.601933,
		0.728929, -0.669065, 0.144965,
		42.319782, 33.896343, 26.055004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.541134, 33.622627, 26.008986>,  <41.809532, 34.364685, 25.953527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.541134, 33.622627, 26.008986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.888687, 33.629860, 26.206861>,  <42.097218, 33.634201, 26.325586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.888687, 33.629860, 26.206861>,  <41.541134, 33.622627, 26.008986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.888687, 33.629860, 26.206861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441059, -0.425428, 0.790240,
		0.224747, -0.904812, -0.361669,
		0.868882, 0.018086, 0.494688,
		42.149353, 33.635284, 26.355268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.456524, 32.992306, 25.656715>,  <41.541134, 33.622627, 26.008986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.456524, 32.992306, 25.656715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.058743, 33.033627, 25.648825>,  <40.820072, 33.058418, 25.644091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.058743, 33.033627, 25.648825>,  <41.456524, 32.992306, 25.656715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.058743, 33.033627, 25.648825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033416, 0.132489, -0.990621,
		-0.099721, -0.985787, -0.135206,
		-0.994455, 0.103303, -0.019729,
		40.760406, 33.064617, 25.642906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.333679, 32.550423, 25.135668>,  <41.456524, 32.992306, 25.656715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.333679, 32.550423, 25.135668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.032696, 32.810665, 25.176689>,  <40.852104, 32.966812, 25.201302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.032696, 32.810665, 25.176689>,  <41.333679, 32.550423, 25.135668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032696, 32.810665, 25.176689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049374, 0.210984, -0.976242,
		-0.656785, -0.729519, -0.190880,
		-0.752460, 0.650605, 0.102552,
		40.806957, 33.005848, 25.207455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757488, 32.437153, 24.537540>,  <41.333679, 32.550423, 25.135668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.757488, 32.437153, 24.537540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.668087, 32.801422, 24.676516>,  <40.614445, 33.019985, 24.759901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.668087, 32.801422, 24.676516>,  <40.757488, 32.437153, 24.537540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.668087, 32.801422, 24.676516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189339, 0.309101, -0.931991,
		-0.956137, -0.274086, 0.103342,
		-0.223503, 0.910677, 0.347438,
		40.601036, 33.074627, 24.780746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115833, 32.656097, 24.247559>,  <40.757488, 32.437153, 24.537540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115833, 32.656097, 24.247559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.284424, 32.998508, 24.367273>,  <40.385578, 33.203957, 24.439102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.284424, 32.998508, 24.367273>,  <40.115833, 32.656097, 24.247559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284424, 32.998508, 24.367273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013810, 0.336052, -0.941742,
		-0.906735, 0.392788, 0.153459,
		0.421475, 0.856030, 0.299286,
		40.410866, 33.255318, 24.457060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671959, 33.126472, 24.037580>,  <40.115833, 32.656097, 24.247559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671959, 33.126472, 24.037580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.002426, 33.343594, 24.098003>,  <40.200706, 33.473866, 24.134256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.002426, 33.343594, 24.098003>,  <39.671959, 33.126472, 24.037580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002426, 33.343594, 24.098003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153522, 0.474830, -0.866584,
		-0.542110, 0.692750, 0.475620,
		0.826165, 0.542801, 0.151058,
		40.250275, 33.506435, 24.143320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482258, 33.788246, 23.841429>,  <39.671959, 33.126472, 24.037580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482258, 33.788246, 23.841429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.880520, 33.774410, 23.806843>,  <40.119476, 33.766109, 23.786091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.880520, 33.774410, 23.806843>,  <39.482258, 33.788246, 23.841429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880520, 33.774410, 23.806843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050915, 0.575205, -0.816423,
		0.077977, 0.817277, 0.570944,
		0.995654, -0.034593, -0.086464,
		40.179214, 33.764030, 23.780903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670471, 34.469715, 23.579266>,  <39.482258, 33.788246, 23.841429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670471, 34.469715, 23.579266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.987473, 34.242271, 23.491056>,  <40.177673, 34.105804, 23.438131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.987473, 34.242271, 23.491056>,  <39.670471, 34.469715, 23.579266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.987473, 34.242271, 23.491056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043990, 0.413943, -0.909239,
		0.608284, 0.710871, 0.353063,
		0.792500, -0.568606, -0.220524,
		40.225224, 34.071690, 23.424900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567162, 35.274830, 23.534630>,  <39.670471, 34.469715, 23.579266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567162, 35.274830, 23.534630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.239578, 35.416565, 23.354076>,  <39.043026, 35.501606, 23.245745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.239578, 35.416565, 23.354076>,  <39.567162, 35.274830, 23.534630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239578, 35.416565, 23.354076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531382, -0.171299, 0.829632,
		0.216647, 0.919295, 0.328575,
		-0.818961, 0.354336, -0.451385,
		38.993889, 35.522865, 23.218660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345543, 35.787735, 24.016500>,  <39.567162, 35.274830, 23.534630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345543, 35.787735, 24.016500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.028362, 35.700256, 23.789028>,  <38.838055, 35.647770, 23.652546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.028362, 35.700256, 23.789028>,  <39.345543, 35.787735, 24.016500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028362, 35.700256, 23.789028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556684, -0.119311, 0.822112,
		-0.247646, 0.968470, -0.027140,
		-0.792953, -0.218701, -0.568679,
		38.790478, 35.634647, 23.618425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814426, 36.062080, 24.380180>,  <39.345543, 35.787735, 24.016500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814426, 36.062080, 24.380180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.609379, 35.818916, 24.137638>,  <38.486351, 35.673016, 23.992113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.609379, 35.818916, 24.137638>,  <38.814426, 36.062080, 24.380180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609379, 35.818916, 24.137638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630559, -0.212776, 0.746406,
		-0.582767, 0.764963, -0.274252,
		-0.512619, -0.607913, -0.606353,
		38.455593, 35.636543, 23.955732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050694, 36.282696, 24.394262>,  <38.814426, 36.062080, 24.380180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050694, 36.282696, 24.394262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.094883, 35.902718, 24.277369>,  <38.121399, 35.674732, 24.207232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.094883, 35.902718, 24.277369>,  <38.050694, 36.282696, 24.394262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094883, 35.902718, 24.277369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588626, -0.299456, 0.750897,
		-0.800821, 0.089060, -0.592244,
		0.110476, -0.949944, -0.292234,
		38.128025, 35.617733, 24.189699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371876, 36.036873, 24.416559>,  <38.050694, 36.282696, 24.394262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371876, 36.036873, 24.416559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.600868, 35.708981, 24.423662>,  <37.738262, 35.512245, 24.427923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.600868, 35.708981, 24.423662>,  <37.371876, 36.036873, 24.416559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600868, 35.708981, 24.423662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697881, -0.475788, 0.535339,
		-0.430382, -0.318864, -0.844451,
		0.572480, -0.819726, 0.017758,
		37.772614, 35.463062, 24.428989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848671, 35.504837, 24.448505>,  <37.371876, 36.036873, 24.416559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848671, 35.504837, 24.448505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.185684, 35.309479, 24.539377>,  <37.387890, 35.192265, 24.593901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.185684, 35.309479, 24.539377>,  <36.848671, 35.504837, 24.448505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185684, 35.309479, 24.539377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510614, -0.589877, 0.625554,
		-0.171510, -0.643050, -0.746372,
		0.842531, -0.488396, 0.227180,
		37.438442, 35.162960, 24.607531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708267, 34.806694, 24.343016>,  <36.848671, 35.504837, 24.448505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708267, 34.806694, 24.343016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.992531, 34.852768, 24.620632>,  <37.163090, 34.880413, 24.787201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.992531, 34.852768, 24.620632>,  <36.708267, 34.806694, 24.343016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992531, 34.852768, 24.620632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494453, -0.619998, 0.609195,
		0.500476, -0.776102, -0.383654,
		0.710662, 0.115189, 0.694040,
		37.205730, 34.887325, 24.828844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.935268, 38.459579, 21.464102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.228146, 38.290180, 21.677475>,  <41.403873, 38.188541, 21.805498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.228146, 38.290180, 21.677475>,  <40.935268, 38.459579, 21.464102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.228146, 38.290180, 21.677475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228327, 0.585253, 0.778039,
		-0.641687, -0.691470, 0.331823,
		0.732191, -0.423494, 0.533431,
		41.447803, 38.163132, 21.837503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640667, 38.189007, 22.125299>,  <40.935268, 38.459579, 21.464102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640667, 38.189007, 22.125299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.029396, 38.272045, 22.169962>,  <41.262634, 38.321869, 22.196760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.029396, 38.272045, 22.169962>,  <40.640667, 38.189007, 22.125299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.029396, 38.272045, 22.169962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215371, 0.589460, 0.778558,
		0.095810, -0.780667, 0.617560,
		0.971821, 0.207598, 0.111657,
		41.320942, 38.334324, 22.203459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811501, 38.078064, 22.816170>,  <40.640667, 38.189007, 22.125299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811501, 38.078064, 22.816170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.089993, 38.339348, 22.697123>,  <41.257088, 38.496120, 22.625694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.089993, 38.339348, 22.697123>,  <40.811501, 38.078064, 22.816170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.089993, 38.339348, 22.697123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073564, 0.477359, 0.875624,
		0.714039, -0.587742, 0.380405,
		0.696230, 0.653213, -0.297616,
		41.298862, 38.535313, 22.607838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.396770, 38.060482, 23.277199>,  <40.811501, 38.078064, 22.816170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.396770, 38.060482, 23.277199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.464977, 38.409172, 23.093454>,  <41.505901, 38.618385, 22.983208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.464977, 38.409172, 23.093454>,  <41.396770, 38.060482, 23.277199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.464977, 38.409172, 23.093454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104802, 0.447500, 0.888122,
		0.979765, -0.199586, -0.015051,
		0.170521, 0.871728, -0.459362,
		41.516132, 38.670689, 22.955647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.941727, 38.331017, 23.717573>,  <41.396770, 38.060482, 23.277199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.941727, 38.331017, 23.717573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.764694, 38.619564, 23.504499>,  <41.658474, 38.792690, 23.376656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.764694, 38.619564, 23.504499>,  <41.941727, 38.331017, 23.717573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.764694, 38.619564, 23.504499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048041, 0.574106, 0.817370,
		0.895440, 0.387344, -0.219434,
		-0.442582, 0.721364, -0.532686,
		41.631920, 38.835972, 23.344694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.221294, 38.892326, 24.045401>,  <41.941727, 38.331017, 23.717573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.221294, 38.892326, 24.045401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.894501, 39.007465, 23.845526>,  <41.698425, 39.076550, 23.725601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.894501, 39.007465, 23.845526>,  <42.221294, 38.892326, 24.045401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.894501, 39.007465, 23.845526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137413, 0.744378, 0.653466,
		0.560055, 0.602532, -0.568588,
		-0.816980, 0.287846, -0.499689,
		41.649406, 39.093819, 23.695620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.241547, 39.640327, 24.004114>,  <42.221294, 38.892326, 24.045401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.241547, 39.640327, 24.004114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.860775, 39.524811, 23.963274>,  <41.632313, 39.455502, 23.938770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.860775, 39.524811, 23.963274>,  <42.241547, 39.640327, 24.004114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.860775, 39.524811, 23.963274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270485, 0.636104, 0.722640,
		-0.143747, 0.715521, -0.683642,
		-0.951932, -0.288792, -0.102100,
		41.575195, 39.438171, 23.932644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.882072, 40.259228, 24.251143>,  <42.241547, 39.640327, 24.004114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.882072, 40.259228, 24.251143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.604240, 39.971779, 24.237612>,  <41.437542, 39.799309, 24.229494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.604240, 39.971779, 24.237612>,  <41.882072, 40.259228, 24.251143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.604240, 39.971779, 24.237612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598906, 0.551543, 0.580614,
		-0.398584, 0.423542, -0.813476,
		-0.694581, -0.718619, -0.033826,
		41.395866, 39.756195, 24.227465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.226261, 40.632885, 24.130781>,  <41.882072, 40.259228, 24.251143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.226261, 40.632885, 24.130781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.150940, 40.278221, 24.299721>,  <41.105747, 40.065422, 24.401085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.150940, 40.278221, 24.299721>,  <41.226261, 40.632885, 24.130781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.150940, 40.278221, 24.299721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613474, 0.442013, 0.654427,
		-0.766937, -0.135869, -0.627174,
		-0.188303, -0.886659, 0.422348,
		41.094448, 40.012222, 24.426426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579498, 40.685009, 24.284672>,  <41.226261, 40.632885, 24.130781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.579498, 40.685009, 24.284672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.666874, 40.356686, 24.495785>,  <40.719299, 40.159691, 24.622454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.666874, 40.356686, 24.495785>,  <40.579498, 40.685009, 24.284672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.666874, 40.356686, 24.495785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634458, 0.291474, 0.715895,
		-0.741448, -0.491240, -0.457098,
		0.218444, -0.820808, 0.527784,
		40.732407, 40.110443, 24.654119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890694, 40.428448, 24.579973>,  <40.579498, 40.685009, 24.284672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.890694, 40.428448, 24.579973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.190716, 40.280354, 24.799185>,  <40.370731, 40.191498, 24.930712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.190716, 40.280354, 24.799185>,  <39.890694, 40.428448, 24.579973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190716, 40.280354, 24.799185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474910, 0.275197, 0.835899,
		-0.460294, -0.887239, 0.030587,
		0.750060, -0.370234, 0.548030,
		40.415733, 40.169285, 24.963594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578190, 39.943569, 25.192013>,  <39.890694, 40.428448, 24.579973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578190, 39.943569, 25.192013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.948566, 39.989708, 25.335857>,  <40.170792, 40.017391, 25.422165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.948566, 39.989708, 25.335857>,  <39.578190, 39.943569, 25.192013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948566, 39.989708, 25.335857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363964, 0.018468, 0.931230,
		0.100776, -0.993153, 0.059083,
		0.925945, 0.115349, 0.359611,
		40.226349, 40.024311, 25.443741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300568, 39.164238, 25.176754>,  <39.578190, 39.943569, 25.192013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300568, 39.164238, 25.176754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.935207, 39.107079, 25.024290>,  <38.715992, 39.072781, 24.932812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.935207, 39.107079, 25.024290>,  <39.300568, 39.164238, 25.176754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935207, 39.107079, 25.024290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367296, 0.114364, -0.923046,
		0.175499, -0.983107, -0.051971,
		-0.913397, -0.142905, -0.381162,
		38.661190, 39.064209, 24.909941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360317, 38.752934, 24.527912>,  <39.300568, 39.164238, 25.176754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360317, 38.752934, 24.527912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.007793, 38.939926, 24.500319>,  <38.796280, 39.052120, 24.483763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.007793, 38.939926, 24.500319>,  <39.360317, 38.752934, 24.527912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007793, 38.939926, 24.500319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201659, 0.240046, -0.949585,
		-0.427350, -0.850790, -0.305825,
		-0.881309, 0.467477, -0.068986,
		38.743401, 39.080170, 24.479622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950066, 38.347607, 24.034273>,  <39.360317, 38.752934, 24.527912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950066, 38.347607, 24.034273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.765934, 38.702541, 24.023413>,  <38.655457, 38.915501, 24.016895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.765934, 38.702541, 24.023413>,  <38.950066, 38.347607, 24.034273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765934, 38.702541, 24.023413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033196, -0.047770, -0.998307,
		-0.887127, -0.458649, 0.051445,
		-0.460330, 0.887333, -0.027153,
		38.627834, 38.968742, 24.015266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441490, 38.221352, 23.566025>,  <38.950066, 38.347607, 24.034273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441490, 38.221352, 23.566025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.517105, 38.612747, 23.599047>,  <38.562473, 38.847588, 23.618860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.517105, 38.612747, 23.599047>,  <38.441490, 38.221352, 23.566025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517105, 38.612747, 23.599047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047620, 0.074838, -0.996058,
		-0.980815, 0.192223, -0.032449,
		0.189036, 0.978494, 0.082556,
		38.573814, 38.906296, 23.623814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018848, 38.484585, 23.104744>,  <38.441490, 38.221352, 23.566025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018848, 38.484585, 23.104744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.267273, 38.790329, 23.174076>,  <38.416328, 38.973774, 23.215675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.267273, 38.790329, 23.174076>,  <38.018848, 38.484585, 23.104744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267273, 38.790329, 23.174076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037261, 0.192107, -0.980666,
		-0.782878, 0.615510, 0.090829,
		0.621058, 0.764358, 0.173331,
		38.453590, 39.019638, 23.226076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775532, 39.072269, 22.685844>,  <38.018848, 38.484585, 23.104744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775532, 39.072269, 22.685844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.165352, 39.118176, 22.762873>,  <38.399242, 39.145721, 22.809090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.165352, 39.118176, 22.762873>,  <37.775532, 39.072269, 22.685844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165352, 39.118176, 22.762873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138472, 0.367376, -0.919707,
		-0.176300, 0.922964, 0.342133,
		0.974548, 0.114769, 0.192573,
		38.457718, 39.152607, 22.820644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021336, 39.760159, 22.383236>,  <37.775532, 39.072269, 22.685844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021336, 39.760159, 22.383236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.356968, 39.553944, 22.452707>,  <38.558350, 39.430214, 22.494390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.356968, 39.553944, 22.452707>,  <38.021336, 39.760159, 22.383236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356968, 39.553944, 22.452707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389304, 0.346051, -0.853634,
		0.379976, 0.783884, 0.491065,
		0.839083, -0.515534, 0.173678,
		38.608692, 39.399284, 22.504810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463604, 40.204288, 22.057110>,  <38.021336, 39.760159, 22.383236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463604, 40.204288, 22.057110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.641350, 39.847847, 22.093935>,  <38.747997, 39.633984, 22.116030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.641350, 39.847847, 22.093935>,  <38.463604, 40.204288, 22.057110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641350, 39.847847, 22.093935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562029, 0.197280, -0.803246,
		0.697614, 0.408673, 0.588490,
		0.444363, -0.891104, 0.092061,
		38.774658, 39.580517, 22.121553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268818, 40.191139, 21.839653>,  <38.463604, 40.204288, 22.057110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268818, 40.191139, 21.839653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.155224, 39.808792, 21.809551>,  <39.087067, 39.579384, 21.791491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.155224, 39.808792, 21.809551>,  <39.268818, 40.191139, 21.839653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155224, 39.808792, 21.809551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453401, -0.064719, -0.888954,
		0.844854, -0.286571, 0.451772,
		-0.283987, -0.955870, -0.075253,
		39.070026, 39.522030, 21.786976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862602, 39.905224, 21.564814>,  <39.268818, 40.191139, 21.839653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862602, 39.905224, 21.564814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.580292, 39.628494, 21.503799>,  <39.410908, 39.462456, 21.467190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.580292, 39.628494, 21.503799>,  <39.862602, 39.905224, 21.564814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580292, 39.628494, 21.503799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364218, -0.169658, -0.915730,
		0.607641, -0.701856, 0.371714,
		-0.705774, -0.691820, -0.152538,
		39.368561, 39.420948, 21.458038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211475, 39.379105, 21.254868>,  <39.862602, 39.905224, 21.564814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211475, 39.379105, 21.254868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.826359, 39.294559, 21.187510>,  <39.595287, 39.243832, 21.147095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.826359, 39.294559, 21.187510>,  <40.211475, 39.379105, 21.254868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.826359, 39.294559, 21.187510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236060, -0.354443, -0.904791,
		0.131550, -0.910877, 0.391148,
		-0.962793, -0.211360, -0.168395,
		39.537521, 39.231152, 21.136992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221111, 38.735291, 20.941418>,  <40.211475, 39.379105, 21.254868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221111, 38.735291, 20.941418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.860291, 38.887135, 20.859243>,  <39.643799, 38.978241, 20.809938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.860291, 38.887135, 20.859243>,  <40.221111, 38.735291, 20.941418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860291, 38.887135, 20.859243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117879, -0.241204, -0.963289,
		-0.415222, -0.893152, 0.172831,
		-0.902051, 0.379606, -0.205437,
		39.589676, 39.001015, 20.797613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961678, 38.155327, 20.566025>,  <40.221111, 38.735291, 20.941418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961678, 38.155327, 20.566025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.780216, 38.500038, 20.475214>,  <39.671341, 38.706863, 20.420729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.780216, 38.500038, 20.475214>,  <39.961678, 38.155327, 20.566025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780216, 38.500038, 20.475214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242962, -0.125500, -0.961883,
		-0.857421, -0.491517, -0.152447,
		-0.453650, 0.861778, -0.227026,
		39.644123, 38.758572, 20.407106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273548, 37.768703, 20.960985>,  <39.961678, 38.155327, 20.566025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273548, 37.768703, 20.960985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.186798, 37.486309, 20.691305>,  <40.134750, 37.316872, 20.529497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.186798, 37.486309, 20.691305>,  <40.273548, 37.768703, 20.960985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186798, 37.486309, 20.691305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354312, -0.586618, 0.728246,
		-0.909632, 0.396813, -0.122920,
		-0.216871, -0.705987, -0.674202,
		40.121738, 37.274513, 20.489044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605091, 37.620529, 21.046507>,  <40.273548, 37.768703, 20.960985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605091, 37.620529, 21.046507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.778015, 37.293034, 20.895367>,  <39.881771, 37.096535, 20.804684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.778015, 37.293034, 20.895367>,  <39.605091, 37.620529, 21.046507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778015, 37.293034, 20.895367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412346, -0.552149, 0.724639,
		-0.801921, -0.157465, -0.576305,
		0.432311, -0.818740, -0.377850,
		39.907707, 37.047413, 20.782011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971680, 37.197498, 21.199394>,  <39.605091, 37.620529, 21.046507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971680, 37.197498, 21.199394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.315781, 37.004539, 21.133356>,  <39.522243, 36.888763, 21.093733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.315781, 37.004539, 21.133356>,  <38.971680, 37.197498, 21.199394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315781, 37.004539, 21.133356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194521, -0.609833, 0.768287,
		-0.471296, -0.628810, -0.618449,
		0.860257, -0.482392, -0.165095,
		39.573856, 36.859821, 21.083828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741959, 36.556263, 21.235832>,  <38.971680, 37.197498, 21.199394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.741959, 36.556263, 21.235832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.136230, 36.510674, 21.285532>,  <39.372795, 36.483322, 21.315351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.136230, 36.510674, 21.285532>,  <38.741959, 36.556263, 21.235832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136230, 36.510674, 21.285532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168311, -0.708457, 0.685390,
		0.009912, -0.696491, -0.717497,
		0.985684, -0.113969, 0.124249,
		39.431934, 36.476482, 21.322807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853252, 35.864960, 21.305292>,  <38.741959, 36.556263, 21.235832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853252, 35.864960, 21.305292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.176682, 36.033146, 21.469936>,  <39.370739, 36.134060, 21.568722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.176682, 36.033146, 21.469936>,  <38.853252, 35.864960, 21.305292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176682, 36.033146, 21.469936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010777, -0.688840, 0.724834,
		0.588302, -0.590514, -0.552444,
		0.808570, 0.420468, 0.411610,
		39.419250, 36.159286, 21.593420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239079, 35.345512, 21.494770>,  <38.853252, 35.864960, 21.305292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239079, 35.345512, 21.494770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.337738, 35.640774, 21.745941>,  <39.396935, 35.817932, 21.896645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.337738, 35.640774, 21.745941>,  <39.239079, 35.345512, 21.494770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337738, 35.640774, 21.745941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106231, -0.623448, 0.774614,
		0.963266, -0.257760, -0.075355,
		0.246645, 0.738154, 0.627929,
		39.411732, 35.862221, 21.934320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501232, 34.971977, 22.077452>,  <39.239079, 35.345512, 21.494770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501232, 34.971977, 22.077452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.431999, 35.334682, 22.231239>,  <39.390457, 35.552307, 22.323513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.431999, 35.334682, 22.231239>,  <39.501232, 34.971977, 22.077452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431999, 35.334682, 22.231239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284295, -0.419743, 0.861970,
		0.942984, 0.039891, 0.330440,
		-0.173085, 0.906766, 0.384470,
		39.380074, 35.606712, 22.346581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580547, 34.919624, 22.772898>,  <39.501232, 34.971977, 22.077452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580547, 34.919624, 22.772898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.362713, 35.253586, 22.741007>,  <39.232014, 35.453964, 22.721872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.362713, 35.253586, 22.741007>,  <39.580547, 34.919624, 22.772898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362713, 35.253586, 22.741007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538711, -0.275354, 0.796223,
		0.642819, 0.476561, 0.599728,
		-0.544587, 0.834907, -0.079726,
		39.199337, 35.504059, 22.717089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207294, 34.882175, 23.090542>,  <39.580547, 34.919624, 22.772898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207294, 34.882175, 23.090542> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.361217, 34.516479, 23.039804>,  <40.453571, 34.297062, 23.009361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.361217, 34.516479, 23.039804>,  <40.207294, 34.882175, 23.090542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361217, 34.516479, 23.039804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177636, 0.208214, -0.961817,
		0.905744, 0.347579, 0.242524,
		0.384804, -0.914241, -0.126845,
		40.476658, 34.242207, 23.001751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.886349, 35.070747, 22.649588>,  <40.207294, 34.882175, 23.090542>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.886349, 35.070747, 22.649588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.795776, 34.684837, 22.596003>,  <40.741432, 34.453293, 22.563852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.795776, 34.684837, 22.596003>,  <40.886349, 35.070747, 22.649588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.795776, 34.684837, 22.596003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480041, 0.009137, -0.877199,
		0.847520, -0.262930, 0.461061,
		-0.226430, -0.964772, -0.133961,
		40.727848, 34.395405, 22.555815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.504944, 34.791828, 22.219681>,  <40.886349, 35.070747, 22.649588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.504944, 34.791828, 22.219681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.203457, 34.529930, 22.196983>,  <41.022564, 34.372791, 22.183365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.203457, 34.529930, 22.196983>,  <41.504944, 34.791828, 22.219681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.203457, 34.529930, 22.196983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220696, -0.170834, -0.960265,
		0.619039, -0.736287, 0.273261,
		-0.753713, -0.654749, -0.056742,
		40.977345, 34.333504, 22.179960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.837696, 34.137188, 22.078556>,  <41.504944, 34.791828, 22.219681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.837696, 34.137188, 22.078556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.461361, 34.124657, 21.943596>,  <41.235558, 34.117138, 21.862619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.461361, 34.124657, 21.943596>,  <41.837696, 34.137188, 22.078556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.461361, 34.124657, 21.943596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338288, -0.029389, -0.940584,
		0.019556, -0.999077, 0.038251,
		-0.940839, -0.031334, -0.337401,
		41.179108, 34.115257, 21.842375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.770878, 33.577866, 21.640156>,  <41.837696, 34.137188, 22.078556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.770878, 33.577866, 21.640156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.452847, 33.796329, 21.534658>,  <41.262028, 33.927406, 21.471359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.452847, 33.796329, 21.534658>,  <41.770878, 33.577866, 21.640156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.452847, 33.796329, 21.534658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259873, -0.086141, -0.961793,
		-0.548009, -0.833242, -0.073443,
		-0.795079, 0.546157, -0.263743,
		41.214321, 33.960178, 21.455536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400890, 33.137211, 21.137325>,  <41.770878, 33.577866, 21.640156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.400890, 33.137211, 21.137325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.286358, 33.514378, 21.069294>,  <41.217640, 33.740677, 21.028475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.286358, 33.514378, 21.069294>,  <41.400890, 33.137211, 21.137325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.286358, 33.514378, 21.069294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281805, -0.086782, -0.955539,
		-0.915753, -0.321525, -0.240870,
		-0.286326, 0.942916, -0.170078,
		41.200459, 33.797253, 21.018270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015800, 33.057388, 20.540180>,  <41.400890, 33.137211, 21.137325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015800, 33.057388, 20.540180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.073647, 33.452854, 20.556305>,  <41.108353, 33.690136, 20.565979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.073647, 33.452854, 20.556305>,  <41.015800, 33.057388, 20.540180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.073647, 33.452854, 20.556305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092623, 0.054085, -0.994231,
		-0.985143, 0.140048, 0.099395,
		0.144616, 0.988666, 0.040310,
		41.117031, 33.749454, 20.568398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396206, 33.341469, 20.231960>,  <41.015800, 33.057388, 20.540180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396206, 33.341469, 20.231960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.712864, 33.584091, 20.202587>,  <40.902859, 33.729664, 20.184963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.712864, 33.584091, 20.202587>,  <40.396206, 33.341469, 20.231960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712864, 33.584091, 20.202587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001709, -0.122386, -0.992481,
		-0.610985, 0.785563, -0.097923,
		0.791641, 0.606558, -0.073433,
		40.950356, 33.766060, 20.180557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295910, 33.887066, 19.613150>,  <40.396206, 33.341469, 20.231960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295910, 33.887066, 19.613150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.691898, 33.906235, 19.666298>,  <40.929493, 33.917736, 19.698187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.691898, 33.906235, 19.666298>,  <40.295910, 33.887066, 19.613150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.691898, 33.906235, 19.666298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137267, -0.104598, -0.984996,
		-0.033308, 0.993359, -0.110128,
		0.989974, 0.047925, 0.132872,
		40.988892, 33.920612, 19.706160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.732643, 35.268734, 34.842899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.998787, 35.547802, 34.949146>,  <37.158474, 35.715244, 35.012894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.998787, 35.547802, 34.949146>,  <36.732643, 35.268734, 34.842899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998787, 35.547802, 34.949146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461740, -0.105026, -0.880775,
		-0.586598, 0.708675, -0.392024,
		0.665356, 0.697674, 0.265616,
		37.198395, 35.757103, 35.028831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642395, 35.915192, 34.476532>,  <36.732643, 35.268734, 34.842899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642395, 35.915192, 34.476532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.022621, 35.865685, 34.590450>,  <37.250755, 35.835979, 34.658802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.022621, 35.865685, 34.590450>,  <36.642395, 35.915192, 34.476532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022621, 35.865685, 34.590450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265147, -0.153848, -0.951855,
		0.161621, 0.980313, -0.113427,
		0.950566, -0.123765, 0.284792,
		37.307793, 35.828556, 34.675888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136547, 36.254059, 34.019615>,  <36.642395, 35.915192, 34.476532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136547, 36.254059, 34.019615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.414288, 36.018162, 34.184574>,  <37.580933, 35.876621, 34.283550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.414288, 36.018162, 34.184574>,  <37.136547, 36.254059, 34.019615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414288, 36.018162, 34.184574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461417, -0.074918, -0.884014,
		0.552239, 0.804107, 0.220099,
		0.694353, -0.589745, 0.412402,
		37.622593, 35.841240, 34.308296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763233, 36.511234, 33.708183>,  <37.136547, 36.254059, 34.019615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763233, 36.511234, 33.708183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.811184, 36.136497, 33.839607>,  <37.839954, 35.911655, 33.918461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.811184, 36.136497, 33.839607>,  <37.763233, 36.511234, 33.708183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811184, 36.136497, 33.839607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448231, -0.244226, -0.859909,
		0.885844, 0.250351, 0.390646,
		0.119873, -0.936845, 0.328561,
		37.847145, 35.855446, 33.938175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242996, 36.285496, 33.207912>,  <37.763233, 36.511234, 33.708183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242996, 36.285496, 33.207912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.131645, 35.938232, 33.372257>,  <38.064835, 35.729874, 33.470863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.131645, 35.938232, 33.372257>,  <38.242996, 36.285496, 33.207912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131645, 35.938232, 33.372257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438055, -0.495453, -0.750090,
		0.854760, -0.028824, 0.518222,
		-0.278375, -0.868157, 0.410867,
		38.048134, 35.677784, 33.495518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767445, 35.941315, 33.093536>,  <38.242996, 36.285496, 33.207912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767445, 35.941315, 33.093536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.459763, 35.690151, 33.140949>,  <38.275154, 35.539452, 33.169395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.459763, 35.690151, 33.140949>,  <38.767445, 35.941315, 33.093536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459763, 35.690151, 33.140949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234142, -0.449557, -0.862019,
		0.594558, -0.635316, 0.492822,
		-0.769206, -0.627911, 0.118533,
		38.229000, 35.501778, 33.176510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031292, 35.273293, 33.013248>,  <38.767445, 35.941315, 33.093536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031292, 35.273293, 33.013248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.637508, 35.232098, 32.956345>,  <38.401237, 35.207382, 32.922203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.637508, 35.232098, 32.956345>,  <39.031292, 35.273293, 33.013248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637508, 35.232098, 32.956345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173333, -0.700198, -0.692588,
		-0.028285, -0.706482, 0.707166,
		-0.984457, -0.102985, -0.142261,
		38.342171, 35.201202, 32.913666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880516, 34.540493, 33.010361>,  <39.031292, 35.273293, 33.013248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880516, 34.540493, 33.010361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.572651, 34.721878, 32.830585>,  <38.387932, 34.830708, 32.722721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.572651, 34.721878, 32.830585>,  <38.880516, 34.540493, 33.010361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572651, 34.721878, 32.830585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035609, -0.672363, -0.739364,
		-0.637458, -0.585064, 0.501345,
		-0.769662, 0.453461, -0.449437,
		38.341751, 34.857918, 32.695755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601074, 34.039661, 32.663544>,  <38.880516, 34.540493, 33.010361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601074, 34.039661, 32.663544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.385635, 34.320141, 32.476681>,  <38.256374, 34.488430, 32.364563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.385635, 34.320141, 32.476681>,  <38.601074, 34.039661, 32.663544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385635, 34.320141, 32.476681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011234, -0.560369, -0.828167,
		-0.842492, -0.440796, 0.309688,
		-0.538592, 0.701203, -0.467154,
		38.224056, 34.530502, 32.336536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040134, 33.745434, 32.317848>,  <38.601074, 34.039661, 32.663544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040134, 33.745434, 32.317848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.061256, 34.094673, 32.123981>,  <38.073929, 34.304218, 32.007660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.061256, 34.094673, 32.123981>,  <38.040134, 33.745434, 32.317848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061256, 34.094673, 32.123981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037501, -0.483272, -0.874667,
		-0.997901, 0.064360, 0.007225,
		0.052802, 0.873102, -0.484671,
		38.077099, 34.356606, 31.978580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411938, 33.776005, 31.848602>,  <38.040134, 33.745434, 32.317848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411938, 33.776005, 31.848602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.694031, 34.020763, 31.705360>,  <37.863285, 34.167618, 31.619415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.694031, 34.020763, 31.705360>,  <37.411938, 33.776005, 31.848602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694031, 34.020763, 31.705360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043607, -0.466704, -0.883338,
		-0.707638, 0.638571, -0.302450,
		0.705228, 0.611894, -0.358103,
		37.905598, 34.204330, 31.597929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264183, 33.947746, 31.150658>,  <37.411938, 33.776005, 31.848602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264183, 33.947746, 31.150658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.657417, 34.016697, 31.175383>,  <37.893360, 34.058067, 31.190218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.657417, 34.016697, 31.175383>,  <37.264183, 33.947746, 31.150658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657417, 34.016697, 31.175383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135191, -0.455480, -0.879921,
		-0.123529, 0.873397, -0.471082,
		0.983089, 0.172381, 0.061810,
		37.952343, 34.068413, 31.193926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599018, 34.182987, 31.062635>,  <37.264183, 33.947746, 31.150658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599018, 34.182987, 31.062635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.261761, 34.164150, 30.848387>,  <36.059406, 34.152847, 30.719837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.261761, 34.164150, 30.848387>,  <36.599018, 34.182987, 31.062635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261761, 34.164150, 30.848387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537609, 0.056944, 0.841269,
		-0.009114, 0.997266, -0.073328,
		-0.843145, -0.047089, -0.535620,
		36.008816, 34.150024, 30.687700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268101, 34.667965, 31.298946>,  <36.599018, 34.182987, 31.062635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268101, 34.667965, 31.298946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.984104, 34.443077, 31.129326>,  <35.813705, 34.308144, 31.027554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.984104, 34.443077, 31.129326>,  <36.268101, 34.667965, 31.298946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984104, 34.443077, 31.129326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556755, 0.079422, 0.826872,
		-0.431207, 0.823163, -0.369410,
		-0.709989, -0.562223, -0.424052,
		35.771107, 34.274410, 31.002110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618275, 35.090420, 31.243277>,  <36.268101, 34.667965, 31.298946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618275, 35.090420, 31.243277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.488876, 34.711990, 31.236452>,  <35.411236, 34.484932, 31.232357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.488876, 34.711990, 31.236452>,  <35.618275, 35.090420, 31.243277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488876, 34.711990, 31.236452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762598, 0.249998, 0.596611,
		-0.560174, 0.206011, -0.802349,
		-0.323495, -0.946076, -0.017061,
		35.391827, 34.428169, 31.231333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992760, 35.106304, 31.085453>,  <35.618275, 35.090420, 31.243277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992760, 35.106304, 31.085453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.013435, 34.751751, 31.269472>,  <35.025841, 34.539017, 31.379885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.013435, 34.751751, 31.269472>,  <34.992760, 35.106304, 31.085453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013435, 34.751751, 31.269472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718733, 0.286818, 0.633370,
		-0.693362, -0.363390, -0.622251,
		0.051688, -0.886388, 0.460049,
		35.028942, 34.485836, 31.407486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312237, 34.911732, 31.256071>,  <34.992760, 35.106304, 31.085453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312237, 34.911732, 31.256071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.518394, 34.691696, 31.518908>,  <34.642090, 34.559673, 31.676609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.518394, 34.691696, 31.518908>,  <34.312237, 34.911732, 31.256071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518394, 34.691696, 31.518908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670610, 0.218488, 0.708904,
		-0.533529, -0.806016, -0.256291,
		0.515391, -0.550093, 0.657092,
		34.673012, 34.526669, 31.716036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853748, 34.448353, 31.479111>,  <34.312237, 34.911732, 31.256071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853748, 34.448353, 31.479111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.144531, 34.461140, 31.753487>,  <34.319000, 34.468811, 31.918112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.144531, 34.461140, 31.753487>,  <33.853748, 34.448353, 31.479111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144531, 34.461140, 31.753487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685956, 0.079869, 0.723247,
		-0.031665, -0.996293, 0.079990,
		0.726954, 0.031967, 0.685942,
		34.362617, 34.470730, 31.959269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541969, 34.265804, 32.090618>,  <33.853748, 34.448353, 31.479111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541969, 34.265804, 32.090618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.876881, 34.424290, 32.241341>,  <34.077827, 34.519382, 32.331776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.876881, 34.424290, 32.241341>,  <33.541969, 34.265804, 32.090618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876881, 34.424290, 32.241341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485494, 0.221705, 0.845661,
		0.251528, -0.890987, 0.377990,
		0.837275, 0.396219, 0.376804,
		34.128063, 34.543152, 32.354382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461872, 34.034031, 32.828148>,  <33.541969, 34.265804, 32.090618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461872, 34.034031, 32.828148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.739094, 34.321407, 32.804394>,  <33.905426, 34.493832, 32.790142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.739094, 34.321407, 32.804394>,  <33.461872, 34.034031, 32.828148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739094, 34.321407, 32.804394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303987, 0.365950, 0.879586,
		0.653659, -0.591548, 0.472018,
		0.693053, 0.718437, -0.059383,
		33.947010, 34.536938, 32.786579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742504, 34.023643, 33.425533>,  <33.461872, 34.034031, 32.828148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742504, 34.023643, 33.425533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.818295, 34.383625, 33.268471>,  <33.863770, 34.599613, 33.174232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.818295, 34.383625, 33.268471>,  <33.742504, 34.023643, 33.425533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818295, 34.383625, 33.268471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170476, 0.423984, 0.889481,
		0.966973, -0.101598, 0.233755,
		0.189478, 0.899953, -0.392661,
		33.875137, 34.653610, 33.150673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051529, 34.370026, 33.932331>,  <33.742504, 34.023643, 33.425533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051529, 34.370026, 33.932331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.944302, 34.673862, 33.695297>,  <33.879963, 34.856163, 33.553078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.944302, 34.673862, 33.695297>,  <34.051529, 34.370026, 33.932331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944302, 34.673862, 33.695297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197123, 0.558836, 0.805509,
		0.943016, 0.332746, -0.000075,
		-0.268072, 0.759593, -0.592584,
		33.863880, 34.901741, 33.517521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324009, 35.043434, 34.285053>,  <34.051529, 34.370026, 33.932331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324009, 35.043434, 34.285053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.015961, 35.124214, 34.043015>,  <33.831131, 35.172684, 33.897793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.015961, 35.124214, 34.043015>,  <34.324009, 35.043434, 34.285053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015961, 35.124214, 34.043015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348478, 0.661329, 0.664234,
		0.534307, 0.722399, -0.438925,
		-0.770116, 0.201950, -0.605093,
		33.784927, 35.184799, 33.861488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260994, 35.778484, 34.239090>,  <34.324009, 35.043434, 34.285053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260994, 35.778484, 34.239090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.897339, 35.652737, 34.129807>,  <33.679146, 35.577290, 34.064236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.897339, 35.652737, 34.129807>,  <34.260994, 35.778484, 34.239090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897339, 35.652737, 34.129807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409383, 0.553738, 0.725106,
		-0.076662, 0.771069, -0.632121,
		-0.909136, -0.314368, -0.273212,
		33.624599, 35.558426, 34.047844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869427, 36.293030, 34.131897>,  <34.260994, 35.778484, 34.239090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869427, 36.293030, 34.131897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.607372, 36.003342, 34.217968>,  <33.450138, 35.829529, 34.269611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.607372, 36.003342, 34.217968>,  <33.869427, 36.293030, 34.131897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607372, 36.003342, 34.217968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287720, 0.502508, 0.815293,
		-0.698580, 0.472218, -0.537584,
		-0.655136, -0.724221, 0.215175,
		33.410831, 35.786076, 34.282520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723156, 36.537361, 34.741901>,  <33.869427, 36.293030, 34.131897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723156, 36.537361, 34.741901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.525276, 36.189865, 34.732433>,  <33.406548, 35.981365, 34.726753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.525276, 36.189865, 34.732433>,  <33.723156, 36.537361, 34.741901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525276, 36.189865, 34.732433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453010, 0.234529, 0.860104,
		-0.741659, 0.436211, -0.509570,
		-0.494696, -0.868744, -0.023668,
		33.376869, 35.929241, 34.725334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991165, 36.567242, 34.727108>,  <33.723156, 36.537361, 34.741901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991165, 36.567242, 34.727108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.173149, 36.283031, 34.941833>,  <33.282337, 36.112503, 35.070667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.173149, 36.283031, 34.941833>,  <32.991165, 36.567242, 34.727108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173149, 36.283031, 34.941833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435603, 0.348200, 0.830064,
		-0.776701, -0.611480, -0.151092,
		0.454957, -0.710527, 0.536810,
		33.309635, 36.069874, 35.102875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248100, 37.236244, 34.467339>,  <32.991165, 36.567242, 34.727108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248100, 37.236244, 34.467339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.505836, 37.472534, 34.661606>,  <33.660477, 37.614307, 34.778164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.505836, 37.472534, 34.661606>,  <33.248100, 37.236244, 34.467339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505836, 37.472534, 34.661606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189683, 0.491773, -0.849812,
		-0.740842, 0.639690, 0.204818,
		0.644340, 0.590725, 0.485664,
		33.699139, 37.649754, 34.807304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114239, 37.949501, 34.350578>,  <33.248100, 37.236244, 34.467339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114239, 37.949501, 34.350578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.508892, 37.918797, 34.408073>,  <33.745686, 37.900375, 34.442570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.508892, 37.918797, 34.408073>,  <33.114239, 37.949501, 34.350578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508892, 37.918797, 34.408073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162924, 0.449612, -0.878240,
		0.002786, 0.889920, 0.456109,
		0.986635, -0.076758, 0.143737,
		33.804882, 37.895767, 34.451195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334488, 38.430851, 34.026707>,  <33.114239, 37.949501, 34.350578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334488, 38.430851, 34.026707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.673756, 38.226814, 34.083855>,  <33.877316, 38.104393, 34.118145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.673756, 38.226814, 34.083855>,  <33.334488, 38.430851, 34.026707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.673756, 38.226814, 34.083855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338563, 0.314570, -0.886804,
		0.407405, 0.800535, 0.439506,
		0.848173, -0.510089, 0.142874,
		33.928207, 38.073788, 34.126717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977795, 38.839359, 33.759174>,  <33.334488, 38.430851, 34.026707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977795, 38.839359, 33.759174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.082722, 38.453369, 33.758221>,  <34.145679, 38.221775, 33.757648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.082722, 38.453369, 33.758221>,  <33.977795, 38.839359, 33.759174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082722, 38.453369, 33.758221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405165, 0.112378, -0.907310,
		0.875803, 0.237039, 0.420454,
		0.262318, -0.964979, -0.002381,
		34.161419, 38.163876, 33.757507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608555, 38.989861, 33.281708>,  <33.977795, 38.839359, 33.759174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608555, 38.989861, 33.281708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.554623, 38.593605, 33.290318>,  <34.522263, 38.355854, 33.295483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.554623, 38.593605, 33.290318>,  <34.608555, 38.989861, 33.281708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554623, 38.593605, 33.290318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603916, -0.099384, -0.790828,
		0.785561, -0.093630, 0.611660,
		-0.134835, -0.990634, 0.021527,
		34.514172, 38.296413, 33.296776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313305, 38.552116, 33.221466>,  <34.608555, 38.989861, 33.281708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313305, 38.552116, 33.221466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.032013, 38.288376, 33.115089>,  <34.863239, 38.130131, 33.051262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.032013, 38.288376, 33.115089>,  <35.313305, 38.552116, 33.221466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032013, 38.288376, 33.115089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515740, -0.215629, -0.829166,
		0.489366, -0.720251, 0.491690,
		-0.703231, -0.659350, -0.265941,
		34.821045, 38.090572, 33.035309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646614, 37.928459, 32.986649>,  <35.313305, 38.552116, 33.221466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646614, 37.928459, 32.986649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.280075, 37.890518, 32.831051>,  <35.060154, 37.867752, 32.737694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.280075, 37.890518, 32.831051>,  <35.646614, 37.928459, 32.986649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280075, 37.890518, 32.831051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394294, -0.382671, -0.835521,
		-0.069602, -0.919002, 0.388060,
		-0.916345, -0.094856, -0.388991,
		35.005173, 37.862061, 32.714352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650852, 37.247536, 32.642113>,  <35.646614, 37.928459, 32.986649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650852, 37.247536, 32.642113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.382946, 37.487885, 32.467590>,  <35.222202, 37.632095, 32.362877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.382946, 37.487885, 32.467590>,  <35.650852, 37.247536, 32.642113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382946, 37.487885, 32.467590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372527, -0.236389, -0.897409,
		-0.642367, -0.763592, -0.065515,
		-0.669767, 0.600872, -0.436307,
		35.182014, 37.668148, 32.336697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359261, 36.812588, 32.033070>,  <35.650852, 37.247536, 32.642113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359261, 36.812588, 32.033070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.273113, 37.189816, 31.931696>,  <35.221424, 37.416153, 31.870871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.273113, 37.189816, 31.931696>,  <35.359261, 36.812588, 32.033070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273113, 37.189816, 31.931696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157791, -0.222509, -0.962077,
		-0.963701, -0.247190, -0.100887,
		-0.215367, 0.943073, -0.253436,
		35.208504, 37.472736, 31.855665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021904, 36.815071, 31.306673>,  <35.359261, 36.812588, 32.033070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021904, 36.815071, 31.306673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.110153, 37.199833, 31.371248>,  <35.163105, 37.430691, 31.409994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.110153, 37.199833, 31.371248>,  <35.021904, 36.815071, 31.306673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110153, 37.199833, 31.371248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093852, 0.143811, -0.985145,
		-0.970832, 0.232501, -0.058548,
		0.220627, 0.961905, 0.161437,
		35.176342, 37.488403, 31.419680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607235, 37.274403, 30.871943>,  <35.021904, 36.815071, 31.306673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607235, 37.274403, 30.871943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.923836, 37.501545, 30.962328>,  <35.113796, 37.637833, 31.016560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.923836, 37.501545, 30.962328>,  <34.607235, 37.274403, 30.871943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923836, 37.501545, 30.962328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159878, 0.164466, -0.973339,
		-0.589881, 0.806529, 0.039388,
		0.791504, 0.567857, 0.225962,
		35.161285, 37.671902, 31.030117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595047, 37.865330, 30.376917>,  <34.607235, 37.274403, 30.871943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595047, 37.865330, 30.376917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.965427, 37.886208, 30.526525>,  <35.187656, 37.898735, 30.616291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.965427, 37.886208, 30.526525>,  <34.595047, 37.865330, 30.376917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965427, 37.886208, 30.526525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353292, 0.230184, -0.906752,
		-0.133418, 0.971746, 0.194701,
		0.925950, 0.052191, 0.374021,
		35.243214, 37.901863, 30.638731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897259, 38.382294, 29.996119>,  <34.595047, 37.865330, 30.376917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897259, 38.382294, 29.996119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.198612, 38.164249, 30.143236>,  <35.379425, 38.033424, 30.231506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.198612, 38.164249, 30.143236>,  <34.897259, 38.382294, 29.996119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198612, 38.164249, 30.143236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560834, 0.240607, -0.792196,
		0.343337, 0.803099, 0.486983,
		0.753383, -0.545106, 0.367795,
		35.424625, 38.000717, 30.253574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426918, 38.859795, 30.009155>,  <34.897259, 38.382294, 29.996119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426918, 38.859795, 30.009155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.610275, 38.504345, 30.003080>,  <35.720287, 38.291077, 29.999435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.610275, 38.504345, 30.003080>,  <35.426918, 38.859795, 30.009155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610275, 38.504345, 30.003080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520448, 0.282242, -0.805899,
		0.720426, 0.361512, 0.591858,
		0.458389, -0.888622, -0.015187,
		35.747791, 38.237759, 29.998524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158779, 39.003532, 30.052198>,  <35.426918, 38.859795, 30.009155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158779, 39.003532, 30.052198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.098770, 38.643929, 29.887625>,  <36.062763, 38.428165, 29.788881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.098770, 38.643929, 29.887625>,  <36.158779, 39.003532, 30.052198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098770, 38.643929, 29.887625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566451, 0.262915, -0.781031,
		0.810325, -0.350228, 0.469801,
		-0.150021, -0.899008, -0.411434,
		36.053764, 38.374226, 29.764194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877102, 38.823471, 29.771559>,  <36.158779, 39.003532, 30.052198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877102, 38.823471, 29.771559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.642426, 38.557945, 29.586023>,  <36.501617, 38.398632, 29.474703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.642426, 38.557945, 29.586023>,  <36.877102, 38.823471, 29.771559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642426, 38.557945, 29.586023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575704, 0.060928, -0.815385,
		0.569524, -0.745413, 0.346413,
		-0.586693, -0.663812, -0.463837,
		36.466419, 38.358803, 29.446873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331455, 38.422535, 29.478317>,  <36.877102, 38.823471, 29.771559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331455, 38.422535, 29.478317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.996346, 38.360542, 29.268890>,  <36.795280, 38.323349, 29.143234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.996346, 38.360542, 29.268890>,  <37.331455, 38.422535, 29.478317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996346, 38.360542, 29.268890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539893, -0.091852, -0.836707,
		0.081583, -0.983638, 0.160624,
		-0.837771, -0.154981, -0.523566,
		36.745014, 38.314049, 29.111820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534939, 38.048763, 28.928221>,  <37.331455, 38.422535, 29.478317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534939, 38.048763, 28.928221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.175957, 38.161972, 28.792881>,  <36.960567, 38.229897, 28.711678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.175957, 38.161972, 28.792881>,  <37.534939, 38.048763, 28.928221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175957, 38.161972, 28.792881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337580, -0.053062, -0.939800,
		-0.283938, -0.957644, -0.047922,
		-0.897451, 0.283023, -0.338348,
		36.906723, 38.246880, 28.691378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390755, 37.587410, 28.393831>,  <37.534939, 38.048763, 28.928221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390755, 37.587410, 28.393831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.172462, 37.917965, 28.338301>,  <37.041489, 38.116299, 28.304981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.172462, 37.917965, 28.338301>,  <37.390755, 37.587410, 28.393831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172462, 37.917965, 28.338301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416941, 0.124073, -0.900426,
		-0.726872, -0.549269, -0.412263,
		-0.545727, 0.826383, -0.138828,
		37.008743, 38.165878, 28.296652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059349, 37.550697, 27.758352>,  <37.390755, 37.587410, 28.393831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059349, 37.550697, 27.758352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.056770, 37.944183, 27.830193>,  <37.055222, 38.180275, 27.873297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.056770, 37.944183, 27.830193>,  <37.059349, 37.550697, 27.758352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056770, 37.944183, 27.830193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534904, 0.155141, -0.830548,
		-0.844888, 0.090712, -0.527196,
		-0.006449, 0.983719, 0.179599,
		37.054836, 38.239300, 27.884071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948402, 37.839161, 27.057524>,  <37.059349, 37.550697, 27.758352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948402, 37.839161, 27.057524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.053265, 38.167160, 27.261045>,  <37.116180, 38.363960, 27.383158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.053265, 38.167160, 27.261045>,  <36.948402, 37.839161, 27.057524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053265, 38.167160, 27.261045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534091, 0.315849, -0.784210,
		-0.803755, 0.477332, -0.355151,
		0.262154, 0.819996, 0.508804,
		37.131912, 38.413158, 27.413687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644173, 38.433121, 26.695463>,  <36.948402, 37.839161, 27.057524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644173, 38.433121, 26.695463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.959084, 38.558498, 26.907858>,  <37.148029, 38.633724, 27.035295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.959084, 38.558498, 26.907858>,  <36.644173, 38.433121, 26.695463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959084, 38.558498, 26.907858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454968, 0.285937, -0.843353,
		-0.416177, 0.905533, 0.082502,
		0.787275, 0.313448, 0.530989,
		37.195267, 38.652534, 27.067154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744583, 39.029373, 26.337957>,  <36.644173, 38.433121, 26.695463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744583, 39.029373, 26.337957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.085682, 38.953716, 26.532709>,  <37.290340, 38.908321, 26.649561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.085682, 38.953716, 26.532709>,  <36.744583, 39.029373, 26.337957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085682, 38.953716, 26.532709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521959, 0.343651, -0.780681,
		-0.019658, 0.919853, 0.391770,
		0.852744, -0.189141, 0.486881,
		37.341507, 38.896973, 26.678774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138584, 39.677032, 26.337856>,  <36.744583, 39.029373, 26.337957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138584, 39.677032, 26.337856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.389271, 39.365372, 26.342739>,  <37.539684, 39.178375, 26.345669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.389271, 39.365372, 26.342739>,  <37.138584, 39.677032, 26.337856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389271, 39.365372, 26.342739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553465, 0.434048, -0.710830,
		0.548545, 0.452245, 0.703258,
		0.626717, -0.779151, 0.012207,
		37.577286, 39.131626, 26.346401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687531, 39.941914, 25.907871>,  <37.138584, 39.677032, 26.337856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687531, 39.941914, 25.907871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.802017, 39.562759, 25.963850>,  <37.870708, 39.335266, 25.997437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.802017, 39.562759, 25.963850>,  <37.687531, 39.941914, 25.907871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802017, 39.562759, 25.963850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685848, 0.100682, -0.720747,
		0.669098, 0.302272, 0.678925,
		0.286217, -0.947890, 0.139946,
		37.887882, 39.278393, 26.005835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437431, 39.880692, 25.989103>,  <37.687531, 39.941914, 25.907871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.437431, 39.880692, 25.989103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.292461, 39.536690, 25.845419>,  <38.205479, 39.330288, 25.759209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.292461, 39.536690, 25.845419>,  <38.437431, 39.880692, 25.989103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292461, 39.536690, 25.845419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603745, 0.076979, -0.793452,
		0.710027, -0.504440, 0.491327,
		-0.362427, -0.860009, -0.359210,
		38.183735, 39.278687, 25.737656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924461, 39.678806, 25.518492>,  <38.437431, 39.880692, 25.989103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924461, 39.678806, 25.518492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.645630, 39.425076, 25.384804>,  <38.478329, 39.272839, 25.304590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.645630, 39.425076, 25.384804>,  <38.924461, 39.678806, 25.518492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645630, 39.425076, 25.384804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455568, -0.031901, -0.889629,
		0.553655, -0.772406, 0.311217,
		-0.697083, -0.634328, -0.334221,
		38.436504, 39.234776, 25.284538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673717, 39.482590, 25.762711>,  <38.924461, 39.678806, 25.518492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673717, 39.482590, 25.762711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.957939, 39.750736, 25.848242>,  <40.128471, 39.911625, 25.899561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.957939, 39.750736, 25.848242>,  <39.673717, 39.482590, 25.762711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.957939, 39.750736, 25.848242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110484, -0.193822, 0.974795,
		0.694918, -0.716266, -0.063655,
		0.710550, 0.670370, 0.213827,
		40.171104, 39.951847, 25.912390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138870, 39.112213, 26.269064>,  <39.673717, 39.482590, 25.762711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.138870, 39.112213, 26.269064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.241158, 39.496338, 26.313606>,  <40.302532, 39.726814, 26.340332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.241158, 39.496338, 26.313606>,  <40.138870, 39.112213, 26.269064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241158, 39.496338, 26.313606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027748, -0.122427, 0.992089,
		0.966352, -0.250608, -0.057954,
		0.255721, 0.960316, 0.111354,
		40.317875, 39.784431, 26.347012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.567097, 39.141365, 26.833694>,  <40.138870, 39.112213, 26.269064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.567097, 39.141365, 26.833694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.433365, 39.517479, 26.808088>,  <40.353127, 39.743145, 26.792725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.433365, 39.517479, 26.808088>,  <40.567097, 39.141365, 26.833694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433365, 39.517479, 26.808088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013336, 0.072635, 0.997269,
		0.942363, 0.332561, -0.036824,
		-0.334327, 0.940281, -0.064014,
		40.333065, 39.799564, 26.788885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.958340, 39.498959, 27.282990>,  <40.567097, 39.141365, 26.833694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.958340, 39.498959, 27.282990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.617512, 39.702164, 27.232546>,  <40.413013, 39.824085, 27.202280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.617512, 39.702164, 27.232546>,  <40.958340, 39.498959, 27.282990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.617512, 39.702164, 27.232546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018515, 0.211521, 0.977198,
		0.523102, 0.834975, -0.170825,
		-0.852069, 0.508011, -0.126107,
		40.361893, 39.854568, 27.194714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.903568, 39.851257, 27.909508>,  <40.958340, 39.498959, 27.282990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.903568, 39.851257, 27.909508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.540531, 39.887817, 27.745600>,  <40.322708, 39.909756, 27.647255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.540531, 39.887817, 27.745600>,  <40.903568, 39.851257, 27.909508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540531, 39.887817, 27.745600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403839, 0.076845, 0.911597,
		0.114811, 0.992845, -0.032832,
		-0.907597, 0.091403, -0.409772,
		40.268253, 39.915237, 27.622667>
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
