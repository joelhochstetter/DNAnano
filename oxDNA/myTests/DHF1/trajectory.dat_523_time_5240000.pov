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
	sky <-0, 1, 0>
	up <-0, 1, 0>
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<2.463483, -0.355032, 1.111463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.237047, -0.115192, 1.337746>,  <2.101185, 0.028711, 1.473515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.237047, -0.115192, 1.337746>,  <2.463483, -0.355032, 1.111463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.237047, -0.115192, 1.337746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537980, 0.251248, -0.804644,
		-0.624596, -0.759840, 0.180343,
		-0.566090, 0.599598, 0.565707,
		2.067220, 0.064687, 1.507458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.829092, -0.518684, 0.906001>,  <2.463483, -0.355032, 1.111463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.829092, -0.518684, 0.906001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.769488, -0.166492, 1.086025>,  <1.733726, 0.044822, 1.194040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.769488, -0.166492, 1.086025>,  <1.829092, -0.518684, 0.906001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.769488, -0.166492, 1.086025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515733, 0.319134, -0.795093,
		-0.843692, -0.350587, 0.406538,
		-0.149009, 0.880478, 0.450060,
		1.724786, 0.097651, 1.221043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.113159, -0.357488, 0.918211>,  <1.829092, -0.518684, 0.906001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.113159, -0.357488, 0.918211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.338669, -0.028198, 0.891499>,  <1.473974, 0.169376, 0.875471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.338669, -0.028198, 0.891499>,  <1.113159, -0.357488, 0.918211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.338669, -0.028198, 0.891499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546945, 0.311532, -0.777045,
		-0.618878, 0.474603, 0.625892,
		0.563773, 0.823225, -0.066782,
		1.507801, 0.218769, 0.871464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.690775, 0.230654, 0.773303>,  <1.113159, -0.357488, 0.918211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.690775, 0.230654, 0.773303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.054954, 0.294357, 0.620609>,  <1.273461, 0.332579, 0.528993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.054954, 0.294357, 0.620609>,  <0.690775, 0.230654, 0.773303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.054954, 0.294357, 0.620609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412756, 0.409592, -0.813553,
		0.026790, 0.898260, 0.438646,
		0.910448, 0.159258, -0.381735,
		1.328088, 0.342135, 0.506089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.561088, 0.880997, 0.401055>,  <0.690775, 0.230654, 0.773303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.561088, 0.880997, 0.401055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.895389, 0.715252, 0.256931>,  <1.095969, 0.615805, 0.170457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.895389, 0.715252, 0.256931>,  <0.561088, 0.880997, 0.401055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.895389, 0.715252, 0.256931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172564, 0.424735, -0.888719,
		0.521288, 0.804925, 0.283469,
		0.835752, -0.414362, -0.360310,
		1.146115, 0.590943, 0.148838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.128328, 1.325006, 0.269126>,  <0.561088, 0.880997, 0.401055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.128328, 1.325006, 0.269126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.259759, 1.051235, 0.008789>,  <1.338618, 0.886973, -0.147413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.259759, 1.051235, 0.008789>,  <1.128328, 1.325006, 0.269126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.259759, 1.051235, 0.008789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052603, 0.701296, -0.710926,
		0.943011, 0.199360, 0.266434,
		0.328579, -0.684426, -0.650843,
		1.358333, 0.845907, -0.186464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.626717, 1.677859, -0.173197>,  <1.128328, 1.325006, 0.269126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.626717, 1.677859, -0.173197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.565144, 1.336235, -0.371948>,  <1.528200, 1.131261, -0.491199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.565144, 1.336235, -0.371948>,  <1.626717, 1.677859, -0.173197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.565144, 1.336235, -0.371948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119938, 0.483002, -0.867366,
		0.980775, -0.193111, 0.028084,
		-0.153933, -0.854059, -0.496878,
		1.518963, 1.080017, -0.521012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.132398, 1.678044, -0.702291>,  <1.626717, 1.677859, -0.173197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.132398, 1.678044, -0.702291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.827094, 1.443970, -0.811829>,  <1.643911, 1.303525, -0.877551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.827094, 1.443970, -0.811829>,  <2.132398, 1.678044, -0.702291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.827094, 1.443970, -0.811829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035792, 0.461495, -0.886421,
		0.645098, -0.666769, -0.373186,
		-0.763261, -0.585186, -0.273845,
		1.598115, 1.268414, -0.893982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.661159, 2.314355, 3.313945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.491173, 2.016823, 3.107597>,  <1.389181, 1.838304, 2.983789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.491173, 2.016823, 3.107597>,  <1.661159, 2.314355, 3.313945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.491173, 2.016823, 3.107597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158853, -0.499765, 0.851470,
		-0.891162, 0.443794, 0.094224,
		-0.424967, -0.743829, -0.515869,
		1.363683, 1.793674, 2.952837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.011379, 2.118563, 3.699251>,  <1.661159, 2.314355, 3.313945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.011379, 2.118563, 3.699251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.175896, 1.823353, 3.485275>,  <1.274606, 1.646227, 3.356890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.175896, 1.823353, 3.485275>,  <1.011379, 2.118563, 3.699251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.175896, 1.823353, 3.485275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114134, -0.623954, 0.773081,
		-0.904330, -0.256907, -0.340860,
		0.411291, -0.738024, -0.534939,
		1.299283, 1.601946, 3.324794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.542196, 1.459841, 3.786423>,  <1.011379, 2.118563, 3.699251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.542196, 1.459841, 3.786423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.914268, 1.360279, 3.678490>,  <1.137512, 1.300542, 3.613729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.914268, 1.360279, 3.678490>,  <0.542196, 1.459841, 3.786423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.914268, 1.360279, 3.678490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004771, -0.743173, 0.669082,
		-0.367071, -0.621080, -0.692473,
		0.930181, -0.248904, -0.269834,
		1.193323, 1.285608, 3.597539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.655485, 0.736440, 3.596854>,  <0.542196, 1.459841, 3.786423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.655485, 0.736440, 3.596854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.011269, 0.851246, 3.739113>,  <1.224739, 0.920130, 3.824468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.011269, 0.851246, 3.739113>,  <0.655485, 0.736440, 3.596854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.011269, 0.851246, 3.739113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020078, -0.801985, 0.597007,
		0.456573, -0.523873, -0.719096,
		0.889459, 0.287015, 0.355646,
		1.278106, 0.937350, 3.845807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.962897, 0.126256, 3.836861>,  <0.655485, 0.736440, 3.596854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.962897, 0.126256, 3.836861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.207270, 0.396126, 4.002548>,  <1.353893, 0.558048, 4.101961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.207270, 0.396126, 4.002548>,  <0.962897, 0.126256, 3.836861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.207270, 0.396126, 4.002548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163011, -0.619203, 0.768125,
		0.774719, -0.401750, -0.488270,
		0.610932, 0.674674, 0.414218,
		1.390549, 0.598528, 4.126814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.708188, -0.168855, 4.054126>,  <0.962897, 0.126256, 3.836861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.708188, -0.168855, 4.054126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.598980, 0.140327, 4.283211>,  <1.533455, 0.325837, 4.420662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.598980, 0.140327, 4.283211>,  <1.708188, -0.168855, 4.054126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.598980, 0.140327, 4.283211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243249, -0.520517, 0.818470,
		0.930747, 0.362771, -0.045909,
		-0.273021, 0.772955, 0.572713,
		1.517074, 0.372214, 4.455025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.249318, -0.034707, 4.592952>,  <1.708188, -0.168855, 4.054126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.249318, -0.034707, 4.592952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.912106, 0.122459, 4.739876>,  <1.709778, 0.216759, 4.828030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.912106, 0.122459, 4.739876>,  <2.249318, -0.034707, 4.592952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.912106, 0.122459, 4.739876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280553, -0.261418, 0.923553,
		0.458900, 0.881634, 0.110149,
		-0.843031, 0.392916, 0.367310,
		1.659196, 0.240334, 4.850069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.368986, 0.590767, 5.053592>,  <2.249318, -0.034707, 4.592952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.368986, 0.590767, 5.053592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.033400, 0.400253, 5.158882>,  <1.832047, 0.285945, 5.222056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.033400, 0.400253, 5.158882>,  <2.368986, 0.590767, 5.053592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.033400, 0.400253, 5.158882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338895, -0.078826, 0.937516,
		-0.425774, 0.875751, 0.227543,
		-0.838967, -0.476284, 0.263226,
		1.781709, 0.257368, 5.237850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
