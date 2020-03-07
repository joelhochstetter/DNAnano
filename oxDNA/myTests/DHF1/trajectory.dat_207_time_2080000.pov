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
	<0.603749, 4.038316, 3.656777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.926796, 3.993134, 3.425262>,  <1.120624, 3.966024, 3.286354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.926796, 3.993134, 3.425262>,  <0.603749, 4.038316, 3.656777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.926796, 3.993134, 3.425262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469867, 0.716337, 0.515835,
		0.356339, -0.688550, 0.631602,
		0.807619, -0.112957, -0.578786,
		1.169082, 3.959247, 3.251627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.120962, 3.830554, 4.170022>,  <0.603749, 4.038316, 3.656777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.120962, 3.830554, 4.170022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.241577, 3.990860, 3.823967>,  <1.313946, 4.087043, 3.616334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.241577, 3.990860, 3.823967>,  <1.120962, 3.830554, 4.170022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.241577, 3.990860, 3.823967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276556, 0.831601, 0.481619,
		0.912465, -0.384485, 0.139925,
		0.301537, 0.400764, -0.865138,
		1.332038, 4.111089, 3.564425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.801223, 3.996753, 4.275883>,  <1.120962, 3.830554, 4.170022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.801223, 3.996753, 4.275883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.642113, 4.220490, 3.984978>,  <1.546646, 4.354731, 3.810435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.642113, 4.220490, 3.984978>,  <1.801223, 3.996753, 4.275883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.642113, 4.220490, 3.984978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199484, 0.826436, 0.526507,
		0.895533, 0.064355, -0.440316,
		-0.397777, 0.559341, -0.727263,
		1.522780, 4.388292, 3.766799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.290270, 4.556511, 4.361245>,  <1.801223, 3.996753, 4.275883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.290270, 4.556511, 4.361245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.959442, 4.646652, 4.155266>,  <1.760945, 4.700737, 4.031678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.959442, 4.646652, 4.155266>,  <2.290270, 4.556511, 4.361245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.959442, 4.646652, 4.155266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077183, 0.861907, 0.501157,
		0.556775, 0.454237, -0.695464,
		-0.827070, 0.225354, -0.514948,
		1.711321, 4.714258, 4.000782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.323411, 5.310994, 4.256262>,  <2.290270, 4.556511, 4.361245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.323411, 5.310994, 4.256262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.939545, 5.199036, 4.245667>,  <1.709225, 5.131861, 4.239309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.939545, 5.199036, 4.245667>,  <2.323411, 5.310994, 4.256262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.939545, 5.199036, 4.245667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250054, 0.806664, 0.535506,
		-0.128518, 0.520530, -0.844116,
		-0.959665, -0.279896, -0.026490,
		1.651645, 5.115067, 4.237720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.025332, 5.932961, 4.218281>,  <2.323411, 5.310994, 4.256262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.025332, 5.932961, 4.218281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.705986, 5.702652, 4.288818>,  <1.514378, 5.564466, 4.331141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.705986, 5.702652, 4.288818>,  <2.025332, 5.932961, 4.218281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.705986, 5.702652, 4.288818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376684, 0.705992, 0.599737,
		-0.469811, 0.412383, -0.780524,
		-0.798365, -0.575774, 0.176344,
		1.466476, 5.529920, 4.341722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.438727, 6.304273, 4.071312>,  <2.025332, 5.932961, 4.218281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.438727, 6.304273, 4.071312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.321350, 6.026154, 4.333748>,  <1.250924, 5.859282, 4.491209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.321350, 6.026154, 4.333748>,  <1.438727, 6.304273, 4.071312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.321350, 6.026154, 4.333748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448780, 0.706170, 0.547650,
		-0.844090, -0.133736, -0.519256,
		-0.293442, -0.695298, 0.656089,
		1.233317, 5.817564, 4.530575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.692547, 6.345112, 4.137547>,  <1.438727, 6.304273, 4.071312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.692547, 6.345112, 4.137547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.832596, 6.176544, 4.472168>,  <0.916625, 6.075404, 4.672941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.832596, 6.176544, 4.472168>,  <0.692547, 6.345112, 4.137547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.832596, 6.176544, 4.472168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546038, 0.633822, 0.547825,
		-0.761090, -0.648595, -0.008195,
		0.350122, -0.421419, 0.836553,
		0.937633, 6.050118, 4.723134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.065180, 1.576781, 2.525024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.059052, 1.183182, 2.454018>,  <2.055374, 0.947022, 2.411414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.059052, 1.183182, 2.454018>,  <2.065180, 1.576781, 2.525024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.059052, 1.183182, 2.454018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890534, 0.094158, -0.445066,
		0.454658, 0.151264, -0.877727,
		-0.015322, -0.983999, -0.177516,
		2.054455, 0.887982, 2.400763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.200064, 1.373855, 1.780519>,  <2.065180, 1.576781, 2.525024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.200064, 1.373855, 1.780519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.938217, 1.142136, 1.974792>,  <1.781109, 1.003104, 2.091357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.938217, 1.142136, 1.974792>,  <2.200064, 1.373855, 1.780519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.938217, 1.142136, 1.974792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711566, 0.255248, -0.654616,
		0.255248, -0.774119, -0.579299,
		0.654616, 0.579299, -0.485685,
		1.741832, 0.968346, 2.120498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.927927, 0.987732, 1.275484>,  <2.200064, 1.373855, 1.780519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.927927, 0.987732, 1.275484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.662323, 0.989319, 1.574570>,  <1.502961, 0.990271, 1.754021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.662323, 0.989319, 1.574570>,  <1.927927, 0.987732, 1.275484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.662323, 0.989319, 1.574570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694746, 0.366429, -0.618916,
		-0.276440, -0.930438, -0.240556,
		-0.664010, 0.003968, 0.747714,
		1.463120, 0.990509, 1.798884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.286735, 1.156988, 0.815425>,  <1.927927, 0.987732, 1.275484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.286735, 1.156988, 0.815425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.960487, 1.051605, 0.609375>,  <0.764739, 0.988376, 0.485745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.960487, 1.051605, 0.609375>,  <1.286735, 1.156988, 0.815425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.960487, 1.051605, 0.609375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544513, -0.650539, -0.529437,
		-0.195626, -0.712313, 0.674048,
		-0.815620, -0.263457, -0.515126,
		0.715801, 0.972568, 0.454837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.146998, 0.466596, 0.847649>,  <1.286735, 1.156988, 0.815425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.146998, 0.466596, 0.847649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.044388, 0.621063, 0.493233>,  <0.982822, 0.713744, 0.280583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.044388, 0.621063, 0.493233>,  <1.146998, 0.466596, 0.847649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.044388, 0.621063, 0.493233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407007, -0.788317, -0.461413,
		-0.876664, -0.478989, 0.045049,
		-0.256525, 0.386169, -0.886041,
		0.967430, 0.736914, 0.227420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.796503, -0.028094, 0.487981>,  <1.146998, 0.466596, 0.847649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.796503, -0.028094, 0.487981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.921478, 0.220047, 0.200218>,  <0.996463, 0.368932, 0.027561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.921478, 0.220047, 0.200218>,  <0.796503, -0.028094, 0.487981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.921478, 0.220047, 0.200218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308628, -0.782525, -0.540743,
		-0.898405, -0.053080, -0.435949,
		0.312439, 0.620353, -0.719406,
		1.015210, 0.406153, -0.015604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.521061, -0.262847, -0.119684>,  <0.796503, -0.028094, 0.487981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.521061, -0.262847, -0.119684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.795387, -0.029037, -0.293114>,  <0.959983, 0.111249, -0.397171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.795387, -0.029037, -0.293114>,  <0.521061, -0.262847, -0.119684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.795387, -0.029037, -0.293114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184993, -0.716200, -0.672930,
		-0.703870, 0.381298, -0.599315,
		0.685816, 0.584525, -0.433574,
		1.001132, 0.146320, -0.423186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.368947, -0.072273, -0.858388>,  <0.521061, -0.262847, -0.119684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.368947, -0.072273, -0.858388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.764633, -0.034103, -0.813942>,  <1.002045, -0.011202, -0.787274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.764633, -0.034103, -0.813942>,  <0.368947, -0.072273, -0.858388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.764633, -0.034103, -0.813942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145028, -0.744218, -0.652001,
		0.020478, 0.661085, -0.750032,
		0.989216, 0.095424, 0.111116,
		1.061398, -0.005476, -0.780607>
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
