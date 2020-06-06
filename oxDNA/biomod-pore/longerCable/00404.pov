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
	<23.987766, 34.839870, 35.149010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.183977, 35.160603, 35.012512>,  <24.301702, 35.353043, 34.930614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.183977, 35.160603, 35.012512>,  <23.987766, 34.839870, 35.149010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.183977, 35.160603, 35.012512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365633, -0.544836, -0.754629,
		-0.791010, 0.245393, -0.560433,
		0.490525, 0.801833, -0.341247,
		24.331135, 35.401154, 34.910137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.349722, 34.356339, 35.541187>,  <23.987766, 34.839870, 35.149010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.349722, 34.356339, 35.541187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.730818, 34.426273, 35.441811>,  <24.959475, 34.468235, 35.382183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.730818, 34.426273, 35.441811>,  <24.349722, 34.356339, 35.541187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.730818, 34.426273, 35.441811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225006, 0.955573, -0.190402,
		0.204116, 0.237304, 0.949749,
		0.952738, 0.174835, -0.248442,
		25.016640, 34.478725, 35.367279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.571920, 34.977730, 35.757343>,  <24.349722, 34.356339, 35.541187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.571920, 34.977730, 35.757343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.810923, 34.896164, 35.447140>,  <24.954323, 34.847225, 35.261017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.810923, 34.896164, 35.447140>,  <24.571920, 34.977730, 35.757343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.810923, 34.896164, 35.447140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081645, 0.946628, -0.311817,
		0.797699, 0.249628, 0.548965,
		0.597504, -0.203915, -0.775505,
		24.990173, 34.834988, 35.214489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.164162, 35.421513, 35.715118>,  <24.571920, 34.977730, 35.757343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.164162, 35.421513, 35.715118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.153782, 35.306702, 35.332088>,  <25.147554, 35.237816, 35.102272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.153782, 35.306702, 35.332088>,  <25.164162, 35.421513, 35.715118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.153782, 35.306702, 35.332088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021493, 0.957833, -0.286519,
		0.999432, 0.013146, -0.031025,
		-0.025950, -0.287023, -0.957572,
		25.145996, 35.220596, 35.044815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.426161, 36.024529, 35.460499>,  <25.164162, 35.421513, 35.715118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.426161, 36.024529, 35.460499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.255976, 35.826221, 35.157661>,  <25.153866, 35.707237, 34.975960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.255976, 35.826221, 35.157661>,  <25.426161, 36.024529, 35.460499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.255976, 35.826221, 35.157661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094309, 0.856327, -0.507750,
		0.900049, -0.144627, -0.411090,
		-0.425462, -0.495769, -0.757096,
		25.128338, 35.677490, 34.930531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.852076, 35.922577, 34.801380>,  <25.426161, 36.024529, 35.460499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.852076, 35.922577, 34.801380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.462303, 36.002396, 34.760078>,  <25.228439, 36.050289, 34.735298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.462303, 36.002396, 34.760078>,  <25.852076, 35.922577, 34.801380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.462303, 36.002396, 34.760078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223413, 0.909314, -0.351049,
		0.023840, -0.365142, -0.930646,
		-0.974432, 0.199549, -0.103256,
		25.169973, 36.062260, 34.729103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.633345, 36.111732, 34.102394>,  <25.852076, 35.922577, 34.801380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.633345, 36.111732, 34.102394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.374733, 36.289822, 34.350193>,  <25.219566, 36.396675, 34.498871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.374733, 36.289822, 34.350193>,  <25.633345, 36.111732, 34.102394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.374733, 36.289822, 34.350193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124765, 0.862813, -0.489885,
		-0.752618, -0.239433, -0.613382,
		-0.646528, 0.445226, 0.619496,
		25.180775, 36.423389, 34.536041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.157009, 36.566719, 33.838020>,  <25.633345, 36.111732, 34.102394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.157009, 36.566719, 33.838020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.222248, 36.685558, 34.214348>,  <25.261391, 36.756863, 34.440144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.222248, 36.685558, 34.214348>,  <25.157009, 36.566719, 33.838020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.222248, 36.685558, 34.214348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280272, 0.900346, -0.332902,
		-0.945964, 0.317979, 0.063576,
		0.163097, 0.297095, 0.940816,
		25.271177, 36.774685, 34.496593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.942190, 37.235458, 33.869438>,  <25.157009, 36.566719, 33.838020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.942190, 37.235458, 33.869438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.176859, 37.237949, 34.193359>,  <25.317659, 37.239445, 34.387711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.176859, 37.237949, 34.193359>,  <24.942190, 37.235458, 33.869438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.176859, 37.237949, 34.193359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357395, 0.895329, -0.265808,
		-0.726696, 0.445361, 0.523035,
		0.586670, 0.006231, 0.809802,
		25.352859, 37.239819, 34.436298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.027325, 37.881351, 34.081783>,  <24.942190, 37.235458, 33.869438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.027325, 37.881351, 34.081783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.336611, 37.701679, 34.260834>,  <25.522182, 37.593876, 34.368263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.336611, 37.701679, 34.260834>,  <25.027325, 37.881351, 34.081783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.336611, 37.701679, 34.260834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580349, 0.785748, -0.213996,
		-0.255601, 0.425246, 0.868236,
		0.773216, -0.449183, 0.447629,
		25.568575, 37.566925, 34.395123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.381535, 38.462566, 34.352959>,  <25.027325, 37.881351, 34.081783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.381535, 38.462566, 34.352959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.651358, 38.167309, 34.357151>,  <25.813251, 37.990154, 34.359665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.651358, 38.167309, 34.357151>,  <25.381535, 38.462566, 34.352959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.651358, 38.167309, 34.357151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709656, 0.644478, -0.284669,
		0.203373, 0.199464, 0.958569,
		0.674558, -0.738148, 0.010481,
		25.853725, 37.945866, 34.360294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.974932, 38.456318, 34.773693>,  <25.381535, 38.462566, 34.352959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.974932, 38.456318, 34.773693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.107956, 38.245743, 34.460705>,  <26.187771, 38.119396, 34.272911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.107956, 38.245743, 34.460705>,  <25.974932, 38.456318, 34.773693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.107956, 38.245743, 34.460705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629097, 0.741959, -0.231807,
		0.702595, -0.415162, 0.577928,
		0.332561, -0.526439, -0.782474,
		26.207724, 38.087811, 34.225964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.707668, 38.529018, 34.734310>,  <25.974932, 38.456318, 34.773693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.707668, 38.529018, 34.734310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.555178, 38.446930, 34.373745>,  <26.463684, 38.397675, 34.157406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.555178, 38.446930, 34.373745>,  <26.707668, 38.529018, 34.734310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.555178, 38.446930, 34.373745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545984, 0.736861, -0.398669,
		0.746034, -0.644142, -0.168862,
		-0.381228, -0.205225, -0.901415,
		26.440809, 38.385361, 34.103321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.249771, 38.437695, 34.263588>,  <26.707668, 38.529018, 34.734310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.249771, 38.437695, 34.263588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.958595, 38.607147, 34.047943>,  <26.783890, 38.708817, 33.918556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.958595, 38.607147, 34.047943>,  <27.249771, 38.437695, 34.263588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.958595, 38.607147, 34.047943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619896, 0.742616, -0.253478,
		0.292972, -0.518709, -0.803186,
		-0.727940, 0.423630, -0.539111,
		26.740213, 38.734238, 33.886211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.212370, 38.134132, 33.657063>,  <27.249771, 38.437695, 34.263588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.212370, 38.134132, 33.657063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.420755, 38.355194, 33.396858>,  <27.545786, 38.487831, 33.240734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.420755, 38.355194, 33.396858>,  <27.212370, 38.134132, 33.657063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.420755, 38.355194, 33.396858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176966, -0.675611, -0.715704,
		-0.835033, 0.487974, -0.254167,
		0.520964, 0.552658, -0.650512,
		27.577044, 38.520992, 33.201706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.797506, 37.412514, 33.830475>,  <27.212370, 38.134132, 33.657063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.797506, 37.412514, 33.830475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.635592, 37.651562, 34.107315>,  <26.538443, 37.794991, 34.273418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.635592, 37.651562, 34.107315>,  <26.797506, 37.412514, 33.830475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.635592, 37.651562, 34.107315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627203, -0.732227, 0.265442,
		0.665405, -0.326637, 0.671226,
		-0.404786, 0.597621, 0.692096,
		26.514156, 37.830849, 34.314945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.708460, 36.961384, 34.430241>,  <26.797506, 37.412514, 33.830475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.708460, 36.961384, 34.430241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.447626, 37.264641, 34.430592>,  <26.291126, 37.446594, 34.430801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.447626, 37.264641, 34.430592>,  <26.708460, 36.961384, 34.430241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.447626, 37.264641, 34.430592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680394, -0.585716, 0.440455,
		0.334442, 0.286618, 0.897774,
		-0.652083, 0.758147, 0.000875,
		26.252001, 37.492085, 34.430855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.604233, 37.026402, 35.041702>,  <26.708460, 36.961384, 34.430241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.604233, 37.026402, 35.041702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.297478, 37.189636, 34.843571>,  <26.113424, 37.287579, 34.724693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.297478, 37.189636, 34.843571>,  <26.604233, 37.026402, 35.041702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.297478, 37.189636, 34.843571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628244, -0.635051, 0.449467,
		-0.131135, 0.655876, 0.743391,
		-0.766885, 0.408090, -0.495328,
		26.067411, 37.312061, 34.694973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.124537, 37.078590, 35.556042>,  <26.604233, 37.026402, 35.041702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.124537, 37.078590, 35.556042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.913990, 37.118992, 35.218346>,  <25.787663, 37.143234, 35.015728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.913990, 37.118992, 35.218346>,  <26.124537, 37.078590, 35.556042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.913990, 37.118992, 35.218346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649765, -0.688200, 0.322779,
		-0.548402, 0.718456, 0.427874,
		-0.526366, 0.101005, -0.844238,
		25.756081, 37.149292, 34.965073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.340015, 37.231888, 35.695030>,  <26.124537, 37.078590, 35.556042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.340015, 37.231888, 35.695030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.357327, 37.063900, 35.332428>,  <25.367714, 36.963108, 35.114868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.357327, 37.063900, 35.332428>,  <25.340015, 37.231888, 35.695030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.357327, 37.063900, 35.332428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654825, -0.697203, 0.291740,
		-0.754540, 0.580976, -0.305182,
		0.043280, -0.419970, -0.906506,
		25.370310, 36.937908, 35.060478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.678617, 36.853592, 35.417103>,  <25.340015, 37.231888, 35.695030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.678617, 36.853592, 35.417103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.738913, 36.900707, 35.024490>,  <24.775089, 36.928974, 34.788921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.738913, 36.900707, 35.024490>,  <24.678617, 36.853592, 35.417103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.738913, 36.900707, 35.024490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134520, -0.981198, -0.138404,
		-0.979379, 0.152898, -0.132059,
		0.150738, 0.117786, -0.981532,
		24.784134, 36.936043, 34.730030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.136938, 36.593121, 35.154621>,  <24.678617, 36.853592, 35.417103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.136938, 36.593121, 35.154621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.463348, 36.591541, 34.923420>,  <24.659195, 36.590595, 34.784698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.463348, 36.591541, 34.923420>,  <24.136938, 36.593121, 35.154621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.463348, 36.591541, 34.923420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082124, -0.990624, -0.109176,
		-0.572152, 0.136558, -0.808699,
		0.816025, -0.003948, -0.578003,
		24.708157, 36.590359, 34.750019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.912210, 36.281223, 34.452866>,  <24.136938, 36.593121, 35.154621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.912210, 36.281223, 34.452866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.296675, 36.237579, 34.554268>,  <24.527353, 36.211391, 34.615108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.296675, 36.237579, 34.554268>,  <23.912210, 36.281223, 34.452866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.296675, 36.237579, 34.554268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065358, -0.982391, -0.175033,
		0.268138, 0.151667, -0.951367,
		0.961161, -0.109112, 0.253503,
		24.585024, 36.204845, 34.630318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.050608, 35.676445, 34.224812>,  <23.912210, 36.281223, 34.452866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.050608, 35.676445, 34.224812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.418926, 35.778755, 34.342598>,  <24.639917, 35.840141, 34.413269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.418926, 35.778755, 34.342598>,  <24.050608, 35.676445, 34.224812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.418926, 35.778755, 34.342598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304201, -0.943456, -0.131732,
		0.244124, 0.210876, -0.946538,
		0.920796, 0.255778, 0.294469,
		24.695166, 35.855488, 34.430939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.623079, 35.268967, 33.822731>,  <24.050608, 35.676445, 34.224812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.623079, 35.268967, 33.822731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.772532, 35.380909, 34.176472>,  <24.862204, 35.448074, 34.388718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.772532, 35.380909, 34.176472>,  <24.623079, 35.268967, 33.822731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.772532, 35.380909, 34.176472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275178, -0.943923, 0.182447,
		0.885819, 0.175186, -0.429691,
		0.373633, 0.279856, 0.884352,
		24.884621, 35.464867, 34.441776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.099133, 34.774418, 33.858315>,  <24.623079, 35.268967, 33.822731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.099133, 34.774418, 33.858315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.087597, 34.928127, 34.227425>,  <25.080675, 35.020351, 34.448891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.087597, 34.928127, 34.227425>,  <25.099133, 34.774418, 33.858315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.087597, 34.928127, 34.227425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250184, -0.890997, 0.378857,
		0.967769, 0.241789, -0.070442,
		-0.028839, 0.384269, 0.922771,
		25.078945, 35.043407, 34.504257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.715809, 34.487907, 34.201767>,  <25.099133, 34.774418, 33.858315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.715809, 34.487907, 34.201767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.452864, 34.586548, 34.486599>,  <25.295095, 34.645733, 34.657497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.452864, 34.586548, 34.486599>,  <25.715809, 34.487907, 34.201767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.452864, 34.586548, 34.486599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143742, -0.886556, 0.439723,
		0.739737, 0.391414, 0.547343,
		-0.657364, 0.246603, 0.712081,
		25.255655, 34.660530, 34.700222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.095978, 34.473316, 34.926769>,  <25.715809, 34.487907, 34.201767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.095978, 34.473316, 34.926769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.701675, 34.406818, 34.936951>,  <25.465094, 34.366920, 34.943058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.701675, 34.406818, 34.936951>,  <26.095978, 34.473316, 34.926769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.701675, 34.406818, 34.936951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161893, -0.897001, 0.411315,
		-0.045545, 0.409577, 0.911138,
		-0.985757, -0.166240, 0.025454,
		25.405949, 34.356945, 34.944588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.765306, 34.322929, 34.497650>,  <26.095978, 34.473316, 34.926769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.765306, 34.322929, 34.497650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.787374, 34.722267, 34.504051>,  <26.800615, 34.961872, 34.507893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.787374, 34.722267, 34.504051>,  <26.765306, 34.322929, 34.497650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.787374, 34.722267, 34.504051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940561, -0.046584, -0.336415,
		-0.335114, 0.033611, -0.941578,
		0.055170, 0.998349, 0.016002,
		26.803925, 35.021770, 34.508850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.151894, 34.518856, 33.935970>,  <26.765306, 34.322929, 34.497650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.151894, 34.518856, 33.935970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.182257, 34.832600, 34.182228>,  <27.200474, 35.020847, 34.329983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.182257, 34.832600, 34.182228>,  <27.151894, 34.518856, 33.935970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.182257, 34.832600, 34.182228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951868, 0.126882, -0.279014,
		-0.296962, 0.607190, -0.736976,
		0.075905, 0.784361, 0.615644,
		27.205029, 35.067909, 34.366920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.446140, 34.906952, 33.507294>,  <27.151894, 34.518856, 33.935970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.446140, 34.906952, 33.507294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.527388, 35.015255, 33.883682>,  <27.576136, 35.080238, 34.109516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.527388, 35.015255, 33.883682>,  <27.446140, 34.906952, 33.507294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.527388, 35.015255, 33.883682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970006, 0.075413, -0.231086,
		-0.133530, 0.959689, -0.247320,
		0.203119, 0.270759, 0.940974,
		27.588324, 35.096481, 34.165974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.838326, 35.535805, 33.523098>,  <27.446140, 34.906952, 33.507294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.838326, 35.535805, 33.523098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.918163, 35.331173, 33.857391>,  <27.966066, 35.208393, 34.057968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.918163, 35.331173, 33.857391>,  <27.838326, 35.535805, 33.523098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.918163, 35.331173, 33.857391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973724, 0.008111, -0.227588,
		0.109651, 0.859197, 0.499758,
		0.199596, -0.511581, 0.835731,
		27.978043, 35.177700, 34.108112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.452091, 35.835564, 33.784233>,  <27.838326, 35.535805, 33.523098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.452091, 35.835564, 33.784233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.420906, 35.475830, 33.956337>,  <28.402195, 35.259991, 34.059601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.420906, 35.475830, 33.956337>,  <28.452091, 35.835564, 33.784233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.420906, 35.475830, 33.956337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950150, -0.197713, -0.241091,
		0.301889, 0.390017, 0.869914,
		-0.077964, -0.899331, 0.430262,
		28.397516, 35.206032, 34.085415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.000010, 35.735062, 34.292137>,  <28.452091, 35.835564, 33.784233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.000010, 35.735062, 34.292137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.901537, 35.352497, 34.229317>,  <28.842453, 35.122959, 34.191624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.901537, 35.352497, 34.229317>,  <29.000010, 35.735062, 34.292137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.901537, 35.352497, 34.229317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969223, -0.242623, -0.041736,
		0.001812, -0.162495, 0.986708,
		-0.246180, -0.956415, -0.157054,
		28.827682, 35.065571, 34.182201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144878, 35.319069, 34.935783>,  <29.000010, 35.735062, 34.292137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144878, 35.319069, 34.935783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152664, 35.105537, 34.597633>,  <29.157335, 34.977421, 34.394745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152664, 35.105537, 34.597633>,  <29.144878, 35.319069, 34.935783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.152664, 35.105537, 34.597633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911555, -0.337864, 0.234337,
		-0.410715, -0.775163, 0.480037,
		0.019462, -0.533826, -0.845370,
		29.158503, 34.945389, 34.344021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.313335, 34.558235, 35.116093>,  <29.144878, 35.319069, 34.935783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.313335, 34.558235, 35.116093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.141115, 34.360935, 34.813747>,  <29.037783, 34.242558, 34.632339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.141115, 34.360935, 34.813747>,  <29.313335, 34.558235, 35.116093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.141115, 34.360935, 34.813747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893018, -0.354296, -0.277476,
		-0.130937, -0.794470, 0.593020,
		-0.430551, -0.493246, -0.755867,
		29.011950, 34.212963, 34.586987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.346613, 33.805351, 35.180210>,  <29.313335, 34.558235, 35.116093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.346613, 33.805351, 35.180210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.340448, 33.928280, 34.799618>,  <29.336750, 34.002037, 34.571262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.340448, 33.928280, 34.799618>,  <29.346613, 33.805351, 35.180210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.340448, 33.928280, 34.799618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857517, -0.485330, -0.170647,
		-0.514225, -0.818540, -0.256054,
		-0.015410, 0.307322, -0.951481,
		29.335825, 34.020477, 34.514172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.473890, 33.195450, 34.697033>,  <29.346613, 33.805351, 35.180210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.473890, 33.195450, 34.697033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.586363, 33.532810, 34.513897>,  <29.653847, 33.735226, 34.404015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.586363, 33.532810, 34.513897>,  <29.473890, 33.195450, 34.697033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.586363, 33.532810, 34.513897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900823, -0.396443, -0.177061,
		-0.330841, -0.362649, -0.871223,
		0.281179, 0.843397, -0.457842,
		29.670717, 33.785828, 34.376545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.848074, 33.025799, 34.086823>,  <29.473890, 33.195450, 34.697033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.848074, 33.025799, 34.086823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.957722, 33.394623, 34.196125>,  <30.023510, 33.615917, 34.261707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.957722, 33.394623, 34.196125>,  <29.848074, 33.025799, 34.086823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.957722, 33.394623, 34.196125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953005, -0.222335, -0.205790,
		-0.128996, 0.316824, -0.939672,
		0.274121, 0.922057, 0.273254,
		30.039957, 33.671242, 34.278103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563091, 32.783878, 33.827175>,  <29.848074, 33.025799, 34.086823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563091, 32.783878, 33.827175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.746761, 33.088387, 33.644035>,  <30.856962, 33.271091, 33.534153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.746761, 33.088387, 33.644035>,  <30.563091, 32.783878, 33.827175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.746761, 33.088387, 33.644035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601748, 0.645679, 0.470104,
		0.653494, 0.059640, 0.754579,
		0.459178, 0.761276, -0.457835,
		30.884514, 33.316769, 33.506683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.833445, 33.228958, 34.320518>,  <30.563091, 32.783878, 33.827175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.833445, 33.228958, 34.320518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.681967, 33.383286, 33.984013>,  <30.591080, 33.475883, 33.782108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.681967, 33.383286, 33.984013>,  <30.833445, 33.228958, 34.320518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.681967, 33.383286, 33.984013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641612, 0.545657, 0.539066,
		0.667025, 0.743911, 0.040907,
		-0.378696, 0.385817, -0.841269,
		30.568357, 33.499031, 33.731632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929203, 34.058136, 34.436466>,  <30.833445, 33.228958, 34.320518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929203, 34.058136, 34.436466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.676456, 33.929131, 34.154549>,  <30.524809, 33.851727, 33.985397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.676456, 33.929131, 34.154549>,  <30.929203, 34.058136, 34.436466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.676456, 33.929131, 34.154549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707706, 0.610871, 0.354950,
		0.316061, 0.723066, -0.614232,
		-0.631868, -0.322510, -0.704790,
		30.486897, 33.832378, 33.943111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608860, 34.631962, 34.147373>,  <30.929203, 34.058136, 34.436466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608860, 34.631962, 34.147373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.351791, 34.347961, 34.032219>,  <30.197550, 34.177563, 33.963127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.351791, 34.347961, 34.032219>,  <30.608860, 34.631962, 34.147373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.351791, 34.347961, 34.032219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766126, 0.598068, 0.235300,
		0.005112, 0.371776, -0.928309,
		-0.642671, -0.709998, -0.287884,
		30.158991, 34.134960, 33.945854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.981134, 34.907711, 33.774426>,  <30.608860, 34.631962, 34.147373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.981134, 34.907711, 33.774426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.889904, 34.565052, 33.959522>,  <29.835165, 34.359455, 34.070580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.889904, 34.565052, 33.959522>,  <29.981134, 34.907711, 33.774426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.889904, 34.565052, 33.959522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883100, 0.382154, 0.272200,
		-0.410019, -0.346566, -0.843669,
		-0.228076, -0.856651, 0.462742,
		29.821482, 34.308056, 34.098347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.385271, 34.609711, 33.332935>,  <29.981134, 34.907711, 33.774426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.385271, 34.609711, 33.332935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.378931, 34.444599, 33.697212>,  <29.375128, 34.345531, 33.915779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.378931, 34.444599, 33.697212>,  <29.385271, 34.609711, 33.332935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.378931, 34.444599, 33.697212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938545, 0.320221, 0.128811,
		-0.344793, -0.852684, -0.392489,
		-0.015848, -0.412781, 0.910692,
		29.374176, 34.320766, 33.970421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.774900, 34.172325, 33.372601>,  <29.385271, 34.609711, 33.332935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.774900, 34.172325, 33.372601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.905643, 34.327450, 33.717335>,  <28.984089, 34.420525, 33.924175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.905643, 34.327450, 33.717335>,  <28.774900, 34.172325, 33.372601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.905643, 34.327450, 33.717335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915457, 0.356430, 0.186805,
		-0.234740, -0.850035, 0.471527,
		0.326857, 0.387813, 0.861839,
		29.003700, 34.443794, 33.975887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.444277, 33.864941, 33.941406>,  <28.774900, 34.172325, 33.372601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.444277, 33.864941, 33.941406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.557787, 34.236141, 34.037979>,  <28.625893, 34.458862, 34.095924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.557787, 34.236141, 34.037979>,  <28.444277, 33.864941, 33.941406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.557787, 34.236141, 34.037979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948498, 0.234682, 0.212783,
		0.140802, -0.289384, 0.946801,
		0.283773, 0.927999, 0.241436,
		28.642920, 34.514542, 34.110409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.081579, 33.986973, 34.492798>,  <28.444277, 33.864941, 33.941406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.081579, 33.986973, 34.492798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.207226, 34.356777, 34.406441>,  <28.282614, 34.578659, 34.354626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.207226, 34.356777, 34.406441>,  <28.081579, 33.986973, 34.492798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.207226, 34.356777, 34.406441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841704, 0.376384, 0.387129,
		0.439165, 0.060118, 0.896393,
		0.314115, 0.924511, -0.215897,
		28.301460, 34.634132, 34.341671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.054745, 34.362141, 35.092644>,  <28.081579, 33.986973, 34.492798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.054745, 34.362141, 35.092644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.054094, 34.626850, 34.792763>,  <28.053703, 34.785675, 34.612835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.054094, 34.626850, 34.792763>,  <28.054745, 34.362141, 35.092644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.054094, 34.626850, 34.792763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755591, 0.490274, 0.434412,
		0.655042, 0.567173, 0.499234,
		-0.001625, 0.661775, -0.749701,
		28.053606, 34.825382, 34.567852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.955273, 34.945511, 35.464901>,  <28.054745, 34.362141, 35.092644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.955273, 34.945511, 35.464901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.850620, 34.969063, 35.079552>,  <27.787828, 34.983192, 34.848343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.850620, 34.969063, 35.079552>,  <27.955273, 34.945511, 35.464901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.850620, 34.969063, 35.079552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859080, 0.440743, 0.260245,
		0.439920, 0.895700, -0.064734,
		-0.261633, 0.058875, -0.963370,
		27.772131, 34.986725, 34.790539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.099953, 35.646599, 35.720917>,  <27.955273, 34.945511, 35.464901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.099953, 35.646599, 35.720917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.039803, 35.765491, 35.343761>,  <28.003714, 35.836826, 35.117466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.039803, 35.765491, 35.343761>,  <28.099953, 35.646599, 35.720917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.039803, 35.765491, 35.343761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970233, -0.138760, -0.198476,
		-0.189828, -0.944670, -0.267514,
		-0.150374, 0.297227, -0.942891,
		27.994690, 35.854660, 35.060894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.501844, 35.757599, 36.168209>,  <28.099953, 35.646599, 35.720917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.501844, 35.757599, 36.168209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.491816, 36.154217, 36.219128>,  <27.485798, 36.392189, 36.249680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.491816, 36.154217, 36.219128>,  <27.501844, 35.757599, 36.168209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.491816, 36.154217, 36.219128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833602, 0.091024, -0.544814,
		-0.551797, 0.092455, -0.828838,
		-0.025073, 0.991548, 0.127298,
		27.484293, 36.451679, 36.257317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.590799, 36.143814, 35.448318>,  <27.501844, 35.757599, 36.168209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.590799, 36.143814, 35.448318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.717178, 36.402393, 35.726105>,  <27.793005, 36.557541, 35.892776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.717178, 36.402393, 35.726105>,  <27.590799, 36.143814, 35.448318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.717178, 36.402393, 35.726105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873664, 0.087208, -0.478649,
		-0.369984, 0.757958, -0.537225,
		0.315946, 0.646447, 0.694467,
		27.811962, 36.596329, 35.934444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274254, 36.300133, 35.336609>,  <27.590799, 36.143814, 35.448318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.274254, 36.300133, 35.336609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.268293, 36.513493, 35.674900>,  <28.264717, 36.641510, 35.877876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.268293, 36.513493, 35.674900>,  <28.274254, 36.300133, 35.336609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.268293, 36.513493, 35.674900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959178, 0.246520, -0.138582,
		-0.282409, 0.809142, -0.515300,
		-0.014899, 0.533402, 0.845731,
		28.263824, 36.673512, 35.928619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.711939, 36.927761, 35.151558>,  <28.274254, 36.300133, 35.336609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.711939, 36.927761, 35.151558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.692791, 36.832241, 35.539513>,  <28.681301, 36.774929, 35.772285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.692791, 36.832241, 35.539513>,  <28.711939, 36.927761, 35.151558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.692791, 36.832241, 35.539513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976032, 0.195192, 0.096233,
		-0.212294, 0.951250, 0.223731,
		-0.047871, -0.238798, 0.969889,
		28.678431, 36.760601, 35.830479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.949688, 37.474300, 35.742813>,  <28.711939, 36.927761, 35.151558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.949688, 37.474300, 35.742813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.001677, 37.100216, 35.874557>,  <29.032869, 36.875763, 35.953606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.001677, 37.100216, 35.874557>,  <28.949688, 37.474300, 35.742813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.001677, 37.100216, 35.874557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989199, 0.145012, 0.021399,
		-0.067774, 0.323024, 0.943961,
		0.129973, -0.935215, 0.329362,
		29.040668, 36.819653, 35.973366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.346830, 37.468166, 36.434566>,  <28.949688, 37.474300, 35.742813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.346830, 37.468166, 36.434566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.409990, 37.128857, 36.232380>,  <29.447886, 36.925270, 36.111069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.409990, 37.128857, 36.232380>,  <29.346830, 37.468166, 36.434566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.409990, 37.128857, 36.232380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987164, 0.123167, 0.101675,
		-0.023992, -0.515030, 0.856836,
		0.157899, -0.848277, -0.505464,
		29.457359, 36.874374, 36.080742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682611, 36.948215, 36.870491>,  <29.346830, 37.468166, 36.434566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682611, 36.948215, 36.870491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.756599, 36.917049, 36.478630>,  <29.800991, 36.898350, 36.243515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.756599, 36.917049, 36.478630>,  <29.682611, 36.948215, 36.870491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.756599, 36.917049, 36.478630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952912, -0.229534, 0.198175,
		-0.240303, -0.970177, 0.031787,
		0.184969, -0.077913, -0.979651,
		29.812090, 36.893677, 36.184734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.228132, 36.541740, 36.968784>,  <29.682611, 36.948215, 36.870491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.228132, 36.541740, 36.968784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.210520, 36.699226, 36.601513>,  <30.199953, 36.793716, 36.381149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.210520, 36.699226, 36.601513>,  <30.228132, 36.541740, 36.968784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.210520, 36.699226, 36.601513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907338, -0.368866, -0.201680,
		-0.418089, -0.841978, -0.340990,
		-0.044030, 0.393713, -0.918178,
		30.197311, 36.817341, 36.326061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.356123, 36.057503, 36.408443>,  <30.228132, 36.541740, 36.968784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.356123, 36.057503, 36.408443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.472660, 36.428318, 36.314022>,  <30.542582, 36.650806, 36.257370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.472660, 36.428318, 36.314022>,  <30.356123, 36.057503, 36.408443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.472660, 36.428318, 36.314022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949092, -0.311006, -0.050004,
		-0.119770, -0.209468, -0.970453,
		0.291342, 0.927038, -0.236053,
		30.560062, 36.706429, 36.243206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.694887, 35.889332, 35.829456>,  <30.356123, 36.057503, 36.408443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.694887, 35.889332, 35.829456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784515, 36.245178, 35.988640>,  <30.838293, 36.458687, 36.084152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784515, 36.245178, 35.988640>,  <30.694887, 35.889332, 35.829456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784515, 36.245178, 35.988640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972103, -0.233072, -0.026325,
		0.069334, 0.392758, -0.917025,
		0.224072, 0.889617, 0.397961,
		30.851736, 36.512062, 36.108028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147734, 36.395470, 35.494957>,  <30.694887, 35.889332, 35.829456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147734, 36.395470, 35.494957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.224863, 36.525692, 35.865219>,  <31.271141, 36.603825, 36.087376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.224863, 36.525692, 35.865219>,  <31.147734, 36.395470, 35.494957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.224863, 36.525692, 35.865219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980338, -0.023628, -0.195907,
		-0.041908, 0.945226, -0.323715,
		0.192825, 0.325560, 0.925651,
		31.282711, 36.623360, 36.142914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.404369, 37.154263, 35.502567>,  <31.147734, 36.395470, 35.494957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.404369, 37.154263, 35.502567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.531752, 36.901649, 35.785343>,  <31.608181, 36.750084, 35.955009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.531752, 36.901649, 35.785343>,  <31.404369, 37.154263, 35.502567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.531752, 36.901649, 35.785343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921438, 0.031123, -0.387278,
		0.222575, 0.774728, 0.591825,
		0.318455, -0.631528, 0.706936,
		31.627289, 36.712193, 35.997425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.915079, 37.340923, 35.735352>,  <31.404369, 37.154263, 35.502567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.915079, 37.340923, 35.735352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967607, 36.947830, 35.787498>,  <31.999125, 36.711975, 35.818787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967607, 36.947830, 35.787498>,  <31.915079, 37.340923, 35.735352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967607, 36.947830, 35.787498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881771, 0.055697, -0.468378,
		0.453028, 0.176464, 0.873857,
		0.131323, -0.982730, 0.130369,
		32.007004, 36.653011, 35.826611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657169, 37.230213, 35.762016>,  <31.915079, 37.340923, 35.735352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657169, 37.230213, 35.762016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516735, 36.858948, 35.712627>,  <32.432472, 36.636189, 35.682995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516735, 36.858948, 35.712627>,  <32.657169, 37.230213, 35.762016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516735, 36.858948, 35.712627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803557, -0.230979, -0.548585,
		0.480658, -0.291818, 0.826928,
		-0.351090, -0.928165, -0.123470,
		32.411407, 36.580498, 35.675587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171734, 36.688850, 35.976860>,  <32.657169, 37.230213, 35.762016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171734, 36.688850, 35.976860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950474, 36.505177, 35.698818>,  <32.817719, 36.394974, 35.531994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950474, 36.505177, 35.698818>,  <33.171734, 36.688850, 35.976860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950474, 36.505177, 35.698818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823061, -0.430234, -0.370769,
		-0.128809, -0.777207, 0.615920,
		-0.553154, -0.459181, -0.695107,
		32.784527, 36.367424, 35.490288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369164, 36.042770, 35.898151>,  <33.171734, 36.688850, 35.976860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369164, 36.042770, 35.898151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204044, 36.140450, 35.547161>,  <33.104973, 36.199055, 35.336567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204044, 36.140450, 35.547161>,  <33.369164, 36.042770, 35.898151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204044, 36.140450, 35.547161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823823, -0.310797, -0.474047,
		-0.388478, -0.918572, -0.072878,
		-0.412796, 0.244195, -0.877478,
		33.080204, 36.213707, 35.283916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349731, 35.418083, 35.462700>,  <33.369164, 36.042770, 35.898151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349731, 35.418083, 35.462700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318180, 35.725731, 35.209015>,  <33.299252, 35.910320, 35.056805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318180, 35.725731, 35.209015>,  <33.349731, 35.418083, 35.462700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318180, 35.725731, 35.209015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494085, -0.522399, -0.694968,
		-0.865829, -0.368171, -0.338808,
		-0.078874, 0.769122, -0.634216,
		33.294518, 35.956467, 35.018749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183090, 35.181034, 34.781921>,  <33.349731, 35.418083, 35.462700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183090, 35.181034, 34.781921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352180, 35.538410, 34.721161>,  <33.453636, 35.752834, 34.684704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352180, 35.538410, 34.721161>,  <33.183090, 35.181034, 34.781921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352180, 35.538410, 34.721161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435168, -0.347135, -0.830738,
		-0.794942, 0.285073, -0.535538,
		0.422725, 0.893438, -0.151898,
		33.478996, 35.806442, 34.675591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253674, 35.249592, 33.996735>,  <33.183090, 35.181034, 34.781921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253674, 35.249592, 33.996735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478409, 35.558113, 34.116352>,  <33.613251, 35.743225, 34.188122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478409, 35.558113, 34.116352>,  <33.253674, 35.249592, 33.996735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478409, 35.558113, 34.116352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646431, -0.183771, -0.740510,
		-0.516200, 0.609362, -0.601843,
		0.561840, 0.771301, 0.299048,
		33.646961, 35.789505, 34.206066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429043, 35.648830, 33.402702>,  <33.253674, 35.249592, 33.996735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429043, 35.648830, 33.402702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709286, 35.752895, 33.668476>,  <33.877430, 35.815334, 33.827938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709286, 35.752895, 33.668476>,  <33.429043, 35.648830, 33.402702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709286, 35.752895, 33.668476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702697, -0.089784, -0.705802,
		-0.123965, 0.961383, -0.245716,
		0.700607, 0.260158, 0.664430,
		33.919468, 35.830944, 33.867805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798168, 36.077103, 33.061588>,  <33.429043, 35.648830, 33.402702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798168, 36.077103, 33.061588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024990, 35.950924, 33.365940>,  <34.161083, 35.875217, 33.548553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024990, 35.950924, 33.365940>,  <33.798168, 36.077103, 33.061588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024990, 35.950924, 33.365940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720279, -0.258200, -0.643841,
		0.399558, 0.913140, 0.080798,
		0.567055, -0.315449, 0.760881,
		34.195107, 35.856289, 33.594204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464531, 36.365189, 33.002811>,  <33.798168, 36.077103, 33.061588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464531, 36.365189, 33.002811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.507973, 36.029224, 33.215511>,  <34.534039, 35.827648, 33.343132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.507973, 36.029224, 33.215511>,  <34.464531, 36.365189, 33.002811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507973, 36.029224, 33.215511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671047, -0.332710, -0.662571,
		0.733417, 0.428791, 0.527482,
		0.108606, -0.839906, 0.531754,
		34.540554, 35.777252, 33.375038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207378, 36.292530, 33.230667>,  <34.464531, 36.365189, 33.002811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207378, 36.292530, 33.230667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047363, 35.927250, 33.261734>,  <34.951355, 35.708080, 33.280373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047363, 35.927250, 33.261734>,  <35.207378, 36.292530, 33.230667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047363, 35.927250, 33.261734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757362, -0.377105, -0.533099,
		0.516116, -0.154437, 0.842481,
		-0.400034, -0.913204, 0.077665,
		34.927353, 35.653290, 33.285034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788960, 35.921463, 33.248093>,  <35.207378, 36.292530, 33.230667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788960, 35.921463, 33.248093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501575, 35.653854, 33.171963>,  <35.329147, 35.493290, 33.126286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501575, 35.653854, 33.171963>,  <35.788960, 35.921463, 33.248093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501575, 35.653854, 33.171963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579079, -0.423718, -0.696513,
		0.385340, -0.610629, 0.691842,
		-0.718457, -0.669026, -0.190327,
		35.286037, 35.453148, 33.114864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135975, 35.251266, 33.198002>,  <35.788960, 35.921463, 33.248093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135975, 35.251266, 33.198002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773506, 35.191818, 33.039631>,  <35.556023, 35.156151, 32.944607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773506, 35.191818, 33.039631>,  <36.135975, 35.251266, 33.198002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773506, 35.191818, 33.039631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413372, -0.508932, -0.755058,
		-0.089285, -0.847880, 0.522616,
		-0.906174, -0.148619, -0.395930,
		35.501656, 35.147232, 32.920853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116581, 34.554985, 32.990234>,  <36.135975, 35.251266, 33.198002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116581, 34.554985, 32.990234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835495, 34.714249, 32.754383>,  <35.666843, 34.809807, 32.612873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835495, 34.714249, 32.754383>,  <36.116581, 34.554985, 32.990234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835495, 34.714249, 32.754383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393874, -0.472455, -0.788448,
		-0.592499, -0.786294, 0.175178,
		-0.702715, 0.398156, -0.589629,
		35.624680, 34.833694, 32.577496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777367, 34.000721, 32.590767>,  <36.116581, 34.554985, 32.990234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777367, 34.000721, 32.590767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702766, 34.342415, 32.396652>,  <35.658009, 34.547432, 32.280182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702766, 34.342415, 32.396652>,  <35.777367, 34.000721, 32.590767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702766, 34.342415, 32.396652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334757, -0.409143, -0.848846,
		-0.923665, -0.320762, -0.209656,
		-0.186498, 0.854233, -0.485288,
		35.646816, 34.598686, 32.251064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337688, 33.817703, 31.931479>,  <35.777367, 34.000721, 32.590767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337688, 33.817703, 31.931479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533131, 34.161598, 31.872002>,  <35.650394, 34.367935, 31.836315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533131, 34.161598, 31.872002>,  <35.337688, 33.817703, 31.931479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533131, 34.161598, 31.872002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333809, -0.341653, -0.878547,
		-0.806125, 0.379627, -0.453923,
		0.488604, 0.859742, -0.148692,
		35.679710, 34.419521, 31.827394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205952, 34.041241, 31.239979>,  <35.337688, 33.817703, 31.931479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205952, 34.041241, 31.239979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520477, 34.266163, 31.342361>,  <35.709194, 34.401115, 31.403791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520477, 34.266163, 31.342361>,  <35.205952, 34.041241, 31.239979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520477, 34.266163, 31.342361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433032, -0.206114, -0.877496,
		-0.440667, 0.800828, -0.405569,
		0.786318, 0.562308, 0.255957,
		35.756374, 34.434856, 31.419149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354313, 34.564587, 30.732059>,  <35.205952, 34.041241, 31.239979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354313, 34.564587, 30.732059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713490, 34.551971, 30.907654>,  <35.928997, 34.544403, 31.013010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713490, 34.551971, 30.907654>,  <35.354313, 34.564587, 30.732059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713490, 34.551971, 30.907654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440110, 0.059304, -0.895983,
		0.002224, 0.997742, 0.067131,
		0.897941, -0.031538, 0.438985,
		35.982872, 34.542511, 31.039349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683838, 35.121273, 30.490406>,  <35.354313, 34.564587, 30.732059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683838, 35.121273, 30.490406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966595, 34.866093, 30.612598>,  <36.136250, 34.712982, 30.685913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966595, 34.866093, 30.612598>,  <35.683838, 35.121273, 30.490406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966595, 34.866093, 30.612598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502100, 0.148388, -0.851984,
		0.498198, 0.755642, 0.425211,
		0.706891, -0.637955, 0.305481,
		36.178661, 34.674706, 30.704243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354336, 35.430614, 30.271051>,  <35.683838, 35.121273, 30.490406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354336, 35.430614, 30.271051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449623, 35.045319, 30.320730>,  <36.506794, 34.814140, 30.350538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449623, 35.045319, 30.320730>,  <36.354336, 35.430614, 30.271051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449623, 35.045319, 30.320730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565702, 0.033668, -0.823922,
		0.789451, 0.266533, 0.552926,
		0.238219, -0.963238, 0.124199,
		36.521088, 34.756348, 30.357990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139404, 35.299725, 30.094992>,  <36.354336, 35.430614, 30.271051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139404, 35.299725, 30.094992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.942924, 34.953827, 30.053158>,  <36.825039, 34.746288, 30.028057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.942924, 34.953827, 30.053158>,  <37.139404, 35.299725, 30.094992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942924, 34.953827, 30.053158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481985, -0.169821, -0.859565,
		0.725546, -0.472623, 0.500211,
		-0.491197, -0.864748, -0.104584,
		36.795567, 34.694405, 30.021782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585598, 34.893547, 29.677731>,  <37.139404, 35.299725, 30.094992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585598, 34.893547, 29.677731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261539, 34.659096, 29.673311>,  <37.067104, 34.518425, 29.670660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261539, 34.659096, 29.673311>,  <37.585598, 34.893547, 29.677731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261539, 34.659096, 29.673311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297572, -0.394918, -0.869190,
		0.505091, -0.707457, 0.494356,
		-0.810145, -0.586126, -0.011050,
		37.018497, 34.483257, 29.669996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903015, 34.160400, 29.554939>,  <37.585598, 34.893547, 29.677731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903015, 34.160400, 29.554939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.518215, 34.210693, 29.457991>,  <37.287334, 34.240871, 29.399820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.518215, 34.210693, 29.457991>,  <37.903015, 34.160400, 29.554939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518215, 34.210693, 29.457991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155379, -0.477834, -0.864599,
		-0.224525, -0.869405, 0.440140,
		-0.962001, 0.125736, -0.242373,
		37.229614, 34.248413, 29.385279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792267, 33.499924, 29.224548>,  <37.903015, 34.160400, 29.554939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792267, 33.499924, 29.224548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484337, 33.737278, 29.130514>,  <37.299580, 33.879688, 29.074095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484337, 33.737278, 29.130514>,  <37.792267, 33.499924, 29.224548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484337, 33.737278, 29.130514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169579, -0.545242, -0.820947,
		-0.615313, -0.592121, 0.520367,
		-0.769826, 0.593383, -0.235084,
		37.253387, 33.915291, 29.059990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241856, 33.086231, 28.992420>,  <37.792267, 33.499924, 29.224548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241856, 33.086231, 28.992420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174629, 33.445705, 28.830372>,  <37.134293, 33.661388, 28.733143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174629, 33.445705, 28.830372>,  <37.241856, 33.086231, 28.992420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174629, 33.445705, 28.830372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053434, -0.418669, -0.906566,
		-0.984327, -0.130714, 0.118383,
		-0.168064, 0.898683, -0.405123,
		37.124210, 33.715309, 28.708836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686104, 32.933792, 28.540768>,  <37.241856, 33.086231, 28.992420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686104, 32.933792, 28.540768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.842079, 33.280910, 28.417559>,  <36.935665, 33.489182, 28.343634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.842079, 33.280910, 28.417559>,  <36.686104, 32.933792, 28.540768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842079, 33.280910, 28.417559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110381, -0.288041, -0.951235,
		-0.914201, 0.404922, -0.016530,
		0.389938, 0.867796, -0.308024,
		36.959061, 33.541248, 28.325151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336712, 33.042473, 27.874325>,  <36.686104, 32.933792, 28.540768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336712, 33.042473, 27.874325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647949, 33.292702, 27.897087>,  <36.834690, 33.442837, 27.910744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647949, 33.292702, 27.897087>,  <36.336712, 33.042473, 27.874325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647949, 33.292702, 27.897087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215211, -0.180377, -0.959765,
		-0.590134, 0.759032, -0.274979,
		0.778092, 0.625568, 0.056905,
		36.881378, 33.480373, 27.914158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533337, 33.138626, 27.139915>,  <36.336712, 33.042473, 27.874325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533337, 33.138626, 27.139915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867462, 33.218563, 27.344784>,  <37.067936, 33.266525, 27.467705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867462, 33.218563, 27.344784>,  <36.533337, 33.138626, 27.139915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867462, 33.218563, 27.344784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540824, -0.131253, -0.830832,
		-0.098813, 0.970997, -0.217717,
		0.835312, 0.199843, 0.512169,
		37.118057, 33.278515, 27.498434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963776, 33.523926, 26.698009>,  <36.533337, 33.138626, 27.139915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963776, 33.523926, 26.698009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228741, 33.419918, 26.979036>,  <37.387718, 33.357513, 27.147652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228741, 33.419918, 26.979036>,  <36.963776, 33.523926, 26.698009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228741, 33.419918, 26.979036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714952, -0.060654, -0.696537,
		0.223725, 0.963697, 0.145722,
		0.662412, -0.260017, 0.702567,
		37.427464, 33.341911, 27.189806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521973, 33.965397, 26.547148>,  <36.963776, 33.523926, 26.698009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521973, 33.965397, 26.547148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675686, 33.660507, 26.755508>,  <37.767914, 33.477573, 26.880526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675686, 33.660507, 26.755508>,  <37.521973, 33.965397, 26.547148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675686, 33.660507, 26.755508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842726, 0.059198, -0.535078,
		0.377012, 0.644601, 0.665095,
		0.384284, -0.762224, 0.520904,
		37.790970, 33.431839, 26.911779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119026, 34.029877, 26.321186>,  <37.521973, 33.965397, 26.547148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119026, 34.029877, 26.321186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150875, 33.689617, 26.529055>,  <38.169983, 33.485462, 26.653776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150875, 33.689617, 26.529055>,  <38.119026, 34.029877, 26.321186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150875, 33.689617, 26.529055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776697, -0.273832, -0.567236,
		0.624822, 0.448789, 0.638895,
		0.079619, -0.850649, 0.519669,
		38.174759, 33.434422, 26.684956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840080, 33.989330, 26.464050>,  <38.119026, 34.029877, 26.321186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840080, 33.989330, 26.464050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.658653, 33.632874, 26.459187>,  <38.549797, 33.418999, 26.456268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.658653, 33.632874, 26.459187>,  <38.840080, 33.989330, 26.464050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658653, 33.632874, 26.459187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670393, -0.332162, -0.663507,
		0.587238, -0.309098, 0.748071,
		-0.453569, -0.891138, -0.012159,
		38.522583, 33.365532, 26.455540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400291, 33.518929, 26.453026>,  <38.840080, 33.989330, 26.464050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400291, 33.518929, 26.453026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074265, 33.337097, 26.309349>,  <38.878647, 33.227997, 26.223143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074265, 33.337097, 26.309349>,  <39.400291, 33.518929, 26.453026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074265, 33.337097, 26.309349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515307, -0.285456, -0.808068,
		0.264796, -0.843727, 0.466914,
		-0.815072, -0.454577, -0.359190,
		38.829742, 33.200726, 26.201591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649158, 32.904484, 26.228209>,  <39.400291, 33.518929, 26.453026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649158, 32.904484, 26.228209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314407, 32.973259, 26.020334>,  <39.113556, 33.014526, 25.895609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314407, 32.973259, 26.020334>,  <39.649158, 32.904484, 26.228209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314407, 32.973259, 26.020334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460713, -0.291449, -0.838333,
		-0.295568, -0.941015, 0.164715,
		-0.836889, 0.171898, -0.519680,
		39.063343, 33.024841, 25.864428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513184, 32.254436, 25.766100>,  <39.649158, 32.904484, 26.228209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513184, 32.254436, 25.766100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322002, 32.572811, 25.617481>,  <39.207294, 32.763836, 25.528311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322002, 32.572811, 25.617481>,  <39.513184, 32.254436, 25.766100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322002, 32.572811, 25.617481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384952, -0.190401, -0.903083,
		-0.789540, -0.574658, -0.215395,
		-0.477953, 0.795937, -0.371545,
		39.178616, 32.811592, 25.506018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279922, 32.050220, 25.146015>,  <39.513184, 32.254436, 25.766100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279922, 32.050220, 25.146015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261135, 32.445328, 25.086546>,  <39.249863, 32.682392, 25.050865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261135, 32.445328, 25.086546>,  <39.279922, 32.050220, 25.146015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261135, 32.445328, 25.086546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322359, -0.125882, -0.938210,
		-0.945451, -0.091996, -0.312504,
		-0.046973, 0.987770, -0.148671,
		39.247044, 32.741657, 25.041945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986046, 32.083118, 24.472044>,  <39.279922, 32.050220, 25.146015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986046, 32.083118, 24.472044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140923, 32.445194, 24.542139>,  <39.233849, 32.662441, 24.584196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140923, 32.445194, 24.542139>,  <38.986046, 32.083118, 24.472044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140923, 32.445194, 24.542139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167432, 0.117870, -0.978812,
		-0.906668, 0.408332, -0.105920,
		0.387195, 0.905192, 0.175237,
		39.257080, 32.716751, 24.594709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632629, 32.438522, 23.993668>,  <38.986046, 32.083118, 24.472044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632629, 32.438522, 23.993668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952442, 32.652714, 24.102486>,  <39.144329, 32.781227, 24.167776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952442, 32.652714, 24.102486>,  <38.632629, 32.438522, 23.993668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952442, 32.652714, 24.102486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328455, -0.010604, -0.944460,
		-0.502851, 0.844484, -0.184358,
		0.799536, 0.535476, 0.272043,
		39.192303, 32.813358, 24.184099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625328, 32.960609, 23.625368>,  <38.632629, 32.438522, 23.993668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625328, 32.960609, 23.625368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006790, 32.933559, 23.742655>,  <39.235668, 32.917332, 23.813026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006790, 32.933559, 23.742655>,  <38.625328, 32.960609, 23.625368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006790, 32.933559, 23.742655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297207, 0.059223, -0.952975,
		0.047077, 0.995952, 0.076576,
		0.953652, -0.067622, 0.293216,
		39.292885, 32.913273, 23.830620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972542, 33.446968, 23.203758>,  <38.625328, 32.960609, 23.625368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972542, 33.446968, 23.203758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253731, 33.187035, 23.319382>,  <39.422443, 33.031075, 23.388756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253731, 33.187035, 23.319382>,  <38.972542, 33.446968, 23.203758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253731, 33.187035, 23.319382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403266, 0.029401, -0.914610,
		0.585842, 0.759511, 0.282723,
		0.702969, -0.649830, 0.289060,
		39.464622, 32.992085, 23.406099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536247, 33.649395, 22.867149>,  <38.972542, 33.446968, 23.203758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536247, 33.649395, 22.867149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.615517, 33.274170, 22.980827>,  <39.663078, 33.049034, 23.049034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.615517, 33.274170, 22.980827>,  <39.536247, 33.649395, 22.867149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615517, 33.274170, 22.980827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330762, -0.208934, -0.920295,
		0.922672, 0.276378, 0.268871,
		0.198173, -0.938063, 0.284193,
		39.674969, 32.992752, 23.066086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133087, 33.557404, 22.604202>,  <39.536247, 33.649395, 22.867149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.133087, 33.557404, 22.604202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003658, 33.186871, 22.681362>,  <39.925999, 32.964550, 22.727657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003658, 33.186871, 22.681362>,  <40.133087, 33.557404, 22.604202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003658, 33.186871, 22.681362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241987, -0.278103, -0.929570,
		0.914736, -0.254106, 0.314147,
		-0.323575, -0.926331, 0.192900,
		39.906586, 32.908970, 22.739233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631420, 33.018230, 22.261967>,  <40.133087, 33.557404, 22.604202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631420, 33.018230, 22.261967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.317448, 32.787552, 22.352573>,  <40.129066, 32.649143, 22.406939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.317448, 32.787552, 22.352573>,  <40.631420, 33.018230, 22.261967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.317448, 32.787552, 22.352573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157117, -0.538909, -0.827582,
		0.599337, -0.614001, 0.513613,
		-0.784927, -0.576697, 0.226518,
		40.081970, 32.614544, 22.420528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.834438, 32.326305, 22.404608>,  <40.631420, 33.018230, 22.261967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.834438, 32.326305, 22.404608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.458229, 32.321880, 22.268787>,  <40.232502, 32.319225, 22.187296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.458229, 32.321880, 22.268787>,  <40.834438, 32.326305, 22.404608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458229, 32.321880, 22.268787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279115, -0.594955, -0.753740,
		-0.193677, -0.803683, 0.562657,
		-0.940524, -0.011064, -0.339549,
		40.176071, 32.318562, 22.166924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708790, 31.640392, 22.188435>,  <40.834438, 32.326305, 22.404608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708790, 31.640392, 22.188435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.441315, 31.855766, 21.983320>,  <40.280830, 31.984991, 21.860250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.441315, 31.855766, 21.983320>,  <40.708790, 31.640392, 22.188435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.441315, 31.855766, 21.983320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057454, -0.650173, -0.757611,
		-0.741324, -0.536063, 0.403825,
		-0.668683, 0.538434, -0.512788,
		40.240711, 32.017296, 21.829485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.534233, 31.244604, 21.675011>,  <40.708790, 31.640392, 22.188435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.534233, 31.244604, 21.675011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.361282, 31.578655, 21.539003>,  <40.257511, 31.779085, 21.457399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.361282, 31.578655, 21.539003>,  <40.534233, 31.244604, 21.675011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361282, 31.578655, 21.539003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099336, -0.418911, -0.902578,
		-0.896205, -0.356477, 0.264085,
		-0.432376, 0.835128, -0.340019,
		40.231571, 31.829193, 21.436998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911995, 30.989174, 21.230183>,  <40.534233, 31.244604, 21.675011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.911995, 30.989174, 21.230183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965649, 31.379782, 21.162756>,  <39.997841, 31.614147, 21.122301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965649, 31.379782, 21.162756>,  <39.911995, 30.989174, 21.230183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965649, 31.379782, 21.162756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315429, -0.119182, -0.941435,
		-0.939422, 0.179446, 0.292037,
		0.134131, 0.976522, -0.168565,
		40.005886, 31.672739, 21.112186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449402, 31.215952, 20.682510>,  <39.911995, 30.989174, 21.230183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449402, 31.215952, 20.682510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728989, 31.501095, 20.705441>,  <39.896740, 31.672180, 20.719198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728989, 31.501095, 20.705441>,  <39.449402, 31.215952, 20.682510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728989, 31.501095, 20.705441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033275, 0.112487, -0.993096,
		-0.714383, 0.692230, 0.102344,
		0.698963, 0.712857, 0.057325,
		39.938679, 31.714952, 20.722639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106991, 31.873875, 20.597452>,  <39.449402, 31.215952, 20.682510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106991, 31.873875, 20.597452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487705, 31.824825, 20.484974>,  <39.716133, 31.795395, 20.417486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487705, 31.824825, 20.484974>,  <39.106991, 31.873875, 20.597452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487705, 31.824825, 20.484974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233654, 0.304192, -0.923511,
		0.198783, 0.944685, 0.260874,
		0.951783, -0.122624, -0.281197,
		39.773239, 31.788038, 20.400614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396049, 32.576626, 20.255888>,  <39.106991, 31.873875, 20.597452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396049, 32.576626, 20.255888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565716, 32.238419, 20.126162>,  <39.667515, 32.035492, 20.048326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565716, 32.238419, 20.126162>,  <39.396049, 32.576626, 20.255888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565716, 32.238419, 20.126162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311745, 0.199908, -0.928899,
		0.850236, 0.495108, -0.178793,
		0.424163, -0.845521, -0.324316,
		39.692966, 31.984762, 20.028868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938492, 32.737133, 19.765404>,  <39.396049, 32.576626, 20.255888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938492, 32.737133, 19.765404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.782253, 32.375153, 19.697878>,  <39.688511, 32.157963, 19.657362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.782253, 32.375153, 19.697878>,  <39.938492, 32.737133, 19.765404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782253, 32.375153, 19.697878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101296, 0.224522, -0.969190,
		0.914972, -0.361460, -0.179365,
		-0.390595, -0.904951, -0.168817,
		39.665073, 32.103668, 19.647232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.153744, 32.339634, 19.122673>,  <39.938492, 32.737133, 19.765404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.153744, 32.339634, 19.122673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.778599, 32.212223, 19.177738>,  <39.553513, 32.135777, 19.210777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.778599, 32.212223, 19.177738>,  <40.153744, 32.339634, 19.122673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778599, 32.212223, 19.177738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143967, -0.003787, -0.989575,
		0.315724, -0.947907, -0.042305,
		-0.937865, -0.318524, 0.137663,
		39.497238, 32.116665, 19.219038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512821, 32.651825, 18.664272>,  <40.153744, 32.339634, 19.122673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512821, 32.651825, 18.664272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252621, 32.924374, 18.530064>,  <40.096500, 33.087902, 18.449537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252621, 32.924374, 18.530064>,  <40.512821, 32.651825, 18.664272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.252621, 32.924374, 18.530064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057006, 0.396718, 0.916169,
		0.757362, 0.615096, -0.219223,
		-0.650502, 0.681375, -0.335524,
		40.057468, 33.128784, 18.429407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569534, 33.158581, 19.199594>,  <40.512821, 32.651825, 18.664272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.569534, 33.158581, 19.199594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.229748, 33.221630, 18.998175>,  <40.025875, 33.259460, 18.877323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.229748, 33.221630, 18.998175>,  <40.569534, 33.158581, 19.199594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.229748, 33.221630, 18.998175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369669, 0.503183, 0.781122,
		0.376503, 0.849683, -0.369167,
		-0.849465, 0.157625, -0.503551,
		39.974907, 33.268917, 18.847109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524376, 33.956837, 19.212835>,  <40.569534, 33.158581, 19.199594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524376, 33.956837, 19.212835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.198540, 33.737064, 19.138466>,  <40.003040, 33.605202, 19.093843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.198540, 33.737064, 19.138466>,  <40.524376, 33.956837, 19.212835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198540, 33.737064, 19.138466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504964, 0.514017, 0.693396,
		-0.285406, 0.658718, -0.696156,
		-0.814589, -0.549433, -0.185926,
		39.954163, 33.572235, 19.082687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996910, 34.379875, 18.950031>,  <40.524376, 33.956837, 19.212835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996910, 34.379875, 18.950031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827862, 34.095638, 19.175045>,  <39.726433, 33.925095, 19.310053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827862, 34.095638, 19.175045>,  <39.996910, 34.379875, 18.950031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827862, 34.095638, 19.175045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449123, 0.703322, 0.551023,
		-0.787196, -0.019771, -0.616385,
		-0.422624, -0.710596, 0.562533,
		39.701077, 33.882458, 19.343805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263500, 34.611115, 19.090054>,  <39.996910, 34.379875, 18.950031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263500, 34.611115, 19.090054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437630, 34.390018, 19.374300>,  <39.542107, 34.257362, 19.544847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437630, 34.390018, 19.374300>,  <39.263500, 34.611115, 19.090054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437630, 34.390018, 19.374300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299179, 0.655653, 0.693261,
		-0.849111, -0.514392, 0.120051,
		0.435320, -0.552739, 0.710617,
		39.568226, 34.224197, 19.587484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735703, 34.424431, 19.584082>,  <39.263500, 34.611115, 19.090054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735703, 34.424431, 19.584082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074402, 34.393532, 19.794624>,  <39.277622, 34.374992, 19.920950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074402, 34.393532, 19.794624>,  <38.735703, 34.424431, 19.584082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074402, 34.393532, 19.794624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436972, 0.463345, 0.770952,
		-0.303439, -0.882805, 0.358581,
		0.846747, -0.077247, 0.526358,
		39.328426, 34.370358, 19.952532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496132, 34.131382, 20.269539>,  <38.735703, 34.424431, 19.584082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496132, 34.131382, 20.269539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865204, 34.281429, 20.305206>,  <39.086647, 34.371460, 20.326607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865204, 34.281429, 20.305206>,  <38.496132, 34.131382, 20.269539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865204, 34.281429, 20.305206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295114, 0.538237, 0.789436,
		0.248140, -0.754709, 0.607322,
		0.922678, 0.375120, 0.089167,
		39.142006, 34.393967, 20.331957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660645, 33.992069, 20.952539>,  <38.496132, 34.131382, 20.269539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660645, 33.992069, 20.952539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933609, 34.271683, 20.867058>,  <39.097385, 34.439449, 20.815769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933609, 34.271683, 20.867058>,  <38.660645, 33.992069, 20.952539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933609, 34.271683, 20.867058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044892, 0.331884, 0.942252,
		0.729592, -0.633406, 0.257860,
		0.682407, 0.699035, -0.213705,
		39.138332, 34.481392, 20.802946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279808, 33.811092, 21.351683>,  <38.660645, 33.992069, 20.952539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279808, 33.811092, 21.351683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279793, 34.202259, 21.268091>,  <39.279785, 34.436958, 21.217936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279793, 34.202259, 21.268091>,  <39.279808, 33.811092, 21.351683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279793, 34.202259, 21.268091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172053, 0.205856, 0.963338,
		0.985088, 0.035993, 0.168247,
		-0.000039, 0.977920, -0.208978,
		39.279781, 34.495636, 21.205399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610340, 34.035492, 21.938782>,  <39.279808, 33.811092, 21.351683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610340, 34.035492, 21.938782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426952, 34.337776, 21.751719>,  <39.316921, 34.519146, 21.639481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426952, 34.337776, 21.751719>,  <39.610340, 34.035492, 21.938782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426952, 34.337776, 21.751719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203482, 0.422980, 0.882997,
		0.865103, 0.499985, -0.040148,
		-0.458467, 0.755713, -0.467659,
		39.289413, 34.564491, 21.611422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806232, 34.628559, 22.323370>,  <39.610340, 34.035492, 21.938782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806232, 34.628559, 22.323370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472912, 34.740196, 22.132494>,  <39.272919, 34.807178, 22.017969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472912, 34.740196, 22.132494>,  <39.806232, 34.628559, 22.323370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472912, 34.740196, 22.132494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251018, 0.578058, 0.776427,
		0.492535, 0.766785, -0.411643,
		-0.833306, 0.279088, -0.477190,
		39.222919, 34.823921, 21.989336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708038, 35.340183, 22.603884>,  <39.806232, 34.628559, 22.323370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708038, 35.340183, 22.603884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.356243, 35.204395, 22.470459>,  <39.145164, 35.122925, 22.390404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.356243, 35.204395, 22.470459>,  <39.708038, 35.340183, 22.603884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356243, 35.204395, 22.470459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465256, 0.465714, 0.752760,
		-0.100192, 0.817235, -0.567528,
		-0.879488, -0.339466, -0.333563,
		39.092396, 35.102554, 22.370390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341606, 35.912739, 22.683270>,  <39.708038, 35.340183, 22.603884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341606, 35.912739, 22.683270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.076069, 35.617897, 22.632690>,  <38.916748, 35.440990, 22.602343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.076069, 35.617897, 22.632690>,  <39.341606, 35.912739, 22.683270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076069, 35.617897, 22.632690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549612, 0.366170, 0.750897,
		-0.507187, 0.567976, -0.648201,
		-0.663843, -0.737104, -0.126450,
		38.876915, 35.396767, 22.594755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606197, 36.161537, 22.393581>,  <39.341606, 35.912739, 22.683270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606197, 36.161537, 22.393581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573387, 35.834038, 22.620888>,  <38.553699, 35.637539, 22.757271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573387, 35.834038, 22.620888>,  <38.606197, 36.161537, 22.393581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573387, 35.834038, 22.620888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475969, 0.533141, 0.699438,
		-0.875628, -0.213102, -0.433432,
		-0.082028, -0.818748, 0.568263,
		38.548779, 35.588413, 22.791367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900295, 36.060486, 22.669420>,  <38.606197, 36.161537, 22.393581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900295, 36.060486, 22.669420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112560, 35.842869, 22.929392>,  <38.239922, 35.712296, 23.085375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112560, 35.842869, 22.929392>,  <37.900295, 36.060486, 22.669420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112560, 35.842869, 22.929392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595851, 0.305880, 0.742563,
		-0.602789, -0.781313, -0.161851,
		0.530667, -0.544048, 0.649927,
		38.271759, 35.679653, 23.124371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442711, 35.986420, 23.156538>,  <37.900295, 36.060486, 22.669420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442711, 35.986420, 23.156538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.760197, 35.833374, 23.345694>,  <37.950687, 35.741547, 23.459187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.760197, 35.833374, 23.345694>,  <37.442711, 35.986420, 23.156538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760197, 35.833374, 23.345694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423034, 0.211427, 0.881102,
		-0.437104, -0.899391, 0.005953,
		0.793714, -0.382615, 0.472889,
		37.998310, 35.718590, 23.487560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167625, 35.584412, 23.597111>,  <37.442711, 35.986420, 23.156538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167625, 35.584412, 23.597111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531803, 35.625648, 23.757338>,  <37.750313, 35.650391, 23.853474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531803, 35.625648, 23.757338>,  <37.167625, 35.584412, 23.597111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531803, 35.625648, 23.757338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413081, 0.177123, 0.893304,
		0.021139, -0.978775, 0.203845,
		0.910449, 0.103088, 0.400569,
		37.804939, 35.656574, 23.877508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140400, 35.175285, 24.218689>,  <37.167625, 35.584412, 23.597111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140400, 35.175285, 24.218689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454403, 35.418224, 24.267498>,  <37.642807, 35.563988, 24.296783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454403, 35.418224, 24.267498>,  <37.140400, 35.175285, 24.218689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454403, 35.418224, 24.267498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238566, 0.114608, 0.964340,
		0.571704, -0.786127, 0.234861,
		0.785010, 0.607346, 0.122021,
		37.689907, 35.600430, 24.304104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405418, 34.969570, 24.832693>,  <37.140400, 35.175285, 24.218689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405418, 34.969570, 24.832693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.552494, 35.341118, 24.814764>,  <37.640739, 35.564045, 24.804007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.552494, 35.341118, 24.814764>,  <37.405418, 34.969570, 24.832693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552494, 35.341118, 24.814764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441109, 0.216635, 0.870914,
		0.818675, -0.300452, 0.489387,
		0.367686, 0.928869, -0.044821,
		37.662800, 35.619778, 24.801317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819641, 35.035927, 25.408850>,  <37.405418, 34.969570, 24.832693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819641, 35.035927, 25.408850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.686935, 35.391640, 25.282917>,  <37.607311, 35.605068, 25.207357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.686935, 35.391640, 25.282917>,  <37.819641, 35.035927, 25.408850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686935, 35.391640, 25.282917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552684, 0.087238, 0.828812,
		0.764510, 0.448970, 0.462548,
		-0.331760, 0.889278, -0.314833,
		37.587406, 35.658424, 25.188467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934422, 35.570831, 25.958996>,  <37.819641, 35.035927, 25.408850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934422, 35.570831, 25.958996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642292, 35.730988, 25.737612>,  <37.467014, 35.827080, 25.604782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642292, 35.730988, 25.737612>,  <37.934422, 35.570831, 25.958996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642292, 35.730988, 25.737612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554691, 0.125272, 0.822572,
		0.398680, 0.907743, 0.130602,
		-0.730323, 0.400387, -0.553461,
		37.423195, 35.851105, 25.571573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535706, 35.921486, 26.464586>,  <37.934422, 35.570831, 25.958996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535706, 35.921486, 26.464586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.291317, 35.946705, 26.148932>,  <37.144684, 35.961838, 25.959539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.291317, 35.946705, 26.148932>,  <37.535706, 35.921486, 26.464586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291317, 35.946705, 26.148932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752742, 0.262390, 0.603764,
		0.245129, 0.962900, -0.112853,
		-0.610975, 0.063051, -0.789135,
		37.108025, 35.965622, 25.912191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037350, 36.464653, 26.626444>,  <37.535706, 35.921486, 26.464586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037350, 36.464653, 26.626444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838444, 36.266911, 26.341251>,  <36.719101, 36.148266, 26.170135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838444, 36.266911, 26.341251>,  <37.037350, 36.464653, 26.626444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838444, 36.266911, 26.341251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845194, 0.090468, 0.526747,
		-0.195900, 0.864538, -0.462815,
		-0.497263, -0.494358, -0.712980,
		36.689266, 36.118603, 26.127357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436539, 36.855309, 26.408930>,  <37.037350, 36.464653, 26.626444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436539, 36.855309, 26.408930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314342, 36.481827, 26.334236>,  <36.241024, 36.257736, 26.289421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314342, 36.481827, 26.334236>,  <36.436539, 36.855309, 26.408930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314342, 36.481827, 26.334236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821576, 0.159334, 0.547381,
		-0.481340, 0.320635, -0.815785,
		-0.305492, -0.933706, -0.186732,
		36.222694, 36.201714, 26.278217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683632, 36.878605, 26.335260>,  <36.436539, 36.855309, 26.408930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683632, 36.878605, 26.335260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.781139, 36.500343, 26.421343>,  <35.839642, 36.273384, 26.472992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.781139, 36.500343, 26.421343>,  <35.683632, 36.878605, 26.335260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781139, 36.500343, 26.421343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841372, -0.095839, 0.531890,
		-0.482360, -0.310724, -0.819011,
		0.243765, -0.945656, 0.215206,
		35.854267, 36.216648, 26.485905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994118, 36.488297, 26.402769>,  <35.683632, 36.878605, 26.335260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994118, 36.488297, 26.402769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277264, 36.268341, 26.580103>,  <35.447151, 36.136368, 26.686502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277264, 36.268341, 26.580103>,  <34.994118, 36.488297, 26.402769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277264, 36.268341, 26.580103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592124, -0.119758, 0.796898,
		-0.385114, -0.826607, -0.410376,
		0.707867, -0.549890, 0.443333,
		35.489624, 36.103374, 26.713102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668949, 35.897350, 26.655695>,  <34.994118, 36.488297, 26.402769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668949, 35.897350, 26.655695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006489, 35.909981, 26.869957>,  <35.209011, 35.917557, 26.998514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006489, 35.909981, 26.869957>,  <34.668949, 35.897350, 26.655695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006489, 35.909981, 26.869957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490658, -0.358685, 0.794103,
		0.217205, -0.932924, -0.287183,
		0.843846, 0.031574, 0.535655,
		35.259644, 35.919453, 27.030653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741184, 35.204353, 26.936129>,  <34.668949, 35.897350, 26.655695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741184, 35.204353, 26.936129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934162, 35.478626, 27.154154>,  <35.049950, 35.643188, 27.284969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934162, 35.478626, 27.154154>,  <34.741184, 35.204353, 26.936129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934162, 35.478626, 27.154154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531275, -0.265682, 0.804462,
		0.696418, -0.677683, 0.236110,
		0.482441, 0.685681, 0.545062,
		35.078896, 35.684330, 27.317673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868912, 34.882690, 27.591122>,  <34.741184, 35.204353, 26.936129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868912, 34.882690, 27.591122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897366, 35.276760, 27.653557>,  <34.914436, 35.513203, 27.691017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897366, 35.276760, 27.653557>,  <34.868912, 34.882690, 27.591122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897366, 35.276760, 27.653557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465328, -0.105638, 0.878812,
		0.882275, -0.135146, 0.450917,
		0.071134, 0.985178, 0.156088,
		34.918705, 35.572315, 27.700384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045670, 34.949532, 28.268955>,  <34.868912, 34.882690, 27.591122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045670, 34.949532, 28.268955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877949, 35.303425, 28.187531>,  <34.777317, 35.515759, 28.138676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877949, 35.303425, 28.187531>,  <35.045670, 34.949532, 28.268955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877949, 35.303425, 28.187531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623858, -0.117907, 0.772593,
		0.659535, 0.450943, 0.601385,
		-0.419303, 0.884731, -0.203561,
		34.752159, 35.568844, 28.126463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189999, 35.325661, 28.888456>,  <35.045670, 34.949532, 28.268955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189999, 35.325661, 28.888456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.882374, 35.498295, 28.699873>,  <34.697800, 35.601875, 28.586723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.882374, 35.498295, 28.699873>,  <35.189999, 35.325661, 28.888456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882374, 35.498295, 28.699873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554308, -0.083088, 0.828154,
		0.318251, 0.898235, 0.303134,
		-0.769064, 0.431590, -0.471456,
		34.651653, 35.627773, 28.558435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979004, 35.783245, 29.469933>,  <35.189999, 35.325661, 28.888456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979004, 35.783245, 29.469933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663876, 35.788177, 29.223621>,  <34.474796, 35.791138, 29.075834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663876, 35.788177, 29.223621>,  <34.979004, 35.783245, 29.469933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663876, 35.788177, 29.223621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590564, 0.268678, 0.760951,
		0.174831, 0.963151, -0.204387,
		-0.787825, 0.012334, -0.615776,
		34.427528, 35.791878, 29.038889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630020, 36.503937, 29.441372>,  <34.979004, 35.783245, 29.469933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630020, 36.503937, 29.441372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366661, 36.222023, 29.335693>,  <34.208645, 36.052876, 29.272285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366661, 36.222023, 29.335693>,  <34.630020, 36.503937, 29.441372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366661, 36.222023, 29.335693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635654, 0.332685, 0.696609,
		-0.403063, 0.626582, -0.667035,
		-0.658395, -0.704781, -0.264197,
		34.169144, 36.010590, 29.256433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057861, 36.833225, 29.573149>,  <34.630020, 36.503937, 29.441372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057861, 36.833225, 29.573149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933613, 36.455074, 29.533581>,  <33.859066, 36.228184, 29.509840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933613, 36.455074, 29.533581>,  <34.057861, 36.833225, 29.573149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933613, 36.455074, 29.533581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701904, 0.157948, 0.694538,
		-0.640973, 0.285170, -0.712623,
		-0.310619, -0.945373, -0.098922,
		33.840427, 36.171463, 29.503904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331093, 36.749203, 29.573557>,  <34.057861, 36.833225, 29.573149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331093, 36.749203, 29.573557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426342, 36.373291, 29.671623>,  <33.483490, 36.147743, 29.730463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426342, 36.373291, 29.671623>,  <33.331093, 36.749203, 29.573557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426342, 36.373291, 29.671623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612805, 0.050458, 0.788622,
		-0.753504, -0.338029, -0.563887,
		0.238124, -0.939782, 0.245166,
		33.497780, 36.091358, 29.745173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740978, 36.419647, 29.798492>,  <33.331093, 36.749203, 29.573557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740978, 36.419647, 29.798492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017929, 36.176945, 29.954678>,  <33.184101, 36.031322, 30.048389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017929, 36.176945, 29.954678>,  <32.740978, 36.419647, 29.798492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017929, 36.176945, 29.954678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474538, 0.024728, 0.879887,
		-0.543534, -0.794502, -0.270808,
		0.692376, -0.606758, 0.390463,
		33.225643, 35.994919, 30.071815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341038, 36.025898, 30.207825>,  <32.740978, 36.419647, 29.798492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341038, 36.025898, 30.207825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718594, 36.004143, 30.338125>,  <32.945126, 35.991089, 30.416306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718594, 36.004143, 30.338125>,  <32.341038, 36.025898, 30.207825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718594, 36.004143, 30.338125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321473, 0.074707, 0.943967,
		-0.075680, -0.995721, 0.053030,
		0.943890, -0.054391, 0.325751,
		33.001762, 35.987823, 30.435850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356186, 35.614441, 30.772923>,  <32.341038, 36.025898, 30.207825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356186, 35.614441, 30.772923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700230, 35.813717, 30.816771>,  <32.906658, 35.933281, 30.843079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700230, 35.813717, 30.816771>,  <32.356186, 35.614441, 30.772923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700230, 35.813717, 30.816771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173617, 0.083835, 0.981238,
		0.479653, -0.863006, 0.158601,
		0.860111, 0.498190, 0.109621,
		32.958263, 35.963173, 30.849657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759140, 35.319267, 31.310781>,  <32.356186, 35.614441, 30.772923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759140, 35.319267, 31.310781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893681, 35.694969, 31.283422>,  <32.974403, 35.920391, 31.267008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893681, 35.694969, 31.283422>,  <32.759140, 35.319267, 31.310781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893681, 35.694969, 31.283422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197652, 0.141416, 0.970018,
		0.920762, -0.312746, 0.233210,
		0.336348, 0.939250, -0.068396,
		32.994587, 35.976746, 31.262903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190556, 35.411686, 31.857357>,  <32.759140, 35.319267, 31.310781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190556, 35.411686, 31.857357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072250, 35.777302, 31.746321>,  <33.001266, 35.996670, 31.679699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072250, 35.777302, 31.746321>,  <33.190556, 35.411686, 31.857357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.072250, 35.777302, 31.746321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096532, 0.260505, 0.960635,
		0.950372, 0.310914, 0.011187,
		-0.295761, 0.914040, -0.277590,
		32.983521, 36.051514, 31.663044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627163, 35.935909, 32.217056>,  <33.190556, 35.411686, 31.857357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627163, 35.935909, 32.217056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304409, 36.159958, 32.142006>,  <33.110756, 36.294388, 32.096977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304409, 36.159958, 32.142006>,  <33.627163, 35.935909, 32.217056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304409, 36.159958, 32.142006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007500, 0.327317, 0.944885,
		0.590663, 0.761005, -0.268308,
		-0.806884, 0.560120, -0.187627,
		33.062344, 36.327995, 32.085716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818317, 36.610332, 32.474979>,  <33.627163, 35.935909, 32.217056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818317, 36.610332, 32.474979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420311, 36.612701, 32.435169>,  <33.181507, 36.614120, 32.411285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420311, 36.612701, 32.435169>,  <33.818317, 36.610332, 32.474979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420311, 36.612701, 32.435169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089236, 0.392243, 0.915523,
		0.044457, 0.919843, -0.389761,
		-0.995018, 0.005920, -0.099521,
		33.121807, 36.614479, 32.405312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704021, 37.164494, 32.886856>,  <33.818317, 36.610332, 32.474979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704021, 37.164494, 32.886856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.353992, 36.978779, 32.832172>,  <33.143974, 36.867352, 32.799362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.353992, 36.978779, 32.832172>,  <33.704021, 37.164494, 32.886856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353992, 36.978779, 32.832172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297286, 0.292717, 0.908811,
		-0.381930, 0.835917, -0.394173,
		-0.875072, -0.464285, -0.136709,
		33.091473, 36.839493, 32.791161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320259, 37.506470, 33.322018>,  <33.704021, 37.164494, 32.886856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320259, 37.506470, 33.322018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103207, 37.175301, 33.265320>,  <32.972977, 36.976597, 33.231300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103207, 37.175301, 33.265320>,  <33.320259, 37.506470, 33.322018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103207, 37.175301, 33.265320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246601, -0.004289, 0.969107,
		-0.802956, 0.560823, -0.201840,
		-0.542632, -0.827925, -0.141743,
		32.940418, 36.926922, 33.222797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924122, 37.963703, 33.105549>,  <33.320259, 37.506470, 33.322018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924122, 37.963703, 33.105549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212299, 38.116856, 33.336845>,  <34.385204, 38.208748, 33.475624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212299, 38.116856, 33.336845>,  <33.924122, 37.963703, 33.105549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212299, 38.116856, 33.336845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645168, -0.064170, -0.761341,
		-0.254397, 0.921566, -0.293253,
		0.720444, 0.382881, 0.578241,
		34.428432, 38.231720, 33.510319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314014, 38.467834, 32.723995>,  <33.924122, 37.963703, 33.105549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314014, 38.467834, 32.723995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583569, 38.356056, 32.997574>,  <34.745300, 38.288990, 33.161720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583569, 38.356056, 32.997574>,  <34.314014, 38.467834, 32.723995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583569, 38.356056, 32.997574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715970, 0.018496, -0.697886,
		0.182373, 0.959983, 0.212541,
		0.673889, -0.279449, 0.683946,
		34.785736, 38.272221, 33.202759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862274, 38.992310, 32.730358>,  <34.314014, 38.467834, 32.723995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862274, 38.992310, 32.730358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007626, 38.651424, 32.880924>,  <35.094837, 38.446892, 32.971264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007626, 38.651424, 32.880924>,  <34.862274, 38.992310, 32.730358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007626, 38.651424, 32.880924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762436, 0.039836, -0.645836,
		0.535394, 0.521679, 0.664233,
		0.363379, -0.852212, 0.376419,
		35.116638, 38.395760, 32.993851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509842, 39.218952, 32.956638>,  <34.862274, 38.992310, 32.730358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509842, 39.218952, 32.956638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506813, 38.825428, 32.885025>,  <35.504997, 38.589314, 32.842056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506813, 38.825428, 32.885025>,  <35.509842, 39.218952, 32.956638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506813, 38.825428, 32.885025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645745, 0.131895, -0.752075,
		0.763516, -0.121306, 0.634294,
		-0.007571, -0.983813, -0.179037,
		35.504543, 38.530285, 32.831314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159679, 39.142147, 32.720966>,  <35.509842, 39.218952, 32.956638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159679, 39.142147, 32.720966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000538, 38.786232, 32.631538>,  <35.905052, 38.572681, 32.577881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000538, 38.786232, 32.631538>,  <36.159679, 39.142147, 32.720966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000538, 38.786232, 32.631538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700687, -0.137388, -0.700116,
		0.592242, -0.435194, 0.678126,
		-0.397853, -0.889792, -0.223568,
		35.881184, 38.519295, 32.564468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700706, 38.738026, 32.832344>,  <36.159679, 39.142147, 32.720966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700706, 38.738026, 32.832344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437500, 38.550434, 32.596695>,  <36.279575, 38.437878, 32.455303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437500, 38.550434, 32.596695>,  <36.700706, 38.738026, 32.832344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437500, 38.550434, 32.596695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723759, -0.178001, -0.666699,
		0.207803, -0.865086, 0.456557,
		-0.658020, -0.468979, -0.589125,
		36.240093, 38.409740, 32.419956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979977, 38.099850, 32.702599>,  <36.700706, 38.738026, 32.832344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979977, 38.099850, 32.702599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710087, 38.176407, 32.417473>,  <36.548153, 38.222340, 32.246395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710087, 38.176407, 32.417473>,  <36.979977, 38.099850, 32.702599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710087, 38.176407, 32.417473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630473, -0.352660, -0.691473,
		-0.383723, -0.915970, 0.117284,
		-0.674730, 0.191390, -0.712818,
		36.507668, 38.233826, 32.203629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026875, 37.591511, 32.382721>,  <36.979977, 38.099850, 32.702599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026875, 37.591511, 32.382721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860065, 37.847897, 32.124958>,  <36.759979, 38.001728, 31.970301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860065, 37.847897, 32.124958>,  <37.026875, 37.591511, 32.382721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860065, 37.847897, 32.124958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587867, -0.350516, -0.729075,
		-0.693187, -0.682863, -0.230631,
		-0.417018, 0.640966, -0.644406,
		36.734959, 38.040188, 31.931637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902763, 37.212826, 31.752089>,  <37.026875, 37.591511, 32.382721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902763, 37.212826, 31.752089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.897297, 37.593060, 31.628025>,  <36.894016, 37.821201, 31.553587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.897297, 37.593060, 31.628025>,  <36.902763, 37.212826, 31.752089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897297, 37.593060, 31.628025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629601, -0.232795, -0.741221,
		-0.776798, -0.205409, -0.595308,
		-0.013669, 0.950586, -0.310161,
		36.893196, 37.878235, 31.534977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886902, 37.194248, 30.935291>,  <36.902763, 37.212826, 31.752089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886902, 37.194248, 30.935291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010723, 37.564163, 31.023783>,  <37.085014, 37.786114, 31.076878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010723, 37.564163, 31.023783>,  <36.886902, 37.194248, 30.935291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010723, 37.564163, 31.023783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699627, -0.063941, -0.711642,
		-0.643974, 0.375066, -0.666801,
		0.309548, 0.924790, 0.221229,
		37.103588, 37.841599, 31.090151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926147, 37.543816, 30.243269>,  <36.886902, 37.194248, 30.935291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926147, 37.543816, 30.243269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.167496, 37.724255, 30.506315>,  <37.312305, 37.832520, 30.664143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.167496, 37.724255, 30.506315>,  <36.926147, 37.543816, 30.243269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167496, 37.724255, 30.506315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746062, -0.028030, -0.665287,
		-0.281675, 0.892035, -0.353458,
		0.603366, 0.451097, 0.657618,
		37.348507, 37.859585, 30.703600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199829, 38.030277, 29.923399>,  <36.926147, 37.543816, 30.243269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199829, 38.030277, 29.923399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.468113, 38.017685, 30.219820>,  <37.629082, 38.010128, 30.397673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.468113, 38.017685, 30.219820>,  <37.199829, 38.030277, 29.923399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468113, 38.017685, 30.219820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741419, 0.056913, -0.668625,
		-0.021126, 0.997883, 0.061514,
		0.670710, -0.031482, 0.741051,
		37.669327, 38.008240, 30.442135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492016, 38.590687, 29.817156>,  <37.199829, 38.030277, 29.923399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492016, 38.590687, 29.817156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755352, 38.358257, 30.008543>,  <37.913353, 38.218800, 30.123375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755352, 38.358257, 30.008543>,  <37.492016, 38.590687, 29.817156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755352, 38.358257, 30.008543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648942, 0.116079, -0.751931,
		0.381390, 0.805528, 0.453505,
		0.658344, -0.581077, 0.478469,
		37.952854, 38.183933, 30.152084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190666, 38.879654, 29.772060>,  <37.492016, 38.590687, 29.817156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190666, 38.879654, 29.772060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208408, 38.484703, 29.832888>,  <38.219055, 38.247734, 29.869385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208408, 38.484703, 29.832888>,  <38.190666, 38.879654, 29.772060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208408, 38.484703, 29.832888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468800, -0.113844, -0.875937,
		0.882190, 0.110146, 0.457831,
		0.044360, -0.987374, 0.152068,
		38.221718, 38.188492, 29.878508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836613, 38.697884, 29.688726>,  <38.190666, 38.879654, 29.772060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836613, 38.697884, 29.688726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649429, 38.348495, 29.634958>,  <38.537121, 38.138863, 29.602697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649429, 38.348495, 29.634958>,  <38.836613, 38.697884, 29.688726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649429, 38.348495, 29.634958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547773, -0.167317, -0.819725,
		0.693515, -0.457225, 0.556760,
		-0.467954, -0.873470, -0.134419,
		38.509045, 38.086456, 29.594633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358337, 38.315147, 29.372433>,  <38.836613, 38.697884, 29.688726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358337, 38.315147, 29.372433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032299, 38.092342, 29.308744>,  <38.836674, 37.958660, 29.270531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032299, 38.092342, 29.308744>,  <39.358337, 38.315147, 29.372433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032299, 38.092342, 29.308744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301973, -0.173960, -0.937310,
		0.494397, -0.812079, 0.309998,
		-0.815098, -0.557014, -0.159220,
		38.787769, 37.925240, 29.260979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542187, 37.797817, 28.969175>,  <39.358337, 38.315147, 29.372433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542187, 37.797817, 28.969175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.149246, 37.769344, 28.899986>,  <38.913483, 37.752258, 28.858473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.149246, 37.769344, 28.899986>,  <39.542187, 37.797817, 28.969175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149246, 37.769344, 28.899986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182724, -0.167482, -0.968794,
		0.039996, -0.983301, 0.177534,
		-0.982350, -0.071187, -0.172975,
		38.854542, 37.747990, 28.848093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538330, 37.368721, 28.452457>,  <39.542187, 37.797817, 28.969175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538330, 37.368721, 28.452457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.166290, 37.510712, 28.414707>,  <38.943066, 37.595905, 28.392057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.166290, 37.510712, 28.414707>,  <39.538330, 37.368721, 28.452457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166290, 37.510712, 28.414707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049374, -0.133778, -0.989781,
		-0.363978, -0.925252, 0.106900,
		-0.930098, 0.354981, -0.094376,
		38.887260, 37.617207, 28.386395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140472, 36.827217, 28.074249>,  <39.538330, 37.368721, 28.452457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140472, 36.827217, 28.074249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975239, 37.184219, 28.001818>,  <38.876099, 37.398422, 27.958359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975239, 37.184219, 28.001818>,  <39.140472, 36.827217, 28.074249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975239, 37.184219, 28.001818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068414, -0.228688, -0.971093,
		-0.908118, -0.388757, 0.155528,
		-0.413086, 0.892508, -0.181079,
		38.851315, 37.451973, 27.947495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546215, 36.678082, 27.794041>,  <39.140472, 36.827217, 28.074249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546215, 36.678082, 27.794041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667282, 37.042671, 27.682604>,  <38.739922, 37.261425, 27.615742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667282, 37.042671, 27.682604>,  <38.546215, 36.678082, 27.794041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667282, 37.042671, 27.682604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045279, -0.278221, -0.959449,
		-0.952021, 0.303005, -0.042937,
		0.302664, 0.911472, -0.278592,
		38.758080, 37.316113, 27.599026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221779, 36.769333, 27.145683>,  <38.546215, 36.678082, 27.794041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221779, 36.769333, 27.145683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493008, 37.063236, 27.138159>,  <38.655743, 37.239578, 27.133644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493008, 37.063236, 27.138159>,  <38.221779, 36.769333, 27.145683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493008, 37.063236, 27.138159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049144, -0.070859, -0.996275,
		-0.733353, 0.674619, -0.084156,
		0.678069, 0.734758, -0.018812,
		38.696430, 37.283665, 27.132515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004936, 37.102283, 26.551296>,  <38.221779, 36.769333, 27.145683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004936, 37.102283, 26.551296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384697, 37.188606, 26.642569>,  <38.612553, 37.240398, 26.697332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384697, 37.188606, 26.642569>,  <38.004936, 37.102283, 26.551296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384697, 37.188606, 26.642569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210561, 0.101704, -0.972276,
		-0.233031, 0.971125, 0.051117,
		0.949400, 0.215807, 0.228181,
		38.669518, 37.253349, 26.711023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146370, 37.708466, 26.191978>,  <38.004936, 37.102283, 26.551296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146370, 37.708466, 26.191978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512356, 37.561085, 26.257792>,  <38.731949, 37.472656, 26.297279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512356, 37.561085, 26.257792>,  <38.146370, 37.708466, 26.191978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512356, 37.561085, 26.257792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258827, 0.223062, -0.939815,
		0.309580, 0.902487, 0.299462,
		0.914969, -0.368457, 0.164532,
		38.786846, 37.450546, 26.307152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625923, 38.216698, 25.952885>,  <38.146370, 37.708466, 26.191978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625923, 38.216698, 25.952885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.822052, 37.868080, 25.952471>,  <38.939728, 37.658909, 25.952223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.822052, 37.868080, 25.952471>,  <38.625923, 38.216698, 25.952885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822052, 37.868080, 25.952471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266585, 0.151107, -0.951893,
		0.829770, 0.466457, 0.306431,
		0.490321, -0.871541, -0.001034,
		38.969147, 37.606617, 25.952160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311317, 38.375122, 25.671375>,  <38.625923, 38.216698, 25.952885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311317, 38.375122, 25.671375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.247246, 37.982643, 25.628305>,  <39.208801, 37.747154, 25.602463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.247246, 37.982643, 25.628305>,  <39.311317, 38.375122, 25.671375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.247246, 37.982643, 25.628305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492827, 0.015019, -0.869998,
		0.855257, -0.192421, 0.481155,
		-0.160179, -0.981198, -0.107676,
		39.199192, 37.688282, 25.596003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966824, 38.054348, 25.630537>,  <39.311317, 38.375122, 25.671375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966824, 38.054348, 25.630537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.705448, 37.791569, 25.480106>,  <39.548622, 37.633900, 25.389849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.705448, 37.791569, 25.480106>,  <39.966824, 38.054348, 25.630537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705448, 37.791569, 25.480106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669871, -0.270453, -0.691468,
		0.352549, -0.703755, 0.616796,
		-0.653439, -0.656950, -0.376077,
		39.509415, 37.594482, 25.367283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333817, 37.475616, 25.478271>,  <39.966824, 38.054348, 25.630537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333817, 37.475616, 25.478271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.033360, 37.432697, 25.217724>,  <39.853085, 37.406944, 25.061396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.033360, 37.432697, 25.217724>,  <40.333817, 37.475616, 25.478271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033360, 37.432697, 25.217724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599025, -0.525437, -0.604223,
		-0.277419, -0.844040, 0.458951,
		-0.751137, -0.107300, -0.651367,
		39.808018, 37.400509, 25.022314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252296, 36.693375, 25.251987>,  <40.333817, 37.475616, 25.478271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252296, 36.693375, 25.251987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.068977, 36.921410, 24.979235>,  <39.958984, 37.058231, 24.815582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.068977, 36.921410, 24.979235>,  <40.252296, 36.693375, 25.251987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068977, 36.921410, 24.979235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500949, -0.468044, -0.728001,
		-0.734176, -0.675228, -0.071083,
		-0.458297, 0.570089, -0.681882,
		39.931488, 37.092438, 24.774670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097759, 36.245441, 24.776142>,  <40.252296, 36.693375, 25.251987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.097759, 36.245441, 24.776142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065163, 36.597626, 24.589319>,  <40.045605, 36.808937, 24.477226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065163, 36.597626, 24.589319>,  <40.097759, 36.245441, 24.776142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065163, 36.597626, 24.589319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526937, -0.359706, -0.770032,
		-0.845989, -0.308856, -0.434639,
		-0.081487, 0.880465, -0.467055,
		40.040718, 36.861767, 24.449203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014145, 36.017723, 24.108557>,  <40.097759, 36.245441, 24.776142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014145, 36.017723, 24.108557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.114594, 36.404842, 24.101585>,  <40.174862, 36.637115, 24.097403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.114594, 36.404842, 24.101585>,  <40.014145, 36.017723, 24.108557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114594, 36.404842, 24.101585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528488, -0.152175, -0.835191,
		-0.810948, 0.200526, -0.549684,
		0.251126, 0.967798, -0.017430,
		40.189930, 36.695183, 24.096355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951691, 36.209724, 23.386583>,  <40.014145, 36.017723, 24.108557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951691, 36.209724, 23.386583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.194241, 36.474144, 23.563366>,  <40.339771, 36.632797, 23.669436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.194241, 36.474144, 23.563366>,  <39.951691, 36.209724, 23.386583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194241, 36.474144, 23.563366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539633, 0.066126, -0.839299,
		-0.584043, 0.747423, -0.316627,
		0.606375, 0.661049, 0.441954,
		40.376152, 36.672459, 23.695951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990345, 36.853558, 22.912100>,  <39.951691, 36.209724, 23.386583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990345, 36.853558, 22.912100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.307037, 36.828247, 23.155134>,  <40.497051, 36.813061, 23.300955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.307037, 36.828247, 23.155134>,  <39.990345, 36.853558, 22.912100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307037, 36.828247, 23.155134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610762, 0.100671, -0.785388,
		-0.011473, 0.992906, 0.118349,
		0.791731, -0.063272, 0.607585,
		40.544556, 36.809265, 23.337410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522877, 37.345879, 22.703081>,  <39.990345, 36.853558, 22.912100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522877, 37.345879, 22.703081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.728081, 37.062271, 22.896622>,  <40.851204, 36.892105, 23.012745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.728081, 37.062271, 22.896622>,  <40.522877, 37.345879, 22.703081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728081, 37.062271, 22.896622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651622, -0.045241, -0.757193,
		0.558753, 0.703738, 0.438802,
		0.513014, -0.709018, 0.483850,
		40.881985, 36.849567, 23.041777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254612, 37.441933, 22.444567>,  <40.522877, 37.345879, 22.703081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.254612, 37.441933, 22.444567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.297523, 37.100555, 22.648577>,  <41.323269, 36.895729, 22.770983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.297523, 37.100555, 22.648577>,  <41.254612, 37.441933, 22.444567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.297523, 37.100555, 22.648577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821004, -0.213289, -0.529585,
		0.560754, 0.475545, 0.677799,
		0.107274, -0.853443, 0.510027,
		41.329704, 36.844524, 22.801584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.906158, 37.498425, 22.582829>,  <41.254612, 37.441933, 22.444567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.906158, 37.498425, 22.582829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.793877, 37.116776, 22.624493>,  <41.726505, 36.887787, 22.649490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.793877, 37.116776, 22.624493>,  <41.906158, 37.498425, 22.582829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.793877, 37.116776, 22.624493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897151, -0.299403, -0.324774,
		0.341060, 0.002281, 0.940039,
		-0.280709, -0.954124, 0.104160,
		41.709663, 36.830540, 22.655741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.521740, 37.171928, 22.735542>,  <41.906158, 37.498425, 22.582829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.521740, 37.171928, 22.735542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.287872, 36.867867, 22.622175>,  <42.147552, 36.685429, 22.554155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.287872, 36.867867, 22.622175>,  <42.521740, 37.171928, 22.735542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.287872, 36.867867, 22.622175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779161, -0.428833, -0.457177,
		0.225985, -0.488127, 0.843008,
		-0.584670, -0.760154, -0.283420,
		42.112473, 36.639820, 22.537149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.927490, 36.635212, 22.923460>,  <42.521740, 37.171928, 22.735542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.927490, 36.635212, 22.923460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.676613, 36.479553, 22.653591>,  <42.526085, 36.386158, 22.491669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.676613, 36.479553, 22.653591>,  <42.927490, 36.635212, 22.923460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.676613, 36.479553, 22.653591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772896, -0.417966, -0.477427,
		-0.096200, -0.820894, 0.562920,
		-0.627198, -0.389150, -0.674674,
		42.488453, 36.362808, 22.451189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.949368, 35.857632, 22.960583>,  <42.927490, 36.635212, 22.923460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.949368, 35.857632, 22.960583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.849594, 35.972408, 22.590622>,  <42.789730, 36.041275, 22.368645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.849594, 35.972408, 22.590622>,  <42.949368, 35.857632, 22.960583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.849594, 35.972408, 22.590622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724592, -0.578328, -0.374837,
		-0.642454, -0.763676, -0.063659,
		-0.249438, 0.286942, -0.924902,
		42.774761, 36.058491, 22.313150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.552650, 35.532890, 22.578018>,  <42.949368, 35.857632, 22.960583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.552650, 35.532890, 22.578018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.947342, 35.481766, 22.618073>,  <44.184158, 35.451092, 22.642105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.947342, 35.481766, 22.618073>,  <43.552650, 35.532890, 22.578018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.947342, 35.481766, 22.618073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091953, 0.068408, 0.993411,
		-0.133823, -0.989436, 0.055748,
		0.986730, -0.127815, 0.100136,
		44.243362, 35.443420, 22.648113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.679390, 34.999596, 23.133619>,  <43.552650, 35.532890, 22.578018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.679390, 34.999596, 23.133619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.003334, 35.232136, 23.102211>,  <44.197701, 35.371658, 23.083366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.003334, 35.232136, 23.102211>,  <43.679390, 34.999596, 23.133619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.003334, 35.232136, 23.102211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002681, 0.137518, 0.990496,
		0.586622, -0.801949, 0.112928,
		0.809856, 0.581349, -0.078521,
		44.246292, 35.406540, 23.078655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.100975, 34.769402, 23.717249>,  <43.679390, 34.999596, 23.133619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.100975, 34.769402, 23.717249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.215702, 35.130611, 23.589317>,  <44.284538, 35.347336, 23.512558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.215702, 35.130611, 23.589317>,  <44.100975, 34.769402, 23.717249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.215702, 35.130611, 23.589317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031534, 0.324774, 0.945266,
		0.957467, -0.281200, 0.064674,
		0.286813, 0.903022, -0.319828,
		44.301746, 35.401520, 23.493368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.780865, 34.851807, 24.042719>,  <44.100975, 34.769402, 23.717249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.780865, 34.851807, 24.042719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.573845, 35.182247, 23.953552>,  <44.449631, 35.380512, 23.900053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.573845, 35.182247, 23.953552>,  <44.780865, 34.851807, 24.042719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.573845, 35.182247, 23.953552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018191, 0.249840, 0.968116,
		0.855458, 0.505106, -0.114278,
		-0.517553, 0.826104, -0.222916,
		44.418579, 35.430077, 23.886677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.872761, 35.338490, 24.611519>,  <44.780865, 34.851807, 24.042719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.872761, 35.338490, 24.611519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.539139, 35.452904, 24.422821>,  <44.338966, 35.521553, 24.309603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.539139, 35.452904, 24.422821>,  <44.872761, 35.338490, 24.611519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.539139, 35.452904, 24.422821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395357, 0.286492, 0.872706,
		0.384776, 0.914388, -0.125863,
		-0.834050, 0.286035, -0.471745,
		44.288925, 35.538715, 24.281298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.820576, 35.895668, 24.927090>,  <44.872761, 35.338490, 24.611519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.820576, 35.895668, 24.927090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.461151, 35.813690, 24.771866>,  <44.245499, 35.764503, 24.678732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.461151, 35.813690, 24.771866>,  <44.820576, 35.895668, 24.927090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.461151, 35.813690, 24.771866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422355, 0.163665, 0.891532,
		-0.119200, 0.964994, -0.233621,
		-0.898558, -0.204942, -0.388061,
		44.191582, 35.752209, 24.655447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.387474, 36.467419, 25.036339>,  <44.820576, 35.895668, 24.927090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.387474, 36.467419, 25.036339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.129742, 36.164497, 24.993767>,  <43.975101, 35.982746, 24.968224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.129742, 36.164497, 24.993767>,  <44.387474, 36.467419, 25.036339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.129742, 36.164497, 24.993767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458014, 0.270694, 0.846728,
		-0.612421, 0.594319, -0.521272,
		-0.644332, -0.757304, -0.106428,
		43.936443, 35.937305, 24.961838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.760086, 36.771351, 25.161978>,  <44.387474, 36.467419, 25.036339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.760086, 36.771351, 25.161978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.654484, 36.386963, 25.195034>,  <43.591122, 36.156330, 25.214869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.654484, 36.386963, 25.195034>,  <43.760086, 36.771351, 25.161978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.654484, 36.386963, 25.195034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446667, 0.197751, 0.872572,
		-0.854862, 0.193453, -0.481443,
		-0.264008, -0.960974, 0.082641,
		43.575283, 36.098671, 25.219826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.948441, 36.701538, 25.322838>,  <43.760086, 36.771351, 25.161978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.948441, 36.701538, 25.322838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.080799, 36.334629, 25.411493>,  <43.160213, 36.114483, 25.464687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.080799, 36.334629, 25.411493>,  <42.948441, 36.701538, 25.322838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.080799, 36.334629, 25.411493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533540, 0.011874, 0.845692,
		-0.778360, -0.398087, -0.485471,
		0.330894, -0.917270, 0.221638,
		43.180069, 36.059448, 25.477985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.332676, 36.351814, 25.441669>,  <42.948441, 36.701538, 25.322838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.332676, 36.351814, 25.441669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.634014, 36.171829, 25.633505>,  <42.814816, 36.063839, 25.748606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.634014, 36.171829, 25.633505>,  <42.332676, 36.351814, 25.441669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.634014, 36.171829, 25.633505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595479, -0.157272, 0.787826,
		-0.279071, -0.879087, -0.386427,
		0.753342, -0.449968, 0.479588,
		42.860016, 36.036839, 25.777382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.927074, 36.103237, 25.943447>,  <42.332676, 36.351814, 25.441669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.927074, 36.103237, 25.943447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.302551, 36.042221, 26.067118>,  <42.527836, 36.005611, 26.141319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.302551, 36.042221, 26.067118>,  <41.927074, 36.103237, 25.943447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.302551, 36.042221, 26.067118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314007, -0.008046, 0.949387,
		-0.142336, -0.988264, -0.055453,
		0.938690, -0.152545, 0.309177,
		42.584160, 35.996460, 26.159870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.894272, 35.636402, 26.557419>,  <41.927074, 36.103237, 25.943447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.894272, 35.636402, 26.557419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.250896, 35.815037, 26.587559>,  <42.464870, 35.922218, 26.605642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.250896, 35.815037, 26.587559>,  <41.894272, 35.636402, 26.557419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.250896, 35.815037, 26.587559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130284, 0.093557, 0.987053,
		0.433758, -0.889834, 0.141595,
		0.891560, 0.446590, 0.075350,
		42.518364, 35.949013, 26.610165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.223690, 35.418861, 27.193586>,  <41.894272, 35.636402, 26.557419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.223690, 35.418861, 27.193586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.373283, 35.777061, 27.097071>,  <42.463039, 35.991982, 27.039162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.373283, 35.777061, 27.097071>,  <42.223690, 35.418861, 27.193586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.373283, 35.777061, 27.097071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033045, 0.272867, 0.961484,
		0.926845, -0.351608, 0.131640,
		0.373986, 0.895497, -0.241287,
		42.485477, 36.045712, 27.024685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.556477, 35.656433, 27.809069>,  <42.223690, 35.418861, 27.193586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.556477, 35.656433, 27.809069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.491199, 36.000549, 27.615881>,  <42.452034, 36.207020, 27.499968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.491199, 36.000549, 27.615881>,  <42.556477, 35.656433, 27.809069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.491199, 36.000549, 27.615881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237795, 0.440802, 0.865533,
		0.957507, 0.256100, 0.132636,
		-0.163197, 0.860294, -0.482971,
		42.442242, 36.258636, 27.470989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.822330, 36.058094, 28.213379>,  <42.556477, 35.656433, 27.809069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.822330, 36.058094, 28.213379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.568535, 36.284416, 28.002743>,  <42.416260, 36.420208, 27.876362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.568535, 36.284416, 28.002743>,  <42.822330, 36.058094, 28.213379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.568535, 36.284416, 28.002743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376965, 0.368250, 0.849876,
		0.674777, 0.737741, -0.020362,
		-0.634486, 0.565801, -0.526589,
		42.378189, 36.454155, 27.844767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.879513, 36.849705, 28.487967>,  <42.822330, 36.058094, 28.213379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.879513, 36.849705, 28.487967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.533154, 36.826023, 28.289284>,  <42.325336, 36.811813, 28.170074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.533154, 36.826023, 28.289284>,  <42.879513, 36.849705, 28.487967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.533154, 36.826023, 28.289284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470054, 0.435921, 0.767478,
		0.171091, 0.898036, -0.405290,
		-0.865897, -0.059200, -0.496707,
		42.273384, 36.808262, 28.140272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.674610, 37.526718, 28.432493>,  <42.879513, 36.849705, 28.487967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.674610, 37.526718, 28.432493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.349220, 37.295601, 28.405899>,  <42.153988, 37.156933, 28.389942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.349220, 37.295601, 28.405899>,  <42.674610, 37.526718, 28.432493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.349220, 37.295601, 28.405899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481703, 0.605274, 0.633723,
		-0.325918, 0.547543, -0.770698,
		-0.813474, -0.577789, -0.066484,
		42.105179, 37.122265, 28.385954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.102249, 38.019081, 28.441874>,  <42.674610, 37.526718, 28.432493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.102249, 38.019081, 28.441874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.958855, 37.664391, 28.558632>,  <41.872818, 37.451576, 28.628687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.958855, 37.664391, 28.558632>,  <42.102249, 38.019081, 28.441874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.958855, 37.664391, 28.558632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401234, 0.428675, 0.809475,
		-0.842912, 0.173064, -0.509458,
		-0.358483, -0.886728, 0.291896,
		41.851311, 37.398373, 28.646200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345860, 38.100620, 28.531061>,  <42.102249, 38.019081, 28.441874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.345860, 38.100620, 28.531061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.400463, 37.763554, 28.739399>,  <41.433224, 37.561314, 28.864401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.400463, 37.763554, 28.739399>,  <41.345860, 38.100620, 28.531061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.400463, 37.763554, 28.739399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554841, 0.370528, 0.744890,
		-0.820681, -0.390668, -0.416967,
		0.136507, -0.842667, 0.520844,
		41.441414, 37.510754, 28.895653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667336, 37.901054, 28.744497>,  <41.345860, 38.100620, 28.531061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667336, 37.901054, 28.744497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.938950, 37.721325, 28.976713>,  <41.101917, 37.613487, 29.116043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.938950, 37.721325, 28.976713>,  <40.667336, 37.901054, 28.744497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.938950, 37.721325, 28.976713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478569, 0.328729, 0.814192,
		-0.556675, -0.830690, 0.008186,
		0.679032, -0.449323, 0.580538,
		41.142658, 37.586529, 29.150875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266769, 37.558308, 29.267685>,  <40.667336, 37.901054, 28.744497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.266769, 37.558308, 29.267685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.627331, 37.579704, 29.439548>,  <40.843670, 37.592541, 29.542665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.627331, 37.579704, 29.439548>,  <40.266769, 37.558308, 29.267685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.627331, 37.579704, 29.439548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424693, 0.302396, 0.853342,
		-0.084280, -0.951680, 0.295299,
		0.901406, 0.053492, 0.429658,
		40.897751, 37.595753, 29.568445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209934, 37.197994, 29.866579>,  <40.266769, 37.558308, 29.267685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209934, 37.197994, 29.866579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.541698, 37.405972, 29.948290>,  <40.740757, 37.530758, 29.997316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.541698, 37.405972, 29.948290>,  <40.209934, 37.197994, 29.866579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541698, 37.405972, 29.948290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279173, 0.069050, 0.957755,
		0.483876, -0.851403, 0.202426,
		0.829413, 0.519947, 0.204277,
		40.790524, 37.561954, 30.009573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.645168, 36.814892, 30.422857>,  <40.209934, 37.197994, 29.866579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.645168, 36.814892, 30.422857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.745014, 37.201702, 30.402641>,  <40.804920, 37.433788, 30.390512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.745014, 37.201702, 30.402641>,  <40.645168, 36.814892, 30.422857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.745014, 37.201702, 30.402641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296385, 0.125983, 0.946723,
		0.921874, -0.221333, 0.318058,
		0.249611, 0.967027, -0.050541,
		40.819897, 37.491810, 30.387480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.820057, 36.898132, 31.025999>,  <40.645168, 36.814892, 30.422857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.820057, 36.898132, 31.025999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762836, 37.268547, 30.886286>,  <40.728504, 37.490795, 30.802458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762836, 37.268547, 30.886286>,  <40.820057, 36.898132, 31.025999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762836, 37.268547, 30.886286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336647, 0.286341, 0.897038,
		0.930702, 0.245905, 0.270786,
		-0.143049, 0.926034, -0.349281,
		40.719921, 37.546356, 30.781502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.981503, 37.315865, 31.670906>,  <40.820057, 36.898132, 31.025999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.981503, 37.315865, 31.670906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.781879, 37.536842, 31.403851>,  <40.662106, 37.669430, 31.243618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.781879, 37.536842, 31.403851>,  <40.981503, 37.315865, 31.670906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.781879, 37.536842, 31.403851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500983, 0.444707, 0.742463,
		0.707075, 0.705009, 0.054831,
		-0.499060, 0.552447, -0.667639,
		40.632160, 37.702576, 31.203558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034393, 37.969498, 31.980982>,  <40.981503, 37.315865, 31.670906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034393, 37.969498, 31.980982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.714497, 37.981213, 31.741129>,  <40.522560, 37.988243, 31.597218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.714497, 37.981213, 31.741129>,  <41.034393, 37.969498, 31.980982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.714497, 37.981213, 31.741129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470956, 0.588817, 0.656883,
		0.372311, 0.807736, -0.457108,
		-0.799741, 0.029287, -0.599631,
		40.474575, 37.989998, 31.561239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.779827, 38.612938, 32.110901>,  <41.034393, 37.969498, 31.980982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.779827, 38.612938, 32.110901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.468956, 38.444881, 31.923510>,  <40.282433, 38.344048, 31.811075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.468956, 38.444881, 31.923510>,  <40.779827, 38.612938, 32.110901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.468956, 38.444881, 31.923510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628565, 0.482805, 0.609758,
		-0.030003, 0.768360, -0.639314,
		-0.777178, -0.420145, -0.468479,
		40.235802, 38.318836, 31.782967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364681, 39.152744, 31.849394>,  <40.779827, 38.612938, 32.110901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.364681, 39.152744, 31.849394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.129116, 38.833046, 31.897390>,  <39.987778, 38.641228, 31.926188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.129116, 38.833046, 31.897390>,  <40.364681, 39.152744, 31.849394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129116, 38.833046, 31.897390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568279, 0.515065, 0.641691,
		-0.574668, 0.309711, -0.757519,
		-0.588910, -0.799241, 0.119990,
		39.952442, 38.593273, 31.933388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692291, 39.370838, 31.785713>,  <40.364681, 39.152744, 31.849394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692291, 39.370838, 31.785713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644897, 39.016762, 31.965672>,  <39.616459, 38.804317, 32.073647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644897, 39.016762, 31.965672>,  <39.692291, 39.370838, 31.785713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644897, 39.016762, 31.965672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718902, 0.389013, 0.576063,
		-0.684938, -0.255173, -0.682456,
		-0.118489, -0.885187, 0.449894,
		39.609352, 38.751205, 32.100639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943344, 39.417259, 32.061852>,  <39.692291, 39.370838, 31.785713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943344, 39.417259, 32.061852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.143147, 39.139397, 32.268906>,  <39.263027, 38.972679, 32.393139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.143147, 39.139397, 32.268906>,  <38.943344, 39.417259, 32.061852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143147, 39.139397, 32.268906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379125, 0.361980, 0.851607,
		-0.778946, -0.621634, -0.082548,
		0.499507, -0.694653, 0.517640,
		39.292999, 38.931000, 32.424198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471428, 39.108913, 32.492817>,  <38.943344, 39.417259, 32.061852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471428, 39.108913, 32.492817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839508, 39.070118, 32.644516>,  <39.060356, 39.046841, 32.735535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839508, 39.070118, 32.644516>,  <38.471428, 39.108913, 32.492817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839508, 39.070118, 32.644516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335590, 0.303314, 0.891841,
		-0.201530, -0.947942, 0.246560,
		0.920198, -0.096990, 0.379247,
		39.115566, 39.041019, 32.758289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356522, 38.891674, 33.213757>,  <38.471428, 39.108913, 32.492817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356522, 38.891674, 33.213757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738964, 39.008675, 33.220615>,  <38.968430, 39.078876, 33.224731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738964, 39.008675, 33.220615>,  <38.356522, 38.891674, 33.213757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738964, 39.008675, 33.220615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083833, 0.217011, 0.972563,
		0.280760, -0.931314, 0.232008,
		0.956110, 0.292506, 0.017147,
		39.025799, 39.096424, 33.225761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519840, 38.616703, 33.824436>,  <38.356522, 38.891674, 33.213757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519840, 38.616703, 33.824436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803944, 38.876194, 33.715126>,  <38.974407, 39.031891, 33.649540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803944, 38.876194, 33.715126>,  <38.519840, 38.616703, 33.824436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803944, 38.876194, 33.715126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173500, 0.214904, 0.961100,
		0.682223, -0.730045, 0.040083,
		0.710260, 0.648730, -0.273275,
		39.017021, 39.070812, 33.633144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100517, 38.407440, 34.234875>,  <38.519840, 38.616703, 33.824436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100517, 38.407440, 34.234875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150364, 38.793053, 34.140976>,  <39.180271, 39.024422, 34.084637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150364, 38.793053, 34.140976>,  <39.100517, 38.407440, 34.234875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150364, 38.793053, 34.140976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338047, 0.181188, 0.923523,
		0.932842, -0.194444, -0.303310,
		0.124617, 0.964034, -0.234751,
		39.187748, 39.082264, 34.070549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755535, 38.595383, 34.492279>,  <39.100517, 38.407440, 34.234875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755535, 38.595383, 34.492279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548500, 38.934139, 34.443481>,  <39.424278, 39.137394, 34.414204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548500, 38.934139, 34.443481>,  <39.755535, 38.595383, 34.492279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548500, 38.934139, 34.443481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128615, 0.217961, 0.967446,
		0.845911, 0.485044, -0.221736,
		-0.517584, 0.846891, -0.121992,
		39.393227, 39.188206, 34.406883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140518, 39.084797, 34.931595>,  <39.755535, 38.595383, 34.492279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140518, 39.084797, 34.931595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781918, 39.251823, 34.872356>,  <39.566757, 39.352039, 34.836815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781918, 39.251823, 34.872356>,  <40.140518, 39.084797, 34.931595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781918, 39.251823, 34.872356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023661, 0.288660, 0.957139,
		0.442415, 0.861578, -0.248903,
		-0.896498, 0.417564, -0.148093,
		39.512970, 39.377094, 34.827927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108795, 39.623554, 35.365803>,  <40.140518, 39.084797, 34.931595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108795, 39.623554, 35.365803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.716717, 39.622772, 35.286587>,  <39.481472, 39.622303, 35.239059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.716717, 39.622772, 35.286587>,  <40.108795, 39.623554, 35.365803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716717, 39.622772, 35.286587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190102, 0.289679, 0.938055,
		0.055532, 0.957122, -0.284313,
		-0.980193, -0.001956, -0.198037,
		39.422661, 39.622185, 35.227177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825783, 40.319386, 35.625057>,  <40.108795, 39.623554, 35.365803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825783, 40.319386, 35.625057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.541241, 40.038807, 35.607426>,  <39.370514, 39.870461, 35.596848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.541241, 40.038807, 35.607426>,  <39.825783, 40.319386, 35.625057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541241, 40.038807, 35.607426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408360, 0.361459, 0.838206,
		-0.572022, 0.614266, -0.543569,
		-0.711360, -0.701444, -0.044079,
		39.327831, 39.828373, 35.594200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153751, 40.624619, 35.872059>,  <39.825783, 40.319386, 35.625057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153751, 40.624619, 35.872059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093941, 40.230751, 35.907990>,  <39.058056, 39.994431, 35.929550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093941, 40.230751, 35.907990>,  <39.153751, 40.624619, 35.872059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093941, 40.230751, 35.907990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364373, 0.139331, 0.920771,
		-0.919171, 0.104945, -0.379620,
		-0.149523, -0.984669, 0.089830,
		39.049084, 39.935349, 35.934940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407581, 40.519478, 36.084297>,  <39.153751, 40.624619, 35.872059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407581, 40.519478, 36.084297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608913, 40.194752, 36.202698>,  <38.729713, 39.999916, 36.273739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608913, 40.194752, 36.202698>,  <38.407581, 40.519478, 36.084297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608913, 40.194752, 36.202698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225550, 0.207244, 0.951933,
		-0.834139, -0.545897, -0.078794,
		0.503328, -0.811817, 0.295998,
		38.759911, 39.951206, 36.291496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055431, 40.000767, 36.479801>,  <38.407581, 40.519478, 36.084297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055431, 40.000767, 36.479801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420914, 39.958351, 36.636719>,  <38.640202, 39.932903, 36.730869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420914, 39.958351, 36.636719>,  <38.055431, 40.000767, 36.479801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420914, 39.958351, 36.636719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401436, -0.085490, 0.911889,
		-0.063155, -0.990681, -0.120679,
		0.913707, -0.106035, 0.392295,
		38.695026, 39.926540, 36.754406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017731, 39.395336, 36.904144>,  <38.055431, 40.000767, 36.479801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017731, 39.395336, 36.904144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330818, 39.598961, 37.047367>,  <38.518669, 39.721138, 37.133301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330818, 39.598961, 37.047367>,  <38.017731, 39.395336, 36.904144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330818, 39.598961, 37.047367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273061, -0.236086, 0.932578,
		0.559275, -0.827717, -0.045782,
		0.782719, 0.509066, 0.358054,
		38.565636, 39.751682, 37.154785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355759, 39.006706, 37.407112>,  <38.017731, 39.395336, 36.904144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355759, 39.006706, 37.407112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466557, 39.379250, 37.501637>,  <38.533035, 39.602776, 37.558350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466557, 39.379250, 37.501637>,  <38.355759, 39.006706, 37.407112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466557, 39.379250, 37.501637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241280, -0.170633, 0.955337,
		0.930085, -0.321640, 0.177454,
		0.276995, 0.931361, 0.236308,
		38.549656, 39.658657, 37.572529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730518, 38.929165, 38.084915>,  <38.355759, 39.006706, 37.407112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730518, 38.929165, 38.084915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685207, 39.326126, 38.065746>,  <38.658020, 39.564304, 38.054245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685207, 39.326126, 38.065746>,  <38.730518, 38.929165, 38.084915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685207, 39.326126, 38.065746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037912, 0.052517, 0.997900,
		0.992840, 0.111225, -0.043573,
		-0.113280, 0.992407, -0.047924,
		38.651222, 39.623848, 38.051369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181725, 39.169323, 38.467102>,  <38.730518, 38.929165, 38.084915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181725, 39.169323, 38.467102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879921, 39.431778, 38.461395>,  <38.698837, 39.589249, 38.457970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879921, 39.431778, 38.461395>,  <39.181725, 39.169323, 38.467102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879921, 39.431778, 38.461395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024375, -0.006293, 0.999683,
		0.655837, 0.754618, 0.020741,
		-0.754509, 0.656135, -0.014266,
		38.653568, 39.628620, 38.457115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252811, 39.559311, 39.052681>,  <39.181725, 39.169323, 38.467102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252811, 39.559311, 39.052681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.890163, 39.686672, 38.941925>,  <38.672577, 39.763088, 38.875473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.890163, 39.686672, 38.941925>,  <39.252811, 39.559311, 39.052681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890163, 39.686672, 38.941925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247350, 0.130604, 0.960084,
		0.341857, 0.938915, -0.039651,
		-0.906615, 0.318404, -0.276889,
		38.618179, 39.782192, 38.858860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100243, 40.282013, 39.267639>,  <39.252811, 39.559311, 39.052681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100243, 40.282013, 39.267639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779991, 40.043247, 39.246891>,  <38.587841, 39.899990, 39.234440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779991, 40.043247, 39.246891>,  <39.100243, 40.282013, 39.267639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779991, 40.043247, 39.246891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092684, 0.037846, 0.994976,
		-0.591950, 0.801414, -0.085625,
		-0.800628, -0.596912, -0.051875,
		38.539803, 39.864174, 39.231327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606236, 40.512894, 39.752296>,  <39.100243, 40.282013, 39.267639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606236, 40.512894, 39.752296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455021, 40.147648, 39.691235>,  <38.364292, 39.928501, 39.654598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455021, 40.147648, 39.691235>,  <38.606236, 40.512894, 39.752296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455021, 40.147648, 39.691235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193633, -0.083259, 0.977535,
		-0.905313, 0.399107, -0.145334,
		-0.378041, -0.913116, -0.152656,
		38.341610, 39.873714, 39.645439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042030, 40.670792, 40.176422>,  <38.606236, 40.512894, 39.752296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042030, 40.670792, 40.176422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136143, 40.282200, 40.188175>,  <38.192608, 40.049046, 40.195229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136143, 40.282200, 40.188175>,  <38.042030, 40.670792, 40.176422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136143, 40.282200, 40.188175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132971, -0.002228, 0.991117,
		-0.962789, -0.237095, -0.129704,
		0.235278, -0.971484, 0.029382,
		38.206726, 39.990753, 40.196991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481503, 40.256199, 40.597160>,  <38.042030, 40.670792, 40.176422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481503, 40.256199, 40.597160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840878, 40.081352, 40.580517>,  <38.056503, 39.976444, 40.570530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840878, 40.081352, 40.580517>,  <37.481503, 40.256199, 40.597160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840878, 40.081352, 40.580517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053489, 0.014889, 0.998457,
		-0.435826, -0.899280, 0.036758,
		0.898440, -0.437120, -0.041613,
		38.110409, 39.950218, 40.568031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490978, 39.603970, 41.006577>,  <37.481503, 40.256199, 40.597160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490978, 39.603970, 41.006577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863735, 39.748890, 40.999546>,  <38.087391, 39.835842, 40.995327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863735, 39.748890, 40.999546>,  <37.490978, 39.603970, 41.006577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863735, 39.748890, 40.999546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035919, -0.043950, 0.998388,
		0.360941, -0.931026, -0.053970,
		0.931897, 0.362297, -0.017578,
		38.143303, 39.857578, 40.994274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595600, 39.517391, 41.645962>,  <37.490978, 39.603970, 41.006577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595600, 39.517391, 41.645962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939945, 39.661827, 41.502556>,  <38.146553, 39.748489, 41.416512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939945, 39.661827, 41.502556>,  <37.595600, 39.517391, 41.645962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939945, 39.661827, 41.502556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453886, -0.226413, 0.861815,
		0.230021, -0.904627, -0.358804,
		0.860859, 0.361092, -0.358518,
		38.198204, 39.770153, 41.395000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068092, 39.223446, 42.077869>,  <37.595600, 39.517391, 41.645962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068092, 39.223446, 42.077869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246643, 39.549923, 41.931137>,  <38.353775, 39.745811, 41.843098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246643, 39.549923, 41.931137>,  <38.068092, 39.223446, 42.077869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246643, 39.549923, 41.931137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582892, 0.045828, 0.811256,
		0.678956, -0.575954, -0.455298,
		0.446380, 0.816197, -0.366834,
		38.380558, 39.794781, 41.821087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871376, 39.143364, 42.169624>,  <38.068092, 39.223446, 42.077869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871376, 39.143364, 42.169624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724957, 39.515507, 42.161217>,  <38.637104, 39.738792, 42.156174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724957, 39.515507, 42.161217>,  <38.871376, 39.143364, 42.169624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724957, 39.515507, 42.161217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607147, 0.255877, 0.752263,
		0.705253, 0.262602, -0.658527,
		-0.366048, 0.930358, -0.021020,
		38.615143, 39.794613, 42.154911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517681, 39.689716, 42.095062>,  <38.871376, 39.143364, 42.169624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.517681, 39.689716, 42.095062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.177200, 39.849636, 42.231068>,  <38.972912, 39.945587, 42.312672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.177200, 39.849636, 42.231068>,  <39.517681, 39.689716, 42.095062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177200, 39.849636, 42.231068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476350, 0.316550, 0.820297,
		0.220322, 0.860207, -0.459893,
		-0.851204, 0.399800, 0.340017,
		38.921841, 39.969578, 42.333073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661957, 40.413696, 42.271122>,  <39.517681, 39.689716, 42.095062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.661957, 40.413696, 42.271122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330685, 40.344723, 42.484432>,  <39.131920, 40.303337, 42.612419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330685, 40.344723, 42.484432>,  <39.661957, 40.413696, 42.271122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330685, 40.344723, 42.484432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459070, 0.337117, 0.821953,
		-0.321510, 0.925536, -0.200034,
		-0.828182, -0.172437, 0.533273,
		39.082230, 40.292992, 42.644413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615170, 40.930294, 42.628426>,  <39.661957, 40.413696, 42.271122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615170, 40.930294, 42.628426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409290, 40.652142, 42.829037>,  <39.285763, 40.485252, 42.949402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409290, 40.652142, 42.829037>,  <39.615170, 40.930294, 42.628426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409290, 40.652142, 42.829037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473484, 0.257129, 0.842435,
		-0.714769, 0.671068, 0.196906,
		-0.514701, -0.695379, 0.501528,
		39.254879, 40.443527, 42.979496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243820, 41.335529, 43.222454>,  <39.615170, 40.930294, 42.628426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243820, 41.335529, 43.222454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285439, 40.956043, 43.341854>,  <39.310410, 40.728352, 43.413494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285439, 40.956043, 43.341854>,  <39.243820, 41.335529, 43.222454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285439, 40.956043, 43.341854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372933, 0.315451, 0.872589,
		-0.922006, 0.020530, 0.386631,
		0.104049, -0.948720, 0.298504,
		39.316654, 40.671429, 43.431404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131104, 41.319687, 43.926838>,  <39.243820, 41.335529, 43.222454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131104, 41.319687, 43.926838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311104, 40.964462, 43.889210>,  <39.419106, 40.751328, 43.866631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311104, 40.964462, 43.889210>,  <39.131104, 41.319687, 43.926838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311104, 40.964462, 43.889210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543697, 0.188878, 0.817752,
		-0.708443, -0.419138, 0.567831,
		0.450001, -0.888059, -0.094075,
		39.446106, 40.698044, 43.860989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051502, 40.874722, 44.633553>,  <39.131104, 41.319687, 43.926838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051502, 40.874722, 44.633553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372482, 40.785862, 44.412022>,  <39.565071, 40.732544, 44.279102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372482, 40.785862, 44.412022>,  <39.051502, 40.874722, 44.633553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372482, 40.785862, 44.412022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565890, -0.011145, 0.824406,
		-0.189316, -0.974948, 0.116770,
		0.802451, -0.222152, -0.553823,
		39.613216, 40.719215, 44.245876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240440, 40.228054, 45.061462>,  <39.051502, 40.874722, 44.633553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240440, 40.228054, 45.061462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528034, 40.414860, 44.855564>,  <39.700588, 40.526943, 44.732025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528034, 40.414860, 44.855564>,  <39.240440, 40.228054, 45.061462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528034, 40.414860, 44.855564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634953, -0.140156, 0.759731,
		0.282664, -0.873069, -0.397304,
		0.718982, 0.467018, -0.514741,
		39.743729, 40.554966, 44.701141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704594, 39.867458, 45.291813>,  <39.240440, 40.228054, 45.061462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704594, 39.867458, 45.291813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.833584, 40.210552, 45.131660>,  <39.910980, 40.416409, 45.035568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.833584, 40.210552, 45.131660>,  <39.704594, 39.867458, 45.291813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.833584, 40.210552, 45.131660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724045, 0.048941, 0.688014,
		0.609727, -0.511764, -0.605253,
		0.322479, 0.857731, -0.400381,
		39.930328, 40.467873, 45.011547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325500, 39.840870, 44.953331>,  <39.704594, 39.867458, 45.291813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325500, 39.840870, 44.953331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.284618, 40.207375, 45.108257>,  <40.260090, 40.427277, 45.201214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.284618, 40.207375, 45.108257>,  <40.325500, 39.840870, 44.953331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284618, 40.207375, 45.108257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826829, -0.138238, 0.545201,
		0.553090, 0.375967, -0.743465,
		-0.102203, 0.916264, 0.387318,
		40.253956, 40.482254, 45.224453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872444, 40.495918, 44.917915>,  <40.325500, 39.840870, 44.953331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.872444, 40.495918, 44.917915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697712, 40.423653, 45.270401>,  <40.592873, 40.380295, 45.481892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697712, 40.423653, 45.270401>,  <40.872444, 40.495918, 44.917915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697712, 40.423653, 45.270401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895961, -0.174702, 0.408329,
		0.080179, 0.967905, 0.238183,
		-0.436835, -0.180663, 0.881213,
		40.566662, 40.369453, 45.534763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803200, 40.659817, 44.194038>,  <40.872444, 40.495918, 44.917915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803200, 40.659817, 44.194038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464272, 40.512794, 44.347374>,  <40.260914, 40.424580, 44.439377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464272, 40.512794, 44.347374>,  <40.803200, 40.659817, 44.194038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.464272, 40.512794, 44.347374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379870, -0.084981, -0.921128,
		0.371142, -0.926111, -0.067617,
		-0.847321, -0.367555, 0.383342,
		40.210075, 40.402527, 44.462376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584404, 40.240673, 43.684547>,  <40.803200, 40.659817, 44.194038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584404, 40.240673, 43.684547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.263519, 40.302181, 43.915306>,  <40.070988, 40.339085, 44.053761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.263519, 40.302181, 43.915306>,  <40.584404, 40.240673, 43.684547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263519, 40.302181, 43.915306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596729, -0.175308, -0.783059,
		-0.019272, -0.972432, 0.232390,
		-0.802212, 0.153765, 0.576900,
		40.022858, 40.348312, 44.088375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080513, 39.662411, 43.560921>,  <40.584404, 40.240673, 43.684547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080513, 39.662411, 43.560921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861320, 39.972305, 43.687092>,  <39.729805, 40.158241, 43.762794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861320, 39.972305, 43.687092>,  <40.080513, 39.662411, 43.560921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861320, 39.972305, 43.687092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710911, -0.232612, -0.663699,
		-0.440822, -0.587936, 0.678238,
		-0.547979, 0.774741, 0.315430,
		39.696926, 40.204727, 43.781719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421303, 39.395531, 43.686863>,  <40.080513, 39.662411, 43.560921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421303, 39.395531, 43.686863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390381, 39.784691, 43.599697>,  <39.371826, 40.018188, 43.547398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390381, 39.784691, 43.599697>,  <39.421303, 39.395531, 43.686863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390381, 39.784691, 43.599697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681695, -0.211073, -0.700528,
		-0.727541, 0.094394, 0.679540,
		-0.077307, 0.972902, -0.217912,
		39.367188, 40.076561, 43.534325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716301, 39.511604, 43.674904>,  <39.421303, 39.395531, 43.686863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716301, 39.511604, 43.674904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.905258, 39.782440, 43.449200>,  <39.018635, 39.944942, 43.313778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.905258, 39.782440, 43.449200>,  <38.716301, 39.511604, 43.674904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905258, 39.782440, 43.449200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680606, -0.126534, -0.721640,
		-0.560016, 0.724937, 0.401059,
		0.472396, 0.677093, -0.564258,
		39.046978, 39.985569, 43.279922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148201, 39.892193, 43.404816>,  <38.716301, 39.511604, 43.674904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148201, 39.892193, 43.404816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446495, 39.999985, 43.161095>,  <38.625473, 40.064659, 43.014862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446495, 39.999985, 43.161095>,  <38.148201, 39.892193, 43.404816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446495, 39.999985, 43.161095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650308, 0.095626, -0.753628,
		-0.144820, 0.958247, 0.246556,
		0.745739, 0.269478, -0.609307,
		38.670216, 40.080830, 42.978302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838257, 40.534145, 42.899143>,  <38.148201, 39.892193, 43.404816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838257, 40.534145, 42.899143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160400, 40.358448, 42.739918>,  <38.353687, 40.253029, 42.644382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160400, 40.358448, 42.739918>,  <37.838257, 40.534145, 42.899143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160400, 40.358448, 42.739918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390089, 0.112914, -0.913828,
		0.446344, 0.891241, -0.080409,
		0.805362, -0.439248, -0.398062,
		38.402008, 40.226673, 42.620499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094921, 40.997150, 42.280758>,  <37.838257, 40.534145, 42.899143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094921, 40.997150, 42.280758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240265, 40.627213, 42.235813>,  <38.327473, 40.405251, 42.208847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240265, 40.627213, 42.235813>,  <38.094921, 40.997150, 42.280758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240265, 40.627213, 42.235813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340001, -0.019353, -0.940226,
		0.867393, 0.379841, -0.321482,
		0.363358, -0.924849, -0.112359,
		38.349274, 40.349758, 42.202106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495956, 40.955009, 41.629868>,  <38.094921, 40.997150, 42.280758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495956, 40.955009, 41.629868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387802, 40.581600, 41.724041>,  <38.322910, 40.357555, 41.780544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387802, 40.581600, 41.724041>,  <38.495956, 40.955009, 41.629868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387802, 40.581600, 41.724041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266251, -0.162503, -0.950107,
		0.925204, -0.319579, -0.204613,
		-0.270384, -0.933521, 0.235436,
		38.306686, 40.301544, 41.794670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919144, 40.494709, 41.276382>,  <38.495956, 40.955009, 41.629868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919144, 40.494709, 41.276382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.766457, 40.125099, 41.285057>,  <38.674843, 39.903332, 41.290260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.766457, 40.125099, 41.285057>,  <38.919144, 40.494709, 41.276382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766457, 40.125099, 41.285057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106558, -0.067303, -0.992026,
		0.918116, -0.376364, 0.124153,
		-0.381719, -0.924024, 0.021687,
		38.651939, 39.847893, 41.291565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375092, 40.011154, 40.892563>,  <38.919144, 40.494709, 41.276382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.375092, 40.011154, 40.892563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999111, 39.876381, 40.914345>,  <38.773521, 39.795517, 40.927414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999111, 39.876381, 40.914345>,  <39.375092, 40.011154, 40.892563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999111, 39.876381, 40.914345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025887, -0.088710, -0.995721,
		0.340320, -0.937341, 0.074661,
		-0.939953, -0.336931, 0.054455,
		38.717125, 39.775303, 40.930679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345840, 39.425327, 40.584061>,  <39.375092, 40.011154, 40.892563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345840, 39.425327, 40.584061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965443, 39.548870, 40.578205>,  <38.737206, 39.622997, 40.574692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965443, 39.548870, 40.578205>,  <39.345840, 39.425327, 40.584061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965443, 39.548870, 40.578205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034019, -0.151568, -0.987861,
		-0.307331, -0.938953, 0.154648,
		-0.950994, 0.308861, -0.014639,
		38.680145, 39.641529, 40.573814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949688, 38.877510, 40.121864>,  <39.345840, 39.425327, 40.584061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949688, 38.877510, 40.121864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785206, 39.240398, 40.157345>,  <38.686516, 39.458130, 40.178631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785206, 39.240398, 40.157345>,  <38.949688, 38.877510, 40.121864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785206, 39.240398, 40.157345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175903, 0.016503, -0.984269,
		-0.894409, -0.420340, 0.152796,
		-0.411206, 0.907217, 0.088699,
		38.661842, 39.512562, 40.183956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223457, 38.849876, 39.952019>,  <38.949688, 38.877510, 40.121864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223457, 38.849876, 39.952019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453869, 39.162956, 39.857723>,  <38.592113, 39.350803, 39.801144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453869, 39.162956, 39.857723>,  <38.223457, 38.849876, 39.952019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453869, 39.162956, 39.857723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299814, -0.066001, -0.951712,
		-0.760464, 0.618890, 0.196646,
		0.576026, 0.782700, -0.235743,
		38.626678, 39.397766, 39.786999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748646, 38.758190, 39.415543>,  <38.223457, 38.849876, 39.952019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748646, 38.758190, 39.415543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.932610, 39.106571, 39.484741>,  <38.042988, 39.315601, 39.526260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.932610, 39.106571, 39.484741>,  <37.748646, 38.758190, 39.415543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932610, 39.106571, 39.484741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013724, 0.201773, -0.979336,
		-0.887861, 0.448029, 0.104750,
		0.459907, 0.870952, 0.172998,
		38.070583, 39.367855, 39.536640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367577, 39.264103, 39.073761>,  <37.748646, 38.758190, 39.415543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367577, 39.264103, 39.073761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728497, 39.429779, 39.121616>,  <37.945049, 39.529182, 39.150330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728497, 39.429779, 39.121616>,  <37.367577, 39.264103, 39.073761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728497, 39.429779, 39.121616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073867, 0.124879, -0.989418,
		-0.424743, 0.901585, 0.082083,
		0.902295, 0.414186, 0.119639,
		37.999184, 39.554035, 39.157509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313873, 39.937038, 38.698097>,  <37.367577, 39.264103, 39.073761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313873, 39.937038, 38.698097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708080, 39.882786, 38.738808>,  <37.944603, 39.850235, 38.763233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708080, 39.882786, 38.738808>,  <37.313873, 39.937038, 38.698097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708080, 39.882786, 38.738808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132610, 0.242425, -0.961064,
		0.105675, 0.960643, 0.256900,
		0.985519, -0.135628, 0.101772,
		38.003735, 39.842098, 38.769341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611305, 40.486565, 38.339268>,  <37.313873, 39.937038, 38.698097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611305, 40.486565, 38.339268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908733, 40.220119, 38.362553>,  <38.087193, 40.060253, 38.376522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908733, 40.220119, 38.362553>,  <37.611305, 40.486565, 38.339268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908733, 40.220119, 38.362553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333574, 0.294093, -0.895677,
		0.579506, 0.685419, 0.440879,
		0.743574, -0.666116, 0.058209,
		38.131805, 40.020287, 38.380016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993996, 40.719597, 37.844868>,  <37.611305, 40.486565, 38.339268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993996, 40.719597, 37.844868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238689, 40.418468, 37.942059>,  <38.385506, 40.237789, 38.000374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238689, 40.418468, 37.942059>,  <37.993996, 40.719597, 37.844868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238689, 40.418468, 37.942059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593537, 0.233742, -0.770115,
		0.522967, 0.615322, 0.589817,
		0.611734, -0.752824, 0.242977,
		38.422211, 40.192623, 38.014950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854496, 40.925961, 37.861317>,  <37.993996, 40.719597, 37.844868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854496, 40.925961, 37.861317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.774006, 40.543697, 37.775314>,  <38.725712, 40.314339, 37.723713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.774006, 40.543697, 37.775314>,  <38.854496, 40.925961, 37.861317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774006, 40.543697, 37.775314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633274, 0.040538, -0.772866,
		0.747311, -0.291675, 0.597036,
		-0.201223, -0.955658, -0.215005,
		38.713638, 40.257000, 37.710812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523582, 40.546577, 37.605057>,  <38.854496, 40.925961, 37.861317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523582, 40.546577, 37.605057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207523, 40.347034, 37.462616>,  <39.017887, 40.227310, 37.377151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207523, 40.347034, 37.462616>,  <39.523582, 40.546577, 37.605057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207523, 40.347034, 37.462616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508643, -0.209526, -0.835094,
		0.341978, -0.840977, 0.419296,
		-0.790148, -0.498855, -0.356104,
		38.970478, 40.197376, 37.355785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020222, 39.922718, 37.482693>,  <39.523582, 40.546577, 37.605057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020222, 39.922718, 37.482693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932869, 39.999905, 37.100056>,  <39.880455, 40.046219, 36.870472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932869, 39.999905, 37.100056>,  <40.020222, 39.922718, 37.482693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932869, 39.999905, 37.100056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856492, -0.431888, -0.282655,
		-0.467686, -0.881042, -0.070960,
		-0.218384, 0.192970, -0.956593,
		39.867355, 40.057796, 36.813076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291119, 39.421246, 37.068142>,  <40.020222, 39.922718, 37.482693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.291119, 39.421246, 37.068142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.211250, 39.717632, 36.811672>,  <40.163330, 39.895462, 36.657791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.211250, 39.717632, 36.811672>,  <40.291119, 39.421246, 37.068142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.211250, 39.717632, 36.811672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915185, -0.092775, -0.392211,
		-0.350099, -0.665104, -0.659596,
		-0.199667, 0.740965, -0.641174,
		40.151352, 39.939922, 36.619320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571163, 39.281334, 36.440453>,  <40.291119, 39.421246, 37.068142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571163, 39.281334, 36.440453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.558315, 39.676353, 36.378853>,  <40.550606, 39.913364, 36.341892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.558315, 39.676353, 36.378853>,  <40.571163, 39.281334, 36.440453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.558315, 39.676353, 36.378853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916995, -0.032178, -0.397600,
		-0.397604, -0.153988, -0.904543,
		-0.032119, 0.987549, -0.154000,
		40.548679, 39.972618, 36.332653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013382, 39.435547, 35.778530>,  <40.571163, 39.281334, 36.440453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013382, 39.435547, 35.778530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.983456, 39.729523, 36.048130>,  <40.965500, 39.905907, 36.209888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.983456, 39.729523, 36.048130>,  <41.013382, 39.435547, 35.778530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.983456, 39.729523, 36.048130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984578, 0.161630, -0.066950,
		-0.158142, 0.658593, -0.735694,
		-0.074817, 0.734936, 0.673997,
		40.961010, 39.950005, 36.250328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.318588, 39.991898, 35.515739>,  <41.013382, 39.435547, 35.778530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.318588, 39.991898, 35.515739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.329468, 40.043770, 35.912212>,  <41.335995, 40.074894, 36.150097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.329468, 40.043770, 35.912212>,  <41.318588, 39.991898, 35.515739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.329468, 40.043770, 35.912212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956663, 0.284202, -0.063441,
		-0.289923, 0.949953, -0.116333,
		0.027203, 0.129685, 0.991182,
		41.337627, 40.082676, 36.209568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.535969, 39.314236, 35.280209>,  <41.318588, 39.991898, 35.515739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.535969, 39.314236, 35.280209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.419956, 38.976978, 35.099110>,  <41.350349, 38.774624, 34.990448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.419956, 38.976978, 35.099110>,  <41.535969, 39.314236, 35.280209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.419956, 38.976978, 35.099110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908206, -0.391647, 0.147562,
		-0.301735, -0.368393, 0.879342,
		-0.290031, -0.843148, -0.452751,
		41.332947, 38.724033, 34.963284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.736454, 38.761272, 35.736034>,  <41.535969, 39.314236, 35.280209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.736454, 38.761272, 35.736034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.718636, 38.634830, 35.356964>,  <41.707943, 38.558964, 35.129520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.718636, 38.634830, 35.356964>,  <41.736454, 38.761272, 35.736034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.718636, 38.634830, 35.356964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859649, -0.495399, 0.124834,
		-0.508939, -0.809107, 0.293814,
		-0.044551, -0.316110, -0.947676,
		41.705269, 38.539997, 35.072662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.956779, 37.988277, 35.697460>,  <41.736454, 38.761272, 35.736034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.956779, 37.988277, 35.697460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.982456, 38.155476, 35.334988>,  <41.997864, 38.255795, 35.117504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.982456, 38.155476, 35.334988>,  <41.956779, 37.988277, 35.697460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.982456, 38.155476, 35.334988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949866, -0.304029, -0.072952,
		-0.305998, -0.856065, -0.416555,
		0.064193, 0.417995, -0.906179,
		42.001713, 38.280872, 35.063133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.216370, 37.426685, 35.183632>,  <41.956779, 37.988277, 35.697460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.216370, 37.426685, 35.183632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.293919, 37.810604, 35.102448>,  <42.340446, 38.040955, 35.053738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.293919, 37.810604, 35.102448>,  <42.216370, 37.426685, 35.183632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.293919, 37.810604, 35.102448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979380, -0.201344, -0.016624,
		-0.056821, -0.195554, -0.979045,
		0.193874, 0.959802, -0.202963,
		42.352081, 38.098545, 35.041557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.729996, 37.412903, 34.722195>,  <42.216370, 37.426685, 35.183632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.729996, 37.412903, 34.722195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.758591, 37.771053, 34.898006>,  <42.775745, 37.985943, 35.003494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.758591, 37.771053, 34.898006>,  <42.729996, 37.412903, 34.722195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.758591, 37.771053, 34.898006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997377, -0.059152, -0.041714,
		-0.011351, 0.441357, -0.897260,
		0.071485, 0.895380, 0.439528,
		42.780037, 38.039669, 35.029865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.990784, 37.903816, 34.240635>,  <42.729996, 37.412903, 34.722195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.990784, 37.903816, 34.240635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.095253, 37.921387, 34.626350>,  <43.157936, 37.931931, 34.857780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.095253, 37.921387, 34.626350>,  <42.990784, 37.903816, 34.240635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.095253, 37.921387, 34.626350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940246, -0.237658, -0.243838,
		0.218460, 0.970355, -0.103374,
		0.261177, 0.043928, 0.964291,
		43.173607, 37.934566, 34.915638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.687752, 38.101223, 34.233013>,  <42.990784, 37.903816, 34.240635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.687752, 38.101223, 34.233013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.621330, 37.930843, 34.588764>,  <43.581478, 37.828613, 34.802216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.621330, 37.930843, 34.588764>,  <43.687752, 38.101223, 34.233013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.621330, 37.930843, 34.588764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942705, -0.333223, 0.016416,
		0.289369, 0.841147, 0.456878,
		-0.166050, -0.425951, 0.889378,
		43.571514, 37.803059, 34.855579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.295311, 38.248608, 34.581158>,  <43.687752, 38.101223, 34.233013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.295311, 38.248608, 34.581158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.124886, 37.911243, 34.712078>,  <44.022629, 37.708824, 34.790630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.124886, 37.911243, 34.712078>,  <44.295311, 38.248608, 34.581158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.124886, 37.911243, 34.712078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899530, -0.433530, 0.053818,
		0.096502, 0.317343, 0.943388,
		-0.426066, -0.843412, 0.327297,
		43.997066, 37.658218, 34.810268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.720272, 37.927357, 35.125107>,  <44.295311, 38.248608, 34.581158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.720272, 37.927357, 35.125107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.510880, 37.646919, 34.931435>,  <44.385246, 37.478657, 34.815231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.510880, 37.646919, 34.931435>,  <44.720272, 37.927357, 35.125107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.510880, 37.646919, 34.931435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816727, -0.574791, -0.050715,
		-0.242748, -0.421994, 0.873496,
		-0.523479, -0.701097, -0.484183,
		44.353836, 37.436592, 34.786179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.336075, 37.647293, 35.230694>,  <44.720272, 37.927357, 35.125107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.336075, 37.647293, 35.230694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.592594, 37.552265, 35.522530>,  <45.746506, 37.495251, 35.697632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.592594, 37.552265, 35.522530>,  <45.336075, 37.647293, 35.230694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.592594, 37.552265, 35.522530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237465, -0.842729, -0.483133,
		0.729622, 0.483084, -0.484026,
		0.641297, -0.237566, 0.729589,
		45.784985, 37.480995, 35.741405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.032913, 37.468838, 34.912239>,  <45.336075, 37.647293, 35.230694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.032913, 37.468838, 34.912239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.992496, 37.255650, 35.248268>,  <45.968246, 37.127735, 35.449886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.992496, 37.255650, 35.248268>,  <46.032913, 37.468838, 34.912239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.992496, 37.255650, 35.248268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048149, -0.846029, -0.530959,
		0.993716, -0.013202, 0.111149,
		-0.101045, -0.532974, 0.840076,
		45.962181, 37.095757, 35.500290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.627541, 37.075745, 34.906521>,  <46.032913, 37.468838, 34.912239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.627541, 37.075745, 34.906521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.296524, 36.941383, 35.086452>,  <46.097916, 36.860767, 35.194412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.296524, 36.941383, 35.086452>,  <46.627541, 37.075745, 34.906521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.296524, 36.941383, 35.086452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030247, -0.773415, -0.633178,
		0.560596, -0.537584, 0.629870,
		-0.827537, -0.335905, 0.449833,
		46.048264, 36.840611, 35.221401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.657894, 36.400051, 34.976440>,  <46.627541, 37.075745, 34.906521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.657894, 36.400051, 34.976440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.265419, 36.440815, 35.042019>,  <46.029934, 36.465275, 35.081367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.265419, 36.440815, 35.042019>,  <46.657894, 36.400051, 34.976440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.265419, 36.440815, 35.042019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165223, -0.882571, -0.440192,
		0.099837, -0.459001, 0.882809,
		-0.981190, 0.101912, 0.163951,
		45.971062, 36.471390, 35.091206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.871986, 35.859650, 34.415459>,  <46.657894, 36.400051, 34.976440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.871986, 35.859650, 34.415459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.526836, 35.684772, 34.314018>,  <46.319748, 35.579845, 34.253155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.526836, 35.684772, 34.314018>,  <46.871986, 35.859650, 34.415459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.526836, 35.684772, 34.314018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485086, 0.575464, 0.658432,
		-0.141928, 0.691159, -0.708629,
		-0.862872, -0.437196, -0.253597,
		46.267975, 35.553612, 34.237938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.771225, 35.294342, 34.919743>,  <46.871986, 35.859650, 34.415459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.771225, 35.294342, 34.919743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.385437, 35.331997, 34.821003>,  <46.153965, 35.354591, 34.761761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.385437, 35.331997, 34.821003>,  <46.771225, 35.294342, 34.919743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.385437, 35.331997, 34.821003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119621, 0.677488, 0.725742,
		0.235557, 0.729485, -0.642156,
		-0.964471, 0.094139, -0.246849,
		46.096096, 35.360237, 34.746948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.367329, 35.355309, 35.536816>,  <46.771225, 35.294342, 34.919743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.367329, 35.355309, 35.536816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.347195, 34.968838, 35.435650>,  <47.335114, 34.736954, 35.374950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.347195, 34.968838, 35.435650>,  <47.367329, 35.355309, 35.536816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.347195, 34.968838, 35.435650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376185, 0.216244, -0.900957,
		0.925177, -0.140488, 0.352579,
		-0.050331, -0.966179, -0.252913,
		47.332096, 34.678986, 35.359776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.010921, 35.091591, 35.393192>,  <47.367329, 35.355309, 35.536816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.010921, 35.091591, 35.393192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.730453, 34.906071, 35.176582>,  <47.562172, 34.794758, 35.046616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.730453, 34.906071, 35.176582>,  <48.010921, 35.091591, 35.393192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.730453, 34.906071, 35.176582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418240, 0.347552, -0.839216,
		0.577434, -0.814922, -0.049715,
		-0.701174, -0.463799, -0.541522,
		47.520100, 34.766930, 35.014126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<41.231644, 32.967171, 29.283207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.872940, 32.819427, 29.185724>,  <40.657719, 32.730782, 29.127234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.872940, 32.819427, 29.185724>,  <41.231644, 32.967171, 29.283207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.872940, 32.819427, 29.185724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406083, 0.468050, 0.784873,
		-0.175833, 0.802809, -0.569719,
		-0.896760, -0.369360, -0.243709,
		40.603912, 32.708618, 29.112612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745289, 33.597778, 29.210690>,  <41.231644, 32.967171, 29.283207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.745289, 33.597778, 29.210690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.508846, 33.280563, 29.269590>,  <40.366982, 33.090237, 29.304930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.508846, 33.280563, 29.269590>,  <40.745289, 33.597778, 29.210690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508846, 33.280563, 29.269590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620380, 0.563677, 0.545341,
		-0.515477, 0.231005, -0.825179,
		-0.591111, -0.793035, 0.147251,
		40.331512, 33.042652, 29.313766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.054646, 33.816189, 29.135752>,  <40.745289, 33.597778, 29.210690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.054646, 33.816189, 29.135752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.002892, 33.459194, 29.308598>,  <39.971840, 33.244995, 29.412304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.002892, 33.459194, 29.308598>,  <40.054646, 33.816189, 29.135752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002892, 33.459194, 29.308598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758953, 0.369584, 0.536094,
		-0.638161, -0.258591, -0.725177,
		-0.129385, -0.892490, 0.432113,
		39.964077, 33.191448, 29.438231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407001, 33.821980, 29.163506>,  <40.054646, 33.816189, 29.135752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407001, 33.821980, 29.163506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.536839, 33.567848, 29.443789>,  <39.614742, 33.415367, 29.611958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.536839, 33.567848, 29.443789>,  <39.407001, 33.821980, 29.163506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536839, 33.567848, 29.443789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705623, 0.330676, 0.626698,
		-0.629868, -0.697858, -0.340969,
		0.324596, -0.635333, 0.700707,
		39.634216, 33.377247, 29.654001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850796, 33.496948, 29.529982>,  <39.407001, 33.821980, 29.163506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850796, 33.496948, 29.529982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.177532, 33.489826, 29.760618>,  <39.373573, 33.485554, 29.899000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.177532, 33.489826, 29.760618>,  <38.850796, 33.496948, 29.529982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177532, 33.489826, 29.760618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541552, 0.320679, 0.777101,
		-0.198735, -0.947021, 0.252302,
		0.816839, -0.017802, 0.576591,
		39.422585, 33.484486, 29.933596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547485, 33.214947, 30.104904>,  <38.850796, 33.496948, 29.529982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547485, 33.214947, 30.104904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.902809, 33.358013, 30.220137>,  <39.116001, 33.443851, 30.289276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.902809, 33.358013, 30.220137>,  <38.547485, 33.214947, 30.104904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902809, 33.358013, 30.220137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416162, 0.361619, 0.834291,
		0.194220, -0.860994, 0.470073,
		0.888306, 0.357663, 0.288079,
		39.169300, 33.465313, 30.306561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751492, 32.903713, 30.817505>,  <38.547485, 33.214947, 30.104904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751492, 32.903713, 30.817505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.942856, 33.253670, 30.787310>,  <39.057674, 33.463642, 30.769192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.942856, 33.253670, 30.787310>,  <38.751492, 32.903713, 30.817505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942856, 33.253670, 30.787310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467313, 0.326427, 0.821623,
		0.743469, -0.357793, 0.565011,
		0.478406, 0.874888, -0.075487,
		39.086376, 33.516136, 30.764664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926071, 33.177299, 31.550364>,  <38.751492, 32.903713, 30.817505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926071, 33.177299, 31.550364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.004040, 33.507500, 31.338495>,  <39.050819, 33.705620, 31.211374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.004040, 33.507500, 31.338495>,  <38.926071, 33.177299, 31.550364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004040, 33.507500, 31.338495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240345, 0.563767, 0.790190,
		0.950915, -0.026721, 0.308296,
		0.194922, 0.825501, -0.529672,
		39.062515, 33.755150, 31.179594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449303, 33.692375, 31.909296>,  <38.926071, 33.177299, 31.550364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449303, 33.692375, 31.909296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.214146, 33.886883, 31.650709>,  <39.073051, 34.003590, 31.495556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.214146, 33.886883, 31.650709>,  <39.449303, 33.692375, 31.909296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214146, 33.886883, 31.650709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314440, 0.598944, 0.736474,
		0.745325, 0.636243, -0.199211,
		-0.587893, 0.486273, -0.646468,
		39.037777, 34.032764, 31.456768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671844, 34.314240, 31.994492>,  <39.449303, 33.692375, 31.909296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671844, 34.314240, 31.994492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.295925, 34.368881, 31.869198>,  <39.070374, 34.401665, 31.794022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.295925, 34.368881, 31.869198>,  <39.671844, 34.314240, 31.994492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295925, 34.368881, 31.869198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192499, 0.545734, 0.815548,
		0.282348, 0.826749, -0.486586,
		-0.939800, 0.136601, -0.313235,
		39.013985, 34.409863, 31.775227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464493, 35.014492, 31.961447>,  <39.671844, 34.314240, 31.994492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464493, 35.014492, 31.961447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.104343, 34.844620, 31.999332>,  <38.888252, 34.742695, 32.022064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.104343, 34.844620, 31.999332>,  <39.464493, 35.014492, 31.961447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104343, 34.844620, 31.999332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197951, 0.593642, 0.780003,
		-0.387480, 0.683546, -0.618567,
		-0.900375, -0.424682, 0.094716,
		38.834232, 34.717216, 32.027748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950039, 35.595810, 32.013912>,  <39.464493, 35.014492, 31.961447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950039, 35.595810, 32.013912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.759033, 35.271416, 32.149139>,  <38.644428, 35.076778, 32.230274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.759033, 35.271416, 32.149139>,  <38.950039, 35.595810, 32.013912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759033, 35.271416, 32.149139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363740, 0.532713, 0.764140,
		-0.799794, 0.241923, -0.549366,
		-0.477518, -0.810981, 0.338063,
		38.615776, 35.028122, 32.250557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255283, 35.808132, 32.201832>,  <38.950039, 35.595810, 32.013912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255283, 35.808132, 32.201832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.311466, 35.481068, 32.425152>,  <38.345177, 35.284828, 32.559143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.311466, 35.481068, 32.425152>,  <38.255283, 35.808132, 32.201832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311466, 35.481068, 32.425152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225799, 0.522577, 0.822148,
		-0.963995, -0.241542, -0.111226,
		0.140459, -0.817662, 0.558302,
		38.353603, 35.235767, 32.592644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742950, 35.743328, 32.611023>,  <38.255283, 35.808132, 32.201832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742950, 35.743328, 32.611023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.955196, 35.465031, 32.804676>,  <38.082546, 35.298054, 32.920868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.955196, 35.465031, 32.804676>,  <37.742950, 35.743328, 32.611023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955196, 35.465031, 32.804676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417257, 0.282768, 0.863678,
		-0.737796, -0.660291, -0.140262,
		0.530617, -0.695743, 0.484136,
		38.114380, 35.256310, 32.949917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283852, 35.561565, 33.136242>,  <37.742950, 35.743328, 32.611023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283852, 35.561565, 33.136242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.630840, 35.406033, 33.260376>,  <37.839031, 35.312714, 33.334858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.630840, 35.406033, 33.260376>,  <37.283852, 35.561565, 33.136242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.630840, 35.406033, 33.260376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297304, 0.094979, 0.950047,
		-0.398887, -0.916399, -0.033211,
		0.867467, -0.388834, 0.310335,
		37.891079, 35.289383, 33.353477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059685, 34.912975, 33.639133>,  <37.283852, 35.561565, 33.136242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059685, 34.912975, 33.639133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.419579, 35.059883, 33.733437>,  <37.635517, 35.148029, 33.790020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.419579, 35.059883, 33.733437>,  <37.059685, 34.912975, 33.639133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419579, 35.059883, 33.733437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257492, 0.010564, 0.966223,
		0.352377, -0.930053, 0.104074,
		0.899738, 0.367273, 0.235759,
		37.689499, 35.170063, 33.804165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253223, 34.567329, 34.217541>,  <37.059685, 34.912975, 33.639133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253223, 34.567329, 34.217541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.493347, 34.886822, 34.201271>,  <37.637421, 35.078518, 34.191509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.493347, 34.886822, 34.201271>,  <37.253223, 34.567329, 34.217541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493347, 34.886822, 34.201271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113586, 0.135488, 0.984247,
		0.791662, -0.586231, 0.172059,
		0.600308, 0.798734, -0.040673,
		37.673439, 35.126442, 34.189068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924801, 34.527321, 34.757092>,  <37.253223, 34.567329, 34.217541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924801, 34.527321, 34.757092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.814842, 34.906567, 34.693203>,  <37.748867, 35.134113, 34.654869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.814842, 34.906567, 34.693203>,  <37.924801, 34.527321, 34.757092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814842, 34.906567, 34.693203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081968, 0.142409, 0.986408,
		0.957974, 0.284249, 0.038567,
		-0.274893, 0.948115, -0.159723,
		37.732376, 35.191002, 34.645287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210751, 34.854118, 35.424080>,  <37.924801, 34.527321, 34.757092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210751, 34.854118, 35.424080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.995308, 35.134422, 35.236958>,  <37.866043, 35.302605, 35.124683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.995308, 35.134422, 35.236958>,  <38.210751, 34.854118, 35.424080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995308, 35.134422, 35.236958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245537, 0.400574, 0.882752,
		0.805984, 0.590323, -0.043692,
		-0.538611, 0.700756, -0.467803,
		37.833725, 35.344650, 35.096619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446503, 35.375076, 35.727242>,  <38.210751, 34.854118, 35.424080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446503, 35.375076, 35.727242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.109444, 35.517014, 35.565239>,  <37.907207, 35.602177, 35.468037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.109444, 35.517014, 35.565239>,  <38.446503, 35.375076, 35.727242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109444, 35.517014, 35.565239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327758, 0.258764, 0.908634,
		0.427220, 0.898404, -0.101746,
		-0.842649, 0.354838, -0.405008,
		37.856647, 35.623466, 35.443737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361065, 36.195721, 35.902901>,  <38.446503, 35.375076, 35.727242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361065, 36.195721, 35.902901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.016972, 35.996262, 35.860294>,  <37.810516, 35.876587, 35.834732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.016972, 35.996262, 35.860294>,  <38.361065, 36.195721, 35.902901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016972, 35.996262, 35.860294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287182, 0.301197, 0.909289,
		-0.421331, 0.812793, -0.402303,
		-0.860236, -0.498646, -0.106516,
		37.758900, 35.846668, 35.828339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896591, 36.606266, 36.082706>,  <38.361065, 36.195721, 35.902901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896591, 36.606266, 36.082706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.743130, 36.241817, 36.142941>,  <37.651054, 36.023148, 36.179081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.743130, 36.241817, 36.142941>,  <37.896591, 36.606266, 36.082706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743130, 36.241817, 36.142941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400500, 0.311086, 0.861873,
		-0.832113, 0.270350, -0.484252,
		-0.383651, -0.911118, 0.150584,
		37.628033, 35.968483, 36.188114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731632, 36.820038, 36.079536>,  <37.896591, 36.606266, 36.082706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731632, 36.820038, 36.079536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.091599, 36.915047, 36.225815>,  <39.307579, 36.972054, 36.313583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.091599, 36.915047, 36.225815>,  <38.731632, 36.820038, 36.079536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091599, 36.915047, 36.225815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421576, -0.259523, -0.868862,
		-0.111468, 0.936072, -0.333683,
		0.899916, 0.237523, 0.365697,
		39.361572, 36.986305, 36.335526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102196, 36.995430, 35.514961>,  <38.731632, 36.820038, 36.079536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102196, 36.995430, 35.514961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.392490, 36.914169, 35.777882>,  <39.566666, 36.865414, 35.935635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.392490, 36.914169, 35.777882>,  <39.102196, 36.995430, 35.514961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392490, 36.914169, 35.777882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610018, -0.251741, -0.751335,
		0.318104, 0.946233, -0.058770,
		0.725732, -0.203152, 0.657299,
		39.610210, 36.853226, 35.975071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710957, 37.432148, 35.322433>,  <39.102196, 36.995430, 35.514961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710957, 37.432148, 35.322433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.850918, 37.121731, 35.532318>,  <39.934895, 36.935482, 35.658249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.850918, 37.121731, 35.532318>,  <39.710957, 37.432148, 35.322433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850918, 37.121731, 35.532318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633752, -0.216393, -0.742652,
		0.689875, 0.592394, 0.416103,
		0.349901, -0.776043, 0.524715,
		39.955887, 36.888916, 35.689732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439529, 37.524696, 35.252949>,  <39.710957, 37.432148, 35.322433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.439529, 37.524696, 35.252949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.360439, 37.147133, 35.358730>,  <40.312984, 36.920593, 35.422199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.360439, 37.147133, 35.358730>,  <40.439529, 37.524696, 35.252949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360439, 37.147133, 35.358730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781855, -0.314580, -0.538277,
		0.591277, 0.100333, 0.800203,
		-0.197721, -0.943913, 0.264450,
		40.301125, 36.863960, 35.438065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048420, 37.254963, 35.512970>,  <40.439529, 37.524696, 35.252949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048420, 37.254963, 35.512970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.830521, 36.927032, 35.442387>,  <40.699780, 36.730274, 35.400036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.830521, 36.927032, 35.442387>,  <41.048420, 37.254963, 35.512970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.830521, 36.927032, 35.442387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817519, -0.472285, -0.329561,
		0.186844, -0.323786, 0.927498,
		-0.544750, -0.819823, -0.176457,
		40.667095, 36.681084, 35.389450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.525600, 36.819134, 35.662788>,  <41.048420, 37.254963, 35.512970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.525600, 36.819134, 35.662788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.262325, 36.595860, 35.460712>,  <41.104359, 36.461895, 35.339466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.262325, 36.595860, 35.460712>,  <41.525600, 36.819134, 35.662788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262325, 36.595860, 35.460712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751625, -0.525508, -0.398624,
		-0.042977, -0.642086, 0.765427,
		-0.658189, -0.558182, -0.505193,
		41.064869, 36.428406, 35.309155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.726295, 36.106888, 35.756264>,  <41.525600, 36.819134, 35.662788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.726295, 36.106888, 35.756264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.512505, 36.130280, 35.419003>,  <41.384228, 36.144314, 35.216644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.512505, 36.130280, 35.419003>,  <41.726295, 36.106888, 35.756264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.512505, 36.130280, 35.419003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582785, -0.697015, -0.417770,
		-0.612121, -0.714668, 0.338462,
		-0.534480, 0.058476, -0.843155,
		41.352161, 36.147823, 35.166058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610535, 35.425835, 35.477959>,  <41.726295, 36.106888, 35.756264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.610535, 35.425835, 35.477959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.514626, 35.652805, 35.162861>,  <41.457081, 35.788986, 34.973804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.514626, 35.652805, 35.162861>,  <41.610535, 35.425835, 35.477959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514626, 35.652805, 35.162861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483097, -0.634082, -0.603785,
		-0.842097, -0.525325, -0.122088,
		-0.239770, 0.567426, -0.787742,
		41.442696, 35.823032, 34.926537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415169, 34.963310, 34.927120>,  <41.610535, 35.425835, 35.477959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.415169, 34.963310, 34.927120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.462090, 35.308491, 34.730530>,  <41.490242, 35.515598, 34.612576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.462090, 35.308491, 34.730530>,  <41.415169, 34.963310, 34.927120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.462090, 35.308491, 34.730530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321518, -0.501243, -0.803356,
		-0.939609, -0.063783, -0.336253,
		0.117304, 0.862953, -0.491480,
		41.497280, 35.567375, 34.583084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132664, 34.846176, 34.177956>,  <41.415169, 34.963310, 34.927120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.132664, 34.846176, 34.177956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.393532, 35.149395, 34.175560>,  <41.550053, 35.331326, 34.174122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.393532, 35.149395, 34.175560>,  <41.132664, 34.846176, 34.177956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.393532, 35.149395, 34.175560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400178, -0.350976, -0.846566,
		-0.643842, 0.549707, -0.532250,
		0.652170, 0.758049, -0.005992,
		41.589184, 35.376808, 34.173763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977890, 35.096539, 33.517200>,  <41.132664, 34.846176, 34.177956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.977890, 35.096539, 33.517200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.325069, 35.261642, 33.627682>,  <41.533379, 35.360703, 33.693970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.325069, 35.261642, 33.627682>,  <40.977890, 35.096539, 33.517200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.325069, 35.261642, 33.627682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358587, -0.136049, -0.923529,
		-0.343617, 0.900623, -0.266094,
		0.867953, 0.412758, 0.276203,
		41.585457, 35.385471, 33.710545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188179, 35.430119, 32.976517>,  <40.977890, 35.096539, 33.517200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188179, 35.430119, 32.976517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.545372, 35.368401, 33.145645>,  <41.759689, 35.331371, 33.247120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.545372, 35.368401, 33.145645>,  <41.188179, 35.430119, 32.976517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.545372, 35.368401, 33.145645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382659, -0.234335, -0.893677,
		0.236969, 0.959834, -0.150216,
		0.892983, -0.154292, 0.422819,
		41.813267, 35.322113, 33.272491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680614, 35.675808, 32.506680>,  <41.188179, 35.430119, 32.976517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.680614, 35.675808, 32.506680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.912544, 35.459393, 32.750347>,  <42.051701, 35.329544, 32.896549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.912544, 35.459393, 32.750347>,  <41.680614, 35.675808, 32.506680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.912544, 35.459393, 32.750347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527421, -0.320630, -0.786781,
		0.620995, 0.777481, 0.099446,
		0.579821, -0.541037, 0.609169,
		42.086491, 35.297081, 32.933098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.395878, 35.893799, 32.296329>,  <41.680614, 35.675808, 32.506680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.395878, 35.893799, 32.296329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.437168, 35.537659, 32.473698>,  <42.461941, 35.323975, 32.580116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.437168, 35.537659, 32.473698>,  <42.395878, 35.893799, 32.296329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.437168, 35.537659, 32.473698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580092, -0.308245, -0.753975,
		0.807984, 0.335052, 0.484668,
		0.103224, -0.890351, 0.443418,
		42.468136, 35.270554, 32.606724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.044579, 35.652493, 32.163780>,  <42.395878, 35.893799, 32.296329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.044579, 35.652493, 32.163780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.838345, 35.319893, 32.246506>,  <42.714603, 35.120331, 32.296143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.838345, 35.319893, 32.246506>,  <43.044579, 35.652493, 32.163780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.838345, 35.319893, 32.246506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433227, -0.461225, -0.774329,
		0.739244, -0.309638, 0.598032,
		-0.515589, -0.831502, 0.206814,
		42.683666, 35.070442, 32.308552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.461575, 35.121273, 32.032356>,  <43.044579, 35.652493, 32.163780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.461575, 35.121273, 32.032356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.102501, 34.946384, 32.054276>,  <42.887058, 34.841454, 32.067425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.102501, 34.946384, 32.054276>,  <43.461575, 35.121273, 32.032356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.102501, 34.946384, 32.054276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256273, -0.619194, -0.742241,
		0.358450, -0.652257, 0.667889,
		-0.897685, -0.437218, 0.054794,
		42.833195, 34.815220, 32.070713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.597160, 34.412022, 31.991592>,  <43.461575, 35.121273, 32.032356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.597160, 34.412022, 31.991592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.213814, 34.487865, 31.906197>,  <42.983807, 34.533371, 31.854959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.213814, 34.487865, 31.906197>,  <43.597160, 34.412022, 31.991592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.213814, 34.487865, 31.906197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065335, -0.582232, -0.810393,
		-0.277956, -0.790604, 0.545606,
		-0.958369, 0.189607, -0.213489,
		42.926304, 34.544746, 31.842150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.280029, 33.783722, 31.965296>,  <43.597160, 34.412022, 31.991592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.280029, 33.783722, 31.965296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.066727, 34.029285, 31.732489>,  <42.938744, 34.176624, 31.592804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.066727, 34.029285, 31.732489>,  <43.280029, 33.783722, 31.965296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.066727, 34.029285, 31.732489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066387, -0.655513, -0.752260,
		-0.843342, -0.439789, 0.308804,
		-0.533261, 0.613912, -0.582018,
		42.906750, 34.213459, 31.557882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<42.629356, 33.229740, 31.412855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.680149, 33.596966, 31.262634>,  <42.710625, 33.817299, 31.172503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.680149, 33.596966, 31.262634>,  <42.629356, 33.229740, 31.412855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.680149, 33.596966, 31.262634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075321, -0.386449, -0.919230,
		-0.989041, 0.088440, -0.118222,
		0.126983, 0.918061, -0.375553,
		42.718243, 33.872383, 31.149969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.377434, 33.189571, 30.727980>,  <42.629356, 33.229740, 31.412855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.377434, 33.189571, 30.727980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.557503, 33.543892, 30.682911>,  <42.665543, 33.756485, 30.655869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.557503, 33.543892, 30.682911>,  <42.377434, 33.189571, 30.727980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.557503, 33.543892, 30.682911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080072, -0.165718, -0.982917,
		-0.889345, 0.433458, -0.145530,
		0.450171, 0.885805, -0.112673,
		42.692554, 33.809635, 30.649109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.979218, 33.478821, 30.247120>,  <42.377434, 33.189571, 30.727980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.979218, 33.478821, 30.247120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.338345, 33.654835, 30.240250>,  <42.553822, 33.760441, 30.236128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.338345, 33.654835, 30.240250>,  <41.979218, 33.478821, 30.247120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.338345, 33.654835, 30.240250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049308, -0.139212, -0.989034,
		-0.437596, 0.887126, -0.146684,
		0.897819, 0.440030, -0.017176,
		42.607689, 33.786842, 30.235096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.890667, 33.952827, 29.899855>,  <41.979218, 33.478821, 30.247120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.890667, 33.952827, 29.899855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.285820, 33.898655, 29.869556>,  <42.522911, 33.866150, 29.851377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.285820, 33.898655, 29.869556>,  <41.890667, 33.952827, 29.899855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.285820, 33.898655, 29.869556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067578, 0.063923, -0.995664,
		0.139690, 0.988722, 0.053996,
		0.987887, -0.135435, -0.075745,
		42.582188, 33.858025, 29.846832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.103905, 34.410885, 29.463867>,  <41.890667, 33.952827, 29.899855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.103905, 34.410885, 29.463867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.414875, 34.159374, 29.457527>,  <42.601456, 34.008469, 29.453722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.414875, 34.159374, 29.457527>,  <42.103905, 34.410885, 29.463867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.414875, 34.159374, 29.457527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078847, 0.122428, -0.989341,
		0.624012, 0.767890, 0.144755,
		0.777427, -0.628773, -0.015851,
		42.648102, 33.970741, 29.452772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.645981, 34.726357, 28.970688>,  <42.103905, 34.410885, 29.463867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.645981, 34.726357, 28.970688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.796112, 34.357506, 29.008224>,  <42.886192, 34.136196, 29.030746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.796112, 34.357506, 29.008224>,  <42.645981, 34.726357, 28.970688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.796112, 34.357506, 29.008224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220088, -0.009686, -0.975432,
		0.900382, 0.386764, 0.199314,
		0.375331, -0.922128, 0.093843,
		42.908710, 34.080868, 29.036377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.368835, 34.668106, 28.643505>,  <42.645981, 34.726357, 28.970688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.368835, 34.668106, 28.643505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.243904, 34.288364, 28.629827>,  <43.168945, 34.060520, 28.621620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.243904, 34.288364, 28.629827>,  <43.368835, 34.668106, 28.643505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.243904, 34.288364, 28.629827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306096, -0.066498, -0.949675,
		0.899307, -0.307081, 0.311364,
		-0.312332, -0.949357, -0.034194,
		43.150204, 34.003555, 28.619570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.878620, 34.279282, 28.366297>,  <43.368835, 34.668106, 28.643505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.878620, 34.279282, 28.366297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.574444, 34.023876, 28.318905>,  <43.391937, 33.870632, 28.290470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.574444, 34.023876, 28.318905>,  <43.878620, 34.279282, 28.366297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.574444, 34.023876, 28.318905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371415, -0.277955, -0.885885,
		0.532715, -0.717666, 0.448520,
		-0.760438, -0.638511, -0.118481,
		43.346313, 33.832321, 28.283360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.058434, 33.510571, 28.302420>,  <43.878620, 34.279282, 28.366297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.058434, 33.510571, 28.302420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.702000, 33.560574, 28.127909>,  <43.488140, 33.590576, 28.023203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.702000, 33.560574, 28.127909>,  <44.058434, 33.510571, 28.302420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.702000, 33.560574, 28.127909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408555, -0.197599, -0.891088,
		-0.197599, -0.972280, 0.125006,
		0.891088, -0.125006, 0.436275,
		43.434673, 33.598076, 27.997026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.941109, 32.899380, 27.973347>,  <44.058434, 33.510571, 28.302420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.941109, 32.899380, 27.973347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.672768, 33.135433, 27.793705>,  <43.511765, 33.277065, 27.685921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.672768, 33.135433, 27.793705>,  <43.941109, 32.899380, 27.973347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.672768, 33.135433, 27.793705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336638, -0.297268, -0.893480,
		-0.660780, -0.750580, 0.000761,
		-0.670854, 0.590137, -0.449103,
		43.471512, 33.312473, 27.658974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.672817, 32.492847, 27.488640>,  <43.941109, 32.899380, 27.973347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.672817, 32.492847, 27.488640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.586391, 32.864143, 27.367517>,  <43.534534, 33.086922, 27.294844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.586391, 32.864143, 27.367517>,  <43.672817, 32.492847, 27.488640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.586391, 32.864143, 27.367517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375371, -0.207326, -0.903389,
		-0.901339, -0.308857, -0.303637,
		-0.216066, 0.928237, -0.302807,
		43.521572, 33.142616, 27.276676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.361923, 32.465405, 26.831879>,  <43.672817, 32.492847, 27.488640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.361923, 32.465405, 26.831879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.456917, 32.853909, 26.838327>,  <43.513912, 33.087009, 26.842196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.456917, 32.853909, 26.838327>,  <43.361923, 32.465405, 26.831879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.456917, 32.853909, 26.838327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438205, -0.092305, -0.894123,
		-0.866936, 0.219404, -0.447531,
		0.237484, 0.971258, 0.016121,
		43.528164, 33.145287, 26.843164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.086323, 32.695175, 26.234226>,  <43.361923, 32.465405, 26.831879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.086323, 32.695175, 26.234226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.397015, 32.921795, 26.344292>,  <43.583431, 33.057766, 26.410330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.397015, 32.921795, 26.344292>,  <43.086323, 32.695175, 26.234226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.397015, 32.921795, 26.344292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349764, -0.024676, -0.936513,
		-0.523786, 0.823661, -0.217323,
		0.776732, 0.566545, 0.275162,
		43.630035, 33.091759, 26.426840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.204075, 32.969227, 25.619553>,  <43.086323, 32.695175, 26.234226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.204075, 32.969227, 25.619553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.528000, 33.062401, 25.834938>,  <43.722355, 33.118305, 25.964169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.528000, 33.062401, 25.834938>,  <43.204075, 32.969227, 25.619553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.528000, 33.062401, 25.834938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550669, 0.014837, -0.834592,
		-0.202391, 0.972380, -0.116252,
		0.809816, 0.232931, 0.538462,
		43.770947, 33.132278, 25.996477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.479969, 33.629269, 25.366693>,  <43.204075, 32.969227, 25.619553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.479969, 33.629269, 25.366693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.807972, 33.485596, 25.544945>,  <44.004772, 33.399391, 25.651896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.807972, 33.485596, 25.544945>,  <43.479969, 33.629269, 25.366693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.807972, 33.485596, 25.544945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467982, -0.027510, -0.883309,
		0.329526, 0.932863, 0.145532,
		0.820003, -0.359179, 0.445629,
		44.053974, 33.377842, 25.678633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.049732, 34.092518, 25.144016>,  <43.479969, 33.629269, 25.366693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.049732, 34.092518, 25.144016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.191917, 33.740147, 25.268984>,  <44.277229, 33.528725, 25.343964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.191917, 33.740147, 25.268984>,  <44.049732, 34.092518, 25.144016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.191917, 33.740147, 25.268984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656123, -0.002882, -0.754648,
		0.665695, 0.473233, 0.576976,
		0.355462, -0.880933, 0.312418,
		44.298557, 33.475868, 25.362709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.750473, 34.176895, 25.023355>,  <44.049732, 34.092518, 25.144016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.750473, 34.176895, 25.023355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.667278, 33.785667, 25.027586>,  <44.617359, 33.550930, 25.030125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.667278, 33.785667, 25.027586>,  <44.750473, 34.176895, 25.023355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.667278, 33.785667, 25.027586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609918, -0.138139, -0.780332,
		0.764683, -0.155851, 0.625276,
		-0.207991, -0.978074, 0.010576,
		44.604881, 33.492245, 25.030760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.390888, 33.811829, 24.877264>,  <44.750473, 34.176895, 25.023355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.390888, 33.811829, 24.877264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.130409, 33.520962, 24.790392>,  <44.974121, 33.346439, 24.738270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.130409, 33.520962, 24.790392>,  <45.390888, 33.811829, 24.877264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.130409, 33.520962, 24.790392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521703, -0.221103, -0.823978,
		0.551154, -0.649874, 0.523349,
		-0.651196, -0.727171, -0.217179,
		44.935051, 33.302811, 24.725239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.770832, 33.210148, 24.606125>,  <45.390888, 33.811829, 24.877264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.770832, 33.210148, 24.606125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.393017, 33.149204, 24.489756>,  <45.166328, 33.112637, 24.419935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.393017, 33.149204, 24.489756>,  <45.770832, 33.210148, 24.606125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.393017, 33.149204, 24.489756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325485, -0.316428, -0.891029,
		0.043705, -0.936300, 0.348470,
		-0.944537, -0.152364, -0.290922,
		45.109657, 33.103497, 24.402479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.832729, 32.564404, 24.128975>,  <45.770832, 33.210148, 24.606125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.832729, 32.564404, 24.128975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.480232, 32.733727, 24.044868>,  <45.268734, 32.835320, 23.994406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.480232, 32.733727, 24.044868>,  <45.832729, 32.564404, 24.128975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.480232, 32.733727, 24.044868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162067, -0.147270, -0.975729,
		-0.444002, -0.893935, 0.061176,
		-0.881247, 0.423311, -0.210265,
		45.215858, 32.860722, 23.981789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.507698, 32.139118, 23.601994>,  <45.832729, 32.564404, 24.128975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.507698, 32.139118, 23.601994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.349155, 32.505821, 23.582176>,  <45.254032, 32.725845, 23.570286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.349155, 32.505821, 23.582176>,  <45.507698, 32.139118, 23.601994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.349155, 32.505821, 23.582176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304241, 0.080238, -0.949210,
		-0.866222, -0.391297, -0.310718,
		-0.396354, 0.916760, -0.049545,
		45.230247, 32.780849, 23.567312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.351597, 32.212154, 22.776514>,  <45.507698, 32.139118, 23.601994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.351597, 32.212154, 22.776514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.375660, 32.556007, 22.979456>,  <45.390099, 32.762321, 23.101221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.375660, 32.556007, 22.979456>,  <45.351597, 32.212154, 22.776514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.375660, 32.556007, 22.979456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411489, 0.441723, -0.797219,
		-0.909427, 0.256729, -0.327158,
		0.060156, 0.859634, 0.507356,
		45.393707, 32.813896, 23.131662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.043839, 32.708523, 22.350908>,  <45.351597, 32.212154, 22.776514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.043839, 32.708523, 22.350908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.314468, 32.852863, 22.607668>,  <45.476845, 32.939468, 22.761723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.314468, 32.852863, 22.607668>,  <45.043839, 32.708523, 22.350908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.314468, 32.852863, 22.607668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425793, 0.519486, -0.740833,
		-0.600787, 0.774545, 0.197824,
		0.676576, 0.360851, 0.641897,
		45.517441, 32.961117, 22.800238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.690571, 32.256161, 21.921614>,  <45.043839, 32.708523, 22.350908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.690571, 32.256161, 21.921614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.380962, 32.019402, 21.831684>,  <44.195198, 31.877346, 21.777725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.380962, 32.019402, 21.831684>,  <44.690571, 32.256161, 21.921614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.380962, 32.019402, 21.831684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512991, 0.378127, 0.770624,
		-0.371117, 0.711814, -0.596316,
		-0.774024, -0.591896, -0.224825,
		44.148754, 31.841833, 21.764236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.248264, 32.582748, 22.389845>,  <44.690571, 32.256161, 21.921614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.248264, 32.582748, 22.389845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.060635, 32.260189, 22.245792>,  <43.948055, 32.066654, 22.159361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.060635, 32.260189, 22.245792>,  <44.248264, 32.582748, 22.389845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.060635, 32.260189, 22.245792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668155, 0.057375, 0.741807,
		-0.577525, 0.588589, -0.565709,
		-0.469077, -0.806393, -0.360133,
		43.919910, 32.018272, 22.137753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.704357, 32.755451, 22.154509>,  <44.248264, 32.582748, 22.389845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.704357, 32.755451, 22.154509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.633968, 32.369713, 22.233572>,  <43.591736, 32.138271, 22.281010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.633968, 32.369713, 22.233572>,  <43.704357, 32.755451, 22.154509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.633968, 32.369713, 22.233572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712636, 0.263318, 0.650241,
		-0.679106, -0.026436, -0.733564,
		-0.175971, -0.964347, 0.197660,
		43.581177, 32.080410, 22.292870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.899559, 32.590221, 22.121698>,  <43.704357, 32.755451, 22.154509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.899559, 32.590221, 22.121698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.068176, 32.310596, 22.352736>,  <43.169346, 32.142822, 22.491358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.068176, 32.310596, 22.352736>,  <42.899559, 32.590221, 22.121698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.068176, 32.310596, 22.352736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735487, 0.109009, 0.668712,
		-0.530434, -0.706703, -0.468199,
		0.421543, -0.699062, 0.577593,
		43.194641, 32.100880, 22.526014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.391712, 32.177917, 22.325634>,  <42.899559, 32.590221, 22.121698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.391712, 32.177917, 22.325634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.667313, 32.052994, 22.587242>,  <42.832672, 31.978039, 22.744207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.667313, 32.052994, 22.587242>,  <42.391712, 32.177917, 22.325634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.667313, 32.052994, 22.587242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655197, 0.117368, 0.746285,
		-0.309833, -0.942702, -0.123758,
		0.688999, -0.312310, 0.654020,
		42.874012, 31.959301, 22.783449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.081196, 31.602495, 22.587498>,  <42.391712, 32.177917, 22.325634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.081196, 31.602495, 22.587498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.361668, 31.769091, 22.818975>,  <42.529949, 31.869049, 22.957861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.361668, 31.769091, 22.818975>,  <42.081196, 31.602495, 22.587498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.361668, 31.769091, 22.818975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630267, -0.017388, 0.776184,
		0.333335, -0.908974, 0.250308,
		0.701178, 0.416490, 0.578692,
		42.572021, 31.894037, 22.992582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.020111, 31.240204, 23.218666>,  <42.081196, 31.602495, 22.587498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.020111, 31.240204, 23.218666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.220745, 31.571899, 23.317280>,  <42.341125, 31.770916, 23.376448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.220745, 31.571899, 23.317280>,  <42.020111, 31.240204, 23.218666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.220745, 31.571899, 23.317280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470945, 0.022678, 0.881871,
		0.725690, -0.558437, 0.401900,
		0.501583, 0.829237, 0.246536,
		42.371220, 31.820671, 23.391241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.157116, 31.115713, 23.891754>,  <42.020111, 31.240204, 23.218666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.157116, 31.115713, 23.891754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.221737, 31.507927, 23.847126>,  <42.260509, 31.743256, 23.820349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.221737, 31.507927, 23.847126>,  <42.157116, 31.115713, 23.891754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.221737, 31.507927, 23.847126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444559, 0.173247, 0.878836,
		0.881060, -0.092380, 0.463895,
		0.161556, 0.980536, -0.111572,
		42.270203, 31.802088, 23.813654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.570553, 31.446947, 24.474962>,  <42.157116, 31.115713, 23.891754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.570553, 31.446947, 24.474962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.338455, 31.727446, 24.309280>,  <42.199196, 31.895744, 24.209871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.338455, 31.727446, 24.309280>,  <42.570553, 31.446947, 24.474962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.338455, 31.727446, 24.309280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395782, 0.201702, 0.895920,
		0.711808, 0.683789, 0.160505,
		-0.580246, 0.701248, -0.414205,
		42.164383, 31.937820, 24.185019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.554317, 31.995014, 24.972988>,  <42.570553, 31.446947, 24.474962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.554317, 31.995014, 24.972988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.251732, 32.112679, 24.739326>,  <42.070183, 32.183277, 24.599131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.251732, 32.112679, 24.739326>,  <42.554317, 31.995014, 24.972988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.251732, 32.112679, 24.739326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465539, 0.385166, 0.796819,
		0.459390, 0.874709, -0.154419,
		-0.756462, 0.294162, -0.584152,
		42.024792, 32.200928, 24.564081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.557411, 32.695766, 25.026743>,  <42.554317, 31.995014, 24.972988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.557411, 32.695766, 25.026743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.195267, 32.559059, 24.925930>,  <41.977982, 32.477036, 24.865442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.195267, 32.559059, 24.925930>,  <42.557411, 32.695766, 25.026743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.195267, 32.559059, 24.925930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376744, 0.372611, 0.848071,
		-0.195932, 0.862761, -0.466105,
		-0.905359, -0.341766, -0.252034,
		41.923660, 32.456528, 24.850321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.193485, 33.231327, 25.233694>,  <42.557411, 32.695766, 25.026743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.193485, 33.231327, 25.233694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.945530, 32.918957, 25.202967>,  <41.796757, 32.731537, 25.184530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.945530, 32.918957, 25.202967>,  <42.193485, 33.231327, 25.233694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.945530, 32.918957, 25.202967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308441, 0.152472, 0.938944,
		-0.721531, 0.605731, -0.335384,
		-0.619885, -0.780924, -0.076819,
		41.759563, 32.684681, 25.179920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.685707, 33.420673, 25.637421>,  <42.193485, 33.231327, 25.233694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.685707, 33.420673, 25.637421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.623966, 33.026562, 25.608046>,  <41.586922, 32.790092, 25.590422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.623966, 33.026562, 25.608046>,  <41.685707, 33.420673, 25.637421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.623966, 33.026562, 25.608046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349375, -0.015093, 0.936861,
		-0.924181, 0.170267, -0.341904,
		-0.154356, -0.985282, -0.073436,
		41.577660, 32.730976, 25.586014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.208557, 33.472469, 26.066383>,  <41.685707, 33.420673, 25.637421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.208557, 33.472469, 26.066383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.279251, 33.079967, 26.035641>,  <41.321667, 32.844467, 26.017195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.279251, 33.079967, 26.035641>,  <41.208557, 33.472469, 26.066383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.279251, 33.079967, 26.035641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349103, -0.135502, 0.927236,
		-0.920267, -0.137047, -0.366507,
		0.176737, -0.981253, -0.076855,
		41.332272, 32.785591, 26.012585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565105, 33.212002, 26.174843>,  <41.208557, 33.472469, 26.066383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565105, 33.212002, 26.174843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.844322, 32.943325, 26.274101>,  <41.011852, 32.782120, 26.333656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.844322, 32.943325, 26.274101>,  <40.565105, 33.212002, 26.174843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844322, 32.943325, 26.274101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422160, -0.106125, 0.900288,
		-0.578379, -0.733193, -0.357640,
		0.698039, -0.671689, 0.248144,
		41.053734, 32.741817, 26.348545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235283, 32.736523, 26.614920>,  <40.565105, 33.212002, 26.174843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.235283, 32.736523, 26.614920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.613598, 32.649178, 26.711096>,  <40.840588, 32.596771, 26.768803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.613598, 32.649178, 26.711096>,  <40.235283, 32.736523, 26.614920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613598, 32.649178, 26.711096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277928, -0.161003, 0.947013,
		-0.168119, -0.962486, -0.212973,
		0.945776, -0.218402, 0.240434,
		40.897331, 32.583668, 26.783228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187836, 32.129810, 27.045351>,  <40.235283, 32.736523, 26.614920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.187836, 32.129810, 27.045351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.535820, 32.313606, 27.116936>,  <40.744610, 32.423885, 27.159885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.535820, 32.313606, 27.116936>,  <40.187836, 32.129810, 27.045351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535820, 32.313606, 27.116936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063513, -0.255483, 0.964725,
		0.489006, -0.850643, -0.193077,
		0.869965, 0.459494, 0.178960,
		40.796810, 32.451454, 27.170624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669083, 31.599792, 27.260319>,  <40.187836, 32.129810, 27.045351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.669083, 31.599792, 27.260319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.807503, 31.943871, 27.410154>,  <40.890553, 32.150318, 27.500055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.807503, 31.943871, 27.410154>,  <40.669083, 31.599792, 27.260319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807503, 31.943871, 27.410154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050341, -0.381656, 0.922933,
		0.936865, -0.338236, -0.088768,
		0.346047, 0.860195, 0.374588,
		40.911316, 32.201927, 27.522532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.018356, 31.410854, 27.977116>,  <40.669083, 31.599792, 27.260319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.018356, 31.410854, 27.977116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.977520, 31.808493, 27.991817>,  <40.953018, 32.047077, 28.000639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.977520, 31.808493, 27.991817>,  <41.018356, 31.410854, 27.977116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.977520, 31.808493, 27.991817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299661, -0.065964, 0.951763,
		0.948568, 0.086151, 0.304626,
		-0.102090, 0.994096, 0.036755,
		40.946892, 32.106720, 28.002844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.310532, 31.653675, 28.580729>,  <41.018356, 31.410854, 27.977116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.310532, 31.653675, 28.580729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.040100, 31.928225, 28.473539>,  <40.877842, 32.092953, 28.409225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.040100, 31.928225, 28.473539>,  <41.310532, 31.653675, 28.580729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.040100, 31.928225, 28.473539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258490, 0.119635, 0.958577,
		0.690002, 0.717340, 0.096539,
		-0.676077, 0.686375, -0.267974,
		40.837276, 32.134136, 28.393147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.331112, 32.204395, 29.061653>,  <41.310532, 31.653675, 28.580729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.331112, 32.204395, 29.061653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.973839, 32.299728, 28.909117>,  <40.759476, 32.356930, 28.817595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.973839, 32.299728, 28.909117>,  <41.331112, 32.204395, 29.061653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.973839, 32.299728, 28.909117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359657, 0.130448, 0.923921,
		0.269946, 0.962383, -0.030796,
		-0.893183, 0.238333, -0.381342,
		40.705883, 32.371227, 28.794714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.896011, 35.106030, 34.038574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.575611, 35.149483, 33.803082>,  <42.383373, 35.175556, 33.661785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.575611, 35.149483, 33.803082>,  <42.896011, 35.106030, 34.038574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.575611, 35.149483, 33.803082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357828, 0.701527, 0.616295,
		0.479961, 0.704314, -0.523048,
		-0.800997, 0.108636, -0.588729,
		42.335312, 35.182072, 33.626465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.881378, 35.753143, 33.923191>,  <42.896011, 35.106030, 34.038574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.881378, 35.753143, 33.923191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.498703, 35.660545, 33.852589>,  <42.269096, 35.604984, 33.810226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.498703, 35.660545, 33.852589>,  <42.881378, 35.753143, 33.923191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.498703, 35.660545, 33.852589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288518, 0.673286, 0.680767,
		-0.038761, 0.702207, -0.710917,
		-0.956690, -0.231499, -0.176502,
		42.211697, 35.591095, 33.799637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.456135, 36.347633, 33.997330>,  <42.881378, 35.753143, 33.923191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.456135, 36.347633, 33.997330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.185974, 36.059555, 34.060768>,  <42.023876, 35.886707, 34.098831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.185974, 36.059555, 34.060768>,  <42.456135, 36.347633, 33.997330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.185974, 36.059555, 34.060768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425434, 0.556191, 0.713903,
		-0.602359, 0.414698, -0.682048,
		-0.675403, -0.720193, 0.158600,
		41.983353, 35.843498, 34.108349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.844486, 36.717098, 33.995461>,  <42.456135, 36.347633, 33.997330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.844486, 36.717098, 33.995461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.747368, 36.359657, 34.146469>,  <41.689098, 36.145191, 34.237072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.747368, 36.359657, 34.146469>,  <41.844486, 36.717098, 33.995461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.747368, 36.359657, 34.146469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610469, 0.443187, 0.656439,
		-0.753910, -0.071086, -0.653121,
		-0.242791, -0.893606, 0.377519,
		41.674530, 36.091576, 34.259724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139297, 36.629917, 33.932995>,  <41.844486, 36.717098, 33.995461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139297, 36.629917, 33.932995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.272003, 36.398304, 34.230896>,  <41.351627, 36.259338, 34.409637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.272003, 36.398304, 34.230896>,  <41.139297, 36.629917, 33.932995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272003, 36.398304, 34.230896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741510, 0.327980, 0.585314,
		-0.583177, -0.746429, -0.320544,
		0.331763, -0.579028, 0.744755,
		41.371532, 36.224594, 34.454323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597946, 36.240177, 34.155663>,  <41.139297, 36.629917, 33.932995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.597946, 36.240177, 34.155663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.845192, 36.211624, 34.468800>,  <40.993538, 36.194492, 34.656681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.845192, 36.211624, 34.468800>,  <40.597946, 36.240177, 34.155663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845192, 36.211624, 34.468800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749681, 0.246043, 0.614363,
		-0.236470, -0.966627, 0.098565,
		0.618111, -0.071386, 0.782843,
		41.030624, 36.190208, 34.703651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231895, 35.745232, 34.569065>,  <40.597946, 36.240177, 34.155663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231895, 35.745232, 34.569065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.481255, 35.966503, 34.790108>,  <40.630871, 36.099266, 34.922733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.481255, 35.966503, 34.790108>,  <40.231895, 35.745232, 34.569065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481255, 35.966503, 34.790108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765943, 0.289949, 0.573813,
		0.157190, -0.780979, 0.604452,
		0.623397, 0.553174, 0.552608,
		40.668274, 36.132454, 34.955891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998890, 35.589314, 35.194450>,  <40.231895, 35.745232, 34.569065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998890, 35.589314, 35.194450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.216370, 35.919689, 35.254070>,  <40.346859, 36.117916, 35.289841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.216370, 35.919689, 35.254070>,  <39.998890, 35.589314, 35.194450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.216370, 35.919689, 35.254070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691793, 0.340478, 0.636787,
		0.475199, -0.449332, 0.756496,
		0.543699, 0.825939, 0.149049,
		40.379478, 36.167469, 35.298786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168140, 35.553589, 35.891048>,  <39.998890, 35.589314, 35.194450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168140, 35.553589, 35.891048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.220119, 35.931042, 35.769276>,  <40.251308, 36.157513, 35.696213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.220119, 35.931042, 35.769276>,  <40.168140, 35.553589, 35.891048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220119, 35.931042, 35.769276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533473, 0.325346, 0.780741,
		0.835775, 0.060951, 0.545678,
		0.129947, 0.943629, -0.304432,
		40.259102, 36.214130, 35.677944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590721, 35.994896, 36.425720>,  <40.168140, 35.553589, 35.891048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590721, 35.994896, 36.425720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.375881, 36.249874, 36.204746>,  <40.246975, 36.402863, 36.072163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.375881, 36.249874, 36.204746>,  <40.590721, 35.994896, 36.425720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375881, 36.249874, 36.204746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356428, 0.422067, 0.833558,
		0.764513, 0.644608, 0.000511,
		-0.537102, 0.637448, -0.552432,
		40.214752, 36.441109, 36.039017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573914, 36.550968, 36.809280>,  <40.590721, 35.994896, 36.425720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573914, 36.550968, 36.809280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.290096, 36.656902, 36.548080>,  <40.119808, 36.720463, 36.391361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.290096, 36.656902, 36.548080>,  <40.573914, 36.550968, 36.809280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290096, 36.656902, 36.548080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493597, 0.474566, 0.728800,
		0.502906, 0.839433, -0.206002,
		-0.709540, 0.264836, -0.653004,
		40.077232, 36.736355, 36.352180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537228, 37.253578, 36.786007>,  <40.573914, 36.550968, 36.809280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537228, 37.253578, 36.786007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.172680, 37.149513, 36.658432>,  <39.953953, 37.087074, 36.581886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.172680, 37.149513, 36.658432>,  <40.537228, 37.253578, 36.786007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172680, 37.149513, 36.658432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410354, 0.634264, 0.655224,
		0.031823, 0.728028, -0.684809,
		-0.911371, -0.260163, -0.318934,
		39.899269, 37.071465, 36.562752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148899, 37.857304, 36.583729>,  <40.537228, 37.253578, 36.786007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148899, 37.857304, 36.583729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.940712, 37.556286, 36.745117>,  <39.815800, 37.375675, 36.841949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.940712, 37.556286, 36.745117>,  <40.148899, 37.857304, 36.583729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940712, 37.556286, 36.745117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358200, 0.621351, 0.696861,
		-0.775117, 0.218169, -0.592955,
		-0.520466, -0.752545, 0.403472,
		39.784573, 37.330521, 36.866158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615913, 38.203037, 36.746326>,  <40.148899, 37.857304, 36.583729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615913, 38.203037, 36.746326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.666786, 37.903358, 37.006332>,  <39.697311, 37.723549, 37.162338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.666786, 37.903358, 37.006332>,  <39.615913, 38.203037, 36.746326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666786, 37.903358, 37.006332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124289, 0.638138, 0.759824,
		-0.984061, -0.177428, -0.011955,
		0.127185, -0.749199, 0.650020,
		39.704941, 37.678600, 37.201340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121834, 38.852879, 36.763927>,  <39.615913, 38.203037, 36.746326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121834, 38.852879, 36.763927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.017567, 39.211151, 36.619812>,  <38.955006, 39.426113, 36.533344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.017567, 39.211151, 36.619812>,  <39.121834, 38.852879, 36.763927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017567, 39.211151, 36.619812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217757, -0.309025, -0.925789,
		-0.940550, -0.319778, -0.114489,
		-0.260667, 0.895682, -0.360287,
		38.939365, 39.479855, 36.511726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567291, 38.786839, 36.171314>,  <39.121834, 38.852879, 36.763927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567291, 38.786839, 36.171314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.748409, 39.136971, 36.103455>,  <38.857079, 39.347050, 36.062737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.748409, 39.136971, 36.103455>,  <38.567291, 38.786839, 36.171314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748409, 39.136971, 36.103455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054238, -0.216962, -0.974672,
		-0.889966, 0.432121, -0.145714,
		0.452790, 0.875328, -0.169651,
		38.884247, 39.399570, 36.052559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415936, 38.873497, 35.556309>,  <38.567291, 38.786839, 36.171314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415936, 38.873497, 35.556309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.663719, 39.186749, 35.578140>,  <38.812389, 39.374699, 35.591240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.663719, 39.186749, 35.578140>,  <38.415936, 38.873497, 35.556309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663719, 39.186749, 35.578140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151561, -0.051092, -0.987127,
		-0.770257, 0.619760, -0.150341,
		0.619463, 0.783127, 0.054578,
		38.849560, 39.421688, 35.594513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189232, 39.367901, 35.000759>,  <38.415936, 38.873497, 35.556309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189232, 39.367901, 35.000759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.570259, 39.478878, 35.050789>,  <38.798874, 39.545464, 35.080807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.570259, 39.478878, 35.050789>,  <38.189232, 39.367901, 35.000759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570259, 39.478878, 35.050789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161639, -0.113018, -0.980357,
		-0.257861, 0.954070, -0.152504,
		0.952565, 0.277446, 0.125072,
		38.856030, 39.562111, 35.088310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378166, 39.961651, 34.593479>,  <38.189232, 39.367901, 35.000759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378166, 39.961651, 34.593479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.724003, 39.776234, 34.671055>,  <38.931503, 39.664982, 34.717598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.724003, 39.776234, 34.671055>,  <38.378166, 39.961651, 34.593479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724003, 39.776234, 34.671055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272709, 0.108711, -0.955935,
		0.422035, 0.879380, 0.220403,
		0.864591, -0.463543, 0.193935,
		38.983379, 39.637169, 34.729237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876385, 40.388851, 34.224895>,  <38.378166, 39.961651, 34.593479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876385, 40.388851, 34.224895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.030575, 40.024170, 34.281765>,  <39.123089, 39.805363, 34.315887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.030575, 40.024170, 34.281765>,  <38.876385, 40.388851, 34.224895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030575, 40.024170, 34.281765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152639, -0.088951, -0.984271,
		0.910005, 0.401115, 0.104872,
		0.385477, -0.911699, 0.142171,
		39.146217, 39.750660, 34.324417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422947, 40.321239, 33.779163>,  <38.876385, 40.388851, 34.224895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422947, 40.321239, 33.779163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.335773, 39.938980, 33.858398>,  <39.283470, 39.709625, 33.905941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.335773, 39.938980, 33.858398>,  <39.422947, 40.321239, 33.779163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335773, 39.938980, 33.858398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359490, -0.267301, -0.894045,
		0.907343, -0.123633, 0.401801,
		-0.217936, -0.955649, 0.198089,
		39.270393, 39.652287, 33.917824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954548, 39.909214, 33.520939>,  <39.422947, 40.321239, 33.779163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954548, 39.909214, 33.520939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.641724, 39.661358, 33.547565>,  <39.454029, 39.512642, 33.563541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.641724, 39.661358, 33.547565>,  <39.954548, 39.909214, 33.520939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641724, 39.661358, 33.547565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252655, -0.412886, -0.875038,
		0.569696, -0.667509, 0.479456,
		-0.782056, -0.619642, 0.066570,
		39.407108, 39.475464, 33.567535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290997, 39.324379, 33.437157>,  <39.954548, 39.909214, 33.520939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290997, 39.324379, 33.437157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.904041, 39.244011, 33.375465>,  <39.671867, 39.195789, 33.338451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.904041, 39.244011, 33.375465>,  <40.290997, 39.324379, 33.437157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.904041, 39.244011, 33.375465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247978, -0.627313, -0.738231,
		0.051575, -0.752403, 0.656680,
		-0.967392, -0.200916, -0.154225,
		39.613823, 39.183735, 33.329197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244392, 38.626499, 33.238800>,  <40.290997, 39.324379, 33.437157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244392, 38.626499, 33.238800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.898144, 38.770294, 33.099388>,  <39.690395, 38.856571, 33.015739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.898144, 38.770294, 33.099388>,  <40.244392, 38.626499, 33.238800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898144, 38.770294, 33.099388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135584, -0.501789, -0.854298,
		-0.481989, -0.786755, 0.385621,
		-0.865623, 0.359478, -0.348528,
		39.638458, 38.878139, 32.994827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824944, 38.005119, 33.148445>,  <40.244392, 38.626499, 33.238800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824944, 38.005119, 33.148445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.663055, 38.284283, 32.912102>,  <39.565922, 38.451782, 32.770294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.663055, 38.284283, 32.912102>,  <39.824944, 38.005119, 33.148445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663055, 38.284283, 32.912102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214955, -0.555431, -0.803300,
		-0.888815, -0.452124, 0.074777,
		-0.404725, 0.697911, -0.590862,
		39.541637, 38.493656, 32.734844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517876, 37.616718, 32.672714>,  <39.824944, 38.005119, 33.148445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.517876, 37.616718, 32.672714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.531170, 37.977596, 32.500694>,  <39.539146, 38.194122, 32.397480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.531170, 37.977596, 32.500694>,  <39.517876, 37.616718, 32.672714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531170, 37.977596, 32.500694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188834, -0.428210, -0.883730,
		-0.981447, -0.051834, -0.184598,
		0.033239, 0.902192, -0.430053,
		39.541142, 38.248253, 32.371677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230431, 37.459381, 32.131901>,  <39.517876, 37.616718, 32.672714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230431, 37.459381, 32.131901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.437202, 37.795643, 32.067295>,  <39.561268, 37.997398, 32.028534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.437202, 37.795643, 32.067295>,  <39.230431, 37.459381, 32.131901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437202, 37.795643, 32.067295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324386, -0.366974, -0.871839,
		-0.792183, 0.398290, -0.462396,
		0.516932, 0.840652, -0.161511,
		39.592281, 38.047840, 32.018841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123920, 37.742344, 31.481987>,  <39.230431, 37.459381, 32.131901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123920, 37.742344, 31.481987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.485271, 37.880310, 31.583914>,  <39.702084, 37.963089, 31.645069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.485271, 37.880310, 31.583914>,  <39.123920, 37.742344, 31.481987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485271, 37.880310, 31.583914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358816, -0.282555, -0.889615,
		-0.234845, 0.895094, -0.379017,
		0.903382, 0.344919, 0.254817,
		39.756287, 37.983788, 31.660358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459469, 37.727451, 31.386379>,  <39.123920, 37.742344, 31.481987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459469, 37.727451, 31.386379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.213524, 37.792328, 31.077669>,  <38.065956, 37.831253, 30.892443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.213524, 37.792328, 31.077669>,  <38.459469, 37.727451, 31.386379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213524, 37.792328, 31.077669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710992, 0.309418, 0.631467,
		0.341218, 0.936993, -0.074936,
		-0.614866, 0.162189, -0.771773,
		38.029064, 37.840984, 30.846138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093475, 38.437611, 31.565800>,  <38.459469, 37.727451, 31.386379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093475, 38.437611, 31.565800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.863522, 38.265236, 31.287575>,  <37.725552, 38.161812, 31.120640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.863522, 38.265236, 31.287575>,  <38.093475, 38.437611, 31.565800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863522, 38.265236, 31.287575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815639, 0.234116, 0.529077,
		-0.065158, 0.871482, -0.486079,
		-0.574880, -0.430939, -0.695561,
		37.691059, 38.135956, 31.078907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586990, 38.958218, 31.471376>,  <38.093475, 38.437611, 31.565800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586990, 38.958218, 31.471376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.413673, 38.627724, 31.327385>,  <37.309681, 38.429428, 31.240990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.413673, 38.627724, 31.327385>,  <37.586990, 38.958218, 31.471376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413673, 38.627724, 31.327385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832500, 0.213920, 0.511059,
		-0.345250, 0.521123, -0.780534,
		-0.433297, -0.826238, -0.359979,
		37.283684, 38.379852, 31.219391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916164, 39.149235, 31.115833>,  <37.586990, 38.958218, 31.471376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916164, 39.149235, 31.115833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.894714, 38.770626, 31.243093>,  <36.881844, 38.543461, 31.319450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.894714, 38.770626, 31.243093>,  <36.916164, 39.149235, 31.115833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894714, 38.770626, 31.243093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811972, 0.226782, 0.537839,
		-0.581228, -0.229490, -0.780710,
		-0.053622, -0.946522, 0.318152,
		36.878628, 38.486668, 31.338539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154980, 38.902229, 31.133848>,  <36.916164, 39.149235, 31.115833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154980, 38.902229, 31.133848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.310760, 38.607655, 31.355114>,  <36.404228, 38.430908, 31.487873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.310760, 38.607655, 31.355114>,  <36.154980, 38.902229, 31.133848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310760, 38.607655, 31.355114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846360, -0.049227, 0.530331,
		-0.363325, -0.674712, -0.642463,
		0.389447, -0.736437, 0.553164,
		36.427593, 38.386723, 31.521063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630390, 38.407696, 31.237480>,  <36.154980, 38.902229, 31.133848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630390, 38.407696, 31.237480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.893265, 38.346352, 31.532663>,  <36.050991, 38.309544, 31.709774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.893265, 38.346352, 31.532663>,  <35.630390, 38.407696, 31.237480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893265, 38.346352, 31.532663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750454, -0.042017, 0.659586,
		-0.070155, -0.987275, -0.142712,
		0.657189, -0.153372, 0.737957,
		36.090424, 38.300343, 31.754051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401745, 37.808182, 31.631090>,  <35.630390, 38.407696, 31.237480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401745, 37.808182, 31.631090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.673359, 37.975243, 31.872580>,  <35.836327, 38.075478, 32.017471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.673359, 37.975243, 31.872580>,  <35.401745, 37.808182, 31.631090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673359, 37.975243, 31.872580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653422, -0.030972, 0.756360,
		0.334592, -0.908080, 0.251871,
		0.679034, 0.417650, 0.603723,
		35.877068, 38.100536, 32.053696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619263, 37.354836, 32.140820>,  <35.401745, 37.808182, 31.631090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619263, 37.354836, 32.140820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.659859, 37.727989, 32.279057>,  <35.684216, 37.951881, 32.362000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.659859, 37.727989, 32.279057>,  <35.619263, 37.354836, 32.140820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659859, 37.727989, 32.279057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267921, -0.308919, 0.912572,
		0.958080, -0.185208, 0.218586,
		0.101491, 0.932881, 0.345591,
		35.690308, 38.007854, 32.382732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667439, 37.301620, 32.848022>,  <35.619263, 37.354836, 32.140820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667439, 37.301620, 32.848022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.597679, 37.693474, 32.808197>,  <35.555824, 37.928585, 32.784302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.597679, 37.693474, 32.808197>,  <35.667439, 37.301620, 32.848022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597679, 37.693474, 32.808197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543203, -0.011379, 0.839524,
		0.821290, 0.200491, 0.534122,
		-0.174395, 0.979630, -0.099562,
		35.545361, 37.987362, 32.778328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889519, 37.529652, 33.482040>,  <35.667439, 37.301620, 32.848022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889519, 37.529652, 33.482040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.635632, 37.800499, 33.333099>,  <35.483299, 37.963009, 33.243736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.635632, 37.800499, 33.333099>,  <35.889519, 37.529652, 33.482040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635632, 37.800499, 33.333099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500644, 0.006717, 0.865627,
		0.588633, 0.735844, 0.334732,
		-0.634718, 0.677118, -0.372350,
		35.445217, 38.003635, 33.221394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731079, 38.072979, 34.048656>,  <35.889519, 37.529652, 33.482040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731079, 38.072979, 34.048656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.422321, 38.129059, 33.800613>,  <35.237068, 38.162708, 33.651787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.422321, 38.129059, 33.800613>,  <35.731079, 38.072979, 34.048656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422321, 38.129059, 33.800613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548664, 0.345847, 0.761155,
		0.321175, 0.927758, -0.190032,
		-0.771890, 0.140200, -0.620105,
		35.190754, 38.171120, 33.614582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374226, 38.582302, 34.379974>,  <35.731079, 38.072979, 34.048656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374226, 38.582302, 34.379974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.091236, 38.463390, 34.123501>,  <34.921444, 38.392044, 33.969616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.091236, 38.463390, 34.123501>,  <35.374226, 38.582302, 34.379974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091236, 38.463390, 34.123501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706584, 0.316770, 0.632768,
		0.015001, 0.900713, -0.434155,
		-0.707470, -0.297275, -0.641181,
		34.878994, 38.374207, 33.931145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.502335, 38.250080, 27.041264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256466, 37.936321, 27.074482>,  <39.108944, 37.748066, 27.094412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256466, 37.936321, 27.074482>,  <39.502335, 38.250080, 27.041264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256466, 37.936321, 27.074482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404291, 0.403700, 0.820716,
		-0.677295, 0.470896, -0.565269,
		-0.614671, -0.784400, 0.083045,
		39.072063, 37.701000, 27.099396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959053, 38.566311, 27.303852>,  <39.502335, 38.250080, 27.041264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959053, 38.566311, 27.303852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886032, 38.181858, 27.386692>,  <38.842220, 37.951187, 27.436396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886032, 38.181858, 27.386692>,  <38.959053, 38.566311, 27.303852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886032, 38.181858, 27.386692> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350303, 0.260401, 0.899711,
		-0.918674, 0.091698, -0.384226,
		-0.182555, -0.961136, 0.207101,
		38.831264, 37.893517, 27.448822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241810, 38.549389, 27.662302>,  <38.959053, 38.566311, 27.303852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241810, 38.549389, 27.662302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445370, 38.213837, 27.739555>,  <38.567505, 38.012505, 27.785908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445370, 38.213837, 27.739555>,  <38.241810, 38.549389, 27.662302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445370, 38.213837, 27.739555> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252919, 0.068748, 0.965042,
		-0.822833, -0.539956, -0.177183,
		0.508899, -0.838881, 0.193133,
		38.598038, 37.962173, 27.797495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795429, 38.251507, 28.092796>,  <38.241810, 38.549389, 27.662302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795429, 38.251507, 28.092796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140785, 38.069088, 28.179125>,  <38.348000, 37.959637, 28.230923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140785, 38.069088, 28.179125>,  <37.795429, 38.251507, 28.092796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140785, 38.069088, 28.179125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286863, -0.091826, 0.953560,
		-0.415048, -0.885207, -0.210104,
		0.863392, -0.456044, 0.215821,
		38.399803, 37.932274, 28.243872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583790, 37.628868, 28.549128>,  <37.795429, 38.251507, 28.092796>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583790, 37.628868, 28.549128> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968800, 37.668385, 28.650154>,  <38.199806, 37.692093, 28.710770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968800, 37.668385, 28.650154>,  <37.583790, 37.628868, 28.549128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968800, 37.668385, 28.650154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234895, -0.161782, 0.958463,
		0.135548, -0.981869, -0.132513,
		0.962523, 0.098791, 0.252565,
		38.257557, 37.698021, 28.725924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721512, 37.135212, 29.061865>,  <37.583790, 37.628868, 28.549128>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721512, 37.135212, 29.061865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049221, 37.361301, 29.100481>,  <38.245846, 37.496956, 29.123650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049221, 37.361301, 29.100481>,  <37.721512, 37.135212, 29.061865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049221, 37.361301, 29.100481> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069749, -0.068877, 0.995184,
		0.569148, -0.822059, -0.017005,
		0.819272, 0.565221, 0.096539,
		38.295002, 37.530869, 29.129442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058540, 36.921597, 29.686682>,  <37.721512, 37.135212, 29.061865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058540, 36.921597, 29.686682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196362, 37.294109, 29.639368>,  <38.279053, 37.517616, 29.610979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196362, 37.294109, 29.639368>,  <38.058540, 36.921597, 29.686682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196362, 37.294109, 29.639368> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047092, 0.142990, 0.988603,
		0.937585, -0.335055, 0.093124,
		0.344552, 0.931285, -0.118287,
		38.299728, 37.573494, 29.603882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623444, 37.026279, 30.217590>,  <38.058540, 36.921597, 29.686682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623444, 37.026279, 30.217590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473965, 37.380733, 30.107964>,  <38.384277, 37.593407, 30.042187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473965, 37.380733, 30.107964>,  <38.623444, 37.026279, 30.217590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473965, 37.380733, 30.107964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261100, 0.183030, 0.947801,
		0.890043, 0.425752, 0.162972,
		-0.373699, 0.886135, -0.274068,
		38.361855, 37.646576, 30.025743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933784, 37.529503, 30.715441>,  <38.623444, 37.026279, 30.217590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933784, 37.529503, 30.715441> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592854, 37.680218, 30.570349>,  <38.388294, 37.770645, 30.483294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592854, 37.680218, 30.570349>,  <38.933784, 37.529503, 30.715441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592854, 37.680218, 30.570349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305349, 0.204582, 0.930004,
		0.424621, 0.903425, -0.059319,
		-0.852325, 0.376787, -0.362730,
		38.337154, 37.793255, 30.461529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455574, 38.015297, 30.797724>,  <38.933784, 37.529503, 30.715441>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455574, 38.015297, 30.797724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772709, 38.014687, 31.041498>,  <39.962990, 38.014320, 31.187763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772709, 38.014687, 31.041498>,  <39.455574, 38.015297, 30.797724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772709, 38.014687, 31.041498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596301, -0.204564, -0.776260,
		0.125855, 0.978852, -0.161273,
		0.792834, -0.001529, 0.609435,
		40.010559, 38.014229, 31.224329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824924, 38.479973, 30.412514>,  <39.455574, 38.015297, 30.797724>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824924, 38.479973, 30.412514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076412, 38.259193, 30.631628>,  <40.227303, 38.126728, 30.763098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076412, 38.259193, 30.631628>,  <39.824924, 38.479973, 30.412514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076412, 38.259193, 30.631628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594179, -0.113465, -0.796289,
		0.501664, 0.826124, 0.256618,
		0.628716, -0.551947, 0.547787,
		40.265026, 38.093609, 30.795963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445297, 38.670517, 30.251791>,  <39.824924, 38.479973, 30.412514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445297, 38.670517, 30.251791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532532, 38.326492, 30.436279>,  <40.584873, 38.120075, 30.546972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532532, 38.326492, 30.436279>,  <40.445297, 38.670517, 30.251791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532532, 38.326492, 30.436279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750589, -0.154232, -0.642517,
		0.623742, 0.486314, 0.611919,
		0.218088, -0.860065, 0.461223,
		40.597958, 38.068474, 30.574646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.220169, 38.734756, 30.314499>,  <40.445297, 38.670517, 30.251791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.220169, 38.734756, 30.314499> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.070652, 38.364086, 30.330198>,  <40.980942, 38.141682, 30.339619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.070652, 38.364086, 30.330198>,  <41.220169, 38.734756, 30.314499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.070652, 38.364086, 30.330198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601242, -0.274311, -0.750508,
		0.706248, -0.256937, 0.659695,
		-0.373795, -0.926680, 0.039251,
		40.958515, 38.086082, 30.341974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.858196, 38.326485, 30.188715>,  <41.220169, 38.734756, 30.314499>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.858196, 38.326485, 30.188715> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.543217, 38.087723, 30.127228>,  <41.354229, 37.944466, 30.090336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.543217, 38.087723, 30.127228>,  <41.858196, 38.326485, 30.188715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.543217, 38.087723, 30.127228> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394633, -0.296658, -0.869631,
		0.473485, -0.745452, 0.469162,
		-0.787449, -0.596904, -0.153717,
		41.306980, 37.908653, 30.081112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.139469, 37.726448, 29.959501>,  <41.858196, 38.326485, 30.188715>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.139469, 37.726448, 29.959501> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757137, 37.667488, 29.857792>,  <41.527737, 37.632111, 29.796766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757137, 37.667488, 29.857792>,  <42.139469, 37.726448, 29.959501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.757137, 37.667488, 29.857792> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293459, -0.430955, -0.853323,
		0.016199, -0.890254, 0.455177,
		-0.955834, -0.147399, -0.254272,
		41.470387, 37.623268, 29.781509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.044521, 36.975468, 29.866074>,  <42.139469, 37.726448, 29.959501>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.044521, 36.975468, 29.866074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764690, 37.155884, 29.644386>,  <41.596790, 37.264133, 29.511374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764690, 37.155884, 29.644386>,  <42.044521, 36.975468, 29.866074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.764690, 37.155884, 29.644386> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249660, -0.572446, -0.781009,
		-0.669526, -0.684741, 0.287863,
		-0.699575, 0.451038, -0.554220,
		41.554817, 37.291195, 29.478121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.830021, 36.381279, 29.441687>,  <42.044521, 36.975468, 29.866074>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.830021, 36.381279, 29.441687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.702602, 36.721493, 29.274300>,  <41.626152, 36.925621, 29.173868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.702602, 36.721493, 29.274300>,  <41.830021, 36.381279, 29.441687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.702602, 36.721493, 29.274300> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189714, -0.375328, -0.907269,
		-0.928729, -0.368396, -0.041799,
		-0.318546, 0.850537, -0.418468,
		41.607037, 36.976654, 29.148760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.200043, 36.240662, 28.906652>,  <41.830021, 36.381279, 29.441687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.200043, 36.240662, 28.906652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.407139, 36.575256, 28.834831>,  <41.531395, 36.776012, 28.791739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.407139, 36.575256, 28.834831>,  <41.200043, 36.240662, 28.906652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.407139, 36.575256, 28.834831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326342, -0.387094, -0.862357,
		-0.790852, 0.387880, -0.473394,
		0.517739, 0.836485, -0.179553,
		41.562462, 36.826202, 28.780966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.044708, 36.413925, 28.207109>,  <41.200043, 36.240662, 28.906652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.044708, 36.413925, 28.207109> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368191, 36.642323, 28.263632>,  <41.562279, 36.779362, 28.297544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368191, 36.642323, 28.263632>,  <41.044708, 36.413925, 28.207109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368191, 36.642323, 28.263632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404813, -0.365969, -0.837970,
		-0.426761, 0.734871, -0.527106,
		0.808703, 0.570992, 0.141304,
		41.610802, 36.813622, 28.306023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.111588, 36.710056, 27.515732>,  <41.044708, 36.413925, 28.207109>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.111588, 36.710056, 27.515732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466515, 36.754368, 27.694794>,  <41.679470, 36.780952, 27.802231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466515, 36.754368, 27.694794>,  <41.111588, 36.710056, 27.515732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.466515, 36.754368, 27.694794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460938, -0.243134, -0.853476,
		0.014295, 0.963646, -0.266799,
		0.887317, 0.110777, 0.447657,
		41.732708, 36.787601, 27.829090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.623035, 37.298893, 27.262682>,  <41.111588, 36.710056, 27.515732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.623035, 37.298893, 27.262682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.840607, 37.008583, 27.431158>,  <41.971149, 36.834396, 27.532244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.840607, 37.008583, 27.431158>,  <41.623035, 37.298893, 27.262682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.840607, 37.008583, 27.431158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500315, -0.122468, -0.857138,
		0.673669, 0.676947, 0.296501,
		0.543926, -0.725771, 0.421190,
		42.003784, 36.790852, 27.557514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.226318, 37.260399, 26.801361>,  <41.623035, 37.298893, 27.262682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.226318, 37.260399, 26.801361> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.340450, 36.956577, 27.035172>,  <42.408928, 36.774284, 27.175459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.340450, 36.956577, 27.035172>,  <42.226318, 37.260399, 26.801361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.340450, 36.956577, 27.035172> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608030, -0.327989, -0.722996,
		0.740870, 0.561700, 0.368245,
		0.285327, -0.759550, 0.584528,
		42.426048, 36.728714, 27.210529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.985573, 37.226727, 26.786137>,  <42.226318, 37.260399, 26.801361>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.985573, 37.226727, 26.786137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.832069, 36.861935, 26.844141>,  <42.739967, 36.643059, 26.878942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.832069, 36.861935, 26.844141>,  <42.985573, 37.226727, 26.786137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.832069, 36.861935, 26.844141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480310, -0.331246, -0.812145,
		0.788692, -0.242015, 0.565149,
		-0.383754, -0.911979, 0.145009,
		42.716942, 36.588341, 26.887644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.811134, 32.297405, 26.353821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.050617, 32.615807, 26.389441>,  <38.194305, 32.806847, 26.410812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.050617, 32.615807, 26.389441>,  <37.811134, 32.297405, 26.353821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050617, 32.615807, 26.389441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366391, 0.173307, 0.914178,
		0.712254, -0.579953, 0.395408,
		0.598708, 0.796002, 0.089051,
		38.230228, 32.854607, 26.416157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256519, 32.205688, 26.937048>,  <37.811134, 32.297405, 26.353821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256519, 32.205688, 26.937048> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.204559, 32.594772, 26.860144>,  <38.173386, 32.828224, 26.814001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.204559, 32.594772, 26.860144>,  <38.256519, 32.205688, 26.937048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204559, 32.594772, 26.860144> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465210, 0.111447, 0.878157,
		0.875618, 0.203513, 0.438037,
		-0.129898, 0.972709, -0.192261,
		38.165588, 32.886585, 26.802465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144012, 32.405674, 27.588509>,  <38.256519, 32.205688, 26.937048>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144012, 32.405674, 27.588509> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.051262, 32.735455, 27.382010>,  <37.995613, 32.933323, 27.258110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.051262, 32.735455, 27.382010>,  <38.144012, 32.405674, 27.588509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051262, 32.735455, 27.382010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565509, 0.317562, 0.761153,
		0.791476, 0.468432, 0.392603,
		-0.231873, 0.824455, -0.516246,
		37.981701, 32.982792, 27.227137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292751, 32.914085, 28.047455>,  <38.144012, 32.405674, 27.588509>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292751, 32.914085, 28.047455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.021927, 33.052261, 27.787527>,  <37.859432, 33.135166, 27.631571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.021927, 33.052261, 27.787527>,  <38.292751, 32.914085, 28.047455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021927, 33.052261, 27.787527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324764, 0.652112, 0.685039,
		0.660395, 0.674848, -0.329330,
		-0.677057, 0.345441, -0.649818,
		37.818810, 33.155895, 27.592581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129906, 33.507519, 28.282732>,  <38.292751, 32.914085, 28.047455>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129906, 33.507519, 28.282732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.819214, 33.447536, 28.038042>,  <37.632797, 33.411549, 27.891228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.819214, 33.447536, 28.038042>,  <38.129906, 33.507519, 28.282732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819214, 33.447536, 28.038042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574471, 0.566858, 0.590470,
		0.258219, 0.810053, -0.526438,
		-0.776728, -0.149953, -0.611725,
		37.586197, 33.402550, 27.854525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926701, 34.197639, 28.068571>,  <38.129906, 33.507519, 28.282732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926701, 34.197639, 28.068571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.600983, 33.974239, 28.005323>,  <37.405552, 33.840199, 27.967375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.600983, 33.974239, 28.005323>,  <37.926701, 34.197639, 28.068571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600983, 33.974239, 28.005323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501590, 0.539959, 0.675908,
		-0.292119, 0.629698, -0.719824,
		-0.814294, -0.558502, -0.158118,
		37.356693, 33.806690, 27.957888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461647, 34.662560, 27.987858>,  <37.926701, 34.197639, 28.068571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461647, 34.662560, 27.987858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.294121, 34.320255, 28.109360>,  <37.193607, 34.114872, 28.182261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.294121, 34.320255, 28.109360>,  <37.461647, 34.662560, 27.987858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294121, 34.320255, 28.109360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455091, 0.487269, 0.745293,
		-0.785804, 0.173902, -0.593524,
		-0.418814, -0.855761, 0.303757,
		37.168476, 34.063526, 28.200487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891773, 34.874645, 28.228733>,  <37.461647, 34.662560, 27.987858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891773, 34.874645, 28.228733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.950283, 34.514511, 28.392681>,  <36.985390, 34.298431, 28.491051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.950283, 34.514511, 28.392681>,  <36.891773, 34.874645, 28.228733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950283, 34.514511, 28.392681> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304128, 0.353333, 0.884682,
		-0.941335, -0.254056, -0.222137,
		0.146271, -0.900340, 0.409870,
		36.994164, 34.244408, 28.515642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326317, 34.768208, 28.587944>,  <36.891773, 34.874645, 28.228733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326317, 34.768208, 28.587944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.597034, 34.511986, 28.733070>,  <36.759464, 34.358253, 28.820145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.597034, 34.511986, 28.733070>,  <36.326317, 34.768208, 28.587944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597034, 34.511986, 28.733070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271712, 0.240687, 0.931795,
		-0.684190, -0.729218, -0.011150,
		0.676798, -0.640555, 0.362813,
		36.800076, 34.319820, 28.841915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967495, 34.271935, 29.164833>,  <36.326317, 34.768208, 28.587944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967495, 34.271935, 29.164833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.362476, 34.277046, 29.227787>,  <36.599464, 34.280113, 29.265558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.362476, 34.277046, 29.227787>,  <35.967495, 34.271935, 29.164833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362476, 34.277046, 29.227787> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155992, 0.233501, 0.959762,
		-0.024481, -0.972272, 0.232566,
		0.987455, 0.012783, 0.157383,
		36.658714, 34.280880, 29.275002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992397, 33.754246, 29.714605>,  <35.967495, 34.271935, 29.164833>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992397, 33.754246, 29.714605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.331623, 33.965244, 29.694454>,  <36.535160, 34.091843, 29.682364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.331623, 33.965244, 29.694454>,  <35.992397, 33.754246, 29.714605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331623, 33.965244, 29.694454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054540, 0.007679, 0.998482,
		0.527079, -0.849525, -0.022257,
		0.848064, 0.527493, -0.050380,
		36.586044, 34.123493, 29.679340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504860, 33.422932, 30.079540>,  <35.992397, 33.754246, 29.714605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504860, 33.422932, 30.079540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.584274, 33.814816, 30.068506>,  <36.631924, 34.049946, 30.061886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.584274, 33.814816, 30.068506>,  <36.504860, 33.422932, 30.079540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584274, 33.814816, 30.068506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089533, 0.046156, 0.994914,
		0.975996, -0.195053, 0.096879,
		0.198532, 0.979706, -0.027584,
		36.643833, 34.108727, 30.060230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901932, 33.578514, 30.611599>,  <36.504860, 33.422932, 30.079540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901932, 33.578514, 30.611599> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.774479, 33.952000, 30.546293>,  <36.698009, 34.176090, 30.507111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.774479, 33.952000, 30.546293>,  <36.901932, 33.578514, 30.611599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774479, 33.952000, 30.546293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182036, 0.108757, 0.977259,
		0.930236, 0.341101, 0.135316,
		-0.318628, 0.933714, -0.163262,
		36.678890, 34.232113, 30.497314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182545, 33.988605, 31.153143>,  <36.901932, 33.578514, 30.611599>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182545, 33.988605, 31.153143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.856255, 34.163929, 31.002163>,  <36.660480, 34.269123, 30.911575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.856255, 34.163929, 31.002163>,  <37.182545, 33.988605, 31.153143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856255, 34.163929, 31.002163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322783, 0.196556, 0.925839,
		0.479996, 0.877068, -0.018857,
		-0.815730, 0.438312, -0.377448,
		36.611534, 34.295422, 30.888929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867340, 34.340462, 31.213139>,  <37.182545, 33.988605, 31.153143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867340, 34.340462, 31.213139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.217964, 34.372898, 31.402903>,  <38.428337, 34.392361, 31.516760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.217964, 34.372898, 31.402903>,  <37.867340, 34.340462, 31.213139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217964, 34.372898, 31.402903> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479640, -0.228742, -0.847126,
		0.039820, 0.970104, -0.239402,
		0.876562, 0.081094, 0.474408,
		38.480934, 34.397228, 31.545225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332706, 34.807182, 30.745600>,  <37.867340, 34.340462, 31.213139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332706, 34.807182, 30.745600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.539539, 34.547894, 30.969185>,  <38.663639, 34.392323, 31.103336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.539539, 34.547894, 30.969185>,  <38.332706, 34.807182, 30.745600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539539, 34.547894, 30.969185> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485720, -0.315493, -0.815194,
		0.704772, 0.693021, 0.151717,
		0.517081, -0.648217, 0.558964,
		38.694664, 34.353428, 31.136875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098057, 34.861408, 30.451841>,  <38.332706, 34.807182, 30.745600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098057, 34.861408, 30.451841> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.071781, 34.520870, 30.660030>,  <39.056015, 34.316547, 30.784945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.071781, 34.520870, 30.660030>,  <39.098057, 34.861408, 30.451841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071781, 34.520870, 30.660030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512701, -0.476277, -0.714352,
		0.856051, 0.219925, 0.467771,
		-0.065685, -0.851348, 0.520473,
		39.052074, 34.265465, 30.816172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775112, 34.547955, 30.555031>,  <39.098057, 34.861408, 30.451841>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775112, 34.547955, 30.555031> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.539921, 34.227421, 30.599119>,  <39.398808, 34.035099, 30.625572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.539921, 34.227421, 30.599119>,  <39.775112, 34.547955, 30.555031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539921, 34.227421, 30.599119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560210, -0.501713, -0.659127,
		0.583479, -0.325805, 0.743911,
		-0.587977, -0.801333, 0.110220,
		39.363529, 33.987022, 30.632185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281578, 34.000732, 30.719746>,  <39.775112, 34.547955, 30.555031>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.281578, 34.000732, 30.719746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.939205, 33.843189, 30.585732>,  <39.733780, 33.748665, 30.505323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.939205, 33.843189, 30.585732>,  <40.281578, 34.000732, 30.719746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939205, 33.843189, 30.585732> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511871, -0.553647, -0.656858,
		0.073216, -0.733724, 0.675491,
		-0.855937, -0.393856, -0.335036,
		39.682423, 33.725033, 30.485220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452808, 33.289139, 30.716833>,  <40.281578, 34.000732, 30.719746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452808, 33.289139, 30.716833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.136143, 33.363937, 30.484180>,  <39.946144, 33.408817, 30.344589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.136143, 33.363937, 30.484180>,  <40.452808, 33.289139, 30.716833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136143, 33.363937, 30.484180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397834, -0.564721, -0.723061,
		-0.463672, -0.803816, 0.372677,
		-0.791667, 0.187000, -0.581631,
		39.898643, 33.420036, 30.309690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236397, 32.624886, 30.547365>,  <40.452808, 33.289139, 30.716833>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236397, 32.624886, 30.547365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.067383, 32.865059, 30.275793>,  <39.965977, 33.009163, 30.112850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.067383, 32.865059, 30.275793>,  <40.236397, 32.624886, 30.547365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067383, 32.865059, 30.275793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305080, -0.611149, -0.730358,
		-0.853459, -0.515728, 0.075050,
		-0.422533, 0.600434, -0.678929,
		39.940624, 33.045189, 30.072115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867210, 32.119961, 30.110485>,  <40.236397, 32.624886, 30.547365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.867210, 32.119961, 30.110485> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.916229, 32.452000, 29.892891>,  <39.945641, 32.651222, 29.762335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.916229, 32.452000, 29.892891>,  <39.867210, 32.119961, 30.110485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916229, 32.452000, 29.892891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387075, -0.544686, -0.743969,
		-0.913867, -0.119388, -0.388063,
		0.122552, 0.830099, -0.543983,
		39.952995, 32.701031, 29.729696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667034, 31.890757, 29.402710>,  <39.867210, 32.119961, 30.110485>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667034, 31.890757, 29.402710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.858528, 32.241364, 29.382561>,  <39.973423, 32.451729, 29.370472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.858528, 32.241364, 29.382561>,  <39.667034, 31.890757, 29.402710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858528, 32.241364, 29.382561> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442355, -0.290367, -0.848533,
		-0.758378, 0.383938, -0.526739,
		0.478732, 0.876515, -0.050371,
		40.002148, 32.504318, 29.367449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440319, 32.208469, 28.758345>,  <39.667034, 31.890757, 29.402710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440319, 32.208469, 28.758345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.783600, 32.380234, 28.870838>,  <39.989571, 32.483292, 28.938334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.783600, 32.380234, 28.870838>,  <39.440319, 32.208469, 28.758345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783600, 32.380234, 28.870838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372232, -0.143355, -0.917002,
		-0.353453, 0.891660, -0.282868,
		0.858204, 0.429409, 0.281234,
		40.041061, 32.509056, 28.955208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623672, 32.668800, 28.178379>,  <39.440319, 32.208469, 28.758345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623672, 32.668800, 28.178379> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.960735, 32.587757, 28.377930>,  <40.162971, 32.539131, 28.497660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.960735, 32.587757, 28.377930>,  <39.623672, 32.668800, 28.178379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960735, 32.587757, 28.377930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520041, 0.066052, -0.851584,
		0.139587, 0.977029, 0.161024,
		0.842658, -0.202610, 0.498875,
		40.213531, 32.526974, 28.527592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096725, 33.216389, 28.129766>,  <39.623672, 32.668800, 28.178379>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096725, 33.216389, 28.129766> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.309330, 32.888813, 28.216331>,  <40.436893, 32.692268, 28.268270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.309330, 32.888813, 28.216331>,  <40.096725, 33.216389, 28.129766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309330, 32.888813, 28.216331> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522446, 0.115841, -0.844767,
		0.666744, 0.562065, 0.489423,
		0.531509, -0.818940, 0.216413,
		40.468784, 32.643131, 28.281256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826073, 33.393536, 28.036892>,  <40.096725, 33.216389, 28.129766>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.826073, 33.393536, 28.036892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.867111, 32.996017, 28.019751>,  <40.891735, 32.757507, 28.009466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.867111, 32.996017, 28.019751>,  <40.826073, 33.393536, 28.036892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.867111, 32.996017, 28.019751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544328, 0.092148, -0.833796,
		0.832575, 0.062216, 0.550407,
		0.102594, -0.993800, -0.042855,
		40.897888, 32.697876, 28.006895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.485954, 33.259014, 27.918806>,  <40.826073, 33.393536, 28.036892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.485954, 33.259014, 27.918806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.291149, 32.933628, 27.791628>,  <41.174267, 32.738396, 27.715321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.291149, 32.933628, 27.791628>,  <41.485954, 33.259014, 27.918806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.291149, 32.933628, 27.791628> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383608, 0.127814, -0.914608,
		0.784642, -0.567392, 0.249806,
		-0.487013, -0.813468, -0.317944,
		41.145046, 32.689587, 27.696245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.233135, 33.120392, 28.105040>,  <41.485954, 33.259014, 27.918806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.233135, 33.120392, 28.105040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.573318, 33.321995, 28.165300>,  <42.777428, 33.442955, 28.201456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.573318, 33.321995, 28.165300>,  <42.233135, 33.120392, 28.105040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.573318, 33.321995, 28.165300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280792, 0.192771, 0.940210,
		0.444830, -0.841913, 0.305464,
		0.850460, 0.504006, 0.150652,
		42.828457, 33.473198, 28.210497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.597145, 32.816677, 28.721628>,  <42.233135, 33.120392, 28.105040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.597145, 32.816677, 28.721628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.770641, 33.174778, 28.680853>,  <42.874741, 33.389637, 28.656387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.770641, 33.174778, 28.680853>,  <42.597145, 32.816677, 28.721628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.770641, 33.174778, 28.680853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114977, 0.057215, 0.991719,
		0.893670, -0.441874, -0.078117,
		0.433745, 0.895251, -0.101936,
		42.900764, 33.443352, 28.650272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.149178, 32.849483, 29.218884>,  <42.597145, 32.816677, 28.721628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.149178, 32.849483, 29.218884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.068871, 33.236210, 29.155701>,  <43.020687, 33.468246, 29.117790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.068871, 33.236210, 29.155701>,  <43.149178, 32.849483, 29.218884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.068871, 33.236210, 29.155701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121356, 0.184544, 0.975303,
		0.972093, 0.176642, -0.154381,
		-0.200769, 0.966820, -0.157957,
		43.008640, 33.526257, 29.108313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.747730, 33.232208, 29.467079>,  <43.149178, 32.849483, 29.218884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.747730, 33.232208, 29.467079> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.419231, 33.460358, 29.473206>,  <43.222134, 33.597248, 29.476881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.419231, 33.460358, 29.473206>,  <43.747730, 33.232208, 29.467079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.419231, 33.460358, 29.473206> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137906, 0.172373, 0.975330,
		0.553659, 0.803097, -0.220218,
		-0.821245, 0.570370, 0.015316,
		43.172859, 33.631470, 29.477800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.891972, 33.827293, 29.867659>,  <43.747730, 33.232208, 29.467079>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.891972, 33.827293, 29.867659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.492130, 33.829109, 29.856495>,  <43.252228, 33.830200, 29.849796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.492130, 33.829109, 29.856495>,  <43.891972, 33.827293, 29.867659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.492130, 33.829109, 29.856495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026309, 0.212247, 0.976862,
		0.010361, 0.977206, -0.212042,
		-0.999600, 0.004543, -0.027908,
		43.192249, 33.830471, 29.848122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.795563, 34.421215, 30.264288>,  <43.891972, 33.827293, 29.867659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.795563, 34.421215, 30.264288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.431351, 34.256699, 30.247454>,  <43.212822, 34.157990, 30.237352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.431351, 34.256699, 30.247454>,  <43.795563, 34.421215, 30.264288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.431351, 34.256699, 30.247454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154219, 0.243426, 0.957580,
		-0.383603, 0.878396, -0.285076,
		-0.910530, -0.411295, -0.042086,
		43.158192, 34.133308, 30.234827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.288746, 34.934944, 30.460171>,  <43.795563, 34.421215, 30.264288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.288746, 34.934944, 30.460171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.091396, 34.593349, 30.526239>,  <42.972988, 34.388393, 30.565880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.091396, 34.593349, 30.526239>,  <43.288746, 34.934944, 30.460171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.091396, 34.593349, 30.526239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215809, 0.304139, 0.927861,
		-0.842619, 0.422138, -0.334353,
		-0.493375, -0.853990, 0.165172,
		42.943382, 34.337151, 30.575790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.683559, 35.106678, 30.622898>,  <43.288746, 34.934944, 30.460171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.683559, 35.106678, 30.622898> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.733273, 34.739059, 30.772518>,  <42.763100, 34.518490, 30.862289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.733273, 34.739059, 30.772518>,  <42.683559, 35.106678, 30.622898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.733273, 34.739059, 30.772518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257354, 0.334215, 0.906680,
		-0.958292, -0.208946, -0.194983,
		0.124281, -0.919044, 0.374048,
		42.770557, 34.463345, 30.884733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.155041, 35.058533, 30.927408>,  <42.683559, 35.106678, 30.622898>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.155041, 35.058533, 30.927408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.393513, 34.788948, 31.101921>,  <42.536594, 34.627197, 31.206629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.393513, 34.788948, 31.101921>,  <42.155041, 35.058533, 30.927408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.393513, 34.788948, 31.101921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413001, 0.208552, 0.886531,
		-0.688477, -0.708717, -0.154012,
		0.596180, -0.673963, 0.436284,
		42.572369, 34.586758, 31.232807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.690392, 34.707409, 31.437496>,  <42.155041, 35.058533, 30.927408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.690392, 34.707409, 31.437496> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.058681, 34.635933, 31.576252>,  <42.279655, 34.593048, 31.659506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.058681, 34.635933, 31.576252>,  <41.690392, 34.707409, 31.437496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.058681, 34.635933, 31.576252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277853, 0.323949, 0.904353,
		-0.273972, -0.929046, 0.248620,
		0.920726, -0.178688, 0.346892,
		42.334900, 34.582325, 31.680319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581505, 34.442421, 32.150467>,  <41.690392, 34.707409, 31.437496>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.581505, 34.442421, 32.150467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.972183, 34.527817, 32.141582>,  <42.206589, 34.579056, 32.136250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.972183, 34.527817, 32.141582>,  <41.581505, 34.442421, 32.150467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.972183, 34.527817, 32.141582> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045643, 0.307698, 0.950388,
		0.209734, -0.927224, 0.310271,
		0.976693, 0.213490, -0.022213,
		42.265190, 34.591866, 32.134918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.836422, 34.181953, 32.716850>,  <41.581505, 34.442421, 32.150467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.836422, 34.181953, 32.716850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.112137, 34.448814, 32.603855>,  <42.277565, 34.608929, 32.536057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.112137, 34.448814, 32.603855>,  <41.836422, 34.181953, 32.716850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.112137, 34.448814, 32.603855> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040984, 0.425194, 0.904174,
		0.723330, -0.611656, 0.320422,
		0.689284, 0.667149, -0.282487,
		42.318924, 34.648960, 32.519108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.414726, 34.093716, 33.175217>,  <41.836422, 34.181953, 32.716850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.414726, 34.093716, 33.175217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.461250, 34.463017, 33.028755>,  <42.489162, 34.684597, 32.940876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.461250, 34.463017, 33.028755>,  <42.414726, 34.093716, 33.175217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.461250, 34.463017, 33.028755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157487, 0.381139, 0.911005,
		0.980648, -0.048292, 0.189730,
		0.116308, 0.923256, -0.366158,
		42.496143, 34.739994, 32.918907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.776760, 34.456886, 33.665733>,  <42.414726, 34.093716, 33.175217>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.776760, 34.456886, 33.665733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.563816, 34.710270, 33.441120>,  <42.436050, 34.862301, 33.306351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.563816, 34.710270, 33.441120>,  <42.776760, 34.456886, 33.665733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.563816, 34.710270, 33.441120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340502, 0.447077, 0.827152,
		0.775019, 0.631544, -0.022309,
		-0.532356, 0.633462, -0.561536,
		42.404110, 34.900311, 33.272659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.665977, 36.489635, 26.624628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.294170, 36.342216, 26.629974>,  <43.071087, 36.253765, 26.633183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.294170, 36.342216, 26.629974>,  <43.665977, 36.489635, 26.624628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.294170, 36.342216, 26.629974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192089, -0.514774, -0.835529,
		0.314809, -0.774069, 0.549283,
		-0.929514, -0.368544, 0.013365,
		43.015316, 36.231655, 26.633984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.693672, 35.680946, 26.727993>,  <43.665977, 36.489635, 26.624628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.693672, 35.680946, 26.727993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.389076, 35.826134, 26.513186>,  <43.206318, 35.913246, 26.384302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.389076, 35.826134, 26.513186>,  <43.693672, 35.680946, 26.727993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.389076, 35.826134, 26.513186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302934, -0.533158, -0.789920,
		-0.573036, -0.764194, 0.296035,
		-0.761486, 0.362973, -0.537019,
		43.160629, 35.935024, 26.352081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.875725, 35.324104, 26.189104>,  <43.693672, 35.680946, 26.727993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.875725, 35.324104, 26.189104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.551846, 35.526474, 26.070152>,  <43.357517, 35.647896, 25.998781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.551846, 35.526474, 26.070152>,  <43.875725, 35.324104, 26.189104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.551846, 35.526474, 26.070152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208648, -0.225449, -0.951651,
		-0.548509, -0.832593, 0.076984,
		-0.809694, 0.505926, -0.297380,
		43.308937, 35.678253, 25.980938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.527828, 34.880222, 25.720417>,  <43.875725, 35.324104, 26.189104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.527828, 34.880222, 25.720417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.440449, 35.263371, 25.645844>,  <43.388020, 35.493259, 25.601099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.440449, 35.263371, 25.645844>,  <43.527828, 34.880222, 25.720417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.440449, 35.263371, 25.645844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052801, -0.179167, -0.982401,
		-0.974418, -0.224452, -0.011438,
		-0.218452, 0.957873, -0.186435,
		43.374912, 35.550732, 25.589912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.078880, 34.928928, 25.150698>,  <43.527828, 34.880222, 25.720417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.078880, 34.928928, 25.150698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.240700, 35.293739, 25.177662>,  <43.337791, 35.512627, 25.193840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.240700, 35.293739, 25.177662>,  <43.078880, 34.928928, 25.150698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.240700, 35.293739, 25.177662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213900, -0.022699, -0.976592,
		-0.889149, 0.409499, -0.204266,
		0.404550, 0.912028, 0.067409,
		43.362064, 35.567348, 25.197886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.854980, 35.301823, 24.593584>,  <43.078880, 34.928928, 25.150698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.854980, 35.301823, 24.593584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.196182, 35.482540, 24.698088>,  <43.400906, 35.590973, 24.760790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.196182, 35.482540, 24.698088>,  <42.854980, 35.301823, 24.593584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.196182, 35.482540, 24.698088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278978, 0.028345, -0.959879,
		-0.441077, 0.891670, -0.101863,
		0.853008, 0.451798, 0.261259,
		43.452084, 35.618080, 24.776464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.024281, 35.618168, 24.062197>,  <42.854980, 35.301823, 24.593584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.024281, 35.618168, 24.062197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.374374, 35.650448, 24.252962>,  <43.584431, 35.669815, 24.367422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.374374, 35.650448, 24.252962>,  <43.024281, 35.618168, 24.062197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.374374, 35.650448, 24.252962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467945, 0.108271, -0.877101,
		-0.122421, 0.990840, 0.056998,
		0.875238, 0.080704, 0.476913,
		43.636944, 35.674660, 24.396036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.321907, 36.166435, 23.719501>,  <43.024281, 35.618168, 24.062197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.321907, 36.166435, 23.719501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.619530, 35.950058, 23.876348>,  <43.798103, 35.820232, 23.970457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.619530, 35.950058, 23.876348>,  <43.321907, 36.166435, 23.719501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.619530, 35.950058, 23.876348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456510, -0.016896, -0.889558,
		0.487828, 0.840888, 0.234376,
		0.744058, -0.540946, 0.392116,
		43.842747, 35.787773, 23.993982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.845871, 36.565262, 23.405621>,  <43.321907, 36.166435, 23.719501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.845871, 36.565262, 23.405621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.013622, 36.242775, 23.572542>,  <44.114273, 36.049282, 23.672695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.013622, 36.242775, 23.572542>,  <43.845871, 36.565262, 23.405621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.013622, 36.242775, 23.572542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574060, -0.120588, -0.809885,
		0.703262, 0.579206, 0.412242,
		0.419379, -0.806213, 0.417304,
		44.139435, 36.000912, 23.697733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.539631, 36.623943, 23.127399>,  <43.845871, 36.565262, 23.405621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.539631, 36.623943, 23.127399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.495590, 36.247078, 23.254025>,  <44.469166, 36.020958, 23.330000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.495590, 36.247078, 23.254025>,  <44.539631, 36.623943, 23.127399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.495590, 36.247078, 23.254025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441530, -0.331711, -0.833678,
		0.890465, 0.047979, 0.452515,
		-0.110106, -0.942160, 0.316561,
		44.462559, 35.964432, 23.348993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.132530, 36.243656, 22.764938>,  <44.539631, 36.623943, 23.127399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.132530, 36.243656, 22.764938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.868912, 35.972481, 22.895205>,  <44.710743, 35.809776, 22.973364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.868912, 35.972481, 22.895205>,  <45.132530, 36.243656, 22.764938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.868912, 35.972481, 22.895205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217261, -0.586150, -0.780529,
		0.720042, -0.443648, 0.533588,
		-0.659043, -0.677942, 0.325665,
		44.671200, 35.769096, 22.992905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.532345, 35.607628, 22.943750>,  <45.132530, 36.243656, 22.764938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.532345, 35.607628, 22.943750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.151478, 35.538006, 22.843285>,  <44.922958, 35.496235, 22.783005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.151478, 35.538006, 22.843285>,  <45.532345, 35.607628, 22.943750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.151478, 35.538006, 22.843285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295896, -0.730407, -0.615590,
		-0.076308, -0.660463, 0.746970,
		-0.952167, -0.174051, -0.251165,
		44.865829, 35.485790, 22.767935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.482006, 34.905331, 22.868692>,  <45.532345, 35.607628, 22.943750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.482006, 34.905331, 22.868692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.211426, 35.076344, 22.628815>,  <45.049080, 35.178951, 22.484888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.211426, 35.076344, 22.628815>,  <45.482006, 34.905331, 22.868692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.211426, 35.076344, 22.628815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201540, -0.675723, -0.709069,
		-0.708381, -0.600510, 0.370924,
		-0.676445, 0.427535, -0.599696,
		45.008492, 35.204605, 22.448906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.849850, 34.520382, 22.715773>,  <45.482006, 34.905331, 22.868692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.849850, 34.520382, 22.715773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.978043, 34.737114, 22.404978>,  <45.054958, 34.867153, 22.218500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.978043, 34.737114, 22.404978>,  <44.849850, 34.520382, 22.715773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.978043, 34.737114, 22.404978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373163, -0.826140, -0.422188,
		-0.870655, -0.154640, -0.466954,
		0.320482, 0.541830, -0.776989,
		45.074188, 34.899662, 22.171881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.236839, 33.975834, 22.976444>,  <44.849850, 34.520382, 22.715773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.236839, 33.975834, 22.976444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.171814, 33.583256, 23.017136>,  <45.132801, 33.347710, 23.041550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.171814, 33.583256, 23.017136>,  <45.236839, 33.975834, 22.976444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.171814, 33.583256, 23.017136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452721, 0.165794, 0.876103,
		-0.876709, 0.096365, -0.471270,
		-0.162559, -0.981441, 0.101727,
		45.123047, 33.288822, 23.047653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.634926, 33.894478, 23.357389>,  <45.236839, 33.975834, 22.976444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.634926, 33.894478, 23.357389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.825138, 33.548077, 23.419233>,  <44.939266, 33.340237, 23.456339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.825138, 33.548077, 23.419233>,  <44.634926, 33.894478, 23.357389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.825138, 33.548077, 23.419233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368775, -0.036679, 0.928795,
		-0.798671, -0.498685, -0.336804,
		0.475530, -0.866007, 0.154608,
		44.967796, 33.288273, 23.465616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.110741, 33.434933, 23.704283>,  <44.634926, 33.894478, 23.357389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.110741, 33.434933, 23.704283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.455284, 33.247627, 23.783060>,  <44.662010, 33.135246, 23.830326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.455284, 33.247627, 23.783060>,  <44.110741, 33.434933, 23.704283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.455284, 33.247627, 23.783060> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304834, -0.166326, 0.937769,
		-0.406363, -0.867795, -0.286009,
		0.861362, -0.468260, 0.196945,
		44.713692, 33.107151, 23.842144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.935062, 32.837170, 24.036196>,  <44.110741, 33.434933, 23.704283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.935062, 32.837170, 24.036196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.315437, 32.912846, 24.134109>,  <44.543663, 32.958252, 24.192858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.315437, 32.912846, 24.134109>,  <43.935062, 32.837170, 24.036196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.315437, 32.912846, 24.134109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217378, -0.154386, 0.963801,
		0.220135, -0.969728, -0.105686,
		0.950940, 0.189192, 0.244783,
		44.600719, 32.969604, 24.207544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.096432, 32.380711, 24.539242>,  <43.935062, 32.837170, 24.036196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.096432, 32.380711, 24.539242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.343773, 32.687916, 24.605940>,  <44.492176, 32.872238, 24.645958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.343773, 32.687916, 24.605940>,  <44.096432, 32.380711, 24.539242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.343773, 32.687916, 24.605940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287441, 0.023542, 0.957509,
		0.731451, -0.640005, 0.235315,
		0.618350, 0.768010, 0.166744,
		44.529278, 32.918320, 24.655964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.406223, 32.246964, 25.282070>,  <44.096432, 32.380711, 24.539242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.406223, 32.246964, 25.282070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.483681, 32.632824, 25.210569>,  <44.530155, 32.864342, 25.167669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.483681, 32.632824, 25.210569>,  <44.406223, 32.246964, 25.282070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.483681, 32.632824, 25.210569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213478, 0.219263, 0.952025,
		0.957565, -0.146191, 0.248390,
		0.193640, 0.964651, -0.178750,
		44.541771, 32.922218, 25.156944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.994656, 32.397190, 25.673496>,  <44.406223, 32.246964, 25.282070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.994656, 32.397190, 25.673496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.733162, 32.689468, 25.594790>,  <44.576267, 32.864834, 25.547565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.733162, 32.689468, 25.594790>,  <44.994656, 32.397190, 25.673496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.733162, 32.689468, 25.594790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248134, 0.038659, 0.967954,
		0.714886, 0.681609, 0.156037,
		-0.653734, 0.730695, -0.196767,
		44.537041, 32.908676, 25.535759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.922203, 32.670437, 26.279881>,  <44.994656, 32.397190, 25.673496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.922203, 32.670437, 26.279881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.664864, 32.919159, 26.101234>,  <44.510460, 33.068390, 25.994047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.664864, 32.919159, 26.101234>,  <44.922203, 32.670437, 26.279881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.664864, 32.919159, 26.101234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414839, 0.207163, 0.885998,
		0.643436, 0.755280, 0.124669,
		-0.643350, 0.621800, -0.446616,
		44.471859, 33.105698, 25.967249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.993893, 33.316864, 26.518621>,  <44.922203, 32.670437, 26.279881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.993893, 33.316864, 26.518621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.616657, 33.277328, 26.391611>,  <44.390316, 33.253609, 26.315405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.616657, 33.277328, 26.391611>,  <44.993893, 33.316864, 26.518621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.616657, 33.277328, 26.391611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331945, 0.337424, 0.880884,
		0.020077, 0.936150, -0.351028,
		-0.943085, -0.098837, -0.317525,
		44.333733, 33.247677, 26.296354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.591396, 33.887482, 26.781050>,  <44.993893, 33.316864, 26.518621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.591396, 33.887482, 26.781050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.298828, 33.630337, 26.690052>,  <44.123287, 33.476051, 26.635454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.298828, 33.630337, 26.690052>,  <44.591396, 33.887482, 26.781050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.298828, 33.630337, 26.690052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540152, 0.342535, 0.768704,
		-0.416246, 0.685127, -0.597780,
		-0.731420, -0.642862, -0.227493,
		44.079403, 33.437477, 26.621803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.992874, 34.322598, 26.804392>,  <44.591396, 33.887482, 26.781050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.992874, 34.322598, 26.804392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.827297, 33.958485, 26.807146>,  <43.727951, 33.740017, 26.808798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.827297, 33.958485, 26.807146>,  <43.992874, 34.322598, 26.804392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.827297, 33.958485, 26.807146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571900, 0.265935, 0.776021,
		-0.708226, 0.317290, -0.630669,
		-0.413940, -0.910278, 0.006884,
		43.703114, 33.685402, 26.809212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.306572, 34.360855, 26.923460>,  <43.992874, 34.322598, 26.804392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.306572, 34.360855, 26.923460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.340080, 33.976280, 27.028246>,  <43.360188, 33.745537, 27.091118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.340080, 33.976280, 27.028246>,  <43.306572, 34.360855, 26.923460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.340080, 33.976280, 27.028246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673920, 0.138987, 0.725613,
		-0.734039, -0.237331, -0.636286,
		0.083775, -0.961435, 0.261964,
		43.365211, 33.687851, 27.106834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.612823, 34.130753, 27.131142>,  <43.306572, 34.360855, 26.923460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.612823, 34.130753, 27.131142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.870880, 33.885273, 27.313202>,  <43.025715, 33.737984, 27.422438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.870880, 33.885273, 27.313202>,  <42.612823, 34.130753, 27.131142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.870880, 33.885273, 27.313202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554029, 0.034475, 0.831783,
		-0.526157, -0.788786, -0.317767,
		0.645144, -0.613701, 0.455150,
		43.064423, 33.701164, 27.449747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.220036, 33.626137, 27.574488>,  <42.612823, 34.130753, 27.131142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.220036, 33.626137, 27.574488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.594143, 33.646690, 27.714567>,  <42.818607, 33.659023, 27.798615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.594143, 33.646690, 27.714567>,  <42.220036, 33.626137, 27.574488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.594143, 33.646690, 27.714567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353847, 0.112114, 0.928560,
		0.008447, -0.992366, 0.123037,
		0.935265, 0.051380, 0.350198,
		42.874722, 33.662106, 27.819626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.004745, 32.980289, 27.413958>,  <42.220036, 33.626137, 27.574488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.004745, 32.980289, 27.413958> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.641884, 32.820930, 27.359779>,  <41.424168, 32.725315, 27.327272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.641884, 32.820930, 27.359779>,  <42.004745, 32.980289, 27.413958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.641884, 32.820930, 27.359779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210320, -0.150484, -0.965981,
		0.364464, -0.904783, 0.220303,
		-0.907156, -0.398399, -0.135448,
		41.369736, 32.701412, 27.319145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.078232, 32.302906, 27.195747>,  <42.004745, 32.980289, 27.413958>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.078232, 32.302906, 27.195747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.716022, 32.392578, 27.051653>,  <41.498695, 32.446381, 26.965197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.716022, 32.392578, 27.051653>,  <42.078232, 32.302906, 27.195747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.716022, 32.392578, 27.051653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323229, -0.185523, -0.927957,
		-0.274866, -0.956724, 0.095533,
		-0.905523, 0.224185, -0.360235,
		41.444366, 32.459835, 26.943583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.977119, 31.862434, 26.607742>,  <42.078232, 32.302906, 27.195747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.977119, 31.862434, 26.607742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.705406, 32.149353, 26.545700>,  <41.542377, 32.321503, 26.508474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.705406, 32.149353, 26.545700>,  <41.977119, 31.862434, 26.607742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.705406, 32.149353, 26.545700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126759, -0.093497, -0.987517,
		-0.722844, -0.690467, -0.027413,
		-0.679286, 0.717296, -0.155106,
		41.501621, 32.364540, 26.499168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.732021, 31.512358, 26.017292>,  <41.977119, 31.862434, 26.607742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.732021, 31.512358, 26.017292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.593971, 31.887777, 26.015776>,  <41.511139, 32.113029, 26.014866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.593971, 31.887777, 26.015776>,  <41.732021, 31.512358, 26.017292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.593971, 31.887777, 26.015776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129049, 0.043454, -0.990686,
		-0.929642, -0.342402, -0.136116,
		-0.345127, 0.938548, -0.003789,
		41.490433, 32.169342, 26.014639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312557, 31.512730, 25.523945>,  <41.732021, 31.512358, 26.017292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.312557, 31.512730, 25.523945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.371449, 31.908289, 25.531982>,  <41.406784, 32.145626, 25.536806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.371449, 31.908289, 25.531982>,  <41.312557, 31.512730, 25.523945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.371449, 31.908289, 25.531982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134853, 0.000058, -0.990866,
		-0.979867, 0.148594, -0.133347,
		0.147229, 0.988898, 0.020095,
		41.415619, 32.204960, 25.538012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824070, 31.774965, 25.072613>,  <41.312557, 31.512730, 25.523945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824070, 31.774965, 25.072613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.127609, 32.034161, 25.098736>,  <41.309731, 32.189678, 25.114408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.127609, 32.034161, 25.098736>,  <40.824070, 31.774965, 25.072613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.127609, 32.034161, 25.098736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065886, 0.176141, -0.982157,
		-0.647928, 0.741004, 0.176357,
		0.758846, 0.647987, 0.065305,
		41.355263, 32.228558, 25.118328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747150, 32.168552, 24.511318>,  <40.824070, 31.774965, 25.072613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.747150, 32.168552, 24.511318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.120975, 32.238350, 24.635342>,  <41.345272, 32.280228, 24.709755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.120975, 32.238350, 24.635342>,  <40.747150, 32.168552, 24.511318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.120975, 32.238350, 24.635342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301910, 0.072133, -0.950604,
		-0.188242, 0.982012, 0.014731,
		0.934567, 0.174497, 0.310057,
		41.401344, 32.290699, 24.728359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.520931, 32.775074, 24.202169>,  <40.747150, 32.168552, 24.511318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.520931, 32.775074, 24.202169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.140530, 32.826702, 24.089796>,  <39.912289, 32.857677, 24.022371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.140530, 32.826702, 24.089796>,  <40.520931, 32.775074, 24.202169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140530, 32.826702, 24.089796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225327, 0.332821, 0.915674,
		0.211684, 0.934116, -0.287433,
		-0.951009, 0.129067, -0.280935,
		39.855228, 32.865421, 24.005516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295162, 33.466541, 24.390482>,  <40.520931, 32.775074, 24.202169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295162, 33.466541, 24.390482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.958729, 33.256191, 24.339834>,  <39.756866, 33.129982, 24.309446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.958729, 33.256191, 24.339834>,  <40.295162, 33.466541, 24.390482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958729, 33.256191, 24.339834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271752, 0.208427, 0.939526,
		-0.467678, 0.824632, -0.318212,
		-0.841087, -0.525871, -0.126618,
		39.706402, 33.098431, 24.301849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818596, 33.925350, 24.611597>,  <40.295162, 33.466541, 24.390482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818596, 33.925350, 24.611597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.662895, 33.556900, 24.610586>,  <39.569477, 33.335831, 24.609980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.662895, 33.556900, 24.610586>,  <39.818596, 33.925350, 24.611597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662895, 33.556900, 24.610586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356456, 0.148098, 0.922500,
		-0.849367, 0.359984, -0.385989,
		-0.389249, -0.921129, -0.002529,
		39.546120, 33.280560, 24.609827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182903, 33.995049, 24.935337>,  <39.818596, 33.925350, 24.611597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182903, 33.995049, 24.935337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.215500, 33.596794, 24.953514>,  <39.235058, 33.357841, 24.964420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.215500, 33.596794, 24.953514>,  <39.182903, 33.995049, 24.935337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215500, 33.596794, 24.953514> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600686, -0.012681, 0.799384,
		-0.795321, -0.092439, -0.599099,
		0.081492, -0.995637, 0.045441,
		39.239948, 33.298103, 24.967146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508244, 33.792576, 24.975103>,  <39.182903, 33.995049, 24.935337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508244, 33.792576, 24.975103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.724762, 33.492229, 25.126467>,  <38.854675, 33.312019, 25.217285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.724762, 33.492229, 25.126467>,  <38.508244, 33.792576, 24.975103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724762, 33.492229, 25.126467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511197, 0.063436, 0.857119,
		-0.667589, -0.657398, -0.349504,
		0.541297, -0.750869, 0.378409,
		38.887150, 33.266968, 25.239990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977028, 33.212967, 25.245518>,  <38.508244, 33.792576, 24.975103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977028, 33.212967, 25.245518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.311386, 33.139511, 25.452423>,  <38.512001, 33.095436, 25.576567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.311386, 33.139511, 25.452423>,  <37.977028, 33.212967, 25.245518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311386, 33.139511, 25.452423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468919, 0.250919, 0.846850,
		-0.285309, -0.950429, 0.123627,
		0.835891, -0.183643, 0.517264,
		38.562153, 33.084419, 25.607603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755672, 32.684967, 25.723873>,  <37.977028, 33.212967, 25.245518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755672, 32.684967, 25.723873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.095043, 32.856289, 25.848278>,  <38.298664, 32.959080, 25.922922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.095043, 32.856289, 25.848278>,  <37.755672, 32.684967, 25.723873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095043, 32.856289, 25.848278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417071, 0.179143, 0.891044,
		0.325919, -0.885701, 0.330621,
		0.848428, 0.428301, 0.311014,
		38.349571, 32.984779, 25.941582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.173466, 36.150238, 21.125526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.358280, 36.123661, 21.479275>,  <42.469170, 36.107716, 21.691525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.358280, 36.123661, 21.479275>,  <42.173466, 36.150238, 21.125526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.358280, 36.123661, 21.479275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803927, 0.389675, 0.449283,
		-0.374470, -0.918552, 0.126625,
		0.462032, -0.066445, 0.884370,
		42.496891, 36.103729, 21.744585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.578690, 36.047085, 21.555243>,  <42.173466, 36.150238, 21.125526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.578690, 36.047085, 21.555243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.859776, 36.087330, 21.836971>,  <42.028427, 36.111477, 22.006008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.859776, 36.087330, 21.836971>,  <41.578690, 36.047085, 21.555243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.859776, 36.087330, 21.836971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707141, 0.207835, 0.675838,
		-0.078389, -0.972976, 0.217191,
		0.702714, 0.100607, 0.704324,
		42.070591, 36.117512, 22.048267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369873, 35.678699, 22.108980>,  <41.578690, 36.047085, 21.555243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.369873, 35.678699, 22.108980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.603371, 35.973740, 22.244743>,  <41.743469, 36.150764, 22.326200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.603371, 35.973740, 22.244743>,  <41.369873, 35.678699, 22.108980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.603371, 35.973740, 22.244743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725406, 0.285992, 0.626095,
		0.364740, -0.611683, 0.702004,
		0.583739, 0.737600, 0.339406,
		41.778492, 36.195019, 22.346565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.425053, 35.571049, 22.834976>,  <41.369873, 35.678699, 22.108980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.425053, 35.571049, 22.834976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.501320, 35.959015, 22.774441>,  <41.547081, 36.191795, 22.738119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.501320, 35.959015, 22.774441>,  <41.425053, 35.571049, 22.834976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.501320, 35.959015, 22.774441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649784, 0.240255, 0.721150,
		0.735817, -0.039161, 0.676047,
		0.190664, 0.969920, -0.151337,
		41.558517, 36.249992, 22.729040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430603, 35.744228, 23.492172>,  <41.425053, 35.571049, 22.834976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.430603, 35.744228, 23.492172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.397842, 36.074993, 23.269640>,  <41.378185, 36.273453, 23.136120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.397842, 36.074993, 23.269640>,  <41.430603, 35.744228, 23.492172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397842, 36.074993, 23.269640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494653, 0.450873, 0.742989,
		0.865223, 0.336045, 0.372107,
		-0.081905, 0.826915, -0.556331,
		41.373272, 36.323067, 23.102741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.710297, 36.307426, 23.874775>,  <41.430603, 35.744228, 23.492172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.710297, 36.307426, 23.874775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.438988, 36.445499, 23.615297>,  <41.276203, 36.528343, 23.459610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.438988, 36.445499, 23.615297>,  <41.710297, 36.307426, 23.874775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.438988, 36.445499, 23.615297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579911, 0.290715, 0.761044,
		0.451281, 0.892377, 0.002990,
		-0.678268, 0.345179, -0.648694,
		41.235508, 36.549053, 23.420689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.588448, 36.837524, 24.108168>,  <41.710297, 36.307426, 23.874775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.588448, 36.837524, 24.108168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.272564, 36.813126, 23.863993>,  <41.083035, 36.798485, 23.717487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.272564, 36.813126, 23.863993>,  <41.588448, 36.837524, 24.108168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272564, 36.813126, 23.863993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593937, 0.325152, 0.735877,
		0.153596, 0.943692, -0.293007,
		-0.789713, -0.060999, -0.610436,
		41.035648, 36.794827, 23.680862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188858, 37.508030, 24.229843>,  <41.588448, 36.837524, 24.108168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188858, 37.508030, 24.229843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.942127, 37.237350, 24.069044>,  <40.794090, 37.074944, 23.972565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.942127, 37.237350, 24.069044>,  <41.188858, 37.508030, 24.229843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.942127, 37.237350, 24.069044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715276, 0.268768, 0.645093,
		-0.328489, 0.685451, -0.649809,
		-0.616827, -0.676699, -0.401999,
		40.757080, 37.034340, 23.948444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591297, 37.910259, 23.991817>,  <41.188858, 37.508030, 24.229843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591297, 37.910259, 23.991817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.476612, 37.529030, 24.030689>,  <40.407803, 37.300293, 24.054012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.476612, 37.529030, 24.030689>,  <40.591297, 37.910259, 23.991817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.476612, 37.529030, 24.030689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759755, 0.287995, 0.582951,
		-0.583583, 0.093307, -0.806675,
		-0.286711, -0.953075, 0.097179,
		40.390598, 37.243107, 24.059843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882397, 38.068058, 23.891750>,  <40.591297, 37.910259, 23.991817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882397, 38.068058, 23.891750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.946453, 37.715534, 24.069584>,  <39.984886, 37.504021, 24.176283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.946453, 37.715534, 24.069584>,  <39.882397, 38.068058, 23.891750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946453, 37.715534, 24.069584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731261, 0.196612, 0.653148,
		-0.663034, -0.429699, -0.612980,
		0.160138, -0.881307, 0.444582,
		39.994495, 37.451141, 24.202959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219429, 37.856831, 23.968452>,  <39.882397, 38.068058, 23.891750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219429, 37.856831, 23.968452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.460163, 37.646210, 24.208632>,  <39.604603, 37.519836, 24.352739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.460163, 37.646210, 24.208632>,  <39.219429, 37.856831, 23.968452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460163, 37.646210, 24.208632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548478, 0.273978, 0.790005,
		-0.580487, -0.804786, -0.123912,
		0.601836, -0.526551, 0.600448,
		39.640713, 37.488243, 24.388765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771103, 37.286060, 24.322588>,  <39.219429, 37.856831, 23.968452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771103, 37.286060, 24.322588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.104618, 37.332932, 24.538389>,  <39.304729, 37.361053, 24.667870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.104618, 37.332932, 24.538389>,  <38.771103, 37.286060, 24.322588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104618, 37.332932, 24.538389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550572, 0.104288, 0.828248,
		0.040785, -0.987621, 0.151467,
		0.833791, 0.117173, 0.539502,
		39.354755, 37.368084, 24.700239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566578, 36.551109, 24.366407>,  <38.771103, 37.286060, 24.322588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566578, 36.551109, 24.366407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.301228, 36.251797, 24.366957>,  <38.142017, 36.072208, 24.367287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.301228, 36.251797, 24.366957>,  <38.566578, 36.551109, 24.366407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301228, 36.251797, 24.366957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451908, -0.402091, -0.796305,
		0.596415, -0.527630, 0.604893,
		-0.663377, -0.748284, 0.001373,
		38.102215, 36.027313, 24.367369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987759, 35.941101, 24.299641>,  <38.566578, 36.551109, 24.366407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987759, 35.941101, 24.299641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.623146, 35.824265, 24.183849>,  <38.404381, 35.754162, 24.114374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.623146, 35.824265, 24.183849>,  <38.987759, 35.941101, 24.299641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623146, 35.824265, 24.183849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403272, -0.497010, -0.768344,
		0.080557, -0.817105, 0.570832,
		-0.911527, -0.292096, -0.289478,
		38.349689, 35.736637, 24.097006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067974, 35.267784, 24.125484>,  <38.987759, 35.941101, 24.299641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067974, 35.267784, 24.125484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.742382, 35.406002, 23.938707>,  <38.547028, 35.488934, 23.826641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.742382, 35.406002, 23.938707>,  <39.067974, 35.267784, 24.125484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742382, 35.406002, 23.938707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223060, -0.556278, -0.800499,
		-0.536346, -0.755752, 0.375729,
		-0.813988, 0.345535, -0.466935,
		38.498188, 35.509666, 23.798626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726604, 34.671711, 23.788162>,  <39.067974, 35.267784, 24.125484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726604, 34.671711, 23.788162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.597347, 34.999195, 23.598307>,  <38.519791, 35.195686, 23.484392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.597347, 34.999195, 23.598307>,  <38.726604, 34.671711, 23.788162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597347, 34.999195, 23.598307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102964, -0.468154, -0.877627,
		-0.940732, -0.332472, 0.066984,
		-0.323145, 0.818715, -0.474640,
		38.500404, 35.244808, 23.455915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253803, 34.439774, 23.334112>,  <38.726604, 34.671711, 23.788162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253803, 34.439774, 23.334112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.364758, 34.792789, 23.182224>,  <38.431332, 35.004597, 23.091091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.364758, 34.792789, 23.182224>,  <38.253803, 34.439774, 23.334112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364758, 34.792789, 23.182224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156824, -0.431520, -0.888368,
		-0.947872, 0.186875, -0.258101,
		0.277390, 0.882535, -0.379719,
		38.447975, 35.057549, 23.068308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034370, 34.453716, 22.630516>,  <38.253803, 34.439774, 23.334112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034370, 34.453716, 22.630516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.288372, 34.762295, 22.614357>,  <38.440773, 34.947441, 22.604662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.288372, 34.762295, 22.614357>,  <38.034370, 34.453716, 22.630516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288372, 34.762295, 22.614357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235256, -0.242928, -0.941085,
		-0.735812, 0.588093, -0.335749,
		0.635008, 0.771448, -0.040397,
		38.478874, 34.993729, 22.602238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892296, 34.834702, 21.986303>,  <38.034370, 34.453716, 22.630516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892296, 34.834702, 21.986303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.270817, 34.916691, 22.086302>,  <38.497929, 34.965885, 22.146301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.270817, 34.916691, 22.086302>,  <37.892296, 34.834702, 21.986303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270817, 34.916691, 22.086302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288898, -0.189131, -0.938492,
		-0.145084, 0.960321, -0.238191,
		0.946302, 0.204974, 0.249995,
		38.554707, 34.978184, 22.161301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077190, 35.068886, 21.438803>,  <37.892296, 34.834702, 21.986303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077190, 35.068886, 21.438803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.437000, 35.000893, 21.599779>,  <38.652885, 34.960098, 21.696365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.437000, 35.000893, 21.599779>,  <38.077190, 35.068886, 21.438803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437000, 35.000893, 21.599779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376874, -0.163963, -0.911637,
		0.220949, 0.971711, -0.083426,
		0.899526, -0.169984, 0.402440,
		38.706860, 34.949898, 21.720510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566895, 35.542477, 21.109671>,  <38.077190, 35.068886, 21.438803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566895, 35.542477, 21.109671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.792679, 35.241848, 21.246216>,  <38.928150, 35.061470, 21.328142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.792679, 35.241848, 21.246216>,  <38.566895, 35.542477, 21.109671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792679, 35.241848, 21.246216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332389, -0.171586, -0.927403,
		0.755579, 0.636949, 0.152958,
		0.564463, -0.751568, 0.341362,
		38.962017, 35.016376, 21.348625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275356, 35.742569, 20.857878>,  <38.566895, 35.542477, 21.109671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275356, 35.742569, 20.857878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.287178, 35.359158, 20.971256>,  <39.294273, 35.129108, 21.039284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.287178, 35.359158, 20.971256>,  <39.275356, 35.742569, 20.857878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287178, 35.359158, 20.971256> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397155, -0.248962, -0.883338,
		0.917275, 0.138681, 0.373327,
		0.029558, -0.958533, 0.283445,
		39.296047, 35.071598, 21.056290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877541, 35.478416, 20.580997>,  <39.275356, 35.742569, 20.857878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877541, 35.478416, 20.580997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.677197, 35.142281, 20.663906>,  <39.556992, 34.940598, 20.713652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.677197, 35.142281, 20.663906>,  <39.877541, 35.478416, 20.580997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677197, 35.142281, 20.663906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336603, -0.409739, -0.847828,
		0.797394, -0.354875, 0.488084,
		-0.500860, -0.840344, 0.207271,
		39.526939, 34.890179, 20.726088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377724, 34.812531, 20.494413>,  <39.877541, 35.478416, 20.580997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377724, 34.812531, 20.494413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.995338, 34.700741, 20.458586>,  <39.765907, 34.633667, 20.437088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.995338, 34.700741, 20.458586>,  <40.377724, 34.812531, 20.494413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.995338, 34.700741, 20.458586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216527, -0.465626, -0.858084,
		0.198110, -0.839693, 0.505637,
		-0.955964, -0.279479, -0.089571,
		39.708549, 34.616898, 20.431715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493889, 34.119274, 20.432335>,  <40.377724, 34.812531, 20.494413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.493889, 34.119274, 20.432335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.114235, 34.180943, 20.322521>,  <39.886440, 34.217945, 20.256632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.114235, 34.180943, 20.322521>,  <40.493889, 34.119274, 20.432335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114235, 34.180943, 20.322521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137954, -0.580152, -0.802741,
		-0.283034, -0.799784, 0.529375,
		-0.949137, 0.154173, -0.274536,
		39.829494, 34.227196, 20.240160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127934, 33.506813, 20.491404>,  <40.493889, 34.119274, 20.432335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127934, 33.506813, 20.491404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.981369, 33.750824, 20.210373>,  <39.893433, 33.897232, 20.041756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.981369, 33.750824, 20.210373>,  <40.127934, 33.506813, 20.491404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981369, 33.750824, 20.210373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355144, -0.606230, -0.711588,
		-0.860010, -0.510247, 0.005481,
		-0.366409, 0.610027, -0.702575,
		39.871445, 33.933830, 19.999599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775768, 32.957642, 21.088659>,  <40.127934, 33.506813, 20.491404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775768, 32.957642, 21.088659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.888611, 32.588631, 21.194000>,  <39.956318, 32.367222, 21.257206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.888611, 32.588631, 21.194000>,  <39.775768, 32.957642, 21.088659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888611, 32.588631, 21.194000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375505, 0.146427, 0.915181,
		-0.882843, -0.357070, -0.305106,
		0.282108, -0.922529, 0.263353,
		39.973244, 32.311871, 21.273006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272270, 32.841324, 21.434196>,  <39.775768, 32.957642, 21.088659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272270, 32.841324, 21.434196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.549992, 32.576321, 21.546646>,  <39.716625, 32.417320, 21.614117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.549992, 32.576321, 21.546646>,  <39.272270, 32.841324, 21.434196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.549992, 32.576321, 21.546646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337387, 0.045411, 0.940270,
		-0.635700, -0.747680, -0.191991,
		0.694302, -0.662505, 0.281125,
		39.758282, 32.377571, 21.630983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955647, 32.274223, 21.731581>,  <39.272270, 32.841324, 21.434196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955647, 32.274223, 21.731581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.325745, 32.299084, 21.881277>,  <39.547802, 32.313999, 21.971094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.325745, 32.299084, 21.881277>,  <38.955647, 32.274223, 21.731581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325745, 32.299084, 21.881277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372883, -0.032607, 0.927305,
		0.069839, -0.997534, -0.006993,
		0.925246, 0.062154, 0.374241,
		39.603317, 32.317730, 21.993549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974403, 31.968401, 22.498552>,  <38.955647, 32.274223, 21.731581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974403, 31.968401, 22.498552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.318382, 32.172375, 22.490032>,  <39.524769, 32.294758, 22.484921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.318382, 32.172375, 22.490032>,  <38.974403, 31.968401, 22.498552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318382, 32.172375, 22.490032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118298, 0.239748, 0.963601,
		0.496479, -0.826128, 0.266496,
		0.859950, 0.509934, -0.021301,
		39.576366, 32.325356, 22.483643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407261, 31.760485, 23.036127>,  <38.974403, 31.968401, 22.498552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407261, 31.760485, 23.036127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.557194, 32.117176, 22.934683>,  <39.647152, 32.331192, 22.873817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.557194, 32.117176, 22.934683>,  <39.407261, 31.760485, 23.036127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557194, 32.117176, 22.934683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053932, 0.252116, 0.966193,
		0.925523, -0.375838, 0.046409,
		0.374833, 0.891731, -0.253608,
		39.669643, 32.384697, 22.858601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966236, 31.790590, 23.441006>,  <39.407261, 31.760485, 23.036127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966236, 31.790590, 23.441006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.856304, 32.158722, 23.329678>,  <39.790344, 32.379601, 23.262880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.856304, 32.158722, 23.329678>,  <39.966236, 31.790590, 23.441006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856304, 32.158722, 23.329678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131455, 0.322715, 0.937323,
		0.952464, 0.221019, -0.209674,
		-0.274831, 0.920329, -0.278320,
		39.773853, 32.434822, 23.246181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292492, 32.147133, 23.944294>,  <39.966236, 31.790590, 23.441006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292492, 32.147133, 23.944294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.049816, 32.413776, 23.771059>,  <39.904209, 32.573761, 23.667118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.049816, 32.413776, 23.771059>,  <40.292492, 32.147133, 23.944294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049816, 32.413776, 23.771059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049541, 0.512041, 0.857531,
		0.793392, 0.541713, -0.277627,
		-0.606691, 0.666605, -0.433086,
		39.867809, 32.613758, 23.641132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029789, 32.417702, 23.832891>,  <40.292492, 32.147133, 23.944294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.029789, 32.417702, 23.832891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.346581, 32.353893, 24.068628>,  <41.536655, 32.315609, 24.210070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.346581, 32.353893, 24.068628>,  <41.029789, 32.417702, 23.832891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.346581, 32.353893, 24.068628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592415, -0.032728, -0.804968,
		0.147700, 0.986651, 0.068585,
		0.791978, -0.159525, 0.589341,
		41.584175, 32.306034, 24.245430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.616215, 32.992336, 23.631842>,  <41.029789, 32.417702, 23.832891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.616215, 32.992336, 23.631842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.772282, 32.679989, 23.826984>,  <41.865921, 32.492580, 23.944071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.772282, 32.679989, 23.826984>,  <41.616215, 32.992336, 23.631842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.772282, 32.679989, 23.826984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591282, -0.193662, -0.782867,
		0.705799, 0.593913, 0.386154,
		0.390172, -0.780873, 0.487857,
		41.889332, 32.445728, 23.973341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.352432, 33.110569, 23.643719>,  <41.616215, 32.992336, 23.631842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.352432, 33.110569, 23.643719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.298222, 32.718876, 23.704027>,  <42.265694, 32.483860, 23.740211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.298222, 32.718876, 23.704027>,  <42.352432, 33.110569, 23.643719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.298222, 32.718876, 23.704027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703435, -0.202265, -0.681372,
		0.697719, 0.013713, 0.716240,
		-0.135527, -0.979235, 0.150771,
		42.257565, 32.425106, 23.749258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.031841, 32.879501, 23.736193>,  <42.352432, 33.110569, 23.643719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.031841, 32.879501, 23.736193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.811092, 32.563946, 23.628057>,  <42.678642, 32.374611, 23.563177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.811092, 32.563946, 23.628057>,  <43.031841, 32.879501, 23.736193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.811092, 32.563946, 23.628057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691494, -0.251707, -0.677111,
		0.466123, -0.560616, 0.684426,
		-0.551875, -0.788893, -0.270336,
		42.645531, 32.327278, 23.546957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.588959, 32.399982, 23.546644>,  <43.031841, 32.879501, 23.736193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.588959, 32.399982, 23.546644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.262955, 32.218410, 23.402584>,  <43.067352, 32.109467, 23.316149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.262955, 32.218410, 23.402584>,  <43.588959, 32.399982, 23.546644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.262955, 32.218410, 23.402584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559722, -0.455938, -0.691977,
		0.149902, -0.765552, 0.625668,
		-0.815010, -0.453929, -0.360150,
		43.018452, 32.082233, 23.294538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.803257, 31.707870, 23.587168>,  <43.588959, 32.399982, 23.546644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.803257, 31.707870, 23.587168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.511013, 31.789503, 23.326536>,  <43.335667, 31.838482, 23.170156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.511013, 31.789503, 23.326536>,  <43.803257, 31.707870, 23.587168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.511013, 31.789503, 23.326536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539361, -0.412659, -0.734032,
		-0.418683, -0.887729, 0.191420,
		-0.730613, 0.204082, -0.651579,
		43.291828, 31.850727, 23.131062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.701439, 31.113371, 23.196712>,  <43.803257, 31.707870, 23.587168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.701439, 31.113371, 23.196712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.505554, 31.384222, 22.977011>,  <43.388023, 31.546732, 22.845190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.505554, 31.384222, 22.977011>,  <43.701439, 31.113371, 23.196712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.505554, 31.384222, 22.977011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553816, -0.244971, -0.795787,
		-0.673399, -0.693894, -0.255037,
		-0.489715, 0.677126, -0.549253,
		43.358639, 31.587360, 22.812235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.457569, 30.833559, 22.574360>,  <43.701439, 31.113371, 23.196712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.457569, 30.833559, 22.574360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.454029, 31.226297, 22.498571>,  <43.451904, 31.461941, 22.453098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.454029, 31.226297, 22.498571>,  <43.457569, 30.833559, 22.574360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.454029, 31.226297, 22.498571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524562, -0.156757, -0.836817,
		-0.851326, -0.106798, -0.513651,
		-0.008852, 0.981846, -0.189473,
		43.451374, 31.520851, 22.441729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.185993, 31.008835, 21.807850>,  <43.457569, 30.833559, 22.574360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.185993, 31.008835, 21.807850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.429146, 31.304773, 21.923162>,  <43.575039, 31.482336, 21.992350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.429146, 31.304773, 21.923162>,  <43.185993, 31.008835, 21.807850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.429146, 31.304773, 21.923162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545318, -0.125093, -0.828843,
		-0.577152, 0.661046, -0.479493,
		0.607884, 0.739844, 0.288282,
		43.611511, 31.526726, 22.009647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.933323, 34.851715, 36.133011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.127861, 35.200863, 36.117168>,  <37.244583, 35.410351, 36.107662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.127861, 35.200863, 36.117168>,  <36.933323, 34.851715, 36.133011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127861, 35.200863, 36.117168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008160, -0.040789, -0.999134,
		-0.873728, 0.486248, -0.012715,
		0.486346, 0.872868, -0.039607,
		37.273766, 35.462723, 36.105286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608421, 35.304943, 35.619106>,  <36.933323, 34.851715, 36.133011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608421, 35.304943, 35.619106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.975327, 35.451603, 35.681324>,  <37.195469, 35.539600, 35.718655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.975327, 35.451603, 35.681324>,  <36.608421, 35.304943, 35.619106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975327, 35.451603, 35.681324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137619, 0.074700, -0.987664,
		-0.373745, 0.927356, 0.018062,
		0.917265, 0.366649, 0.155541,
		37.250507, 35.561596, 35.727985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671074, 35.955383, 35.063862>,  <36.608421, 35.304943, 35.619106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671074, 35.955383, 35.063862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.040085, 35.829361, 35.153011>,  <37.261494, 35.753746, 35.206501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.040085, 35.829361, 35.153011>,  <36.671074, 35.955383, 35.063862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040085, 35.829361, 35.153011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268644, 0.109645, -0.956979,
		0.277067, 0.942717, 0.185789,
		0.922531, -0.315058, 0.222877,
		37.316845, 35.734844, 35.219875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005383, 36.280788, 34.527760>,  <36.671074, 35.955383, 35.063862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005383, 36.280788, 34.527760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.261856, 36.014103, 34.679745>,  <37.415741, 35.854092, 34.770935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.261856, 36.014103, 34.679745>,  <37.005383, 36.280788, 34.527760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261856, 36.014103, 34.679745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384910, -0.148925, -0.910860,
		0.663869, 0.730282, 0.161137,
		0.641188, -0.666715, 0.379960,
		37.454212, 35.814087, 34.793732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621006, 36.410110, 34.269115>,  <37.005383, 36.280788, 34.527760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621006, 36.410110, 34.269115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.680645, 36.036961, 34.400272>,  <37.716427, 35.813072, 34.478966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.680645, 36.036961, 34.400272>,  <37.621006, 36.410110, 34.269115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680645, 36.036961, 34.400272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535705, -0.202519, -0.819760,
		0.831138, 0.297880, 0.469550,
		0.149098, -0.932874, 0.327897,
		37.725376, 35.757099, 34.498642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361008, 36.253838, 34.217228>,  <37.621006, 36.410110, 34.269115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361008, 36.253838, 34.217228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.137821, 35.921974, 34.209785>,  <38.003910, 35.722858, 34.205318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.137821, 35.921974, 34.209785>,  <38.361008, 36.253838, 34.217228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137821, 35.921974, 34.209785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427268, -0.267982, -0.863497,
		0.711419, -0.489752, 0.504010,
		-0.557966, -0.829656, -0.018608,
		37.970432, 35.673077, 34.204205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816338, 35.767467, 33.962761>,  <38.361008, 36.253838, 34.217228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816338, 35.767467, 33.962761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.462936, 35.586224, 33.915234>,  <38.250896, 35.477478, 33.886719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.462936, 35.586224, 33.915234>,  <38.816338, 35.767467, 33.962761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462936, 35.586224, 33.915234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356135, -0.484968, -0.798732,
		0.304289, -0.747997, 0.589838,
		-0.883502, -0.453107, -0.118817,
		38.197887, 35.450291, 33.879589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969017, 35.012554, 33.973488>,  <38.816338, 35.767467, 33.962761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969017, 35.012554, 33.973488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.630169, 35.079655, 33.771797>,  <38.426861, 35.119915, 33.650784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.630169, 35.079655, 33.771797>,  <38.969017, 35.012554, 33.973488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630169, 35.079655, 33.771797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314012, -0.607464, -0.729646,
		-0.428701, -0.776432, 0.461919,
		-0.847120, 0.167752, -0.504229,
		38.376034, 35.129982, 33.620529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823494, 34.373524, 33.585709>,  <38.969017, 35.012554, 33.973488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823494, 34.373524, 33.585709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.624168, 34.657883, 33.387192>,  <38.504574, 34.828499, 33.268082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.624168, 34.657883, 33.387192>,  <38.823494, 34.373524, 33.585709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624168, 34.657883, 33.387192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077671, -0.533524, -0.842211,
		-0.863512, -0.458231, 0.210645,
		-0.498311, 0.710898, -0.496296,
		38.474674, 34.871151, 33.238304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488430, 34.049072, 33.066238>,  <38.823494, 34.373524, 33.585709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488430, 34.049072, 33.066238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.440479, 34.419876, 32.924088>,  <38.411709, 34.642357, 32.838799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.440479, 34.419876, 32.924088>,  <38.488430, 34.049072, 33.066238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440479, 34.419876, 32.924088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041646, -0.352945, -0.934717,
		-0.991915, -0.126847, 0.003702,
		-0.119872, 0.927006, -0.355374,
		38.404518, 34.697979, 32.817474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897602, 33.990658, 32.581867>,  <38.488430, 34.049072, 33.066238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897602, 33.990658, 32.581867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.129230, 34.302128, 32.485260>,  <38.268208, 34.489010, 32.427296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.129230, 34.302128, 32.485260>,  <37.897602, 33.990658, 32.581867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129230, 34.302128, 32.485260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152204, -0.394291, -0.906294,
		-0.800942, 0.488051, -0.346841,
		0.579074, 0.778679, -0.241521,
		38.302952, 34.535732, 32.412804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710869, 34.095261, 31.907103>,  <37.897602, 33.990658, 32.581867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710869, 34.095261, 31.907103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.063656, 34.272987, 31.969988>,  <38.275330, 34.379623, 32.007717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.063656, 34.272987, 31.969988>,  <37.710869, 34.095261, 31.907103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063656, 34.272987, 31.969988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261316, -0.183397, -0.947671,
		-0.392234, 0.876897, -0.277857,
		0.881967, 0.444317, 0.157213,
		38.328247, 34.406284, 32.017151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119991, 34.612576, 31.676432>,  <37.710869, 34.095261, 31.907103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119991, 34.612576, 31.676432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.781853, 34.552994, 31.471218>,  <36.578972, 34.517242, 31.348089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.781853, 34.552994, 31.471218>,  <37.119991, 34.612576, 31.676432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781853, 34.552994, 31.471218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528845, 0.369263, 0.764178,
		0.075614, 0.917309, -0.390930,
		-0.845343, -0.148959, -0.513036,
		36.528252, 34.508305, 31.317307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741615, 35.085556, 31.932812>,  <37.119991, 34.612576, 31.676432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741615, 35.085556, 31.932812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.439808, 34.900833, 31.746288>,  <36.258724, 34.790001, 31.634375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.439808, 34.900833, 31.746288>,  <36.741615, 35.085556, 31.932812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439808, 34.900833, 31.746288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645041, 0.390888, 0.656604,
		-0.120949, 0.796205, -0.592814,
		-0.754515, -0.461805, -0.466308,
		36.213455, 34.762291, 31.606396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183727, 35.590477, 31.806864>,  <36.741615, 35.085556, 31.932812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183727, 35.590477, 31.806864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.999962, 35.235905, 31.784302>,  <35.889702, 35.023163, 31.770765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.999962, 35.235905, 31.784302>,  <36.183727, 35.590477, 31.806864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999962, 35.235905, 31.784302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703278, 0.324238, 0.632669,
		-0.542528, 0.330326, -0.772365,
		-0.459417, -0.886428, -0.056403,
		35.862137, 34.969975, 31.767382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463058, 35.714668, 31.636196>,  <36.183727, 35.590477, 31.806864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463058, 35.714668, 31.636196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.522495, 35.378521, 31.844696>,  <35.558155, 35.176834, 31.969795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.522495, 35.378521, 31.844696>,  <35.463058, 35.714668, 31.636196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522495, 35.378521, 31.844696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701878, 0.281693, 0.654230,
		-0.696627, -0.463064, -0.547981,
		0.148588, -0.840369, 0.521249,
		35.567070, 35.126411, 32.001072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873047, 35.485233, 31.793087>,  <35.463058, 35.714668, 31.636196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873047, 35.485233, 31.793087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.086163, 35.265789, 32.050819>,  <35.214031, 35.134121, 32.205460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.086163, 35.265789, 32.050819>,  <34.873047, 35.485233, 31.793087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086163, 35.265789, 32.050819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665781, 0.198254, 0.719327,
		-0.522373, -0.812231, -0.259628,
		0.532787, -0.548613, 0.644330,
		35.245998, 35.101204, 32.244118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423126, 34.957291, 32.236290>,  <34.873047, 35.485233, 31.793087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423126, 34.957291, 32.236290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.748219, 34.993092, 32.466579>,  <34.943275, 35.014572, 32.604752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.748219, 34.993092, 32.466579>,  <34.423126, 34.957291, 32.236290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748219, 34.993092, 32.466579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580201, 0.214637, 0.785683,
		-0.053250, -0.972584, 0.226373,
		0.812731, 0.089504, 0.575723,
		34.992039, 35.019943, 32.639297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303612, 34.641750, 32.882092>,  <34.423126, 34.957291, 32.236290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303612, 34.641750, 32.882092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.613438, 34.880844, 32.964813>,  <34.799332, 35.024300, 33.014446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.613438, 34.880844, 32.964813>,  <34.303612, 34.641750, 32.882092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613438, 34.880844, 32.964813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448984, 0.289321, 0.845403,
		0.445497, -0.747666, 0.492471,
		0.774562, 0.597736, 0.206799,
		34.845806, 35.060165, 33.026852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507500, 34.397522, 33.511307>,  <34.303612, 34.641750, 32.882092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507500, 34.397522, 33.511307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.607872, 34.776814, 33.433437>,  <34.668095, 35.004387, 33.386715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.607872, 34.776814, 33.433437>,  <34.507500, 34.397522, 33.511307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607872, 34.776814, 33.433437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472136, 0.295454, 0.830539,
		0.845058, -0.116490, 0.521830,
		0.250926, 0.948229, -0.194677,
		34.683151, 35.061283, 33.375034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743755, 34.727943, 34.136089>,  <34.507500, 34.397522, 33.511307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743755, 34.727943, 34.136089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.654068, 35.033066, 33.893486>,  <34.600254, 35.216141, 33.747925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.654068, 35.033066, 33.893486>,  <34.743755, 34.727943, 34.136089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654068, 35.033066, 33.893486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533807, 0.424554, 0.731303,
		0.815337, 0.487732, 0.311997,
		-0.224220, 0.762805, -0.606510,
		34.586803, 35.261906, 33.711533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855659, 35.301468, 34.536190>,  <34.743755, 34.727943, 34.136089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855659, 35.301468, 34.536190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.644222, 35.462032, 34.237003>,  <34.517361, 35.558372, 34.057491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.644222, 35.462032, 34.237003>,  <34.855659, 35.301468, 34.536190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644222, 35.462032, 34.237003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542925, 0.517470, 0.661405,
		0.652548, 0.755705, -0.055595,
		-0.528597, 0.401414, -0.747965,
		34.485641, 35.582458, 34.012615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897049, 36.039165, 34.688633>,  <34.855659, 35.301468, 34.536190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897049, 36.039165, 34.688633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.584476, 35.952515, 34.454559>,  <34.396935, 35.900524, 34.314114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.584476, 35.952515, 34.454559>,  <34.897049, 36.039165, 34.688633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584476, 35.952515, 34.454559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586608, 0.574771, 0.570551,
		0.212748, 0.789119, -0.576220,
		-0.781428, -0.216632, -0.585185,
		34.350048, 35.887524, 34.279003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551975, 36.649086, 34.636108>,  <34.897049, 36.039165, 34.688633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551975, 36.649086, 34.636108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.282688, 36.377068, 34.519958>,  <34.121117, 36.213856, 34.450268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.282688, 36.377068, 34.519958>,  <34.551975, 36.649086, 34.636108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282688, 36.377068, 34.519958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725005, 0.529809, 0.440080,
		-0.145435, 0.506788, -0.849714,
		-0.673214, -0.680050, -0.290371,
		34.080723, 36.173054, 34.432846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934925, 36.996075, 34.425571>,  <34.551975, 36.649086, 34.636108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934925, 36.996075, 34.425571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.830757, 36.624493, 34.530811>,  <33.768257, 36.401543, 34.593956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.830757, 36.624493, 34.530811>,  <33.934925, 36.996075, 34.425571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830757, 36.624493, 34.530811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786886, 0.362115, 0.499684,
		-0.559457, -0.076901, -0.825284,
		-0.260422, -0.928956, 0.263100,
		33.752632, 36.345806, 34.609741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187050, 36.993389, 34.230564>,  <33.934925, 36.996075, 34.425571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187050, 36.993389, 34.230564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.243832, 36.699970, 34.496422>,  <33.277901, 36.523918, 34.655937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.243832, 36.699970, 34.496422>,  <33.187050, 36.993389, 34.230564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243832, 36.699970, 34.496422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827207, 0.280869, 0.486663,
		-0.543670, -0.618886, -0.566925,
		0.141957, -0.733548, 0.664647,
		33.286419, 36.479904, 34.695816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262447, 36.178020, 34.090580>,  <33.187050, 36.993389, 34.230564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262447, 36.178020, 34.090580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.003830, 36.480804, 34.052635>,  <32.848660, 36.662476, 34.029869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.003830, 36.480804, 34.052635>,  <33.262447, 36.178020, 34.090580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003830, 36.480804, 34.052635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274459, -0.346819, -0.896877,
		-0.711797, -0.553834, 0.431987,
		-0.646542, 0.756958, -0.094860,
		32.809868, 36.707893, 34.024178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764164, 35.846405, 33.681541>,  <33.262447, 36.178020, 34.090580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764164, 35.846405, 33.681541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.672173, 36.235577, 33.672398>,  <32.616978, 36.469078, 33.666912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.672173, 36.235577, 33.672398>,  <32.764164, 35.846405, 33.681541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672173, 36.235577, 33.672398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240233, -0.079518, -0.967453,
		-0.943079, -0.217002, 0.252017,
		-0.229979, 0.972927, -0.022861,
		32.603180, 36.527454, 33.665539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.249622, 35.878529, 33.205402>,  <32.764164, 35.846405, 33.681541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.249622, 35.878529, 33.205402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.458599, 36.219589, 33.202530>,  <32.583984, 36.424225, 33.200806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.458599, 36.219589, 33.202530>,  <32.249622, 35.878529, 33.205402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458599, 36.219589, 33.202530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051461, -0.039940, -0.997876,
		-0.851123, 0.520959, -0.064744,
		0.522438, 0.852647, -0.007185,
		32.615330, 36.475384, 33.200375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847855, 36.351437, 32.813759>,  <32.249622, 35.878529, 33.205402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847855, 36.351437, 32.813759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.224064, 36.483772, 32.782867>,  <32.449791, 36.563171, 32.764332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.224064, 36.483772, 32.782867>,  <31.847855, 36.351437, 32.813759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224064, 36.483772, 32.782867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071789, -0.028660, -0.997008,
		-0.332059, 0.943253, -0.003205,
		0.940523, 0.330836, -0.077232,
		32.506222, 36.583023, 32.759697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.761330, 36.690804, 32.208668>,  <31.847855, 36.351437, 32.813759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.761330, 36.690804, 32.208668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.154861, 36.661171, 32.273895>,  <32.390980, 36.643391, 32.313030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.154861, 36.661171, 32.273895>,  <31.761330, 36.690804, 32.208668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154861, 36.661171, 32.273895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132220, -0.313773, -0.940247,
		0.120818, 0.946604, -0.298905,
		0.983830, -0.074077, 0.163069,
		32.450012, 36.638947, 32.322815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128529, 37.118881, 31.654434>,  <31.761330, 36.690804, 32.208668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128529, 37.118881, 31.654434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.414959, 36.882576, 31.803152>,  <32.586819, 36.740795, 31.892384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.414959, 36.882576, 31.803152>,  <32.128529, 37.118881, 31.654434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414959, 36.882576, 31.803152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357122, -0.147588, -0.922324,
		0.599745, 0.793234, 0.105289,
		0.716080, -0.590760, 0.371796,
		32.629784, 36.705349, 31.914690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692379, 37.288616, 31.290682>,  <32.128529, 37.118881, 31.654434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692379, 37.288616, 31.290682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.798691, 36.923149, 31.413689>,  <32.862480, 36.703869, 31.487494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.798691, 36.923149, 31.413689>,  <32.692379, 37.288616, 31.290682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798691, 36.923149, 31.413689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341495, -0.209075, -0.916335,
		0.901522, 0.348561, 0.256445,
		0.265782, -0.913670, 0.307517,
		32.878426, 36.649048, 31.505943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417213, 37.166683, 30.955795>,  <32.692379, 37.288616, 31.290682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417213, 37.166683, 30.955795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.295696, 36.802803, 31.069038>,  <33.222786, 36.584473, 31.136984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.295696, 36.802803, 31.069038>,  <33.417213, 37.166683, 30.955795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295696, 36.802803, 31.069038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431723, -0.396336, -0.810267,
		0.849308, -0.123931, 0.513144,
		-0.303795, -0.909703, 0.283108,
		33.204559, 36.529892, 31.153971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039585, 36.667038, 30.956938>,  <33.417213, 37.166683, 30.955795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039585, 36.667038, 30.956938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.708961, 36.445099, 30.919088>,  <33.510590, 36.311935, 30.896379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.708961, 36.445099, 30.919088>,  <34.039585, 36.667038, 30.956938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708961, 36.445099, 30.919088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386936, -0.438042, -0.811418,
		0.408761, -0.707296, 0.576755,
		-0.826556, -0.554843, -0.094624,
		33.460995, 36.278645, 30.890701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248508, 35.967133, 30.836073>,  <34.039585, 36.667038, 30.956938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248508, 35.967133, 30.836073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.867477, 35.965569, 30.714363>,  <33.638859, 35.964630, 30.641336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.867477, 35.965569, 30.714363>,  <34.248508, 35.967133, 30.836073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867477, 35.965569, 30.714363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278982, -0.410532, -0.868120,
		-0.121524, -0.911838, 0.392153,
		-0.952576, -0.003906, -0.304276,
		33.581703, 35.964397, 30.623079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216213, 35.378490, 30.576448>,  <34.248508, 35.967133, 30.836073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216213, 35.378490, 30.576448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.896412, 35.562534, 30.422001>,  <33.704529, 35.672962, 30.329332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.896412, 35.562534, 30.422001>,  <34.216213, 35.378490, 30.576448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896412, 35.562534, 30.422001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282919, -0.278592, -0.917792,
		-0.529858, -0.843020, 0.092561,
		-0.799505, 0.460112, -0.386121,
		33.656559, 35.700569, 30.306164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983795, 34.895412, 30.079468>,  <34.216213, 35.378490, 30.576448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983795, 34.895412, 30.079468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.818428, 35.246719, 29.983360>,  <33.719208, 35.457504, 29.925695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.818428, 35.246719, 29.983360>,  <33.983795, 34.895412, 30.079468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818428, 35.246719, 29.983360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243962, -0.147387, -0.958519,
		-0.877251, -0.454884, -0.153332,
		-0.413416, 0.878270, -0.240270,
		33.694405, 35.510201, 29.911280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.622681, 34.834183, 29.448597>,  <33.983795, 34.895412, 30.079468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.622681, 34.834183, 29.448597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.702953, 35.220821, 29.512375>,  <33.751118, 35.452805, 29.550642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.702953, 35.220821, 29.512375>,  <33.622681, 34.834183, 29.448597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702953, 35.220821, 29.512375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349714, 0.081351, -0.933318,
		-0.915111, 0.243059, -0.321706,
		0.200680, 0.966594, 0.159447,
		33.763157, 35.510799, 29.560209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408012, 35.103661, 28.823833>,  <33.622681, 34.834183, 29.448597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408012, 35.103661, 28.823833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.626919, 35.395042, 28.988688>,  <33.758263, 35.569870, 29.087601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.626919, 35.395042, 28.988688>,  <33.408012, 35.103661, 28.823833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626919, 35.395042, 28.988688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451867, 0.157327, -0.878103,
		-0.704497, 0.666785, -0.243065,
		0.547266, 0.728454, 0.412135,
		33.791100, 35.613579, 29.112328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317886, 35.711842, 28.312630>,  <33.408012, 35.103661, 28.823833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.317886, 35.711842, 28.312630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.659779, 35.720715, 28.520069>,  <33.864914, 35.726040, 28.644533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.659779, 35.720715, 28.520069>,  <33.317886, 35.711842, 28.312630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659779, 35.720715, 28.520069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515772, 0.076191, -0.853331,
		-0.058442, 0.996847, 0.053681,
		0.854730, 0.022183, 0.518598,
		33.916199, 35.727371, 28.675648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634365, 36.236156, 28.017115>,  <33.317886, 35.711842, 28.312630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634365, 36.236156, 28.017115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.939590, 36.036102, 28.180870>,  <34.122726, 35.916069, 28.279123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.939590, 36.036102, 28.180870>,  <33.634365, 36.236156, 28.017115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939590, 36.036102, 28.180870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589283, 0.278185, -0.758524,
		0.265477, 0.820049, 0.506993,
		0.763065, -0.500133, 0.409390,
		34.168510, 35.886063, 28.303686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201889, 36.671345, 27.895863>,  <33.634365, 36.236156, 28.017115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201889, 36.671345, 27.895863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.372276, 36.322979, 27.993891>,  <34.474510, 36.113960, 28.052708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.372276, 36.322979, 27.993891>,  <34.201889, 36.671345, 27.895863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372276, 36.322979, 27.993891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742733, 0.181945, -0.644393,
		0.516621, 0.456515, 0.724359,
		0.425969, -0.870913, 0.245072,
		34.500069, 36.061707, 28.067413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993347, 36.841953, 28.025087>,  <34.201889, 36.671345, 27.895863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993347, 36.841953, 28.025087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.944370, 36.459301, 27.919365>,  <34.914986, 36.229710, 27.855930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.944370, 36.459301, 27.919365>,  <34.993347, 36.841953, 28.025087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944370, 36.459301, 27.919365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809448, 0.057843, -0.584335,
		0.574284, -0.285489, 0.767264,
		-0.122440, -0.956635, -0.264307,
		34.907639, 36.172310, 27.840073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784687, 36.578804, 28.012461>,  <34.993347, 36.841953, 28.025087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784687, 36.578804, 28.012461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.552479, 36.335674, 27.795740>,  <35.413155, 36.189796, 27.665709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.552479, 36.335674, 27.795740>,  <35.784687, 36.578804, 28.012461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552479, 36.335674, 27.795740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674596, 0.013598, -0.738062,
		0.455978, -0.793957, 0.402140,
		-0.580521, -0.607822, -0.541800,
		35.378323, 36.153328, 27.633200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296204, 36.005478, 27.796743>,  <35.784687, 36.578804, 28.012461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296204, 36.005478, 27.796743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.990150, 35.984879, 27.540018>,  <35.806519, 35.972519, 27.385983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.990150, 35.984879, 27.540018>,  <36.296204, 36.005478, 27.796743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990150, 35.984879, 27.540018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636844, -0.207448, -0.742560,
		-0.094899, -0.976889, 0.191524,
		-0.765130, -0.051503, -0.641812,
		35.760612, 35.969429, 27.347475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466961, 35.473984, 27.268847>,  <36.296204, 36.005478, 27.796743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466961, 35.473984, 27.268847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.168346, 35.679085, 27.099247>,  <35.989178, 35.802143, 26.997488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.168346, 35.679085, 27.099247>,  <36.466961, 35.473984, 27.268847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168346, 35.679085, 27.099247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344121, -0.247850, -0.905622,
		-0.569445, -0.821984, 0.008580,
		-0.746534, 0.512750, -0.423999,
		35.944386, 35.832909, 26.972048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244793, 35.013206, 26.662148>,  <36.466961, 35.473984, 27.268847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244793, 35.013206, 26.662148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.117290, 35.385269, 26.589254>,  <36.040791, 35.608505, 26.545519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.117290, 35.385269, 26.589254>,  <36.244793, 35.013206, 26.662148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117290, 35.385269, 26.589254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488356, -0.003606, -0.872637,
		-0.812344, -0.367153, -0.453097,
		-0.318757, 0.930154, -0.182231,
		36.021664, 35.664314, 26.534586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890556, 35.024284, 25.991171>,  <36.244793, 35.013206, 26.662148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890556, 35.024284, 25.991171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.009819, 35.392551, 26.091942>,  <36.081379, 35.613510, 26.152405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.009819, 35.392551, 26.091942>,  <35.890556, 35.024284, 25.991171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009819, 35.392551, 26.091942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628082, 0.009509, -0.778089,
		-0.718758, 0.390228, -0.575421,
		0.298161, 0.920669, 0.251930,
		36.099266, 35.668751, 26.167521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144806, 35.197357, 25.407879>,  <35.890556, 35.024284, 25.991171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144806, 35.197357, 25.407879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.308865, 35.484161, 25.633329>,  <36.407299, 35.656242, 25.768599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.308865, 35.484161, 25.633329>,  <36.144806, 35.197357, 25.407879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308865, 35.484161, 25.633329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636890, 0.217170, -0.739735,
		-0.652801, 0.662368, -0.367585,
		0.410149, 0.717012, 0.563624,
		36.431908, 35.699265, 25.802416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227100, 35.852276, 24.967836>,  <36.144806, 35.197357, 25.407879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227100, 35.852276, 24.967836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.507404, 35.893448, 25.250210>,  <36.675587, 35.918152, 25.419634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.507404, 35.893448, 25.250210>,  <36.227100, 35.852276, 24.967836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507404, 35.893448, 25.250210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710694, -0.014613, -0.703349,
		-0.062080, 0.994581, -0.083392,
		0.700757, 0.102930, 0.705936,
		36.717632, 35.924328, 25.461990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652653, 36.326218, 24.657642>,  <36.227100, 35.852276, 24.967836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652653, 36.326218, 24.657642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.868835, 36.193882, 24.967081>,  <36.998547, 36.114479, 25.152744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.868835, 36.193882, 24.967081>,  <36.652653, 36.326218, 24.657642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868835, 36.193882, 24.967081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839901, 0.157835, -0.519283,
		0.049699, 0.930394, 0.363175,
		0.540460, -0.330839, 0.773595,
		37.030975, 36.094631, 25.199160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134178, 36.782642, 24.648005>,  <36.652653, 36.326218, 24.657642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134178, 36.782642, 24.648005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.271210, 36.454258, 24.830725>,  <37.353428, 36.257229, 24.940357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.271210, 36.454258, 24.830725>,  <37.134178, 36.782642, 24.648005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271210, 36.454258, 24.830725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832982, 0.040560, -0.551811,
		0.434485, 0.569548, 0.697737,
		0.342584, -0.820957, 0.456801,
		37.373985, 36.207970, 24.967766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945194, 36.818672, 24.649235>,  <37.134178, 36.782642, 24.648005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945194, 36.818672, 24.649235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.860344, 36.431572, 24.703575>,  <37.809433, 36.199310, 24.736179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.860344, 36.431572, 24.703575>,  <37.945194, 36.818672, 24.649235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860344, 36.431572, 24.703575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836236, -0.251688, -0.487198,
		0.505680, 0.010260, 0.862660,
		-0.212122, -0.967754, 0.135853,
		37.796707, 36.141247, 24.744331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564781, 36.819935, 25.168682>,  <37.945194, 36.818672, 24.649235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564781, 36.819935, 25.168682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.901440, 37.035545, 25.155487>,  <39.103436, 37.164913, 25.147570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.901440, 37.035545, 25.155487>,  <38.564781, 36.819935, 25.168682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901440, 37.035545, 25.155487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064392, -0.039515, 0.997142,
		0.536181, -0.841362, -0.067967,
		0.841643, 0.539025, -0.032989,
		39.153934, 37.197254, 25.145590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027279, 36.417793, 25.598425>,  <38.564781, 36.819935, 25.168682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027279, 36.417793, 25.598425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.104229, 36.810162, 25.587164>,  <39.150398, 37.045582, 25.580408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.104229, 36.810162, 25.587164>,  <39.027279, 36.417793, 25.598425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104229, 36.810162, 25.587164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105837, 0.049259, 0.993163,
		0.975597, -0.188085, 0.113293,
		0.192379, 0.980917, -0.028150,
		39.161942, 37.104435, 25.578718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.722672, 36.542377, 26.034002>,  <39.027279, 36.417793, 25.598425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.722672, 36.542377, 26.034002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.453102, 36.836414, 26.004419>,  <39.291363, 37.012836, 25.986670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.453102, 36.836414, 26.004419>,  <39.722672, 36.542377, 26.034002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453102, 36.836414, 26.004419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007927, 0.092906, 0.995643,
		0.738760, 0.671572, -0.056785,
		-0.673922, 0.735091, -0.073959,
		39.250927, 37.056942, 25.982231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021412, 37.002838, 26.553318>,  <39.722672, 36.542377, 26.034002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.021412, 37.002838, 26.553318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.644211, 37.108601, 26.472486>,  <39.417889, 37.172058, 26.423986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.644211, 37.108601, 26.472486>,  <40.021412, 37.002838, 26.553318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644211, 37.108601, 26.472486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149767, 0.205087, 0.967217,
		0.297180, 0.942354, -0.153799,
		-0.943003, 0.264404, -0.202081,
		39.361309, 37.187923, 26.411861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.891113, 37.513081, 27.053385>,  <40.021412, 37.002838, 26.553318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.891113, 37.513081, 27.053385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.515751, 37.444912, 26.933147>,  <39.290535, 37.404011, 26.861006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.515751, 37.444912, 26.933147>,  <39.891113, 37.513081, 27.053385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515751, 37.444912, 26.933147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342780, 0.349350, 0.872042,
		-0.043602, 0.921364, -0.386248,
		-0.938403, -0.170421, -0.300592,
		39.234230, 37.393787, 26.842970>
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
