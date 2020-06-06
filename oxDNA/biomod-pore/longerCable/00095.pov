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
	<24.512234, 34.867752, 35.229546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.265661, 35.167492, 35.132816>,  <24.117718, 35.347336, 35.074780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.265661, 35.167492, 35.132816>,  <24.512234, 34.867752, 35.229546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.265661, 35.167492, 35.132816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124199, -0.210735, -0.969621,
		-0.777550, -0.627741, 0.036835,
		-0.616433, 0.749354, -0.241822,
		24.080730, 35.392300, 35.060268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.540197, 34.345272, 35.870468>,  <24.512234, 34.867752, 35.229546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.540197, 34.345272, 35.870468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.722607, 34.013668, 35.999947>,  <24.832052, 33.814705, 36.077633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.722607, 34.013668, 35.999947>,  <24.540197, 34.345272, 35.870468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.722607, 34.013668, 35.999947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886973, 0.453175, -0.088947,
		-0.072951, 0.327670, 0.941972,
		0.456023, -0.829014, 0.323694,
		24.859413, 33.764965, 36.097054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.093855, 34.459404, 36.449394>,  <24.540197, 34.345272, 35.870468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.093855, 34.459404, 36.449394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.164948, 34.153046, 36.202229>,  <25.207603, 33.969231, 36.053928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.164948, 34.153046, 36.202229>,  <25.093855, 34.459404, 36.449394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.164948, 34.153046, 36.202229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848039, 0.437753, -0.298665,
		0.499239, -0.470931, 0.727313,
		0.177733, -0.765895, -0.617912,
		25.218267, 33.923279, 36.016853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.868559, 34.144577, 36.399647>,  <25.093855, 34.459404, 36.449394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.868559, 34.144577, 36.399647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.660519, 34.117344, 36.059093>,  <25.535694, 34.101006, 35.854759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.660519, 34.117344, 36.059093>,  <25.868559, 34.144577, 36.399647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.660519, 34.117344, 36.059093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758422, 0.421617, -0.497026,
		0.392798, -0.904215, -0.167648,
		-0.520101, -0.068082, -0.851387,
		25.504488, 34.096920, 35.803677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.215334, 33.738438, 35.890163>,  <25.868559, 34.144577, 36.399647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.215334, 33.738438, 35.890163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.991865, 33.989723, 35.673557>,  <25.857784, 34.140495, 35.543594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.991865, 33.989723, 35.673557>,  <26.215334, 33.738438, 35.890163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.991865, 33.989723, 35.673557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828872, 0.399824, -0.391295,
		-0.029306, -0.667450, -0.744077,
		-0.558670, 0.628212, -0.541514,
		25.824265, 34.178188, 35.511105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.860016, 33.304325, 35.854805>,  <26.215334, 33.738438, 35.890163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.860016, 33.304325, 35.854805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.136642, 33.219517, 35.578606>,  <27.302618, 33.168633, 35.412888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.136642, 33.219517, 35.578606>,  <26.860016, 33.304325, 35.854805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.136642, 33.219517, 35.578606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231050, -0.970657, 0.066642,
		-0.684363, 0.113452, -0.720260,
		0.691565, -0.212024, -0.690495,
		27.344112, 33.155910, 35.371456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.599503, 32.829216, 35.388653>,  <26.860016, 33.304325, 35.854805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.599503, 32.829216, 35.388653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.997267, 32.790382, 35.405254>,  <27.235926, 32.767082, 35.415215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.997267, 32.790382, 35.405254>,  <26.599503, 32.829216, 35.388653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.997267, 32.790382, 35.405254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102723, -0.980464, 0.167745,
		0.024409, -0.171071, -0.984956,
		0.994411, -0.097083, 0.041505,
		27.295589, 32.761257, 35.417706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.806074, 32.238686, 35.000477>,  <26.599503, 32.829216, 35.388653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.806074, 32.238686, 35.000477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.070044, 32.311390, 35.292084>,  <27.228424, 32.355011, 35.467049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.070044, 32.311390, 35.292084>,  <26.806074, 32.238686, 35.000477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.070044, 32.311390, 35.292084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070774, -0.950945, 0.301157,
		0.747993, -0.250336, -0.614685,
		0.659922, 0.181760, 0.729017,
		27.268021, 32.365917, 35.510788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.227444, 31.575735, 35.099964>,  <26.806074, 32.238686, 35.000477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.227444, 31.575735, 35.099964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.281260, 31.785133, 35.436501>,  <27.313549, 31.910772, 35.638420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.281260, 31.785133, 35.436501>,  <27.227444, 31.575735, 35.099964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.281260, 31.785133, 35.436501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038771, -0.851188, 0.523427,
		0.990149, -0.037804, -0.134817,
		0.134542, 0.523498, 0.841337,
		27.321623, 31.942183, 35.688900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.711309, 31.257059, 35.421917>,  <27.227444, 31.575735, 35.099964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.711309, 31.257059, 35.421917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.525322, 31.449368, 35.719284>,  <27.413729, 31.564753, 35.897705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.525322, 31.449368, 35.719284>,  <27.711309, 31.257059, 35.421917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.525322, 31.449368, 35.719284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060533, -0.855005, 0.515075,
		0.883255, 0.194493, 0.426653,
		-0.464969, 0.480769, 0.743415,
		27.385832, 31.593597, 35.942310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.997898, 30.976122, 36.139240>,  <27.711309, 31.257059, 35.421917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.997898, 30.976122, 36.139240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.661722, 31.161606, 36.251408>,  <27.460016, 31.272896, 36.318707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.661722, 31.161606, 36.251408>,  <27.997898, 30.976122, 36.139240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.661722, 31.161606, 36.251408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183962, -0.730876, 0.657251,
		0.509726, 0.500793, 0.699562,
		-0.840439, 0.463710, 0.280420,
		27.409590, 31.300718, 36.335533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.953590, 30.942501, 36.909393>,  <27.997898, 30.976122, 36.139240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.953590, 30.942501, 36.909393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.605482, 30.963503, 36.713486>,  <27.396618, 30.976103, 36.595940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.605482, 30.963503, 36.713486>,  <27.953590, 30.942501, 36.909393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.605482, 30.963503, 36.713486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322334, -0.812556, 0.485648,
		-0.372468, 0.580514, 0.724065,
		-0.870269, 0.052502, -0.489770,
		27.344400, 30.979254, 36.566555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.220896, 30.573618, 37.017628>,  <27.953590, 30.942501, 36.909393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.220896, 30.573618, 37.017628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.858370, 30.413015, 36.964882>,  <26.640854, 30.316654, 36.933235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.858370, 30.413015, 36.964882>,  <27.220896, 30.573618, 37.017628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.858370, 30.413015, 36.964882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004956, -0.301914, 0.953322,
		-0.422575, 0.864663, 0.271639,
		-0.906314, -0.401504, -0.131867,
		26.586475, 30.292564, 36.925323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.504196, 30.385151, 36.325317>,  <27.220896, 30.573618, 37.017628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.504196, 30.385151, 36.325317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.137659, 30.381403, 36.485432>,  <26.917736, 30.379154, 36.581501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.137659, 30.381403, 36.485432>,  <27.504196, 30.385151, 36.325317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.137659, 30.381403, 36.485432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054633, 0.993301, -0.101820,
		-0.396649, -0.115171, -0.910717,
		-0.916343, -0.009369, 0.400284,
		26.862757, 30.378592, 36.605518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.829454, 30.688215, 35.959484>,  <27.504196, 30.385151, 36.325317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.829454, 30.688215, 35.959484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.813498, 30.718321, 36.358028>,  <26.803923, 30.736385, 36.597157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.813498, 30.718321, 36.358028>,  <26.829454, 30.688215, 35.959484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.813498, 30.718321, 36.358028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028580, 0.996837, -0.074157,
		-0.998795, 0.025518, -0.041919,
		-0.039894, 0.075265, 0.996365,
		26.801529, 30.740900, 36.656937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.126577, 31.029613, 36.286510>,  <26.829454, 30.688215, 35.959484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.126577, 31.029613, 36.286510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.495060, 31.072359, 36.436157>,  <26.716148, 31.098005, 36.525944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.495060, 31.072359, 36.436157>,  <26.126577, 31.029613, 36.286510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.495060, 31.072359, 36.436157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034154, 0.935622, -0.351348,
		-0.387577, 0.336441, 0.858249,
		0.921204, 0.106862, 0.374116,
		26.771421, 31.104418, 36.548393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.261078, 31.811155, 36.505287>,  <26.126577, 31.029613, 36.286510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.261078, 31.811155, 36.505287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.622564, 31.647081, 36.456226>,  <26.839457, 31.548637, 36.426788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.622564, 31.647081, 36.456226>,  <26.261078, 31.811155, 36.505287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.622564, 31.647081, 36.456226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318901, 0.836084, -0.446392,
		0.285652, 0.364298, 0.886392,
		0.903717, -0.410184, -0.122654,
		26.893679, 31.524027, 36.419430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.741385, 32.345127, 36.735996>,  <26.261078, 31.811155, 36.505287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.741385, 32.345127, 36.735996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.944960, 32.088413, 36.506527>,  <27.067104, 31.934385, 36.368847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.944960, 32.088413, 36.506527>,  <26.741385, 32.345127, 36.735996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.944960, 32.088413, 36.506527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567219, 0.751321, -0.337311,
		0.647491, -0.153726, 0.746407,
		0.508938, -0.641782, -0.573670,
		27.097641, 31.895878, 36.334427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.430891, 32.412685, 36.864357>,  <26.741385, 32.345127, 36.735996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.430891, 32.412685, 36.864357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.358427, 32.299706, 36.487549>,  <27.314949, 32.231918, 36.261463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.358427, 32.299706, 36.487549>,  <27.430891, 32.412685, 36.864357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.358427, 32.299706, 36.487549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408844, 0.849546, -0.333343,
		0.894443, -0.445529, -0.038427,
		-0.181160, -0.282445, -0.942022,
		27.304079, 32.214973, 36.204941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.126198, 32.610718, 36.495609>,  <27.430891, 32.412685, 36.864357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.126198, 32.610718, 36.495609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.847548, 32.545052, 36.216251>,  <27.680357, 32.505653, 36.048637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.847548, 32.545052, 36.216251>,  <28.126198, 32.610718, 36.495609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.847548, 32.545052, 36.216251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302510, 0.815484, -0.493430,
		0.650536, -0.555010, -0.518428,
		-0.696628, -0.164164, -0.698398,
		27.638559, 32.495804, 36.006733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.713459, 33.306885, 36.398586>,  <28.126198, 32.610718, 36.495609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.713459, 33.306885, 36.398586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.969845, 33.314960, 36.091663>,  <28.123676, 33.319805, 35.907509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.969845, 33.314960, 36.091663>,  <27.713459, 33.306885, 36.398586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.969845, 33.314960, 36.091663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036504, 0.997721, 0.056743,
		0.766704, -0.064379, 0.638765,
		0.640962, 0.020188, -0.767307,
		28.162134, 33.321018, 35.861473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.385235, 33.515396, 36.618584>,  <27.713459, 33.306885, 36.398586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.385235, 33.515396, 36.618584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.305042, 33.623268, 36.241844>,  <28.256927, 33.687992, 36.015800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.305042, 33.623268, 36.241844>,  <28.385235, 33.515396, 36.618584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.305042, 33.623268, 36.241844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073903, 0.954466, 0.289021,
		0.976906, 0.127548, -0.171423,
		-0.200481, 0.269677, -0.941850,
		28.244898, 33.704170, 35.959290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.862576, 32.939785, 36.779053>,  <28.385235, 33.515396, 36.618584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.862576, 32.939785, 36.779053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.078562, 32.626560, 36.902508>,  <29.208153, 32.438625, 36.976582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.078562, 32.626560, 36.902508>,  <28.862576, 32.939785, 36.779053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.078562, 32.626560, 36.902508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001917, 0.367834, 0.929890,
		-0.841685, -0.501516, 0.200119,
		0.539966, -0.783058, 0.308639,
		29.240551, 32.391644, 36.995098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.542137, 32.645931, 37.402584>,  <28.862576, 32.939785, 36.779053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.542137, 32.645931, 37.402584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.938196, 32.591518, 37.415890>,  <29.175831, 32.558872, 37.423874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.938196, 32.591518, 37.415890>,  <28.542137, 32.645931, 37.402584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.938196, 32.591518, 37.415890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016269, 0.347673, 0.937475,
		-0.139090, -0.927696, 0.346460,
		0.990146, -0.136030, 0.033265,
		29.235241, 32.550709, 37.425869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.817757, 32.112690, 37.896240>,  <28.542137, 32.645931, 37.402584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.817757, 32.112690, 37.896240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.099064, 32.394978, 37.861904>,  <29.267849, 32.564350, 37.841301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.099064, 32.394978, 37.861904>,  <28.817757, 32.112690, 37.896240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.099064, 32.394978, 37.861904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120239, 0.237084, 0.964019,
		0.700682, -0.667644, 0.251589,
		0.703269, 0.705722, -0.085844,
		29.310045, 32.606693, 37.836151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.526199, 32.108974, 38.299252>,  <28.817757, 32.112690, 37.896240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.526199, 32.108974, 38.299252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435959, 32.489880, 38.216984>,  <29.381815, 32.718422, 38.167622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435959, 32.489880, 38.216984>,  <29.526199, 32.108974, 38.299252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.435959, 32.489880, 38.216984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049256, 0.221990, 0.973804,
		0.972973, 0.209563, -0.096987,
		-0.225603, 0.952263, -0.205668,
		29.368279, 32.775558, 38.155285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.071701, 32.556488, 38.420647>,  <29.526199, 32.108974, 38.299252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.071701, 32.556488, 38.420647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.714899, 32.724533, 38.487377>,  <29.500818, 32.825359, 38.527416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.714899, 32.724533, 38.487377>,  <30.071701, 32.556488, 38.420647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.714899, 32.724533, 38.487377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323754, 0.336226, 0.884384,
		0.315449, 0.842886, -0.435929,
		-0.892006, 0.420112, 0.166825,
		29.447298, 32.850567, 38.537426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.194672, 33.204029, 38.729866>,  <30.071701, 32.556488, 38.420647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.194672, 33.204029, 38.729866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.821266, 33.096500, 38.824764>,  <29.597223, 33.031982, 38.881702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.821266, 33.096500, 38.824764>,  <30.194672, 33.204029, 38.729866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.821266, 33.096500, 38.824764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094285, 0.454359, 0.885815,
		-0.345922, 0.849289, -0.398804,
		-0.933514, -0.268822, 0.237248,
		29.541212, 33.015854, 38.895939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.960606, 33.680862, 39.236984>,  <30.194672, 33.204029, 38.729866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.960606, 33.680862, 39.236984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.691769, 33.390419, 39.295036>,  <29.530466, 33.216152, 39.329868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.691769, 33.390419, 39.295036>,  <29.960606, 33.680862, 39.236984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.691769, 33.390419, 39.295036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142733, 0.319359, 0.936823,
		-0.726578, 0.608919, -0.318279,
		-0.672095, -0.726104, 0.145126,
		29.490141, 33.172588, 39.338573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.352798, 33.833481, 39.686977>,  <29.960606, 33.680862, 39.236984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.352798, 33.833481, 39.686977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.367344, 33.435322, 39.722443>,  <29.376072, 33.196426, 39.743721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.367344, 33.435322, 39.722443>,  <29.352798, 33.833481, 39.686977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.367344, 33.435322, 39.722443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034389, 0.087419, 0.995578,
		-0.998747, -0.039252, -0.031052,
		0.036364, -0.995398, 0.088660,
		29.378254, 33.136703, 39.749039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.216497, 33.990112, 40.430481>,  <29.352798, 33.833481, 39.686977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.216497, 33.990112, 40.430481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.605896, 34.066864, 40.380707>,  <29.839535, 34.112915, 40.350842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.605896, 34.066864, 40.380707>,  <29.216497, 33.990112, 40.430481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.605896, 34.066864, 40.380707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228619, -0.830421, 0.508068,
		-0.005845, -0.523052, -0.852281,
		0.973498, 0.191878, -0.124433,
		29.897945, 34.124428, 40.343376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.605274, 33.361767, 40.252594>,  <29.216497, 33.990112, 40.430481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.605274, 33.361767, 40.252594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.874416, 33.590290, 40.440582>,  <30.035902, 33.727402, 40.553375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.874416, 33.590290, 40.440582>,  <29.605274, 33.361767, 40.252594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.874416, 33.590290, 40.440582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339479, -0.802906, 0.489995,
		0.657281, -0.170150, -0.734187,
		0.672856, 0.571306, 0.469973,
		30.076273, 33.761681, 40.581573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182344, 32.913399, 40.351891>,  <29.605274, 33.361767, 40.252594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182344, 32.913399, 40.351891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231836, 33.211994, 40.613407>,  <30.261532, 33.391151, 40.770317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231836, 33.211994, 40.613407>,  <30.182344, 32.913399, 40.351891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231836, 33.211994, 40.613407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383755, -0.643590, 0.662212,
		0.915108, 0.168960, -0.366101,
		0.123732, 0.746488, 0.653793,
		30.268955, 33.435940, 40.809544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.804014, 32.736862, 40.619232>,  <30.182344, 32.913399, 40.351891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.804014, 32.736862, 40.619232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673662, 32.989044, 40.901035>,  <30.595451, 33.140354, 41.070118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673662, 32.989044, 40.901035>,  <30.804014, 32.736862, 40.619232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.673662, 32.989044, 40.901035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452414, -0.550329, 0.701754,
		0.830135, 0.547417, -0.105885,
		-0.325880, 0.630454, 0.704506,
		30.575897, 33.178181, 41.112389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.375715, 32.909264, 41.121914>,  <30.804014, 32.736862, 40.619232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.375715, 32.909264, 41.121914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.016586, 32.943375, 41.294724>,  <30.801109, 32.963840, 41.398411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.016586, 32.943375, 41.294724>,  <31.375715, 32.909264, 41.121914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.016586, 32.943375, 41.294724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288321, -0.627711, 0.723084,
		0.332850, 0.773761, 0.538985,
		-0.897821, 0.085278, 0.432025,
		30.747240, 32.968960, 41.424332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.433117, 32.743176, 41.807026>,  <31.375715, 32.909264, 41.121914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.433117, 32.743176, 41.807026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.033342, 32.734627, 41.817413>,  <30.793478, 32.729496, 41.823647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.033342, 32.734627, 41.817413>,  <31.433117, 32.743176, 41.807026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.033342, 32.734627, 41.817413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033633, -0.640658, 0.767090,
		0.000241, 0.767529, 0.641014,
		-0.999434, -0.021374, 0.025969,
		30.733513, 32.728214, 41.825203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206326, 33.023773, 42.462318>,  <31.433117, 32.743176, 41.807026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.206326, 33.023773, 42.462318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.983517, 32.743210, 42.284439>,  <30.849833, 32.574871, 42.177711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.983517, 32.743210, 42.284439>,  <31.206326, 33.023773, 42.462318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.983517, 32.743210, 42.284439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239710, -0.648454, 0.722527,
		-0.795152, 0.295863, 0.529337,
		-0.557020, -0.701407, -0.444699,
		30.816410, 32.532787, 42.151028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.512117, 32.742188, 42.560150>,  <31.206326, 33.023773, 42.462318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.512117, 32.742188, 42.560150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.691708, 32.951748, 42.270615>,  <30.799461, 33.077484, 42.096893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.691708, 32.951748, 42.270615>,  <30.512117, 32.742188, 42.560150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.691708, 32.951748, 42.270615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859705, 0.474099, -0.190100,
		0.243579, 0.707640, 0.663260,
		0.448974, 0.523904, -0.723842,
		30.826399, 33.108917, 42.053463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.027399, 33.081192, 42.177444>,  <30.512117, 32.742188, 42.560150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.027399, 33.081192, 42.177444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.343433, 33.199852, 41.962868>,  <30.533054, 33.271046, 41.834122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.343433, 33.199852, 41.962868>,  <30.027399, 33.081192, 42.177444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.343433, 33.199852, 41.962868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601963, 0.540757, -0.587556,
		0.115788, 0.787136, 0.605814,
		0.790085, 0.296645, -0.536440,
		30.580460, 33.288845, 41.801937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.995331, 33.855068, 42.029430>,  <30.027399, 33.081192, 42.177444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.995331, 33.855068, 42.029430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.193184, 33.663467, 41.739357>,  <30.311895, 33.548508, 41.565311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.193184, 33.663467, 41.739357>,  <29.995331, 33.855068, 42.029430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.193184, 33.663467, 41.739357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439954, 0.581597, -0.684241,
		0.749520, 0.657496, 0.076938,
		0.494633, -0.479003, -0.725186,
		30.341574, 33.519768, 41.521801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.434906, 34.425285, 41.609875>,  <29.995331, 33.855068, 42.029430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.434906, 34.425285, 41.609875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.390366, 34.113861, 41.362831>,  <30.363642, 33.927006, 41.214603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.390366, 34.113861, 41.362831>,  <30.434906, 34.425285, 41.609875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.390366, 34.113861, 41.362831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061145, 0.625669, -0.777689,
		0.991898, -0.048834, -0.117275,
		-0.111352, -0.778559, -0.617613,
		30.356960, 33.880295, 41.177547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958158, 34.550480, 41.101822>,  <30.434906, 34.425285, 41.609875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958158, 34.550480, 41.101822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.691032, 34.304756, 40.933708>,  <30.530756, 34.157322, 40.832840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.691032, 34.304756, 40.933708>,  <30.958158, 34.550480, 41.101822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.691032, 34.304756, 40.933708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035805, 0.590515, -0.806232,
		0.743465, -0.523366, -0.416350,
		-0.667816, -0.614313, -0.420288,
		30.490688, 34.120464, 40.807621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.134260, 34.308891, 40.460548>,  <30.958158, 34.550480, 41.101822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.134260, 34.308891, 40.460548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.735949, 34.343178, 40.473679>,  <30.496962, 34.363750, 40.481556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.735949, 34.343178, 40.473679>,  <31.134260, 34.308891, 40.460548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.735949, 34.343178, 40.473679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032662, 0.665163, -0.745983,
		-0.085779, -0.741762, -0.665155,
		-0.995778, 0.085715, 0.032830,
		30.437216, 34.368893, 40.483528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.849028, 34.354820, 39.780064>,  <31.134260, 34.308891, 40.460548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.849028, 34.354820, 39.780064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574057, 34.511051, 40.024975>,  <30.409073, 34.604790, 40.171921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574057, 34.511051, 40.024975>,  <30.849028, 34.354820, 39.780064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574057, 34.511051, 40.024975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095322, 0.787252, -0.609220,
		-0.719969, -0.477159, -0.503949,
		-0.687429, 0.390582, 0.612280,
		30.367828, 34.628227, 40.208660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.856993, 33.909256, 39.081062>,  <30.849028, 34.354820, 39.780064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.856993, 33.909256, 39.081062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041414, 33.734921, 39.390247>,  <31.152067, 33.630322, 39.575760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041414, 33.734921, 39.390247>,  <30.856993, 33.909256, 39.081062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041414, 33.734921, 39.390247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374610, 0.694051, 0.614785,
		-0.804422, -0.573011, 0.156727,
		0.461055, -0.435835, 0.772966,
		31.179731, 33.604172, 39.622135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188105, 33.381153, 38.676487>,  <30.856993, 33.909256, 39.081062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188105, 33.381153, 38.676487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.243523, 32.988113, 38.725975>,  <31.276773, 32.752289, 38.755669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.243523, 32.988113, 38.725975>,  <31.188105, 33.381153, 38.676487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.243523, 32.988113, 38.725975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940113, 0.169773, 0.295575,
		-0.311436, 0.075364, 0.947274,
		0.138546, -0.982597, 0.123724,
		31.285086, 32.693333, 38.763092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.336006, 33.150230, 39.322098>,  <31.188105, 33.381153, 38.676487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.336006, 33.150230, 39.322098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.498991, 32.839611, 39.129871>,  <31.596783, 32.653240, 39.014534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.498991, 32.839611, 39.129871>,  <31.336006, 33.150230, 39.322098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.498991, 32.839611, 39.129871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864390, 0.158180, 0.477293,
		-0.294625, -0.609877, 0.735694,
		0.407463, -0.776549, -0.480568,
		31.621229, 32.606647, 38.985703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745167, 32.672577, 39.814327>,  <31.336006, 33.150230, 39.322098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745167, 32.672577, 39.814327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924166, 32.582966, 39.468018>,  <32.031567, 32.529198, 39.260231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924166, 32.582966, 39.468018>,  <31.745167, 32.672577, 39.814327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924166, 32.582966, 39.468018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877136, -0.078733, 0.473745,
		-0.174297, -0.971397, 0.161271,
		0.447497, -0.224029, -0.865770,
		32.058414, 32.515759, 39.208286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014984, 31.981941, 39.887531>,  <31.745167, 32.672577, 39.814327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014984, 31.981941, 39.887531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203766, 32.247810, 39.655853>,  <32.317036, 32.407333, 39.516846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203766, 32.247810, 39.655853>,  <32.014984, 31.981941, 39.887531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203766, 32.247810, 39.655853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769869, 0.009422, 0.638132,
		0.429607, -0.747075, -0.507264,
		0.471953, 0.664673, -0.579198,
		32.345352, 32.447212, 39.482094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794220, 32.079376, 39.534389>,  <32.014984, 31.981941, 39.887531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794220, 32.079376, 39.534389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180664, 32.156746, 39.602757>,  <33.412533, 32.203167, 39.643776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180664, 32.156746, 39.602757>,  <32.794220, 32.079376, 39.534389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180664, 32.156746, 39.602757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033357, -0.563069, 0.825736,
		0.255955, -0.803456, -0.537536,
		0.966113, 0.193421, 0.170921,
		33.470497, 32.214771, 39.654034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013618, 31.421177, 39.821613>,  <32.794220, 32.079376, 39.534389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013618, 31.421177, 39.821613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259300, 31.718317, 39.928143>,  <33.406708, 31.896601, 39.992062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259300, 31.718317, 39.928143>,  <33.013618, 31.421177, 39.821613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259300, 31.718317, 39.928143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019467, -0.323117, 0.946159,
		0.788906, -0.586320, -0.183999,
		0.614205, 0.742849, 0.266323,
		33.443562, 31.941172, 40.008038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517735, 31.127834, 40.262436>,  <33.013618, 31.421177, 39.821613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517735, 31.127834, 40.262436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539127, 31.518541, 40.345448>,  <33.551964, 31.752966, 40.395256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539127, 31.518541, 40.345448>,  <33.517735, 31.127834, 40.262436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539127, 31.518541, 40.345448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252533, -0.214300, 0.943558,
		0.966109, 0.001947, -0.258127,
		0.053480, 0.976766, 0.207529,
		33.555172, 31.811571, 40.407707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018799, 31.207609, 40.731239>,  <33.517735, 31.127834, 40.262436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018799, 31.207609, 40.731239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801399, 31.539471, 40.782284>,  <33.670959, 31.738586, 40.812912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801399, 31.539471, 40.782284>,  <34.018799, 31.207609, 40.731239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801399, 31.539471, 40.782284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079017, -0.100788, 0.991765,
		0.835682, 0.549108, -0.010779,
		-0.543499, 0.829652, 0.127616,
		33.638348, 31.788366, 40.820568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427773, 31.674660, 41.226353>,  <34.018799, 31.207609, 40.731239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427773, 31.674660, 41.226353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031132, 31.725338, 41.236759>,  <33.793148, 31.755745, 41.243004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031132, 31.725338, 41.236759>,  <34.427773, 31.674660, 41.226353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031132, 31.725338, 41.236759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000892, -0.194479, 0.980906,
		0.129337, 0.972690, 0.192732,
		-0.991600, 0.126695, 0.026021,
		33.733650, 31.763346, 41.244564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270035, 32.222347, 41.685825>,  <34.427773, 31.674660, 41.226353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270035, 32.222347, 41.685825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961071, 31.969982, 41.656601>,  <33.775692, 31.818563, 41.639065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961071, 31.969982, 41.656601>,  <34.270035, 32.222347, 41.685825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961071, 31.969982, 41.656601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036962, -0.070194, 0.996848,
		-0.634048, 0.772676, 0.030899,
		-0.772410, -0.630908, -0.073066,
		33.729347, 31.780710, 41.634682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549843, 32.233498, 42.355236>,  <34.270035, 32.222347, 41.685825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549843, 32.233498, 42.355236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803688, 32.340900, 42.645111>,  <34.955997, 32.405342, 42.819035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803688, 32.340900, 42.645111>,  <34.549843, 32.233498, 42.355236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803688, 32.340900, 42.645111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761891, 0.374556, 0.528421,
		-0.129553, -0.887476, 0.442269,
		0.634616, 0.268502, 0.724686,
		34.994072, 32.421452, 42.862518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249184, 32.092834, 42.916206>,  <34.549843, 32.233498, 42.355236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249184, 32.092834, 42.916206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520535, 32.355339, 43.048340>,  <34.683346, 32.512840, 43.127621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520535, 32.355339, 43.048340>,  <34.249184, 32.092834, 42.916206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520535, 32.355339, 43.048340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676009, 0.381430, 0.630495,
		0.287769, -0.651026, 0.702392,
		0.678381, 0.656260, 0.330336,
		34.724049, 32.552216, 43.147442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016052, 31.577106, 42.368210>,  <34.249184, 32.092834, 42.916206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016052, 31.577106, 42.368210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661724, 31.739908, 42.457355>,  <33.449127, 31.837589, 42.510845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661724, 31.739908, 42.457355>,  <34.016052, 31.577106, 42.368210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661724, 31.739908, 42.457355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053779, 0.387003, -0.920509,
		-0.460902, -0.827390, -0.320927,
		-0.885820, 0.407006, 0.222867,
		33.395977, 31.862009, 42.524216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510632, 31.262695, 41.858891>,  <34.016052, 31.577106, 42.368210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510632, 31.262695, 41.858891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475376, 31.638371, 41.991650>,  <33.454224, 31.863775, 42.071304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475376, 31.638371, 41.991650>,  <33.510632, 31.262695, 41.858891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475376, 31.638371, 41.991650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154086, 0.316330, -0.936052,
		-0.984119, -0.133641, 0.116836,
		-0.088136, 0.939189, 0.331898,
		33.448936, 31.920128, 42.091221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792969, 31.520962, 41.618725>,  <33.510632, 31.262695, 41.858891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792969, 31.520962, 41.618725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093506, 31.777451, 41.681103>,  <33.273827, 31.931345, 41.718529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093506, 31.777451, 41.681103>,  <32.792969, 31.520962, 41.618725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093506, 31.777451, 41.681103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025558, 0.264405, -0.964073,
		-0.659418, 0.720363, 0.215047,
		0.751341, 0.641224, 0.155942,
		33.318909, 31.969818, 41.727886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619370, 32.236824, 41.466225>,  <32.792969, 31.520962, 41.618725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619370, 32.236824, 41.466225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008400, 32.166992, 41.404762>,  <33.241817, 32.125095, 41.367886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008400, 32.166992, 41.404762>,  <32.619370, 32.236824, 41.466225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008400, 32.166992, 41.404762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111579, 0.229426, -0.966909,
		0.204051, 0.957542, 0.203656,
		0.972581, -0.174576, -0.153656,
		33.300175, 32.114620, 41.358665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977551, 32.862728, 41.158333>,  <32.619370, 32.236824, 41.466225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977551, 32.862728, 41.158333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181866, 32.533718, 41.058292>,  <33.304455, 32.336311, 40.998268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181866, 32.533718, 41.058292>,  <32.977551, 32.862728, 41.158333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181866, 32.533718, 41.058292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073542, 0.248039, -0.965955,
		0.856554, 0.511793, 0.066206,
		0.510791, -0.822523, -0.250097,
		33.335102, 32.286961, 40.983265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419693, 33.040901, 40.625237>,  <32.977551, 32.862728, 41.158333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419693, 33.040901, 40.625237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565514, 32.672070, 40.573292>,  <33.653008, 32.450771, 40.542126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565514, 32.672070, 40.573292>,  <33.419693, 33.040901, 40.625237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565514, 32.672070, 40.573292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304344, 0.249789, -0.919228,
		0.880043, 0.295584, 0.371691,
		0.364553, -0.922082, -0.129866,
		33.674881, 32.395447, 40.534332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149223, 32.960789, 40.422867>,  <33.419693, 33.040901, 40.625237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149223, 32.960789, 40.422867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965736, 32.629932, 40.292999>,  <33.855644, 32.431419, 40.215076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965736, 32.629932, 40.292999>,  <34.149223, 32.960789, 40.422867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965736, 32.629932, 40.292999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341740, 0.173059, -0.923723,
		0.820239, -0.534681, 0.203283,
		-0.458718, -0.827144, -0.324672,
		33.828121, 32.381790, 40.195599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635696, 32.517715, 40.089970>,  <34.149223, 32.960789, 40.422867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635696, 32.517715, 40.089970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283916, 32.427776, 39.922150>,  <34.072849, 32.373814, 39.821457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283916, 32.427776, 39.922150>,  <34.635696, 32.517715, 40.089970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283916, 32.427776, 39.922150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402254, 0.120185, -0.907605,
		0.254498, -0.966953, -0.015250,
		-0.879444, -0.224849, -0.419547,
		34.020084, 32.360321, 39.796284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779640, 32.320679, 39.460018>,  <34.635696, 32.517715, 40.089970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779640, 32.320679, 39.460018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396225, 32.415600, 39.396904>,  <34.166176, 32.472553, 39.359035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396225, 32.415600, 39.396904>,  <34.779640, 32.320679, 39.460018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396225, 32.415600, 39.396904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216441, 0.246049, -0.944782,
		-0.185378, -0.939759, -0.287209,
		-0.958535, 0.237305, -0.157790,
		34.108665, 32.486790, 39.349567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396305, 31.956537, 38.892441>,  <34.779640, 32.320679, 39.460018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396305, 31.956537, 38.892441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314777, 32.339233, 38.975483>,  <34.265862, 32.568851, 39.025311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314777, 32.339233, 38.975483>,  <34.396305, 31.956537, 38.892441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314777, 32.339233, 38.975483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088501, 0.229198, -0.969348,
		-0.975000, -0.179200, -0.131388,
		-0.203821, 0.956742, 0.207608,
		34.253632, 32.626255, 39.037766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836716, 32.178818, 38.512505>,  <34.396305, 31.956537, 38.892441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836716, 32.178818, 38.512505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064167, 32.494011, 38.606949>,  <34.200638, 32.683128, 38.663616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064167, 32.494011, 38.606949>,  <33.836716, 32.178818, 38.512505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064167, 32.494011, 38.606949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028954, 0.306028, -0.951582,
		-0.822088, 0.534256, 0.196830,
		0.568624, 0.787983, 0.236114,
		34.234753, 32.730404, 38.677784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496063, 32.783871, 38.168449>,  <33.836716, 32.178818, 38.512505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496063, 32.783871, 38.168449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870628, 32.901531, 38.244987>,  <34.095367, 32.972126, 38.290913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870628, 32.901531, 38.244987>,  <33.496063, 32.783871, 38.168449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870628, 32.901531, 38.244987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045729, 0.438354, -0.897638,
		-0.347919, 0.849307, 0.397028,
		0.936409, 0.294149, 0.191350,
		34.151550, 32.989777, 38.302391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473164, 33.419174, 38.028522>,  <33.496063, 32.783871, 38.168449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473164, 33.419174, 38.028522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869492, 33.366417, 38.040352>,  <34.107288, 33.334763, 38.047447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869492, 33.366417, 38.040352>,  <33.473164, 33.419174, 38.028522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869492, 33.366417, 38.040352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103392, 0.598630, -0.794325,
		0.087063, 0.790093, 0.606773,
		0.990823, -0.131892, 0.029571,
		34.166737, 33.326851, 38.049225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770290, 34.079288, 37.895233>,  <33.473164, 33.419174, 38.028522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770290, 34.079288, 37.895233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023304, 33.790157, 37.783932>,  <34.175114, 33.616680, 37.717152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023304, 33.790157, 37.783932>,  <33.770290, 34.079288, 37.895233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023304, 33.790157, 37.783932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221684, 0.513176, -0.829160,
		0.742128, 0.462790, 0.484841,
		0.632536, -0.722825, -0.278249,
		34.213066, 33.573311, 37.700459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244598, 34.474144, 37.643402>,  <33.770290, 34.079288, 37.895233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244598, 34.474144, 37.643402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362640, 34.121826, 37.495285>,  <34.433468, 33.910435, 37.406414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362640, 34.121826, 37.495285>,  <34.244598, 34.474144, 37.643402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362640, 34.121826, 37.495285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282415, 0.450649, -0.846851,
		0.912772, 0.145336, 0.381739,
		0.295108, -0.880791, -0.370295,
		34.451172, 33.857590, 37.384197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888393, 34.622711, 37.315983>,  <34.244598, 34.474144, 37.643402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888393, 34.622711, 37.315983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745552, 34.285519, 37.155056>,  <34.659847, 34.083202, 37.058498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745552, 34.285519, 37.155056>,  <34.888393, 34.622711, 37.315983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745552, 34.285519, 37.155056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316565, 0.296002, -0.901204,
		0.878785, -0.449183, 0.161155,
		-0.357103, -0.842981, -0.402318,
		34.638420, 34.032623, 37.034359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442875, 34.385521, 36.793312>,  <34.888393, 34.622711, 37.315983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442875, 34.385521, 36.793312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092358, 34.225872, 36.685379>,  <34.882046, 34.130081, 36.620617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092358, 34.225872, 36.685379>,  <35.442875, 34.385521, 36.793312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092358, 34.225872, 36.685379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258827, 0.082390, -0.962403,
		0.406350, -0.913188, 0.031106,
		-0.876292, -0.399124, -0.269836,
		34.829472, 34.106136, 36.604427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612000, 34.071499, 36.132881>,  <35.442875, 34.385521, 36.793312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612000, 34.071499, 36.132881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217503, 34.137257, 36.139847>,  <34.980804, 34.176712, 36.144028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217503, 34.137257, 36.139847>,  <35.612000, 34.071499, 36.132881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217503, 34.137257, 36.139847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026715, 0.262442, -0.964578,
		-0.163138, -0.950842, -0.263223,
		-0.986241, 0.164391, 0.017413,
		34.921631, 34.186573, 36.145069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415524, 33.914585, 35.440849>,  <35.612000, 34.071499, 36.132881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415524, 33.914585, 35.440849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092819, 34.092922, 35.595955>,  <34.899197, 34.199924, 35.689018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092819, 34.092922, 35.595955>,  <35.415524, 33.914585, 35.440849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092819, 34.092922, 35.595955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258648, 0.323577, -0.910164,
		-0.531266, -0.834577, -0.145731,
		-0.806758, 0.445846, 0.387767,
		34.850792, 34.226677, 35.712284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928066, 33.806652, 34.971039>,  <35.415524, 33.914585, 35.440849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928066, 33.806652, 34.971039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.773586, 34.109615, 35.181629>,  <34.680897, 34.291393, 35.307983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.773586, 34.109615, 35.181629>,  <34.928066, 33.806652, 34.971039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773586, 34.109615, 35.181629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248846, 0.464049, -0.850138,
		-0.888215, -0.459335, 0.009262,
		-0.386200, 0.757410, 0.526479,
		34.657726, 34.336838, 35.339573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310764, 33.983540, 34.703419>,  <34.928066, 33.806652, 34.971039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310764, 33.983540, 34.703419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.443382, 34.318913, 34.876442>,  <34.522953, 34.520138, 34.980255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.443382, 34.318913, 34.876442>,  <34.310764, 33.983540, 34.703419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443382, 34.318913, 34.876442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153143, 0.500237, -0.852239,
		-0.930927, 0.216312, 0.294251,
		0.331544, 0.838434, 0.432557,
		34.542847, 34.570442, 35.006210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780842, 34.587479, 34.682869>,  <34.310764, 33.983540, 34.703419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780842, 34.587479, 34.682869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130138, 34.778671, 34.720787>,  <34.339714, 34.893387, 34.743538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130138, 34.778671, 34.720787>,  <33.780842, 34.587479, 34.682869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130138, 34.778671, 34.720787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210466, 0.545403, -0.811320,
		-0.439497, 0.688525, 0.576867,
		0.873239, 0.477984, 0.094792,
		34.392109, 34.922066, 34.749226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600937, 35.374477, 34.568810>,  <33.780842, 34.587479, 34.682869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600937, 35.374477, 34.568810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999542, 35.342731, 34.558472>,  <34.238705, 35.323685, 34.552269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999542, 35.342731, 34.558472>,  <33.600937, 35.374477, 34.568810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999542, 35.342731, 34.558472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022280, 0.551381, -0.833956,
		0.080438, 0.830470, 0.551225,
		0.996511, -0.079363, -0.025849,
		34.298496, 35.318924, 34.550716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851887, 36.056423, 34.562527>,  <33.600937, 35.374477, 34.568810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851887, 36.056423, 34.562527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150219, 35.838905, 34.408630>,  <34.329220, 35.708393, 34.316292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150219, 35.838905, 34.408630>,  <33.851887, 36.056423, 34.562527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150219, 35.838905, 34.408630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004329, 0.573600, -0.819124,
		0.666120, 0.612594, 0.425455,
		0.745832, -0.543793, -0.384739,
		34.373970, 35.675766, 34.293209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423923, 36.153271, 35.136349>,  <33.851887, 36.056423, 34.562527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423923, 36.153271, 35.136349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663010, 36.179016, 34.816700>,  <34.806461, 36.194462, 34.624912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663010, 36.179016, 34.816700>,  <34.423923, 36.153271, 35.136349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663010, 36.179016, 34.816700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310389, 0.937615, -0.156645,
		0.739182, 0.341667, 0.580409,
		0.597720, 0.064364, -0.799117,
		34.842327, 36.198326, 34.576965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598614, 36.861614, 35.175442>,  <34.423923, 36.153271, 35.136349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598614, 36.861614, 35.175442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750370, 36.735588, 34.827465>,  <34.841423, 36.659973, 34.618679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750370, 36.735588, 34.827465>,  <34.598614, 36.861614, 35.175442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750370, 36.735588, 34.827465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038552, 0.934036, -0.355091,
		0.924433, 0.168256, 0.342219,
		0.379391, -0.315065, -0.869941,
		34.864189, 36.641068, 34.566483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254093, 37.211178, 35.012531>,  <34.598614, 36.861614, 35.175442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254093, 37.211178, 35.012531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110317, 37.112087, 34.652657>,  <35.024052, 37.052631, 34.436733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110317, 37.112087, 34.652657>,  <35.254093, 37.211178, 35.012531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110317, 37.112087, 34.652657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274660, 0.893326, -0.355711,
		0.891819, -0.374973, -0.253089,
		-0.359473, -0.247716, -0.899675,
		35.002483, 37.037769, 34.382751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745670, 37.398945, 34.513935>,  <35.254093, 37.211178, 35.012531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745670, 37.398945, 34.513935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405563, 37.377163, 34.304527>,  <35.201500, 37.364094, 34.178883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405563, 37.377163, 34.304527>,  <35.745670, 37.398945, 34.513935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405563, 37.377163, 34.304527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239018, 0.846217, -0.476221,
		0.468946, -0.530048, -0.706497,
		-0.850271, -0.054456, -0.523521,
		35.150482, 37.360825, 34.147472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907806, 37.512871, 33.682228>,  <35.745670, 37.398945, 34.513935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907806, 37.512871, 33.682228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513443, 37.569313, 33.718178>,  <35.276825, 37.603180, 33.739750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513443, 37.569313, 33.718178>,  <35.907806, 37.512871, 33.682228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513443, 37.569313, 33.718178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061096, 0.803793, -0.591763,
		-0.155744, -0.577932, -0.801086,
		-0.985906, 0.141107, 0.089876,
		35.217670, 37.611645, 33.745140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820259, 37.728859, 33.087639>,  <35.907806, 37.512871, 33.682228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820259, 37.728859, 33.087639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488327, 37.836826, 33.282993>,  <35.289165, 37.901608, 33.400208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488327, 37.836826, 33.282993>,  <35.820259, 37.728859, 33.087639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488327, 37.836826, 33.282993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071257, 0.919320, -0.387005,
		-0.553442, -0.286349, -0.782117,
		-0.829834, 0.269916, 0.488386,
		35.239376, 37.917801, 33.429508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326424, 38.065441, 32.555290>,  <35.820259, 37.728859, 33.087639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326424, 38.065441, 32.555290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187813, 38.207134, 32.902725>,  <35.104645, 38.292149, 33.111187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187813, 38.207134, 32.902725>,  <35.326424, 38.065441, 32.555290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187813, 38.207134, 32.902725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078809, 0.911688, -0.403255,
		-0.934723, -0.208191, -0.288008,
		-0.346528, 0.354234, 0.868583,
		35.083855, 38.313404, 33.163300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749146, 38.418236, 32.396267>,  <35.326424, 38.065441, 32.555290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749146, 38.418236, 32.396267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887112, 38.572552, 32.738541>,  <34.969891, 38.665142, 32.943905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887112, 38.572552, 32.738541>,  <34.749146, 38.418236, 32.396267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887112, 38.572552, 32.738541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052187, 0.918103, -0.392891,
		-0.937182, 0.090858, 0.336802,
		0.344916, 0.385787, 0.855688,
		34.990585, 38.688290, 32.995247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344814, 39.010303, 32.531384>,  <34.749146, 38.418236, 32.396267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344814, 39.010303, 32.531384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666454, 39.077049, 32.759624>,  <34.859436, 39.117096, 32.896568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666454, 39.077049, 32.759624>,  <34.344814, 39.010303, 32.531384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666454, 39.077049, 32.759624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061743, 0.978051, -0.199006,
		-0.591283, 0.124790, 0.796751,
		0.804097, 0.166862, 0.570600,
		34.907684, 39.127110, 32.930805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271847, 39.742146, 32.717564>,  <34.344814, 39.010303, 32.531384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271847, 39.742146, 32.717564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651646, 39.641560, 32.792633>,  <34.879524, 39.581207, 32.837673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651646, 39.641560, 32.792633>,  <34.271847, 39.742146, 32.717564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651646, 39.641560, 32.792633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292786, 0.925120, -0.241723,
		-0.112836, 0.284463, 0.952023,
		0.949497, -0.251464, 0.187674,
		34.936493, 39.566120, 32.848934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508442, 40.298050, 33.253868>,  <34.271847, 39.742146, 32.717564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508442, 40.298050, 33.253868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808105, 40.144306, 33.038078>,  <34.987904, 40.052059, 32.908604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808105, 40.144306, 33.038078>,  <34.508442, 40.298050, 33.253868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808105, 40.144306, 33.038078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410737, 0.908506, -0.076893,
		0.519672, -0.163978, 0.838482,
		0.749157, -0.384355, -0.539476,
		35.032852, 40.028999, 32.876236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049896, 40.762745, 33.452076>,  <34.508442, 40.298050, 33.253868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049896, 40.762745, 33.452076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223293, 40.555836, 33.156910>,  <35.327332, 40.431690, 32.979813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223293, 40.555836, 33.156910>,  <35.049896, 40.762745, 33.452076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223293, 40.555836, 33.156910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478109, 0.826115, -0.298238,
		0.763871, -0.223519, 0.605426,
		0.433490, -0.517275, -0.737912,
		35.353340, 40.400654, 32.935535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775303, 40.968414, 33.427402>,  <35.049896, 40.762745, 33.452076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775303, 40.968414, 33.427402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703800, 40.802021, 33.070751>,  <35.660900, 40.702187, 32.856758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703800, 40.802021, 33.070751>,  <35.775303, 40.968414, 33.427402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703800, 40.802021, 33.070751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544137, 0.713227, -0.441841,
		0.819732, -0.564151, 0.098857,
		-0.178758, -0.415982, -0.891630,
		35.650173, 40.677227, 32.803261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363659, 41.065758, 33.073990>,  <35.775303, 40.968414, 33.427402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363659, 41.065758, 33.073990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112934, 41.003960, 32.768509>,  <35.962502, 40.966881, 32.585220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112934, 41.003960, 32.768509>,  <36.363659, 41.065758, 33.073990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112934, 41.003960, 32.768509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557740, 0.595465, -0.578228,
		0.544091, -0.788386, -0.287076,
		-0.626810, -0.154495, -0.763701,
		35.924892, 40.957611, 32.539398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821514, 40.882862, 32.379696>,  <36.363659, 41.065758, 33.073990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821514, 40.882862, 32.379696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.462009, 41.043205, 32.308655>,  <36.246307, 41.139412, 32.266029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.462009, 41.043205, 32.308655>,  <36.821514, 40.882862, 32.379696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462009, 41.043205, 32.308655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422561, 0.683915, -0.594729,
		-0.116940, -0.609565, -0.784063,
		-0.898759, 0.400862, -0.177601,
		36.192383, 41.163464, 32.255375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758003, 40.877533, 31.633215>,  <36.821514, 40.882862, 32.379696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758003, 40.877533, 31.633215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.510281, 41.152515, 31.784933>,  <36.361645, 41.317505, 31.875963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.510281, 41.152515, 31.784933>,  <36.758003, 40.877533, 31.633215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510281, 41.152515, 31.784933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263734, 0.637161, -0.724203,
		-0.739527, -0.348473, -0.575905,
		-0.619309, 0.687454, 0.379293,
		36.324490, 41.358753, 31.898722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415462, 41.105980, 31.039167>,  <36.758003, 40.877533, 31.633215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415462, 41.105980, 31.039167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365353, 41.389511, 31.316833>,  <36.335285, 41.559631, 31.483433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365353, 41.389511, 31.316833>,  <36.415462, 41.105980, 31.039167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365353, 41.389511, 31.316833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152054, 0.705128, -0.692585,
		-0.980400, 0.018785, -0.196118,
		-0.125278, 0.708831, 0.694164,
		36.327770, 41.602161, 31.525084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880611, 41.656250, 30.746449>,  <36.415462, 41.105980, 31.039167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880611, 41.656250, 30.746449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078968, 41.844707, 31.038233>,  <36.197983, 41.957783, 31.213305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078968, 41.844707, 31.038233>,  <35.880611, 41.656250, 30.746449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078968, 41.844707, 31.038233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130102, 0.790230, -0.598840,
		-0.858586, 0.391862, 0.330567,
		0.495887, 0.471148, 0.729463,
		36.227734, 41.986053, 31.257072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581367, 42.337925, 30.617458>,  <35.880611, 41.656250, 30.746449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581367, 42.337925, 30.617458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899208, 42.372814, 30.857792>,  <36.089912, 42.393745, 31.001993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899208, 42.372814, 30.857792>,  <35.581367, 42.337925, 30.617458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899208, 42.372814, 30.857792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188047, 0.905606, -0.380153,
		-0.577278, 0.415055, 0.703193,
		0.794600, 0.087220, 0.600836,
		36.137589, 42.398979, 31.038042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592113, 43.039677, 30.908743>,  <35.581367, 42.337925, 30.617458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592113, 43.039677, 30.908743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970615, 42.932861, 30.981731>,  <36.197716, 42.868774, 31.025524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970615, 42.932861, 30.981731>,  <35.592113, 43.039677, 30.908743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970615, 42.932861, 30.981731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322360, 0.824440, -0.465171,
		-0.026220, 0.498991, 0.866210,
		0.946254, -0.267035, 0.182471,
		36.254490, 42.852753, 31.036472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910641, 43.633839, 31.187147>,  <35.592113, 43.039677, 30.908743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910641, 43.633839, 31.187147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177147, 43.394566, 31.009037>,  <36.337051, 43.251003, 30.902170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177147, 43.394566, 31.009037>,  <35.910641, 43.633839, 31.187147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177147, 43.394566, 31.009037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438874, 0.797292, -0.414385,
		0.602891, 0.080671, 0.793735,
		0.666267, -0.598179, -0.445276,
		36.377026, 43.215111, 30.875454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613735, 43.713081, 31.447353>,  <35.910641, 43.633839, 31.187147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613735, 43.713081, 31.447353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586613, 43.597130, 31.065491>,  <36.570339, 43.527557, 30.836372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586613, 43.597130, 31.065491>,  <36.613735, 43.713081, 31.447353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586613, 43.597130, 31.065491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340521, 0.892679, -0.295244,
		0.937789, -0.345100, 0.038182,
		-0.067804, -0.289878, -0.954659,
		36.566273, 43.510166, 30.779093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739681, 44.299648, 31.116522>,  <36.613735, 43.713081, 31.447353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739681, 44.299648, 31.116522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774612, 44.070271, 30.790691>,  <36.795570, 43.932644, 30.595194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774612, 44.070271, 30.790691>,  <36.739681, 44.299648, 31.116522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774612, 44.070271, 30.790691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385277, 0.773510, -0.503233,
		0.918660, -0.269891, 0.288485,
		0.087328, -0.573447, -0.814575,
		36.800812, 43.898235, 30.546318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486885, 44.291130, 30.850788>,  <36.739681, 44.299648, 31.116522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486885, 44.291130, 30.850788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265511, 44.205547, 30.528811>,  <37.132687, 44.154198, 30.335625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265511, 44.205547, 30.528811>,  <37.486885, 44.291130, 30.850788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265511, 44.205547, 30.528811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402077, 0.777740, -0.483171,
		0.729416, -0.591052, -0.344398,
		-0.553432, -0.213958, -0.804944,
		37.099480, 44.141361, 30.287327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940727, 44.322479, 30.289860>,  <37.486885, 44.291130, 30.850788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940727, 44.322479, 30.289860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585358, 44.350254, 30.108362>,  <37.372135, 44.366917, 29.999464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585358, 44.350254, 30.108362>,  <37.940727, 44.322479, 30.289860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585358, 44.350254, 30.108362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371023, 0.690645, -0.620767,
		0.270273, -0.719853, -0.639347,
		-0.888422, 0.069436, -0.453744,
		37.318832, 44.371086, 29.972239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110912, 44.390923, 29.569286>,  <37.940727, 44.322479, 30.289860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110912, 44.390923, 29.569286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.736870, 44.516899, 29.634275>,  <37.512444, 44.592484, 29.673269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.736870, 44.516899, 29.634275>,  <38.110912, 44.390923, 29.569286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736870, 44.516899, 29.634275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146234, 0.760540, -0.632609,
		-0.322800, -0.567795, -0.757237,
		-0.935102, 0.314940, 0.162472,
		37.456341, 44.611382, 29.683018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958538, 44.557659, 28.922066>,  <38.110912, 44.390923, 29.569286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958538, 44.557659, 28.922066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698872, 44.719620, 29.179636>,  <37.543072, 44.816795, 29.334177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698872, 44.719620, 29.179636>,  <37.958538, 44.557659, 28.922066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698872, 44.719620, 29.179636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065773, 0.873260, -0.482795,
		-0.757796, -0.271062, -0.593524,
		-0.649168, 0.404898, 0.643924,
		37.504120, 44.841087, 29.372814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543095, 44.996170, 28.486475>,  <37.958538, 44.557659, 28.922066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543095, 44.996170, 28.486475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.521847, 45.136162, 28.860575>,  <37.509098, 45.220158, 29.085035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.521847, 45.136162, 28.860575>,  <37.543095, 44.996170, 28.486475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521847, 45.136162, 28.860575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035457, 0.936643, -0.348486,
		-0.997958, 0.014649, -0.062167,
		-0.053123, 0.349979, 0.935250,
		37.505909, 45.241154, 29.141150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953724, 45.609249, 28.456739>,  <37.543095, 44.996170, 28.486475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953724, 45.609249, 28.456739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144745, 45.646835, 28.806164>,  <37.259357, 45.669388, 29.015820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144745, 45.646835, 28.806164>,  <36.953724, 45.609249, 28.456739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144745, 45.646835, 28.806164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050108, 0.989733, -0.133855,
		-0.877171, 0.107696, 0.467945,
		0.477557, 0.093966, 0.873562,
		37.288013, 45.675026, 29.068232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647121, 46.126358, 29.037752>,  <36.953724, 45.609249, 28.456739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647121, 46.126358, 29.037752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044338, 46.079472, 29.042171>,  <37.282669, 46.051338, 29.044823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044338, 46.079472, 29.042171>,  <36.647121, 46.126358, 29.037752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044338, 46.079472, 29.042171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117726, 0.987254, -0.107098,
		0.001647, 0.107653, 0.994187,
		0.993045, -0.117218, 0.011047,
		37.342251, 46.044308, 29.045486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936352, 46.569412, 29.500820>,  <36.647121, 46.126358, 29.037752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936352, 46.569412, 29.500820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259319, 46.529030, 29.268307>,  <37.453098, 46.504799, 29.128799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259319, 46.529030, 29.268307>,  <36.936352, 46.569412, 29.500820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259319, 46.529030, 29.268307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222008, 0.964825, 0.140800,
		0.546621, -0.242734, 0.801428,
		0.807415, -0.100960, -0.581282,
		37.501545, 46.498741, 29.093922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354603, 46.609966, 30.182661>,  <36.936352, 46.569412, 29.500820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354603, 46.609966, 30.182661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507267, 46.908257, 29.964220>,  <37.598866, 47.087231, 29.833155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507267, 46.908257, 29.964220>,  <37.354603, 46.609966, 30.182661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507267, 46.908257, 29.964220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216394, -0.646501, -0.731581,
		-0.898613, 0.161045, -0.408116,
		0.381665, 0.745722, -0.546105,
		37.621765, 47.131973, 29.800388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484379, 46.922043, 30.930618>,  <37.354603, 46.609966, 30.182661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484379, 46.922043, 30.930618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883430, 46.902363, 30.911333>,  <38.122860, 46.890556, 30.899763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883430, 46.902363, 30.911333>,  <37.484379, 46.922043, 30.930618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883430, 46.902363, 30.911333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056523, -0.184676, -0.981173,
		0.039367, 0.981567, -0.187018,
		0.997625, -0.049196, -0.048211,
		38.182716, 46.887604, 30.896870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667381, 47.243340, 30.303024>,  <37.484379, 46.922043, 30.930618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667381, 47.243340, 30.303024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.026913, 47.079372, 30.365097>,  <38.242630, 46.980991, 30.402340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.026913, 47.079372, 30.365097>,  <37.667381, 47.243340, 30.303024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026913, 47.079372, 30.365097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240519, 0.165296, -0.956466,
		0.366421, 0.897020, 0.247165,
		0.898825, -0.409917, 0.155182,
		38.296558, 46.956398, 30.411652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251640, 47.787796, 30.124748>,  <37.667381, 47.243340, 30.303024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251640, 47.787796, 30.124748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.415794, 47.423302, 30.110731>,  <38.514286, 47.204605, 30.102322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.415794, 47.423302, 30.110731>,  <38.251640, 47.787796, 30.124748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415794, 47.423302, 30.110731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706282, 0.341922, -0.619883,
		0.576843, 0.229642, 0.783911,
		0.410388, -0.911238, -0.035043,
		38.538910, 47.149929, 30.100218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890675, 47.497448, 30.286253>,  <38.251640, 47.787796, 30.124748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890675, 47.497448, 30.286253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.771458, 47.694977, 30.613008>,  <38.699928, 47.813496, 30.809061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.771458, 47.694977, 30.613008>,  <38.890675, 47.497448, 30.286253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771458, 47.694977, 30.613008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184318, -0.809903, 0.556852,
		0.936588, 0.316534, 0.150366,
		-0.298044, 0.493826, 0.816888,
		38.682045, 47.843124, 30.858074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344318, 47.236645, 30.900976>,  <38.890675, 47.497448, 30.286253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344318, 47.236645, 30.900976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990433, 47.384712, 31.014296>,  <38.778103, 47.473553, 31.082287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990433, 47.384712, 31.014296>,  <39.344318, 47.236645, 30.900976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990433, 47.384712, 31.014296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071013, -0.707702, 0.702933,
		0.460694, 0.601777, 0.652400,
		-0.884714, 0.370165, 0.283300,
		38.725018, 47.495762, 31.099285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238232, 46.779797, 31.401581>,  <39.344318, 47.236645, 30.900976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238232, 46.779797, 31.401581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900917, 46.994614, 31.393078>,  <38.698528, 47.123505, 31.387976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900917, 46.994614, 31.393078>,  <39.238232, 46.779797, 31.401581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900917, 46.994614, 31.393078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349646, -0.518133, 0.780568,
		0.408186, 0.665675, 0.624709,
		-0.843287, 0.537044, -0.021256,
		38.647930, 47.155727, 31.386702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999531, 46.988632, 32.034092>,  <39.238232, 46.779797, 31.401581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999531, 46.988632, 32.034092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667801, 46.959717, 31.812466>,  <38.468761, 46.942368, 31.679489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667801, 46.959717, 31.812466>,  <38.999531, 46.988632, 32.034092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667801, 46.959717, 31.812466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470929, -0.443266, 0.762719,
		-0.300739, 0.893470, 0.333568,
		-0.829326, -0.072293, -0.554069,
		38.419003, 46.938030, 31.646246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306576, 47.135582, 32.322491>,  <38.999531, 46.988632, 32.034092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306576, 47.135582, 32.322491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242733, 46.869804, 32.030453>,  <38.204430, 46.710339, 31.855228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242733, 46.869804, 32.030453>,  <38.306576, 47.135582, 32.322491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242733, 46.869804, 32.030453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523009, -0.570339, 0.633383,
		-0.837250, 0.482940, -0.256480,
		-0.159605, -0.664442, -0.730098,
		38.194851, 46.670471, 31.811422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580837, 46.978733, 32.366219>,  <38.306576, 47.135582, 32.322491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580837, 46.978733, 32.366219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.784168, 46.689587, 32.179001>,  <37.906166, 46.516098, 32.066669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.784168, 46.689587, 32.179001>,  <37.580837, 46.978733, 32.366219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784168, 46.689587, 32.179001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404817, -0.680292, 0.611004,
		-0.760083, -0.121116, -0.638440,
		0.508328, -0.722865, -0.468048,
		37.936668, 46.472729, 32.038586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110416, 46.481300, 32.458817>,  <37.580837, 46.978733, 32.366219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110416, 46.481300, 32.458817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443176, 46.282040, 32.361008>,  <37.642834, 46.162483, 32.302322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443176, 46.282040, 32.361008>,  <37.110416, 46.481300, 32.458817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443176, 46.282040, 32.361008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346193, -0.810261, 0.472893,
		-0.433696, -0.308749, -0.846512,
		0.831900, -0.498149, -0.244520,
		37.692745, 46.132595, 32.287651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881554, 45.795364, 32.161392>,  <37.110416, 46.481300, 32.458817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881554, 45.795364, 32.161392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.262661, 45.768402, 32.279835>,  <37.491325, 45.752224, 32.350903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.262661, 45.768402, 32.279835>,  <36.881554, 45.795364, 32.161392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262661, 45.768402, 32.279835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221824, -0.820418, 0.526981,
		0.207411, -0.567778, -0.796624,
		0.952772, -0.067409, 0.296110,
		37.548492, 45.748180, 32.368668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921764, 45.077827, 32.231823>,  <36.881554, 45.795364, 32.161392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921764, 45.077827, 32.231823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.232685, 45.237152, 32.426613>,  <37.419239, 45.332748, 32.543488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.232685, 45.237152, 32.426613>,  <36.921764, 45.077827, 32.231823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232685, 45.237152, 32.426613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066735, -0.821887, 0.565729,
		0.625573, -0.407246, -0.665439,
		0.777306, 0.398313, 0.486972,
		37.465878, 45.356647, 32.572704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458900, 44.559784, 32.182129>,  <36.921764, 45.077827, 32.231823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458900, 44.559784, 32.182129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545269, 44.801331, 32.489044>,  <37.597088, 44.946259, 32.673191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545269, 44.801331, 32.489044>,  <37.458900, 44.559784, 32.182129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545269, 44.801331, 32.489044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268065, -0.792288, 0.548107,
		0.938893, 0.087335, -0.332945,
		0.215919, 0.603865, 0.767285,
		37.610046, 44.982491, 32.719231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925472, 44.061424, 32.615738>,  <37.458900, 44.559784, 32.182129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925472, 44.061424, 32.615738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806217, 44.383533, 32.820732>,  <37.734665, 44.576801, 32.943729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806217, 44.383533, 32.820732>,  <37.925472, 44.061424, 32.615738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806217, 44.383533, 32.820732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224501, -0.462688, 0.857624,
		0.927747, 0.370742, -0.042842,
		-0.298135, 0.805277, 0.512489,
		37.716778, 44.625118, 32.974480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490517, 44.193184, 33.077076>,  <37.925472, 44.061424, 32.615738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490517, 44.193184, 33.077076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159229, 44.337173, 33.248878>,  <37.960457, 44.423569, 33.351959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159229, 44.337173, 33.248878>,  <38.490517, 44.193184, 33.077076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159229, 44.337173, 33.248878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116950, -0.638523, 0.760665,
		0.548071, 0.680225, 0.486735,
		-0.828215, 0.359975, 0.429508,
		37.910763, 44.445168, 33.377731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669155, 44.249229, 33.761208>,  <38.490517, 44.193184, 33.077076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669155, 44.249229, 33.761208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269413, 44.241058, 33.773067>,  <38.029568, 44.236156, 33.780186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269413, 44.241058, 33.773067>,  <38.669155, 44.249229, 33.761208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269413, 44.241058, 33.773067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034160, -0.798070, 0.601596,
		0.011379, 0.602219, 0.798250,
		-0.999352, -0.020423, 0.029653,
		37.969608, 44.234932, 33.781963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545868, 44.112263, 34.434128>,  <38.669155, 44.249229, 33.761208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545868, 44.112263, 34.434128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190155, 44.036114, 34.267788>,  <37.976727, 43.990425, 34.167984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190155, 44.036114, 34.267788>,  <38.545868, 44.112263, 34.434128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190155, 44.036114, 34.267788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112502, -0.790263, 0.602352,
		-0.443300, 0.582446, 0.681352,
		-0.889285, -0.190369, -0.415850,
		37.923370, 43.979004, 34.143032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979935, 44.025246, 35.009083>,  <38.545868, 44.112263, 34.434128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979935, 44.025246, 35.009083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840511, 43.827999, 34.690250>,  <37.756859, 43.709652, 34.498951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840511, 43.827999, 34.690250>,  <37.979935, 44.025246, 35.009083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840511, 43.827999, 34.690250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276457, -0.758496, 0.590132,
		-0.895588, 0.426056, 0.128057,
		-0.348560, -0.493113, -0.797086,
		37.735943, 43.680065, 34.451126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464878, 43.660267, 35.214966>,  <37.979935, 44.025246, 35.009083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464878, 43.660267, 35.214966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486416, 43.468121, 34.864799>,  <37.499340, 43.352833, 34.654701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486416, 43.468121, 34.864799>,  <37.464878, 43.660267, 35.214966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486416, 43.468121, 34.864799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361996, -0.826440, 0.431226,
		-0.930623, 0.293676, -0.218392,
		0.053847, -0.480366, -0.875414,
		37.502571, 43.324009, 34.602177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813805, 43.300114, 35.127243>,  <37.464878, 43.660267, 35.214966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813805, 43.300114, 35.127243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087383, 43.112728, 34.903542>,  <37.251530, 43.000298, 34.769321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087383, 43.112728, 34.903542>,  <36.813805, 43.300114, 35.127243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087383, 43.112728, 34.903542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351748, -0.883352, 0.309779,
		-0.639136, -0.015156, -0.768944,
		0.683943, -0.468466, -0.559251,
		37.292564, 42.972187, 34.735767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476635, 42.789715, 34.679543>,  <36.813805, 43.300114, 35.127243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476635, 42.789715, 34.679543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.855942, 42.669037, 34.719086>,  <37.083527, 42.596630, 34.742809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.855942, 42.669037, 34.719086>,  <36.476635, 42.789715, 34.679543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855942, 42.669037, 34.719086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315227, -0.931736, 0.180277,
		0.037719, -0.202112, -0.978636,
		0.948267, -0.301692, 0.098856,
		37.140423, 42.578529, 34.748741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515011, 42.124584, 34.198895>,  <36.476635, 42.789715, 34.679543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515011, 42.124584, 34.198895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833981, 42.109097, 34.439762>,  <37.025364, 42.099804, 34.584282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833981, 42.109097, 34.439762>,  <36.515011, 42.124584, 34.198895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833981, 42.109097, 34.439762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242471, -0.934389, 0.261007,
		0.552556, -0.354143, -0.754496,
		0.797427, -0.038722, 0.602172,
		37.073208, 42.097481, 34.620415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815350, 41.417767, 34.096172>,  <36.515011, 42.124584, 34.198895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815350, 41.417767, 34.096172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970535, 41.545074, 34.442162>,  <37.063648, 41.621460, 34.649757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970535, 41.545074, 34.442162>,  <36.815350, 41.417767, 34.096172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970535, 41.545074, 34.442162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277661, -0.854525, 0.438967,
		0.878855, -0.410475, -0.243154,
		0.387966, 0.318274, 0.864976,
		37.086926, 41.640556, 34.701656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141232, 40.820335, 34.411255>,  <36.815350, 41.417767, 34.096172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141232, 40.820335, 34.411255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094784, 41.072033, 34.718651>,  <37.066914, 41.223049, 34.903088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094784, 41.072033, 34.718651>,  <37.141232, 40.820335, 34.411255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094784, 41.072033, 34.718651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177508, -0.774412, 0.607270,
		0.977244, -0.065894, 0.201623,
		-0.116123, 0.629241, 0.768486,
		37.059948, 41.260807, 34.949196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520016, 40.490326, 34.971432>,  <37.141232, 40.820335, 34.411255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520016, 40.490326, 34.971432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265472, 40.750221, 35.137753>,  <37.112747, 40.906158, 35.237545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265472, 40.750221, 35.137753>,  <37.520016, 40.490326, 34.971432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265472, 40.750221, 35.137753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311262, -0.709478, 0.632264,
		0.705807, 0.272922, 0.653720,
		-0.636358, 0.649734, 0.415804,
		37.074566, 40.945141, 35.262493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561562, 40.242100, 35.571400>,  <37.520016, 40.490326, 34.971432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561562, 40.242100, 35.571400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.247673, 40.489571, 35.586594>,  <37.059338, 40.638054, 35.595711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.247673, 40.489571, 35.586594>,  <37.561562, 40.242100, 35.571400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247673, 40.489571, 35.586594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482033, -0.647636, 0.590094,
		0.389678, 0.444753, 0.806440,
		-0.784726, 0.618678, 0.037984,
		37.012257, 40.675175, 35.597988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410336, 40.410107, 36.288193>,  <37.561562, 40.242100, 35.571400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410336, 40.410107, 36.288193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.073879, 40.470863, 36.080570>,  <36.872005, 40.507317, 35.955997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.073879, 40.470863, 36.080570>,  <37.410336, 40.410107, 36.288193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073879, 40.470863, 36.080570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508647, -0.548285, 0.663823,
		-0.183760, 0.822382, 0.538442,
		-0.841136, 0.151893, -0.519056,
		36.821537, 40.516430, 35.924854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829838, 40.533836, 36.709339>,  <37.410336, 40.410107, 36.288193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829838, 40.533836, 36.709339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659950, 40.376125, 36.383358>,  <36.558018, 40.281498, 36.187767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659950, 40.376125, 36.383358>,  <36.829838, 40.533836, 36.709339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659950, 40.376125, 36.383358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512804, -0.637073, 0.575474,
		-0.746085, 0.662329, 0.068390,
		-0.424722, -0.394282, -0.814956,
		36.532532, 40.257839, 36.138870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155781, 40.310112, 36.940216>,  <36.829838, 40.533836, 36.709339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155781, 40.310112, 36.940216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168358, 40.121365, 36.587772>,  <36.175903, 40.008114, 36.376308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168358, 40.121365, 36.587772>,  <36.155781, 40.310112, 36.940216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168358, 40.121365, 36.587772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383338, -0.819825, 0.425370,
		-0.923073, 0.324385, -0.206666,
		0.031446, -0.471871, -0.881107,
		36.177792, 39.979805, 36.323441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523563, 39.968601, 36.909531>,  <36.155781, 40.310112, 36.940216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523563, 39.968601, 36.909531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753590, 39.780033, 36.642078>,  <35.891605, 39.666893, 36.481609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753590, 39.780033, 36.642078>,  <35.523563, 39.968601, 36.909531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753590, 39.780033, 36.642078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391243, -0.876242, 0.281301,
		-0.718489, 0.099828, -0.688338,
		0.575068, -0.471418, -0.668627,
		35.926109, 39.638607, 36.441490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052685, 39.542553, 36.607346>,  <35.523563, 39.968601, 36.909531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052685, 39.542553, 36.607346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410915, 39.385738, 36.523209>,  <35.625854, 39.291649, 36.472725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410915, 39.385738, 36.523209>,  <35.052685, 39.542553, 36.607346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410915, 39.385738, 36.523209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241924, -0.825903, 0.509271,
		-0.373377, -0.405206, -0.834505,
		0.895579, -0.392037, -0.210344,
		35.679588, 39.268127, 36.460106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923817, 38.893143, 36.313423>,  <35.052685, 39.542553, 36.607346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923817, 38.893143, 36.313423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.301197, 38.865505, 36.443119>,  <35.527626, 38.848923, 36.520935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.301197, 38.865505, 36.443119>,  <34.923817, 38.893143, 36.313423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301197, 38.865505, 36.443119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221811, -0.858438, 0.462476,
		0.246380, -0.508242, -0.825219,
		0.943449, -0.069098, 0.324236,
		35.584232, 38.844776, 36.540390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042046, 38.239285, 36.093887>,  <34.923817, 38.893143, 36.313423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042046, 38.239285, 36.093887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312279, 38.358940, 36.363434>,  <35.474419, 38.430733, 36.525162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312279, 38.358940, 36.363434>,  <35.042046, 38.239285, 36.093887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312279, 38.358940, 36.363434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119910, -0.857244, 0.500753,
		0.727465, -0.419106, -0.543273,
		0.675586, 0.299136, 0.673870,
		35.514954, 38.448681, 36.565594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436882, 37.630024, 36.373379>,  <35.042046, 38.239285, 36.093887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436882, 37.630024, 36.373379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516563, 37.895283, 36.661976>,  <35.564373, 38.054440, 36.835136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516563, 37.895283, 36.661976>,  <35.436882, 37.630024, 36.373379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516563, 37.895283, 36.661976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136244, -0.710360, 0.690526,
		0.970442, -0.235852, -0.051153,
		0.199199, 0.663146, 0.721496,
		35.576324, 38.094227, 36.878426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901611, 37.285439, 36.817474>,  <35.436882, 37.630024, 36.373379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901611, 37.285439, 36.817474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724659, 37.584820, 37.015110>,  <35.618488, 37.764446, 37.133690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724659, 37.584820, 37.015110>,  <35.901611, 37.285439, 36.817474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724659, 37.584820, 37.015110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183087, -0.614695, 0.767221,
		0.877940, 0.248942, 0.408961,
		-0.442380, 0.748450, 0.494088,
		35.591946, 37.809357, 37.163338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222313, 37.348141, 37.395626>,  <35.901611, 37.285439, 36.817474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222313, 37.348141, 37.395626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860336, 37.508411, 37.452969>,  <35.643150, 37.604572, 37.487373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860336, 37.508411, 37.452969>,  <36.222313, 37.348141, 37.395626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860336, 37.508411, 37.452969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135986, -0.591486, 0.794766,
		0.403233, 0.699718, 0.589743,
		-0.904937, 0.400673, 0.143355,
		35.588856, 37.628613, 37.495975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132153, 37.285130, 38.137196>,  <36.222313, 37.348141, 37.395626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132153, 37.285130, 38.137196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.759830, 37.384888, 38.030304>,  <35.536438, 37.444740, 37.966167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.759830, 37.384888, 38.030304>,  <36.132153, 37.285130, 38.137196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759830, 37.384888, 38.030304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365097, -0.598972, 0.712697,
		0.017678, 0.760944, 0.648576,
		-0.930802, 0.249392, -0.267230,
		35.480591, 37.459705, 37.950134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799931, 37.439804, 38.757538>,  <36.132153, 37.285130, 38.137196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799931, 37.439804, 38.757538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494202, 37.367584, 38.509922>,  <35.310764, 37.324253, 38.361351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494202, 37.367584, 38.509922>,  <35.799931, 37.439804, 38.757538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494202, 37.367584, 38.509922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396708, -0.625172, 0.672148,
		-0.508365, 0.759316, 0.406206,
		-0.764322, -0.180551, -0.619043,
		35.264904, 37.313419, 38.324211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281464, 37.436214, 39.177670>,  <35.799931, 37.439804, 38.757538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281464, 37.436214, 39.177670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150787, 37.231716, 38.859699>,  <35.072380, 37.109016, 38.668919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150787, 37.231716, 38.859699>,  <35.281464, 37.436214, 39.177670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150787, 37.231716, 38.859699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337974, -0.722265, 0.603413,
		-0.882635, 0.465795, 0.063172,
		-0.326693, -0.511243, -0.794923,
		35.052780, 37.078342, 38.621223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590443, 37.205490, 39.324039>,  <35.281464, 37.436214, 39.177670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590443, 37.205490, 39.324039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675362, 36.962215, 39.018085>,  <34.726311, 36.816250, 38.834515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675362, 36.962215, 39.018085>,  <34.590443, 37.205490, 39.324039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675362, 36.962215, 39.018085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398180, -0.768636, 0.500651,
		-0.892404, 0.198277, -0.405341,
		0.212292, -0.608182, -0.764883,
		34.739048, 36.779762, 38.788620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014145, 36.640392, 39.244556>,  <34.590443, 37.205490, 39.324039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014145, 36.640392, 39.244556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341484, 36.498322, 39.063824>,  <34.537888, 36.413078, 38.955383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341484, 36.498322, 39.063824>,  <34.014145, 36.640392, 39.244556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341484, 36.498322, 39.063824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139256, -0.885293, 0.443693,
		-0.557590, -0.300178, -0.773942,
		0.818353, -0.355175, -0.451829,
		34.586990, 36.391769, 38.928276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754543, 36.010773, 38.959347>,  <34.014145, 36.640392, 39.244556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754543, 36.010773, 38.959347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153450, 35.986305, 38.975925>,  <34.392796, 35.971626, 38.985870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153450, 35.986305, 38.975925>,  <33.754543, 36.010773, 38.959347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153450, 35.986305, 38.975925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071302, -0.943742, 0.322904,
		0.019360, -0.324977, -0.945524,
		0.997267, -0.061166, 0.041443,
		34.452629, 35.967957, 38.988358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921120, 35.288437, 38.886761>,  <33.754543, 36.010773, 38.959347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921120, 35.288437, 38.886761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273876, 35.404606, 39.035313>,  <34.485531, 35.474308, 39.124443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273876, 35.404606, 39.035313>,  <33.921120, 35.288437, 38.886761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273876, 35.404606, 39.035313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147503, -0.918160, 0.367730,
		0.447786, -0.269517, -0.852554,
		0.881890, 0.290419, 0.371384,
		34.538445, 35.491730, 39.146729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480000, 34.800449, 38.521458>,  <33.921120, 35.288437, 38.886761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480000, 34.800449, 38.521458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609482, 34.949455, 38.869354>,  <34.687172, 35.038857, 39.078091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609482, 34.949455, 38.869354>,  <34.480000, 34.800449, 38.521458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609482, 34.949455, 38.869354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177535, -0.926821, 0.330885,
		0.929354, 0.047301, -0.366147,
		0.323702, 0.372513, 0.869742,
		34.706593, 35.061211, 39.130276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142551, 34.442467, 38.678528>,  <34.480000, 34.800449, 38.521458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142551, 34.442467, 38.678528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.009861, 34.597816, 39.022419>,  <34.930248, 34.691029, 39.228752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.009861, 34.597816, 39.022419>,  <35.142551, 34.442467, 38.678528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009861, 34.597816, 39.022419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198881, -0.862053, 0.466166,
		0.922175, 0.325620, 0.208721,
		-0.331722, 0.388376, 0.859724,
		34.910343, 34.714329, 39.280334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654613, 34.227898, 39.108974>,  <35.142551, 34.442467, 38.678528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654613, 34.227898, 39.108974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349827, 34.318207, 39.351772>,  <35.166954, 34.372391, 39.497452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349827, 34.318207, 39.351772>,  <35.654613, 34.227898, 39.108974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349827, 34.318207, 39.351772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070693, -0.902666, 0.424495,
		0.643750, 0.366360, 0.671838,
		-0.761964, 0.225774, 0.606990,
		35.121239, 34.385941, 39.533871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341496, 34.363323, 39.491138>,  <35.654613, 34.227898, 39.108974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341496, 34.363323, 39.491138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633232, 34.113163, 39.380188>,  <36.808273, 33.963066, 39.313618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633232, 34.113163, 39.380188>,  <36.341496, 34.363323, 39.491138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633232, 34.113163, 39.380188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638402, 0.767895, -0.052726,
		0.245970, -0.138621, 0.959314,
		0.729343, -0.625397, -0.277375,
		36.852036, 33.925545, 39.296974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946259, 34.580284, 39.886406>,  <36.341496, 34.363323, 39.491138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946259, 34.580284, 39.886406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082581, 34.397411, 39.557812>,  <37.164375, 34.287685, 39.360657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082581, 34.397411, 39.557812>,  <36.946259, 34.580284, 39.886406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082581, 34.397411, 39.557812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520023, 0.819622, -0.240409,
		0.783216, -0.345258, 0.517078,
		0.340805, -0.457184, -0.821483,
		37.184822, 34.260258, 39.311367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613327, 34.721165, 39.881493>,  <36.946259, 34.580284, 39.886406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613327, 34.721165, 39.881493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.561367, 34.596497, 39.504986>,  <37.530190, 34.521694, 39.279079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.561367, 34.596497, 39.504986>,  <37.613327, 34.721165, 39.881493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561367, 34.596497, 39.504986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556121, 0.763036, -0.329402,
		0.820887, -0.566249, 0.074206,
		-0.129901, -0.311669, -0.941269,
		37.522396, 34.502995, 39.222607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288361, 34.684498, 39.545654>,  <37.613327, 34.721165, 39.881493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288361, 34.684498, 39.545654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035160, 34.688755, 39.236023>,  <37.883240, 34.691307, 39.050243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035160, 34.688755, 39.236023>,  <38.288361, 34.684498, 39.545654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035160, 34.688755, 39.236023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493085, 0.776385, -0.392547,
		0.596808, -0.630169, -0.496697,
		-0.632999, 0.010639, -0.774080,
		37.845261, 34.691948, 39.003799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712959, 34.874535, 39.041489>,  <38.288361, 34.684498, 39.545654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712959, 34.874535, 39.041489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.335400, 34.978981, 38.960617>,  <38.108864, 35.041649, 38.912094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.335400, 34.978981, 38.960617>,  <38.712959, 34.874535, 39.041489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335400, 34.978981, 38.960617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327340, 0.820708, -0.468281,
		0.043655, -0.508191, -0.860137,
		-0.943898, 0.261115, -0.202179,
		38.052231, 35.057316, 38.899963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822067, 35.167381, 38.431831>,  <38.712959, 34.874535, 39.041489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822067, 35.167381, 38.431831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454243, 35.286247, 38.534664>,  <38.233547, 35.357567, 38.596363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454243, 35.286247, 38.534664>,  <38.822067, 35.167381, 38.431831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454243, 35.286247, 38.534664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185531, 0.905098, -0.382591,
		-0.346377, -0.304121, -0.887431,
		-0.919566, 0.297166, 0.257082,
		38.178371, 35.375397, 38.611790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477409, 35.268261, 37.778641>,  <38.822067, 35.167381, 38.431831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477409, 35.268261, 37.778641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.302444, 35.485050, 38.065678>,  <38.197464, 35.615124, 38.237900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.302444, 35.485050, 38.065678>,  <38.477409, 35.268261, 37.778641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302444, 35.485050, 38.065678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245833, 0.839647, -0.484313,
		-0.865007, -0.035438, -0.500507,
		-0.437412, 0.541975, 0.717588,
		38.171223, 35.647644, 38.280952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131840, 35.839695, 37.404911>,  <38.477409, 35.268261, 37.778641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131840, 35.839695, 37.404911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.148861, 35.979092, 37.779449>,  <38.159073, 36.062729, 38.004173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.148861, 35.979092, 37.779449>,  <38.131840, 35.839695, 37.404911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148861, 35.979092, 37.779449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232849, 0.907927, -0.348496,
		-0.971581, 0.232857, -0.042510,
		0.042553, 0.348491, 0.936346,
		38.161629, 36.083637, 38.060352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698868, 36.437401, 37.386883>,  <38.131840, 35.839695, 37.404911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698868, 36.437401, 37.386883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956413, 36.473045, 37.690857>,  <38.110939, 36.494434, 37.873241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956413, 36.473045, 37.690857>,  <37.698868, 36.437401, 37.386883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956413, 36.473045, 37.690857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294844, 0.887595, -0.353895,
		-0.706050, 0.451922, 0.545216,
		0.643864, 0.089114, 0.759933,
		38.149574, 36.499779, 37.918839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720917, 37.085754, 37.494663>,  <37.698868, 36.437401, 37.386883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720917, 37.085754, 37.494663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047909, 36.985882, 37.702274>,  <38.244102, 36.925957, 37.826839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047909, 36.985882, 37.702274>,  <37.720917, 37.085754, 37.494663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047909, 36.985882, 37.702274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416160, 0.879041, -0.232590,
		-0.398170, 0.406135, 0.822505,
		0.817479, -0.249684, 0.519025,
		38.293152, 36.910976, 37.857983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857285, 37.677689, 37.848347>,  <37.720917, 37.085754, 37.494663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857285, 37.677689, 37.848347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.189487, 37.455082, 37.857674>,  <38.388809, 37.321518, 37.863270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.189487, 37.455082, 37.857674>,  <37.857285, 37.677689, 37.848347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189487, 37.455082, 37.857674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528885, 0.774751, -0.346472,
		0.174754, 0.300079, 0.937771,
		0.830507, -0.556520, 0.023316,
		38.438641, 37.288128, 37.864670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340836, 38.033653, 38.296116>,  <37.857285, 37.677689, 37.848347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340836, 38.033653, 38.296116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.526382, 37.806297, 38.024307>,  <38.637711, 37.669884, 37.861221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.526382, 37.806297, 38.024307>,  <38.340836, 38.033653, 38.296116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526382, 37.806297, 38.024307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428181, 0.815346, -0.389708,
		0.775556, -0.110186, 0.621588,
		0.463869, -0.568393, -0.679526,
		38.665543, 37.635780, 37.820450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975758, 38.143070, 38.351818>,  <38.340836, 38.033653, 38.296116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975758, 38.143070, 38.351818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936588, 38.008553, 37.977158>,  <38.913086, 37.927841, 37.752361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936588, 38.008553, 37.977158>,  <38.975758, 38.143070, 38.351818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936588, 38.008553, 37.977158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403036, 0.847139, -0.346290,
		0.909930, -0.411416, 0.052581,
		-0.097926, -0.336292, -0.936653,
		38.907211, 37.907665, 37.696163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512466, 38.541412, 38.066994>,  <38.975758, 38.143070, 38.351818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512466, 38.541412, 38.066994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331913, 38.374924, 37.751270>,  <39.223579, 38.275028, 37.561836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331913, 38.374924, 37.751270>,  <39.512466, 38.541412, 38.066994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331913, 38.374924, 37.751270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284854, 0.771055, -0.569502,
		0.845641, -0.481902, -0.229480,
		-0.451386, -0.416226, -0.789308,
		39.196495, 38.250057, 37.514477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978970, 38.550995, 37.534691>,  <39.512466, 38.541412, 38.066994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978970, 38.550995, 37.534691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635265, 38.517464, 37.332840>,  <39.429043, 38.497345, 37.211731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635265, 38.517464, 37.332840>,  <39.978970, 38.550995, 37.534691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635265, 38.517464, 37.332840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167164, 0.886307, -0.431876,
		0.483454, -0.455449, -0.747555,
		-0.859261, -0.083827, -0.504623,
		39.377487, 38.492317, 37.181454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208618, 38.705223, 36.799854>,  <39.978970, 38.550995, 37.534691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208618, 38.705223, 36.799854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.811909, 38.743786, 36.833542>,  <39.573883, 38.766926, 36.853756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.811909, 38.743786, 36.833542>,  <40.208618, 38.705223, 36.799854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811909, 38.743786, 36.833542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019791, 0.765448, -0.643194,
		-0.126476, -0.636235, -0.761058,
		-0.991772, 0.096410, 0.084219,
		39.514378, 38.772709, 36.858807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970592, 38.535439, 36.151722>,  <40.208618, 38.705223, 36.799854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970592, 38.535439, 36.151722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.696560, 38.766499, 36.329250>,  <39.532139, 38.905136, 36.435768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.696560, 38.766499, 36.329250>,  <39.970592, 38.535439, 36.151722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.696560, 38.766499, 36.329250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137470, 0.700826, -0.699960,
		-0.715376, -0.418519, -0.559535,
		-0.685083, 0.577654, 0.443820,
		39.491035, 38.939796, 36.462395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482620, 38.785213, 35.626598>,  <39.970592, 38.535439, 36.151722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482620, 38.785213, 35.626598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.462437, 39.049904, 35.925816>,  <39.450325, 39.208717, 36.105347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.462437, 39.049904, 35.925816>,  <39.482620, 38.785213, 35.626598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462437, 39.049904, 35.925816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066368, 0.749566, -0.658594,
		-0.996518, 0.016414, -0.081740,
		-0.050460, 0.661727, 0.748045,
		39.447300, 39.248421, 36.150230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372406, 39.330017, 35.319130>,  <39.482620, 38.785213, 35.626598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372406, 39.330017, 35.319130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395229, 39.513241, 35.673965>,  <39.408924, 39.623173, 35.886868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395229, 39.513241, 35.673965>,  <39.372406, 39.330017, 35.319130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395229, 39.513241, 35.673965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209686, 0.863221, -0.459218,
		-0.976102, 0.212214, -0.046791,
		0.057062, 0.458055, 0.887090,
		39.412350, 39.650658, 35.940094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736340, 39.723099, 35.525688>,  <39.372406, 39.330017, 35.319130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736340, 39.723099, 35.525688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.066570, 39.869991, 35.697067>,  <39.264709, 39.958126, 35.799896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.066570, 39.869991, 35.697067>,  <38.736340, 39.723099, 35.525688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066570, 39.869991, 35.697067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126426, 0.860335, -0.493802,
		-0.549951, 0.353502, 0.756696,
		0.825572, 0.367234, 0.428450,
		39.314243, 39.980160, 35.825603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613121, 40.447880, 35.429535>,  <38.736340, 39.723099, 35.525688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613121, 40.447880, 35.429535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994465, 40.443722, 35.550201>,  <39.223270, 40.441227, 35.622601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994465, 40.443722, 35.550201>,  <38.613121, 40.447880, 35.429535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994465, 40.443722, 35.550201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180256, 0.821245, -0.541355,
		-0.242110, 0.570481, 0.784815,
		0.953357, -0.010400, 0.301664,
		39.280472, 40.440601, 35.640701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739464, 41.143143, 35.570236>,  <38.613121, 40.447880, 35.429535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739464, 41.143143, 35.570236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.103996, 40.982143, 35.535675>,  <39.322716, 40.885544, 35.514938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.103996, 40.982143, 35.535675>,  <38.739464, 41.143143, 35.570236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103996, 40.982143, 35.535675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330024, 0.839778, -0.431111,
		0.246078, 0.364372, 0.898153,
		0.911334, -0.402499, -0.086400,
		39.377396, 40.861393, 35.509754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213642, 41.617683, 35.845207>,  <38.739464, 41.143143, 35.570236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213642, 41.617683, 35.845207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384453, 41.383072, 35.569923>,  <39.486938, 41.242306, 35.404751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384453, 41.383072, 35.569923>,  <39.213642, 41.617683, 35.845207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384453, 41.383072, 35.569923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305434, 0.809923, -0.500733,
		0.851093, 0.003622, 0.525003,
		0.427026, -0.586524, -0.688214,
		39.512562, 41.207115, 35.363461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782543, 41.974308, 35.757095>,  <39.213642, 41.617683, 35.845207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782543, 41.974308, 35.757095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764084, 41.714317, 35.453674>,  <39.753010, 41.558323, 35.271622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764084, 41.714317, 35.453674>,  <39.782543, 41.974308, 35.757095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764084, 41.714317, 35.453674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385947, 0.688794, -0.613684,
		0.921366, -0.321079, 0.219073,
		-0.046145, -0.649978, -0.758551,
		39.750240, 41.519325, 35.226109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458618, 42.071014, 35.285336>,  <39.782543, 41.974308, 35.757095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.458618, 42.071014, 35.285336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173866, 41.884800, 35.075005>,  <40.003014, 41.773071, 34.948807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173866, 41.884800, 35.075005>,  <40.458618, 42.071014, 35.285336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.173866, 41.884800, 35.075005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263054, 0.517466, -0.814267,
		0.651171, -0.717985, -0.245914,
		-0.711884, -0.465539, -0.525828,
		39.960300, 41.745140, 34.917255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757782, 42.029461, 34.726940>,  <40.458618, 42.071014, 35.285336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.757782, 42.029461, 34.726940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.380604, 41.957222, 34.615051>,  <40.154297, 41.913879, 34.547920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.380604, 41.957222, 34.615051>,  <40.757782, 42.029461, 34.726940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380604, 41.957222, 34.615051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141120, 0.544136, -0.827044,
		0.301569, -0.819329, -0.487603,
		-0.942943, -0.180600, -0.279719,
		40.097721, 41.903042, 34.531136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.754787, 41.664669, 34.063725>,  <40.757782, 42.029461, 34.726940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.754787, 41.664669, 34.063725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.405304, 41.850544, 34.121288>,  <40.195614, 41.962067, 34.155827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.405304, 41.850544, 34.121288>,  <40.754787, 41.664669, 34.063725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405304, 41.850544, 34.121288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098471, 0.458647, -0.883146,
		-0.476386, -0.757438, -0.446480,
		-0.873704, 0.464684, 0.143907,
		40.143192, 41.989948, 34.164459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385677, 41.760784, 33.379173>,  <40.754787, 41.664669, 34.063725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385677, 41.760784, 33.379173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202885, 42.028996, 33.612946>,  <40.093208, 42.189922, 33.753208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202885, 42.028996, 33.612946>,  <40.385677, 41.760784, 33.379173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202885, 42.028996, 33.612946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023745, 0.647621, -0.761592,
		-0.889159, -0.361912, -0.280029,
		-0.456982, 0.670527, 0.584432,
		40.065788, 42.230152, 33.788277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792686, 42.052620, 32.912430>,  <40.385677, 41.760784, 33.379173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.792686, 42.052620, 32.912430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.878731, 42.326138, 33.191330>,  <39.930359, 42.490246, 33.358669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.878731, 42.326138, 33.191330>,  <39.792686, 42.052620, 32.912430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878731, 42.326138, 33.191330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015903, 0.711417, -0.702590,
		-0.976460, 0.162224, 0.142161,
		0.215113, 0.683790, 0.697250,
		39.943264, 42.531273, 33.400505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737030, 42.611748, 32.530403>,  <39.792686, 42.052620, 32.912430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737030, 42.611748, 32.530403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872780, 42.762836, 32.874996>,  <39.954231, 42.853489, 33.081753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872780, 42.762836, 32.874996>,  <39.737030, 42.611748, 32.530403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872780, 42.762836, 32.874996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144175, 0.884128, -0.444445,
		-0.929535, 0.275039, 0.245596,
		0.339378, 0.377719, 0.861482,
		39.974594, 42.876152, 33.133442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394943, 43.261677, 32.665001>,  <39.737030, 42.611748, 32.530403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394943, 43.261677, 32.665001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739243, 43.298744, 32.865211>,  <39.945820, 43.320984, 32.985340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739243, 43.298744, 32.865211>,  <39.394943, 43.261677, 32.665001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739243, 43.298744, 32.865211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113913, 0.923287, -0.366831,
		-0.496127, 0.372764, 0.784159,
		0.860745, 0.092669, 0.500530,
		39.997467, 43.326546, 33.015369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426422, 43.948994, 32.839863>,  <39.394943, 43.261677, 32.665001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426422, 43.948994, 32.839863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799797, 43.823112, 32.908737>,  <40.023823, 43.747585, 32.950062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799797, 43.823112, 32.908737>,  <39.426422, 43.948994, 32.839863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799797, 43.823112, 32.908737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356427, 0.867920, -0.345941,
		-0.040577, 0.384288, 0.922321,
		0.933442, -0.314702, 0.172188,
		40.079830, 43.728703, 32.960392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742092, 44.460110, 33.189293>,  <39.426422, 43.948994, 32.839863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742092, 44.460110, 33.189293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.032570, 44.255375, 33.005703>,  <40.206856, 44.132534, 32.895550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.032570, 44.255375, 33.005703>,  <39.742092, 44.460110, 33.189293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032570, 44.255375, 33.005703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219790, 0.805423, -0.550442,
		0.651407, 0.298851, 0.697393,
		0.726196, -0.511842, -0.458974,
		40.250427, 44.101822, 32.868011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.258518, 44.926182, 33.075748>,  <39.742092, 44.460110, 33.189293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.258518, 44.926182, 33.075748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331589, 44.618000, 32.831444>,  <40.375431, 44.433090, 32.684860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331589, 44.618000, 32.831444>,  <40.258518, 44.926182, 33.075748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331589, 44.618000, 32.831444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394051, 0.626508, -0.672466,
		0.900751, -0.117825, 0.418049,
		0.182678, -0.770457, -0.610757,
		40.386391, 44.386864, 32.648216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976318, 44.986382, 32.791439>,  <40.258518, 44.926182, 33.075748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976318, 44.986382, 32.791439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.715084, 44.793678, 32.557724>,  <40.558346, 44.678059, 32.417496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.715084, 44.793678, 32.557724>,  <40.976318, 44.986382, 32.791439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.715084, 44.793678, 32.557724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331840, 0.511483, -0.792633,
		0.680710, -0.711546, -0.174175,
		-0.653082, -0.481755, -0.584291,
		40.519157, 44.649151, 32.382435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.376163, 45.018494, 32.236385>,  <40.976318, 44.986382, 32.791439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.376163, 45.018494, 32.236385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.043011, 44.892754, 32.054176>,  <40.843121, 44.817310, 31.944851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.043011, 44.892754, 32.054176>,  <41.376163, 45.018494, 32.236385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.043011, 44.892754, 32.054176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251713, 0.517854, -0.817599,
		0.492905, -0.795620, -0.352183,
		-0.832878, -0.314350, -0.455521,
		40.793148, 44.798450, 31.917521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.594273, 44.759041, 31.594234>,  <41.376163, 45.018494, 32.236385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.594273, 44.759041, 31.594234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.211143, 44.867554, 31.556326>,  <40.981266, 44.932659, 31.533581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.211143, 44.867554, 31.556326>,  <41.594273, 44.759041, 31.594234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211143, 44.867554, 31.556326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203147, 0.405981, -0.891017,
		-0.203238, -0.872690, -0.443968,
		-0.957824, 0.271279, -0.094773,
		40.923798, 44.948936, 31.527893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.366165, 44.834164, 31.247591>,  <41.594273, 44.759041, 31.594234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.366165, 44.834164, 31.247591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.541782, 44.769012, 30.894159>,  <42.647152, 44.729923, 30.682100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.541782, 44.769012, 30.894159>,  <42.366165, 44.834164, 31.247591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.541782, 44.769012, 30.894159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157868, -0.954146, 0.254329,
		-0.884489, -0.251150, -0.393195,
		0.439041, -0.162878, -0.883580,
		42.673496, 44.720150, 30.629086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.975872, 44.385509, 30.783285>,  <42.366165, 44.834164, 31.247591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.975872, 44.385509, 30.783285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.358139, 44.357357, 30.668926>,  <42.587502, 44.340466, 30.600311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.358139, 44.357357, 30.668926>,  <41.975872, 44.385509, 30.783285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.358139, 44.357357, 30.668926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012660, -0.960287, 0.278728,
		-0.294163, -0.269992, -0.916828,
		0.955672, -0.070384, -0.285899,
		42.644840, 44.336243, 30.583157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.097034, 43.712631, 30.503510>,  <41.975872, 44.385509, 30.783285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.097034, 43.712631, 30.503510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.478394, 43.817974, 30.562395>,  <42.707211, 43.881180, 30.597727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.478394, 43.817974, 30.562395>,  <42.097034, 43.712631, 30.503510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.478394, 43.817974, 30.562395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210195, -0.929820, 0.302082,
		0.216435, -0.257062, -0.941846,
		0.953401, 0.263352, 0.147212,
		42.764416, 43.896980, 30.606558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.520130, 43.164600, 30.193806>,  <42.097034, 43.712631, 30.503510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.520130, 43.164600, 30.193806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746574, 43.356670, 30.461821>,  <42.882442, 43.471912, 30.622629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746574, 43.356670, 30.461821>,  <42.520130, 43.164600, 30.193806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.746574, 43.356670, 30.461821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320392, -0.877092, 0.357854,
		0.759516, 0.012089, -0.650376,
		0.566114, 0.480171, 0.670038,
		42.916409, 43.500721, 30.662832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.267132, 42.804333, 30.215752>,  <42.520130, 43.164600, 30.193806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.267132, 42.804333, 30.215752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.205452, 42.997295, 30.560659>,  <43.168446, 43.113071, 30.767605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.205452, 42.997295, 30.560659>,  <43.267132, 42.804333, 30.215752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.205452, 42.997295, 30.560659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279535, -0.815752, 0.506369,
		0.947672, 0.319115, -0.009061,
		-0.154199, 0.482404, 0.862270,
		43.159191, 43.142017, 30.819340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.764118, 42.450245, 30.575300>,  <43.267132, 42.804333, 30.215752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.764118, 42.450245, 30.575300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.497543, 42.614319, 30.824335>,  <43.337597, 42.712761, 30.973755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.497543, 42.614319, 30.824335>,  <43.764118, 42.450245, 30.575300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.497543, 42.614319, 30.824335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211363, -0.696854, 0.685361,
		0.714974, 0.588341, 0.377712,
		-0.666436, 0.410181, 0.622586,
		43.297611, 42.737373, 31.011110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.119247, 42.459595, 31.151926>,  <43.764118, 42.450245, 30.575300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.119247, 42.459595, 31.151926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.734409, 42.461201, 31.260994>,  <43.503506, 42.462166, 31.326435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.734409, 42.461201, 31.260994>,  <44.119247, 42.459595, 31.151926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.734409, 42.461201, 31.260994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201904, -0.661624, 0.722142,
		0.183305, 0.749825, 0.635737,
		-0.962099, 0.004014, 0.272672,
		43.445778, 42.462406, 31.342796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.155514, 42.438637, 31.930511>,  <44.119247, 42.459595, 31.151926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.155514, 42.438637, 31.930511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.774464, 42.361423, 31.836502>,  <43.545834, 42.315098, 31.780096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.774464, 42.361423, 31.836502>,  <44.155514, 42.438637, 31.930511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.774464, 42.361423, 31.836502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082395, -0.580068, 0.810390,
		-0.292760, 0.791366, 0.536685,
		-0.952629, -0.193030, -0.235025,
		43.488674, 42.303516, 31.765995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.822811, 42.508102, 32.582516>,  <44.155514, 42.438637, 31.930511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.822811, 42.508102, 32.582516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.584789, 42.292603, 32.343967>,  <43.441975, 42.163303, 32.200836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.584789, 42.292603, 32.343967>,  <43.822811, 42.508102, 32.582516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.584789, 42.292603, 32.343967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273512, -0.562003, 0.780605,
		-0.755710, 0.627620, 0.187070,
		-0.595057, -0.538745, -0.596373,
		43.406273, 42.130978, 32.165054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.257965, 42.500179, 32.930920>,  <43.822811, 42.508102, 32.582516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.257965, 42.500179, 32.930920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.226154, 42.193939, 32.675568>,  <43.207069, 42.010197, 32.522354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.226154, 42.193939, 32.675568>,  <43.257965, 42.500179, 32.930920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.226154, 42.193939, 32.675568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470257, -0.535857, 0.701224,
		-0.878939, 0.355971, -0.317413,
		-0.079527, -0.765599, -0.638384,
		43.202297, 41.964260, 32.484051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.712166, 42.164917, 33.083340>,  <43.257965, 42.500179, 32.930920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.712166, 42.164917, 33.083340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.856411, 41.883526, 32.838367>,  <42.942959, 41.714691, 32.691383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.856411, 41.883526, 32.838367>,  <42.712166, 42.164917, 33.083340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.856411, 41.883526, 32.838367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428914, -0.708144, 0.560861,
		-0.828244, 0.060426, -0.557100,
		0.360616, -0.703478, -0.612433,
		42.964596, 41.672482, 32.654636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.165874, 41.704102, 32.750771>,  <42.712166, 42.164917, 33.083340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.165874, 41.704102, 32.750771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.514790, 41.519135, 32.814373>,  <42.724140, 41.408154, 32.852535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.514790, 41.519135, 32.814373>,  <42.165874, 41.704102, 32.750771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.514790, 41.519135, 32.814373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478274, -0.739102, 0.474324,
		-0.101815, -0.489795, -0.865872,
		0.872289, -0.462417, 0.159005,
		42.776478, 41.380409, 32.862076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.021946, 41.074211, 32.709717>,  <42.165874, 41.704102, 32.750771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.021946, 41.074211, 32.709717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.364769, 41.040184, 32.912979>,  <42.570461, 41.019768, 33.034935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.364769, 41.040184, 32.912979>,  <42.021946, 41.074211, 32.709717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.364769, 41.040184, 32.912979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363728, -0.798435, 0.479796,
		0.364913, -0.596041, -0.715244,
		0.857053, -0.085071, 0.508156,
		42.621883, 41.014664, 33.065426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.108395, 40.318409, 32.761032>,  <42.021946, 41.074211, 32.709717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.108395, 40.318409, 32.761032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.348156, 40.483955, 33.035091>,  <42.492012, 40.583282, 33.199528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.348156, 40.483955, 33.035091>,  <42.108395, 40.318409, 32.761032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.348156, 40.483955, 33.035091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182278, -0.762895, 0.620295,
		0.779415, -0.496695, -0.381845,
		0.599405, 0.413866, 0.685149,
		42.527977, 40.608116, 33.240635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416824, 39.732784, 33.045319>,  <42.108395, 40.318409, 32.761032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.416824, 39.732784, 33.045319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.443531, 40.036091, 33.304726>,  <42.459553, 40.218075, 33.460369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.443531, 40.036091, 33.304726>,  <42.416824, 39.732784, 33.045319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.443531, 40.036091, 33.304726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426043, -0.566070, 0.705728,
		0.902236, -0.323413, 0.285262,
		0.066764, 0.758267, 0.648517,
		42.463562, 40.263573, 33.499279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.666824, 39.429977, 33.692451>,  <42.416824, 39.732784, 33.045319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.666824, 39.429977, 33.692451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.483807, 39.776863, 33.771034>,  <42.373997, 39.984993, 33.818184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.483807, 39.776863, 33.771034>,  <42.666824, 39.429977, 33.692451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.483807, 39.776863, 33.771034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433285, -0.410378, 0.802405,
		0.776480, 0.282009, 0.563516,
		-0.457540, 0.867214, 0.196460,
		42.346546, 40.037025, 33.829971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.813103, 39.613594, 34.406555>,  <42.666824, 39.429977, 33.692451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.813103, 39.613594, 34.406555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.478760, 39.819050, 34.329071>,  <42.278156, 39.942322, 34.282581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.478760, 39.819050, 34.329071>,  <42.813103, 39.613594, 34.406555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.478760, 39.819050, 34.329071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399191, -0.326499, 0.856764,
		0.376823, 0.793456, 0.477946,
		-0.835854, 0.513640, -0.193708,
		42.228004, 39.973141, 34.270958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.567013, 39.783707, 35.052959>,  <42.813103, 39.613594, 34.406555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.567013, 39.783707, 35.052959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267117, 39.856457, 34.798462>,  <42.087177, 39.900108, 34.645763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267117, 39.856457, 34.798462>,  <42.567013, 39.783707, 35.052959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.267117, 39.856457, 34.798462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648959, -0.390056, 0.653229,
		-0.129364, 0.902651, 0.410471,
		-0.749744, 0.181875, -0.636243,
		42.042194, 39.911018, 34.607590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.002129, 40.143677, 35.478241>,  <42.567013, 39.783707, 35.052959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.002129, 40.143677, 35.478241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.836651, 39.977173, 35.154369>,  <41.737366, 39.877270, 34.960045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.836651, 39.977173, 35.154369>,  <42.002129, 40.143677, 35.478241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.836651, 39.977173, 35.154369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678363, -0.452204, 0.579081,
		-0.607190, 0.788820, -0.095302,
		-0.413695, -0.416262, -0.809681,
		41.712543, 39.852295, 34.911465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254383, 40.066628, 35.637825>,  <42.002129, 40.143677, 35.478241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.254383, 40.066628, 35.637825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307716, 39.830013, 35.319756>,  <41.339718, 39.688046, 35.128914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307716, 39.830013, 35.319756>,  <41.254383, 40.066628, 35.637825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.307716, 39.830013, 35.319756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639894, -0.664072, 0.386709,
		-0.756807, 0.457266, -0.467065,
		0.133336, -0.591537, -0.795176,
		41.347717, 39.652554, 35.081203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.679745, 39.635918, 35.657230>,  <41.254383, 40.066628, 35.637825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.679745, 39.635918, 35.657230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.907520, 39.433483, 35.398121>,  <41.044186, 39.312023, 35.242657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.907520, 39.433483, 35.398121>,  <40.679745, 39.635918, 35.657230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907520, 39.433483, 35.398121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499480, -0.838885, 0.216315,
		-0.652881, 0.200370, -0.730478,
		0.569444, -0.506087, -0.647773,
		41.078354, 39.281658, 35.203789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235611, 39.214054, 35.311333>,  <40.679745, 39.635918, 35.657230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.235611, 39.214054, 35.311333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.590191, 39.032085, 35.277248>,  <40.802937, 38.922905, 35.256798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.590191, 39.032085, 35.277248>,  <40.235611, 39.214054, 35.311333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.590191, 39.032085, 35.277248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402253, -0.848316, 0.344313,
		-0.228919, -0.270940, -0.934980,
		0.886447, -0.454919, -0.085209,
		40.856125, 38.895611, 35.251686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999992, 38.560314, 35.204659>,  <40.235611, 39.214054, 35.311333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999992, 38.560314, 35.204659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.385471, 38.497387, 35.290943>,  <40.616760, 38.459629, 35.342712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.385471, 38.497387, 35.290943>,  <39.999992, 38.560314, 35.204659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.385471, 38.497387, 35.290943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205896, -0.952269, 0.225369,
		0.169958, -0.261602, -0.950094,
		0.963702, -0.157317, 0.215709,
		40.674583, 38.450191, 35.355656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184250, 37.799786, 35.055653>,  <39.999992, 38.560314, 35.204659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184250, 37.799786, 35.055653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.461441, 37.936687, 35.309467>,  <40.627758, 38.018829, 35.461758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.461441, 37.936687, 35.309467>,  <40.184250, 37.799786, 35.055653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461441, 37.936687, 35.309467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098994, -0.916970, 0.386480,
		0.714128, -0.205008, -0.669323,
		0.692980, 0.342255, 0.634539,
		40.669334, 38.039364, 35.499828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710190, 37.299438, 35.033112>,  <40.184250, 37.799786, 35.055653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710190, 37.299438, 35.033112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.769707, 37.485687, 35.382065>,  <40.805416, 37.597435, 35.591438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.769707, 37.485687, 35.382065>,  <40.710190, 37.299438, 35.033112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.769707, 37.485687, 35.382065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132586, -0.883634, 0.449011,
		0.979940, 0.048856, -0.193214,
		0.148794, 0.465621, 0.872386,
		40.814346, 37.625374, 35.643780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.190937, 36.850178, 35.319584>,  <40.710190, 37.299438, 35.033112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.190937, 36.850178, 35.319584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.050785, 37.075211, 35.619114>,  <40.966694, 37.210228, 35.798832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.050785, 37.075211, 35.619114>,  <41.190937, 36.850178, 35.319584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.050785, 37.075211, 35.619114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158445, -0.752381, 0.639389,
		0.923109, 0.342676, 0.174480,
		-0.350379, 0.562580, 0.748825,
		40.945671, 37.243984, 35.843761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.635201, 36.709232, 35.923454>,  <41.190937, 36.850178, 35.319584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.635201, 36.709232, 35.923454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.294998, 36.860889, 36.069267>,  <41.090878, 36.951881, 36.156757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.294998, 36.860889, 36.069267>,  <41.635201, 36.709232, 35.923454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.294998, 36.860889, 36.069267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027653, -0.659897, 0.750847,
		0.525232, 0.648683, 0.550765,
		-0.850510, 0.379139, 0.364537,
		41.039845, 36.974632, 36.178627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.702274, 36.699390, 36.584209>,  <41.635201, 36.709232, 35.923454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.702274, 36.699390, 36.584209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.304447, 36.733852, 36.560818>,  <41.065750, 36.754528, 36.546783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.304447, 36.733852, 36.560818>,  <41.702274, 36.699390, 36.584209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.304447, 36.733852, 36.560818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104123, -0.825012, 0.555440,
		-0.000394, 0.558510, 0.829497,
		-0.994564, 0.086151, -0.058479,
		41.006077, 36.759697, 36.543274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493286, 36.648197, 37.330200>,  <41.702274, 36.699390, 36.584209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.493286, 36.648197, 37.330200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179447, 36.560219, 37.098328>,  <40.991142, 36.507431, 36.959206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179447, 36.560219, 37.098328>,  <41.493286, 36.648197, 37.330200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179447, 36.560219, 37.098328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138643, -0.849044, 0.509807,
		-0.604301, 0.480363, 0.635666,
		-0.784601, -0.219946, -0.579677,
		40.944065, 36.494236, 36.924423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909145, 36.461479, 37.767979>,  <41.493286, 36.648197, 37.330200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.909145, 36.461479, 37.767979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.808037, 36.274757, 37.428993>,  <40.747372, 36.162724, 37.225601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.808037, 36.274757, 37.428993>,  <40.909145, 36.461479, 37.767979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.808037, 36.274757, 37.428993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196622, -0.832848, 0.517401,
		-0.947338, 0.297413, 0.118732,
		-0.252767, -0.466808, -0.847466,
		40.732208, 36.134716, 37.174755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196609, 36.238819, 37.824490>,  <40.909145, 36.461479, 37.767979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.196609, 36.238819, 37.824490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390808, 36.026653, 37.546509>,  <40.507328, 35.899353, 37.379723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390808, 36.026653, 37.546509>,  <40.196609, 36.238819, 37.824490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390808, 36.026653, 37.546509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337103, -0.847029, 0.410979,
		-0.806629, 0.034739, -0.590037,
		0.485501, -0.530410, -0.694948,
		40.536457, 35.867531, 37.338024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819031, 35.625141, 37.832508>,  <40.196609, 36.238819, 37.824490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819031, 35.625141, 37.832508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.143250, 35.524437, 37.620987>,  <40.337780, 35.464016, 37.494076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.143250, 35.524437, 37.620987>,  <39.819031, 35.625141, 37.832508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143250, 35.524437, 37.620987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012320, -0.910024, 0.414373,
		-0.585545, -0.329354, -0.740718,
		0.810547, -0.251760, -0.528802,
		40.386414, 35.448910, 37.462345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726025, 34.868336, 37.820511>,  <39.819031, 35.625141, 37.832508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.726025, 34.868336, 37.820511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.096741, 34.946854, 37.692432>,  <40.319172, 34.993965, 37.615585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.096741, 34.946854, 37.692432>,  <39.726025, 34.868336, 37.820511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096741, 34.946854, 37.692432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288801, -0.917508, 0.273447,
		-0.240109, -0.345902, -0.907028,
		0.926791, 0.196294, -0.320198,
		40.374779, 35.005741, 37.596375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981682, 34.305859, 37.319118>,  <39.726025, 34.868336, 37.820511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981682, 34.305859, 37.319118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286476, 34.489605, 37.501705>,  <40.469353, 34.599854, 37.611256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286476, 34.489605, 37.501705>,  <39.981682, 34.305859, 37.319118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286476, 34.489605, 37.501705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480226, -0.873705, 0.077597,
		0.434461, 0.160078, -0.886351,
		0.761989, 0.459362, 0.456464,
		40.515072, 34.627415, 37.638645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667774, 34.000553, 37.075096>,  <39.981682, 34.305859, 37.319118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667774, 34.000553, 37.075096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761391, 34.170952, 37.424667>,  <40.817562, 34.273190, 37.634411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761391, 34.170952, 37.424667>,  <40.667774, 34.000553, 37.075096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761391, 34.170952, 37.424667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493605, -0.826491, 0.270678,
		0.837602, 0.368026, -0.403707,
		0.234043, 0.425992, 0.873930,
		40.831604, 34.298748, 37.686848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.421070, 33.868313, 37.167206>,  <40.667774, 34.000553, 37.075096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.421070, 33.868313, 37.167206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.286686, 33.948978, 37.535217>,  <41.206055, 33.997379, 37.756023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.286686, 33.948978, 37.535217>,  <41.421070, 33.868313, 37.167206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.286686, 33.948978, 37.535217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519107, -0.775416, 0.359525,
		0.785912, 0.598382, 0.155825,
		-0.335963, 0.201666, 0.920033,
		41.185898, 34.009480, 37.811226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.925922, 33.642326, 37.575310>,  <41.421070, 33.868313, 37.167206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.925922, 33.642326, 37.575310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.641495, 33.666843, 37.855488>,  <41.470837, 33.681553, 38.023594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.641495, 33.666843, 37.855488>,  <41.925922, 33.642326, 37.575310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.641495, 33.666843, 37.855488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469615, -0.700014, 0.537998,
		0.523294, 0.711494, 0.468978,
		-0.711073, 0.061292, 0.700441,
		41.428173, 33.685230, 38.065620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.286137, 33.764339, 38.111858>,  <41.925922, 33.642326, 37.575310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.286137, 33.764339, 38.111858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.937294, 33.625565, 38.249878>,  <41.727989, 33.542301, 38.332691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.937294, 33.625565, 38.249878>,  <42.286137, 33.764339, 38.111858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.937294, 33.625565, 38.249878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488931, -0.645678, 0.586555,
		0.019297, 0.680247, 0.732729,
		-0.872109, -0.346935, 0.345053,
		41.675663, 33.521484, 38.353394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.363338, 33.811066, 38.851139>,  <42.286137, 33.764339, 38.111858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.363338, 33.811066, 38.851139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.066933, 33.545132, 38.813427>,  <41.889088, 33.385571, 38.790802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.066933, 33.545132, 38.813427>,  <42.363338, 33.811066, 38.851139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.066933, 33.545132, 38.813427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346235, -0.498601, 0.794681,
		-0.575339, 0.556230, 0.599661,
		-0.741017, -0.664834, -0.094279,
		41.844627, 33.345680, 38.785145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.167297, 33.722511, 39.495621>,  <42.363338, 33.811066, 38.851139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.167297, 33.722511, 39.495621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.067234, 33.400181, 39.280937>,  <42.007195, 33.206783, 39.152126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.067234, 33.400181, 39.280937>,  <42.167297, 33.722511, 39.495621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.067234, 33.400181, 39.280937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311714, -0.591855, 0.743331,
		-0.916653, 0.018653, 0.399248,
		-0.250162, -0.805828, -0.536712,
		41.992184, 33.158432, 39.119923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.770592, 33.150894, 39.881676>,  <42.167297, 33.722511, 39.495621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.770592, 33.150894, 39.881676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.965122, 32.987167, 39.572884>,  <42.081841, 32.888931, 39.387608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.965122, 32.987167, 39.572884>,  <41.770592, 33.150894, 39.881676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.965122, 32.987167, 39.572884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443188, -0.645865, 0.621646,
		-0.753042, -0.644453, -0.132697,
		0.486325, -0.409316, -0.771977,
		42.111019, 32.864372, 39.341290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647797, 32.408607, 39.657734>,  <41.770592, 33.150894, 39.881676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647797, 32.408607, 39.657734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.023079, 32.542351, 39.622028>,  <42.248249, 32.622597, 39.600605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.023079, 32.542351, 39.622028>,  <41.647797, 32.408607, 39.657734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.023079, 32.542351, 39.622028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299747, -0.656233, 0.692467,
		0.172954, -0.676435, -0.715906,
		0.938210, 0.334356, -0.089262,
		42.304543, 32.642658, 39.595249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.032234, 31.783180, 39.790833>,  <41.647797, 32.408607, 39.657734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.032234, 31.783180, 39.790833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.280952, 32.094948, 39.821499>,  <42.430183, 32.282009, 39.839901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.280952, 32.094948, 39.821499>,  <42.032234, 31.783180, 39.790833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.280952, 32.094948, 39.821499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489456, -0.463153, 0.738865,
		0.611396, -0.421895, -0.669477,
		0.621794, 0.779419, 0.076671,
		42.467491, 32.328773, 39.844501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.725327, 31.540199, 39.756752>,  <42.032234, 31.783180, 39.790833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.725327, 31.540199, 39.756752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.773113, 31.891718, 39.941551>,  <42.801785, 32.102631, 40.052433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.773113, 31.891718, 39.941551>,  <42.725327, 31.540199, 39.756752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.773113, 31.891718, 39.941551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464565, -0.460730, 0.756246,
		0.877443, 0.124280, -0.463301,
		0.119471, 0.878796, 0.462001,
		42.808956, 32.155357, 40.080151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.416328, 31.601522, 39.957085>,  <42.725327, 31.540199, 39.756752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.416328, 31.601522, 39.957085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.238796, 31.876270, 40.187294>,  <43.132278, 32.041119, 40.325420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.238796, 31.876270, 40.187294>,  <43.416328, 31.601522, 39.957085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.238796, 31.876270, 40.187294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558044, -0.290657, 0.777242,
		0.701145, 0.666127, -0.254303,
		-0.443827, 0.686872, 0.575521,
		43.105648, 32.082333, 40.359951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.881207, 31.850765, 40.478554>,  <43.416328, 31.601522, 39.957085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.881207, 31.850765, 40.478554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.519356, 31.930273, 40.629360>,  <43.302246, 31.977978, 40.719845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.519356, 31.930273, 40.629360>,  <43.881207, 31.850765, 40.478554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.519356, 31.930273, 40.629360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316213, -0.280081, 0.906401,
		0.285762, 0.939172, 0.190514,
		-0.904626, 0.198772, 0.377016,
		43.247967, 31.989904, 40.742466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.883266, 32.291698, 41.155434>,  <43.881207, 31.850765, 40.478554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.883266, 32.291698, 41.155434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.538925, 32.089920, 41.182201>,  <43.332321, 31.968855, 41.198261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.538925, 32.089920, 41.182201>,  <43.883266, 32.291698, 41.155434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.538925, 32.089920, 41.182201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237572, -0.282117, 0.929500,
		-0.449999, 0.816057, 0.362701,
		-0.860849, -0.504441, 0.066920,
		43.280670, 31.938587, 41.202278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.785896, 32.463573, 41.812782>,  <43.883266, 32.291698, 41.155434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.785896, 32.463573, 41.812782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.499367, 32.195263, 41.735909>,  <43.327450, 32.034275, 41.689785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.499367, 32.195263, 41.735909>,  <43.785896, 32.463573, 41.812782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.499367, 32.195263, 41.735909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038168, -0.312684, 0.949090,
		-0.696722, 0.672522, 0.249586,
		-0.716325, -0.670778, -0.192185,
		43.284470, 31.994030, 41.678253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.327225, 32.539658, 42.402470>,  <43.785896, 32.463573, 41.812782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.327225, 32.539658, 42.402470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.287754, 32.172222, 42.249393>,  <43.264072, 31.951759, 42.157547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.287754, 32.172222, 42.249393>,  <43.327225, 32.539658, 42.402470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.287754, 32.172222, 42.249393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142629, -0.393650, 0.908128,
		-0.984845, 0.035033, 0.169864,
		-0.098681, -0.918593, -0.382687,
		43.258148, 31.896645, 42.134586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.840572, 32.231972, 42.839584>,  <43.327225, 32.539658, 42.402470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.840572, 32.231972, 42.839584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.078842, 31.958254, 42.671341>,  <43.221802, 31.794022, 42.570396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.078842, 31.958254, 42.671341>,  <42.840572, 32.231972, 42.839584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.078842, 31.958254, 42.671341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119293, -0.442468, 0.888815,
		-0.794319, -0.579618, -0.181934,
		0.595673, -0.684299, -0.420605,
		43.257545, 31.752964, 42.545158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.553318, 31.569067, 42.883675>,  <42.840572, 32.231972, 42.839584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.553318, 31.569067, 42.883675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.952850, 31.549948, 42.880932>,  <43.192570, 31.538477, 42.879288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.952850, 31.549948, 42.880932>,  <42.553318, 31.569067, 42.883675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.952850, 31.549948, 42.880932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018338, -0.506865, 0.861830,
		-0.044670, -0.860699, -0.507150,
		0.998834, -0.047798, -0.006858,
		43.252499, 31.535608, 42.878876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.748814, 30.838110, 42.933388>,  <42.553318, 31.569067, 42.883675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.748814, 30.838110, 42.933388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.031628, 31.075167, 43.087727>,  <43.201317, 31.217402, 43.180328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.031628, 31.075167, 43.087727>,  <42.748814, 30.838110, 42.933388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.031628, 31.075167, 43.087727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082294, -0.472952, 0.877237,
		0.702374, -0.651990, -0.285623,
		0.707035, 0.592643, 0.385844,
		43.243740, 31.252960, 43.203480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.468487, 30.832195, 42.856274>,  <42.748814, 30.838110, 42.933388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.468487, 30.832195, 42.856274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.311356, 30.828098, 42.488453>,  <43.217075, 30.825640, 42.267761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.311356, 30.828098, 42.488453>,  <43.468487, 30.832195, 42.856274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.311356, 30.828098, 42.488453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904120, -0.187075, -0.384150,
		-0.168091, -0.982292, 0.082748,
		-0.392827, -0.010242, -0.919555,
		43.193508, 30.825026, 42.212585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.507343, 30.107050, 43.163849>,  <43.468487, 30.832195, 42.856274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.507343, 30.107050, 43.163849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.543217, 30.483255, 43.294933>,  <43.564739, 30.708979, 43.373585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.543217, 30.483255, 43.294933>,  <43.507343, 30.107050, 43.163849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.543217, 30.483255, 43.294933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052825, -0.324079, 0.944554,
		0.994569, -0.102018, 0.020619,
		0.089679, 0.940513, 0.327708,
		43.570122, 30.765409, 43.393246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.974903, 30.019428, 43.684547>,  <43.507343, 30.107050, 43.163849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.974903, 30.019428, 43.684547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.788044, 30.368750, 43.739849>,  <43.675926, 30.578342, 43.773029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.788044, 30.368750, 43.739849>,  <43.974903, 30.019428, 43.684547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.788044, 30.368750, 43.739849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277589, -0.293315, 0.914828,
		0.839472, 0.388987, 0.379442,
		-0.467152, 0.873302, 0.138251,
		43.647900, 30.630739, 43.781322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.265018, 30.284159, 44.304386>,  <43.974903, 30.019428, 43.684547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.265018, 30.284159, 44.304386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.887486, 30.392174, 44.228210>,  <43.660965, 30.456982, 44.182507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.887486, 30.392174, 44.228210>,  <44.265018, 30.284159, 44.304386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.887486, 30.392174, 44.228210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274654, -0.320699, 0.906487,
		0.183712, 0.907873, 0.376852,
		-0.943830, 0.270036, -0.190435,
		43.604336, 30.473185, 44.171082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.009384, 30.241673, 44.975903>,  <44.265018, 30.284159, 44.304386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.009384, 30.241673, 44.975903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.680267, 30.308062, 44.758472>,  <43.482800, 30.347895, 44.628014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.680267, 30.308062, 44.758472>,  <44.009384, 30.241673, 44.975903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.680267, 30.308062, 44.758472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548185, -0.484237, 0.681915,
		-0.150040, 0.859051, 0.489408,
		-0.822789, 0.165971, -0.543573,
		43.433430, 30.357853, 44.595402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.526463, 30.680555, 45.400913>,  <44.009384, 30.241673, 44.975903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.526463, 30.680555, 45.400913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.339848, 30.435675, 45.145554>,  <43.227879, 30.288746, 44.992336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.339848, 30.435675, 45.145554>,  <43.526463, 30.680555, 45.400913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.339848, 30.435675, 45.145554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439170, -0.466179, 0.767989,
		-0.767773, 0.638659, -0.051373,
		-0.466534, -0.612203, -0.638399,
		43.199886, 30.252014, 44.954033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.951427, 30.464693, 45.702175>,  <43.526463, 30.680555, 45.400913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.951427, 30.464693, 45.702175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.951740, 30.198355, 45.403740>,  <42.951927, 30.038551, 45.224678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.951740, 30.198355, 45.403740>,  <42.951427, 30.464693, 45.702175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.951740, 30.198355, 45.403740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543365, -0.626622, 0.558659,
		-0.839496, 0.404959, -0.362290,
		0.000785, -0.665848, -0.746088,
		42.951977, 29.998600, 45.179913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.228931, 30.168705, 45.768932>,  <42.951427, 30.464693, 45.702175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.228931, 30.168705, 45.768932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.482014, 29.911955, 45.595642>,  <42.633862, 29.757904, 45.491669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.482014, 29.911955, 45.595642>,  <42.228931, 30.168705, 45.768932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.482014, 29.911955, 45.595642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270892, -0.707540, 0.652691,
		-0.725473, -0.295599, -0.621539,
		0.632698, -0.641879, -0.433226,
		42.671825, 29.719391, 45.465675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.860409, 29.630186, 45.629864>,  <42.228931, 30.168705, 45.768932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.860409, 29.630186, 45.629864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.233803, 29.487411, 45.643753>,  <42.457840, 29.401747, 45.652084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.233803, 29.487411, 45.643753>,  <41.860409, 29.630186, 45.629864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.233803, 29.487411, 45.643753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311237, -0.758244, 0.572885,
		-0.178155, -0.545586, -0.818900,
		0.933484, -0.356934, 0.034721,
		42.513847, 29.380331, 45.654171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.857903, 28.926353, 45.375469>,  <41.860409, 29.630186, 45.629864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.857903, 28.926353, 45.375469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.080017, 29.052879, 45.683132>,  <42.213287, 29.128794, 45.867729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.080017, 29.052879, 45.683132>,  <41.857903, 28.926353, 45.375469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.080017, 29.052879, 45.683132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358725, -0.743291, 0.564654,
		0.750316, -0.589461, -0.299269,
		0.555285, 0.316314, 0.769158,
		42.246601, 29.147774, 45.913879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.169502, 28.261662, 45.708061>,  <41.857903, 28.926353, 45.375469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.169502, 28.261662, 45.708061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.159344, 28.566437, 45.966923>,  <42.153248, 28.749302, 46.122238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.159344, 28.566437, 45.966923>,  <42.169502, 28.261662, 45.708061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.159344, 28.566437, 45.966923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196431, -0.638543, 0.744096,
		0.980189, -0.108224, 0.165885,
		-0.025396, 0.761939, 0.647151,
		42.151726, 28.795019, 46.161068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.403702, 28.044130, 46.355473>,  <42.169502, 28.261662, 45.708061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.403702, 28.044130, 46.355473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.174614, 28.358974, 46.447079>,  <42.037163, 28.547882, 46.502045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.174614, 28.358974, 46.447079>,  <42.403702, 28.044130, 46.355473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.174614, 28.358974, 46.447079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162506, -0.382846, 0.909407,
		0.803484, 0.483616, 0.347173,
		-0.572718, 0.787111, 0.229020,
		42.002800, 28.595108, 46.515785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.189651, 28.025045, 46.159245>,  <42.403702, 28.044130, 46.355473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.189651, 28.025045, 46.159245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.896965, 28.292273, 46.213329>,  <42.721355, 28.452608, 46.245781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.896965, 28.292273, 46.213329>,  <43.189651, 28.025045, 46.159245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.896965, 28.292273, 46.213329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478144, 0.644463, -0.596696,
		-0.485773, -0.371958, -0.790994,
		-0.731712, 0.668068, 0.135213,
		42.677452, 28.492693, 46.253895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.054050, 28.376379, 45.588730>,  <43.189651, 28.025045, 46.159245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.054050, 28.376379, 45.588730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.974186, 28.653122, 45.866283>,  <42.926266, 28.819168, 46.032814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.974186, 28.653122, 45.866283>,  <43.054050, 28.376379, 45.588730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.974186, 28.653122, 45.866283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414682, 0.701261, -0.579890,
		-0.887792, 0.171959, -0.426915,
		-0.199662, 0.691855, 0.693881,
		42.914288, 28.860678, 46.074448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.610893, 28.919409, 45.679619>,  <43.054050, 28.376379, 45.588730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.610893, 28.919409, 45.679619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.233829, 28.993122, 45.568310>,  <43.007591, 29.037350, 45.501526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.233829, 28.993122, 45.568310>,  <43.610893, 28.919409, 45.679619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.233829, 28.993122, 45.568310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321378, 0.726149, -0.607802,
		0.090060, -0.662380, -0.743735,
		-0.942658, 0.184281, -0.278272,
		42.951031, 29.048407, 45.484829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.502823, 28.961840, 44.876217>,  <43.610893, 28.919409, 45.679619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.502823, 28.961840, 44.876217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.220261, 29.179508, 45.057270>,  <43.050724, 29.310110, 45.165901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.220261, 29.179508, 45.057270>,  <43.502823, 28.961840, 44.876217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.220261, 29.179508, 45.057270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115595, 0.719586, -0.684714,
		-0.698309, -0.431361, -0.571220,
		-0.706401, 0.544172, 0.452630,
		43.008339, 29.342760, 45.193058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.001038, 28.999666, 44.362583>,  <43.502823, 28.961840, 44.876217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.001038, 28.999666, 44.362583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.989326, 29.313015, 44.610928>,  <42.982300, 29.501024, 44.759933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.989326, 29.313015, 44.610928>,  <43.001038, 28.999666, 44.362583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.989326, 29.313015, 44.610928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077267, 0.621044, -0.779958,
		-0.996580, 0.025141, -0.078709,
		-0.029273, 0.783373, 0.620862,
		42.980545, 29.548027, 44.797188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.759602, 29.472662, 43.979416>,  <43.001038, 28.999666, 44.362583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.759602, 29.472662, 43.979416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.888756, 29.708920, 44.275223>,  <42.966248, 29.850674, 44.452705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.888756, 29.708920, 44.275223>,  <42.759602, 29.472662, 43.979416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.888756, 29.708920, 44.275223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108590, 0.753087, -0.648898,
		-0.940187, 0.289826, 0.179025,
		0.322889, 0.590645, 0.739514,
		42.985622, 29.886112, 44.497078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.400185, 30.094278, 43.903214>,  <42.759602, 29.472662, 43.979416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.400185, 30.094278, 43.903214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.742695, 30.155565, 44.100521>,  <42.948200, 30.192337, 44.218906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.742695, 30.155565, 44.100521>,  <42.400185, 30.094278, 43.903214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.742695, 30.155565, 44.100521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319422, 0.593397, -0.738816,
		-0.405901, 0.790193, 0.459172,
		0.856279, 0.153217, 0.493266,
		42.999580, 30.201530, 44.248501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.351051, 30.767839, 43.888599>,  <42.400185, 30.094278, 43.903214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.351051, 30.767839, 43.888599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.728580, 30.653580, 43.955067>,  <42.955097, 30.585024, 43.994946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.728580, 30.653580, 43.955067>,  <42.351051, 30.767839, 43.888599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.728580, 30.653580, 43.955067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297917, 0.517888, -0.801896,
		0.143006, 0.806349, 0.573892,
		0.943819, -0.285648, 0.166164,
		43.011726, 30.567884, 44.004917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.660343, 31.224464, 44.261009>,  <42.351051, 30.767839, 43.888599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.660343, 31.224464, 44.261009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.057575, 31.178896, 44.249626>,  <43.295914, 31.151554, 44.242798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.057575, 31.178896, 44.249626>,  <42.660343, 31.224464, 44.261009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.057575, 31.178896, 44.249626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019514, 0.078853, -0.996695,
		0.115791, 0.990355, 0.076085,
		0.993082, -0.113923, -0.028456,
		43.355499, 31.144718, 44.241089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.104961, 31.790485, 43.943462>,  <42.660343, 31.224464, 44.261009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.104961, 31.790485, 43.943462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.277996, 31.433290, 43.893749>,  <43.381817, 31.218973, 43.863922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.277996, 31.433290, 43.893749>,  <43.104961, 31.790485, 43.943462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.277996, 31.433290, 43.893749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160851, 0.212073, -0.963925,
		0.887130, 0.396987, 0.235377,
		0.432583, -0.892988, -0.124280,
		43.407772, 31.165394, 43.856464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.801590, 31.888401, 43.791897>,  <43.104961, 31.790485, 43.943462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.801590, 31.888401, 43.791897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.657055, 31.543390, 43.650200>,  <43.570332, 31.336384, 43.565182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.657055, 31.543390, 43.650200>,  <43.801590, 31.888401, 43.791897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.657055, 31.543390, 43.650200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305616, 0.249367, -0.918921,
		0.880927, -0.440304, 0.173495,
		-0.361341, -0.862524, -0.354238,
		43.548653, 31.284634, 43.543930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.415741, 31.594564, 43.390812>,  <43.801590, 31.888401, 43.791897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.415741, 31.594564, 43.390812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.057140, 31.441858, 43.300888>,  <43.841980, 31.350235, 43.246933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.057140, 31.441858, 43.300888>,  <44.415741, 31.594564, 43.390812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.057140, 31.441858, 43.300888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131085, 0.256126, -0.957714,
		0.423202, -0.888062, -0.179574,
		-0.896502, -0.381766, -0.224805,
		43.788189, 31.327328, 43.233448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.510544, 31.410442, 42.765076>,  <44.415741, 31.594564, 43.390812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.510544, 31.410442, 42.765076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.112759, 31.441305, 42.793629>,  <43.874088, 31.459824, 42.810760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.112759, 31.441305, 42.793629>,  <44.510544, 31.410442, 42.765076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.112759, 31.441305, 42.793629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047361, 0.277360, -0.959598,
		-0.093839, -0.957663, -0.272169,
		-0.994461, 0.077158, 0.071383,
		43.814419, 31.464453, 42.815044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.273064, 31.002237, 42.139343>,  <44.510544, 31.410442, 42.765076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.273064, 31.002237, 42.139343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.996593, 31.265375, 42.259022>,  <43.830711, 31.423258, 42.330830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.996593, 31.265375, 42.259022>,  <44.273064, 31.002237, 42.139343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.996593, 31.265375, 42.259022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026696, 0.436960, -0.899085,
		-0.722195, -0.613437, -0.319577,
		-0.691175, 0.657846, 0.299194,
		43.789242, 31.462729, 42.348782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.757889, 31.092781, 41.612934>,  <44.273064, 31.002237, 42.139343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.757889, 31.092781, 41.612934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.801556, 31.413399, 41.848087>,  <43.827755, 31.605770, 41.989178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.801556, 31.413399, 41.848087>,  <43.757889, 31.092781, 41.612934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.801556, 31.413399, 41.848087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207373, 0.560042, -0.802091,
		-0.972152, 0.209471, -0.105083,
		0.109164, 0.801546, 0.587884,
		43.834305, 31.653862, 42.024452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.075409, 30.717619, 41.593212>,  <43.757889, 31.092781, 41.612934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.075409, 30.717619, 41.593212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.098839, 31.075771, 41.769783>,  <43.112896, 31.290663, 41.875725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.098839, 31.075771, 41.769783>,  <43.075409, 30.717619, 41.593212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.098839, 31.075771, 41.769783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142377, 0.445162, -0.884058,
		-0.988078, -0.011070, 0.153555,
		0.058570, 0.895381, 0.441431,
		43.116409, 31.344385, 41.902214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.447140, 31.003563, 41.523731>,  <43.075409, 30.717619, 41.593212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.447140, 31.003563, 41.523731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.710899, 31.302999, 41.551453>,  <42.869156, 31.482660, 41.568085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.710899, 31.302999, 41.551453>,  <42.447140, 31.003563, 41.523731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.710899, 31.302999, 41.551453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437162, 0.456805, -0.774738,
		-0.611621, 0.480565, 0.628473,
		0.659401, 0.748590, 0.069306,
		42.908718, 31.527576, 41.572243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.129707, 31.500858, 41.209431>,  <42.447140, 31.003563, 41.523731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.129707, 31.500858, 41.209431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.506252, 31.635391, 41.220196>,  <42.732178, 31.716112, 41.226654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.506252, 31.635391, 41.220196>,  <42.129707, 31.500858, 41.209431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.506252, 31.635391, 41.220196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152799, 0.496054, -0.854741,
		-0.300828, 0.800506, 0.518356,
		0.941358, 0.336334, 0.026910,
		42.788658, 31.736292, 41.228268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.029671, 32.215637, 41.191730>,  <42.129707, 31.500858, 41.209431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.029671, 32.215637, 41.191730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.406277, 32.149899, 41.074062>,  <42.632240, 32.110455, 41.003464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.406277, 32.149899, 41.074062>,  <42.029671, 32.215637, 41.191730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.406277, 32.149899, 41.074062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167487, 0.529264, -0.831762,
		0.292391, 0.832388, 0.470785,
		0.941518, -0.164350, -0.294166,
		42.688732, 32.100594, 40.985813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.276527, 32.841503, 40.855270>,  <42.029671, 32.215637, 41.191730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.276527, 32.841503, 40.855270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.561455, 32.587532, 40.735622>,  <42.732410, 32.435150, 40.663834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.561455, 32.587532, 40.735622>,  <42.276527, 32.841503, 40.855270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.561455, 32.587532, 40.735622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056753, 0.372685, -0.926221,
		0.699558, 0.676740, 0.229436,
		0.712318, -0.634924, -0.299122,
		42.775150, 32.397057, 40.645885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.708313, 33.301083, 40.577900>,  <42.276527, 32.841503, 40.855270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.708313, 33.301083, 40.577900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.742798, 32.932873, 40.425476>,  <42.763489, 32.711948, 40.334023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.742798, 32.932873, 40.425476>,  <42.708313, 33.301083, 40.577900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.742798, 32.932873, 40.425476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168919, 0.363442, -0.916175,
		0.981852, 0.143353, -0.124161,
		0.086211, -0.920522, -0.381061,
		42.768661, 32.656715, 40.311157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.262985, 33.332287, 40.087387>,  <42.708313, 33.301083, 40.577900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.262985, 33.332287, 40.087387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.007236, 33.038280, 39.997101>,  <42.853786, 32.861877, 39.942928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.007236, 33.038280, 39.997101>,  <43.262985, 33.332287, 40.087387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.007236, 33.038280, 39.997101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166551, 0.418979, -0.892590,
		0.750641, -0.533106, -0.390303,
		-0.639374, -0.735020, -0.225713,
		42.815426, 32.817776, 39.929386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.480717, 33.091888, 39.487335>,  <43.262985, 33.332287, 40.087387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.480717, 33.091888, 39.487335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.103294, 32.964394, 39.523354>,  <42.876842, 32.887897, 39.544964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.103294, 32.964394, 39.523354>,  <43.480717, 33.091888, 39.487335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.103294, 32.964394, 39.523354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260762, 0.547270, -0.795298,
		0.204211, -0.773889, -0.599494,
		-0.943558, -0.318734, 0.090043,
		42.820229, 32.868774, 39.550365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.161583, 32.658081, 38.905258>,  <43.480717, 33.091888, 39.487335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.161583, 32.658081, 38.905258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.833099, 32.830605, 39.054703>,  <42.636009, 32.934120, 39.144367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.833099, 32.830605, 39.054703>,  <43.161583, 32.658081, 38.905258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.833099, 32.830605, 39.054703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242096, 0.329541, -0.912575,
		-0.516720, -0.839867, -0.166206,
		-0.821213, 0.431308, 0.373609,
		42.586735, 32.959995, 39.166786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.547180, 32.408585, 38.602444>,  <43.161583, 32.658081, 38.905258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.547180, 32.408585, 38.602444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.520397, 32.788044, 38.726109>,  <42.504330, 33.015720, 38.800308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.520397, 32.788044, 38.726109>,  <42.547180, 32.408585, 38.602444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.520397, 32.788044, 38.726109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078231, 0.303910, -0.949483,
		-0.994684, -0.087758, 0.053866,
		-0.066955, 0.948650, 0.309160,
		42.500309, 33.072639, 38.818855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.120911, 31.991259, 38.578655>,  <42.547180, 32.408585, 38.602444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.120911, 31.991259, 38.578655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.185364, 31.765768, 38.254616>,  <43.224033, 31.630474, 38.060192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.185364, 31.765768, 38.254616>,  <43.120911, 31.991259, 38.578655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.185364, 31.765768, 38.254616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951190, 0.130200, -0.279795,
		0.263202, 0.815637, -0.515230,
		0.161128, -0.563724, -0.810094,
		43.233704, 31.596651, 38.011589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.705658, 32.354778, 38.513172>,  <43.120911, 31.991259, 38.578655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.705658, 32.354778, 38.513172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.469906, 32.450970, 38.204678>,  <43.328457, 32.508686, 38.019581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.469906, 32.450970, 38.204678>,  <43.705658, 32.354778, 38.513172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.469906, 32.450970, 38.204678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213005, 0.967144, 0.138785,
		0.779271, -0.082480, -0.621236,
		-0.589378, 0.240477, -0.771236,
		43.293091, 32.523113, 37.973309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.197823, 32.829056, 38.099716>,  <43.705658, 32.354778, 38.513172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.197823, 32.829056, 38.099716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.808098, 32.904552, 38.050579>,  <43.574265, 32.949848, 38.021095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.808098, 32.904552, 38.050579>,  <44.197823, 32.829056, 38.099716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.808098, 32.904552, 38.050579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180569, 0.980725, 0.074655,
		0.134569, 0.050556, -0.989614,
		-0.974313, 0.188740, -0.122846,
		43.515804, 32.961174, 38.013725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.903015, 33.608902, 38.002945>,  <44.197823, 32.829056, 38.099716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.903015, 33.608902, 38.002945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.223259, 33.836720, 37.928493>,  <44.415405, 33.973412, 37.883823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.223259, 33.836720, 37.928493>,  <43.903015, 33.608902, 38.002945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.223259, 33.836720, 37.928493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556438, 0.821938, 0.121636,
		0.222260, 0.006185, 0.974968,
		0.800610, 0.569544, -0.186126,
		44.463444, 34.007584, 37.872654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.765678, 34.202099, 38.464809>,  <43.903015, 33.608902, 38.002945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.765678, 34.202099, 38.464809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.005039, 34.277351, 38.153290>,  <44.148655, 34.322502, 37.966377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.005039, 34.277351, 38.153290>,  <43.765678, 34.202099, 38.464809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.005039, 34.277351, 38.153290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434507, 0.892884, -0.118164,
		0.673142, 0.409101, 0.616049,
		0.598401, 0.188136, -0.778795,
		44.184559, 34.333794, 37.919651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.337246, 34.839329, 38.494820>,  <43.765678, 34.202099, 38.464809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.337246, 34.839329, 38.494820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.192619, 34.768566, 38.128658>,  <44.105843, 34.726109, 37.908958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.192619, 34.768566, 38.128658>,  <44.337246, 34.839329, 38.494820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.192619, 34.768566, 38.128658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313660, 0.947685, -0.059254,
		0.878001, 0.265702, -0.398142,
		-0.361569, -0.176906, -0.915408,
		44.084148, 34.715496, 37.854034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.672497, 35.159729, 37.973789>,  <44.337246, 34.839329, 38.494820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.672497, 35.159729, 37.973789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.323650, 35.082062, 37.794144>,  <44.114342, 35.035461, 37.686356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.323650, 35.082062, 37.794144>,  <44.672497, 35.159729, 37.973789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.323650, 35.082062, 37.794144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167087, 0.980897, -0.099612,
		0.459878, -0.011832, -0.887903,
		-0.872120, -0.194166, -0.449116,
		44.062016, 35.023811, 37.659409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.667397, 35.365158, 37.219780>,  <44.672497, 35.159729, 37.973789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.667397, 35.365158, 37.219780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.339149, 35.387543, 37.447273>,  <44.142200, 35.400974, 37.583771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.339149, 35.387543, 37.447273>,  <44.667397, 35.365158, 37.219780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.339149, 35.387543, 37.447273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030499, 0.989488, -0.141364,
		-0.570670, -0.133351, -0.810280,
		-0.820613, 0.055959, 0.568738,
		44.092964, 35.404331, 37.617893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.746613, 36.102303, 37.452450>,  <44.667397, 35.365158, 37.219780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.746613, 36.102303, 37.452450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.366703, 35.992176, 37.392956>,  <44.138756, 35.926098, 37.357262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.366703, 35.992176, 37.392956>,  <44.746613, 36.102303, 37.452450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.366703, 35.992176, 37.392956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297285, -0.645501, -0.703527,
		0.097689, -0.712410, 0.694931,
		-0.949778, -0.275319, -0.148730,
		44.081768, 35.909580, 37.348335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.888294, 36.744202, 36.946770>,  <44.746613, 36.102303, 37.452450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.888294, 36.744202, 36.946770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.257580, 36.690704, 37.090870>,  <45.479153, 36.658604, 37.177330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.257580, 36.690704, 37.090870>,  <44.888294, 36.744202, 36.946770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.257580, 36.690704, 37.090870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216386, -0.593784, -0.774982,
		0.317564, 0.793431, -0.519250,
		0.923217, -0.133748, 0.360251,
		45.534546, 36.650581, 37.198944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.386391, 36.839123, 36.450245>,  <44.888294, 36.744202, 36.946770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.386391, 36.839123, 36.450245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.510834, 36.534466, 36.677616>,  <45.585499, 36.351673, 36.814041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.510834, 36.534466, 36.677616>,  <45.386391, 36.839123, 36.450245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.510834, 36.534466, 36.677616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481032, -0.389644, -0.785357,
		0.819648, 0.517761, 0.245155,
		0.311104, -0.761643, 0.568431,
		45.604164, 36.305973, 36.848145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.161999, 36.668385, 36.370827>,  <45.386391, 36.839123, 36.450245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.161999, 36.668385, 36.370827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.933414, 36.358967, 36.480412>,  <45.796265, 36.173317, 36.546162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.933414, 36.358967, 36.480412>,  <46.161999, 36.668385, 36.370827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.933414, 36.358967, 36.480412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415126, -0.560480, -0.716612,
		0.707884, -0.295787, 0.641412,
		-0.571463, -0.773546, 0.273966,
		45.761974, 36.126904, 36.562603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.493649, 36.058823, 36.620541>,  <46.161999, 36.668385, 36.370827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.493649, 36.058823, 36.620541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.164452, 35.981773, 36.406780>,  <45.966934, 35.935543, 36.278522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.164452, 35.981773, 36.406780>,  <46.493649, 36.058823, 36.620541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.164452, 35.981773, 36.406780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563896, -0.390705, -0.727579,
		-0.068644, -0.900136, 0.430166,
		-0.822988, -0.192625, -0.534403,
		45.917557, 35.923985, 36.246460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.541084, 35.406422, 36.349876>,  <46.493649, 36.058823, 36.620541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.541084, 35.406422, 36.349876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.338619, 35.604790, 36.067638>,  <46.217140, 35.723812, 35.898296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.338619, 35.604790, 36.067638>,  <46.541084, 35.406422, 36.349876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.338619, 35.604790, 36.067638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496963, -0.500936, -0.708583,
		-0.704857, -0.709314, 0.007103,
		-0.506167, 0.495920, -0.705592,
		46.186768, 35.753567, 35.855961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.314491, 34.890381, 35.870953>,  <46.541084, 35.406422, 36.349876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.314491, 34.890381, 35.870953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.366360, 35.256969, 35.719547>,  <46.397480, 35.476921, 35.628704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.366360, 35.256969, 35.719547>,  <46.314491, 34.890381, 35.870953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.366360, 35.256969, 35.719547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653614, -0.366064, -0.662409,
		-0.745637, -0.161506, -0.646484,
		0.129671, 0.916468, -0.378513,
		46.405262, 35.531910, 35.605991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.084347, 34.928368, 35.103996>,  <46.314491, 34.890381, 35.870953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.084347, 34.928368, 35.103996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.389736, 35.145546, 35.243889>,  <46.572971, 35.275852, 35.327824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.389736, 35.145546, 35.243889>,  <46.084347, 34.928368, 35.103996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.389736, 35.145546, 35.243889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610821, -0.431151, -0.664084,
		-0.209775, 0.720636, -0.660817,
		0.763474, 0.542948, 0.349734,
		46.618778, 35.308430, 35.348808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.553204, 35.063820, 34.520542>,  <46.084347, 34.928368, 35.103996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.553204, 35.063820, 34.520542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.741425, 35.123512, 34.868404>,  <46.854359, 35.159328, 35.077122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.741425, 35.123512, 34.868404>,  <46.553204, 35.063820, 34.520542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.741425, 35.123512, 34.868404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779655, -0.531832, -0.330594,
		0.413178, 0.833597, -0.366605,
		0.470555, 0.149231, 0.869660,
		46.882591, 35.168282, 35.129303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.275757, 35.387188, 34.402630>,  <46.553204, 35.063820, 34.520542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.275757, 35.387188, 34.402630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.236359, 35.182732, 34.744164>,  <47.212719, 35.060059, 34.949085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.236359, 35.182732, 34.744164>,  <47.275757, 35.387188, 34.402630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.236359, 35.182732, 34.744164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829815, -0.515774, -0.213038,
		0.549278, 0.687541, 0.474954,
		-0.098497, -0.511141, 0.853835,
		47.206810, 35.029388, 35.000313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.965981, 35.407742, 34.900246>,  <47.275757, 35.387188, 34.402630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.965981, 35.407742, 34.900246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.734718, 35.085209, 34.950138>,  <47.595959, 34.891689, 34.980072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.734718, 35.085209, 34.950138>,  <47.965981, 35.407742, 34.900246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.734718, 35.085209, 34.950138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801473, -0.589886, -0.098358,
		0.152884, 0.043099, 0.987304,
		-0.578158, -0.806335, 0.124727,
		47.561272, 34.843307, 34.987556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.117672, 37.760384, 31.486330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.727711, 37.849339, 31.490356>,  <38.493732, 37.902710, 31.492773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.727711, 37.849339, 31.490356>,  <39.117672, 37.760384, 31.486330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727711, 37.849339, 31.490356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160123, -0.731935, 0.662293,
		0.154651, 0.644063, 0.749177,
		-0.974907, 0.222384, 0.010065,
		38.435238, 37.916054, 31.493376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005177, 37.690823, 32.186840>,  <39.117672, 37.760384, 31.486330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005177, 37.690823, 32.186840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.667717, 37.666470, 31.973465>,  <38.465240, 37.651859, 31.845440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.667717, 37.666470, 31.973465>,  <39.005177, 37.690823, 32.186840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667717, 37.666470, 31.973465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329936, -0.725027, 0.604548,
		-0.423559, 0.686024, 0.591581,
		-0.843647, -0.060878, -0.533436,
		38.414623, 37.648205, 31.813435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385574, 37.911625, 32.647350>,  <39.005177, 37.690823, 32.186840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385574, 37.911625, 32.647350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.325066, 37.654652, 32.346844>,  <38.288761, 37.500469, 32.166542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.325066, 37.654652, 32.346844>,  <38.385574, 37.911625, 32.647350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325066, 37.654652, 32.346844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281420, -0.700570, 0.655747,
		-0.947586, 0.310616, -0.074818,
		-0.151271, -0.642432, -0.751264,
		38.279686, 37.461922, 32.121464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744164, 37.758438, 32.767113>,  <38.385574, 37.911625, 32.647350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744164, 37.758438, 32.767113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.865208, 37.458374, 32.531929>,  <37.937836, 37.278336, 32.390820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.865208, 37.458374, 32.531929>,  <37.744164, 37.758438, 32.767113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865208, 37.458374, 32.531929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469794, -0.654133, 0.592794,
		-0.829289, 0.096831, -0.550367,
		0.302613, -0.750156, -0.587956,
		37.955990, 37.233326, 32.355541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224091, 37.237572, 32.883438>,  <37.744164, 37.758438, 32.767113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224091, 37.237572, 32.883438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.497009, 37.026993, 32.680531>,  <37.660759, 36.900646, 32.558784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.497009, 37.026993, 32.680531>,  <37.224091, 37.237572, 32.883438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497009, 37.026993, 32.680531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449237, -0.849323, 0.277193,
		-0.576763, 0.038756, -0.815992,
		0.682298, -0.526449, -0.507268,
		37.701698, 36.869057, 32.528351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853344, 36.701836, 32.558315>,  <37.224091, 37.237572, 32.883438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853344, 36.701836, 32.558315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.236332, 36.587372, 32.573074>,  <37.466125, 36.518692, 32.581928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.236332, 36.587372, 32.573074>,  <36.853344, 36.701836, 32.558315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236332, 36.587372, 32.573074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281871, -0.900404, 0.331394,
		-0.061612, -0.327700, -0.942771,
		0.957472, -0.286158, 0.036893,
		37.523575, 36.501526, 32.584141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863232, 35.974739, 32.345539>,  <36.853344, 36.701836, 32.558315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863232, 35.974739, 32.345539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.218563, 36.022034, 32.523026>,  <37.431763, 36.050411, 32.629517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.218563, 36.022034, 32.523026>,  <36.863232, 35.974739, 32.345539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218563, 36.022034, 32.523026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141563, -0.848709, 0.509562,
		0.436838, -0.515474, -0.737197,
		0.888332, 0.118236, 0.443720,
		37.485062, 36.057503, 32.656143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208118, 35.323616, 32.291779>,  <36.863232, 35.974739, 32.345539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208118, 35.323616, 32.291779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.354832, 35.522430, 32.606339>,  <37.442860, 35.641720, 32.795074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.354832, 35.522430, 32.606339>,  <37.208118, 35.323616, 32.291779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354832, 35.522430, 32.606339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196995, -0.784649, 0.587808,
		0.909208, -0.370518, -0.189886,
		0.366787, 0.497034, 0.786400,
		37.464867, 35.671539, 32.842258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683369, 34.823929, 32.651455>,  <37.208118, 35.323616, 32.291779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683369, 34.823929, 32.651455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.601128, 35.116627, 32.911385>,  <37.551781, 35.292248, 33.067341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.601128, 35.116627, 32.911385>,  <37.683369, 34.823929, 32.651455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601128, 35.116627, 32.911385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174230, -0.680773, 0.711471,
		0.963001, 0.033063, 0.267463,
		-0.205605, 0.731748, 0.649825,
		37.539448, 35.336151, 33.106331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053661, 34.723984, 33.186871>,  <37.683369, 34.823929, 32.651455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053661, 34.723984, 33.186871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.752274, 34.954678, 33.313148>,  <37.571442, 35.093094, 33.388916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.752274, 34.954678, 33.313148>,  <38.053661, 34.723984, 33.186871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752274, 34.954678, 33.313148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265570, -0.706203, 0.656315,
		0.601462, 0.410675, 0.685266,
		-0.753469, 0.576735, 0.315691,
		37.526234, 35.127697, 33.407856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166340, 35.025520, 33.881035>,  <38.053661, 34.723984, 33.186871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166340, 35.025520, 33.881035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.768120, 34.990620, 33.866753>,  <37.529190, 34.969681, 33.858181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.768120, 34.990620, 33.866753>,  <38.166340, 35.025520, 33.881035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768120, 34.990620, 33.866753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014776, -0.518506, 0.854946,
		-0.093109, 0.850611, 0.517486,
		-0.995546, -0.087250, -0.035709,
		37.469456, 34.964443, 33.856041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011097, 35.064526, 34.508026>,  <38.166340, 35.025520, 33.881035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011097, 35.064526, 34.508026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.675377, 34.906666, 34.358456>,  <37.473946, 34.811951, 34.268711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.675377, 34.906666, 34.358456>,  <38.011097, 35.064526, 34.508026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675377, 34.906666, 34.358456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077693, -0.593667, 0.800952,
		-0.538086, 0.701292, 0.467604,
		-0.839302, -0.394651, -0.373929,
		37.423588, 34.788269, 34.246277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750355, 34.910297, 35.084091>,  <38.011097, 35.064526, 34.508026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750355, 34.910297, 35.084091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.545235, 34.676788, 34.832302>,  <37.422161, 34.536682, 34.681229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.545235, 34.676788, 34.832302>,  <37.750355, 34.910297, 35.084091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545235, 34.676788, 34.832302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176230, -0.646027, 0.742693,
		-0.840224, 0.491787, 0.228405,
		-0.512803, -0.583776, -0.629475,
		37.391396, 34.501656, 34.643459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481422, 34.531441, 35.529415>,  <37.750355, 34.910297, 35.084091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481422, 34.531441, 35.529415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.386047, 34.312836, 35.208298>,  <37.328823, 34.181671, 35.015629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.386047, 34.312836, 35.208298>,  <37.481422, 34.531441, 35.529415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386047, 34.312836, 35.208298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077044, -0.813381, 0.576606,
		-0.968098, 0.199332, 0.151831,
		-0.238433, -0.546514, -0.802790,
		37.314518, 34.148880, 34.967461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895889, 34.213680, 35.713066>,  <37.481422, 34.531441, 35.529415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895889, 34.213680, 35.713066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.078842, 34.011196, 35.420612>,  <37.188614, 33.889706, 35.245140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.078842, 34.011196, 35.420612>,  <36.895889, 34.213680, 35.713066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078842, 34.011196, 35.420612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171618, -0.856962, 0.485965,
		-0.872555, -0.096794, -0.478831,
		0.457378, -0.506208, -0.731135,
		37.216057, 33.859333, 35.201271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532459, 33.536293, 35.636684>,  <36.895889, 34.213680, 35.713066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532459, 33.536293, 35.636684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.889824, 33.480450, 35.465889>,  <37.104244, 33.446945, 35.363411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.889824, 33.480450, 35.465889>,  <36.532459, 33.536293, 35.636684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889824, 33.480450, 35.465889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050430, -0.913309, 0.404132,
		-0.446393, -0.382591, -0.808924,
		0.893415, -0.139608, -0.426989,
		37.157848, 33.438568, 35.337791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566467, 32.759766, 35.283871>,  <36.532459, 33.536293, 35.636684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566467, 32.759766, 35.283871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.955845, 32.846291, 35.313869>,  <37.189472, 32.898205, 35.331867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.955845, 32.846291, 35.313869>,  <36.566467, 32.759766, 35.283871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955845, 32.846291, 35.313869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178605, -0.922452, 0.342318,
		0.143227, -0.319832, -0.936586,
		0.973440, 0.216308, 0.074996,
		37.247875, 32.911182, 35.336369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980484, 32.262451, 34.886749>,  <36.566467, 32.759766, 35.283871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980484, 32.262451, 34.886749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.214745, 32.413788, 35.173489>,  <37.355301, 32.504589, 35.345531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.214745, 32.413788, 35.173489>,  <36.980484, 32.262451, 34.886749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214745, 32.413788, 35.173489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198203, -0.924379, 0.325944,
		0.785957, -0.048808, -0.616351,
		0.585650, 0.378340, 0.716849,
		37.390438, 32.527290, 35.388542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599026, 31.790279, 34.963570>,  <36.980484, 32.262451, 34.886749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599026, 31.790279, 34.963570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.617889, 31.990664, 35.309242>,  <37.629208, 32.110893, 35.516647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.617889, 31.990664, 35.309242>,  <37.599026, 31.790279, 34.963570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617889, 31.990664, 35.309242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111654, -0.862370, 0.493814,
		0.992628, 0.073202, -0.096602,
		0.047159, 0.500959, 0.864185,
		37.632038, 32.140953, 35.568497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115540, 31.487083, 35.307163>,  <37.599026, 31.790279, 34.963570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115540, 31.487083, 35.307163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.929981, 31.676172, 35.606853>,  <37.818645, 31.789625, 35.786667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.929981, 31.676172, 35.606853>,  <38.115540, 31.487083, 35.307163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929981, 31.676172, 35.606853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203353, -0.766325, 0.609421,
		0.862235, 0.435064, 0.259365,
		-0.463895, 0.472721, 0.749223,
		37.790813, 31.817989, 35.831619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494892, 31.223301, 35.853405>,  <38.115540, 31.487083, 35.307163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494892, 31.223301, 35.853405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.162247, 31.371786, 36.018631>,  <37.962658, 31.460876, 36.117767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.162247, 31.371786, 36.018631>,  <38.494892, 31.223301, 35.853405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162247, 31.371786, 36.018631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009781, -0.733876, 0.679213,
		0.555269, 0.568882, 0.606670,
		-0.831613, 0.371212, 0.413063,
		37.912762, 31.483150, 36.142551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669140, 31.276012, 36.505184>,  <38.494892, 31.223301, 35.853405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669140, 31.276012, 36.505184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.271736, 31.238447, 36.479515>,  <38.033295, 31.215908, 36.464111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.271736, 31.238447, 36.479515>,  <38.669140, 31.276012, 36.505184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271736, 31.238447, 36.479515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035834, -0.793901, 0.606990,
		-0.107953, 0.600751, 0.792114,
		-0.993510, -0.093911, -0.064177,
		37.973682, 31.210274, 36.460262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764526, 31.992579, 36.455360>,  <38.669140, 31.276012, 36.505184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764526, 31.992579, 36.455360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.108540, 31.843985, 36.595272>,  <39.314949, 31.754827, 36.679218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.108540, 31.843985, 36.595272>,  <38.764526, 31.992579, 36.455360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108540, 31.843985, 36.595272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499601, 0.473831, -0.725178,
		0.103657, 0.798425, 0.593104,
		0.860031, -0.371485, 0.349778,
		39.366550, 31.732538, 36.700207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283119, 32.493690, 36.668850>,  <38.764526, 31.992579, 36.455360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.283119, 32.493690, 36.668850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.539452, 32.190800, 36.618343>,  <39.693253, 32.009068, 36.588039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.539452, 32.190800, 36.618343>,  <39.283119, 32.493690, 36.668850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539452, 32.190800, 36.618343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625710, 0.610504, -0.485564,
		0.444767, 0.232160, 0.865034,
		0.640835, -0.757223, -0.126267,
		39.731701, 31.963633, 36.580463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922077, 32.800362, 36.705013>,  <39.283119, 32.493690, 36.668850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922077, 32.800362, 36.705013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.003166, 32.448891, 36.532124>,  <40.051819, 32.238007, 36.428391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.003166, 32.448891, 36.532124>,  <39.922077, 32.800362, 36.705013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003166, 32.448891, 36.532124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757396, 0.420476, -0.499551,
		0.620688, -0.226096, 0.750751,
		0.202726, -0.878681, -0.432228,
		40.063984, 32.185287, 36.402454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663521, 32.730106, 36.776001>,  <39.922077, 32.800362, 36.705013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663521, 32.730106, 36.776001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.509007, 32.525486, 36.468990>,  <40.416298, 32.402714, 36.284782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.509007, 32.525486, 36.468990>,  <40.663521, 32.730106, 36.776001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509007, 32.525486, 36.468990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609616, 0.482878, -0.628647,
		0.692206, -0.710736, 0.125319,
		-0.386289, -0.511550, -0.767527,
		40.393120, 32.372021, 36.238731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.257530, 32.570488, 36.538876>,  <40.663521, 32.730106, 36.776001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.257530, 32.570488, 36.538876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.985592, 32.506538, 36.252586>,  <40.822430, 32.468170, 36.080814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.985592, 32.506538, 36.252586>,  <41.257530, 32.570488, 36.538876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.985592, 32.506538, 36.252586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542710, 0.546715, -0.637627,
		0.493232, -0.821915, -0.284918,
		-0.679844, -0.159870, -0.715719,
		40.781639, 32.458576, 36.037872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625278, 32.481014, 35.805706>,  <41.257530, 32.570488, 36.538876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.625278, 32.481014, 35.805706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.242821, 32.548862, 35.710186>,  <41.013348, 32.589573, 35.652874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.242821, 32.548862, 35.710186>,  <41.625278, 32.481014, 35.805706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.242821, 32.548862, 35.710186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292571, 0.513818, -0.806470,
		-0.014094, -0.840964, -0.540908,
		-0.956140, 0.169620, -0.238800,
		40.955978, 32.599747, 35.638546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.562923, 32.411209, 35.132130>,  <41.625278, 32.481014, 35.805706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.562923, 32.411209, 35.132130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.290443, 32.677242, 35.254528>,  <41.126953, 32.836861, 35.327969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.290443, 32.677242, 35.254528>,  <41.562923, 32.411209, 35.132130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.290443, 32.677242, 35.254528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203283, 0.573372, -0.793675,
		-0.703307, -0.478449, -0.525782,
		-0.681202, 0.665079, 0.305996,
		41.086082, 32.876766, 35.346329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.506329, 32.621845, 34.607285>,  <41.562923, 32.411209, 35.132130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.506329, 32.621845, 34.607285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.307869, 32.888050, 34.830326>,  <41.188793, 33.047771, 34.964149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.307869, 32.888050, 34.830326>,  <41.506329, 32.621845, 34.607285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.307869, 32.888050, 34.830326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023971, 0.631484, -0.775018,
		-0.867904, -0.397894, -0.297360,
		-0.496153, 0.665513, 0.557605,
		41.159023, 33.087704, 34.997608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939022, 32.890160, 34.259186>,  <41.506329, 32.621845, 34.607285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939022, 32.890160, 34.259186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.000607, 33.183769, 34.523762>,  <41.037556, 33.359936, 34.682507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.000607, 33.183769, 34.523762>,  <40.939022, 32.890160, 34.259186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.000607, 33.183769, 34.523762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050487, 0.674391, -0.736647,
		-0.986786, 0.080021, 0.140888,
		0.153961, 0.734026, 0.661439,
		41.046795, 33.403976, 34.722195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466698, 33.466728, 34.021873>,  <40.939022, 32.890160, 34.259186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466698, 33.466728, 34.021873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.756618, 33.643166, 34.233566>,  <40.930573, 33.749027, 34.360584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.756618, 33.643166, 34.233566>,  <40.466698, 33.466728, 34.021873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.756618, 33.643166, 34.233566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043782, 0.796110, -0.603567,
		-0.687560, 0.414298, 0.596337,
		0.724806, 0.441098, 0.529235,
		40.974060, 33.775494, 34.392338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.241589, 34.164707, 33.977417>,  <40.466698, 33.466728, 34.021873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.241589, 34.164707, 33.977417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.606567, 34.190132, 34.139107>,  <40.825554, 34.205387, 34.236118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.606567, 34.190132, 34.139107>,  <40.241589, 34.164707, 33.977417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.606567, 34.190132, 34.139107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162160, 0.850809, -0.499828,
		-0.375685, 0.521617, 0.766014,
		0.912450, 0.063562, 0.404222,
		40.880302, 34.209202, 34.260372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306168, 34.723148, 34.409161>,  <40.241589, 34.164707, 33.977417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306168, 34.723148, 34.409161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.680527, 34.661835, 34.282291>,  <40.905144, 34.625046, 34.206169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.680527, 34.661835, 34.282291>,  <40.306168, 34.723148, 34.409161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.680527, 34.661835, 34.282291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029838, 0.862640, -0.504938,
		0.350999, 0.482035, 0.802771,
		0.935900, -0.153280, -0.317169,
		40.961296, 34.615852, 34.187141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668068, 35.383686, 34.404243>,  <40.306168, 34.723148, 34.409161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668068, 35.383686, 34.404243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.887360, 35.172085, 34.145138>,  <41.018936, 35.045124, 33.989674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.887360, 35.172085, 34.145138>,  <40.668068, 35.383686, 34.404243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.887360, 35.172085, 34.145138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092751, 0.808218, -0.581533,
		0.831169, 0.258734, 0.492155,
		0.548230, -0.529000, -0.647767,
		41.051830, 35.013386, 33.950806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183884, 35.882233, 34.204533>,  <40.668068, 35.383686, 34.404243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183884, 35.882233, 34.204533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.198128, 35.601532, 33.919922>,  <41.206673, 35.433113, 33.749153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.198128, 35.601532, 33.919922>,  <41.183884, 35.882233, 34.204533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.198128, 35.601532, 33.919922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057208, 0.712246, -0.699595,
		0.997727, -0.015794, 0.065507,
		0.035608, -0.701752, -0.711530,
		41.208809, 35.391006, 33.706463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642544, 36.288532, 33.766792>,  <41.183884, 35.882233, 34.204533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.642544, 36.288532, 33.766792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.454220, 35.982021, 33.591904>,  <41.341225, 35.798115, 33.486969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.454220, 35.982021, 33.591904>,  <41.642544, 36.288532, 33.766792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.454220, 35.982021, 33.591904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015920, 0.488123, -0.872630,
		0.882091, -0.417803, -0.217614,
		-0.470809, -0.766275, -0.437220,
		41.312977, 35.752140, 33.460739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.995708, 36.196815, 33.093632>,  <41.642544, 36.288532, 33.766792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.995708, 36.196815, 33.093632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.629330, 36.042835, 33.048271>,  <41.409504, 35.950447, 33.021053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.629330, 36.042835, 33.048271>,  <41.995708, 36.196815, 33.093632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.629330, 36.042835, 33.048271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153996, 0.598116, -0.786475,
		0.370579, -0.702904, -0.607122,
		-0.915945, -0.384945, -0.113405,
		41.354546, 35.927353, 33.014248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.935200, 35.927765, 32.382587>,  <41.995708, 36.196815, 33.093632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.935200, 35.927765, 32.382587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.570663, 36.024029, 32.516182>,  <41.351944, 36.081787, 32.596340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.570663, 36.024029, 32.516182>,  <41.935200, 35.927765, 32.382587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.570663, 36.024029, 32.516182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165991, 0.527607, -0.833113,
		-0.376712, -0.814685, -0.440880,
		-0.911337, 0.240662, 0.333986,
		41.297264, 36.096226, 32.616379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.602367, 36.119293, 31.731846>,  <41.935200, 35.927765, 32.382587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.602367, 36.119293, 31.731846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.323406, 36.220135, 32.000195>,  <41.156029, 36.280640, 32.161205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.323406, 36.220135, 32.000195>,  <41.602367, 36.119293, 31.731846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.323406, 36.220135, 32.000195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310524, 0.737361, -0.599895,
		-0.645911, -0.626691, -0.435955,
		-0.697405, 0.252104, 0.670872,
		41.114185, 36.295765, 32.201458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.009644, 36.167339, 31.328037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.937103, 36.393810, 31.649672>,  <40.893578, 36.529694, 31.842653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.937103, 36.393810, 31.649672>,  <41.009644, 36.167339, 31.328037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.937103, 36.393810, 31.649672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217334, 0.774354, -0.594257,
		-0.959103, -0.282525, -0.017381,
		-0.181351, 0.566176, 0.804087,
		40.882698, 36.563663, 31.890898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293835, 36.415451, 31.273319>,  <41.009644, 36.167339, 31.328037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293835, 36.415451, 31.273319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.489037, 36.653900, 31.528341>,  <40.606159, 36.796970, 31.681355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.489037, 36.653900, 31.528341>,  <40.293835, 36.415451, 31.273319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489037, 36.653900, 31.528341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335430, 0.802436, -0.493542,
		-0.805813, 0.026997, 0.591555,
		0.488009, 0.596127, 0.637557,
		40.635441, 36.832737, 31.719608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814911, 37.008251, 31.348103>,  <40.293835, 36.415451, 31.273319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814911, 37.008251, 31.348103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.164837, 37.134975, 31.494711>,  <40.374790, 37.211010, 31.582676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.164837, 37.134975, 31.494711>,  <39.814911, 37.008251, 31.348103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.164837, 37.134975, 31.494711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197525, 0.924055, -0.327272,
		-0.442369, 0.213904, 0.870951,
		0.874811, 0.316809, 0.366522,
		40.427280, 37.230019, 31.604668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670330, 37.537735, 31.946865>,  <39.814911, 37.008251, 31.348103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670330, 37.537735, 31.946865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.035152, 37.606342, 31.797878>,  <40.254047, 37.647507, 31.708487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.035152, 37.606342, 31.797878>,  <39.670330, 37.537735, 31.946865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035152, 37.606342, 31.797878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158499, 0.985182, 0.065540,
		0.378187, -0.000741, 0.925729,
		0.912060, 0.171514, -0.372465,
		40.308769, 37.657795, 31.686138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758495, 38.179829, 32.167198>,  <39.670330, 37.537735, 31.946865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758495, 38.179829, 32.167198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.043652, 38.143902, 31.888996>,  <40.214745, 38.122345, 31.722075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.043652, 38.143902, 31.888996>,  <39.758495, 38.179829, 32.167198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043652, 38.143902, 31.888996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016112, 0.989404, -0.144291,
		0.701094, 0.114070, 0.703885,
		0.712886, -0.089821, -0.695504,
		40.257519, 38.116955, 31.680346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296021, 38.690533, 32.367157>,  <39.758495, 38.179829, 32.167198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.296021, 38.690533, 32.367157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.350578, 38.598873, 31.981640>,  <40.383312, 38.543877, 31.750330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.350578, 38.598873, 31.981640>,  <40.296021, 38.690533, 32.367157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350578, 38.598873, 31.981640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197611, 0.959622, -0.200191,
		0.970746, -0.163151, 0.176165,
		0.136391, -0.229146, -0.963789,
		40.391495, 38.530128, 31.692503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.996494, 38.807644, 32.140263>,  <40.296021, 38.690533, 32.367157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.996494, 38.807644, 32.140263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.770374, 38.827950, 31.810932>,  <40.634705, 38.840134, 31.613335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.770374, 38.827950, 31.810932>,  <40.996494, 38.807644, 32.140263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.770374, 38.827950, 31.810932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431210, 0.869057, -0.242483,
		0.703205, -0.492100, -0.513167,
		-0.565297, 0.050767, -0.823324,
		40.600784, 38.843178, 31.563934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.417877, 39.145550, 31.660378>,  <40.996494, 38.807644, 32.140263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.417877, 39.145550, 31.660378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.097263, 39.149551, 31.421232>,  <40.904896, 39.151951, 31.277744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.097263, 39.149551, 31.421232>,  <41.417877, 39.145550, 31.660378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.097263, 39.149551, 31.421232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234928, 0.924726, -0.299485,
		0.549862, -0.380503, -0.743551,
		-0.801536, 0.010006, -0.597863,
		40.856804, 39.152554, 31.241873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.743771, 39.353485, 31.064692>,  <41.417877, 39.145550, 31.660378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.743771, 39.353485, 31.064692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.359715, 39.458370, 31.025967>,  <41.129280, 39.521301, 31.002731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.359715, 39.458370, 31.025967>,  <41.743771, 39.353485, 31.064692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.359715, 39.458370, 31.025967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262978, 0.730069, -0.630747,
		-0.094707, -0.631067, -0.769925,
		-0.960142, 0.262210, -0.096814,
		41.071671, 39.537033, 30.996923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.577808, 39.279556, 30.333105>,  <41.743771, 39.353485, 31.064692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.577808, 39.279556, 30.333105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.344311, 39.547512, 30.516623>,  <41.204212, 39.708286, 30.626734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.344311, 39.547512, 30.516623>,  <41.577808, 39.279556, 30.333105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.344311, 39.547512, 30.516623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135361, 0.637447, -0.758511,
		-0.800575, -0.380673, -0.462782,
		-0.583744, 0.669888, 0.458796,
		41.169189, 39.748478, 30.654261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.372726, 39.663612, 29.780758>,  <41.577808, 39.279556, 30.333105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.372726, 39.663612, 29.780758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.266800, 39.892639, 30.091124>,  <41.203243, 40.030056, 30.277342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.266800, 39.892639, 30.091124>,  <41.372726, 39.663612, 29.780758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.266800, 39.892639, 30.091124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123898, 0.818174, -0.561463,
		-0.956305, -0.052552, -0.287608,
		-0.264820, 0.572564, 0.775913,
		41.187355, 40.064407, 30.323898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.766579, 40.026245, 29.615459>,  <41.372726, 39.663612, 29.780758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.766579, 40.026245, 29.615459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.966698, 40.225796, 29.898535>,  <41.086769, 40.345528, 30.068380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.966698, 40.225796, 29.898535>,  <40.766579, 40.026245, 29.615459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.966698, 40.225796, 29.898535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016560, 0.822692, -0.568246,
		-0.865695, 0.272573, 0.419853,
		0.500298, 0.498880, 0.707687,
		41.116787, 40.375462, 30.110840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.449196, 40.631313, 29.559164>,  <40.766579, 40.026245, 29.615459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.449196, 40.631313, 29.559164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.803040, 40.715809, 29.725462>,  <41.015347, 40.766506, 29.825241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.803040, 40.715809, 29.725462>,  <40.449196, 40.631313, 29.559164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.803040, 40.715809, 29.725462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056966, 0.835898, -0.545922,
		-0.462836, 0.506612, 0.727412,
		0.884612, 0.211235, 0.415742,
		41.068424, 40.779179, 29.850185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455704, 41.269325, 29.867130>,  <40.449196, 40.631313, 29.559164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.455704, 41.269325, 29.867130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.843082, 41.199787, 29.795696>,  <41.075508, 41.158062, 29.752836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.843082, 41.199787, 29.795696>,  <40.455704, 41.269325, 29.867130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.843082, 41.199787, 29.795696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049212, 0.835828, -0.546781,
		0.244325, 0.520738, 0.818008,
		0.968444, -0.173848, -0.178586,
		41.133617, 41.147633, 29.742121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.679405, 41.950241, 29.952341>,  <40.455704, 41.269325, 29.867130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.679405, 41.950241, 29.952341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.978130, 41.747246, 29.780426>,  <41.157368, 41.625446, 29.677277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.978130, 41.747246, 29.780426>,  <40.679405, 41.950241, 29.952341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.978130, 41.747246, 29.780426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240895, 0.808816, -0.536457,
		0.619866, 0.297102, 0.726290,
		0.746817, -0.507491, -0.429787,
		41.202175, 41.594997, 29.651489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354794, 42.257069, 30.183960>,  <40.679405, 41.950241, 29.952341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.354794, 42.257069, 30.183960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.418221, 42.086788, 29.827616>,  <41.456276, 41.984619, 29.613810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.418221, 42.086788, 29.827616>,  <41.354794, 42.257069, 30.183960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.418221, 42.086788, 29.827616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570004, 0.776201, -0.269456,
		0.806196, -0.465068, 0.365733,
		0.158568, -0.425703, -0.890861,
		41.465790, 41.959076, 29.560358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.823460, 42.624947, 30.006907>,  <41.354794, 42.257069, 30.183960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.823460, 42.624947, 30.006907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.755493, 42.443581, 29.656927>,  <41.714714, 42.334759, 29.446939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.755493, 42.443581, 29.656927>,  <41.823460, 42.624947, 30.006907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.755493, 42.443581, 29.656927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147124, 0.866239, -0.477478,
		0.974413, -0.209859, -0.080483,
		-0.169920, -0.453420, -0.874950,
		41.704517, 42.307556, 29.394442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.290054, 42.957321, 29.535759>,  <41.823460, 42.624947, 30.006907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.290054, 42.957321, 29.535759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.064899, 42.767422, 29.265125>,  <41.929806, 42.653481, 29.102745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.064899, 42.767422, 29.265125>,  <42.290054, 42.957321, 29.535759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.064899, 42.767422, 29.265125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073879, 0.786407, -0.613275,
		0.823225, -0.395191, -0.407585,
		-0.562888, -0.474751, -0.676586,
		41.896034, 42.624996, 29.062149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.660244, 42.996895, 28.814699>,  <42.290054, 42.957321, 29.535759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.660244, 42.996895, 28.814699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.273773, 42.948997, 28.723335>,  <42.041893, 42.920261, 28.668516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.273773, 42.948997, 28.723335>,  <42.660244, 42.996895, 28.814699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.273773, 42.948997, 28.723335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018994, 0.850234, -0.526062,
		0.257194, -0.512606, -0.819199,
		-0.966173, -0.119740, -0.228411,
		41.983921, 42.913074, 28.654812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.640087, 43.030449, 28.116848>,  <42.660244, 42.996895, 28.814699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.640087, 43.030449, 28.116848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.281757, 43.118114, 28.271488>,  <42.066757, 43.170712, 28.364271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.281757, 43.118114, 28.271488>,  <42.640087, 43.030449, 28.116848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.281757, 43.118114, 28.271488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004317, 0.865604, -0.500710,
		-0.444379, -0.450219, -0.774487,
		-0.895829, 0.219162, 0.386599,
		42.013008, 43.183865, 28.387468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.107460, 43.142750, 27.587959>,  <42.640087, 43.030449, 28.116848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.107460, 43.142750, 27.587959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.963509, 43.329903, 27.910839>,  <41.877136, 43.442192, 28.104568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.963509, 43.329903, 27.910839>,  <42.107460, 43.142750, 27.587959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.963509, 43.329903, 27.910839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044504, 0.872793, -0.486057,
		-0.931936, -0.138999, -0.334924,
		-0.359881, 0.467879, 0.807202,
		41.855545, 43.470268, 28.153000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398998, 43.435947, 27.335829>,  <42.107460, 43.142750, 27.587959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.398998, 43.435947, 27.335829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.585953, 43.626266, 27.633867>,  <41.698124, 43.740456, 27.812691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.585953, 43.626266, 27.633867>,  <41.398998, 43.435947, 27.335829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.585953, 43.626266, 27.633867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026220, 0.849910, -0.526276,
		-0.883665, 0.226437, 0.409711,
		0.467385, 0.475794, 0.745098,
		41.726170, 43.769005, 27.857397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.136543, 44.117992, 27.397406>,  <41.398998, 43.435947, 27.335829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.136543, 44.117992, 27.397406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.507618, 44.127029, 27.546478>,  <41.730263, 44.132454, 27.635921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.507618, 44.127029, 27.546478>,  <41.136543, 44.117992, 27.397406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.507618, 44.127029, 27.546478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217317, 0.778987, -0.588177,
		-0.303606, 0.626633, 0.717743,
		0.927683, 0.022596, 0.372683,
		41.785923, 44.133808, 27.658283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785912, 44.846256, 27.628809>,  <41.136543, 44.117992, 27.397406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785912, 44.846256, 27.628809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.398331, 44.944527, 27.639910>,  <40.165783, 45.003490, 27.646570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.398331, 44.944527, 27.639910>,  <40.785912, 44.846256, 27.628809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398331, 44.944527, 27.639910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207073, -0.867748, 0.451812,
		0.135081, 0.432038, 0.891681,
		-0.968955, 0.245675, 0.027753,
		40.107643, 45.018230, 27.648235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516380, 44.546207, 28.133764>,  <40.785912, 44.846256, 27.628809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.516380, 44.546207, 28.133764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.167072, 44.633835, 27.959679>,  <39.957489, 44.686409, 27.855227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.167072, 44.633835, 27.959679>,  <40.516380, 44.546207, 28.133764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167072, 44.633835, 27.959679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421048, -0.788793, 0.447799,
		-0.245198, 0.574296, 0.781065,
		-0.873268, 0.219066, -0.435216,
		39.905090, 44.699554, 27.829113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927750, 44.675442, 28.588367>,  <40.516380, 44.546207, 28.133764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927750, 44.675442, 28.588367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.773323, 44.547344, 28.242329>,  <39.680668, 44.470486, 28.034706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.773323, 44.547344, 28.242329>,  <39.927750, 44.675442, 28.588367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.773323, 44.547344, 28.242329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488846, -0.724270, 0.486274,
		-0.782292, 0.610634, 0.123065,
		-0.386067, -0.320248, -0.865097,
		39.657501, 44.451271, 27.982800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190338, 44.519062, 28.656822>,  <39.927750, 44.675442, 28.588367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190338, 44.519062, 28.656822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.269501, 44.300358, 28.331396>,  <39.316998, 44.169136, 28.136141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.269501, 44.300358, 28.331396>,  <39.190338, 44.519062, 28.656822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269501, 44.300358, 28.331396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590617, -0.728916, 0.346196,
		-0.782306, 0.411990, -0.467184,
		0.197909, -0.546758, -0.813565,
		39.328873, 44.136330, 28.087326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496746, 44.384590, 28.478659>,  <39.190338, 44.519062, 28.656822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496746, 44.384590, 28.478659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.749687, 44.115742, 28.324574>,  <38.901451, 43.954433, 28.232122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.749687, 44.115742, 28.324574>,  <38.496746, 44.384590, 28.478659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749687, 44.115742, 28.324574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586624, -0.740219, 0.328557,
		-0.505971, 0.018212, -0.862358,
		0.632350, -0.672120, -0.385213,
		38.939392, 43.914104, 28.209009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044262, 43.818157, 28.420364>,  <38.496746, 44.384590, 28.478659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044262, 43.818157, 28.420364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.403351, 43.647636, 28.375887>,  <38.618805, 43.545322, 28.349201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.403351, 43.647636, 28.375887>,  <38.044262, 43.818157, 28.420364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403351, 43.647636, 28.375887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344386, -0.836427, 0.426366,
		-0.274766, -0.344463, -0.897691,
		0.897720, -0.426303, -0.111194,
		38.672668, 43.519745, 28.342529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920372, 43.143208, 28.273344>,  <38.044262, 43.818157, 28.420364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920372, 43.143208, 28.273344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.309982, 43.122746, 28.361584>,  <38.543747, 43.110470, 28.414528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.309982, 43.122746, 28.361584>,  <37.920372, 43.143208, 28.273344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309982, 43.122746, 28.361584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155805, -0.858308, 0.488910,
		0.164333, -0.510579, -0.843981,
		0.974023, -0.051153, 0.220599,
		38.602188, 43.107399, 28.427763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195091, 42.580986, 27.938692>,  <37.920372, 43.143208, 28.273344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195091, 42.580986, 27.938692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.431896, 42.650143, 28.253557>,  <38.573978, 42.691635, 28.442476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.431896, 42.650143, 28.253557>,  <38.195091, 42.580986, 27.938692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431896, 42.650143, 28.253557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119823, -0.946981, 0.298109,
		0.796969, -0.270805, -0.539912,
		0.592016, 0.172890, 0.787164,
		38.609501, 42.702011, 28.489706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686539, 42.028912, 28.054996>,  <38.195091, 42.580986, 27.938692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686539, 42.028912, 28.054996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.652000, 42.219360, 28.405048>,  <38.631279, 42.333630, 28.615080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.652000, 42.219360, 28.405048>,  <38.686539, 42.028912, 28.054996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652000, 42.219360, 28.405048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020749, -0.879079, 0.476225,
		0.996049, 0.022962, 0.085782,
		-0.086344, 0.476123, 0.875129,
		38.626099, 42.362198, 28.667587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091251, 41.655228, 28.472750>,  <38.686539, 42.028912, 28.054996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091251, 41.655228, 28.472750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.885525, 41.876507, 28.734879>,  <38.762089, 42.009274, 28.892155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.885525, 41.876507, 28.734879>,  <39.091251, 41.655228, 28.472750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885525, 41.876507, 28.734879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013362, -0.769212, 0.638854,
		0.857494, 0.319819, 0.403013,
		-0.514320, 0.553199, 0.655321,
		38.731228, 42.042465, 28.931475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370735, 41.711636, 29.029518>,  <39.091251, 41.655228, 28.472750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370735, 41.711636, 29.029518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.989197, 41.778656, 29.129206>,  <38.760273, 41.818867, 29.189018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.989197, 41.778656, 29.129206>,  <39.370735, 41.711636, 29.029518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989197, 41.778656, 29.129206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036075, -0.759952, 0.648977,
		0.298131, 0.628013, 0.718831,
		-0.953843, 0.167548, 0.249221,
		38.703045, 41.828922, 29.203972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338581, 41.635773, 29.744417>,  <39.370735, 41.711636, 29.029518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.338581, 41.635773, 29.744417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.961094, 41.599754, 29.617115>,  <38.734600, 41.578144, 29.540733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.961094, 41.599754, 29.617115>,  <39.338581, 41.635773, 29.744417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961094, 41.599754, 29.617115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123103, -0.797470, 0.590666,
		-0.306986, 0.596601, 0.741503,
		-0.943719, -0.090045, -0.318256,
		38.677979, 41.572742, 29.521639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977543, 41.484459, 30.329733>,  <39.338581, 41.635773, 29.744417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977543, 41.484459, 30.329733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.741093, 41.345249, 30.038681>,  <38.599220, 41.261723, 29.864050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.741093, 41.345249, 30.038681>,  <38.977543, 41.484459, 30.329733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741093, 41.345249, 30.038681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322338, -0.725014, 0.608648,
		-0.739367, 0.594332, 0.316395,
		-0.591130, -0.348028, -0.727628,
		38.563755, 41.240841, 29.820393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485619, 41.341095, 30.689581>,  <38.977543, 41.484459, 30.329733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485619, 41.341095, 30.689581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.434345, 41.152470, 30.340595>,  <38.403584, 41.039295, 30.131205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.434345, 41.152470, 30.340595>,  <38.485619, 41.341095, 30.689581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434345, 41.152470, 30.340595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260505, -0.832821, 0.488412,
		-0.956926, 0.289885, -0.016095,
		-0.128179, -0.471567, -0.872464,
		38.395893, 41.010998, 30.078856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801769, 40.979164, 30.812275>,  <38.485619, 41.341095, 30.689581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801769, 40.979164, 30.812275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.960941, 40.812382, 30.485399>,  <38.056442, 40.712311, 30.289274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.960941, 40.812382, 30.485399>,  <37.801769, 40.979164, 30.812275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960941, 40.812382, 30.485399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250034, -0.906321, 0.340683,
		-0.882687, 0.068757, -0.464905,
		0.397929, -0.416959, -0.817189,
		38.080318, 40.687294, 30.240242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354233, 40.526600, 30.612051>,  <37.801769, 40.979164, 30.812275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354233, 40.526600, 30.612051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.711739, 40.404976, 30.480156>,  <37.926243, 40.332001, 30.401018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.711739, 40.404976, 30.480156>,  <37.354233, 40.526600, 30.612051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711739, 40.404976, 30.480156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225114, -0.939945, 0.256569,
		-0.387948, -0.155084, -0.908540,
		0.893767, -0.304061, -0.329738,
		37.979870, 40.313759, 30.381235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239285, 39.838177, 30.496569>,  <37.354233, 40.526600, 30.612051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239285, 39.838177, 30.496569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.638958, 39.839466, 30.512695>,  <37.878761, 39.840240, 30.522371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.638958, 39.839466, 30.512695>,  <37.239285, 39.838177, 30.496569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638958, 39.839466, 30.512695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003390, -0.986649, 0.162824,
		0.040302, -0.162828, -0.985831,
		0.999182, 0.003220, 0.040316,
		37.938713, 39.840431, 30.524790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464771, 39.226673, 30.147619>,  <37.239285, 39.838177, 30.496569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464771, 39.226673, 30.147619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.795959, 39.323650, 30.349878>,  <37.994675, 39.381836, 30.471233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.795959, 39.323650, 30.349878>,  <37.464771, 39.226673, 30.147619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795959, 39.323650, 30.349878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151285, -0.964849, 0.214894,
		0.539974, -0.101429, -0.835548,
		0.827974, 0.242443, 0.505649,
		38.044353, 39.396385, 30.501574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031872, 38.712032, 30.003185>,  <37.464771, 39.226673, 30.147619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031872, 38.712032, 30.003185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.127209, 38.853161, 30.365116>,  <38.184410, 38.937840, 30.582273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.127209, 38.853161, 30.365116>,  <38.031872, 38.712032, 30.003185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127209, 38.853161, 30.365116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213815, -0.927878, 0.305492,
		0.947352, 0.120654, -0.296591,
		0.238342, 0.352825, 0.904825,
		38.198711, 38.959007, 30.636564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671127, 38.345787, 30.197689>,  <38.031872, 38.712032, 30.003185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671127, 38.345787, 30.197689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.488396, 38.487583, 30.524038>,  <38.378757, 38.572662, 30.719847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.488396, 38.487583, 30.524038>,  <38.671127, 38.345787, 30.197689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488396, 38.487583, 30.524038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039986, -0.908058, 0.416932,
		0.888656, 0.223090, 0.400652,
		-0.456828, 0.354489, 0.815871,
		38.351349, 38.593929, 30.768799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945831, 37.944908, 30.695087>,  <38.671127, 38.345787, 30.197689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945831, 37.944908, 30.695087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.648624, 38.119164, 30.898317>,  <38.470299, 38.223717, 31.020254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.648624, 38.119164, 30.898317>,  <38.945831, 37.944908, 30.695087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648624, 38.119164, 30.898317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160494, -0.852976, 0.496663,
		0.649741, 0.287488, 0.703695,
		-0.743019, 0.435641, 0.508074,
		38.425720, 38.249855, 31.050739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.144024, 34.304085, 33.883190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.756413, 34.369408, 33.957275>,  <41.523846, 34.408604, 34.001728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.756413, 34.369408, 33.957275>,  <42.144024, 34.304085, 33.883190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.756413, 34.369408, 33.957275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055456, -0.586982, 0.807698,
		0.240624, 0.792957, 0.559749,
		-0.969033, 0.163310, 0.185217,
		41.465702, 34.418400, 34.012840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.149956, 34.331276, 34.610950>,  <42.144024, 34.304085, 33.883190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.149956, 34.331276, 34.610950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.763851, 34.293037, 34.513687>,  <41.532188, 34.270096, 34.455330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.763851, 34.293037, 34.513687>,  <42.149956, 34.331276, 34.610950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.763851, 34.293037, 34.513687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124852, -0.648763, 0.750679,
		-0.229514, 0.754962, 0.614293,
		-0.965264, -0.095596, -0.243158,
		41.474274, 34.264359, 34.440739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778896, 34.348751, 35.221802>,  <42.149956, 34.331276, 34.610950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.778896, 34.348751, 35.221802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.521263, 34.174694, 34.970146>,  <41.366684, 34.070259, 34.819153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.521263, 34.174694, 34.970146>,  <41.778896, 34.348751, 35.221802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.521263, 34.174694, 34.970146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382392, -0.529163, 0.757471,
		-0.662522, 0.728450, 0.174429,
		-0.644081, -0.435141, -0.629136,
		41.328037, 34.044151, 34.781406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.124218, 34.419369, 35.528824>,  <41.778896, 34.348751, 35.221802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.124218, 34.419369, 35.528824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.132725, 34.110329, 35.275009>,  <41.137829, 33.924904, 35.122723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.132725, 34.110329, 35.275009>,  <41.124218, 34.419369, 35.528824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.132725, 34.110329, 35.275009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523499, -0.549320, 0.651304,
		-0.851761, 0.318328, -0.416138,
		0.021264, -0.772603, -0.634533,
		41.139103, 33.878548, 35.084648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555416, 34.028225, 35.755707>,  <41.124218, 34.419369, 35.528824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.555416, 34.028225, 35.755707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.731182, 33.751663, 35.526318>,  <40.836643, 33.585728, 35.388683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.731182, 33.751663, 35.526318>,  <40.555416, 34.028225, 35.755707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.731182, 33.751663, 35.526318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390106, -0.721949, 0.571495,
		-0.809154, -0.027408, -0.586957,
		0.439416, -0.691403, -0.573476,
		40.863007, 33.544243, 35.354275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055420, 33.496006, 35.740345>,  <40.555416, 34.028225, 35.755707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055420, 33.496006, 35.740345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.384365, 33.306271, 35.614662>,  <40.581734, 33.192429, 35.539253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.384365, 33.306271, 35.614662>,  <40.055420, 33.496006, 35.740345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384365, 33.306271, 35.614662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313251, -0.838466, 0.445924,
		-0.474968, -0.268287, -0.838109,
		0.822362, -0.474338, -0.314204,
		40.631073, 33.163971, 35.520401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749439, 32.943214, 35.297245>,  <40.055420, 33.496006, 35.740345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.749439, 32.943214, 35.297245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.117046, 32.827106, 35.403946>,  <40.337608, 32.757442, 35.467964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.117046, 32.827106, 35.403946>,  <39.749439, 32.943214, 35.297245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117046, 32.827106, 35.403946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394177, -0.686708, 0.610783,
		0.005890, -0.666466, -0.745512,
		0.919015, -0.290267, 0.266750,
		40.392750, 32.740025, 35.483971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825661, 32.202244, 35.153702>,  <39.749439, 32.943214, 35.297245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825661, 32.202244, 35.153702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.109386, 32.291180, 35.421265>,  <40.279621, 32.344543, 35.581802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.109386, 32.291180, 35.421265>,  <39.825661, 32.202244, 35.153702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.109386, 32.291180, 35.421265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361516, -0.699898, 0.615994,
		0.605132, -0.678753, -0.416064,
		0.709311, 0.222344, 0.668911,
		40.322178, 32.357883, 35.621937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112629, 31.544382, 35.261925>,  <39.825661, 32.202244, 35.153702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112629, 31.544382, 35.261925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.205303, 31.785837, 35.567066>,  <40.260906, 31.930710, 35.750149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.205303, 31.785837, 35.567066>,  <40.112629, 31.544382, 35.261925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205303, 31.785837, 35.567066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400666, -0.655372, 0.640277,
		0.886447, -0.453992, 0.090017,
		0.231686, 0.603638, 0.762852,
		40.274811, 31.966928, 35.795921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330975, 31.049082, 35.827328>,  <40.112629, 31.544382, 35.261925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.330975, 31.049082, 35.827328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.258163, 31.400902, 36.003174>,  <40.214478, 31.611994, 36.108681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.258163, 31.400902, 36.003174>,  <40.330975, 31.049082, 35.827328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.258163, 31.400902, 36.003174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512890, -0.466372, 0.720723,
		0.838934, -0.094281, 0.536004,
		-0.182026, 0.879550, 0.439611,
		40.203556, 31.664766, 36.135056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439545, 30.855301, 36.513798>,  <40.330975, 31.049082, 35.827328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.439545, 30.855301, 36.513798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.250450, 31.207777, 36.515728>,  <40.136993, 31.419264, 36.516888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.250450, 31.207777, 36.515728>,  <40.439545, 30.855301, 36.513798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250450, 31.207777, 36.515728> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564425, -0.306994, 0.766277,
		0.676718, 0.359522, 0.642493,
		-0.472735, 0.881192, 0.004825,
		40.108631, 31.472134, 36.517174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448734, 31.202787, 37.200153>,  <40.439545, 30.855301, 36.513798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.448734, 31.202787, 37.200153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.118427, 31.343782, 37.024036>,  <39.920242, 31.428379, 36.918365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.118427, 31.343782, 37.024036>,  <40.448734, 31.202787, 37.200153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118427, 31.343782, 37.024036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529594, -0.216082, 0.820268,
		0.193997, 0.910527, 0.365110,
		-0.825770, 0.352489, -0.440290,
		39.870697, 31.449530, 36.891949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056274, 30.846895, 36.945774>,  <40.448734, 31.202787, 37.200153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056274, 30.846895, 36.945774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.172710, 31.112637, 36.670414>,  <41.242573, 31.272081, 36.505199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.172710, 31.112637, 36.670414>,  <41.056274, 30.846895, 36.945774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.172710, 31.112637, 36.670414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443742, 0.731238, 0.518057,
		0.847560, 0.154669, 0.507662,
		0.291094, 0.664355, -0.688401,
		41.260040, 31.311943, 36.463894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.338112, 31.339584, 37.266239>,  <41.056274, 30.846895, 36.945774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.338112, 31.339584, 37.266239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.208370, 31.516777, 36.931919>,  <41.130524, 31.623093, 36.731327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.208370, 31.516777, 36.931919>,  <41.338112, 31.339584, 37.266239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208370, 31.516777, 36.931919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573382, 0.610674, 0.546178,
		0.752347, 0.656389, 0.055920,
		-0.324356, 0.442979, -0.835800,
		41.111065, 31.649672, 36.681179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.376133, 31.641296, 37.862980>,  <41.338112, 31.339584, 37.266239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.376133, 31.641296, 37.862980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.433479, 31.247591, 37.821651>,  <41.467888, 31.011368, 37.796856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.433479, 31.247591, 37.821651>,  <41.376133, 31.641296, 37.862980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433479, 31.247591, 37.821651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824840, 0.061141, 0.562051,
		-0.546888, -0.165802, 0.820624,
		0.143363, -0.984262, -0.103322,
		41.476490, 30.952312, 37.790653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410480, 32.081390, 38.490185>,  <41.376133, 31.641296, 37.862980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.410480, 32.081390, 38.490185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.570549, 32.404972, 38.662441>,  <41.666592, 32.599121, 38.765797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.570549, 32.404972, 38.662441>,  <41.410480, 32.081390, 38.490185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.570549, 32.404972, 38.662441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657889, 0.580720, -0.479528,
		-0.638000, -0.091423, 0.764590,
		0.400173, 0.808954, 0.430645,
		41.690601, 32.647659, 38.791634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.874973, 32.516872, 38.501179>,  <41.410480, 32.081390, 38.490185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.874973, 32.516872, 38.501179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.175705, 32.761276, 38.600315>,  <41.356144, 32.907917, 38.659798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.175705, 32.761276, 38.600315>,  <40.874973, 32.516872, 38.501179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.175705, 32.761276, 38.600315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491394, 0.769843, -0.407276,
		-0.439649, 0.184413, 0.879034,
		0.751825, 0.611011, 0.247841,
		41.401253, 32.944580, 38.674667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.525948, 33.200901, 38.842285>,  <40.874973, 32.516872, 38.501179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.525948, 33.200901, 38.842285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.877361, 33.298912, 38.678265>,  <41.088211, 33.357719, 38.579853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.877361, 33.298912, 38.678265>,  <40.525948, 33.200901, 38.842285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877361, 33.298912, 38.678265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416139, 0.814058, -0.405139,
		0.234537, 0.526567, 0.817141,
		0.878533, 0.245025, -0.410052,
		41.140923, 33.372421, 38.555248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446690, 33.863789, 38.887558>,  <40.525948, 33.200901, 38.842285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446690, 33.863789, 38.887558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.760033, 33.802620, 38.646572>,  <40.948036, 33.765919, 38.501980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.760033, 33.802620, 38.646572>,  <40.446690, 33.863789, 38.887558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.760033, 33.802620, 38.646572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290706, 0.766586, -0.572570,
		0.549404, 0.623667, 0.556054,
		0.783356, -0.152924, -0.602469,
		40.995041, 33.756744, 38.465832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845280, 34.479641, 38.981544>,  <40.446690, 33.863789, 38.887558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845280, 34.479641, 38.981544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.915485, 34.311855, 38.625286>,  <40.957607, 34.211185, 38.411533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.915485, 34.311855, 38.625286>,  <40.845280, 34.479641, 38.981544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.915485, 34.311855, 38.625286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118552, 0.889098, -0.442097,
		0.977312, 0.183182, 0.106322,
		0.175515, -0.419462, -0.890644,
		40.968140, 34.186016, 38.358093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.318577, 34.911251, 38.703575>,  <40.845280, 34.479641, 38.981544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.318577, 34.911251, 38.703575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.134266, 34.706196, 38.413780>,  <41.023678, 34.583160, 38.239902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.134266, 34.706196, 38.413780>,  <41.318577, 34.911251, 38.703575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.134266, 34.706196, 38.413780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264323, 0.858533, -0.439380,
		0.847236, -0.010964, -0.531104,
		-0.460787, -0.512641, -0.724482,
		40.996033, 34.552402, 38.196434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443508, 35.288944, 38.210213>,  <41.318577, 34.911251, 38.703575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.443508, 35.288944, 38.210213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.177608, 35.058323, 38.020184>,  <41.018066, 34.919949, 37.906166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.177608, 35.058323, 38.020184>,  <41.443508, 35.288944, 38.210213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.177608, 35.058323, 38.020184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147224, 0.724548, -0.673316,
		0.732433, -0.377630, -0.566514,
		-0.664731, -0.576564, -0.475087,
		40.978184, 34.885357, 37.877663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.601261, 35.385185, 37.464996>,  <41.443508, 35.288944, 38.210213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.601261, 35.385185, 37.464996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.239487, 35.214874, 37.454327>,  <41.022423, 35.112686, 37.447926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.239487, 35.214874, 37.454327>,  <41.601261, 35.385185, 37.464996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.239487, 35.214874, 37.454327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189250, 0.456470, -0.869379,
		0.382340, -0.781247, -0.493426,
		-0.904433, -0.425779, -0.026676,
		40.968155, 35.087139, 37.446323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.454205, 35.113346, 36.753925>,  <41.601261, 35.385185, 37.464996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.454205, 35.113346, 36.753925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.135735, 35.223095, 36.969643>,  <40.944653, 35.288944, 37.099072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.135735, 35.223095, 36.969643>,  <41.454205, 35.113346, 36.753925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.135735, 35.223095, 36.969643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136172, 0.787171, -0.601514,
		-0.589550, -0.552344, -0.589361,
		-0.796170, 0.274368, 0.539291,
		40.896885, 35.305405, 37.131432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.978409, 35.212807, 36.307697>,  <41.454205, 35.113346, 36.753925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.978409, 35.212807, 36.307697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.855942, 35.416645, 36.629337>,  <40.782463, 35.538948, 36.822319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.855942, 35.416645, 36.629337>,  <40.978409, 35.212807, 36.307697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.855942, 35.416645, 36.629337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151001, 0.807969, -0.569548,
		-0.939927, -0.295794, -0.170421,
		-0.306164, 0.509599, 0.804097,
		40.764091, 35.569527, 36.870567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398823, 35.612427, 36.077957>,  <40.978409, 35.212807, 36.307697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398823, 35.612427, 36.077957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.500790, 35.774937, 36.428947>,  <40.561970, 35.872444, 36.639542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.500790, 35.774937, 36.428947>,  <40.398823, 35.612427, 36.077957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.500790, 35.774937, 36.428947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098412, 0.913640, -0.394432,
		-0.961941, 0.014195, 0.272888,
		0.254920, 0.406276, 0.877471,
		40.577267, 35.896820, 36.692188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894020, 36.102707, 36.204117>,  <40.398823, 35.612427, 36.077957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894020, 36.102707, 36.204117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.205574, 36.234261, 36.417725>,  <40.392506, 36.313194, 36.545891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.205574, 36.234261, 36.417725>,  <39.894020, 36.102707, 36.204117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205574, 36.234261, 36.417725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137100, 0.920166, -0.366740,
		-0.612004, 0.212432, 0.761790,
		0.778880, 0.328888, 0.534021,
		40.439240, 36.332928, 36.577930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691151, 36.795319, 36.362686>,  <39.894020, 36.102707, 36.204117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691151, 36.795319, 36.362686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.087570, 36.788929, 36.415699>,  <40.325424, 36.785095, 36.447506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.087570, 36.788929, 36.415699>,  <39.691151, 36.795319, 36.362686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087570, 36.788929, 36.415699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058898, 0.943265, -0.326776,
		-0.119792, 0.331657, 0.935764,
		0.991050, -0.015970, 0.132529,
		40.384884, 36.784138, 36.455460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467613, 36.856640, 37.078335>,  <39.691151, 36.795319, 36.362686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467613, 36.856640, 37.078335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.226482, 37.087719, 37.298470>,  <39.081802, 37.226364, 37.430550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.226482, 37.087719, 37.298470>,  <39.467613, 36.856640, 37.078335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226482, 37.087719, 37.298470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270194, -0.796808, 0.540456,
		0.750730, 0.177104, 0.636426,
		-0.602826, 0.577695, 0.550335,
		39.045635, 37.261028, 37.463570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524994, 36.620419, 37.743347>,  <39.467613, 36.856640, 37.078335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524994, 36.620419, 37.743347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.191017, 36.837807, 37.778019>,  <38.990631, 36.968239, 37.798820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.191017, 36.837807, 37.778019>,  <39.524994, 36.620419, 37.743347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191017, 36.837807, 37.778019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380343, -0.683663, 0.622852,
		0.397759, 0.487078, 0.777524,
		-0.834942, 0.543470, 0.086677,
		38.940536, 37.000847, 37.804024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402264, 36.598347, 38.392639>,  <39.524994, 36.620419, 37.743347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402264, 36.598347, 38.392639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.054905, 36.697895, 38.221081>,  <38.846489, 36.757626, 38.118145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.054905, 36.697895, 38.221081>,  <39.402264, 36.598347, 38.392639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054905, 36.697895, 38.221081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472137, -0.679375, 0.561727,
		-0.151584, 0.690299, 0.707467,
		-0.868395, 0.248872, -0.428898,
		38.794388, 36.772556, 38.092411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902988, 36.610210, 38.974648>,  <39.402264, 36.598347, 38.392639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902988, 36.610210, 38.974648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.688183, 36.564857, 38.640278>,  <38.559299, 36.537647, 38.439655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.688183, 36.564857, 38.640278>,  <38.902988, 36.610210, 38.974648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688183, 36.564857, 38.640278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534019, -0.721400, 0.440914,
		-0.653025, 0.683174, 0.326852,
		-0.537012, -0.113382, -0.835920,
		38.527081, 36.530842, 38.389503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242119, 36.611614, 39.219803>,  <38.902988, 36.610210, 38.974648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242119, 36.611614, 39.219803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.217640, 36.418102, 38.870583>,  <38.202953, 36.301994, 38.661049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.217640, 36.418102, 38.870583>,  <38.242119, 36.611614, 39.219803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217640, 36.418102, 38.870583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593701, -0.685488, 0.421458,
		-0.802356, 0.544121, -0.245269,
		-0.061195, -0.483776, -0.873050,
		38.199280, 36.272968, 38.608669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566444, 36.233349, 39.328846>,  <38.242119, 36.611614, 39.219803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566444, 36.233349, 39.328846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.730606, 36.076748, 38.999413>,  <37.829102, 35.982788, 38.801750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.730606, 36.076748, 38.999413>,  <37.566444, 36.233349, 39.328846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730606, 36.076748, 38.999413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499129, -0.852291, 0.156428,
		-0.763178, 0.346879, -0.545191,
		0.410400, -0.391504, -0.823588,
		37.853725, 35.959297, 38.752335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030399, 35.888187, 38.964470>,  <37.566444, 36.233349, 39.328846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030399, 35.888187, 38.964470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.379925, 35.727959, 38.854202>,  <37.589642, 35.631821, 38.788040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.379925, 35.727959, 38.854202>,  <37.030399, 35.888187, 38.964470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379925, 35.727959, 38.854202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346356, -0.910634, 0.225353,
		-0.341305, -0.101437, -0.934463,
		0.873813, -0.400571, -0.275670,
		37.642067, 35.607788, 38.771500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861591, 35.384945, 38.519337>,  <37.030399, 35.888187, 38.964470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861591, 35.384945, 38.519337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.240482, 35.287514, 38.602692>,  <37.467819, 35.229057, 38.652706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.240482, 35.287514, 38.602692>,  <36.861591, 35.384945, 38.519337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240482, 35.287514, 38.602692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258228, -0.964996, 0.045842,
		0.189927, -0.097234, -0.976971,
		0.947231, -0.243574, 0.208388,
		37.524651, 35.214443, 38.665207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102844, 34.857109, 37.973206>,  <36.861591, 35.384945, 38.519337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102844, 34.857109, 37.973206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.293903, 34.828285, 38.323441>,  <37.408539, 34.810993, 38.533585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.293903, 34.828285, 38.323441>,  <37.102844, 34.857109, 37.973206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293903, 34.828285, 38.323441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314053, -0.944783, 0.093569,
		0.820503, -0.319675, -0.473902,
		0.477646, -0.072057, 0.875592,
		37.437199, 34.806667, 38.586117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133972, 34.118500, 38.030571>,  <37.102844, 34.857109, 37.973206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133972, 34.118500, 38.030571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.261406, 34.239643, 38.389854>,  <37.337868, 34.312328, 38.605423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.261406, 34.239643, 38.389854>,  <37.133972, 34.118500, 38.030571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261406, 34.239643, 38.389854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288315, -0.871725, 0.396194,
		0.902981, -0.385190, -0.190403,
		0.318589, 0.302859, 0.898208,
		37.356983, 34.330502, 38.659317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658466, 33.647621, 38.275074>,  <37.133972, 34.118500, 38.030571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658466, 33.647621, 38.275074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.494946, 33.836548, 38.587433>,  <37.396832, 33.949905, 38.774849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.494946, 33.836548, 38.587433>,  <37.658466, 33.647621, 38.275074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494946, 33.836548, 38.587433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313707, -0.876246, 0.365760,
		0.857010, -0.095448, 0.506382,
		-0.408804, 0.472316, 0.780895,
		37.372303, 33.978241, 38.821701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890686, 33.311794, 38.760670>,  <37.658466, 33.647621, 38.275074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890686, 33.311794, 38.760670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.572857, 33.477623, 38.938110>,  <37.382160, 33.577122, 39.044575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.572857, 33.477623, 38.938110>,  <37.890686, 33.311794, 38.760670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572857, 33.477623, 38.938110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232469, -0.882659, 0.408498,
		0.560905, 0.221457, 0.797711,
		-0.794572, 0.414572, 0.443606,
		37.334484, 33.601994, 39.071194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.523544, 40.418739, 35.957596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138145, 40.411358, 35.850765>,  <39.906906, 40.406929, 35.786667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138145, 40.411358, 35.850765>,  <40.523544, 40.418739, 35.957596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138145, 40.411358, 35.850765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215639, -0.537708, 0.815089,
		-0.158651, 0.842929, 0.514101,
		-0.963498, -0.018455, -0.267077,
		39.849094, 40.405823, 35.770641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200405, 40.455822, 36.604351>,  <40.523544, 40.418739, 35.957596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.200405, 40.455822, 36.604351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930717, 40.328728, 36.337677>,  <39.768906, 40.252472, 36.177673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930717, 40.328728, 36.337677>,  <40.200405, 40.455822, 36.604351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.930717, 40.328728, 36.337677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303056, -0.704188, 0.642087,
		-0.673485, 0.634952, 0.378488,
		-0.674222, -0.317733, -0.666687,
		39.728451, 40.233406, 36.137672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764587, 40.178528, 37.074833>,  <40.200405, 40.455822, 36.604351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764587, 40.178528, 37.074833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626541, 40.041344, 36.725372>,  <39.543713, 39.959034, 36.515697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626541, 40.041344, 36.725372>,  <39.764587, 40.178528, 37.074833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626541, 40.041344, 36.725372> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252843, -0.862457, 0.438450,
		-0.903860, 0.372215, 0.210934,
		-0.345119, -0.342964, -0.873652,
		39.523006, 39.938454, 36.463276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190609, 39.991455, 37.190643>,  <39.764587, 40.178528, 37.074833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190609, 39.991455, 37.190643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281143, 39.772266, 36.868526>,  <39.335464, 39.640755, 36.675255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281143, 39.772266, 36.868526>,  <39.190609, 39.991455, 37.190643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281143, 39.772266, 36.868526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330901, -0.820838, 0.465542,
		-0.916120, 0.161103, -0.367110,
		0.226337, -0.547970, -0.805296,
		39.349045, 39.607876, 36.626938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538406, 39.698364, 37.024975>,  <39.190609, 39.991455, 37.190643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538406, 39.698364, 37.024975> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833138, 39.483982, 36.860130>,  <39.009975, 39.355350, 36.761223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833138, 39.483982, 36.860130>,  <38.538406, 39.698364, 37.024975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833138, 39.483982, 36.860130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348185, -0.823327, 0.448218,
		-0.579531, -0.186766, -0.793261,
		0.736825, -0.535958, -0.412114,
		39.054184, 39.323196, 36.736496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217758, 39.052292, 36.857239>,  <38.538406, 39.698364, 37.024975>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217758, 39.052292, 36.857239> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605080, 38.953255, 36.870369>,  <38.837475, 38.893833, 36.878246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605080, 38.953255, 36.870369>,  <38.217758, 39.052292, 36.857239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605080, 38.953255, 36.870369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239237, -0.881715, 0.406625,
		-0.071734, -0.401591, -0.913005,
		0.968308, -0.247593, 0.032826,
		38.895573, 38.878975, 36.880219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243755, 38.404171, 36.633842>,  <38.217758, 39.052292, 36.857239>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243755, 38.404171, 36.633842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597912, 38.428944, 36.818127>,  <38.810406, 38.443806, 36.928696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597912, 38.428944, 36.818127>,  <38.243755, 38.404171, 36.633842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597912, 38.428944, 36.818127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079387, -0.956382, 0.281125,
		0.458026, -0.285479, -0.841852,
		0.885387, 0.061931, 0.460711,
		38.863529, 38.447521, 36.956341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570385, 37.781357, 36.502396>,  <38.243755, 38.404171, 36.633842>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570385, 37.781357, 36.502396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769485, 37.913952, 36.822987>,  <38.888947, 37.993507, 37.015343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769485, 37.913952, 36.822987>,  <38.570385, 37.781357, 36.502396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769485, 37.913952, 36.822987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067533, -0.936090, 0.345217,
		0.864689, -0.117705, -0.488322,
		0.497747, 0.331483, 0.801478,
		38.918808, 38.013397, 37.063431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079765, 37.305847, 36.564144>,  <38.570385, 37.781357, 36.502396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079765, 37.305847, 36.564144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033421, 37.481689, 36.920418>,  <39.005611, 37.587196, 37.134182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033421, 37.481689, 36.920418>,  <39.079765, 37.305847, 36.564144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033421, 37.481689, 36.920418> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009288, -0.897167, 0.441595,
		0.993222, 0.042893, 0.108033,
		-0.115865, 0.439605, 0.890687,
		38.998661, 37.613571, 37.187622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863247, 37.403915, 36.692383>,  <39.079765, 37.305847, 36.564144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863247, 37.403915, 36.692383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204575, 37.272160, 36.530720>,  <40.409370, 37.193108, 36.433720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204575, 37.272160, 36.530720>,  <39.863247, 37.403915, 36.692383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.204575, 37.272160, 36.530720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133967, 0.887655, -0.440591,
		0.503881, 0.321822, 0.801583,
		0.853321, -0.329391, -0.404160,
		40.460571, 37.173344, 36.409473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325382, 37.928761, 36.783470>,  <39.863247, 37.403915, 36.692383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325382, 37.928761, 36.783470> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504837, 37.733425, 36.484070>,  <40.612511, 37.616222, 36.304432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504837, 37.733425, 36.484070>,  <40.325382, 37.928761, 36.783470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.504837, 37.733425, 36.484070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348966, 0.866749, -0.356325,
		0.822768, -0.101340, 0.559270,
		0.448637, -0.488340, -0.748498,
		40.639427, 37.586922, 36.259521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.902004, 38.231491, 36.743881>,  <40.325382, 37.928761, 36.783470>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.902004, 38.231491, 36.743881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.900780, 38.034443, 36.395786>,  <40.900043, 37.916214, 36.186928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.900780, 38.034443, 36.395786>,  <40.902004, 38.231491, 36.743881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900780, 38.034443, 36.395786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359208, 0.811619, -0.460700,
		0.933253, -0.314007, 0.174469,
		-0.003061, -0.492620, -0.870239,
		40.899860, 37.886658, 36.134716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.551872, 38.290371, 36.353760>,  <40.902004, 38.231491, 36.743881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.551872, 38.290371, 36.353760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290836, 38.219437, 36.059093>,  <41.134212, 38.176876, 35.882294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290836, 38.219437, 36.059093>,  <41.551872, 38.290371, 36.353760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.290836, 38.219437, 36.059093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337303, 0.802592, -0.492009,
		0.678492, -0.569561, -0.463949,
		-0.652591, -0.177333, -0.736666,
		41.095058, 38.166237, 35.838093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.898205, 38.422585, 35.823631>,  <41.551872, 38.290371, 36.353760>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.898205, 38.422585, 35.823631> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.532707, 38.407120, 35.661854>,  <41.313408, 38.397842, 35.564789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.532707, 38.407120, 35.661854>,  <41.898205, 38.422585, 35.823631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.532707, 38.407120, 35.661854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206444, 0.813197, -0.544144,
		0.349928, -0.580703, -0.735074,
		-0.913746, -0.038660, -0.404443,
		41.258583, 38.395523, 35.540520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.002254, 38.276653, 35.105801>,  <41.898205, 38.422585, 35.823631>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.002254, 38.276653, 35.105801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.655457, 38.470749, 35.151173>,  <41.447376, 38.587204, 35.178398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.655457, 38.470749, 35.151173>,  <42.002254, 38.276653, 35.105801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.655457, 38.470749, 35.151173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277634, 0.659389, -0.698659,
		-0.413812, -0.574240, -0.706405,
		-0.866994, 0.485236, 0.113434,
		41.395359, 38.616318, 35.185204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.735729, 38.514984, 34.426521>,  <42.002254, 38.276653, 35.105801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.735729, 38.514984, 34.426521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.577465, 38.743725, 34.713974>,  <41.482506, 38.880970, 34.886448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.577465, 38.743725, 34.713974>,  <41.735729, 38.514984, 34.426521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.577465, 38.743725, 34.713974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189852, 0.816516, -0.545213,
		-0.898559, -0.079286, -0.431631,
		-0.395662, 0.571852, 0.718635,
		41.458767, 38.915279, 34.929565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.342838, 38.856056, 34.018188>,  <41.735729, 38.514984, 34.426521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.342838, 38.856056, 34.018188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.351654, 39.106899, 34.329636>,  <41.356945, 39.257404, 34.516502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.351654, 39.106899, 34.329636>,  <41.342838, 38.856056, 34.018188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.351654, 39.106899, 34.329636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280782, 0.743578, -0.606839,
		-0.959518, 0.231998, -0.159692,
		0.022042, 0.627111, 0.778618,
		41.358265, 39.295033, 34.563221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.016857, 39.502834, 33.845772>,  <41.342838, 38.856056, 34.018188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.016857, 39.502834, 33.845772> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240154, 39.608456, 34.160385>,  <41.374134, 39.671829, 34.349155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240154, 39.608456, 34.160385>,  <41.016857, 39.502834, 33.845772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240154, 39.608456, 34.160385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270704, 0.838154, -0.473515,
		-0.784271, 0.477256, 0.396416,
		0.558245, 0.264053, 0.786536,
		41.407627, 39.687672, 34.396347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936535, 40.235374, 34.076359>,  <41.016857, 39.502834, 33.845772>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.936535, 40.235374, 34.076359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301411, 40.122078, 34.194801>,  <41.520336, 40.054100, 34.265865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301411, 40.122078, 34.194801>,  <40.936535, 40.235374, 34.076359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.301411, 40.122078, 34.194801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396679, 0.791531, -0.464892,
		-0.102703, 0.541531, 0.834384,
		0.912194, -0.283237, 0.296107,
		41.575069, 40.037106, 34.283634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275166, 40.807976, 34.091022>,  <40.936535, 40.235374, 34.076359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.275166, 40.807976, 34.091022> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.571644, 40.545719, 34.148659>,  <41.749531, 40.388367, 34.183243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.571644, 40.545719, 34.148659>,  <41.275166, 40.807976, 34.091022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.571644, 40.545719, 34.148659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646053, 0.638416, -0.418377,
		0.182312, 0.403193, 0.896771,
		0.741200, -0.655637, 0.144093,
		41.794003, 40.349030, 34.191887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.825039, 41.169262, 34.203190>,  <41.275166, 40.807976, 34.091022>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.825039, 41.169262, 34.203190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.983910, 40.821259, 34.086342>,  <42.079231, 40.612457, 34.016235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.983910, 40.821259, 34.086342>,  <41.825039, 41.169262, 34.203190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.983910, 40.821259, 34.086342> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726469, 0.492549, -0.479206,
		0.560795, -0.021882, 0.827666,
		0.397180, -0.870009, -0.292116,
		42.103065, 40.560257, 33.998707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.536366, 41.171810, 34.433510>,  <41.825039, 41.169262, 34.203190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.536366, 41.171810, 34.433510> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.514324, 40.902325, 34.138733>,  <42.501099, 40.740635, 33.961868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.514324, 40.902325, 34.138733>,  <42.536366, 41.171810, 34.433510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.514324, 40.902325, 34.138733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741213, 0.466919, -0.482277,
		0.669005, -0.572802, 0.473635,
		-0.055100, -0.673710, -0.736939,
		42.497795, 40.700211, 33.917652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.244770, 41.059639, 34.257519>,  <42.536366, 41.171810, 34.433510>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.244770, 41.059639, 34.257519> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.010254, 40.946815, 33.953754>,  <42.869545, 40.879124, 33.771496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.010254, 40.946815, 33.953754>,  <43.244770, 41.059639, 34.257519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.010254, 40.946815, 33.953754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603981, 0.472544, -0.641801,
		0.539881, -0.834953, -0.106691,
		-0.586290, -0.282057, -0.759413,
		42.834366, 40.862198, 33.725929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.018990, 40.884373, 31.592520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.297256, 40.899948, 31.879442>,  <35.464218, 40.909294, 32.051598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.297256, 40.899948, 31.879442>,  <35.018990, 40.884373, 31.592520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297256, 40.899948, 31.879442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134067, -0.973949, 0.182891,
		0.705742, -0.223399, -0.672325,
		0.695668, 0.038937, 0.717307,
		35.505959, 40.911629, 32.094635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348732, 40.283886, 31.599428>,  <35.018990, 40.884373, 31.592520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348732, 40.283886, 31.599428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.457775, 40.391869, 31.968819>,  <35.523201, 40.456657, 32.190453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.457775, 40.391869, 31.968819>,  <35.348732, 40.283886, 31.599428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457775, 40.391869, 31.968819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102129, -0.946288, 0.306772,
		0.956689, -0.177942, -0.230396,
		0.272609, 0.269955, 0.923476,
		35.539558, 40.472855, 32.245861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861332, 39.731735, 31.936735>,  <35.348732, 40.283886, 31.599428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861332, 39.731735, 31.936735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.714539, 39.929596, 32.251858>,  <35.626461, 40.048313, 32.440933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.714539, 39.929596, 32.251858>,  <35.861332, 39.731735, 31.936735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714539, 39.929596, 32.251858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240988, -0.868541, 0.433084,
		0.898469, -0.030917, 0.437947,
		-0.366986, 0.494653, 0.787808,
		35.604443, 40.077991, 32.488201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154785, 39.481258, 32.451744>,  <35.861332, 39.731735, 31.936735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154785, 39.481258, 32.451744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.814045, 39.633877, 32.595284>,  <35.609600, 39.725449, 32.681408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.814045, 39.633877, 32.595284>,  <36.154785, 39.481258, 32.451744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814045, 39.633877, 32.595284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230133, -0.888080, 0.397935,
		0.470519, 0.256398, 0.844317,
		-0.851852, 0.381541, 0.358853,
		35.558491, 39.748341, 32.702938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184498, 39.547638, 33.193272>,  <36.154785, 39.481258, 32.451744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184498, 39.547638, 33.193272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.802536, 39.510406, 33.080490>,  <35.573360, 39.488068, 33.012821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.802536, 39.510406, 33.080490>,  <36.184498, 39.547638, 33.193272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802536, 39.510406, 33.080490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067790, -0.856181, 0.512210,
		-0.289081, 0.508223, 0.811259,
		-0.954901, -0.093075, -0.281958,
		35.516068, 39.482483, 32.995903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911621, 39.327599, 33.763573>,  <36.184498, 39.547638, 33.193272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911621, 39.327599, 33.763573> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.611412, 39.260181, 33.507977>,  <35.431286, 39.219730, 33.354618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.611412, 39.260181, 33.507977>,  <35.911621, 39.327599, 33.763573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611412, 39.260181, 33.507977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216221, -0.851081, 0.478445,
		-0.624470, 0.497248, 0.602315,
		-0.750524, -0.168542, -0.638989,
		35.386253, 39.209618, 33.316280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365047, 39.092098, 34.159122>,  <35.911621, 39.327599, 33.763573>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365047, 39.092098, 34.159122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.235947, 38.970783, 33.800491>,  <35.158485, 38.897995, 33.585312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.235947, 38.970783, 33.800491>,  <35.365047, 39.092098, 34.159122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235947, 38.970783, 33.800491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341625, -0.846085, 0.409184,
		-0.882681, 0.438356, 0.169463,
		-0.322748, -0.303287, -0.896577,
		35.139122, 38.879799, 33.531517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639847, 38.858513, 34.260071>,  <35.365047, 39.092098, 34.159122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639847, 38.858513, 34.260071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.782860, 38.692078, 33.925636>,  <34.868668, 38.592216, 33.724976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.782860, 38.692078, 33.925636>,  <34.639847, 38.858513, 34.260071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782860, 38.692078, 33.925636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208031, -0.908252, 0.363046,
		-0.910446, 0.044142, -0.411266,
		0.357508, -0.416089, -0.836097,
		34.890118, 38.567249, 33.674809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123871, 38.383728, 34.009472>,  <34.639847, 38.858513, 34.260071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123871, 38.383728, 34.009472> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.447048, 38.234097, 33.827358>,  <34.640957, 38.144318, 33.718090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.447048, 38.234097, 33.827358>,  <34.123871, 38.383728, 34.009472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447048, 38.234097, 33.827358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272679, -0.922293, 0.273900,
		-0.522366, -0.097150, -0.847169,
		0.807948, -0.374081, -0.455284,
		34.689434, 38.121872, 33.690773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921307, 37.698948, 33.781143>,  <34.123871, 38.383728, 34.009472>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921307, 37.698948, 33.781143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.321041, 37.690067, 33.769531>,  <34.560883, 37.684738, 33.762566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.321041, 37.690067, 33.769531>,  <33.921307, 37.698948, 33.781143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321041, 37.690067, 33.769531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013975, -0.966106, 0.257768,
		-0.033765, -0.257190, -0.965771,
		0.999332, -0.022200, -0.029026,
		34.620842, 37.683407, 33.760822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085674, 37.114281, 33.438271>,  <33.921307, 37.698948, 33.781143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085674, 37.114281, 33.438271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.402565, 37.217709, 33.659367>,  <34.592697, 37.279766, 33.792023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.402565, 37.217709, 33.659367>,  <34.085674, 37.114281, 33.438271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402565, 37.217709, 33.659367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000699, -0.905405, 0.424548,
		0.610230, -0.336723, -0.717103,
		0.792224, 0.258571, 0.552741,
		34.640232, 37.295280, 33.825188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495777, 36.659107, 33.295532>,  <34.085674, 37.114281, 33.438271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495777, 36.659107, 33.295532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.606983, 36.807922, 33.649776>,  <34.673706, 36.897209, 33.862324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.606983, 36.807922, 33.649776>,  <34.495777, 36.659107, 33.295532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606983, 36.807922, 33.649776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017453, -0.923756, 0.382583,
		0.960418, -0.090907, -0.263310,
		0.278014, 0.372036, 0.885606,
		34.690388, 36.919533, 33.915459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169987, 36.364880, 33.361893>,  <34.495777, 36.659107, 33.295532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169987, 36.364880, 33.361893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.128654, 36.459789, 33.748264>,  <35.103855, 36.516735, 33.980087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.128654, 36.459789, 33.748264>,  <35.169987, 36.364880, 33.361893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128654, 36.459789, 33.748264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416092, -0.871760, 0.258654,
		0.903433, 0.428642, -0.008653,
		-0.103327, 0.237277, 0.965931,
		35.097656, 36.530972, 34.038044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791550, 36.246948, 33.761303>,  <35.169987, 36.364880, 33.361893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791550, 36.246948, 33.761303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.479477, 36.226181, 34.010658>,  <35.292233, 36.213718, 34.160271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.479477, 36.226181, 34.010658>,  <35.791550, 36.246948, 33.761303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479477, 36.226181, 34.010658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345093, -0.866911, 0.359687,
		0.521747, 0.495751, 0.694270,
		-0.780186, -0.051922, 0.623389,
		35.245422, 36.210606, 34.197674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492752, 35.838562, 33.759251>,  <35.791550, 36.246948, 33.761303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492752, 35.838562, 33.759251> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.834934, 35.646156, 33.682503>,  <37.040245, 35.530712, 33.636452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.834934, 35.646156, 33.682503>,  <36.492752, 35.838562, 33.759251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834934, 35.646156, 33.682503> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359868, 0.818583, -0.447680,
		0.372404, 0.313923, 0.873366,
		0.855459, -0.481014, -0.191873,
		37.091572, 35.501854, 33.624943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126247, 36.265835, 33.934891>,  <36.492752, 35.838562, 33.759251>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126247, 36.265835, 33.934891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.273521, 35.992630, 33.682560>,  <37.361885, 35.828709, 33.531162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.273521, 35.992630, 33.682560>,  <37.126247, 36.265835, 33.934891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273521, 35.992630, 33.682560> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500492, 0.717392, -0.484620,
		0.783548, -0.137293, 0.605973,
		0.368185, -0.683008, -0.630825,
		37.383976, 35.787727, 33.493313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888813, 36.392708, 33.816036>,  <37.126247, 36.265835, 33.934891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888813, 36.392708, 33.816036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.759480, 36.159733, 33.517715>,  <37.681877, 36.019951, 33.338722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.759480, 36.159733, 33.517715>,  <37.888813, 36.392708, 33.816036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759480, 36.159733, 33.517715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503120, 0.561701, -0.656781,
		0.801451, -0.587591, 0.111415,
		-0.323337, -0.582433, -0.745805,
		37.662479, 35.985004, 33.293976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554352, 36.186951, 33.362209>,  <37.888813, 36.392708, 33.816036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554352, 36.186951, 33.362209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.221424, 36.149532, 33.143673>,  <38.021667, 36.127079, 33.012550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.221424, 36.149532, 33.143673>,  <38.554352, 36.186951, 33.362209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221424, 36.149532, 33.143673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324666, 0.716605, -0.617308,
		0.449261, -0.691177, -0.566073,
		-0.832320, -0.093548, -0.546344,
		37.971729, 36.121468, 32.979771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776020, 36.077415, 32.650082>,  <38.554352, 36.186951, 33.362209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776020, 36.077415, 32.650082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.400311, 36.214672, 32.651680>,  <38.174885, 36.297028, 32.652637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.400311, 36.214672, 32.651680>,  <38.776020, 36.077415, 32.650082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400311, 36.214672, 32.651680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229934, 0.637941, -0.734956,
		-0.254742, -0.689408, -0.678103,
		-0.939275, 0.343143, 0.003992,
		38.118526, 36.317616, 32.652878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623993, 36.174137, 31.951118>,  <38.776020, 36.077415, 32.650082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623993, 36.174137, 31.951118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.364632, 36.407318, 32.146973>,  <38.209015, 36.547226, 32.264484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.364632, 36.407318, 32.146973>,  <38.623993, 36.174137, 31.951118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364632, 36.407318, 32.146973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079153, 0.691294, -0.718225,
		-0.757173, -0.426942, -0.494378,
		-0.648401, 0.582952, 0.489635,
		38.170113, 36.582203, 32.293861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144585, 36.394924, 31.403418>,  <38.623993, 36.174137, 31.951118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144585, 36.394924, 31.403418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.118923, 36.653648, 31.707396>,  <38.103527, 36.808884, 31.889782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.118923, 36.653648, 31.707396>,  <38.144585, 36.394924, 31.403418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118923, 36.653648, 31.707396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044712, 0.762614, -0.645307,
		-0.996938, -0.007422, -0.077847,
		-0.064157, 0.646811, 0.759947,
		38.099674, 36.847691, 31.935379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852718, 36.933029, 31.085966>,  <38.144585, 36.394924, 31.403418>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852718, 36.933029, 31.085966> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.970947, 37.099243, 31.430052>,  <38.041885, 37.198971, 31.636503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.970947, 37.099243, 31.430052>,  <37.852718, 36.933029, 31.085966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970947, 37.099243, 31.430052> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098130, 0.882476, -0.460007,
		-0.950268, 0.220377, 0.220057,
		0.295570, 0.415535, 0.860214,
		38.059620, 37.223904, 31.688116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364090, 37.416412, 31.140808>,  <37.852718, 36.933029, 31.085966>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364090, 37.416412, 31.140808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.667881, 37.543747, 31.367737>,  <37.850155, 37.620148, 31.503893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.667881, 37.543747, 31.367737>,  <37.364090, 37.416412, 31.140808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667881, 37.543747, 31.367737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054495, 0.900156, -0.432144,
		-0.648243, 0.297289, 0.700999,
		0.759480, 0.318336, 0.567320,
		37.895725, 37.639248, 31.537933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116089, 38.038170, 31.339132>,  <37.364090, 37.416412, 31.140808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116089, 38.038170, 31.339132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.508263, 38.015545, 31.414555>,  <37.743565, 38.001968, 31.459808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.508263, 38.015545, 31.414555>,  <37.116089, 38.038170, 31.339132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508263, 38.015545, 31.414555> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145366, 0.853923, -0.499685,
		-0.132748, 0.517317, 0.845436,
		0.980432, -0.056566, 0.188556,
		37.802391, 37.998573, 31.471121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327896, 38.719791, 31.508842>,  <37.116089, 38.038170, 31.339132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327896, 38.719791, 31.508842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.665512, 38.561035, 31.364582>,  <37.868084, 38.465782, 31.278025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.665512, 38.561035, 31.364582>,  <37.327896, 38.719791, 31.508842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665512, 38.561035, 31.364582> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223645, 0.871746, -0.435938,
		0.487418, 0.287291, 0.824553,
		0.844042, -0.396891, -0.360653,
		37.918724, 38.441967, 31.256386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890488, 39.075871, 31.884132>,  <37.327896, 38.719791, 31.508842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890488, 39.075871, 31.884132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.043949, 38.929863, 31.544821>,  <38.136024, 38.842258, 31.341234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.043949, 38.929863, 31.544821>,  <37.890488, 39.075871, 31.884132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043949, 38.929863, 31.544821> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237404, 0.926680, -0.291380,
		0.892441, -0.089596, 0.442179,
		0.383652, -0.365015, -0.848278,
		38.159046, 38.820358, 31.290337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592781, 39.502666, 31.731590>,  <37.890488, 39.075871, 31.884132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592781, 39.502666, 31.731590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.478493, 39.327042, 31.390863>,  <38.409920, 39.221668, 31.186428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.478493, 39.327042, 31.390863>,  <38.592781, 39.502666, 31.731590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478493, 39.327042, 31.390863> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253341, 0.822641, -0.508999,
		0.924220, -0.361230, -0.123811,
		-0.285718, -0.439060, -0.851817,
		38.392776, 39.195324, 31.135319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106579, 39.606949, 31.211676>,  <38.592781, 39.502666, 31.731590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106579, 39.606949, 31.211676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.759445, 39.548508, 31.021719>,  <38.551167, 39.513443, 30.907745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.759445, 39.548508, 31.021719>,  <39.106579, 39.606949, 31.211676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759445, 39.548508, 31.021719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149692, 0.834497, -0.530291,
		0.473775, -0.531290, -0.702331,
		-0.867831, -0.146105, -0.474893,
		38.499096, 39.504677, 30.879251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678013, 39.285141, 30.648926>,  <39.106579, 39.606949, 31.211676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678013, 39.285141, 30.648926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.037815, 39.215893, 30.809385>,  <40.253696, 39.174343, 30.905661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.037815, 39.215893, 30.809385>,  <39.678013, 39.285141, 30.648926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.037815, 39.215893, 30.809385> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245715, -0.959638, 0.136817,
		0.361273, -0.221636, -0.905737,
		0.899503, -0.173125, 0.401150,
		40.307667, 39.163956, 30.929731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903835, 38.669529, 30.453672>,  <39.678013, 39.285141, 30.648926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903835, 38.669529, 30.453672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.141102, 38.727127, 30.770512>,  <40.283463, 38.761688, 30.960615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.141102, 38.727127, 30.770512>,  <39.903835, 38.669529, 30.453672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141102, 38.727127, 30.770512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007511, -0.982842, 0.184299,
		0.805043, -0.115270, -0.581909,
		0.593168, 0.143998, 0.792096,
		40.319054, 38.770325, 31.008141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523499, 38.124641, 30.382654>,  <39.903835, 38.669529, 30.453672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523499, 38.124641, 30.382654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.470760, 38.246021, 30.760128>,  <40.439117, 38.318848, 30.986612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.470760, 38.246021, 30.760128>,  <40.523499, 38.124641, 30.382654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470760, 38.246021, 30.760128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187550, -0.927162, 0.324338,
		0.973366, 0.219750, 0.065331,
		-0.131846, 0.303447, 0.943682,
		40.431206, 38.337055, 31.043232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052383, 37.936920, 30.656815>,  <40.523499, 38.124641, 30.382654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052383, 37.936920, 30.656815> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.814781, 37.989857, 30.974216>,  <40.672222, 38.021618, 31.164658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.814781, 37.989857, 30.974216>,  <41.052383, 37.936920, 30.656815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.814781, 37.989857, 30.974216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384662, -0.819580, 0.424645,
		0.706538, 0.557471, 0.435924,
		-0.594002, 0.132345, 0.793502,
		40.636581, 38.029560, 31.212267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.541290, 37.942345, 31.177885>,  <41.052383, 37.936920, 30.656815>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.541290, 37.942345, 31.177885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.181107, 37.860138, 31.331211>,  <40.964996, 37.810814, 31.423206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.181107, 37.860138, 31.331211>,  <41.541290, 37.942345, 31.177885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.181107, 37.860138, 31.331211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396865, -0.748825, 0.530810,
		0.177946, 0.630098, 0.755851,
		-0.900463, -0.205515, 0.383315,
		40.910969, 37.798485, 31.446205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.553719, 37.858036, 31.934851>,  <41.541290, 37.942345, 31.177885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.553719, 37.858036, 31.934851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.230495, 37.650127, 31.823940>,  <41.036560, 37.525383, 31.757395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.230495, 37.650127, 31.823940>,  <41.553719, 37.858036, 31.934851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.230495, 37.650127, 31.823940> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204668, -0.689054, 0.695209,
		-0.552405, 0.505021, 0.663176,
		-0.808059, -0.519768, -0.277276,
		40.988079, 37.494198, 31.740757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.199024, 37.635548, 32.641205>,  <41.553719, 37.858036, 31.934851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.199024, 37.635548, 32.641205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.067753, 37.401051, 32.344929>,  <40.988991, 37.260353, 32.167164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.067753, 37.401051, 32.344929>,  <41.199024, 37.635548, 32.641205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.067753, 37.401051, 32.344929> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043283, -0.773960, 0.631753,
		-0.943623, 0.239388, 0.228624,
		-0.328180, -0.586241, -0.740688,
		40.969299, 37.225178, 32.122723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594448, 37.283974, 32.965981>,  <41.199024, 37.635548, 32.641205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.594448, 37.283974, 32.965981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.687321, 37.067654, 32.642593>,  <40.743042, 36.937862, 32.448559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.687321, 37.067654, 32.642593>,  <40.594448, 37.283974, 32.965981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.687321, 37.067654, 32.642593> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006070, -0.831975, 0.554780,
		-0.972654, -0.123901, -0.196450,
		0.232179, -0.540801, -0.808472,
		40.756973, 36.905415, 32.400051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265888, 36.651577, 33.110630>,  <40.594448, 37.283974, 32.965981>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.265888, 36.651577, 33.110630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.532776, 36.550053, 32.830517>,  <40.692909, 36.489140, 32.662449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.532776, 36.550053, 32.830517>,  <40.265888, 36.651577, 33.110630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532776, 36.550053, 32.830517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254689, -0.805750, 0.534697,
		-0.699967, -0.535114, -0.472968,
		0.667218, -0.253811, -0.700286,
		40.732941, 36.473907, 32.620430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068890, 36.093414, 32.849571>,  <40.265888, 36.651577, 33.110630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068890, 36.093414, 32.849571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.465443, 36.101978, 32.797874>,  <40.703373, 36.107117, 32.766857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.465443, 36.101978, 32.797874>,  <40.068890, 36.093414, 32.849571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465443, 36.101978, 32.797874> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087999, -0.839703, 0.535869,
		-0.097053, -0.542624, -0.834350,
		0.991381, 0.021414, -0.129247,
		40.762856, 36.108402, 32.759102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225979, 35.403114, 32.882027>,  <40.068890, 36.093414, 32.849571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225979, 35.403114, 32.882027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.595280, 35.551659, 32.921425>,  <40.816860, 35.640785, 32.945065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.595280, 35.551659, 32.921425>,  <40.225979, 35.403114, 32.882027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595280, 35.551659, 32.921425> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260867, -0.794139, 0.548901,
		0.282062, -0.481077, -0.830064,
		0.923249, 0.371360, 0.098500,
		40.872253, 35.663067, 32.950974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682274, 34.885769, 32.711441>,  <40.225979, 35.403114, 32.882027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682274, 34.885769, 32.711441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.876862, 35.140549, 32.950653>,  <40.993614, 35.293415, 33.094181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.876862, 35.140549, 32.950653>,  <40.682274, 34.885769, 32.711441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.876862, 35.140549, 32.950653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371132, -0.770311, 0.518539,
		0.790952, -0.030307, -0.611128,
		0.486473, 0.636948, 0.598031,
		41.022804, 35.331635, 33.130062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322910, 34.504246, 32.763725>,  <40.682274, 34.885769, 32.711441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.322910, 34.504246, 32.763725> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.288757, 34.774246, 33.056870>,  <41.268265, 34.936245, 33.232758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.288757, 34.774246, 33.056870>,  <41.322910, 34.504246, 32.763725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.288757, 34.774246, 33.056870> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250701, -0.697325, 0.671481,
		0.964292, 0.241061, -0.109685,
		-0.085382, 0.675002, 0.732859,
		41.263142, 34.976746, 33.276726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.977715, 34.462658, 33.200928>,  <41.322910, 34.504246, 32.763725>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.977715, 34.462658, 33.200928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.678532, 34.593189, 33.432125>,  <41.499023, 34.671509, 33.570843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.678532, 34.593189, 33.432125>,  <41.977715, 34.462658, 33.200928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.678532, 34.593189, 33.432125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160456, -0.756077, 0.634508,
		0.644062, 0.567327, 0.513152,
		-0.747956, 0.326324, 0.577992,
		41.454144, 34.691086, 33.605522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.783611, 40.786514, 33.604645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.429966, 40.861221, 33.433315>,  <43.217777, 40.906044, 33.330517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.429966, 40.861221, 33.433315>,  <43.783611, 40.786514, 33.604645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.429966, 40.861221, 33.433315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453112, 0.566610, -0.688217,
		0.114153, -0.802540, -0.585575,
		-0.884115, 0.186769, -0.428321,
		43.164730, 40.917252, 33.304817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.865051, 40.625305, 32.854290>,  <43.783611, 40.786514, 33.604645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.865051, 40.625305, 32.854290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.541599, 40.857616, 32.891838>,  <43.347527, 40.997005, 32.914368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.541599, 40.857616, 32.891838>,  <43.865051, 40.625305, 32.854290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.541599, 40.857616, 32.891838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367824, 0.623613, -0.689791,
		-0.459157, -0.523257, -0.717897,
		-0.808629, 0.580783, 0.093870,
		43.299011, 41.031853, 32.919998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.451904, 40.612850, 32.122616>,  <43.865051, 40.625305, 32.854290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.451904, 40.612850, 32.122616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.334282, 40.962967, 32.276184>,  <43.263710, 41.173038, 32.368324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.334282, 40.962967, 32.276184>,  <43.451904, 40.612850, 32.122616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.334282, 40.962967, 32.276184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301914, 0.466175, -0.831582,
		-0.906852, -0.128621, -0.401344,
		-0.294055, 0.875293, 0.383919,
		43.246067, 41.225555, 32.391361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.134144, 41.012993, 31.570034>,  <43.451904, 40.612850, 32.122616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.134144, 41.012993, 31.570034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.143284, 41.293530, 31.855019>,  <43.148769, 41.461849, 32.026009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.143284, 41.293530, 31.855019>,  <43.134144, 41.012993, 31.570034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.143284, 41.293530, 31.855019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059565, 0.710425, -0.701247,
		-0.997963, 0.058465, -0.025539,
		0.022855, 0.701340, 0.712460,
		43.150139, 41.503933, 32.068756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.607212, 41.430470, 31.452103>,  <43.134144, 41.012993, 31.570034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.607212, 41.430470, 31.452103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.857262, 41.655231, 31.668798>,  <43.007290, 41.790089, 31.798817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.857262, 41.655231, 31.668798>,  <42.607212, 41.430470, 31.452103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.857262, 41.655231, 31.668798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211431, 0.790027, -0.575459,
		-0.751344, 0.245192, 0.612668,
		0.625123, 0.561905, 0.541741,
		43.044800, 41.823803, 31.831322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183277, 42.065262, 31.539957>,  <42.607212, 41.430470, 31.452103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.183277, 42.065262, 31.539957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.572063, 42.133984, 31.604158>,  <42.805336, 42.175217, 31.642679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.572063, 42.133984, 31.604158>,  <42.183277, 42.065262, 31.539957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.572063, 42.133984, 31.604158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072655, 0.868741, -0.489908,
		-0.223602, 0.464514, 0.856871,
		0.971969, 0.171801, 0.160503,
		42.863655, 42.185524, 31.652309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.200409, 42.763245, 31.725815>,  <42.183277, 42.065262, 31.539957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.200409, 42.763245, 31.725815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.578545, 42.663162, 31.642166>,  <42.805424, 42.603111, 31.591976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.578545, 42.663162, 31.642166>,  <42.200409, 42.763245, 31.725815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.578545, 42.663162, 31.642166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151369, 0.904719, -0.398209,
		0.288834, 0.344787, 0.893139,
		0.945337, -0.250210, -0.209123,
		42.862144, 42.588100, 31.579430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.565865, 43.281422, 31.963551>,  <42.200409, 42.763245, 31.725815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.565865, 43.281422, 31.963551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.778934, 43.128429, 31.661568>,  <42.906776, 43.036633, 31.480377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.778934, 43.128429, 31.661568>,  <42.565865, 43.281422, 31.963551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.778934, 43.128429, 31.661568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030521, 0.900150, -0.434509,
		0.845769, 0.208410, 0.491162,
		0.532676, -0.382485, -0.754958,
		42.938736, 43.013683, 31.435080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.227741, 43.711113, 31.992662>,  <42.565865, 43.281422, 31.963551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.227741, 43.711113, 31.992662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.183567, 43.561588, 31.624300>,  <43.157063, 43.471874, 31.403282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.183567, 43.561588, 31.624300>,  <43.227741, 43.711113, 31.992662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.183567, 43.561588, 31.624300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087969, 0.919261, -0.383693,
		0.989982, -0.123385, -0.068637,
		-0.110438, -0.373811, -0.920906,
		43.150436, 43.449444, 31.348028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.632706, 44.123981, 31.572662>,  <43.227741, 43.711113, 31.992662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.632706, 44.123981, 31.572662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.386066, 43.941250, 31.316193>,  <43.238083, 43.831612, 31.162310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.386066, 43.941250, 31.316193>,  <43.632706, 44.123981, 31.572662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.386066, 43.941250, 31.316193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208054, 0.880026, -0.426929,
		0.759286, -0.129846, -0.637671,
		-0.616602, -0.456831, -0.641177,
		43.201084, 43.804199, 31.123840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.957855, 44.210251, 30.859613>,  <43.632706, 44.123981, 31.572662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.957855, 44.210251, 30.859613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.575256, 44.125248, 30.779654>,  <43.345699, 44.074245, 30.731678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.575256, 44.125248, 30.779654>,  <43.957855, 44.210251, 30.859613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.575256, 44.125248, 30.779654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084796, 0.858081, -0.506465,
		0.279155, -0.467481, -0.838769,
		-0.956495, -0.212507, -0.199897,
		43.288307, 44.061497, 30.719685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.827324, 44.280788, 30.135908>,  <43.957855, 44.210251, 30.859613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.827324, 44.280788, 30.135908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.464050, 44.318871, 30.298950>,  <43.246086, 44.341721, 30.396776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.464050, 44.318871, 30.298950>,  <43.827324, 44.280788, 30.135908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.464050, 44.318871, 30.298950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126057, 0.866377, -0.483219,
		-0.399144, -0.490232, -0.774826,
		-0.908181, 0.095202, 0.407607,
		43.191597, 44.347431, 30.421232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.425663, 44.489296, 29.593582>,  <43.827324, 44.280788, 30.135908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.425663, 44.489296, 29.593582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.197544, 44.570999, 29.911839>,  <43.060673, 44.620022, 30.102793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.197544, 44.570999, 29.911839>,  <43.425663, 44.489296, 29.593582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.197544, 44.570999, 29.911839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284464, 0.859550, -0.424563,
		-0.770613, -0.468456, -0.432092,
		-0.570294, 0.204259, 0.795640,
		43.026455, 44.632278, 30.150530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.644154, 44.640724, 29.378325>,  <43.425663, 44.489296, 29.593582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.644154, 44.640724, 29.378325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.771729, 44.812199, 29.716438>,  <42.848274, 44.915085, 29.919306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.771729, 44.812199, 29.716438>,  <42.644154, 44.640724, 29.378325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.771729, 44.812199, 29.716438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317981, 0.888567, -0.330661,
		-0.892842, -0.163323, 0.419713,
		0.318938, 0.428689, 0.845284,
		42.867409, 44.940804, 29.970024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.076469, 44.453392, 28.885265>,  <42.644154, 44.640724, 29.378325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.076469, 44.453392, 28.885265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.943382, 44.246765, 28.569683>,  <41.863529, 44.122787, 28.380333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.943382, 44.246765, 28.569683>,  <42.076469, 44.453392, 28.885265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.943382, 44.246765, 28.569683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183780, -0.785063, 0.591524,
		-0.924944, 0.341807, 0.166272,
		-0.332721, -0.516569, -0.788957,
		41.843567, 44.091793, 28.332996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315765, 44.171173, 29.030125>,  <42.076469, 44.453392, 28.885265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315765, 44.171173, 29.030125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.485035, 43.942566, 28.748901>,  <41.586597, 43.805401, 28.580168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.485035, 43.942566, 28.748901>,  <41.315765, 44.171173, 29.030125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.485035, 43.942566, 28.748901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290320, -0.820581, 0.492302,
		-0.858276, -0.004217, -0.513170,
		0.423174, -0.571515, -0.703061,
		41.611988, 43.771111, 28.537983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.846142, 43.543522, 28.832174>,  <41.315765, 44.171173, 29.030125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.846142, 43.543522, 28.832174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.206467, 43.427284, 28.703117>,  <41.422661, 43.357544, 28.625683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.206467, 43.427284, 28.703117>,  <40.846142, 43.543522, 28.832174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.206467, 43.427284, 28.703117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207316, -0.940722, 0.268445,
		-0.381525, -0.174929, -0.907656,
		0.900810, -0.290590, -0.322644,
		41.476711, 43.340107, 28.606325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697189, 42.816978, 28.556391>,  <40.846142, 43.543522, 28.832174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.697189, 42.816978, 28.556391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.095787, 42.816101, 28.589836>,  <41.334946, 42.815575, 28.609903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.095787, 42.816101, 28.589836>,  <40.697189, 42.816978, 28.556391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.095787, 42.816101, 28.589836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044269, -0.862009, 0.504957,
		0.070969, -0.506889, -0.859085,
		0.996496, -0.002194, 0.083615,
		41.394737, 42.815441, 28.614920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003304, 42.066151, 28.301001>,  <40.697189, 42.816978, 28.556391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.003304, 42.066151, 28.301001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.282112, 42.230656, 28.535955>,  <41.449398, 42.329361, 28.676929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.282112, 42.230656, 28.535955>,  <41.003304, 42.066151, 28.301001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.282112, 42.230656, 28.535955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160444, -0.887853, 0.431248,
		0.698871, -0.206346, -0.684836,
		0.697020, 0.411264, 0.587388,
		41.491219, 42.354034, 28.712172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.655350, 41.703457, 28.288008>,  <41.003304, 42.066151, 28.301001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.655350, 41.703457, 28.288008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.614227, 41.886368, 28.641354>,  <41.589554, 41.996113, 28.853361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.614227, 41.886368, 28.641354>,  <41.655350, 41.703457, 28.288008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.614227, 41.886368, 28.641354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151062, -0.870591, 0.468243,
		0.983164, 0.181580, 0.020423,
		-0.102804, 0.457275, 0.883363,
		41.583385, 42.023552, 28.906363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.879208, 41.179005, 28.573555>,  <41.655350, 41.703457, 28.288008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.879208, 41.179005, 28.573555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.773033, 41.433739, 28.863100>,  <41.709328, 41.586578, 29.036827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.773033, 41.433739, 28.863100>,  <41.879208, 41.179005, 28.573555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.773033, 41.433739, 28.863100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055132, -0.759595, 0.648056,
		0.962550, 0.132110, 0.236735,
		-0.265438, 0.636838, 0.723864,
		41.693401, 41.624790, 29.080259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.256371, 41.011204, 29.172325>,  <41.879208, 41.179005, 28.573555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.256371, 41.011204, 29.172325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.941254, 41.214054, 29.312159>,  <41.752186, 41.335766, 29.396059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.941254, 41.214054, 29.312159>,  <42.256371, 41.011204, 29.172325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.941254, 41.214054, 29.312159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093975, -0.659871, 0.745479,
		0.608734, 0.554428, 0.567496,
		-0.787789, 0.507129, 0.349584,
		41.704918, 41.366192, 29.417034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.417030, 40.982548, 29.802092>,  <42.256371, 41.011204, 29.172325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.417030, 40.982548, 29.802092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.022015, 41.041416, 29.779768>,  <41.785007, 41.076736, 29.766375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.022015, 41.041416, 29.779768>,  <42.417030, 40.982548, 29.802092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.022015, 41.041416, 29.779768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140922, -0.668776, 0.729986,
		0.070113, 0.728751, 0.681180,
		-0.987535, 0.147175, -0.055807,
		41.725754, 41.085567, 29.763025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.158646, 41.101917, 30.461441>,  <42.417030, 40.982548, 29.802092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.158646, 41.101917, 30.461441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.831497, 40.988800, 30.260996>,  <41.635208, 40.920929, 30.140730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.831497, 40.988800, 30.260996>,  <42.158646, 41.101917, 30.461441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.831497, 40.988800, 30.260996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315482, -0.507933, 0.801545,
		-0.481204, 0.813653, 0.326208,
		-0.817872, -0.282794, -0.501112,
		41.586136, 40.903961, 30.110662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.606987, 41.261234, 30.926966>,  <42.158646, 41.101917, 30.461441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.606987, 41.261234, 30.926966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.455250, 40.978798, 30.687790>,  <41.364208, 40.809338, 30.544285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.455250, 40.978798, 30.687790>,  <41.606987, 41.261234, 30.926966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.455250, 40.978798, 30.687790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340001, -0.494651, 0.799825,
		-0.860521, 0.506710, -0.052429,
		-0.379345, -0.706092, -0.597939,
		41.341446, 40.766972, 30.508408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.008827, 40.893776, 31.315899>,  <41.606987, 41.261234, 30.926966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.008827, 40.893776, 31.315899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.064335, 40.639816, 31.011887>,  <41.097641, 40.487442, 30.829479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.064335, 40.639816, 31.011887>,  <41.008827, 40.893776, 31.315899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.064335, 40.639816, 31.011887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582246, -0.673109, 0.455975,
		-0.801082, 0.379251, -0.463073,
		0.138770, -0.634896, -0.760033,
		41.105965, 40.449348, 30.783876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358532, 40.533566, 31.314474>,  <41.008827, 40.893776, 31.315899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.358532, 40.533566, 31.314474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.578552, 40.290524, 31.085299>,  <40.710564, 40.144699, 30.947792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.578552, 40.290524, 31.085299>,  <40.358532, 40.533566, 31.314474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.578552, 40.290524, 31.085299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488179, -0.790563, 0.369717,
		-0.677587, 0.076334, -0.731470,
		0.550052, -0.607604, -0.572940,
		40.743568, 40.108242, 30.913416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859364, 40.034184, 31.027601>,  <40.358532, 40.533566, 31.314474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859364, 40.034184, 31.027601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.222851, 39.867458, 31.036436>,  <40.440945, 39.767422, 31.041737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.222851, 39.867458, 31.036436>,  <39.859364, 40.034184, 31.027601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222851, 39.867458, 31.036436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408837, -0.878167, 0.248343,
		-0.084117, -0.234704, -0.968420,
		0.908722, -0.416816, 0.022087,
		40.495468, 39.742413, 31.043062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244331, 39.924610, 30.576788>,  <39.859364, 40.034184, 31.027601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244331, 39.924610, 30.576788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.848095, 39.893288, 30.531885>,  <38.610355, 39.874493, 30.504944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.848095, 39.893288, 30.531885>,  <39.244331, 39.924610, 30.576788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848095, 39.893288, 30.531885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020886, 0.897041, -0.441454,
		0.135266, -0.434955, -0.890234,
		-0.990589, -0.078307, -0.112255,
		38.550919, 39.869797, 30.498209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126400, 39.943531, 29.850847>,  <39.244331, 39.924610, 30.576788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126400, 39.943531, 29.850847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.774338, 40.051773, 30.006847>,  <38.563099, 40.116718, 30.100447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.774338, 40.051773, 30.006847>,  <39.126400, 39.943531, 29.850847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774338, 40.051773, 30.006847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135411, 0.644325, -0.752668,
		-0.454962, -0.715275, -0.530464,
		-0.880155, 0.270605, 0.389999,
		38.510292, 40.132954, 30.123848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573395, 39.956470, 29.246607>,  <39.126400, 39.943531, 29.850847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573395, 39.956470, 29.246607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.444458, 40.185204, 29.548365>,  <38.367096, 40.322441, 29.729420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.444458, 40.185204, 29.548365>,  <38.573395, 39.956470, 29.246607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444458, 40.185204, 29.548365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013312, 0.794113, -0.607625,
		-0.946530, -0.205905, -0.248364,
		-0.322342, 0.571828, 0.754392,
		38.347755, 40.356750, 29.774683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088676, 40.364132, 29.010403>,  <38.573395, 39.956470, 29.246607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088676, 40.364132, 29.010403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.182266, 40.562744, 29.344759>,  <38.238419, 40.681911, 29.545374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.182266, 40.562744, 29.344759>,  <38.088676, 40.364132, 29.010403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182266, 40.562744, 29.344759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120895, 0.867943, -0.481725,
		-0.964697, 0.011657, 0.263104,
		0.233975, 0.496527, 0.835893,
		38.252460, 40.711700, 29.595528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640465, 40.927776, 28.997185>,  <38.088676, 40.364132, 29.010403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640465, 40.927776, 28.997185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.958382, 41.012142, 29.224808>,  <38.149132, 41.062759, 29.361382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.958382, 41.012142, 29.224808>,  <37.640465, 40.927776, 28.997185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958382, 41.012142, 29.224808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030159, 0.950236, -0.310067,
		-0.606137, 0.229275, 0.761597,
		0.794788, 0.210913, 0.569059,
		38.196819, 41.075417, 29.395525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414726, 41.458237, 29.239914>,  <37.640465, 40.927776, 28.997185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414726, 41.458237, 29.239914> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.806763, 41.499069, 29.308033>,  <38.041985, 41.523571, 29.348904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.806763, 41.499069, 29.308033>,  <37.414726, 41.458237, 29.239914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806763, 41.499069, 29.308033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060521, 0.970483, -0.233452,
		-0.189103, 0.218497, 0.957339,
		0.980090, 0.102086, 0.170298,
		38.100788, 41.529694, 29.359123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491676, 42.060787, 29.747850>,  <37.414726, 41.458237, 29.239914>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491676, 42.060787, 29.747850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.837418, 41.994286, 29.558006>,  <38.044861, 41.954384, 29.444099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.837418, 41.994286, 29.558006>,  <37.491676, 42.060787, 29.747850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837418, 41.994286, 29.558006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037466, 0.962438, -0.268905,
		0.501490, 0.214647, 0.838114,
		0.864352, -0.166254, -0.474611,
		38.096722, 41.944408, 29.415623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343571, 42.414368, 30.420630>,  <37.491676, 42.060787, 29.747850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343571, 42.414368, 30.420630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.042068, 42.648987, 30.539167>,  <36.861168, 42.789757, 30.610291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.042068, 42.648987, 30.539167>,  <37.343571, 42.414368, 30.420630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042068, 42.648987, 30.539167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286202, -0.698934, 0.655423,
		0.591563, 0.409211, 0.694694,
		-0.753751, 0.586547, 0.296347,
		36.815945, 42.824951, 30.628071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457764, 42.441658, 31.125858>,  <37.343571, 42.414368, 30.420630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457764, 42.441658, 31.125858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.076485, 42.549347, 31.070820>,  <36.847717, 42.613960, 31.037796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.076485, 42.549347, 31.070820>,  <37.457764, 42.441658, 31.125858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076485, 42.549347, 31.070820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279253, -0.609499, 0.741977,
		0.115890, 0.745676, 0.656154,
		-0.953198, 0.269220, -0.137597,
		36.790524, 42.630112, 31.029541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213928, 42.591335, 31.777037>,  <37.457764, 42.441658, 31.125858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213928, 42.591335, 31.777037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.887157, 42.520214, 31.557577>,  <36.691093, 42.477539, 31.425901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.887157, 42.520214, 31.557577>,  <37.213928, 42.591335, 31.777037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887157, 42.520214, 31.557577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292163, -0.692613, 0.659491,
		-0.497262, 0.699051, 0.513866,
		-0.816928, -0.177807, -0.548647,
		36.642078, 42.466873, 31.392982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599106, 42.706257, 32.195538>,  <37.213928, 42.591335, 31.777037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599106, 42.706257, 32.195538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.489597, 42.459087, 31.900724>,  <36.423893, 42.310787, 31.723835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.489597, 42.459087, 31.900724>,  <36.599106, 42.706257, 32.195538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489597, 42.459087, 31.900724> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344539, -0.652448, 0.674985,
		-0.897966, 0.438729, -0.034278,
		-0.273771, -0.617923, -0.737035,
		36.407467, 42.273712, 31.679613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000393, 42.482334, 32.387039>,  <36.599106, 42.706257, 32.195538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000393, 42.482334, 32.387039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.097809, 42.209038, 32.111687>,  <36.156258, 42.045059, 31.946476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.097809, 42.209038, 32.111687>,  <36.000393, 42.482334, 32.387039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097809, 42.209038, 32.111687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580564, -0.671246, 0.460841,
		-0.776938, 0.287415, -0.560142,
		0.243541, -0.683244, -0.688380,
		36.170872, 42.004066, 31.905172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340687, 42.165497, 32.230541>,  <36.000393, 42.482334, 32.387039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340687, 42.165497, 32.230541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.642582, 41.919159, 32.140118>,  <35.823719, 41.771355, 32.085861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.642582, 41.919159, 32.140118>,  <35.340687, 42.165497, 32.230541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642582, 41.919159, 32.140118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483662, -0.755170, 0.442482,
		-0.443214, -0.224621, -0.867817,
		0.754740, -0.615844, -0.226061,
		35.869003, 41.734406, 32.072300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965282, 41.632504, 32.150761>,  <35.340687, 42.165497, 32.230541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965282, 41.632504, 32.150761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.337673, 41.487576, 32.168652>,  <35.561108, 41.400620, 32.179386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.337673, 41.487576, 32.168652>,  <34.965282, 41.632504, 32.150761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337673, 41.487576, 32.168652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361192, -0.896354, 0.257080,
		-0.053056, -0.255490, -0.965355,
		0.930981, -0.362318, 0.044724,
		35.616966, 41.378880, 32.182068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.189480, 45.839180, 31.760410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.325169, 45.582985, 31.484814>,  <40.406582, 45.429268, 31.319456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.325169, 45.582985, 31.484814>,  <40.189480, 45.839180, 31.760410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325169, 45.582985, 31.484814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145899, -0.759378, 0.634081,
		-0.929325, -0.114567, -0.351040,
		0.339217, -0.640484, -0.688994,
		40.426933, 45.390839, 31.278116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668499, 45.288872, 31.591257>,  <40.189480, 45.839180, 31.760410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668499, 45.288872, 31.591257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.050537, 45.172688, 31.567831>,  <40.279758, 45.102978, 31.553776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.050537, 45.172688, 31.567831>,  <39.668499, 45.288872, 31.591257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050537, 45.172688, 31.567831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204533, -0.789285, 0.578961,
		-0.214387, -0.540984, -0.813250,
		0.955094, -0.290458, -0.058563,
		40.337067, 45.085548, 31.550262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700893, 44.550194, 31.359837>,  <39.668499, 45.288872, 31.591257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700893, 44.550194, 31.359837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.039223, 44.636780, 31.554869>,  <40.242218, 44.688732, 31.671888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.039223, 44.636780, 31.554869>,  <39.700893, 44.550194, 31.359837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039223, 44.636780, 31.554869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109747, -0.823822, 0.556124,
		0.522059, -0.523890, -0.673048,
		0.845819, 0.216464, 0.487579,
		40.292969, 44.701717, 31.701143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033554, 43.955013, 31.427546>,  <39.700893, 44.550194, 31.359837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033554, 43.955013, 31.427546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.159939, 44.166645, 31.742567>,  <40.235771, 44.293625, 31.931580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.159939, 44.166645, 31.742567>,  <40.033554, 43.955013, 31.427546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159939, 44.166645, 31.742567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087553, -0.842795, 0.531066,
		0.944723, -0.098846, -0.312616,
		0.315965, 0.529081, 0.787553,
		40.254726, 44.325371, 31.978832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718014, 43.619370, 31.680721>,  <40.033554, 43.955013, 31.427546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.718014, 43.619370, 31.680721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.559853, 43.816837, 31.990545>,  <40.464954, 43.935318, 32.176441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.559853, 43.816837, 31.990545>,  <40.718014, 43.619370, 31.680721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559853, 43.816837, 31.990545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185517, -0.782979, 0.593740,
		0.899577, 0.378462, 0.218010,
		-0.395405, 0.493670, 0.774561,
		40.441231, 43.964939, 32.222912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.161137, 43.447681, 32.199436>,  <40.718014, 43.619370, 31.680721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.161137, 43.447681, 32.199436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.884434, 43.639374, 32.415516>,  <40.718414, 43.754387, 32.545162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.884434, 43.639374, 32.415516>,  <41.161137, 43.447681, 32.199436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.884434, 43.639374, 32.415516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054096, -0.711571, 0.700529,
		0.720103, 0.513818, 0.466308,
		-0.691755, 0.479227, 0.540200,
		40.676907, 43.783142, 32.577576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354801, 43.429359, 32.989403>,  <41.161137, 43.447681, 32.199436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.354801, 43.429359, 32.989403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.961536, 43.502323, 32.985176>,  <40.725578, 43.546101, 32.982639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.961536, 43.502323, 32.985176>,  <41.354801, 43.429359, 32.989403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961536, 43.502323, 32.985176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156751, -0.812344, 0.561717,
		0.093875, 0.553918, 0.827262,
		-0.983167, 0.182405, -0.010568,
		40.666588, 43.557045, 32.982006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.197147, 43.263474, 33.582203>,  <41.354801, 43.429359, 32.989403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.197147, 43.263474, 33.582203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.839016, 43.268253, 33.404102>,  <40.624138, 43.271122, 33.297241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.839016, 43.268253, 33.404102>,  <41.197147, 43.263474, 33.582203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.839016, 43.268253, 33.404102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270288, -0.809122, 0.521792,
		-0.354026, 0.587520, 0.727658,
		-0.895327, 0.011950, -0.445249,
		40.570419, 43.271839, 33.270527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678242, 43.360130, 34.095764>,  <41.197147, 43.263474, 33.582203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.678242, 43.360130, 34.095764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.461529, 43.214577, 33.792698>,  <40.331501, 43.127243, 33.610859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.461529, 43.214577, 33.792698>,  <40.678242, 43.360130, 34.095764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461529, 43.214577, 33.792698> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401194, -0.680156, 0.613541,
		-0.738588, 0.636378, 0.222510,
		-0.541785, -0.363884, -0.757666,
		40.298992, 43.105412, 33.565399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025425, 43.436752, 34.298359>,  <40.678242, 43.360130, 34.095764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025425, 43.436752, 34.298359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.021534, 43.145164, 34.024567>,  <40.019199, 42.970211, 33.860291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.021534, 43.145164, 34.024567>,  <40.025425, 43.436752, 34.298359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021534, 43.145164, 34.024567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305614, -0.649589, 0.696157,
		-0.952106, 0.215958, -0.216464,
		-0.009728, -0.728970, -0.684477,
		40.018616, 42.926476, 33.819225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475658, 43.158909, 34.416992>,  <40.025425, 43.436752, 34.298359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475658, 43.158909, 34.416992> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.658413, 42.862949, 34.219486>,  <39.768066, 42.685375, 34.100983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.658413, 42.862949, 34.219486>,  <39.475658, 43.158909, 34.416992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658413, 42.862949, 34.219486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376693, -0.663798, 0.646123,
		-0.805827, -0.109206, -0.581994,
		0.456887, -0.739897, -0.493769,
		39.795479, 42.640980, 34.071354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988205, 42.598255, 34.400990>,  <39.475658, 43.158909, 34.416992>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988205, 42.598255, 34.400990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.332779, 42.412598, 34.318527>,  <39.539524, 42.301201, 34.269051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.332779, 42.412598, 34.318527>,  <38.988205, 42.598255, 34.400990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332779, 42.412598, 34.318527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188712, -0.669391, 0.718542,
		-0.471507, -0.580073, -0.664226,
		0.861434, -0.464145, -0.206156,
		39.591209, 42.273354, 34.256680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268429, 42.519733, 34.060978>,  <38.988205, 42.598255, 34.400990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268429, 42.519733, 34.060978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.928677, 42.616550, 34.248577>,  <37.724823, 42.674641, 34.361137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.928677, 42.616550, 34.248577>,  <38.268429, 42.519733, 34.060978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928677, 42.616550, 34.248577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007968, 0.882652, -0.469959,
		-0.527716, -0.402912, -0.747781,
		-0.849383, 0.242047, 0.469001,
		37.673862, 42.689163, 34.389278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663078, 42.727718, 33.517044>,  <38.268429, 42.519733, 34.060978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663078, 42.727718, 33.517044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.617737, 42.894108, 33.877956>,  <37.590530, 42.993942, 34.094505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.617737, 42.894108, 33.877956>,  <37.663078, 42.727718, 33.517044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617737, 42.894108, 33.877956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097540, 0.899090, -0.426759,
		-0.988755, -0.136383, -0.061340,
		-0.113353, 0.415977, 0.902283,
		37.583733, 43.018902, 34.148640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126602, 43.096348, 33.437916>,  <37.663078, 42.727718, 33.517044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126602, 43.096348, 33.437916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.309006, 43.282536, 33.741337>,  <37.418449, 43.394249, 33.923389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.309006, 43.282536, 33.741337>,  <37.126602, 43.096348, 33.437916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309006, 43.282536, 33.741337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172178, 0.882364, -0.437937,
		-0.873161, 0.069098, 0.482509,
		0.456009, 0.465467, 0.758549,
		37.445808, 43.422176, 33.968903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793091, 43.733807, 33.534691>,  <37.126602, 43.096348, 33.437916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793091, 43.733807, 33.534691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.144211, 43.793869, 33.716648>,  <37.354881, 43.829906, 33.825821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.144211, 43.793869, 33.716648>,  <36.793091, 43.733807, 33.534691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144211, 43.793869, 33.716648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091008, 0.880035, -0.466107,
		-0.470309, 0.450546, 0.758827,
		0.877797, 0.150155, 0.454892,
		37.407551, 43.838917, 33.853115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645180, 44.291725, 33.783169>,  <36.793091, 43.733807, 33.534691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645180, 44.291725, 33.783169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.044144, 44.262997, 33.784565>,  <37.283524, 44.245762, 33.785400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.044144, 44.262997, 33.784565>,  <36.645180, 44.291725, 33.783169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044144, 44.262997, 33.784565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063013, 0.849689, -0.523505,
		0.034634, 0.522370, 0.852015,
		0.997412, -0.071819, 0.003488,
		37.343369, 44.241451, 33.785610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872097, 45.038040, 33.829208>,  <36.645180, 44.291725, 33.783169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872097, 45.038040, 33.829208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.210117, 44.857620, 33.714352>,  <37.412930, 44.749367, 33.645439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.210117, 44.857620, 33.714352>,  <36.872097, 45.038040, 33.829208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210117, 44.857620, 33.714352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295296, 0.841387, -0.452624,
		0.445752, 0.297697, 0.844205,
		0.845047, -0.451049, -0.287141,
		37.463631, 44.722305, 33.628208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357540, 45.540157, 33.969784>,  <36.872097, 45.038040, 33.829208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357540, 45.540157, 33.969784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.479370, 45.285725, 33.686195>,  <37.552467, 45.133064, 33.516045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.479370, 45.285725, 33.686195>,  <37.357540, 45.540157, 33.969784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479370, 45.285725, 33.686195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245290, 0.771607, -0.586904,
		0.920363, 0.004853, 0.391036,
		0.304574, -0.636081, -0.708968,
		37.570744, 45.094902, 33.473507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895153, 45.822964, 33.712223>,  <37.357540, 45.540157, 33.969784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895153, 45.822964, 33.712223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.810036, 45.568745, 33.415359>,  <37.758965, 45.416214, 33.237240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.810036, 45.568745, 33.415359>,  <37.895153, 45.822964, 33.712223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810036, 45.568745, 33.415359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263613, 0.694048, -0.669930,
		0.940864, -0.338202, 0.019846,
		-0.212797, -0.635545, -0.742159,
		37.746197, 45.378082, 33.192711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404060, 45.979378, 33.242645>,  <37.895153, 45.822964, 33.712223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404060, 45.979378, 33.242645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.129726, 45.768581, 33.041882>,  <37.965126, 45.642101, 32.921425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.129726, 45.768581, 33.041882>,  <38.404060, 45.979378, 33.242645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129726, 45.768581, 33.041882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247717, 0.479434, -0.841890,
		0.684304, -0.701726, -0.198265,
		-0.685831, -0.526995, -0.501908,
		37.923977, 45.610481, 32.891308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799870, 45.671215, 32.707809>,  <38.404060, 45.979378, 33.242645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799870, 45.671215, 32.707809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.409496, 45.710922, 32.630150>,  <38.175270, 45.734745, 32.583553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.409496, 45.710922, 32.630150>,  <38.799870, 45.671215, 32.707809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409496, 45.710922, 32.630150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217014, 0.529018, -0.820393,
		0.021269, -0.842785, -0.537831,
		-0.975937, 0.099268, -0.194147,
		38.116714, 45.740704, 32.571907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692326, 45.340923, 31.995695>,  <38.799870, 45.671215, 32.707809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692326, 45.340923, 31.995695> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.406567, 45.610748, 32.070095>,  <38.235111, 45.772644, 32.114735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.406567, 45.610748, 32.070095>,  <38.692326, 45.340923, 31.995695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406567, 45.610748, 32.070095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175973, 0.430469, -0.885285,
		-0.677251, -0.599715, -0.426232,
		-0.714398, 0.674565, 0.186001,
		38.192245, 45.813118, 32.125896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368832, 45.463268, 31.349524>,  <38.692326, 45.340923, 31.995695>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368832, 45.463268, 31.349524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.242798, 45.771259, 31.571463>,  <38.167179, 45.956055, 31.704626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.242798, 45.771259, 31.571463>,  <38.368832, 45.463268, 31.349524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242798, 45.771259, 31.571463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101565, 0.608626, -0.786930,
		-0.943615, -0.191593, -0.269969,
		-0.315081, 0.769979, 0.554849,
		38.148273, 46.002254, 31.737917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961281, 45.798286, 30.913982>,  <38.368832, 45.463268, 31.349524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961281, 45.798286, 30.913982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.058002, 46.061779, 31.198969>,  <38.116035, 46.219875, 31.369961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.058002, 46.061779, 31.198969>,  <37.961281, 45.798286, 30.913982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058002, 46.061779, 31.198969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109979, 0.710917, -0.694624,
		-0.964072, 0.246320, 0.099457,
		0.241805, 0.658729, 0.712465,
		38.130543, 46.259399, 31.412708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006832, 45.891678, 30.138889>,  <37.961281, 45.798286, 30.913982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006832, 45.891678, 30.138889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.778473, 45.825691, 29.817179>,  <37.641457, 45.786098, 29.624153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.778473, 45.825691, 29.817179>,  <38.006832, 45.891678, 30.138889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778473, 45.825691, 29.817179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253234, -0.896463, 0.363629,
		-0.780991, 0.411266, 0.470014,
		-0.570899, -0.164968, -0.804276,
		37.607204, 45.776199, 29.575895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345303, 45.692020, 30.333393>,  <38.006832, 45.891678, 30.138889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345303, 45.692020, 30.333393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.385704, 45.554096, 29.960104>,  <37.409943, 45.471340, 29.736132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.385704, 45.554096, 29.960104>,  <37.345303, 45.692020, 30.333393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385704, 45.554096, 29.960104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447868, -0.853355, 0.266833,
		-0.888377, 0.391010, -0.240621,
		0.101001, -0.344815, -0.933221,
		37.416004, 45.450653, 29.680138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661472, 45.428616, 30.137383>,  <37.345303, 45.692020, 30.333393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661472, 45.428616, 30.137383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.946075, 45.246666, 29.923149>,  <37.116837, 45.137497, 29.794609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.946075, 45.246666, 29.923149>,  <36.661472, 45.428616, 30.137383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946075, 45.246666, 29.923149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453119, -0.879568, 0.145062,
		-0.537065, 0.139469, -0.831932,
		0.711509, -0.454871, -0.535581,
		37.159527, 45.110203, 29.762474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211117, 44.904690, 29.882069>,  <36.661472, 45.428616, 30.137383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211117, 44.904690, 29.882069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.590424, 44.823719, 29.784239>,  <36.818008, 44.775139, 29.725540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.590424, 44.823719, 29.784239>,  <36.211117, 44.904690, 29.882069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590424, 44.823719, 29.784239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144003, -0.960805, 0.236889,
		-0.282941, -0.189414, -0.940248,
		0.948266, -0.202424, -0.244575,
		36.874905, 44.762993, 29.710867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113918, 44.320004, 29.409531>,  <36.211117, 44.904690, 29.882069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113918, 44.320004, 29.409531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.461678, 44.360893, 29.602898>,  <36.670334, 44.385426, 29.718918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.461678, 44.360893, 29.602898>,  <36.113918, 44.320004, 29.409531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461678, 44.360893, 29.602898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064763, -0.946347, 0.316595,
		0.489843, -0.306556, -0.816136,
		0.869402, 0.102226, 0.483416,
		36.722500, 44.391560, 29.747923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415825, 43.736458, 29.259460>,  <36.113918, 44.320004, 29.409531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415825, 43.736458, 29.259460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.623928, 43.867668, 29.574860>,  <36.748791, 43.946396, 29.764099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.623928, 43.867668, 29.574860>,  <36.415825, 43.736458, 29.259460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623928, 43.867668, 29.574860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018409, -0.927384, 0.373657,
		0.853811, -0.179882, -0.488517,
		0.520257, 0.328025, 0.788500,
		36.780006, 43.966076, 29.811409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868935, 43.256081, 29.423002>,  <36.415825, 43.736458, 29.259460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868935, 43.256081, 29.423002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.829620, 43.446960, 29.772316>,  <36.806030, 43.561489, 29.981903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.829620, 43.446960, 29.772316>,  <36.868935, 43.256081, 29.423002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829620, 43.446960, 29.772316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057985, -0.878788, 0.473677,
		0.993467, -0.004080, 0.114045,
		-0.098288, 0.477196, 0.873283,
		36.800133, 43.590118, 30.034302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289604, 42.903572, 29.925875>,  <36.868935, 43.256081, 29.423002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289604, 42.903572, 29.925875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.984081, 43.079296, 30.115026>,  <36.800770, 43.184731, 30.228518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.984081, 43.079296, 30.115026>,  <37.289604, 42.903572, 29.925875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984081, 43.079296, 30.115026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166348, -0.841867, 0.513408,
		0.623643, 0.313481, 0.716100,
		-0.763805, 0.439305, 0.472877,
		36.754940, 43.211086, 30.256889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952168, 42.788811, 29.710020>,  <37.289604, 42.903572, 29.925875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952168, 42.788811, 29.710020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.184692, 42.563877, 29.474783>,  <38.324207, 42.428917, 29.333641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.184692, 42.563877, 29.474783>,  <37.952168, 42.788811, 29.710020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184692, 42.563877, 29.474783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331592, 0.823740, -0.459889,
		0.743046, 0.072335, 0.665320,
		0.581317, -0.562334, -0.588091,
		38.359089, 42.395176, 29.298355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551273, 43.047100, 29.777472>,  <37.952168, 42.788811, 29.710020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551273, 43.047100, 29.777472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.581825, 42.834927, 29.439760>,  <38.600155, 42.707623, 29.237133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.581825, 42.834927, 29.439760>,  <38.551273, 43.047100, 29.777472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581825, 42.834927, 29.439760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622957, 0.686530, -0.374969,
		0.778519, -0.497309, 0.382874,
		0.076379, -0.530434, -0.844278,
		38.604740, 42.675797, 29.186476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244251, 43.171585, 29.498209>,  <38.551273, 43.047100, 29.777472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244251, 43.171585, 29.498209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.070740, 42.998032, 29.182341>,  <38.966633, 42.893898, 28.992821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.070740, 42.998032, 29.182341>,  <39.244251, 43.171585, 29.498209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070740, 42.998032, 29.182341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428239, 0.671821, -0.604374,
		0.792747, -0.600332, -0.105614,
		-0.433779, -0.433888, -0.789669,
		38.940605, 42.867867, 28.945440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779213, 43.166500, 28.953629>,  <39.244251, 43.171585, 29.498209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779213, 43.166500, 28.953629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.425560, 43.135574, 28.769310>,  <39.213367, 43.117020, 28.658718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.425560, 43.135574, 28.769310>,  <39.779213, 43.166500, 28.953629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425560, 43.135574, 28.769310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313567, 0.632959, -0.707841,
		0.346392, -0.770315, -0.535376,
		-0.884131, -0.077314, -0.460797,
		39.160320, 43.112381, 28.631071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874409, 42.982265, 28.346584>,  <39.779213, 43.166500, 28.953629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874409, 42.982265, 28.346584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.506447, 43.131618, 28.298655>,  <39.285667, 43.221230, 28.269896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.506447, 43.131618, 28.298655>,  <39.874409, 42.982265, 28.346584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506447, 43.131618, 28.298655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361263, 0.688105, -0.629285,
		-0.152510, -0.622172, -0.767882,
		-0.919907, 0.373380, -0.119825,
		39.230476, 43.243633, 28.262707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791924, 43.051102, 27.668886>,  <39.874409, 42.982265, 28.346584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.791924, 43.051102, 27.668886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.511215, 43.293194, 27.819199>,  <39.342789, 43.438450, 27.909386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.511215, 43.293194, 27.819199>,  <39.791924, 43.051102, 27.668886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511215, 43.293194, 27.819199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343969, 0.749789, -0.565245,
		-0.623859, -0.267417, -0.734363,
		-0.701774, 0.605230, 0.375779,
		39.300682, 43.474762, 27.931932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531612, 43.443649, 27.008057>,  <39.791924, 43.051102, 27.668886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531612, 43.443649, 27.008057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.481773, 43.648674, 27.347881>,  <39.451870, 43.771687, 27.551777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.481773, 43.648674, 27.347881>,  <39.531612, 43.443649, 27.008057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481773, 43.648674, 27.347881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341645, 0.826040, -0.448259,
		-0.931533, 0.234396, -0.278038,
		-0.124601, 0.512558, 0.849564,
		39.444393, 43.802441, 27.602751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140823, 44.001289, 26.829231>,  <39.531612, 43.443649, 27.008057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140823, 44.001289, 26.829231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.324558, 44.110153, 27.167448>,  <39.434799, 44.175472, 27.370378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.324558, 44.110153, 27.167448>,  <39.140823, 44.001289, 26.829231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324558, 44.110153, 27.167448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158514, 0.911511, -0.379501,
		-0.874005, 0.308349, 0.375548,
		0.459335, 0.272156, 0.845543,
		39.462360, 44.191799, 27.421110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778385, 44.615791, 27.050905>,  <39.140823, 44.001289, 26.829231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778385, 44.615791, 27.050905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.159374, 44.596966, 27.171293>,  <39.387966, 44.585670, 27.243526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.159374, 44.596966, 27.171293>,  <38.778385, 44.615791, 27.050905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159374, 44.596966, 27.171293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133555, 0.952499, -0.273696,
		-0.273793, 0.300884, 0.913513,
		0.952471, -0.047068, 0.300972,
		39.445114, 44.582844, 27.261585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.661812, 31.138765, 36.340176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.060455, 31.158915, 36.366173>,  <37.299644, 31.171005, 36.381771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.060455, 31.158915, 36.366173>,  <36.661812, 31.138765, 36.340176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060455, 31.158915, 36.366173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010676, 0.862959, -0.505162,
		-0.081534, 0.502757, 0.860574,
		0.996613, 0.050375, 0.064993,
		37.359440, 31.174026, 36.385670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759521, 31.852009, 36.669426>,  <36.661812, 31.138765, 36.340176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759521, 31.852009, 36.669426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.113491, 31.749273, 36.514023>,  <37.325874, 31.687632, 36.420780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.113491, 31.749273, 36.514023>,  <36.759521, 31.852009, 36.669426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113491, 31.749273, 36.514023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019158, 0.853559, -0.520644,
		0.465334, 0.453289, 0.760259,
		0.884928, -0.256839, -0.388506,
		37.378971, 31.672222, 36.397472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228531, 32.356125, 36.828346>,  <36.759521, 31.852009, 36.669426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228531, 32.356125, 36.828346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.369354, 32.180218, 36.497852>,  <37.453850, 32.074673, 36.299557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.369354, 32.180218, 36.497852>,  <37.228531, 32.356125, 36.828346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369354, 32.180218, 36.497852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048000, 0.890070, -0.453289,
		0.934747, 0.119925, 0.334465,
		0.352058, -0.439765, -0.826234,
		37.474972, 32.048286, 36.249981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748344, 32.866806, 36.654255>,  <37.228531, 32.356125, 36.828346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748344, 32.866806, 36.654255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.712631, 32.649338, 36.320438>,  <37.691204, 32.518856, 36.120148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.712631, 32.649338, 36.320438>,  <37.748344, 32.866806, 36.654255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712631, 32.649338, 36.320438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155010, 0.820092, -0.550837,
		0.983870, -0.178541, 0.011056,
		-0.089281, -0.543666, -0.834540,
		37.685848, 32.486237, 36.070076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253365, 33.075146, 36.198524>,  <37.748344, 32.866806, 36.654255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253365, 33.075146, 36.198524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.987240, 32.907341, 35.951504>,  <37.827564, 32.806656, 35.803291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.987240, 32.907341, 35.951504>,  <38.253365, 33.075146, 36.198524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987240, 32.907341, 35.951504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042528, 0.804547, -0.592364,
		0.745354, -0.420369, -0.517433,
		-0.665311, -0.419515, -0.617550,
		37.787647, 32.781487, 35.766239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386482, 33.402477, 35.609383>,  <38.253365, 33.075146, 36.198524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386482, 33.402477, 35.609383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.029301, 33.242203, 35.527317>,  <37.814991, 33.146038, 35.478077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.029301, 33.242203, 35.527317>,  <38.386482, 33.402477, 35.609383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029301, 33.242203, 35.527317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186556, 0.744178, -0.641401,
		0.409676, -0.534465, -0.739265,
		-0.892951, -0.400681, -0.205164,
		37.761414, 33.121998, 35.465767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319599, 33.214592, 34.780933>,  <38.386482, 33.402477, 35.609383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319599, 33.214592, 34.780933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.970455, 33.288235, 34.961693>,  <37.760967, 33.332420, 35.070148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.970455, 33.288235, 34.961693>,  <38.319599, 33.214592, 34.780933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970455, 33.288235, 34.961693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250081, 0.626437, -0.738266,
		-0.419008, -0.757417, -0.500752,
		-0.872864, 0.184111, 0.451897,
		37.708595, 33.343468, 35.097263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815823, 33.191330, 34.253487>,  <38.319599, 33.214592, 34.780933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815823, 33.191330, 34.253487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.603527, 33.392426, 34.526417>,  <37.476151, 33.513084, 34.690174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.603527, 33.392426, 34.526417>,  <37.815823, 33.191330, 34.253487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603527, 33.392426, 34.526417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297600, 0.643259, -0.705445,
		-0.793567, -0.577468, -0.191788,
		-0.530741, 0.502742, 0.682323,
		37.444305, 33.543247, 34.731113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178093, 33.367191, 33.917137>,  <37.815823, 33.191330, 34.253487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178093, 33.367191, 33.917137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.206150, 33.616680, 34.228535>,  <37.222984, 33.766373, 34.415375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.206150, 33.616680, 34.228535>,  <37.178093, 33.367191, 33.917137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206150, 33.616680, 34.228535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202790, 0.773036, -0.601076,
		-0.976707, -0.115712, 0.180705,
		0.070140, 0.623720, 0.778494,
		37.227192, 33.803795, 34.462082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623901, 33.715214, 33.926216>,  <37.178093, 33.367191, 33.917137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623901, 33.715214, 33.926216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.872421, 33.954273, 34.128918>,  <37.021534, 34.097710, 34.250538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.872421, 33.954273, 34.128918>,  <36.623901, 33.715214, 33.926216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872421, 33.954273, 34.128918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275306, 0.771992, -0.572918,
		-0.733614, 0.216443, 0.644176,
		0.621303, 0.597646, 0.506756,
		37.058811, 34.133568, 34.280945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388294, 34.351170, 33.726521>,  <36.623901, 33.715214, 33.926216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388294, 34.351170, 33.726521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.705341, 34.500183, 33.919590>,  <36.895569, 34.589592, 34.035431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.705341, 34.500183, 33.919590>,  <36.388294, 34.351170, 33.726521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705341, 34.500183, 33.919590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025740, 0.811377, -0.583956,
		-0.609171, 0.450432, 0.652703,
		0.792621, 0.372530, 0.482673,
		36.943127, 34.611942, 34.064392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173874, 35.042847, 33.702148>,  <36.388294, 34.351170, 33.726521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173874, 35.042847, 33.702148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.569160, 35.024761, 33.760647>,  <36.806332, 35.013908, 33.795746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.569160, 35.024761, 33.760647>,  <36.173874, 35.042847, 33.702148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569160, 35.024761, 33.760647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131412, 0.740542, -0.659036,
		-0.078500, 0.670487, 0.737757,
		0.988215, -0.045216, 0.146242,
		36.865623, 35.011196, 33.804520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364433, 35.061180, 33.741753>,  <36.173874, 35.042847, 33.702148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364433, 35.061180, 33.741753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.062382, 35.244717, 33.929050>,  <34.881149, 35.354839, 34.041428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.062382, 35.244717, 33.929050>,  <35.364433, 35.061180, 33.741753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062382, 35.244717, 33.929050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274875, -0.426827, 0.861547,
		0.595169, 0.779285, 0.196185,
		-0.755127, 0.458840, 0.468240,
		34.835842, 35.382370, 34.069523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610386, 35.300964, 34.410641>,  <35.364433, 35.061180, 33.741753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610386, 35.300964, 34.410641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.213566, 35.285858, 34.458652>,  <34.975471, 35.276794, 34.487461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.213566, 35.285858, 34.458652>,  <35.610386, 35.300964, 34.410641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213566, 35.285858, 34.458652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124750, -0.419898, 0.898957,
		0.016452, 0.906785, 0.421271,
		-0.992052, -0.037764, 0.120029,
		34.915951, 35.274529, 34.494659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504814, 35.587940, 35.033333>,  <35.610386, 35.300964, 34.410641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504814, 35.587940, 35.033333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.175560, 35.377361, 34.948193>,  <34.978008, 35.251015, 34.897106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.175560, 35.377361, 34.948193>,  <35.504814, 35.587940, 35.033333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175560, 35.377361, 34.948193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019833, -0.347958, 0.937301,
		-0.567503, 0.775744, 0.275974,
		-0.823132, -0.526448, -0.212853,
		34.928619, 35.219425, 34.884338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938694, 35.727978, 35.506653>,  <35.504814, 35.587940, 35.033333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938694, 35.727978, 35.506653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.849491, 35.364353, 35.365875>,  <34.795971, 35.146179, 35.281406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.849491, 35.364353, 35.365875>,  <34.938694, 35.727978, 35.506653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849491, 35.364353, 35.365875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076793, -0.343536, 0.935995,
		-0.971787, 0.235761, 0.006802,
		-0.223008, -0.909065, -0.351948,
		34.782589, 35.091633, 35.260292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446362, 35.433834, 35.928139>,  <34.938694, 35.727978, 35.506653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446362, 35.433834, 35.928139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.480682, 35.090683, 35.725483>,  <34.501274, 34.884792, 35.603889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.480682, 35.090683, 35.725483>,  <34.446362, 35.433834, 35.928139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480682, 35.090683, 35.725483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197240, -0.513074, 0.835375,
		-0.976594, 0.028256, -0.213228,
		0.085798, -0.857879, -0.506638,
		34.506420, 34.833321, 35.573490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014725, 35.067757, 36.246498>,  <34.446362, 35.433834, 35.928139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014725, 35.067757, 36.246498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.252117, 34.806408, 36.058506>,  <34.394554, 34.649597, 35.945709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.252117, 34.806408, 36.058506>,  <34.014725, 35.067757, 36.246498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252117, 34.806408, 36.058506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167407, -0.671380, 0.721958,
		-0.787244, -0.349791, -0.507831,
		0.593483, -0.653372, -0.469982,
		34.430161, 34.610397, 35.917511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640465, 34.416458, 36.118900>,  <34.014725, 35.067757, 36.246498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640465, 34.416458, 36.118900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.033844, 34.344070, 36.115486>,  <34.269871, 34.300640, 36.113438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.033844, 34.344070, 36.115486>,  <33.640465, 34.416458, 36.118900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033844, 34.344070, 36.115486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108068, -0.623818, 0.774062,
		-0.145404, -0.760330, -0.633052,
		0.983452, -0.180964, -0.008538,
		34.328880, 34.289780, 36.112926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747005, 33.606350, 36.189682>,  <33.640465, 34.416458, 36.118900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747005, 33.606350, 36.189682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.088306, 33.751968, 36.339043>,  <34.293087, 33.839340, 36.428658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.088306, 33.751968, 36.339043>,  <33.747005, 33.606350, 36.189682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088306, 33.751968, 36.339043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099666, -0.588984, 0.801976,
		0.511884, -0.721504, -0.466269,
		0.853254, 0.364048, 0.373401,
		34.344284, 33.861183, 36.451061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203430, 32.980621, 36.460651>,  <33.747005, 33.606350, 36.189682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203430, 32.980621, 36.460651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.352669, 33.307522, 36.636337>,  <34.442211, 33.503662, 36.741749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.352669, 33.307522, 36.636337>,  <34.203430, 32.980621, 36.460651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352669, 33.307522, 36.636337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217940, -0.382948, 0.897693,
		0.901833, -0.430645, 0.035236,
		0.373094, 0.817249, 0.439210,
		34.464596, 33.552696, 36.768101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682903, 32.725945, 36.909409>,  <34.203430, 32.980621, 36.460651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682903, 32.725945, 36.909409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.611027, 33.080177, 37.080734>,  <34.567902, 33.292717, 37.183529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.611027, 33.080177, 37.080734>,  <34.682903, 32.725945, 36.909409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611027, 33.080177, 37.080734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150796, -0.455054, 0.877602,
		0.972097, 0.093107, 0.215311,
		-0.179689, 0.885583, 0.428316,
		34.557121, 33.345852, 37.209229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146126, 32.738731, 37.429680>,  <34.682903, 32.725945, 36.909409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146126, 32.738731, 37.429680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.847862, 32.989017, 37.521313>,  <34.668903, 33.139191, 37.576290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.847862, 32.989017, 37.521313>,  <35.146126, 32.738731, 37.429680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847862, 32.989017, 37.521313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004397, -0.339162, 0.940718,
		0.666317, 0.702459, 0.250147,
		-0.745656, 0.625716, 0.229078,
		34.624165, 33.176731, 37.590034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400021, 32.967644, 38.028725>,  <35.146126, 32.738731, 37.429680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400021, 32.967644, 38.028725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.015453, 33.077480, 38.022034>,  <34.784714, 33.143383, 38.018021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.015453, 33.077480, 38.022034>,  <35.400021, 32.967644, 38.028725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015453, 33.077480, 38.022034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085993, -0.242211, 0.966405,
		0.261311, 0.930556, 0.256478,
		-0.961416, 0.274588, -0.016729,
		34.727028, 33.159855, 38.017014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381813, 33.414536, 38.653839>,  <35.400021, 32.967644, 38.028725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381813, 33.414536, 38.653839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.018074, 33.288586, 38.545074>,  <34.799831, 33.213017, 38.479816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.018074, 33.288586, 38.545074>,  <35.381813, 33.414536, 38.653839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018074, 33.288586, 38.545074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163892, -0.329605, 0.929785,
		-0.382391, 0.890063, 0.248121,
		-0.909349, -0.314877, -0.271912,
		34.745270, 33.194122, 38.463501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899342, 33.740200, 39.155758>,  <35.381813, 33.414536, 38.653839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899342, 33.740200, 39.155758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.728073, 33.410538, 39.007465>,  <34.625313, 33.212742, 38.918491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.728073, 33.410538, 39.007465>,  <34.899342, 33.740200, 39.155758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728073, 33.410538, 39.007465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198165, -0.314629, 0.928299,
		-0.881703, 0.470938, -0.028602,
		-0.428172, -0.824152, -0.370733,
		34.599621, 33.163292, 38.896244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623802, 33.515991, 39.784172>,  <34.899342, 33.740200, 39.155758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623802, 33.515991, 39.784172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.572426, 33.207806, 39.534409>,  <34.541599, 33.022896, 39.384548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.572426, 33.207806, 39.534409>,  <34.623802, 33.515991, 39.784172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572426, 33.207806, 39.534409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206608, -0.595023, 0.776698,
		-0.969956, 0.228771, -0.082756,
		-0.128445, -0.770461, -0.624412,
		34.533894, 32.976665, 39.347084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945393, 33.979706, 39.811726>,  <34.623802, 33.515991, 39.784172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945393, 33.979706, 39.811726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.325279, 34.055511, 39.911430>,  <34.553211, 34.100994, 39.971252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.325279, 34.055511, 39.911430>,  <33.945393, 33.979706, 39.811726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325279, 34.055511, 39.911430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099821, 0.937751, -0.332654,
		-0.296786, 0.291044, 0.909512,
		0.949712, 0.189515, 0.249259,
		34.610191, 34.112366, 39.986210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030533, 34.592854, 40.211311>,  <33.945393, 33.979706, 39.811726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030533, 34.592854, 40.211311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.373901, 34.543392, 40.012180>,  <34.579922, 34.513714, 39.892704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.373901, 34.543392, 40.012180>,  <34.030533, 34.592854, 40.211311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373901, 34.543392, 40.012180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068139, 0.934421, -0.349592,
		0.508404, 0.334018, 0.793699,
		0.858419, -0.123652, -0.497823,
		34.631428, 34.506298, 39.862835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569759, 35.150658, 40.455452>,  <34.030533, 34.592854, 40.211311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569759, 35.150658, 40.455452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.664490, 35.011032, 40.092781>,  <34.721329, 34.927258, 39.875179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.664490, 35.011032, 40.092781>,  <34.569759, 35.150658, 40.455452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664490, 35.011032, 40.092781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260054, 0.876399, -0.405336,
		0.936101, 0.331779, 0.116776,
		0.236824, -0.349067, -0.906679,
		34.735538, 34.906311, 39.820778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187019, 35.568012, 40.266174>,  <34.569759, 35.150658, 40.455452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187019, 35.568012, 40.266174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.052452, 35.416611, 39.921257>,  <34.971710, 35.325768, 39.714306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.052452, 35.416611, 39.921257>,  <35.187019, 35.568012, 40.266174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052452, 35.416611, 39.921257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038196, 0.920399, -0.389110,
		0.940936, -0.097970, -0.324102,
		-0.336424, -0.378507, -0.862294,
		34.951527, 35.303059, 39.662567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579727, 35.873775, 39.768703>,  <35.187019, 35.568012, 40.266174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579727, 35.873775, 39.768703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.240845, 35.758850, 39.589958>,  <35.037514, 35.689896, 39.482712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.240845, 35.758850, 39.589958>,  <35.579727, 35.873775, 39.768703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240845, 35.758850, 39.589958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045985, 0.877645, -0.477100,
		0.529265, -0.383655, -0.756761,
		-0.847209, -0.287312, -0.446864,
		34.986683, 35.672657, 39.455898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749172, 35.860794, 39.111305>,  <35.579727, 35.873775, 39.768703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749172, 35.860794, 39.111305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.352837, 35.884102, 39.062576>,  <35.115036, 35.898087, 39.033340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.352837, 35.884102, 39.062576>,  <35.749172, 35.860794, 39.111305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352837, 35.884102, 39.062576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116965, 0.821196, -0.558530,
		0.067490, -0.567663, -0.820490,
		-0.990840, 0.058273, -0.121819,
		35.055584, 35.901585, 39.026031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637444, 35.898041, 38.397072>,  <35.749172, 35.860794, 39.111305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637444, 35.898041, 38.397072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.305546, 36.040516, 38.568962>,  <35.106407, 36.125999, 38.672096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.305546, 36.040516, 38.568962>,  <35.637444, 35.898041, 38.397072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305546, 36.040516, 38.568962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024583, 0.745837, -0.665674,
		-0.557607, -0.562901, -0.610095,
		-0.829741, 0.356187, 0.429722,
		35.056625, 36.147373, 38.697880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.219124, 36.011909, 37.854790>,  <35.637444, 35.898041, 38.397072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.219124, 36.011909, 37.854790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.050396, 36.240917, 38.136013>,  <34.949162, 36.378323, 38.304749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.050396, 36.240917, 38.136013>,  <35.219124, 36.011909, 37.854790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050396, 36.240917, 38.136013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001475, 0.775852, -0.630913,
		-0.906680, -0.265093, -0.328112,
		-0.421817, 0.572520, 0.703058,
		34.923851, 36.412674, 38.346931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757969, 36.457138, 37.479408>,  <35.219124, 36.011909, 37.854790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757969, 36.457138, 37.479408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.850437, 36.648682, 37.818172>,  <34.905918, 36.763607, 38.021431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.850437, 36.648682, 37.818172>,  <34.757969, 36.457138, 37.479408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850437, 36.648682, 37.818172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083969, 0.857419, -0.507722,
		-0.969283, 0.188485, 0.158002,
		0.231172, 0.478859, 0.846908,
		34.919788, 36.792339, 38.072247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369377, 37.039722, 37.423016>,  <34.757969, 36.457138, 37.479408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.369377, 37.039722, 37.423016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.643517, 37.121078, 37.702709>,  <34.807999, 37.169891, 37.870525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.643517, 37.121078, 37.702709>,  <34.369377, 37.039722, 37.423016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643517, 37.121078, 37.702709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263662, 0.825752, -0.498614,
		-0.678808, 0.526086, 0.512302,
		0.685348, 0.203388, 0.699236,
		34.849121, 37.182095, 37.912479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307346, 37.741821, 37.503235>,  <34.369377, 37.039722, 37.423016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307346, 37.741821, 37.503235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.671246, 37.644127, 37.637516>,  <34.889587, 37.585510, 37.718086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.671246, 37.644127, 37.637516>,  <34.307346, 37.741821, 37.503235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671246, 37.644127, 37.637516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371398, 0.840148, -0.395240,
		-0.185510, 0.484251, 0.855037,
		0.909752, -0.244238, 0.335705,
		34.944172, 37.570854, 37.738228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522923, 38.307568, 37.917774>,  <34.307346, 37.741821, 37.503235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522923, 38.307568, 37.917774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.830673, 38.102581, 37.765228>,  <35.015324, 37.979588, 37.673702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.830673, 38.102581, 37.765228>,  <34.522923, 38.307568, 37.917774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830673, 38.102581, 37.765228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308295, 0.820755, -0.480953,
		0.559476, 0.252463, 0.789461,
		0.769377, -0.512468, -0.381360,
		35.061485, 37.948841, 37.650822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965839, 38.792316, 37.776081>,  <34.522923, 38.307568, 37.917774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965839, 38.792316, 37.776081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.142826, 38.493507, 37.577618>,  <35.249020, 38.314220, 37.458538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.142826, 38.493507, 37.577618>,  <34.965839, 38.792316, 37.776081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142826, 38.493507, 37.577618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544318, 0.663414, -0.513420,
		0.712697, -0.042897, 0.700159,
		0.442471, -0.747022, -0.496162,
		35.275566, 38.269402, 37.428768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649235, 38.946621, 37.826336>,  <34.965839, 38.792316, 37.776081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649235, 38.946621, 37.826336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.623138, 38.684879, 37.524986>,  <35.607483, 38.527836, 37.344177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.623138, 38.684879, 37.524986>,  <35.649235, 38.946621, 37.826336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623138, 38.684879, 37.524986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627800, 0.559925, -0.540695,
		0.775636, -0.508241, 0.374272,
		-0.065239, -0.654350, -0.753372,
		35.603565, 38.488575, 37.298973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355747, 38.774822, 37.606667>,  <35.649235, 38.946621, 37.826336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355747, 38.774822, 37.606667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.112793, 38.679310, 37.303596>,  <35.967022, 38.622002, 37.121754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.112793, 38.679310, 37.303596>,  <36.355747, 38.774822, 37.606667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112793, 38.679310, 37.303596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471398, 0.659360, -0.585687,
		0.639427, -0.712903, -0.287927,
		-0.607386, -0.238776, -0.757673,
		35.930576, 38.607677, 37.076294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770950, 38.878315, 37.017288>,  <36.355747, 38.774822, 37.606667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770950, 38.878315, 37.017288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.397949, 38.868595, 36.873154>,  <36.174149, 38.862762, 36.786674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.397949, 38.868595, 36.873154>,  <36.770950, 38.878315, 37.017288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397949, 38.868595, 36.873154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265493, 0.630278, -0.729564,
		0.244839, -0.775990, -0.581287,
		-0.932506, -0.024298, -0.360335,
		36.118198, 38.861305, 36.765053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858112, 38.751869, 36.230564>,  <36.770950, 38.878315, 37.017288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858112, 38.751869, 36.230564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.498009, 38.908154, 36.307381>,  <36.281948, 39.001926, 36.353470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.498009, 38.908154, 36.307381>,  <36.858112, 38.751869, 36.230564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498009, 38.908154, 36.307381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155179, 0.700121, -0.696958,
		-0.406766, -0.597639, -0.690918,
		-0.900256, 0.390715, 0.192045,
		36.227932, 39.025368, 36.364994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687702, 38.955956, 35.636192>,  <36.858112, 38.751869, 36.230564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687702, 38.955956, 35.636192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.411385, 39.156925, 35.844181>,  <36.245594, 39.277508, 35.968975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.411385, 39.156925, 35.844181>,  <36.687702, 38.955956, 35.636192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411385, 39.156925, 35.844181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207354, 0.826589, -0.523216,
		-0.692682, -0.253616, -0.675182,
		-0.690794, 0.502424, 0.519975,
		36.204147, 39.307652, 36.000172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215611, 39.293427, 35.169834>,  <36.687702, 38.955956, 35.636192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215611, 39.293427, 35.169834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.215878, 39.500328, 35.512165>,  <36.216038, 39.624470, 35.717564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.215878, 39.500328, 35.512165>,  <36.215611, 39.293427, 35.169834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215878, 39.500328, 35.512165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283675, 0.820575, -0.496170,
		-0.958920, 0.243111, -0.146182,
		0.000671, 0.517256, 0.855831,
		36.216080, 39.655506, 35.768913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959888, 39.916737, 35.065094>,  <36.215611, 39.293427, 35.169834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959888, 39.916737, 35.065094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.122005, 40.044708, 35.407646>,  <36.219276, 40.121490, 35.613178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.122005, 40.044708, 35.407646>,  <35.959888, 39.916737, 35.065094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122005, 40.044708, 35.407646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214797, 0.877215, -0.429367,
		-0.888593, 0.357968, 0.286811,
		0.405295, 0.319927, 0.856378,
		36.243595, 40.140686, 35.664558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769436, 40.643173, 35.154663>,  <35.959888, 39.916737, 35.065094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769436, 40.643173, 35.154663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.059330, 40.617897, 35.429115>,  <36.233265, 40.602734, 35.593784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.059330, 40.617897, 35.429115>,  <35.769436, 40.643173, 35.154663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059330, 40.617897, 35.429115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380018, 0.867299, -0.321527,
		-0.574762, 0.493761, 0.652570,
		0.724731, -0.063187, 0.686129,
		36.276749, 40.598942, 35.634953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881172, 41.334167, 35.406544>,  <35.769436, 40.643173, 35.154663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881172, 41.334167, 35.406544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.220692, 41.137211, 35.483574>,  <36.424404, 41.019035, 35.529793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.220692, 41.137211, 35.483574>,  <35.881172, 41.334167, 35.406544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220692, 41.137211, 35.483574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527137, 0.816227, -0.236431,
		-0.040772, 0.302199, 0.952373,
		0.848802, -0.492391, 0.192580,
		36.475334, 40.989494, 35.541348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232536, 41.766140, 35.825298>,  <35.881172, 41.334167, 35.406544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232536, 41.766140, 35.825298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.503704, 41.520576, 35.663532>,  <36.666405, 41.373238, 35.566471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.503704, 41.520576, 35.663532>,  <36.232536, 41.766140, 35.825298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503704, 41.520576, 35.663532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508882, 0.788892, -0.344511,
		0.530536, 0.027751, 0.847208,
		0.677916, -0.613905, -0.404414,
		36.707077, 41.336407, 35.542210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863445, 42.022381, 35.984802>,  <36.232536, 41.766140, 35.825298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863445, 42.022381, 35.984802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.934914, 41.790573, 35.666748>,  <36.977795, 41.651489, 35.475918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.934914, 41.790573, 35.666748>,  <36.863445, 42.022381, 35.984802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934914, 41.790573, 35.666748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581876, 0.713905, -0.389564,
		0.793408, -0.393062, 0.464765,
		0.178675, -0.579519, -0.795131,
		36.988518, 41.616718, 35.428207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610828, 42.130573, 35.807926>,  <36.863445, 42.022381, 35.984802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610828, 42.130573, 35.807926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.455788, 41.980865, 35.470955>,  <37.362762, 41.891041, 35.268772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.455788, 41.980865, 35.470955>,  <37.610828, 42.130573, 35.807926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455788, 41.980865, 35.470955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559777, 0.630521, -0.537674,
		0.732404, -0.679976, -0.034884,
		-0.387601, -0.374267, -0.842431,
		37.339508, 41.868584, 35.218227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116169, 41.950928, 35.342331>,  <37.610828, 42.130573, 35.807926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116169, 41.950928, 35.342331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.782890, 42.032433, 35.136707>,  <37.582924, 42.081337, 35.013332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.782890, 42.032433, 35.136707>,  <38.116169, 41.950928, 35.342331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782890, 42.032433, 35.136707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502988, 0.665501, -0.551463,
		0.229742, -0.718046, -0.656984,
		-0.833200, 0.203761, -0.514063,
		37.532932, 42.093559, 34.982487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357063, 42.145966, 34.727100>,  <38.116169, 41.950928, 35.342331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357063, 42.145966, 34.727100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.980034, 42.278973, 34.739719>,  <37.753819, 42.358776, 34.747292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.980034, 42.278973, 34.739719>,  <38.357063, 42.145966, 34.727100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980034, 42.278973, 34.739719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267138, 0.807181, -0.526399,
		-0.200500, -0.487741, -0.849652,
		-0.942569, 0.332518, 0.031545,
		37.697262, 42.378727, 34.749184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870594, 41.866119, 34.207764>,  <38.357063, 42.145966, 34.727100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870594, 41.866119, 34.207764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.261108, 41.842548, 34.291096>,  <39.495415, 41.828407, 34.341095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.261108, 41.842548, 34.291096>,  <38.870594, 41.866119, 34.207764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261108, 41.842548, 34.291096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156134, -0.858230, 0.488941,
		0.149985, -0.509871, -0.847075,
		0.976282, -0.058923, 0.208330,
		39.553993, 41.824871, 34.353596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134510, 41.199837, 34.029255>,  <38.870594, 41.866119, 34.207764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134510, 41.199837, 34.029255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.387562, 41.356182, 34.296688>,  <39.539394, 41.449989, 34.457150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.387562, 41.356182, 34.296688>,  <39.134510, 41.199837, 34.029255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387562, 41.356182, 34.296688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081806, -0.824740, 0.559564,
		0.770123, -0.408690, -0.489778,
		0.632628, 0.390866, 0.668585,
		39.577351, 41.473442, 34.497265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481113, 40.626072, 34.283756>,  <39.134510, 41.199837, 34.029255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481113, 40.626072, 34.283756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.565132, 40.903366, 34.559525>,  <39.615543, 41.069744, 34.724987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.565132, 40.903366, 34.559525>,  <39.481113, 40.626072, 34.283756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565132, 40.903366, 34.559525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017197, -0.707664, 0.706340,
		0.977541, -0.136506, -0.160562,
		0.210043, 0.693237, 0.689423,
		39.628143, 41.111336, 34.766350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149818, 40.448959, 34.505146>,  <39.481113, 40.626072, 34.283756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.149818, 40.448959, 34.505146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.964970, 40.670670, 34.782047>,  <39.854061, 40.803696, 34.948189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.964970, 40.670670, 34.782047>,  <40.149818, 40.448959, 34.505146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964970, 40.670670, 34.782047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148523, -0.817956, 0.555777,
		0.874289, 0.154023, 0.460322,
		-0.462126, 0.554278, 0.692254,
		39.826332, 40.836952, 34.989723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514801, 40.293823, 35.131256>,  <40.149818, 40.448959, 34.505146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514801, 40.293823, 35.131256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.183460, 40.461620, 35.279774>,  <39.984657, 40.562298, 35.368885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.183460, 40.461620, 35.279774>,  <40.514801, 40.293823, 35.131256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183460, 40.461620, 35.279774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137757, -0.794960, 0.590814,
		0.543008, 0.438253, 0.716294,
		-0.828351, 0.419491, 0.371297,
		39.934956, 40.587467, 35.391163>
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
