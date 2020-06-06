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
	<24.701754, 34.764011, 34.850395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.338591, 34.835594, 35.002014>,  <24.120693, 34.878544, 35.092987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.338591, 34.835594, 35.002014>,  <24.701754, 34.764011, 34.850395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.338591, 34.835594, 35.002014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057408, -0.842670, 0.535361,
		0.415220, 0.507819, 0.754793,
		-0.907908, 0.178961, 0.379046,
		24.066217, 34.889282, 35.115726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.734446, 34.796158, 35.659130>,  <24.701754, 34.764011, 34.850395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.734446, 34.796158, 35.659130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.353273, 34.735901, 35.553879>,  <24.124571, 34.699749, 35.490730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.353273, 34.735901, 35.553879>,  <24.734446, 34.796158, 35.659130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.353273, 34.735901, 35.553879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033451, -0.810306, 0.585051,
		-0.301344, 0.566314, 0.767125,
		-0.952929, -0.150640, -0.263125,
		24.067394, 34.690708, 35.474941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.933977, 34.567966, 36.330544>,  <24.734446, 34.796158, 35.659130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.933977, 34.567966, 36.330544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.329952, 34.623116, 36.317806>,  <25.567537, 34.656204, 36.310165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.329952, 34.623116, 36.317806>,  <24.933977, 34.567966, 36.330544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.329952, 34.623116, 36.317806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139049, -0.989544, 0.038312,
		-0.026226, -0.042354, -0.998759,
		0.989938, 0.137872, -0.031841,
		25.626934, 34.664478, 36.308254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.490616, 34.187576, 36.711708>,  <24.933977, 34.567966, 36.330544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.490616, 34.187576, 36.711708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.185081, 34.138344, 36.965134>,  <25.001760, 34.108803, 37.117191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.185081, 34.138344, 36.965134>,  <25.490616, 34.187576, 36.711708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.185081, 34.138344, 36.965134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225661, 0.970621, -0.083495,
		-0.604678, -0.206748, -0.769168,
		-0.763834, -0.123083, 0.633568,
		24.955931, 34.101418, 37.155205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.643105, 33.902687, 37.388062>,  <25.490616, 34.187576, 36.711708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.643105, 33.902687, 37.388062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.857050, 33.988995, 37.714832>,  <25.985418, 34.040779, 37.910892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.857050, 33.988995, 37.714832>,  <25.643105, 33.902687, 37.388062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.857050, 33.988995, 37.714832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838176, 0.013422, 0.545235,
		0.106683, -0.976351, 0.188036,
		0.534864, 0.215774, 0.816921,
		26.017509, 34.053726, 37.959908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.189281, 33.848648, 37.934372>,  <25.643105, 33.902687, 37.388062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.189281, 33.848648, 37.934372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.442265, 33.805405, 38.241177>,  <25.594055, 33.779461, 38.425259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.442265, 33.805405, 38.241177>,  <25.189281, 33.848648, 37.934372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.442265, 33.805405, 38.241177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448934, 0.755786, 0.476703,
		-0.631232, -0.645833, 0.429472,
		0.632459, -0.108106, 0.767013,
		25.632002, 33.772972, 38.471279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.849436, 34.432941, 38.360851>,  <25.189281, 33.848648, 37.934372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.849436, 34.432941, 38.360851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.159887, 34.391552, 38.609661>,  <25.346159, 34.366718, 38.758945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.159887, 34.391552, 38.609661>,  <24.849436, 34.432941, 38.360851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.159887, 34.391552, 38.609661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284630, 0.822746, 0.492010,
		-0.562678, -0.558911, 0.609107,
		0.776131, -0.103473, 0.622024,
		25.392727, 34.360512, 38.796268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.677389, 34.156353, 39.095898>,  <24.849436, 34.432941, 38.360851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.677389, 34.156353, 39.095898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.950378, 34.435993, 39.010586>,  <25.114172, 34.603779, 38.959396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.950378, 34.435993, 39.010586>,  <24.677389, 34.156353, 39.095898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.950378, 34.435993, 39.010586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385546, 0.592235, 0.707540,
		0.620952, -0.400649, 0.673720,
		0.682475, 0.699098, -0.213281,
		25.155121, 34.645721, 38.946602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.046017, 34.389450, 39.723862>,  <24.677389, 34.156353, 39.095898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.046017, 34.389450, 39.723862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.051315, 34.676727, 39.445576>,  <25.054495, 34.849094, 39.278603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.051315, 34.676727, 39.445576>,  <25.046017, 34.389450, 39.723862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.051315, 34.676727, 39.445576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420683, 0.635203, 0.647721,
		0.907111, 0.284096, 0.310546,
		0.013245, 0.718197, -0.695714,
		25.055288, 34.892185, 39.236862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.306370, 35.025440, 40.125664>,  <25.046017, 34.389450, 39.723862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.306370, 35.025440, 40.125664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.097178, 35.139088, 39.804226>,  <24.971663, 35.207275, 39.611362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.097178, 35.139088, 39.804226>,  <25.306370, 35.025440, 40.125664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.097178, 35.139088, 39.804226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619930, 0.520252, 0.587388,
		0.584961, 0.805366, -0.095948,
		-0.522980, 0.284118, -0.803597,
		24.940283, 35.224323, 39.563148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.357464, 35.580914, 39.645351>,  <25.306370, 35.025440, 40.125664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.357464, 35.580914, 39.645351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.666077, 35.326805, 39.631691>,  <25.851244, 35.174339, 39.623493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.666077, 35.326805, 39.631691>,  <25.357464, 35.580914, 39.645351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.666077, 35.326805, 39.631691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148844, -0.128055, -0.980534,
		0.618535, 0.761596, -0.193356,
		0.771531, -0.635274, -0.034153,
		25.897535, 35.136223, 39.621445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.858652, 35.952499, 39.278786>,  <25.357464, 35.580914, 39.645351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.858652, 35.952499, 39.278786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.151678, 35.852245, 39.531937>,  <26.327494, 35.792091, 39.683826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.151678, 35.852245, 39.531937>,  <25.858652, 35.952499, 39.278786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.151678, 35.852245, 39.531937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253127, -0.762766, -0.595075,
		0.631884, 0.596128, -0.495332,
		0.732563, -0.250637, 0.632876,
		26.371447, 35.777054, 39.721798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.635559, 35.879623, 39.034721>,  <25.858652, 35.952499, 39.278786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.635559, 35.879623, 39.034721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.530495, 35.628571, 39.327866>,  <26.467457, 35.477940, 39.503754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.530495, 35.628571, 39.327866>,  <26.635559, 35.879623, 39.034721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.530495, 35.628571, 39.327866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217358, -0.778497, -0.588811,
		0.940088, 0.004637, 0.340901,
		-0.262660, -0.627631, 0.732863,
		26.451696, 35.440281, 39.547726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.003489, 35.970703, 39.699642>,  <26.635559, 35.879623, 39.034721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.003489, 35.970703, 39.699642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.338211, 35.805393, 39.843288>,  <27.539043, 35.706207, 39.929478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.338211, 35.805393, 39.843288>,  <27.003489, 35.970703, 39.699642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.338211, 35.805393, 39.843288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032575, 0.617177, 0.786150,
		-0.546531, -0.669552, 0.502994,
		0.836805, -0.413270, 0.359117,
		27.589252, 35.681412, 39.951023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.883701, 35.762806, 40.468681>,  <27.003489, 35.970703, 39.699642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.883701, 35.762806, 40.468681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.264944, 35.859219, 40.395481>,  <27.493690, 35.917068, 40.351562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.264944, 35.859219, 40.395481>,  <26.883701, 35.762806, 40.468681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.264944, 35.859219, 40.395481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015736, 0.564408, 0.825346,
		0.302223, -0.789523, 0.534148,
		0.953107, 0.241033, -0.183001,
		27.550877, 35.931530, 40.340580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.240263, 35.545624, 41.083950>,  <26.883701, 35.762806, 40.468681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.240263, 35.545624, 41.083950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.359732, 35.896584, 40.933773>,  <27.431412, 36.107159, 40.843666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.359732, 35.896584, 40.933773>,  <27.240263, 35.545624, 41.083950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.359732, 35.896584, 40.933773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078331, 0.414610, 0.906622,
		0.951136, -0.241372, 0.192560,
		0.298671, 0.877404, -0.375444,
		27.449333, 36.159805, 40.821140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.170933, 34.807468, 41.295334>,  <27.240263, 35.545624, 41.083950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.170933, 34.807468, 41.295334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.294464, 34.661205, 40.944126>,  <27.368584, 34.573448, 40.733402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.294464, 34.661205, 40.944126>,  <27.170933, 34.807468, 41.295334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.294464, 34.661205, 40.944126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887594, 0.442512, 0.127909,
		0.341764, -0.818827, 0.461216,
		0.308829, -0.365658, -0.878020,
		27.387114, 34.551510, 40.680721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.780296, 34.334229, 41.381916>,  <27.170933, 34.807468, 41.295334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.780296, 34.334229, 41.381916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.825554, 34.524460, 41.032970>,  <27.852709, 34.638599, 40.823601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.825554, 34.524460, 41.032970>,  <27.780296, 34.334229, 41.381916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.825554, 34.524460, 41.032970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704593, 0.580644, 0.407923,
		0.700533, -0.660819, -0.269391,
		0.113143, 0.475575, -0.872369,
		27.859497, 34.667133, 40.771259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.456079, 34.482498, 41.149757>,  <27.780296, 34.334229, 41.381916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.456079, 34.482498, 41.149757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.223314, 34.785637, 41.031742>,  <28.083654, 34.967522, 40.960934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.223314, 34.785637, 41.031742>,  <28.456079, 34.482498, 41.149757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.223314, 34.785637, 41.031742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533327, 0.629499, 0.565060,
		0.613953, 0.171466, -0.770494,
		-0.581914, 0.757846, -0.295035,
		28.048740, 35.012989, 40.943233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.924482, 34.955349, 40.921303>,  <28.456079, 34.482498, 41.149757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.924482, 34.955349, 40.921303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.594849, 35.136929, 41.056839>,  <28.397068, 35.245876, 41.138161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.594849, 35.136929, 41.056839>,  <28.924482, 34.955349, 40.921303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.594849, 35.136929, 41.056839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565676, 0.627918, 0.534537,
		0.029886, 0.632179, -0.774245,
		-0.824086, 0.453948, 0.338843,
		28.347624, 35.273113, 41.158493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.624887, 34.927071, 40.592300>,  <28.924482, 34.955349, 40.921303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.624887, 34.927071, 40.592300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651369, 34.761524, 40.955471>,  <29.667259, 34.662197, 41.173374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651369, 34.761524, 40.955471>,  <29.624887, 34.927071, 40.592300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.651369, 34.761524, 40.955471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996768, -0.068926, 0.041266,
		0.045501, -0.907726, -0.417090,
		0.066206, -0.413864, 0.907928,
		29.671230, 34.637363, 41.227848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.358906, 34.212723, 40.660225>,  <29.624887, 34.927071, 40.592300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.358906, 34.212723, 40.660225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.333580, 34.411198, 41.006588>,  <29.318384, 34.530281, 41.214405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.333580, 34.411198, 41.006588>,  <29.358906, 34.212723, 40.660225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.333580, 34.411198, 41.006588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995344, 0.031789, -0.090996,
		-0.072677, -0.867633, 0.491865,
		-0.063315, 0.496188, 0.865903,
		29.314585, 34.560055, 41.266357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.335125, 33.556374, 40.822483>,  <29.358906, 34.212723, 40.660225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.335125, 33.556374, 40.822483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.131453, 33.556427, 41.166748>,  <29.009249, 33.556458, 41.373306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.131453, 33.556427, 41.166748>,  <29.335125, 33.556374, 40.822483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.131453, 33.556427, 41.166748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580083, -0.738678, 0.343304,
		0.635796, 0.674058, 0.376045,
		-0.509183, 0.000134, 0.860658,
		28.978697, 33.556469, 41.424946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.837223, 33.613323, 41.312027>,  <29.335125, 33.556374, 40.822483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.837223, 33.613323, 41.312027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.524778, 33.412109, 41.459988>,  <29.337313, 33.291382, 41.548763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.524778, 33.412109, 41.459988>,  <29.837223, 33.613323, 41.312027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.524778, 33.412109, 41.459988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619626, -0.697558, 0.359829,
		0.077022, 0.510265, 0.856561,
		-0.781109, -0.503033, 0.369901,
		29.290445, 33.261200, 41.570957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.850807, 33.639442, 41.973866>,  <29.837223, 33.613323, 41.312027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.850807, 33.639442, 41.973866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672009, 33.293049, 41.884178>,  <29.564730, 33.085213, 41.830368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672009, 33.293049, 41.884178>,  <29.850807, 33.639442, 41.973866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.672009, 33.293049, 41.884178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756818, -0.499730, 0.421304,
		-0.476888, 0.018632, 0.878767,
		-0.446996, -0.865981, -0.224214,
		29.537910, 33.033253, 41.816914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.663042, 33.264580, 42.640854>,  <29.850807, 33.639442, 41.973866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.663042, 33.264580, 42.640854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.736862, 33.062916, 42.303391>,  <29.781155, 32.941917, 42.100910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.736862, 33.062916, 42.303391>,  <29.663042, 33.264580, 42.640854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.736862, 33.062916, 42.303391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728806, -0.505707, 0.461630,
		-0.659381, -0.700058, 0.274109,
		0.184549, -0.504162, -0.843660,
		29.792227, 32.911667, 42.050293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.397709, 32.672993, 42.620266>,  <29.663042, 33.264580, 42.640854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.397709, 32.672993, 42.620266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.745180, 32.690018, 42.422848>,  <29.953663, 32.700233, 42.304398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.745180, 32.690018, 42.422848>,  <29.397709, 32.672993, 42.620266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.745180, 32.690018, 42.422848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446647, -0.498186, 0.743181,
		-0.214246, -0.866025, -0.451773,
		0.868680, 0.042559, -0.493542,
		30.005785, 32.702785, 42.274784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.825724, 32.403465, 42.871998>,  <29.397709, 32.672993, 42.620266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.825724, 32.403465, 42.871998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.807922, 32.079903, 42.637501>,  <28.797241, 31.885763, 42.496803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.807922, 32.079903, 42.637501>,  <28.825724, 32.403465, 42.871998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.807922, 32.079903, 42.637501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904364, 0.216695, -0.367653,
		0.424435, -0.546540, 0.721906,
		-0.044504, -0.808911, -0.586244,
		28.794571, 31.837229, 42.461628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.316986, 31.958311, 43.044163>,  <28.825724, 32.403465, 42.871998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.316986, 31.958311, 43.044163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.377840, 32.195923, 42.728191>,  <28.414352, 32.338490, 42.538609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.377840, 32.195923, 42.728191>,  <28.316986, 31.958311, 43.044163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.377840, 32.195923, 42.728191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668690, -0.526677, -0.524847,
		-0.727811, 0.608064, 0.317095,
		0.152134, 0.594028, -0.789928,
		28.423481, 32.374130, 42.491215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.045269, 31.644203, 43.026375>,  <28.316986, 31.958311, 43.044163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.045269, 31.644203, 43.026375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.963501, 31.483438, 42.669346>,  <28.914440, 31.386980, 42.455128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.963501, 31.483438, 42.669346>,  <29.045269, 31.644203, 43.026375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.963501, 31.483438, 42.669346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895821, 0.290769, -0.336093,
		0.394611, -0.868286, 0.300602,
		-0.204419, -0.401912, -0.892569,
		28.902176, 31.362865, 42.401573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.643112, 31.426113, 42.858509>,  <29.045269, 31.644203, 43.026375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.643112, 31.426113, 42.858509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.485718, 31.430372, 42.490803>,  <29.391281, 31.432928, 42.270180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.485718, 31.430372, 42.490803>,  <29.643112, 31.426113, 42.858509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.485718, 31.430372, 42.490803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919094, 0.027254, -0.393094,
		0.020866, -0.999572, -0.020516,
		-0.393485, 0.010654, -0.919269,
		29.367672, 31.433565, 42.215023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.862249, 30.913269, 42.271759>,  <29.643112, 31.426113, 42.858509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.862249, 30.913269, 42.271759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.748543, 31.287527, 42.188084>,  <29.680319, 31.512083, 42.137878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.748543, 31.287527, 42.188084>,  <29.862249, 30.913269, 42.271759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.748543, 31.287527, 42.188084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936382, 0.224098, -0.270126,
		-0.205865, -0.272666, -0.939826,
		-0.284267, 0.935646, -0.209186,
		29.663263, 31.568220, 42.125328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.950691, 31.117077, 41.603157>,  <29.862249, 30.913269, 42.271759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.950691, 31.117077, 41.603157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.997637, 31.419931, 41.860207>,  <30.025805, 31.601645, 42.014439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.997637, 31.419931, 41.860207>,  <29.950691, 31.117077, 41.603157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.997637, 31.419931, 41.860207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960840, 0.076996, -0.266193,
		-0.251024, 0.648703, -0.718451,
		0.117363, 0.757137, 0.642628,
		30.032846, 31.647072, 42.052994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.045168, 31.750198, 41.291172>,  <29.950691, 31.117077, 41.603157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.045168, 31.750198, 41.291172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.225706, 31.727407, 41.647385>,  <30.334028, 31.713732, 41.861111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.225706, 31.727407, 41.647385>,  <30.045168, 31.750198, 41.291172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.225706, 31.727407, 41.647385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885805, -0.092035, -0.454840,
		0.107876, 0.994124, 0.008932,
		0.451345, -0.056979, 0.890528,
		30.361109, 31.710314, 41.914543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.685459, 31.953566, 41.105488>,  <30.045168, 31.750198, 41.291172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.685459, 31.953566, 41.105488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.779680, 31.729458, 41.423134>,  <30.836214, 31.594994, 41.613720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.779680, 31.729458, 41.423134>,  <30.685459, 31.953566, 41.105488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.779680, 31.729458, 41.423134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856589, -0.266301, -0.441972,
		0.459096, 0.784335, 0.417192,
		0.235555, -0.560270, 0.794111,
		30.850348, 31.561377, 41.661366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.329388, 32.151089, 41.512226>,  <30.685459, 31.953566, 41.105488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.329388, 32.151089, 41.512226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250326, 31.759157, 41.500393>,  <31.202888, 31.523998, 41.493294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250326, 31.759157, 41.500393>,  <31.329388, 32.151089, 41.512226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250326, 31.759157, 41.500393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860931, -0.159079, -0.483209,
		0.468754, -0.120980, 0.875005,
		-0.197654, -0.979825, -0.029587,
		31.191031, 31.465210, 41.491516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851860, 31.800220, 41.844372>,  <31.329388, 32.151089, 41.512226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851860, 31.800220, 41.844372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.702284, 31.554001, 41.566879>,  <31.612537, 31.406269, 41.400383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.702284, 31.554001, 41.566879>,  <31.851860, 31.800220, 41.844372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.702284, 31.554001, 41.566879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916069, -0.128310, -0.379939,
		0.144858, -0.777583, 0.611867,
		-0.373942, -0.615550, -0.693733,
		31.590101, 31.369335, 41.358761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312691, 31.322098, 41.828472>,  <31.851860, 31.800220, 41.844372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312691, 31.322098, 41.828472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099941, 31.268080, 41.494076>,  <31.972292, 31.235668, 41.293438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099941, 31.268080, 41.494076>,  <32.312691, 31.322098, 41.828472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099941, 31.268080, 41.494076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843711, -0.169093, -0.509470,
		-0.072557, -0.976304, 0.203876,
		-0.531872, -0.135047, -0.835987,
		31.940380, 31.227566, 41.243279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602531, 30.645721, 41.499187>,  <32.312691, 31.322098, 41.828472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602531, 30.645721, 41.499187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422832, 30.895405, 41.243519>,  <32.315014, 31.045214, 41.090118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422832, 30.895405, 41.243519>,  <32.602531, 30.645721, 41.499187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422832, 30.895405, 41.243519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679604, -0.225632, -0.698018,
		-0.579925, -0.747968, -0.322849,
		-0.449250, 0.624207, -0.639172,
		32.288059, 31.082666, 41.051769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488602, 30.371738, 40.730568>,  <32.602531, 30.645721, 41.499187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488602, 30.371738, 40.730568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538609, 30.768461, 40.720062>,  <32.568611, 31.006495, 40.713757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538609, 30.768461, 40.720062>,  <32.488602, 30.371738, 40.730568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538609, 30.768461, 40.720062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792786, -0.115779, -0.598403,
		-0.596541, 0.053988, -0.800765,
		0.125018, 0.991807, -0.026266,
		32.576115, 31.066004, 40.712181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658829, 30.606829, 39.988140>,  <32.488602, 30.371738, 40.730568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658829, 30.606829, 39.988140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820503, 30.822351, 40.283794>,  <32.917507, 30.951664, 40.461185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820503, 30.822351, 40.283794>,  <32.658829, 30.606829, 39.988140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820503, 30.822351, 40.283794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871160, 0.019523, -0.490611,
		-0.278774, 0.842204, -0.461495,
		0.404184, 0.538806, 0.739137,
		32.941757, 30.983994, 40.505535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080795, 31.001642, 39.653130>,  <32.658829, 30.606829, 39.988140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080795, 31.001642, 39.653130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208763, 30.936764, 40.026512>,  <33.285545, 30.897837, 40.250542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208763, 30.936764, 40.026512>,  <33.080795, 31.001642, 39.653130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208763, 30.936764, 40.026512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902458, -0.247816, -0.352358,
		0.288477, 0.955133, 0.067094,
		0.319922, -0.162196, 0.933457,
		33.304741, 30.888105, 40.306549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708370, 31.468681, 39.839840>,  <33.080795, 31.001642, 39.653130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708370, 31.468681, 39.839840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700073, 31.145039, 40.074757>,  <33.695095, 30.950851, 40.215706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700073, 31.145039, 40.074757>,  <33.708370, 31.468681, 39.839840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700073, 31.145039, 40.074757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972827, -0.151824, -0.174808,
		0.230603, 0.567707, 0.790272,
		-0.020743, -0.809109, 0.587292,
		33.693851, 30.902306, 40.250946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980965, 31.586853, 40.460369>,  <33.708370, 31.468681, 39.839840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980965, 31.586853, 40.460369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032166, 31.209770, 40.337135>,  <34.062885, 30.983521, 40.263195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032166, 31.209770, 40.337135>,  <33.980965, 31.586853, 40.460369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032166, 31.209770, 40.337135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990151, 0.139235, -0.014662,
		0.056718, -0.303175, 0.951245,
		0.128001, -0.942708, -0.308086,
		34.070564, 30.926958, 40.244709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373947, 31.334345, 40.931717>,  <33.980965, 31.586853, 40.460369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373947, 31.334345, 40.931717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429008, 31.107056, 40.607204>,  <34.462044, 30.970682, 40.412498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429008, 31.107056, 40.607204>,  <34.373947, 31.334345, 40.931717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429008, 31.107056, 40.607204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986383, 0.153074, 0.060150,
		0.090007, -0.808510, 0.581558,
		0.137654, -0.568225, -0.811278,
		34.470306, 30.936588, 40.363819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948719, 30.809704, 41.066219>,  <34.373947, 31.334345, 40.931717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948719, 30.809704, 41.066219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875286, 30.943506, 40.696484>,  <34.831226, 31.023788, 40.474644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875286, 30.943506, 40.696484>,  <34.948719, 30.809704, 41.066219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875286, 30.943506, 40.696484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950459, 0.300359, -0.080074,
		0.250848, -0.893247, -0.373075,
		-0.183583, 0.334506, -0.924339,
		34.820210, 31.043858, 40.419182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485699, 30.663177, 40.560375>,  <34.948719, 30.809704, 41.066219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485699, 30.663177, 40.560375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309612, 31.002449, 40.442528>,  <35.203960, 31.206011, 40.371819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309612, 31.002449, 40.442528>,  <35.485699, 30.663177, 40.560375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309612, 31.002449, 40.442528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881949, 0.470019, 0.035324,
		0.168439, -0.244291, -0.954961,
		-0.440221, 0.848177, -0.294622,
		35.177547, 31.256903, 40.354141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978577, 31.126772, 40.102486>,  <35.485699, 30.663177, 40.560375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978577, 31.126772, 40.102486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699032, 31.369602, 40.253777>,  <35.531307, 31.515301, 40.344551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699032, 31.369602, 40.253777>,  <35.978577, 31.126772, 40.102486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699032, 31.369602, 40.253777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620819, 0.777453, -0.100753,
		-0.355219, 0.164399, -0.920213,
		-0.698859, 0.607075, 0.378228,
		35.489372, 31.551725, 40.367245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676476, 30.924255, 39.895081>,  <35.978577, 31.126772, 40.102486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676476, 30.924255, 39.895081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025673, 31.079842, 39.777378>,  <37.235191, 31.173193, 39.706757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025673, 31.079842, 39.777378>,  <36.676476, 30.924255, 39.895081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025673, 31.079842, 39.777378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243734, -0.174661, -0.953985,
		-0.422463, 0.904543, -0.057674,
		0.872994, 0.388966, -0.294256,
		37.287571, 31.196531, 39.689102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471519, 31.232431, 39.226978>,  <36.676476, 30.924255, 39.895081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471519, 31.232431, 39.226978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869633, 31.195166, 39.237732>,  <37.108501, 31.172806, 39.244183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869633, 31.195166, 39.237732>,  <36.471519, 31.232431, 39.226978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869633, 31.195166, 39.237732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024545, -0.026165, -0.999356,
		0.093806, 0.995307, -0.023755,
		0.995288, -0.093162, 0.026884,
		37.168221, 31.167217, 39.245796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790741, 31.897575, 39.027824>,  <36.471519, 31.232431, 39.226978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790741, 31.897575, 39.027824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.017387, 31.577248, 38.950233>,  <37.153378, 31.385050, 38.903679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.017387, 31.577248, 38.950233>,  <36.790741, 31.897575, 39.027824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017387, 31.577248, 38.950233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048255, 0.202762, -0.978039,
		0.822566, 0.563535, 0.076245,
		0.566619, -0.800822, -0.193979,
		37.187374, 31.337002, 38.892040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337921, 32.151764, 38.715412>,  <36.790741, 31.897575, 39.027824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337921, 32.151764, 38.715412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.295761, 31.765541, 38.620258>,  <37.270466, 31.533808, 38.563164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.295761, 31.765541, 38.620258>,  <37.337921, 32.151764, 38.715412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295761, 31.765541, 38.620258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112758, 0.249281, -0.961844,
		0.988017, -0.074552, -0.135148,
		-0.105397, -0.965557, -0.237887,
		37.264141, 31.475874, 38.548893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814087, 31.937658, 38.285275>,  <37.337921, 32.151764, 38.715412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814087, 31.937658, 38.285275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.546474, 31.654291, 38.195347>,  <37.385906, 31.484270, 38.141392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.546474, 31.654291, 38.195347>,  <37.814087, 31.937658, 38.285275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546474, 31.654291, 38.195347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243714, 0.076655, -0.966813,
		0.702141, -0.701618, 0.121367,
		-0.669031, -0.708418, -0.224817,
		37.345764, 31.441767, 38.127903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017944, 31.530325, 37.660629>,  <37.814087, 31.937658, 38.285275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017944, 31.530325, 37.660629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.623741, 31.477436, 37.703125>,  <37.387218, 31.445704, 37.728622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.623741, 31.477436, 37.703125>,  <38.017944, 31.530325, 37.660629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623741, 31.477436, 37.703125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126663, 0.157107, -0.979425,
		0.112804, -0.978691, -0.171577,
		-0.985511, -0.132215, 0.106242,
		37.328087, 31.437769, 37.734997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920055, 31.238628, 37.087387>,  <38.017944, 31.530325, 37.660629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920055, 31.238628, 37.087387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557896, 31.307644, 37.242558>,  <37.340599, 31.349054, 37.335659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557896, 31.307644, 37.242558>,  <37.920055, 31.238628, 37.087387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557896, 31.307644, 37.242558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324715, 0.307233, -0.894521,
		-0.273524, -0.935862, -0.222142,
		-0.905398, 0.172540, 0.387924,
		37.286278, 31.359406, 37.358936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567513, 31.057331, 36.578220>,  <37.920055, 31.238628, 37.087387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567513, 31.057331, 36.578220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.287930, 31.237574, 36.800358>,  <37.120178, 31.345720, 36.933640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.287930, 31.237574, 36.800358>,  <37.567513, 31.057331, 36.578220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287930, 31.237574, 36.800358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464264, 0.304763, -0.831612,
		-0.543979, -0.839090, -0.003817,
		-0.698960, 0.450608, 0.555344,
		37.078243, 31.372755, 36.966961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872704, 30.812046, 36.346085>,  <37.567513, 31.057331, 36.578220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872704, 30.812046, 36.346085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863831, 31.197165, 36.453815>,  <36.858505, 31.428236, 36.518452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863831, 31.197165, 36.453815>,  <36.872704, 30.812046, 36.346085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863831, 31.197165, 36.453815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261469, 0.254428, -0.931075,
		-0.964957, -0.091074, 0.246097,
		-0.022183, 0.962794, 0.269325,
		36.857174, 31.486002, 36.534615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281937, 31.056025, 35.825863>,  <36.872704, 30.812046, 36.346085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281937, 31.056025, 35.825863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.463501, 31.390438, 35.949158>,  <36.572441, 31.591087, 36.023136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.463501, 31.390438, 35.949158>,  <36.281937, 31.056025, 35.825863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463501, 31.390438, 35.949158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009180, 0.341521, -0.939829,
		-0.890999, 0.429429, 0.147346,
		0.453912, 0.836035, 0.308237,
		36.599674, 31.641249, 36.041630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789959, 31.725370, 35.689972>,  <36.281937, 31.056025, 35.825863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789959, 31.725370, 35.689972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.182068, 31.800211, 35.715469>,  <36.417332, 31.845116, 35.730766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.182068, 31.800211, 35.715469>,  <35.789959, 31.725370, 35.689972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182068, 31.800211, 35.715469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017866, 0.405027, -0.914130,
		-0.196852, 0.894956, 0.400379,
		0.980270, 0.187101, 0.063741,
		36.476151, 31.856340, 35.734592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864643, 32.401546, 35.325180>,  <35.789959, 31.725370, 35.689972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864643, 32.401546, 35.325180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223011, 32.224281, 35.312897>,  <36.438030, 32.117924, 35.305527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223011, 32.224281, 35.312897>,  <35.864643, 32.401546, 35.325180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223011, 32.224281, 35.312897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096495, 0.261620, -0.960335,
		0.433615, 0.857417, 0.277152,
		0.895917, -0.443159, -0.030706,
		36.491787, 32.091335, 35.303684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715290, 33.072468, 35.577293>,  <35.864643, 32.401546, 35.325180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715290, 33.072468, 35.577293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989265, 33.204910, 35.317684>,  <36.153652, 33.284374, 35.161919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989265, 33.204910, 35.317684>,  <35.715290, 33.072468, 35.577293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989265, 33.204910, 35.317684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609349, 0.748664, -0.261141,
		0.399433, 0.574346, 0.714549,
		0.684943, 0.331102, -0.649019,
		36.194748, 33.304241, 35.122978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946419, 33.841660, 35.682343>,  <35.715290, 33.072468, 35.577293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946419, 33.841660, 35.682343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968857, 33.693253, 35.311569>,  <35.982319, 33.604210, 35.089108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968857, 33.693253, 35.311569>,  <35.946419, 33.841660, 35.682343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968857, 33.693253, 35.311569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681993, 0.663817, -0.306972,
		0.729204, 0.649379, -0.215795,
		0.056093, -0.371016, -0.926931,
		35.985683, 33.581947, 35.033489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017994, 34.457245, 35.157593>,  <35.946419, 33.841660, 35.682343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017994, 34.457245, 35.157593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848839, 34.131855, 34.997879>,  <35.747345, 33.936623, 34.902050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848839, 34.131855, 34.997879>,  <36.017994, 34.457245, 35.157593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848839, 34.131855, 34.997879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658348, 0.578577, -0.481483,
		0.622689, 0.059252, -0.780223,
		-0.422890, -0.813473, -0.399282,
		35.721973, 33.887814, 34.878094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896442, 34.485291, 34.407188>,  <36.017994, 34.457245, 35.157593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896442, 34.485291, 34.407188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654953, 34.186623, 34.518906>,  <35.510059, 34.007423, 34.585934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654953, 34.186623, 34.518906>,  <35.896442, 34.485291, 34.407188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654953, 34.186623, 34.518906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741253, 0.396862, -0.541337,
		0.293358, -0.533844, -0.793065,
		-0.603726, -0.746667, 0.279291,
		35.473835, 33.962624, 34.602692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572369, 34.120068, 33.809986>,  <35.896442, 34.485291, 34.407188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572369, 34.120068, 33.809986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.310413, 34.082119, 34.109886>,  <35.153240, 34.059349, 34.289825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.310413, 34.082119, 34.109886>,  <35.572369, 34.120068, 33.809986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310413, 34.082119, 34.109886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744565, 0.250878, -0.618614,
		-0.129404, -0.963358, -0.234938,
		-0.654887, -0.094875, 0.749748,
		35.113949, 34.053658, 34.334812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085651, 33.586483, 33.704231>,  <35.572369, 34.120068, 33.809986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085651, 33.586483, 33.704231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971027, 33.919609, 33.893673>,  <34.902252, 34.119484, 34.007336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971027, 33.919609, 33.893673>,  <35.085651, 33.586483, 33.704231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971027, 33.919609, 33.893673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611117, 0.221817, -0.759824,
		-0.737849, -0.507159, 0.445387,
		-0.286557, 0.832819, 0.473601,
		34.885059, 34.169456, 34.035755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412102, 33.610245, 33.528030>,  <35.085651, 33.586483, 33.704231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412102, 33.610245, 33.528030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557846, 33.969784, 33.625446>,  <34.645294, 34.185509, 33.683895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557846, 33.969784, 33.625446>,  <34.412102, 33.610245, 33.528030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557846, 33.969784, 33.625446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562280, 0.420811, -0.711871,
		-0.742348, 0.122440, 0.658732,
		0.364363, 0.898847, 0.243543,
		34.667156, 34.239437, 33.698509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840359, 33.979378, 33.696102>,  <34.412102, 33.610245, 33.528030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840359, 33.979378, 33.696102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132107, 34.217636, 33.561504>,  <34.307156, 34.360592, 33.480747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132107, 34.217636, 33.561504>,  <33.840359, 33.979378, 33.696102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132107, 34.217636, 33.561504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634326, 0.404609, -0.658727,
		-0.256217, 0.693904, 0.672942,
		0.729372, 0.595642, -0.336494,
		34.350918, 34.396328, 33.460556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578571, 34.625767, 33.692131>,  <33.840359, 33.979378, 33.696102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578571, 34.625767, 33.692131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903545, 34.652447, 33.460442>,  <34.098530, 34.668453, 33.321426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903545, 34.652447, 33.460442>,  <33.578571, 34.625767, 33.692131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903545, 34.652447, 33.460442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520457, 0.530777, -0.668880,
		0.262827, 0.844883, 0.465935,
		0.812432, 0.066700, -0.579228,
		34.147274, 34.672455, 33.286674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523518, 35.335411, 33.398418>,  <33.578571, 34.625767, 33.692131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523518, 35.335411, 33.398418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793652, 35.176201, 33.150063>,  <33.955730, 35.080677, 33.001049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793652, 35.176201, 33.150063>,  <33.523518, 35.335411, 33.398418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793652, 35.176201, 33.150063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549829, 0.289380, -0.783548,
		0.491542, 0.870539, -0.023416,
		0.675333, -0.398021, -0.620890,
		33.996250, 35.056793, 32.963795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821667, 35.919407, 33.014484>,  <33.523518, 35.335411, 33.398418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821667, 35.919407, 33.014484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846695, 35.593910, 32.783340>,  <33.861710, 35.398613, 32.644653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846695, 35.593910, 32.783340>,  <33.821667, 35.919407, 33.014484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846695, 35.593910, 32.783340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545310, 0.457053, -0.702666,
		0.835896, 0.359074, -0.415143,
		0.062567, -0.813737, -0.577855,
		33.865463, 35.349789, 32.609985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752022, 36.178032, 32.215908>,  <33.821667, 35.919407, 33.014484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752022, 36.178032, 32.215908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725300, 35.779251, 32.199791>,  <33.709267, 35.539982, 32.190121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725300, 35.779251, 32.199791>,  <33.752022, 36.178032, 32.215908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725300, 35.779251, 32.199791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547154, 0.070375, -0.834068,
		0.834362, -0.033670, -0.550188,
		-0.066802, -0.996952, -0.040296,
		33.705257, 35.480164, 32.187702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005672, 35.976082, 31.554573>,  <33.752022, 36.178032, 32.215908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005672, 35.976082, 31.554573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763763, 35.682293, 31.677727>,  <33.618618, 35.506020, 31.751619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763763, 35.682293, 31.677727>,  <34.005672, 35.976082, 31.554573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763763, 35.682293, 31.677727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568229, 0.127086, -0.812998,
		0.557998, -0.666631, -0.494208,
		-0.604776, -0.734474, 0.307885,
		33.582329, 35.461952, 31.770092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968151, 35.534683, 31.032095>,  <34.005672, 35.976082, 31.554573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968151, 35.534683, 31.032095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631836, 35.466068, 31.237482>,  <33.430046, 35.424900, 31.360714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631836, 35.466068, 31.237482>,  <33.968151, 35.534683, 31.032095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631836, 35.466068, 31.237482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532910, 0.095295, -0.840789,
		0.095295, -0.980558, -0.171537,
		0.840789, 0.171537, -0.513468,
		33.379601, 35.414608, 31.391523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659199, 35.026024, 30.667261>,  <33.968151, 35.534683, 31.032095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659199, 35.026024, 30.667261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361290, 35.202686, 30.867363>,  <33.182545, 35.308685, 30.987423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361290, 35.202686, 30.867363>,  <33.659199, 35.026024, 30.667261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361290, 35.202686, 30.867363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533387, 0.056497, -0.843982,
		-0.401015, -0.895402, 0.193498,
		-0.744772, 0.441659, 0.500253,
		33.137859, 35.335186, 31.017439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084030, 34.684395, 30.313021>,  <33.659199, 35.026024, 30.667261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084030, 34.684395, 30.313021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935696, 35.002300, 30.505199>,  <32.846695, 35.193043, 30.620506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935696, 35.002300, 30.505199>,  <33.084030, 34.684395, 30.313021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935696, 35.002300, 30.505199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576839, 0.208318, -0.789848,
		-0.727829, -0.570045, 0.381199,
		-0.370839, 0.794765, 0.480445,
		32.824444, 35.240730, 30.649332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418995, 34.651585, 30.334879>,  <33.084030, 34.684395, 30.313021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418995, 34.651585, 30.334879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474617, 35.040905, 30.407923>,  <32.507988, 35.274498, 30.451750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474617, 35.040905, 30.407923>,  <32.418995, 34.651585, 30.334879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474617, 35.040905, 30.407923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560521, 0.229376, -0.795741,
		-0.816383, 0.008293, 0.577452,
		0.139053, 0.973303, 0.182611,
		32.516335, 35.332897, 30.462706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807573, 34.950638, 30.094412>,  <32.418995, 34.651585, 30.334879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807573, 34.950638, 30.094412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075970, 35.245472, 30.126612>,  <32.237007, 35.422371, 30.145931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075970, 35.245472, 30.126612>,  <31.807573, 34.950638, 30.094412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075970, 35.245472, 30.126612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246054, 0.323767, -0.913582,
		-0.699448, 0.593199, 0.398606,
		0.670992, 0.737082, 0.080499,
		32.277267, 35.466595, 30.150761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383961, 35.511791, 29.889729>,  <31.807573, 34.950638, 30.094412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383961, 35.511791, 29.889729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.757210, 35.654816, 29.874596>,  <31.981159, 35.740631, 29.865515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.757210, 35.654816, 29.874596>,  <31.383961, 35.511791, 29.889729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.757210, 35.654816, 29.874596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158095, 0.313508, -0.936333,
		-0.322933, 0.879696, 0.349070,
		0.933124, 0.357558, -0.037833,
		32.037148, 35.762085, 29.863245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.256252, 36.200565, 29.661083>,  <31.383961, 35.511791, 29.889729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.256252, 36.200565, 29.661083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622328, 36.071262, 29.564802>,  <31.841972, 35.993683, 29.507034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622328, 36.071262, 29.564802>,  <31.256252, 36.200565, 29.661083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622328, 36.071262, 29.564802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085097, 0.428778, -0.899393,
		0.393940, 0.843597, 0.364904,
		0.915188, -0.323255, -0.240700,
		31.896885, 35.974285, 29.492592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629795, 36.736774, 29.526846>,  <31.256252, 36.200565, 29.661083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629795, 36.736774, 29.526846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.842966, 36.454300, 29.340389>,  <31.970869, 36.284813, 29.228516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.842966, 36.454300, 29.340389>,  <31.629795, 36.736774, 29.526846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842966, 36.454300, 29.340389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045916, 0.574210, -0.817420,
		0.844916, 0.414220, 0.338436,
		0.532925, -0.706190, -0.466140,
		32.002842, 36.242443, 29.200548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002869, 37.096096, 29.155554>,  <31.629795, 36.736774, 29.526846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002869, 37.096096, 29.155554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.057320, 36.747097, 28.967846>,  <32.089989, 36.537697, 28.855221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.057320, 36.747097, 28.967846>,  <32.002869, 37.096096, 29.155554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057320, 36.747097, 28.967846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155397, 0.449013, -0.879909,
		0.978428, 0.192704, -0.074460,
		0.136129, -0.872498, -0.469272,
		32.098160, 36.485348, 28.827065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448231, 37.263096, 28.692398>,  <32.002869, 37.096096, 29.155554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448231, 37.263096, 28.692398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.255615, 36.938744, 28.559378>,  <32.140045, 36.744133, 28.479565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.255615, 36.938744, 28.559378>,  <32.448231, 37.263096, 28.692398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.255615, 36.938744, 28.559378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078612, 0.417874, -0.905097,
		0.872895, -0.409692, -0.264966,
		-0.481534, -0.810884, -0.332553,
		32.111156, 36.695477, 28.459612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554173, 37.260929, 28.001137>,  <32.448231, 37.263096, 28.692398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554173, 37.260929, 28.001137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263760, 36.987183, 28.028032>,  <32.089512, 36.822937, 28.044170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263760, 36.987183, 28.028032>,  <32.554173, 37.260929, 28.001137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263760, 36.987183, 28.028032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438710, 0.385675, -0.811658,
		0.529538, -0.618789, -0.580250,
		-0.726033, -0.684365, 0.067240,
		32.045948, 36.781872, 28.048204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489254, 36.986610, 27.266880>,  <32.554173, 37.260929, 28.001137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489254, 36.986610, 27.266880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164814, 36.888275, 27.479177>,  <31.970150, 36.829273, 27.606556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164814, 36.888275, 27.479177>,  <32.489254, 36.986610, 27.266880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164814, 36.888275, 27.479177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584279, 0.298326, -0.754732,
		0.027204, -0.922262, -0.385606,
		-0.811097, -0.245833, 0.530743,
		31.921484, 36.814526, 27.638401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098587, 36.605942, 26.764151>,  <32.489254, 36.986610, 27.266880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098587, 36.605942, 26.764151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879053, 36.765575, 27.057957>,  <31.747334, 36.861355, 27.234241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879053, 36.765575, 27.057957>,  <32.098587, 36.605942, 26.764151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879053, 36.765575, 27.057957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668811, 0.317481, -0.672233,
		-0.501473, -0.860196, 0.092667,
		-0.548832, 0.399083, 0.734517,
		31.714403, 36.885300, 27.278313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.448820, 36.231018, 26.737379>,  <32.098587, 36.605942, 26.764151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.448820, 36.231018, 26.737379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.405542, 36.588326, 26.911905>,  <31.379576, 36.802708, 27.016621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.405542, 36.588326, 26.911905>,  <31.448820, 36.231018, 26.737379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405542, 36.588326, 26.911905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601047, 0.290815, -0.744426,
		-0.791857, -0.342789, 0.505429,
		-0.108195, 0.893265, 0.436316,
		31.373083, 36.856304, 27.042801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.713680, 36.478455, 26.660404>,  <31.448820, 36.231018, 26.737379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.713680, 36.478455, 26.660404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878296, 36.828800, 26.761204>,  <30.977066, 37.039005, 26.821684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878296, 36.828800, 26.761204>,  <30.713680, 36.478455, 26.660404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.878296, 36.828800, 26.761204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533542, 0.455695, -0.712513,
		-0.738896, 0.158776, 0.654845,
		0.411540, 0.875861, 0.251997,
		31.001759, 37.091560, 26.836803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170792, 37.008835, 26.823322>,  <30.713680, 36.478455, 26.660404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.170792, 37.008835, 26.823322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.483578, 37.243099, 26.737974>,  <30.671249, 37.383659, 26.686766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.483578, 37.243099, 26.737974>,  <30.170792, 37.008835, 26.823322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.483578, 37.243099, 26.737974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522529, 0.429278, -0.736671,
		-0.339847, 0.687544, 0.641707,
		0.781964, 0.585666, -0.213373,
		30.718166, 37.418800, 26.673962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.012789, 37.710041, 26.903807>,  <30.170792, 37.008835, 26.823322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.012789, 37.710041, 26.903807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.329302, 37.711906, 26.659235>,  <30.519211, 37.713024, 26.512491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.329302, 37.711906, 26.659235>,  <30.012789, 37.710041, 26.903807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.329302, 37.711906, 26.659235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502337, 0.575074, -0.645715,
		0.348605, 0.818088, 0.457390,
		0.791285, 0.004665, -0.611430,
		30.566687, 37.713306, 26.475805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044060, 38.337322, 26.682159>,  <30.012789, 37.710041, 26.903807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.044060, 38.337322, 26.682159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250216, 38.145432, 26.398121>,  <30.373909, 38.030296, 26.227697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250216, 38.145432, 26.398121>,  <30.044060, 38.337322, 26.682159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250216, 38.145432, 26.398121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551285, 0.448800, -0.703323,
		0.656093, 0.753952, -0.033157,
		0.515391, -0.479724, -0.710096,
		30.404833, 38.001514, 26.185091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317841, 38.837261, 26.224327>,  <30.044060, 38.337322, 26.682159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.317841, 38.837261, 26.224327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.331865, 38.485332, 26.034725>,  <30.340281, 38.274174, 25.920963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.331865, 38.485332, 26.034725>,  <30.317841, 38.837261, 26.224327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.331865, 38.485332, 26.034725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530212, 0.385666, -0.755074,
		0.847140, 0.277798, -0.452971,
		0.035063, -0.879824, -0.474004,
		30.342384, 38.221386, 25.892525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.477455, 39.005089, 25.584007>,  <30.317841, 38.837261, 26.224327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.477455, 39.005089, 25.584007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.366156, 38.632454, 25.490438>,  <30.299376, 38.408871, 25.434298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.366156, 38.632454, 25.490438>,  <30.477455, 39.005089, 25.584007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.366156, 38.632454, 25.490438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550846, 0.354279, -0.755682,
		0.786858, -0.081413, -0.611740,
		-0.278249, -0.931589, -0.233922,
		30.282681, 38.352978, 25.420261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670134, 38.974358, 24.942080>,  <30.477455, 39.005089, 25.584007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670134, 38.974358, 24.942080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.377497, 38.710693, 25.011694>,  <30.201916, 38.552494, 25.053463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.377497, 38.710693, 25.011694>,  <30.670134, 38.974358, 24.942080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.377497, 38.710693, 25.011694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481610, 0.319018, -0.816260,
		0.482522, -0.680985, -0.550846,
		-0.731590, -0.659157, 0.174036,
		30.158020, 38.512947, 25.063906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.594622, 38.552277, 24.295893>,  <30.670134, 38.974358, 24.942080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.594622, 38.552277, 24.295893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250235, 38.492989, 24.490528>,  <30.043602, 38.457417, 24.607309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250235, 38.492989, 24.490528>,  <30.594622, 38.552277, 24.295893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250235, 38.492989, 24.490528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505407, 0.357302, -0.785429,
		-0.057444, -0.922153, -0.382536,
		-0.860967, -0.148218, 0.486588,
		29.991945, 38.448524, 24.636505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186895, 38.074955, 23.824863>,  <30.594622, 38.552277, 24.295893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.186895, 38.074955, 23.824863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.940304, 38.258694, 24.080662>,  <29.792349, 38.368938, 24.234140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.940304, 38.258694, 24.080662>,  <30.186895, 38.074955, 23.824863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.940304, 38.258694, 24.080662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632019, 0.195693, -0.749838,
		-0.469579, -0.866433, 0.169674,
		-0.616480, 0.459345, 0.639495,
		29.755360, 38.396496, 24.272511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.465157, 37.842628, 23.599548>,  <30.186895, 38.074955, 23.824863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.465157, 37.842628, 23.599548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.462824, 38.192421, 23.793556>,  <29.461424, 38.402298, 23.909962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.462824, 38.192421, 23.793556>,  <29.465157, 37.842628, 23.599548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.462824, 38.192421, 23.793556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638412, 0.370065, -0.674894,
		-0.769672, -0.313580, 0.556122,
		-0.005832, 0.874483, 0.485022,
		29.461075, 38.454765, 23.939062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.798382, 37.993530, 23.630089>,  <29.465157, 37.842628, 23.599548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.798382, 37.993530, 23.630089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.991554, 38.338470, 23.690914>,  <29.107458, 38.545437, 23.727409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.991554, 38.338470, 23.690914>,  <28.798382, 37.993530, 23.630089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.991554, 38.338470, 23.690914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558781, 0.437194, -0.704717,
		-0.674196, 0.255360, 0.693001,
		0.482932, 0.862353, 0.152064,
		29.136435, 38.597176, 23.736534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.376940, 38.551857, 23.871956>,  <28.798382, 37.993530, 23.630089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.376940, 38.551857, 23.871956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.682253, 38.692162, 23.654934>,  <28.865440, 38.776344, 23.524721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.682253, 38.692162, 23.654934>,  <28.376940, 38.551857, 23.871956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.682253, 38.692162, 23.654934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644054, 0.479313, -0.596199,
		0.050932, 0.804504, 0.591760,
		0.763283, 0.350760, -0.542556,
		28.911238, 38.797390, 23.492167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.102884, 38.946865, 23.355078>,  <28.376940, 38.551857, 23.871956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.102884, 38.946865, 23.355078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.473793, 39.006172, 23.217564>,  <28.696339, 39.041756, 23.135056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.473793, 39.006172, 23.217564>,  <28.102884, 38.946865, 23.355078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.473793, 39.006172, 23.217564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359875, 0.606209, -0.709226,
		0.103252, 0.781363, 0.615476,
		0.927270, 0.148265, -0.343786,
		28.751974, 39.050652, 23.114428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.117920, 39.584408, 23.158133>,  <28.102884, 38.946865, 23.355078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.117920, 39.584408, 23.158133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.417675, 39.419727, 22.950703>,  <28.597528, 39.320919, 22.826244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.417675, 39.419727, 22.950703>,  <28.117920, 39.584408, 23.158133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.417675, 39.419727, 22.950703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259255, 0.538216, -0.801941,
		0.609264, 0.735409, 0.296598,
		0.749389, -0.411700, -0.518574,
		28.642492, 39.296219, 22.795130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.351343, 40.122761, 22.792433>,  <28.117920, 39.584408, 23.158133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.351343, 40.122761, 22.792433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.510372, 39.811905, 22.597294>,  <28.605789, 39.625393, 22.480209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.510372, 39.811905, 22.597294>,  <28.351343, 40.122761, 22.792433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.510372, 39.811905, 22.597294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174770, 0.457806, -0.871705,
		0.900773, 0.431827, 0.046191,
		0.397572, -0.777135, -0.487850,
		28.629644, 39.578766, 22.450939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.922089, 40.346573, 22.326296>,  <28.351343, 40.122761, 22.792433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.922089, 40.346573, 22.326296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.736044, 40.012035, 22.210224>,  <28.624416, 39.811314, 22.140581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.736044, 40.012035, 22.210224>,  <28.922089, 40.346573, 22.326296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.736044, 40.012035, 22.210224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083553, 0.367804, -0.926142,
		0.881300, -0.406515, -0.240949,
		-0.465113, -0.836341, -0.290180,
		28.596510, 39.761131, 22.123171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.210434, 40.223099, 21.594740>,  <28.922089, 40.346573, 22.326296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.210434, 40.223099, 21.594740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.883678, 39.996624, 21.638794>,  <28.687626, 39.860741, 21.665226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.883678, 39.996624, 21.638794>,  <29.210434, 40.223099, 21.594740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.883678, 39.996624, 21.638794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352233, 0.338466, -0.872567,
		0.456758, -0.751581, -0.475918,
		-0.816887, -0.566186, 0.110135,
		28.638613, 39.826767, 21.671835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.122347, 39.991398, 20.959316>,  <29.210434, 40.223099, 21.594740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.122347, 39.991398, 20.959316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.767984, 39.936295, 21.136490>,  <28.555367, 39.903233, 21.242794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.767984, 39.936295, 21.136490>,  <29.122347, 39.991398, 20.959316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.767984, 39.936295, 21.136490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461904, 0.349665, -0.815094,
		-0.042592, -0.926691, -0.373402,
		-0.885907, -0.137759, 0.442936,
		28.502213, 39.894966, 21.269371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.666542, 39.547440, 20.564981>,  <29.122347, 39.991398, 20.959316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.666542, 39.547440, 20.564981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.436094, 39.801907, 20.770262>,  <28.297825, 39.954586, 20.893431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.436094, 39.801907, 20.770262>,  <28.666542, 39.547440, 20.564981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.436094, 39.801907, 20.770262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416691, 0.311560, -0.853990,
		-0.703175, -0.705846, 0.085591,
		-0.576119, 0.636169, 0.513201,
		28.263258, 39.992756, 20.924223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.070164, 39.727642, 20.057217>,  <28.666542, 39.547440, 20.564981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.070164, 39.727642, 20.057217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.984426, 39.952251, 20.376904>,  <27.932985, 40.087017, 20.568716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.984426, 39.952251, 20.376904>,  <28.070164, 39.727642, 20.057217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.984426, 39.952251, 20.376904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538578, 0.614665, -0.576299,
		-0.814856, -0.553967, 0.170676,
		-0.214342, 0.561523, 0.799218,
		27.920124, 40.120708, 20.616669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.373066, 39.721024, 20.102848>,  <28.070164, 39.727642, 20.057217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.373066, 39.721024, 20.102848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.496361, 40.046883, 20.299351>,  <27.570337, 40.242397, 20.417253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.496361, 40.046883, 20.299351>,  <27.373066, 39.721024, 20.102848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.496361, 40.046883, 20.299351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606770, 0.566083, -0.558015,
		-0.732679, -0.126079, 0.668794,
		0.308239, 0.814650, 0.491258,
		27.588833, 40.291279, 20.446728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.748541, 40.201336, 20.157022>,  <27.373066, 39.721024, 20.102848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.748541, 40.201336, 20.157022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.080683, 40.420506, 20.197596>,  <27.279968, 40.552006, 20.221939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.080683, 40.420506, 20.197596>,  <26.748541, 40.201336, 20.157022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.080683, 40.420506, 20.197596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384028, 0.694593, -0.608328,
		-0.403772, 0.466176, 0.787178,
		0.830356, 0.547924, 0.101432,
		27.329790, 40.584881, 20.228025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.473518, 40.829769, 20.230164>,  <26.748541, 40.201336, 20.157022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.473518, 40.829769, 20.230164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.854149, 40.845486, 20.108210>,  <27.082527, 40.854916, 20.035036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.854149, 40.845486, 20.108210>,  <26.473518, 40.829769, 20.230164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.854149, 40.845486, 20.108210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240266, 0.713743, -0.657908,
		0.191761, 0.699304, 0.688622,
		0.951578, 0.039291, -0.304887,
		27.139622, 40.857273, 20.016743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.741100, 41.415432, 20.499033>,  <26.473518, 40.829769, 20.230164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.741100, 41.415432, 20.499033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.855612, 41.263603, 20.147131>,  <26.924318, 41.172504, 19.935989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.855612, 41.263603, 20.147131>,  <26.741100, 41.415432, 20.499033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.855612, 41.263603, 20.147131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330381, 0.822767, -0.462495,
		0.899385, 0.423056, 0.110135,
		0.286277, -0.379575, -0.879755,
		26.941494, 41.149731, 19.883205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.160849, 41.864559, 20.022289>,  <26.741100, 41.415432, 20.499033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.160849, 41.864559, 20.022289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.954361, 41.598606, 19.806345>,  <26.830469, 41.439034, 19.676779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.954361, 41.598606, 19.806345>,  <27.160849, 41.864559, 20.022289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.954361, 41.598606, 19.806345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478838, 0.746675, -0.461725,
		0.710090, 0.020150, -0.703822,
		-0.516223, -0.664883, -0.539856,
		26.799496, 41.399139, 19.644386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.479725, 42.009949, 19.274334>,  <27.160849, 41.864559, 20.022289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.479725, 42.009949, 19.274334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.121574, 41.838928, 19.324131>,  <26.906683, 41.736317, 19.354010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.121574, 41.838928, 19.324131>,  <27.479725, 42.009949, 19.274334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.121574, 41.838928, 19.324131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432135, 0.766759, -0.474700,
		0.107501, -0.478834, -0.871299,
		-0.895378, -0.427550, 0.124494,
		26.852961, 41.710663, 19.361479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.644558, 42.370239, 19.955669>,  <27.479725, 42.009949, 19.274334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.644558, 42.370239, 19.955669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.919500, 42.660706, 19.949677>,  <28.084465, 42.834988, 19.946081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.919500, 42.660706, 19.949677>,  <27.644558, 42.370239, 19.955669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.919500, 42.660706, 19.949677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555185, 0.511985, -0.655470,
		-0.468310, 0.458859, 0.755072,
		0.687354, 0.726168, -0.014983,
		28.125706, 42.878555, 19.945181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.257090, 43.044140, 19.950785>,  <27.644558, 42.370239, 19.955669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.257090, 43.044140, 19.950785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.624599, 43.095123, 19.801329>,  <27.845106, 43.125713, 19.711655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.624599, 43.095123, 19.801329>,  <27.257090, 43.044140, 19.950785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.624599, 43.095123, 19.801329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383230, 0.515220, -0.766605,
		0.094799, 0.847528, 0.522216,
		0.918775, 0.127456, -0.373640,
		27.900232, 43.133362, 19.689238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.456564, 43.716373, 19.880527>,  <27.257090, 43.044140, 19.950785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.456564, 43.716373, 19.880527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.644657, 43.501472, 19.600460>,  <27.757513, 43.372532, 19.432419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.644657, 43.501472, 19.600460>,  <27.456564, 43.716373, 19.880527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.644657, 43.501472, 19.600460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367792, 0.601884, -0.708848,
		0.802253, 0.590841, 0.085427,
		0.470233, -0.537256, -0.700169,
		27.785727, 43.340294, 19.390409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.780357, 44.155727, 19.412868>,  <27.456564, 43.716373, 19.880527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.780357, 44.155727, 19.412868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.725197, 43.811111, 19.217426>,  <27.692101, 43.604343, 19.100161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.725197, 43.811111, 19.217426>,  <27.780357, 44.155727, 19.412868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.725197, 43.811111, 19.217426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251152, 0.507614, -0.824166,
		0.958074, 0.009061, -0.286378,
		-0.137901, -0.861537, -0.488607,
		27.683826, 43.552650, 19.070845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.250427, 43.803852, 19.667894>,  <27.780357, 44.155727, 19.412868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.250427, 43.803852, 19.667894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.096325, 44.009720, 19.974277>,  <28.003864, 44.133240, 20.158108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.096325, 44.009720, 19.974277>,  <28.250427, 43.803852, 19.667894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.096325, 44.009720, 19.974277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691191, 0.389011, -0.609036,
		-0.611419, -0.764059, 0.205866,
		-0.385255, 0.514669, 0.765960,
		27.980749, 44.164120, 20.204065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.995052, 43.838036, 19.937950>,  <28.250427, 43.803852, 19.667894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.995052, 43.838036, 19.937950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.723436, 43.544407, 19.935308>,  <28.560467, 43.368229, 19.933723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.723436, 43.544407, 19.935308>,  <28.995052, 43.838036, 19.937950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.723436, 43.544407, 19.935308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259570, -0.248508, 0.933203,
		-0.686679, 0.631967, 0.359290,
		-0.679040, -0.734072, -0.006605,
		28.519724, 43.324184, 19.933327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.805311, 43.812771, 20.584507>,  <28.995052, 43.838036, 19.937950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.805311, 43.812771, 20.584507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.662630, 43.465908, 20.445480>,  <28.577021, 43.257790, 20.362064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.662630, 43.465908, 20.445480>,  <28.805311, 43.812771, 20.584507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.662630, 43.465908, 20.445480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385999, -0.475602, 0.790448,
		-0.850745, 0.147794, 0.504370,
		-0.356703, -0.867156, -0.347568,
		28.555618, 43.205761, 20.341209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.574408, 43.495819, 21.192358>,  <28.805311, 43.812771, 20.584507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.574408, 43.495819, 21.192358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.614092, 43.185013, 20.943710>,  <28.637903, 42.998531, 20.794521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.614092, 43.185013, 20.943710>,  <28.574408, 43.495819, 21.192358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.614092, 43.185013, 20.943710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418939, -0.534019, 0.734380,
		-0.902578, -0.333279, 0.272540,
		0.099212, -0.777013, -0.621618,
		28.643856, 42.951908, 20.757225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.284420, 42.889721, 21.518150>,  <28.574408, 43.495819, 21.192358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.284420, 42.889721, 21.518150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.572792, 42.787933, 21.260313>,  <28.745815, 42.726860, 21.105610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.572792, 42.787933, 21.260313>,  <28.284420, 42.889721, 21.518150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.572792, 42.787933, 21.260313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462391, -0.516192, 0.720930,
		-0.516192, -0.817796, -0.254472,
		-0.720930, 0.254472, 0.644595,
		28.789072, 42.711590, 21.066935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.267296, 42.187378, 21.626617>,  <28.284420, 42.889721, 21.518150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.267296, 42.187378, 21.626617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.615902, 42.258251, 21.443724>,  <28.825066, 42.300774, 21.333986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.615902, 42.258251, 21.443724>,  <28.267296, 42.187378, 21.626617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.615902, 42.258251, 21.443724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465423, -0.592481, 0.657532,
		-0.154400, -0.785858, -0.598822,
		0.871517, 0.177183, -0.457235,
		28.877357, 42.311405, 21.306553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.641359, 41.600922, 21.542242>,  <28.267296, 42.187378, 21.626617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.641359, 41.600922, 21.542242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.955231, 41.847069, 21.512302>,  <29.143555, 41.994759, 21.494339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.955231, 41.847069, 21.512302>,  <28.641359, 41.600922, 21.542242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.955231, 41.847069, 21.512302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506815, -0.567313, 0.649072,
		0.356954, -0.547248, -0.757036,
		0.784680, 0.615367, -0.074849,
		29.190634, 42.031677, 21.489847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.122976, 41.153603, 21.526474>,  <28.641359, 41.600922, 21.542242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.122976, 41.153603, 21.526474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292404, 41.499466, 21.634510>,  <29.394062, 41.706985, 21.699331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292404, 41.499466, 21.634510>,  <29.122976, 41.153603, 21.526474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.292404, 41.499466, 21.634510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612502, -0.493046, 0.617857,
		0.667404, -0.096274, -0.738446,
		0.423571, 0.864660, 0.270093,
		29.419476, 41.758865, 21.715538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.752604, 41.004322, 21.446074>,  <29.122976, 41.153603, 21.526474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.752604, 41.004322, 21.446074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.760387, 41.329319, 21.679131>,  <29.765059, 41.524319, 21.818966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.760387, 41.329319, 21.679131>,  <29.752604, 41.004322, 21.446074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.760387, 41.329319, 21.679131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519595, -0.506097, 0.688395,
		0.854191, 0.289343, -0.432016,
		0.019459, 0.812494, 0.582645,
		29.766226, 41.573067, 21.853924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.488033, 41.139305, 21.680698>,  <29.752604, 41.004322, 21.446074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.488033, 41.139305, 21.680698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.258825, 41.330257, 21.947157>,  <30.121300, 41.444828, 22.107033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.258825, 41.330257, 21.947157>,  <30.488033, 41.139305, 21.680698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.258825, 41.330257, 21.947157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606937, -0.298998, 0.736361,
		0.550704, 0.826259, -0.118410,
		-0.573021, 0.477385, 0.666146,
		30.086920, 41.473473, 22.147001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.935127, 41.454094, 22.069542>,  <30.488033, 41.139305, 21.680698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.935127, 41.454094, 22.069542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.604557, 41.430286, 22.293497>,  <30.406214, 41.416000, 22.427870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.604557, 41.430286, 22.293497>,  <30.935127, 41.454094, 22.069542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.604557, 41.430286, 22.293497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545169, -0.333161, 0.769282,
		0.140746, 0.940990, 0.307781,
		-0.826427, -0.059519, 0.559890,
		30.356628, 41.412430, 22.461464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173151, 41.748745, 22.708534>,  <30.935127, 41.454094, 22.069542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.173151, 41.748745, 22.708534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.844326, 41.550220, 22.820169>,  <30.647032, 41.431107, 22.887150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.844326, 41.550220, 22.820169>,  <31.173151, 41.748745, 22.708534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.844326, 41.550220, 22.820169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426129, -0.211152, 0.879676,
		-0.377663, 0.842075, 0.385072,
		-0.822061, -0.496312, 0.279088,
		30.597708, 41.401325, 22.903896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212221, 41.892323, 23.391386>,  <31.173151, 41.748745, 22.708534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.212221, 41.892323, 23.391386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.983805, 41.568829, 23.335022>,  <30.846754, 41.374733, 23.301205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.983805, 41.568829, 23.335022>,  <31.212221, 41.892323, 23.391386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.983805, 41.568829, 23.335022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327587, -0.381881, 0.864207,
		-0.752726, 0.447339, 0.483003,
		-0.571043, -0.808737, -0.140909,
		30.812492, 41.326206, 23.292749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.878357, 41.805073, 24.050985>,  <31.212221, 41.892323, 23.391386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.878357, 41.805073, 24.050985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.858372, 41.455502, 23.857590>,  <30.846380, 41.245758, 23.741552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.858372, 41.455502, 23.857590>,  <30.878357, 41.805073, 24.050985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.858372, 41.455502, 23.857590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193823, -0.483373, 0.853688,
		-0.979764, -0.051060, 0.193536,
		-0.049961, -0.873924, -0.483488,
		30.843384, 41.193325, 23.712543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.690968, 41.315311, 24.509869>,  <30.878357, 41.805073, 24.050985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.690968, 41.315311, 24.509869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.822231, 41.071384, 24.221304>,  <30.900990, 40.925030, 24.048164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.822231, 41.071384, 24.221304>,  <30.690968, 41.315311, 24.509869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.822231, 41.071384, 24.221304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324895, -0.644249, 0.692378,
		-0.886992, -0.461593, -0.013290,
		0.328159, -0.609816, -0.721413,
		30.920679, 40.888439, 24.004881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.491581, 40.618355, 24.800165>,  <30.690968, 41.315311, 24.509869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.491581, 40.618355, 24.800165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.762722, 40.554966, 24.512999>,  <30.925407, 40.516933, 24.340698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.762722, 40.554966, 24.512999>,  <30.491581, 40.618355, 24.800165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.762722, 40.554966, 24.512999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452253, -0.680002, 0.577117,
		-0.579641, -0.715879, -0.389272,
		0.677852, -0.158471, -0.717916,
		30.966078, 40.507423, 24.297625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.614470, 39.825264, 24.593025>,  <30.491581, 40.618355, 24.800165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.614470, 39.825264, 24.593025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.939465, 40.018604, 24.462652>,  <31.134462, 40.134609, 24.384428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.939465, 40.018604, 24.462652>,  <30.614470, 39.825264, 24.593025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.939465, 40.018604, 24.462652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573955, -0.565242, 0.592517,
		0.102164, -0.668484, -0.736676,
		0.812489, 0.483353, -0.325932,
		31.183210, 40.163609, 24.364872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.114569, 39.328171, 24.411224>,  <30.614470, 39.825264, 24.593025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.114569, 39.328171, 24.411224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341156, 39.656048, 24.445211>,  <31.477108, 39.852772, 24.465603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341156, 39.656048, 24.445211>,  <31.114569, 39.328171, 24.411224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341156, 39.656048, 24.445211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663934, -0.515028, 0.542160,
		0.488163, -0.250706, -0.835969,
		0.566470, 0.819691, 0.084965,
		31.511097, 39.901955, 24.470701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777645, 39.148895, 24.116941>,  <31.114569, 39.328171, 24.411224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777645, 39.148895, 24.116941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816790, 39.451286, 24.375839>,  <31.840277, 39.632721, 24.531178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816790, 39.451286, 24.375839>,  <31.777645, 39.148895, 24.116941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816790, 39.451286, 24.375839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608009, -0.560295, 0.562490,
		0.787876, 0.338482, -0.514472,
		0.097863, 0.755976, 0.647242,
		31.846149, 39.678078, 24.570011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495571, 39.187901, 24.395407>,  <31.777645, 39.148895, 24.116941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495571, 39.187901, 24.395407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329247, 39.416607, 24.678303>,  <32.229454, 39.553829, 24.848040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329247, 39.416607, 24.678303>,  <32.495571, 39.187901, 24.395407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329247, 39.416607, 24.678303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692202, -0.305425, 0.653890,
		0.589880, 0.761446, -0.268779,
		-0.415810, 0.571766, 0.707238,
		32.204502, 39.588139, 24.890474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092537, 39.624500, 24.683414>,  <32.495571, 39.187901, 24.395407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092537, 39.624500, 24.683414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805840, 39.619907, 24.962311>,  <32.633820, 39.617153, 25.129648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805840, 39.619907, 24.962311>,  <33.092537, 39.624500, 24.683414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805840, 39.619907, 24.962311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649641, -0.374415, 0.661649,
		0.253460, 0.927190, 0.275821,
		-0.716746, -0.011483, 0.697240,
		32.590816, 39.616463, 25.171482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388786, 39.886616, 25.321913>,  <33.092537, 39.624500, 24.683414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388786, 39.886616, 25.321913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068039, 39.684589, 25.449606>,  <32.875591, 39.563374, 25.526222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068039, 39.684589, 25.449606>,  <33.388786, 39.886616, 25.321913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068039, 39.684589, 25.449606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542282, -0.390862, 0.743745,
		-0.250866, 0.769502, 0.587310,
		-0.801871, -0.505068, 0.319233,
		32.827477, 39.533070, 25.545376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394352, 39.991673, 25.995153>,  <33.388786, 39.886616, 25.321913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394352, 39.991673, 25.995153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152252, 39.673805, 25.976465>,  <33.006992, 39.483086, 25.965252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152252, 39.673805, 25.976465>,  <33.394352, 39.991673, 25.995153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152252, 39.673805, 25.976465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458875, -0.396252, 0.795247,
		-0.650470, 0.459880, 0.604483,
		-0.605246, -0.794666, -0.046723,
		32.970680, 39.435406, 25.962448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010376, 39.939770, 26.670156>,  <33.394352, 39.991673, 25.995153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010376, 39.939770, 26.670156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998405, 39.582321, 26.491024>,  <32.991222, 39.367851, 26.383545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998405, 39.582321, 26.491024>,  <33.010376, 39.939770, 26.670156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998405, 39.582321, 26.491024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399758, -0.421337, 0.814044,
		-0.916132, -0.154666, 0.369839,
		-0.029922, -0.893618, -0.447829,
		32.989429, 39.314236, 26.356676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876232, 39.613972, 27.220530>,  <33.010376, 39.939770, 26.670156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876232, 39.613972, 27.220530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013206, 39.348129, 26.954885>,  <33.095390, 39.188625, 26.795500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013206, 39.348129, 26.954885>,  <32.876232, 39.613972, 27.220530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013206, 39.348129, 26.954885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450062, -0.504435, 0.736878,
		-0.824731, -0.551224, 0.126375,
		0.342437, -0.664603, -0.664108,
		33.115936, 39.148746, 26.755653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652523, 39.035198, 27.461130>,  <32.876232, 39.613972, 27.220530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652523, 39.035198, 27.461130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970608, 38.949566, 27.234219>,  <33.161461, 38.898186, 27.098072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970608, 38.949566, 27.234219>,  <32.652523, 39.035198, 27.461130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970608, 38.949566, 27.234219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445792, -0.427730, 0.786331,
		-0.410974, -0.878191, -0.244706,
		0.795217, -0.214074, -0.567276,
		33.209171, 38.885342, 27.064035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833687, 38.483662, 27.732872>,  <32.652523, 39.035198, 27.461130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.833687, 38.483662, 27.732872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155655, 38.566475, 27.510433>,  <33.348835, 38.616161, 27.376970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155655, 38.566475, 27.510433>,  <32.833687, 38.483662, 27.732872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155655, 38.566475, 27.510433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575859, -0.498627, 0.647887,
		-0.143153, -0.841730, -0.520574,
		0.804918, 0.207030, -0.556098,
		33.397129, 38.628586, 27.343603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261009, 37.868568, 27.596743>,  <32.833687, 38.483662, 27.732872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261009, 37.868568, 27.596743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494614, 38.192013, 27.568256>,  <33.634777, 38.386082, 27.551165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494614, 38.192013, 27.568256>,  <33.261009, 37.868568, 27.596743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494614, 38.192013, 27.568256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602228, -0.372778, 0.705945,
		0.544290, -0.455168, -0.704677,
		0.584011, 0.808615, -0.071216,
		33.669819, 38.434597, 27.546892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029533, 37.714104, 27.856348>,  <33.261009, 37.868568, 27.596743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029533, 37.714104, 27.856348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039101, 38.113743, 27.842339>,  <34.044842, 38.353527, 27.833933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039101, 38.113743, 27.842339>,  <34.029533, 37.714104, 27.856348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039101, 38.113743, 27.842339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596693, 0.013842, 0.802350,
		0.802113, -0.040086, -0.595825,
		0.023915, 0.999100, -0.035021,
		34.046276, 38.413471, 27.831833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743050, 37.891270, 27.876982>,  <34.029533, 37.714104, 27.856348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743050, 37.891270, 27.876982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548763, 38.220886, 27.993628>,  <34.432194, 38.418655, 28.063616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548763, 38.220886, 27.993628>,  <34.743050, 37.891270, 27.876982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548763, 38.220886, 27.993628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634182, 0.102606, 0.766346,
		0.601578, 0.557162, -0.572429,
		-0.485714, 0.824040, 0.291616,
		34.403049, 38.468098, 28.081112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265232, 38.337254, 28.077978>,  <34.743050, 37.891270, 27.876982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265232, 38.337254, 28.077978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912971, 38.445881, 28.233263>,  <34.701614, 38.511055, 28.326435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912971, 38.445881, 28.233263>,  <35.265232, 38.337254, 28.077978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912971, 38.445881, 28.233263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427398, 0.101821, 0.898311,
		0.204420, 0.957019, -0.205734,
		-0.880649, 0.271564, 0.388214,
		34.648777, 38.527351, 28.349728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478912, 38.770527, 28.584900>,  <35.265232, 38.337254, 28.077978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478912, 38.770527, 28.584900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101620, 38.692951, 28.692747>,  <34.875244, 38.646404, 28.757456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101620, 38.692951, 28.692747>,  <35.478912, 38.770527, 28.584900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101620, 38.692951, 28.692747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268244, 0.033822, 0.962757,
		-0.195836, 0.980430, 0.020122,
		-0.943236, -0.193940, 0.269618,
		34.818649, 38.634769, 28.773632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343693, 39.202183, 29.219975>,  <35.478912, 38.770527, 28.584900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343693, 39.202183, 29.219975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.080280, 38.901169, 29.218323>,  <34.922234, 38.720558, 29.217331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.080280, 38.901169, 29.218323>,  <35.343693, 39.202183, 29.219975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080280, 38.901169, 29.218323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126369, -0.115990, 0.985179,
		-0.741864, 0.648253, 0.171481,
		-0.658536, -0.752538, -0.004130,
		34.882721, 38.675407, 29.217083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933079, 39.208023, 29.826601>,  <35.343693, 39.202183, 29.219975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933079, 39.208023, 29.826601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868179, 38.829105, 29.716108>,  <34.829239, 38.601753, 29.649813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868179, 38.829105, 29.716108>,  <34.933079, 39.208023, 29.826601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868179, 38.829105, 29.716108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425177, -0.319736, 0.846755,
		-0.890449, 0.019937, 0.454645,
		-0.162248, -0.947297, -0.276232,
		34.819504, 38.544918, 29.633238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638233, 38.815727, 30.403437>,  <34.933079, 39.208023, 29.826601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638233, 38.815727, 30.403437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795609, 38.539219, 30.160997>,  <34.890034, 38.373314, 30.015533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795609, 38.539219, 30.160997>,  <34.638233, 38.815727, 30.403437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795609, 38.539219, 30.160997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429304, -0.444830, 0.786018,
		-0.812962, -0.569447, 0.121754,
		0.393435, -0.691272, -0.606096,
		34.913639, 38.331837, 29.979168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397892, 38.146889, 30.697193>,  <34.638233, 38.815727, 30.403437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397892, 38.146889, 30.697193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718616, 38.063690, 30.473106>,  <34.911049, 38.013771, 30.338654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718616, 38.063690, 30.473106>,  <34.397892, 38.146889, 30.697193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718616, 38.063690, 30.473106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408474, -0.493506, 0.767855,
		-0.436181, -0.844505, -0.310735,
		0.801807, -0.207997, -0.560217,
		34.959160, 38.001289, 30.305042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407093, 37.480801, 30.790945>,  <34.397892, 38.146889, 30.697193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407093, 37.480801, 30.790945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774418, 37.583755, 30.670649>,  <34.994812, 37.645531, 30.598471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774418, 37.583755, 30.670649>,  <34.407093, 37.480801, 30.790945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774418, 37.583755, 30.670649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395594, -0.569496, 0.720541,
		0.014190, -0.780656, -0.624799,
		0.918316, 0.257392, -0.300742,
		35.049911, 37.660973, 30.580425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725662, 36.890888, 30.870420>,  <34.407093, 37.480801, 30.790945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725662, 36.890888, 30.870420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.024155, 37.155891, 30.844418>,  <35.203251, 37.314892, 30.828815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.024155, 37.155891, 30.844418>,  <34.725662, 36.890888, 30.870420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.024155, 37.155891, 30.844418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541926, -0.547884, 0.637291,
		0.386592, -0.510796, -0.767877,
		0.746233, 0.662504, -0.065006,
		35.248024, 37.354641, 30.824915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365273, 36.550491, 30.961346>,  <34.725662, 36.890888, 30.870420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365273, 36.550491, 30.961346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497547, 36.921688, 31.030020>,  <35.576912, 37.144405, 31.071224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497547, 36.921688, 31.030020>,  <35.365273, 36.550491, 30.961346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497547, 36.921688, 31.030020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635985, -0.353541, 0.685953,
		0.697256, -0.117648, -0.707101,
		0.330690, 0.927991, 0.171686,
		35.596756, 37.200085, 31.081526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045441, 36.619831, 30.815275>,  <35.365273, 36.550491, 30.961346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045441, 36.619831, 30.815275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953754, 36.891090, 31.094580>,  <35.898743, 37.053848, 31.262163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953754, 36.891090, 31.094580>,  <36.045441, 36.619831, 30.815275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953754, 36.891090, 31.094580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675686, -0.405510, 0.615638,
		0.700649, 0.612920, -0.365268,
		-0.229217, 0.678152, 0.698261,
		35.884991, 37.094536, 31.304058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648376, 36.634644, 31.138008>,  <36.045441, 36.619831, 30.815275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648376, 36.634644, 31.138008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395168, 36.830299, 31.378017>,  <36.243244, 36.947693, 31.522022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395168, 36.830299, 31.378017>,  <36.648376, 36.634644, 31.138008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395168, 36.830299, 31.378017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608547, -0.164659, 0.776246,
		0.478494, 0.856521, -0.193433,
		-0.633020, 0.489142, 0.600021,
		36.205261, 36.977043, 31.558023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076263, 37.082890, 31.525604>,  <36.648376, 36.634644, 31.138008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076263, 37.082890, 31.525604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740463, 37.059273, 31.741657>,  <36.538982, 37.045101, 31.871290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740463, 37.059273, 31.741657>,  <37.076263, 37.082890, 31.525604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740463, 37.059273, 31.741657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538160, -0.227459, 0.811571,
		0.074939, 0.971996, 0.222728,
		-0.839505, -0.059045, 0.540135,
		36.488613, 37.041557, 31.903698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442379, 37.737400, 31.194666>,  <37.076263, 37.082890, 31.525604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442379, 37.737400, 31.194666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762577, 37.569851, 31.023199>,  <37.954697, 37.469322, 30.920319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762577, 37.569851, 31.023199>,  <37.442379, 37.737400, 31.194666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762577, 37.569851, 31.023199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474205, -0.005251, -0.880399,
		0.366525, 0.908029, -0.202836,
		0.800493, -0.418874, -0.428668,
		38.002724, 37.444187, 30.894598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681660, 38.187172, 30.730549>,  <37.442379, 37.737400, 31.194666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681660, 38.187172, 30.730549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.834782, 37.839184, 30.606220>,  <37.926655, 37.630390, 30.531622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.834782, 37.839184, 30.606220>,  <37.681660, 38.187172, 30.730549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834782, 37.839184, 30.606220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407902, 0.142709, -0.901804,
		0.828899, 0.472003, -0.300232,
		0.382808, -0.869970, -0.310822,
		37.949623, 37.578194, 30.512974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968971, 38.369576, 30.059715>,  <37.681660, 38.187172, 30.730549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968971, 38.369576, 30.059715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902451, 37.975513, 30.042686>,  <37.862537, 37.739075, 30.032469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902451, 37.975513, 30.042686>,  <37.968971, 38.369576, 30.059715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902451, 37.975513, 30.042686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363172, 0.101330, -0.926196,
		0.916761, -0.138566, -0.374632,
		-0.166301, -0.985155, -0.042572,
		37.852562, 37.679966, 30.029915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257103, 38.128395, 29.475111>,  <37.968971, 38.369576, 30.059715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257103, 38.128395, 29.475111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.022938, 37.815262, 29.559454>,  <37.882439, 37.627380, 29.610060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.022938, 37.815262, 29.559454>,  <38.257103, 38.128395, 29.475111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022938, 37.815262, 29.559454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161533, -0.142240, -0.976563,
		0.794481, -0.605751, -0.043185,
		-0.585412, -0.782836, 0.210856,
		37.847313, 37.580410, 29.622711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430347, 37.574707, 29.012402>,  <38.257103, 38.128395, 29.475111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430347, 37.574707, 29.012402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059566, 37.498810, 29.141869>,  <37.837097, 37.453270, 29.219549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059566, 37.498810, 29.141869>,  <38.430347, 37.574707, 29.012402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059566, 37.498810, 29.141869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265907, -0.276348, -0.923539,
		0.264681, -0.942140, 0.205706,
		-0.926950, -0.189745, 0.323666,
		37.781483, 37.441887, 29.238968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192810, 36.865669, 28.868490>,  <38.430347, 37.574707, 29.012402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192810, 36.865669, 28.868490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892876, 37.129810, 28.884895>,  <37.712917, 37.288296, 28.894739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892876, 37.129810, 28.884895>,  <38.192810, 36.865669, 28.868490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892876, 37.129810, 28.884895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232277, -0.204691, -0.950868,
		-0.619516, -0.722517, 0.306869,
		-0.749831, 0.660356, 0.041015,
		37.667927, 37.327919, 28.897200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771782, 36.555889, 28.429016>,  <38.192810, 36.865669, 28.868490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771782, 36.555889, 28.429016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578259, 36.897930, 28.503555>,  <37.462143, 37.103153, 28.548279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578259, 36.897930, 28.503555>,  <37.771782, 36.555889, 28.429016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578259, 36.897930, 28.503555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516959, -0.107421, -0.849244,
		-0.706173, -0.507207, 0.494025,
		-0.483811, 0.855103, 0.186347,
		37.433117, 37.154461, 28.559460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015423, 36.514275, 28.220455>,  <37.771782, 36.555889, 28.429016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015423, 36.514275, 28.220455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055454, 36.912209, 28.213776>,  <37.079472, 37.150970, 28.209768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055454, 36.912209, 28.213776>,  <37.015423, 36.514275, 28.220455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055454, 36.912209, 28.213776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499133, 0.035679, -0.865791,
		-0.860727, 0.094982, 0.500128,
		0.100079, 0.994839, -0.016699,
		37.085476, 37.210659, 28.208767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361847, 36.778728, 27.988087>,  <37.015423, 36.514275, 28.220455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361847, 36.778728, 27.988087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658638, 37.040226, 27.928638>,  <36.836712, 37.197124, 27.892969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658638, 37.040226, 27.928638>,  <36.361847, 36.778728, 27.988087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658638, 37.040226, 27.928638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400238, 0.254094, -0.880480,
		-0.537844, 0.712781, 0.450186,
		0.741979, 0.653742, -0.148619,
		36.881233, 37.236347, 27.884052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981247, 37.330746, 27.783279>,  <36.361847, 36.778728, 27.988087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981247, 37.330746, 27.783279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354309, 37.376980, 27.646580>,  <36.578148, 37.404720, 27.564560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354309, 37.376980, 27.646580>,  <35.981247, 37.330746, 27.783279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354309, 37.376980, 27.646580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360524, 0.333572, -0.871064,
		0.013312, 0.935612, 0.352780,
		0.932655, 0.115590, -0.341750,
		36.634106, 37.411655, 27.544054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930996, 37.911293, 27.402302>,  <35.981247, 37.330746, 27.783279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930996, 37.911293, 27.402302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276661, 37.765255, 27.263781>,  <36.484062, 37.677631, 27.180668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276661, 37.765255, 27.263781>,  <35.930996, 37.911293, 27.402302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276661, 37.765255, 27.263781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206722, 0.369866, -0.905795,
		0.458785, 0.854345, 0.244153,
		0.864166, -0.365094, -0.346301,
		36.535912, 37.655727, 27.159891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225117, 38.435776, 27.037703>,  <35.930996, 37.911293, 27.402302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225117, 38.435776, 27.037703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402969, 38.097134, 26.920700>,  <36.509682, 37.893948, 26.850498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402969, 38.097134, 26.920700>,  <36.225117, 38.435776, 27.037703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402969, 38.097134, 26.920700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208545, 0.219742, -0.953007,
		0.871100, 0.484734, -0.078853,
		0.444627, -0.846609, -0.292506,
		36.536358, 37.843151, 26.832949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544724, 38.594269, 26.449629>,  <36.225117, 38.435776, 27.037703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544724, 38.594269, 26.449629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531464, 38.195847, 26.416700>,  <36.523506, 37.956795, 26.396944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531464, 38.195847, 26.416700>,  <36.544724, 38.594269, 26.449629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531464, 38.195847, 26.416700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135095, 0.086076, -0.987087,
		0.990278, -0.021601, -0.137415,
		-0.033150, -0.996054, -0.082321,
		36.521519, 37.897030, 26.392004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035316, 38.347633, 25.973007>,  <36.544724, 38.594269, 26.449629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035316, 38.347633, 25.973007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762074, 38.056576, 25.997955>,  <36.598125, 37.881939, 26.012924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762074, 38.056576, 25.997955>,  <37.035316, 38.347633, 25.973007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762074, 38.056576, 25.997955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285188, 0.187158, -0.940021,
		0.672331, -0.659925, -0.335366,
		-0.683109, -0.727648, 0.062371,
		36.557140, 37.838280, 26.016666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970127, 38.207836, 25.305868>,  <37.035316, 38.347633, 25.973007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970127, 38.207836, 25.305868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660072, 38.008892, 25.461710>,  <36.474041, 37.889526, 25.555216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660072, 38.008892, 25.461710>,  <36.970127, 38.207836, 25.305868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660072, 38.008892, 25.461710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561483, 0.259578, -0.785720,
		0.289654, -0.827798, -0.480470,
		-0.775137, -0.497363, 0.389607,
		36.427532, 37.859684, 25.578592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569454, 37.854977, 24.733994>,  <36.970127, 38.207836, 25.305868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569454, 37.854977, 24.733994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.319984, 37.929573, 25.037638>,  <36.170303, 37.974331, 25.219824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.319984, 37.929573, 25.037638>,  <36.569454, 37.854977, 24.733994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319984, 37.929573, 25.037638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609276, 0.492406, -0.621546,
		-0.489703, -0.850151, -0.193478,
		-0.623678, 0.186491, 0.759109,
		36.132881, 37.985519, 25.265371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038036, 38.005531, 24.407173>,  <36.569454, 37.854977, 24.733994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038036, 38.005531, 24.407173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909504, 38.123306, 24.767185>,  <35.832382, 38.193970, 24.983192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909504, 38.123306, 24.767185>,  <36.038036, 38.005531, 24.407173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909504, 38.123306, 24.767185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744210, 0.509198, -0.432282,
		-0.585573, -0.808717, 0.055502,
		-0.321332, 0.294439, 0.900028,
		35.813103, 38.211639, 25.037193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331436, 37.806347, 24.459322>,  <36.038036, 38.005531, 24.407173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331436, 37.806347, 24.459322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408123, 38.103428, 24.715960>,  <35.454136, 38.281677, 24.869942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408123, 38.103428, 24.715960>,  <35.331436, 37.806347, 24.459322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408123, 38.103428, 24.715960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804350, 0.493486, -0.330897,
		-0.562374, -0.452626, 0.692001,
		0.191720, 0.742699, 0.641593,
		35.465637, 38.326237, 24.908438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661678, 37.897545, 24.852011>,  <35.331436, 37.806347, 24.459322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661678, 37.897545, 24.852011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874386, 38.236187, 24.860826>,  <35.002010, 38.439373, 24.866116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874386, 38.236187, 24.860826>,  <34.661678, 37.897545, 24.852011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874386, 38.236187, 24.860826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819105, 0.520760, -0.240574,
		-0.215149, 0.109876, 0.970380,
		0.531769, 0.846603, 0.022041,
		35.033916, 38.490170, 24.867439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164047, 38.495335, 25.124531>,  <34.661678, 37.897545, 24.852011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164047, 38.495335, 25.124531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465057, 38.694046, 24.951595>,  <34.645664, 38.813274, 24.847834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465057, 38.694046, 24.951595>,  <34.164047, 38.495335, 25.124531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465057, 38.694046, 24.951595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656745, 0.614832, -0.436655,
		0.048896, 0.612531, 0.788933,
		0.752526, 0.496777, -0.432339,
		34.690815, 38.843079, 24.821894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064865, 39.215473, 25.211035>,  <34.164047, 38.495335, 25.124531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064865, 39.215473, 25.211035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286011, 39.153557, 24.883528>,  <34.418697, 39.116405, 24.687023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286011, 39.153557, 24.883528>,  <34.064865, 39.215473, 25.211035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286011, 39.153557, 24.883528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613063, 0.589922, -0.525495,
		0.564351, 0.792484, 0.231251,
		0.552867, -0.154793, -0.818766,
		34.451870, 39.107121, 24.637897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178730, 39.830345, 24.806761>,  <34.064865, 39.215473, 25.211035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178730, 39.830345, 24.806761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237751, 39.557724, 24.520063>,  <34.273163, 39.394154, 24.348045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237751, 39.557724, 24.520063>,  <34.178730, 39.830345, 24.806761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237751, 39.557724, 24.520063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422722, 0.611694, -0.668683,
		0.894167, 0.401647, -0.197850,
		0.147551, -0.681550, -0.716742,
		34.282017, 39.353260, 24.305040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406128, 40.174408, 24.259832>,  <34.178730, 39.830345, 24.806761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406128, 40.174408, 24.259832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257812, 39.838676, 24.100817>,  <34.168823, 39.637238, 24.005407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257812, 39.838676, 24.100817>,  <34.406128, 40.174408, 24.259832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257812, 39.838676, 24.100817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376685, 0.527178, -0.761703,
		0.848895, -0.132687, -0.511637,
		-0.370792, -0.839332, -0.397537,
		34.146576, 39.586876, 23.981556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657932, 40.197418, 23.630533>,  <34.406128, 40.174408, 24.259832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657932, 40.197418, 23.630533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347149, 39.946667, 23.607389>,  <34.160679, 39.796215, 23.593502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347149, 39.946667, 23.607389>,  <34.657932, 40.197418, 23.630533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347149, 39.946667, 23.607389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318919, 0.471174, -0.822366,
		0.542791, -0.620493, -0.566009,
		-0.776961, -0.626884, -0.057861,
		34.114059, 39.758602, 23.590031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470539, 40.206596, 22.880648>,  <34.657932, 40.197418, 23.630533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470539, 40.206596, 22.880648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149700, 40.042446, 23.054192>,  <33.957195, 39.943958, 23.158318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149700, 40.042446, 23.054192>,  <34.470539, 40.206596, 22.880648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149700, 40.042446, 23.054192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564026, 0.281823, -0.776177,
		0.196251, -0.867277, -0.457511,
		-0.802098, -0.410374, 0.433858,
		33.909069, 39.919334, 23.184349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050674, 39.836124, 22.319614>,  <34.470539, 40.206596, 22.880648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050674, 39.836124, 22.319614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777714, 39.847553, 22.611780>,  <33.613937, 39.854412, 22.787081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777714, 39.847553, 22.611780>,  <34.050674, 39.836124, 22.319614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777714, 39.847553, 22.611780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684619, 0.325189, -0.652341,
		-0.256164, -0.945217, -0.202347,
		-0.682405, 0.028576, 0.730416,
		33.572994, 39.856125, 22.830904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524475, 39.372269, 22.072174>,  <34.050674, 39.836124, 22.319614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524475, 39.372269, 22.072174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378174, 39.636894, 22.334030>,  <33.290394, 39.795670, 22.491144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378174, 39.636894, 22.334030>,  <33.524475, 39.372269, 22.072174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378174, 39.636894, 22.334030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639990, 0.331918, -0.692996,
		-0.675749, -0.672430, 0.301995,
		-0.365754, 0.661565, 0.654642,
		33.268448, 39.835365, 22.530422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858543, 39.328079, 22.016699>,  <33.524475, 39.372269, 22.072174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858543, 39.328079, 22.016699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938465, 39.698254, 22.145472>,  <32.986420, 39.920361, 22.222734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938465, 39.698254, 22.145472>,  <32.858543, 39.328079, 22.016699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938465, 39.698254, 22.145472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612679, 0.374405, -0.696021,
		-0.764658, -0.058169, 0.641806,
		0.199808, 0.925439, 0.321931,
		32.998409, 39.975883, 22.242050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261665, 39.740547, 21.819872>,  <32.858543, 39.328079, 22.016699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261665, 39.740547, 21.819872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527016, 40.025517, 21.911419>,  <32.686226, 40.196499, 21.966347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527016, 40.025517, 21.911419>,  <32.261665, 39.740547, 21.819872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527016, 40.025517, 21.911419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339734, 0.559266, -0.756176,
		-0.666719, 0.423874, 0.613039,
		0.663375, 0.712427, 0.228869,
		32.726028, 40.239246, 21.980080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896729, 40.392212, 21.810799>,  <32.261665, 39.740547, 21.819872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896729, 40.392212, 21.810799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282284, 40.493275, 21.777132>,  <32.513618, 40.553913, 21.756933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282284, 40.493275, 21.777132>,  <31.896729, 40.392212, 21.810799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282284, 40.493275, 21.777132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233787, 0.651478, -0.721748,
		-0.127521, 0.715361, 0.687020,
		0.963889, 0.252654, -0.084165,
		32.571449, 40.569073, 21.751883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002682, 41.178768, 21.910038>,  <31.896729, 40.392212, 21.810799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002682, 41.178768, 21.910038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324970, 41.059143, 21.705540>,  <32.518345, 40.987366, 21.582840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324970, 41.059143, 21.705540>,  <32.002682, 41.178768, 21.910038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324970, 41.059143, 21.705540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198017, 0.677483, -0.708382,
		0.558215, 0.671994, 0.486642,
		0.805720, -0.299067, -0.511248,
		32.566685, 40.969421, 21.552166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123909, 41.772213, 21.583685>,  <32.002682, 41.178768, 21.910038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123909, 41.772213, 21.583685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.335045, 41.485577, 21.401312>,  <32.461727, 41.313595, 21.291889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.335045, 41.485577, 21.401312>,  <32.123909, 41.772213, 21.583685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335045, 41.485577, 21.401312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170929, 0.436198, -0.883467,
		0.831964, 0.544265, 0.107758,
		0.527844, -0.716594, -0.455932,
		32.493397, 41.270599, 21.264532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654499, 42.143719, 21.175575>,  <32.123909, 41.772213, 21.583685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654499, 42.143719, 21.175575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638039, 41.774925, 21.021564>,  <32.628162, 41.553650, 20.929159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638039, 41.774925, 21.021564>,  <32.654499, 42.143719, 21.175575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638039, 41.774925, 21.021564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146089, 0.386763, -0.910534,
		0.988415, 0.018775, -0.150610,
		-0.041155, -0.921988, -0.385026,
		32.625690, 41.498329, 20.906057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875706, 42.177597, 20.527601>,  <32.654499, 42.143719, 21.175575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875706, 42.177597, 20.527601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.685532, 41.825871, 20.516527>,  <32.571426, 41.614834, 20.509882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.685532, 41.825871, 20.516527>,  <32.875706, 42.177597, 20.527601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685532, 41.825871, 20.516527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234357, 0.156920, -0.959403,
		0.847963, -0.449643, -0.280679,
		-0.475433, -0.879317, -0.027685,
		32.542900, 41.562077, 20.508223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267612, 41.806469, 19.975494>,  <32.875706, 42.177597, 20.527601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267612, 41.806469, 19.975494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894722, 41.672134, 20.029400>,  <32.670986, 41.591534, 20.061743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894722, 41.672134, 20.029400>,  <33.267612, 41.806469, 19.975494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894722, 41.672134, 20.029400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223164, 0.240396, -0.944673,
		0.284864, -0.910726, -0.299051,
		-0.932228, -0.335841, 0.134761,
		32.615051, 41.571384, 20.069828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095451, 41.508461, 19.310295>,  <33.267612, 41.806469, 19.975494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095451, 41.508461, 19.310295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744057, 41.558594, 19.494713>,  <32.533222, 41.588673, 19.605364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744057, 41.558594, 19.494713>,  <33.095451, 41.508461, 19.310295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744057, 41.558594, 19.494713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430873, 0.209125, -0.877847,
		-0.206437, -0.969824, -0.129711,
		-0.878483, 0.125331, 0.461042,
		32.480511, 41.596191, 19.633026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520855, 41.066872, 18.962921>,  <33.095451, 41.508461, 19.310295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520855, 41.066872, 18.962921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.327610, 41.357708, 19.158037>,  <32.211662, 41.532211, 19.275106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.327610, 41.357708, 19.158037>,  <32.520855, 41.066872, 18.962921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.327610, 41.357708, 19.158037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531652, 0.199044, -0.823242,
		-0.695664, -0.657054, 0.290399,
		-0.483112, 0.727091, 0.487792,
		32.182674, 41.575836, 19.304375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.812405, 40.894627, 18.863716>,  <32.520855, 41.066872, 18.962921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.812405, 40.894627, 18.863716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.842016, 41.286324, 18.939201>,  <31.859783, 41.521339, 18.984493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.842016, 41.286324, 18.939201>,  <31.812405, 40.894627, 18.863716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842016, 41.286324, 18.939201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351662, 0.202712, -0.913916,
		-0.933195, 0.001292, 0.359368,
		0.074029, 0.979238, 0.188715,
		31.864225, 41.580093, 18.995815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573803, 40.279716, 18.470505>,  <31.812405, 40.894627, 18.863716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.573803, 40.279716, 18.470505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.671133, 39.956696, 18.255598>,  <31.729530, 39.762882, 18.126654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.671133, 39.956696, 18.255598>,  <31.573803, 40.279716, 18.470505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.671133, 39.956696, 18.255598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260636, -0.479106, 0.838168,
		-0.934271, -0.343978, 0.093898,
		0.243325, -0.807549, -0.537268,
		31.744131, 39.714432, 18.094418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238804, 39.689381, 18.742733>,  <31.573803, 40.279716, 18.470505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238804, 39.689381, 18.742733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.531404, 39.522465, 18.527039>,  <31.706964, 39.422314, 18.397621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.531404, 39.522465, 18.527039>,  <31.238804, 39.689381, 18.742733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.531404, 39.522465, 18.527039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205889, -0.618756, 0.758124,
		-0.650021, -0.665586, -0.366699,
		0.731494, -0.417297, -0.539241,
		31.750854, 39.397278, 18.365267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244289, 39.043785, 18.899240>,  <31.238804, 39.689381, 18.742733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.244289, 39.043785, 18.899240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615395, 39.084740, 18.755701>,  <31.838058, 39.109310, 18.669577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615395, 39.084740, 18.755701>,  <31.244289, 39.043785, 18.899240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615395, 39.084740, 18.755701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330439, -0.672213, 0.662526,
		-0.173391, -0.733245, -0.657486,
		0.927764, 0.102383, -0.358848,
		31.893724, 39.115456, 18.648046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440073, 38.341747, 18.773033>,  <31.244289, 39.043785, 18.899240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440073, 38.341747, 18.773033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.772507, 38.561218, 18.809374>,  <31.971968, 38.692902, 18.831179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.772507, 38.561218, 18.809374>,  <31.440073, 38.341747, 18.773033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.772507, 38.561218, 18.809374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380773, -0.680435, 0.626115,
		0.405353, -0.485761, -0.774419,
		0.831084, 0.548676, 0.090852,
		32.021832, 38.725822, 18.836630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900263, 37.784370, 18.803257>,  <31.440073, 38.341747, 18.773033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900263, 37.784370, 18.803257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099388, 38.108238, 18.927589>,  <32.218864, 38.302559, 19.002190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099388, 38.108238, 18.927589>,  <31.900263, 37.784370, 18.803257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099388, 38.108238, 18.927589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627065, -0.583610, 0.515934,
		0.599141, -0.061928, -0.798245,
		0.497815, 0.809669, 0.310831,
		32.248734, 38.351139, 19.020840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622574, 37.578781, 18.873615>,  <31.900263, 37.784370, 18.803257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622574, 37.578781, 18.873615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576405, 37.915062, 19.085236>,  <32.548702, 38.116833, 19.212208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576405, 37.915062, 19.085236>,  <32.622574, 37.578781, 18.873615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576405, 37.915062, 19.085236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576001, -0.377270, 0.725183,
		0.809259, 0.388438, -0.440699,
		-0.115426, 0.840704, 0.529050,
		32.541779, 38.167274, 19.243950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248180, 37.764690, 19.054377>,  <32.622574, 37.578781, 18.873615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248180, 37.764690, 19.054377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016945, 37.965305, 19.311832>,  <32.878204, 38.085674, 19.466307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016945, 37.965305, 19.311832>,  <33.248180, 37.764690, 19.054377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016945, 37.965305, 19.311832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566974, -0.320380, 0.758879,
		0.586813, 0.803630, -0.099147,
		-0.578093, 0.501534, 0.643640,
		32.843517, 38.115765, 19.504925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714752, 38.276787, 19.402872>,  <33.248180, 37.764690, 19.054377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714752, 38.276787, 19.402872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402290, 38.199364, 19.640303>,  <33.214813, 38.152908, 19.782761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402290, 38.199364, 19.640303>,  <33.714752, 38.276787, 19.402872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402290, 38.199364, 19.640303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620682, -0.138008, 0.771821,
		-0.067472, 0.971334, 0.227943,
		-0.781154, -0.193556, 0.593578,
		33.167946, 38.141296, 19.818377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936115, 38.555206, 20.011253>,  <33.714752, 38.276787, 19.402872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936115, 38.555206, 20.011253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629349, 38.333450, 20.140556>,  <33.445290, 38.200397, 20.218138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629349, 38.333450, 20.140556>,  <33.936115, 38.555206, 20.011253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629349, 38.333450, 20.140556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459794, -0.123277, 0.879427,
		-0.447695, 0.823076, 0.349449,
		-0.766914, -0.554390, 0.323255,
		33.399273, 38.167133, 20.237534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706131, 38.873306, 20.688898>,  <33.936115, 38.555206, 20.011253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706131, 38.873306, 20.688898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602921, 38.487217, 20.672098>,  <33.540997, 38.255562, 20.662018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602921, 38.487217, 20.672098>,  <33.706131, 38.873306, 20.688898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602921, 38.487217, 20.672098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427585, -0.153068, 0.890922,
		-0.866369, 0.211918, 0.452211,
		-0.258022, -0.965226, -0.042000,
		33.525513, 38.197651, 20.659498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557201, 38.696819, 21.341591>,  <33.706131, 38.873306, 20.688898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557201, 38.696819, 21.341591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625557, 38.347557, 21.158987>,  <33.666573, 38.138000, 21.049425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625557, 38.347557, 21.158987>,  <33.557201, 38.696819, 21.341591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625557, 38.347557, 21.158987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489638, -0.326806, 0.808364,
		-0.855015, -0.361667, 0.371680,
		0.170891, -0.873152, -0.456510,
		33.676823, 38.085613, 21.022034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684456, 38.257881, 21.965416>,  <33.557201, 38.696819, 21.341591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684456, 38.257881, 21.965416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789398, 38.039677, 21.647024>,  <33.852364, 37.908752, 21.455990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789398, 38.039677, 21.647024>,  <33.684456, 38.257881, 21.965416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789398, 38.039677, 21.647024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552119, -0.591652, 0.587463,
		-0.791412, -0.593600, 0.145966,
		0.262357, -0.545516, -0.795978,
		33.868107, 37.876022, 21.408230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494835, 37.521004, 22.200338>,  <33.684456, 38.257881, 21.965416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494835, 37.521004, 22.200338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769684, 37.529037, 21.909834>,  <33.934593, 37.533859, 21.735531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769684, 37.529037, 21.909834>,  <33.494835, 37.521004, 22.200338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769684, 37.529037, 21.909834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569371, -0.635820, 0.521104,
		-0.451306, -0.771576, -0.448323,
		0.687124, 0.020086, -0.726262,
		33.975822, 37.535065, 21.691956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716328, 36.872383, 22.167294>,  <33.494835, 37.521004, 22.200338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716328, 36.872383, 22.167294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004269, 37.097000, 22.004086>,  <34.177032, 37.231770, 21.906160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004269, 37.097000, 22.004086>,  <33.716328, 36.872383, 22.167294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004269, 37.097000, 22.004086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677097, -0.438676, 0.590850,
		0.152796, -0.701597, -0.696000,
		0.719856, 0.561538, -0.408021,
		34.220226, 37.265461, 21.881680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353203, 36.433376, 22.039841>,  <33.716328, 36.872383, 22.167294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353203, 36.433376, 22.039841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516151, 36.797630, 22.012133>,  <34.613918, 37.016182, 21.995508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516151, 36.797630, 22.012133>,  <34.353203, 36.433376, 22.039841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516151, 36.797630, 22.012133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824284, -0.333962, 0.457192,
		0.393200, -0.243346, -0.886666,
		0.407369, 0.910633, -0.069272,
		34.638363, 37.070820, 21.991350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999699, 36.333710, 21.705641>,  <34.353203, 36.433376, 22.039841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999699, 36.333710, 21.705641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031891, 36.679546, 21.904036>,  <35.051205, 36.887051, 22.023071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031891, 36.679546, 21.904036>,  <34.999699, 36.333710, 21.705641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031891, 36.679546, 21.904036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843105, -0.324479, 0.428821,
		0.531693, 0.383655, -0.755057,
		0.080481, 0.864593, 0.495985,
		35.056034, 36.938923, 22.052832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756699, 36.514572, 21.752054>,  <34.999699, 36.333710, 21.705641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756699, 36.514572, 21.752054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554897, 36.710438, 22.036505>,  <35.433815, 36.827957, 22.207176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554897, 36.710438, 22.036505>,  <35.756699, 36.514572, 21.752054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554897, 36.710438, 22.036505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744256, -0.170873, 0.645666,
		0.437672, 0.855004, -0.278230,
		-0.504505, 0.489664, 0.711128,
		35.403545, 36.857338, 22.249844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242359, 36.867722, 22.060043>,  <35.756699, 36.514572, 21.752054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242359, 36.867722, 22.060043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953094, 36.838123, 22.334726>,  <35.779537, 36.820366, 22.499537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953094, 36.838123, 22.334726>,  <36.242359, 36.867722, 22.060043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953094, 36.838123, 22.334726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683422, -0.220433, 0.695948,
		0.099879, 0.972592, 0.209976,
		-0.723159, -0.073992, 0.686707,
		35.736145, 36.815926, 22.540739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433018, 37.252831, 22.566845>,  <36.242359, 36.867722, 22.060043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433018, 37.252831, 22.566845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173851, 37.015541, 22.757967>,  <36.018353, 36.873169, 22.872641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173851, 37.015541, 22.757967>,  <36.433018, 37.252831, 22.566845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173851, 37.015541, 22.757967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699917, -0.216158, 0.680729,
		-0.300540, 0.775479, 0.555256,
		-0.647914, -0.593219, 0.477807,
		35.979477, 36.837574, 22.901308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420254, 37.414692, 23.246597>,  <36.433018, 37.252831, 22.566845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420254, 37.414692, 23.246597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238735, 37.062244, 23.299799>,  <36.129822, 36.850777, 23.331720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238735, 37.062244, 23.299799>,  <36.420254, 37.414692, 23.246597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238735, 37.062244, 23.299799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491754, -0.123152, 0.861981,
		-0.743131, 0.456571, 0.489182,
		-0.453799, -0.881123, 0.133003,
		36.102596, 36.797909, 23.339701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253391, 37.289692, 23.944374>,  <36.420254, 37.414692, 23.246597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253391, 37.289692, 23.944374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.249382, 36.911469, 23.814253>,  <36.246975, 36.684536, 23.736181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.249382, 36.911469, 23.814253>,  <36.253391, 37.289692, 23.944374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249382, 36.911469, 23.814253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390324, -0.303210, 0.869316,
		-0.920623, -0.118259, 0.372113,
		-0.010024, -0.945557, -0.325302,
		36.246376, 36.627800, 23.716661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802391, 36.861706, 24.434132>,  <36.253391, 37.289692, 23.944374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802391, 36.861706, 24.434132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063347, 36.615746, 24.256916>,  <36.219921, 36.468170, 24.150587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063347, 36.615746, 24.256916>,  <35.802391, 36.861706, 24.434132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063347, 36.615746, 24.256916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129960, -0.485151, 0.864719,
		-0.746657, -0.621712, -0.236596,
		0.652390, -0.614901, -0.443040,
		36.259064, 36.431274, 24.124004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772396, 36.247669, 24.796507>,  <35.802391, 36.861706, 24.434132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772396, 36.247669, 24.796507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106316, 36.146194, 24.601057>,  <36.306667, 36.085312, 24.483788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106316, 36.146194, 24.601057>,  <35.772396, 36.247669, 24.796507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106316, 36.146194, 24.601057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202299, -0.684089, 0.700783,
		-0.512039, -0.683862, -0.519759,
		0.834801, -0.253682, -0.488625,
		36.356754, 36.070091, 24.454470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870953, 35.552589, 24.916828>,  <35.772396, 36.247669, 24.796507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870953, 35.552589, 24.916828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236771, 35.634380, 24.777229>,  <36.456261, 35.683456, 24.693470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236771, 35.634380, 24.777229>,  <35.870953, 35.552589, 24.916828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236771, 35.634380, 24.777229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403641, -0.517160, 0.754731,
		-0.026160, -0.831104, -0.555502,
		0.914544, 0.204480, -0.348997,
		36.511135, 35.695724, 24.672531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235802, 34.815083, 24.878809>,  <35.870953, 35.552589, 24.916828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235802, 34.815083, 24.878809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476925, 35.131939, 24.917048>,  <36.621597, 35.322052, 24.939991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476925, 35.131939, 24.917048>,  <36.235802, 34.815083, 24.878809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476925, 35.131939, 24.917048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394073, -0.399762, 0.827585,
		0.693778, -0.461203, -0.553140,
		0.602809, 0.792138, 0.095598,
		36.657768, 35.369579, 24.945726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875530, 34.548187, 25.086720>,  <36.235802, 34.815083, 24.878809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875530, 34.548187, 25.086720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908394, 34.934452, 25.185314>,  <36.928112, 35.166210, 25.244471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908394, 34.934452, 25.185314>,  <36.875530, 34.548187, 25.086720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908394, 34.934452, 25.185314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534716, -0.251423, 0.806762,
		0.841028, 0.065515, -0.537010,
		0.082162, 0.965657, 0.246486,
		36.933041, 35.224148, 25.259260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609528, 34.486675, 25.245846>,  <36.875530, 34.548187, 25.086720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609528, 34.486675, 25.245846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498009, 34.838741, 25.399511>,  <37.431099, 35.049980, 25.491711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498009, 34.838741, 25.399511>,  <37.609528, 34.486675, 25.245846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498009, 34.838741, 25.399511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693477, -0.092221, 0.714553,
		0.664353, 0.465621, -0.584664,
		-0.278793, 0.880166, 0.384165,
		37.414371, 35.102791, 25.514761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163387, 34.963062, 25.301397>,  <37.609528, 34.486675, 25.245846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163387, 34.963062, 25.301397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900982, 35.072315, 25.582834>,  <37.743538, 35.137867, 25.751698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900982, 35.072315, 25.582834>,  <38.163387, 34.963062, 25.301397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900982, 35.072315, 25.582834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737986, 0.036758, 0.673814,
		0.158174, 0.961275, -0.225678,
		-0.656016, 0.273128, 0.703593,
		37.704178, 35.154255, 25.793913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552818, 35.503757, 25.696104>,  <38.163387, 34.963062, 25.301397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552818, 35.503757, 25.696104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273174, 35.334175, 25.926409>,  <38.105389, 35.232426, 26.064592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273174, 35.334175, 25.926409>,  <38.552818, 35.503757, 25.696104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273174, 35.334175, 25.926409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694501, -0.211154, 0.687810,
		-0.170024, 0.880726, 0.442056,
		-0.699114, -0.423953, 0.575764,
		38.063438, 35.206989, 26.099138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542618, 35.833935, 26.394323>,  <38.552818, 35.503757, 25.696104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542618, 35.833935, 26.394323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379654, 35.470394, 26.430132>,  <38.281876, 35.252270, 26.451616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379654, 35.470394, 26.430132>,  <38.542618, 35.833935, 26.394323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379654, 35.470394, 26.430132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450986, -0.114980, 0.885094,
		-0.794123, 0.400966, 0.456722,
		-0.407407, -0.908849, 0.089522,
		38.257431, 35.197739, 26.456989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351227, 35.725937, 27.213900>,  <38.542618, 35.833935, 26.394323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351227, 35.725937, 27.213900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317924, 35.358315, 27.059809>,  <38.297943, 35.137741, 26.967354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317924, 35.358315, 27.059809>,  <38.351227, 35.725937, 27.213900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317924, 35.358315, 27.059809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400304, -0.384853, 0.831652,
		-0.912593, -0.084972, 0.399943,
		-0.083252, -0.919058, -0.385228,
		38.292950, 35.082596, 26.944241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075100, 35.266010, 27.761490>,  <38.351227, 35.725937, 27.213900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075100, 35.266010, 27.761490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251286, 35.013023, 27.506626>,  <38.356998, 34.861229, 27.353708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251286, 35.013023, 27.506626>,  <38.075100, 35.266010, 27.761490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251286, 35.013023, 27.506626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306295, -0.561264, 0.768873,
		-0.843904, -0.533820, -0.053494,
		0.440465, -0.632470, -0.637160,
		38.383427, 34.823284, 27.315477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994732, 34.626862, 28.042046>,  <38.075100, 35.266010, 27.761490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994732, 34.626862, 28.042046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.300735, 34.600502, 27.785788>,  <38.484337, 34.584686, 27.632032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.300735, 34.600502, 27.785788>,  <37.994732, 34.626862, 28.042046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300735, 34.600502, 27.785788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487846, -0.590119, 0.643246,
		-0.420444, -0.804622, -0.419297,
		0.765005, -0.065897, -0.640644,
		38.530235, 34.580734, 27.593594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081928, 33.893692, 27.950193>,  <37.994732, 34.626862, 28.042046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081928, 33.893692, 27.950193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.436604, 34.049465, 27.850485>,  <38.649406, 34.142929, 27.790661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.436604, 34.049465, 27.850485>,  <38.081928, 33.893692, 27.950193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436604, 34.049465, 27.850485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457563, -0.661444, 0.594245,
		0.066538, -0.640964, -0.764681,
		0.886684, 0.389430, -0.249271,
		38.702610, 34.166294, 27.775703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477768, 33.291996, 27.661644>,  <38.081928, 33.893692, 27.950193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477768, 33.291996, 27.661644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756645, 33.564754, 27.750130>,  <38.923973, 33.728409, 27.803221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756645, 33.564754, 27.750130>,  <38.477768, 33.291996, 27.661644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756645, 33.564754, 27.750130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521690, -0.694247, 0.495843,
		0.491693, -0.230292, -0.839764,
		0.697193, 0.681899, 0.221215,
		38.965801, 33.769325, 27.816494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161167, 32.908176, 27.536077>,  <38.477768, 33.291996, 27.661644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161167, 32.908176, 27.536077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.277317, 33.211189, 27.769943>,  <39.347008, 33.392998, 27.910263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.277317, 33.211189, 27.769943>,  <39.161167, 32.908176, 27.536077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277317, 33.211189, 27.769943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641847, -0.607345, 0.468149,
		0.709730, 0.239328, -0.662575,
		0.290371, 0.757531, 0.584663,
		39.364429, 33.438450, 27.945343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889648, 32.924179, 27.595200>,  <39.161167, 32.908176, 27.536077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889648, 32.924179, 27.595200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762463, 33.128757, 27.914528>,  <39.686150, 33.251507, 28.106125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762463, 33.128757, 27.914528>,  <39.889648, 32.924179, 27.595200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762463, 33.128757, 27.914528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433578, -0.670374, 0.602170,
		0.843153, 0.537604, -0.008597,
		-0.317966, 0.511449, 0.798322,
		39.667072, 33.282192, 28.154024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436565, 32.943737, 28.095232>,  <39.889648, 32.924179, 27.595200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.436565, 32.943737, 28.095232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139912, 33.053722, 28.339977>,  <39.961922, 33.119713, 28.486824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139912, 33.053722, 28.339977>,  <40.436565, 32.943737, 28.095232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139912, 33.053722, 28.339977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381106, -0.577921, 0.721641,
		0.552035, 0.768376, 0.323813,
		-0.741631, 0.274964, 0.611865,
		39.917423, 33.136211, 28.523537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.729465, 33.262756, 28.808632>,  <40.436565, 32.943737, 28.095232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.729465, 33.262756, 28.808632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365025, 33.120914, 28.892673>,  <40.146358, 33.035809, 28.943098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365025, 33.120914, 28.892673>,  <40.729465, 33.262756, 28.808632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365025, 33.120914, 28.892673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381323, -0.531660, 0.756261,
		-0.156471, 0.769150, 0.619617,
		-0.911103, -0.354607, 0.210105,
		40.091694, 33.014534, 28.955706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.839718, 33.226055, 29.485462>,  <40.729465, 33.262756, 28.808632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.839718, 33.226055, 29.485462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484142, 33.048489, 29.440334>,  <40.270798, 32.941948, 29.413258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484142, 33.048489, 29.440334>,  <40.839718, 33.226055, 29.485462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484142, 33.048489, 29.440334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188460, -0.578988, 0.793257,
		-0.417462, 0.683893, 0.598344,
		-0.888937, -0.443919, -0.112819,
		40.217461, 32.915314, 29.406488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486237, 33.265217, 30.204233>,  <40.839718, 33.226055, 29.485462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.486237, 33.265217, 30.204233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.361221, 32.954575, 29.985435>,  <40.286213, 32.768188, 29.854156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.361221, 32.954575, 29.985435>,  <40.486237, 33.265217, 30.204233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361221, 32.954575, 29.985435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353012, -0.629556, 0.692129,
		-0.881875, 0.023220, 0.470911,
		-0.312536, -0.776608, -0.546992,
		40.267460, 32.721592, 29.821337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779030, 32.862881, 30.467985>,  <40.486237, 33.265217, 30.204233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779030, 32.862881, 30.467985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.081089, 32.688618, 30.272045>,  <40.262325, 32.584061, 30.154482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.081089, 32.688618, 30.272045>,  <39.779030, 32.862881, 30.467985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.081089, 32.688618, 30.272045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188424, -0.571454, 0.798709,
		-0.627897, -0.695440, -0.349440,
		0.755144, -0.435664, -0.489852,
		40.307632, 32.557919, 30.125090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825150, 32.063316, 30.492447>,  <39.779030, 32.862881, 30.467985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825150, 32.063316, 30.492447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.183121, 32.241161, 30.477299>,  <40.397903, 32.347866, 30.468210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.183121, 32.241161, 30.477299>,  <39.825150, 32.063316, 30.492447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183121, 32.241161, 30.477299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290586, -0.516283, 0.805612,
		0.338632, -0.731965, -0.591231,
		0.894923, 0.444610, -0.037869,
		40.451599, 32.374546, 30.465939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489090, 31.661648, 30.417542>,  <39.825150, 32.063316, 30.492447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489090, 31.661648, 30.417542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.591789, 31.979864, 30.637066>,  <40.653408, 32.170795, 30.768780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.591789, 31.979864, 30.637066>,  <40.489090, 31.661648, 30.417542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.591789, 31.979864, 30.637066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422190, -0.603121, 0.676758,
		0.869388, 0.057946, -0.490720,
		0.256748, 0.795542, 0.548811,
		40.668812, 32.218525, 30.801708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.217506, 31.977524, 30.275589>,  <40.489090, 31.661648, 30.417542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.217506, 31.977524, 30.275589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054050, 32.017204, 30.638506>,  <40.955978, 32.041012, 30.856256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054050, 32.017204, 30.638506>,  <41.217506, 31.977524, 30.275589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.054050, 32.017204, 30.638506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675707, -0.635368, 0.373802,
		0.613545, 0.765812, 0.192603,
		-0.408635, 0.099201, 0.907291,
		40.931461, 32.046963, 30.910694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.748436, 32.121094, 30.825699>,  <41.217506, 31.977524, 30.275589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.748436, 32.121094, 30.825699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.427265, 31.962194, 31.003468>,  <41.234562, 31.866856, 31.110128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.427265, 31.962194, 31.003468>,  <41.748436, 32.121094, 30.825699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.427265, 31.962194, 31.003468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595414, -0.569796, 0.566404,
		0.028229, 0.719395, 0.694028,
		-0.802922, -0.397245, 0.444423,
		41.186390, 31.843021, 31.136795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.598209, 32.350269, 31.552126>,  <41.748436, 32.121094, 30.825699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.598209, 32.350269, 31.552126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510002, 31.987776, 31.407845>,  <41.457077, 31.770279, 31.321276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510002, 31.987776, 31.407845>,  <41.598209, 32.350269, 31.552126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.510002, 31.987776, 31.407845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711882, -0.402335, 0.575630,
		-0.666781, -0.129844, 0.733855,
		-0.220514, -0.906238, -0.360703,
		41.443848, 31.715904, 31.299633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.568268, 31.910711, 32.211372>,  <41.598209, 32.350269, 31.552126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.568268, 31.910711, 32.211372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.432831, 32.050930, 32.560650>,  <41.351570, 32.135059, 32.770218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.432831, 32.050930, 32.560650>,  <41.568268, 31.910711, 32.211372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.432831, 32.050930, 32.560650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511732, -0.710164, 0.483526,
		0.789612, 0.610560, 0.061069,
		-0.338591, 0.350547, 0.873197,
		41.331253, 32.156094, 32.822609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.006554, 31.812843, 31.912331>,  <41.568268, 31.910711, 32.211372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.006554, 31.812843, 31.912331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694256, 31.753229, 31.669603>,  <40.506878, 31.717461, 31.523968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694256, 31.753229, 31.669603>,  <41.006554, 31.812843, 31.912331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.694256, 31.753229, 31.669603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620372, 0.068820, 0.781283,
		-0.074677, 0.986434, -0.146187,
		-0.780745, -0.149035, -0.606817,
		40.460033, 31.708519, 31.487558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495682, 32.330368, 32.027660>,  <41.006554, 31.812843, 31.912331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495682, 32.330368, 32.027660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.306522, 32.008263, 31.884598>,  <40.193027, 31.815001, 31.798759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.306522, 32.008263, 31.884598>,  <40.495682, 32.330368, 32.027660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306522, 32.008263, 31.884598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650821, 0.045599, 0.757860,
		-0.593967, 0.591163, -0.545645,
		-0.472900, -0.805262, -0.357658,
		40.164654, 31.766684, 31.777300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712109, 32.430031, 31.583490>,  <40.495682, 32.330368, 32.027660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.712109, 32.430031, 31.583490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.817451, 32.112816, 31.803213>,  <39.880657, 31.922487, 31.935047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.817451, 32.112816, 31.803213>,  <39.712109, 32.430031, 31.583490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817451, 32.112816, 31.803213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710161, 0.226012, 0.666775,
		-0.652926, -0.565699, -0.503660,
		0.263361, -0.793034, 0.549306,
		39.896461, 31.874905, 31.968004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176140, 31.981180, 31.684170>,  <39.712109, 32.430031, 31.583490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176140, 31.981180, 31.684170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.407448, 31.961058, 32.009888>,  <39.546234, 31.948984, 32.205318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.407448, 31.961058, 32.009888>,  <39.176140, 31.981180, 31.684170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407448, 31.961058, 32.009888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757865, 0.336422, 0.558982,
		-0.302068, -0.940367, 0.156415,
		0.578269, -0.050309, 0.814294,
		39.580929, 31.945965, 32.254177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935177, 31.538792, 32.160091>,  <39.176140, 31.981180, 31.684170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935177, 31.538792, 32.160091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132362, 31.838409, 32.337139>,  <39.250675, 32.018181, 32.443367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132362, 31.838409, 32.337139>,  <38.935177, 31.538792, 32.160091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132362, 31.838409, 32.337139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681541, 0.016228, 0.731600,
		0.540818, -0.662320, 0.518505,
		0.492967, 0.749045, 0.442623,
		39.280254, 32.063122, 32.469925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153286, 31.458910, 32.854130>,  <38.935177, 31.538792, 32.160091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153286, 31.458910, 32.854130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047203, 31.836832, 32.777184>,  <38.983551, 32.063587, 32.731018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047203, 31.836832, 32.777184>,  <39.153286, 31.458910, 32.854130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047203, 31.836832, 32.777184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575536, 0.004941, 0.817762,
		0.773578, 0.327589, 0.542460,
		-0.265210, 0.944807, -0.192361,
		38.967640, 32.120274, 32.719475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386631, 31.965378, 33.315193>,  <39.153286, 31.458910, 32.854130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386631, 31.965378, 33.315193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037861, 32.093777, 33.167294>,  <38.828598, 32.170815, 33.078556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037861, 32.093777, 33.167294>,  <39.386631, 31.965378, 33.315193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037861, 32.093777, 33.167294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427711, -0.131705, 0.894269,
		0.238361, 0.937878, 0.252130,
		-0.871922, 0.320998, -0.369747,
		38.776283, 32.190075, 33.056370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123653, 32.468948, 33.738239>,  <39.386631, 31.965378, 33.315193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123653, 32.468948, 33.738239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825413, 32.285801, 33.544563>,  <38.646469, 32.175911, 33.428356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825413, 32.285801, 33.544563>,  <39.123653, 32.468948, 33.738239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825413, 32.285801, 33.544563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475471, -0.143567, 0.867938,
		-0.466914, 0.877352, -0.110659,
		-0.745600, -0.457867, -0.484189,
		38.601734, 32.148441, 33.399307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429398, 32.867085, 33.798702>,  <39.123653, 32.468948, 33.738239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429398, 32.867085, 33.798702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.380821, 32.472569, 33.754013>,  <38.351677, 32.235859, 33.727200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.380821, 32.472569, 33.754013>,  <38.429398, 32.867085, 33.798702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380821, 32.472569, 33.754013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376536, -0.058371, 0.924562,
		-0.918408, 0.154345, -0.364285,
		-0.121438, -0.986291, -0.111725,
		38.344391, 32.176682, 33.720497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758545, 32.664520, 33.953575>,  <38.429398, 32.867085, 33.798702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758545, 32.664520, 33.953575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959381, 32.320850, 33.993038>,  <38.079884, 32.114651, 34.016716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959381, 32.320850, 33.993038>,  <37.758545, 32.664520, 33.953575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959381, 32.320850, 33.993038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357301, -0.102192, 0.928382,
		-0.787557, -0.501379, -0.358292,
		0.502086, -0.859171, 0.098661,
		38.110008, 32.063099, 34.022636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233379, 32.153622, 34.116898>,  <37.758545, 32.664520, 33.953575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233379, 32.153622, 34.116898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606388, 32.080235, 34.241310>,  <37.830193, 32.036201, 34.315956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606388, 32.080235, 34.241310>,  <37.233379, 32.153622, 34.116898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606388, 32.080235, 34.241310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311975, 0.024458, 0.949775,
		-0.181856, -0.982722, -0.034429,
		0.932523, -0.183463, 0.311033,
		37.886147, 32.025196, 34.334621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284870, 31.406385, 34.339432>,  <37.233379, 32.153622, 34.116898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284870, 31.406385, 34.339432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464245, 31.714500, 34.520790>,  <37.571869, 31.899368, 34.629604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464245, 31.714500, 34.520790>,  <37.284870, 31.406385, 34.339432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464245, 31.714500, 34.520790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477578, -0.222287, 0.850005,
		0.755530, -0.597703, 0.268190,
		0.448434, 0.770286, 0.453394,
		37.598774, 31.945585, 34.656807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606541, 31.278336, 34.999279>,  <37.284870, 31.406385, 34.339432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606541, 31.278336, 34.999279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491714, 31.660734, 35.023499>,  <37.422817, 31.890173, 35.038029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491714, 31.660734, 35.023499>,  <37.606541, 31.278336, 34.999279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491714, 31.660734, 35.023499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381485, -0.172073, 0.908218,
		0.878671, 0.237619, 0.414094,
		-0.287064, 0.955996, 0.060548,
		37.405594, 31.947533, 35.041664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871754, 31.763006, 35.552383>,  <37.606541, 31.278336, 34.999279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871754, 31.763006, 35.552383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492554, 31.856922, 35.466427>,  <37.265034, 31.913271, 35.414852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492554, 31.856922, 35.466427>,  <37.871754, 31.763006, 35.552383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492554, 31.856922, 35.466427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247632, -0.119945, 0.961401,
		0.199953, 0.964618, 0.171849,
		-0.947996, 0.234790, -0.214887,
		37.208157, 31.927359, 35.401962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704849, 32.221855, 35.999805>,  <37.871754, 31.763006, 35.552383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704849, 32.221855, 35.999805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340839, 32.102345, 35.884853>,  <37.122433, 32.030640, 35.815884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340839, 32.102345, 35.884853>,  <37.704849, 32.221855, 35.999805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340839, 32.102345, 35.884853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265666, -0.111859, 0.957554,
		-0.318239, 0.947746, 0.022421,
		-0.910025, -0.298774, -0.287382,
		37.067833, 32.012711, 35.798637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279350, 32.691704, 36.184444>,  <37.704849, 32.221855, 35.999805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279350, 32.691704, 36.184444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171124, 32.307701, 36.213226>,  <37.106186, 32.077297, 36.230495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171124, 32.307701, 36.213226>,  <37.279350, 32.691704, 36.184444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171124, 32.307701, 36.213226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037701, 0.085247, 0.995646,
		-0.961963, 0.266676, -0.059258,
		-0.270567, -0.960009, 0.071950,
		37.089954, 32.019699, 36.234810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976078, 32.735031, 36.893566>,  <37.279350, 32.691704, 36.184444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976078, 32.735031, 36.893566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973492, 32.351955, 36.778473>,  <36.971939, 32.122108, 36.709415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973492, 32.351955, 36.778473>,  <36.976078, 32.735031, 36.893566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973492, 32.351955, 36.778473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001250, -0.287746, 0.957706,
		-0.999978, 0.005834, 0.003058,
		-0.006467, -0.957689, -0.287732,
		36.971550, 32.064648, 36.692154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556858, 32.415600, 37.313705>,  <36.976078, 32.735031, 36.893566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556858, 32.415600, 37.313705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735512, 32.098755, 37.147293>,  <36.842705, 31.908648, 37.047447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735512, 32.098755, 37.147293>,  <36.556858, 32.415600, 37.313705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735512, 32.098755, 37.147293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007495, -0.461656, 0.887027,
		-0.894687, -0.399291, -0.200253,
		0.446631, -0.792111, -0.416031,
		36.869499, 31.861122, 37.022484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138947, 31.978121, 37.517544>,  <36.556858, 32.415600, 37.313705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138947, 31.978121, 37.517544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499031, 31.820276, 37.443890>,  <36.715080, 31.725571, 37.399696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499031, 31.820276, 37.443890>,  <36.138947, 31.978121, 37.517544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499031, 31.820276, 37.443890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040422, -0.345313, 0.937616,
		-0.433580, -0.851493, -0.294903,
		0.900208, -0.394611, -0.184140,
		36.769093, 31.701893, 37.388649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136997, 31.318682, 37.657539>,  <36.138947, 31.978121, 37.517544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136997, 31.318682, 37.657539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.520439, 31.427233, 37.692013>,  <36.750504, 31.492363, 37.712696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.520439, 31.427233, 37.692013>,  <36.136997, 31.318682, 37.657539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520439, 31.427233, 37.692013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017722, -0.358951, 0.933188,
		0.284182, -0.893033, -0.348903,
		0.958607, 0.271378, 0.086181,
		36.808022, 31.508646, 37.717869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616035, 30.715969, 37.750423>,  <36.136997, 31.318682, 37.657539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616035, 30.715969, 37.750423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.782810, 31.023560, 37.944263>,  <36.882877, 31.208115, 38.060566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.782810, 31.023560, 37.944263>,  <36.616035, 30.715969, 37.750423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782810, 31.023560, 37.944263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005663, -0.530942, 0.847389,
		0.908916, -0.356055, -0.217017,
		0.416941, 0.768976, 0.484598,
		36.907894, 31.254253, 38.089642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925152, 30.466337, 38.231190>,  <36.616035, 30.715969, 37.750423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925152, 30.466337, 38.231190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742527, 30.170815, 38.429466>,  <36.632954, 29.993500, 38.548431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742527, 30.170815, 38.429466>,  <36.925152, 30.466337, 38.231190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742527, 30.170815, 38.429466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627498, -0.127566, -0.768097,
		0.630711, -0.661731, -0.405359,
		-0.456564, -0.738809, 0.495692,
		36.605556, 29.949171, 38.578175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463867, 30.196796, 38.577560>,  <36.925152, 30.466337, 38.231190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463867, 30.196796, 38.577560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441948, 30.591000, 38.513351>,  <37.428795, 30.827522, 38.474827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441948, 30.591000, 38.513351>,  <37.463867, 30.196796, 38.577560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441948, 30.591000, 38.513351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529146, 0.164999, 0.832334,
		0.846759, -0.039326, -0.530521,
		-0.054803, 0.985510, -0.160524,
		37.425507, 30.886652, 38.465195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160027, 30.473717, 38.614346>,  <37.463867, 30.196796, 38.577560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160027, 30.473717, 38.614346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.884609, 30.738714, 38.732334>,  <37.719360, 30.897713, 38.803127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.884609, 30.738714, 38.732334>,  <38.160027, 30.473717, 38.614346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884609, 30.738714, 38.732334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550167, 0.212204, 0.807642,
		0.472465, 0.718380, -0.510595,
		-0.688544, 0.662495, 0.294970,
		37.678047, 30.937462, 38.820824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457623, 30.937077, 39.063198>,  <38.160027, 30.473717, 38.614346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457623, 30.937077, 39.063198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.078815, 31.049578, 39.125237>,  <37.851532, 31.117079, 39.162460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.078815, 31.049578, 39.125237>,  <38.457623, 30.937077, 39.063198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078815, 31.049578, 39.125237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230393, 0.258422, 0.938156,
		0.223781, 0.924183, -0.309529,
		-0.947017, 0.281255, 0.155095,
		37.794712, 31.133955, 39.171764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453457, 31.642204, 39.431519>,  <38.457623, 30.937077, 39.063198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453457, 31.642204, 39.431519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094975, 31.485104, 39.514042>,  <37.879887, 31.390842, 39.563557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094975, 31.485104, 39.514042>,  <38.453457, 31.642204, 39.431519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094975, 31.485104, 39.514042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125361, 0.221885, 0.966981,
		-0.425561, 0.892475, -0.149618,
		-0.896204, -0.392753, 0.206307,
		37.826115, 31.367277, 39.575935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034943, 32.091129, 39.690765>,  <38.453457, 31.642204, 39.431519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034943, 32.091129, 39.690765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940426, 31.726545, 39.825466>,  <37.883717, 31.507795, 39.906288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940426, 31.726545, 39.825466>,  <38.034943, 32.091129, 39.690765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940426, 31.726545, 39.825466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301874, 0.260562, 0.917050,
		-0.923601, 0.318347, 0.213578,
		-0.236290, -0.911462, 0.336756,
		37.869537, 31.453106, 39.926495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440693, 31.908072, 40.188656>,  <38.034943, 32.091129, 39.690765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440693, 31.908072, 40.188656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651096, 32.145210, 40.432571>,  <37.777340, 32.287495, 40.578922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651096, 32.145210, 40.432571>,  <37.440693, 31.908072, 40.188656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651096, 32.145210, 40.432571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043853, 0.697137, -0.715595,
		-0.849345, 0.403153, 0.340705,
		0.526013, 0.592847, 0.609790,
		37.808899, 32.323063, 40.615509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033642, 32.483761, 40.316597>,  <37.440693, 31.908072, 40.188656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033642, 32.483761, 40.316597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.429867, 32.537189, 40.304306>,  <37.667603, 32.569248, 40.296932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.429867, 32.537189, 40.304306>,  <37.033642, 32.483761, 40.316597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429867, 32.537189, 40.304306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111975, 0.659379, -0.743425,
		-0.079045, 0.739849, 0.668113,
		0.990562, 0.133576, -0.030724,
		37.727036, 32.577263, 40.295090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080635, 33.185974, 40.503658>,  <37.033642, 32.483761, 40.316597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080635, 33.185974, 40.503658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.351936, 33.000065, 40.275990>,  <37.514717, 32.888519, 40.139389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.351936, 33.000065, 40.275990>,  <37.080635, 33.185974, 40.503658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351936, 33.000065, 40.275990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194577, 0.633322, -0.749028,
		0.708597, 0.618780, 0.339120,
		0.678255, -0.464774, -0.569170,
		37.555412, 32.860634, 40.105240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698818, 33.626102, 40.236614>,  <37.080635, 33.185974, 40.503658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698818, 33.626102, 40.236614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596874, 33.341164, 39.975044>,  <37.535706, 33.170200, 39.818104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596874, 33.341164, 39.975044>,  <37.698818, 33.626102, 40.236614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596874, 33.341164, 39.975044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004834, 0.675306, -0.737522,
		0.966965, -0.191127, -0.168667,
		-0.254862, -0.712343, -0.653921,
		37.520416, 33.127460, 39.778870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146595, 33.662457, 39.637768>,  <37.698818, 33.626102, 40.236614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146595, 33.662457, 39.637768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788601, 33.527748, 39.520748>,  <37.573803, 33.446922, 39.450535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788601, 33.527748, 39.520748>,  <38.146595, 33.662457, 39.637768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788601, 33.527748, 39.520748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066272, 0.548145, -0.833754,
		0.441143, -0.765586, -0.468264,
		-0.894986, -0.336772, -0.292547,
		37.520103, 33.426716, 39.432983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416126, 34.226631, 39.197601>,  <38.146595, 33.662457, 39.637768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416126, 34.226631, 39.197601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794464, 34.188084, 39.321590>,  <39.021469, 34.164955, 39.395985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794464, 34.188084, 39.321590>,  <38.416126, 34.226631, 39.197601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794464, 34.188084, 39.321590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007894, -0.961466, -0.274812,
		0.324511, 0.257483, -0.910162,
		0.945849, -0.096364, 0.309974,
		39.078220, 34.159176, 39.414581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950039, 34.052067, 38.624916>,  <38.416126, 34.226631, 39.197601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950039, 34.052067, 38.624916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024944, 33.901543, 38.987865>,  <39.069889, 33.811230, 39.205635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024944, 33.901543, 38.987865>,  <38.950039, 34.052067, 38.624916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024944, 33.901543, 38.987865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069648, -0.926474, -0.369859,
		0.979838, 0.006064, -0.199703,
		0.187262, -0.376310, 0.907372,
		39.081123, 33.788651, 39.260078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543728, 33.577324, 38.613380>,  <38.950039, 34.052067, 38.624916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543728, 33.577324, 38.613380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304893, 33.483486, 38.920223>,  <39.161591, 33.427185, 39.104328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304893, 33.483486, 38.920223>,  <39.543728, 33.577324, 38.613380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.304893, 33.483486, 38.920223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025796, -0.950173, -0.310653,
		0.801760, -0.205276, 0.561287,
		-0.597089, -0.234590, 0.767106,
		39.125767, 33.413109, 39.150356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175766, 33.325367, 38.049042>,  <39.543728, 33.577324, 38.613380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175766, 33.325367, 38.049042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867798, 33.338943, 38.303936>,  <38.683018, 33.347088, 38.456875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867798, 33.338943, 38.303936>,  <39.175766, 33.325367, 38.049042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867798, 33.338943, 38.303936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371904, 0.787607, -0.491287,
		-0.518570, -0.615243, -0.593769,
		-0.769917, 0.033942, 0.637240,
		38.636822, 33.349125, 38.495110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241459, 33.305523, 37.305531>,  <39.175766, 33.325367, 38.049042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241459, 33.305523, 37.305531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366909, 33.400505, 36.937778>,  <39.442181, 33.457493, 36.717129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366909, 33.400505, 36.937778>,  <39.241459, 33.305523, 37.305531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366909, 33.400505, 36.937778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887022, -0.418799, 0.194420,
		-0.338868, -0.876483, -0.341975,
		0.313624, 0.237457, -0.919377,
		39.460995, 33.471741, 36.661964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457157, 32.768723, 36.897289>,  <39.241459, 33.305523, 37.305531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457157, 32.768723, 36.897289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.685040, 33.046696, 36.721786>,  <39.821770, 33.213478, 36.616486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.685040, 33.046696, 36.721786>,  <39.457157, 32.768723, 36.897289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685040, 33.046696, 36.721786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715905, -0.681819, -0.150338,
		-0.403625, -0.228457, -0.885943,
		0.569707, 0.694931, -0.438753,
		39.855953, 33.255177, 36.590160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855251, 32.560883, 36.332912>,  <39.457157, 32.768723, 36.897289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855251, 32.560883, 36.332912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058994, 32.865620, 36.492989>,  <40.181240, 33.048462, 36.589035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058994, 32.865620, 36.492989>,  <39.855251, 32.560883, 36.332912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058994, 32.865620, 36.492989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819051, -0.571860, 0.046174,
		0.264029, 0.304255, -0.915269,
		0.509357, 0.761843, 0.400188,
		40.211800, 33.094173, 36.613045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486458, 32.831764, 35.909771>,  <39.855251, 32.560883, 36.332912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.486458, 32.831764, 35.909771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.558704, 32.868927, 36.301434>,  <40.602055, 32.891224, 36.536430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.558704, 32.868927, 36.301434>,  <40.486458, 32.831764, 35.909771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.558704, 32.868927, 36.301434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844192, -0.525483, -0.105865,
		0.504695, 0.845716, -0.173339,
		0.180618, 0.092902, 0.979156,
		40.612888, 32.896797, 36.595181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.164524, 33.080303, 35.960793>,  <40.486458, 32.831764, 35.909771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.164524, 33.080303, 35.960793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.067730, 32.924324, 36.316181>,  <41.009655, 32.830734, 36.529415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.067730, 32.924324, 36.316181>,  <41.164524, 33.080303, 35.960793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.067730, 32.924324, 36.316181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915894, -0.394064, 0.076494,
		0.320287, 0.832257, 0.452509,
		-0.241981, -0.389950, 0.888473,
		40.995136, 32.807339, 36.582722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.819527, 33.107613, 35.754463>,  <41.164524, 33.080303, 35.960793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.819527, 33.107613, 35.754463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.895638, 32.993893, 36.130329>,  <41.941303, 32.925659, 36.355846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.895638, 32.993893, 36.130329>,  <41.819527, 33.107613, 35.754463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.895638, 32.993893, 36.130329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928783, -0.257955, -0.266123,
		0.318050, 0.923380, 0.214971,
		0.190280, -0.284302, 0.939663,
		41.952721, 32.908604, 36.412228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.582237, 33.235432, 35.856567>,  <41.819527, 33.107613, 35.754463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.582237, 33.235432, 35.856567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.442074, 32.978359, 36.129086>,  <42.357975, 32.824116, 36.292599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.442074, 32.978359, 36.129086>,  <42.582237, 33.235432, 35.856567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.442074, 32.978359, 36.129086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864153, -0.502367, -0.029435,
		0.361179, 0.578431, 0.731415,
		-0.350413, -0.642685, 0.681298,
		42.336948, 32.785553, 36.333473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.168468, 33.652180, 36.225456>,  <42.582237, 33.235432, 35.856567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.168468, 33.652180, 36.225456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.389256, 33.599369, 36.554794>,  <43.521729, 33.567684, 36.752399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.389256, 33.599369, 36.554794>,  <43.168468, 33.652180, 36.225456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.389256, 33.599369, 36.554794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779400, 0.432684, -0.453123,
		-0.296425, 0.891826, 0.341730,
		0.551968, -0.132027, 0.823347,
		43.554848, 33.559761, 36.801800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.062546, 34.264782, 36.691097>,  <43.168468, 33.652180, 36.225456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.062546, 34.264782, 36.691097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.226139, 34.605259, 36.822678>,  <43.324295, 34.809544, 36.901627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.226139, 34.605259, 36.822678>,  <43.062546, 34.264782, 36.691097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.226139, 34.605259, 36.822678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505427, 0.088840, -0.858284,
		-0.759788, 0.517282, -0.393881,
		0.408982, 0.851192, 0.328948,
		43.348835, 34.860615, 36.921364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.036495, 34.594448, 36.091625>,  <43.062546, 34.264782, 36.691097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.036495, 34.594448, 36.091625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.283550, 34.774311, 36.349720>,  <43.431786, 34.882229, 36.504578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.283550, 34.774311, 36.349720>,  <43.036495, 34.594448, 36.091625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.283550, 34.774311, 36.349720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567020, 0.313918, -0.761540,
		-0.544984, 0.836219, -0.061077,
		0.617641, 0.449659, 0.645233,
		43.468842, 34.909210, 36.543289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.207607, 35.349773, 35.865425>,  <43.036495, 34.594448, 36.091625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.207607, 35.349773, 35.865425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.480412, 35.127087, 36.055130>,  <43.644096, 34.993473, 36.168953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.480412, 35.127087, 36.055130>,  <43.207607, 35.349773, 35.865425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.480412, 35.127087, 36.055130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650026, 0.164269, -0.741945,
		0.335146, 0.814299, 0.473914,
		0.682014, -0.556716, 0.474262,
		43.685017, 34.960072, 36.197407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.846413, 35.791584, 35.948597>,  <43.207607, 35.349773, 35.865425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.846413, 35.791584, 35.948597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.941601, 35.405243, 35.989586>,  <43.998714, 35.173439, 36.014179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.941601, 35.405243, 35.989586>,  <43.846413, 35.791584, 35.948597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.941601, 35.405243, 35.989586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709951, 0.100969, -0.696975,
		0.662829, 0.238609, 0.709735,
		0.237966, -0.965852, 0.102476,
		44.012989, 35.115486, 36.020329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.526222, 35.720528, 36.168266>,  <43.846413, 35.791584, 35.948597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.526222, 35.720528, 36.168266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.370224, 35.432373, 35.938850>,  <44.276623, 35.259480, 35.801201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.370224, 35.432373, 35.938850>,  <44.526222, 35.720528, 36.168266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.370224, 35.432373, 35.938850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581986, 0.289843, -0.759791,
		0.713578, -0.630109, 0.306215,
		-0.389998, -0.720384, -0.573541,
		44.253223, 35.216259, 35.766788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.757187, 36.490261, 36.146763>,  <44.526222, 35.720528, 36.168266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.757187, 36.490261, 36.146763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.885052, 36.868473, 36.171391>,  <44.961773, 37.095398, 36.186169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.885052, 36.868473, 36.171391>,  <44.757187, 36.490261, 36.146763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.885052, 36.868473, 36.171391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943327, -0.311460, -0.114572,
		-0.089155, 0.094704, -0.991505,
		0.319665, 0.945528, 0.061568,
		44.980949, 37.152130, 36.189861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.987247, 36.781898, 35.558613>,  <44.757187, 36.490261, 36.146763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.987247, 36.781898, 35.558613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.194561, 36.957645, 35.852100>,  <45.318947, 37.063095, 36.028191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.194561, 36.957645, 35.852100>,  <44.987247, 36.781898, 35.558613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.194561, 36.957645, 35.852100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843731, -0.402793, -0.354790,
		0.139651, 0.802939, -0.579471,
		0.518282, 0.439371, 0.733714,
		45.350044, 37.089458, 36.072216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.712017, 36.560516, 35.559025>,  <44.987247, 36.781898, 35.558613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.712017, 36.560516, 35.559025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.583210, 36.280178, 35.813622>,  <45.505924, 36.111977, 35.966381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.583210, 36.280178, 35.813622>,  <45.712017, 36.560516, 35.559025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.583210, 36.280178, 35.813622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651772, -0.651730, -0.387868,
		0.686655, 0.289946, 0.666660,
		-0.322022, -0.700842, 0.636492,
		45.486603, 36.069927, 36.004570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.233944, 36.291286, 35.920906>,  <45.712017, 36.560516, 35.559025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.233944, 36.291286, 35.920906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.967373, 35.993454, 35.936275>,  <45.807430, 35.814754, 35.945496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.967373, 35.993454, 35.936275>,  <46.233944, 36.291286, 35.920906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.967373, 35.993454, 35.936275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709805, -0.649385, -0.272901,
		0.228147, -0.154597, 0.961274,
		-0.666427, -0.744579, 0.038422,
		45.767445, 35.770081, 35.947803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.507221, 35.784992, 36.290440>,  <46.233944, 36.291286, 35.920906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.507221, 35.784992, 36.290440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.243458, 35.597084, 36.055664>,  <46.085197, 35.484341, 35.914799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.243458, 35.597084, 36.055664>,  <46.507221, 35.784992, 36.290440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.243458, 35.597084, 36.055664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732798, -0.575983, -0.362285,
		-0.167876, -0.669001, 0.724054,
		-0.659413, -0.469766, -0.586937,
		46.045635, 35.456154, 35.879581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.566025, 35.180077, 36.386478>,  <46.507221, 35.784992, 36.290440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.566025, 35.180077, 36.386478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.430470, 35.199318, 36.010639>,  <46.349136, 35.210861, 35.785137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.430470, 35.199318, 36.010639>,  <46.566025, 35.180077, 36.386478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.430470, 35.199318, 36.010639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857197, -0.395835, -0.329435,
		-0.387772, -0.917061, 0.092910,
		-0.338889, 0.048104, -0.939596,
		46.328804, 35.213749, 35.728760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.654831, 34.586296, 36.034355>,  <46.566025, 35.180077, 36.386478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.654831, 34.586296, 36.034355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.661392, 34.868275, 35.750729>,  <46.665329, 35.037460, 35.580551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.661392, 34.868275, 35.750729>,  <46.654831, 34.586296, 36.034355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.661392, 34.868275, 35.750729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924637, -0.280565, -0.257544,
		-0.380495, -0.651408, -0.656423,
		0.016403, 0.704947, -0.709070,
		46.666313, 35.079758, 35.538006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.935421, 34.341965, 35.451900>,  <46.654831, 34.586296, 36.034355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.935421, 34.341965, 35.451900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.017128, 34.730579, 35.403919>,  <47.066154, 34.963749, 35.375130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.017128, 34.730579, 35.403919>,  <46.935421, 34.341965, 35.451900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.017128, 34.730579, 35.403919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977708, -0.208564, -0.024254,
		-0.048582, -0.112327, -0.992483,
		0.204272, 0.971537, -0.119955,
		47.078411, 35.022041, 35.367931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.350227, 34.543133, 34.861336>,  <46.935421, 34.341965, 35.451900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.350227, 34.543133, 34.861336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.392120, 34.775944, 35.183895>,  <47.417255, 34.915630, 35.377430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.392120, 34.775944, 35.183895>,  <47.350227, 34.543133, 34.861336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.392120, 34.775944, 35.183895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991930, -0.119395, -0.042655,
		0.071453, 0.804354, -0.589838,
		0.104733, 0.582030, 0.806395,
		47.423542, 34.950554, 35.425812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.854122, 34.835609, 34.602146>,  <47.350227, 34.543133, 34.861336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.854122, 34.835609, 34.602146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.834225, 34.903027, 34.995922>,  <47.822289, 34.943478, 35.232185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.834225, 34.903027, 34.995922>,  <47.854122, 34.835609, 34.602146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.834225, 34.903027, 34.995922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992033, -0.105888, 0.068254,
		0.115744, 0.979990, -0.161937,
		-0.049741, 0.168547, 0.984438,
		47.819302, 34.953590, 35.291252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.923050, 35.051174, 23.642899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.603783, 35.117378, 23.874599>,  <31.412222, 35.157101, 24.013620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.603783, 35.117378, 23.874599>,  <31.923050, 35.051174, 23.642899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603783, 35.117378, 23.874599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538128, -0.236370, 0.809041,
		0.270826, 0.957462, 0.099596,
		-0.798168, 0.165514, 0.579252,
		31.364332, 35.167034, 24.048376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162579, 35.445915, 24.098755>,  <31.923050, 35.051174, 23.642899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.162579, 35.445915, 24.098755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.842424, 35.331097, 24.309277>,  <31.650333, 35.262207, 24.435589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.842424, 35.331097, 24.309277>,  <32.162579, 35.445915, 24.098755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842424, 35.331097, 24.309277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590300, -0.224214, 0.775418,
		-0.104575, 0.931307, 0.348899,
		-0.800381, -0.287045, 0.526304,
		31.602310, 35.244984, 24.467167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133614, 35.856754, 24.808771>,  <32.162579, 35.445915, 24.098755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133614, 35.856754, 24.808771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.914864, 35.525108, 24.855225>,  <31.783613, 35.326118, 24.883097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.914864, 35.525108, 24.855225>,  <32.133614, 35.856754, 24.808771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914864, 35.525108, 24.855225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446243, -0.171307, 0.878363,
		-0.708373, 0.532180, 0.463672,
		-0.546878, -0.829119, 0.116132,
		31.750801, 35.276371, 24.890064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.770718, 35.865181, 25.573484>,  <32.133614, 35.856754, 24.808771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.770718, 35.865181, 25.573484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.786915, 35.489796, 25.436281>,  <31.796633, 35.264565, 25.353960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.786915, 35.489796, 25.436281>,  <31.770718, 35.865181, 25.573484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786915, 35.489796, 25.436281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364690, -0.305723, 0.879508,
		-0.930248, -0.160705, 0.329868,
		0.040493, -0.938460, -0.343006,
		31.799063, 35.208260, 25.333380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413689, 35.364513, 26.056274>,  <31.770718, 35.865181, 25.573484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413689, 35.364513, 26.056274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.652805, 35.126068, 25.841875>,  <31.796276, 34.983002, 25.713236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.652805, 35.126068, 25.841875>,  <31.413689, 35.364513, 26.056274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652805, 35.126068, 25.841875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396607, -0.361135, 0.843969,
		-0.696670, -0.717097, 0.020539,
		0.597791, -0.596114, -0.535998,
		31.832142, 34.947235, 25.681076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.468658, 34.864231, 26.480169>,  <31.413689, 35.364513, 26.056274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.468658, 34.864231, 26.480169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.766663, 34.797516, 26.221823>,  <31.945465, 34.757488, 26.066814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.766663, 34.797516, 26.221823>,  <31.468658, 34.864231, 26.480169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.766663, 34.797516, 26.221823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579133, -0.318739, 0.750340,
		-0.331019, -0.933051, -0.140863,
		0.745004, -0.166798, -0.645869,
		31.990166, 34.747478, 26.028063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652727, 34.206978, 26.532145>,  <31.468658, 34.864231, 26.480169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652727, 34.206978, 26.532145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.989202, 34.356537, 26.375887>,  <32.191086, 34.446274, 26.282133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.989202, 34.356537, 26.375887>,  <31.652727, 34.206978, 26.532145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989202, 34.356537, 26.375887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532934, -0.450896, 0.716013,
		0.091579, -0.810488, -0.578552,
		0.841186, 0.373902, -0.390644,
		32.241558, 34.468708, 26.258694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.115231, 33.698654, 26.743116>,  <31.652727, 34.206978, 26.532145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.115231, 33.698654, 26.743116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.339867, 34.019001, 26.659956>,  <32.474648, 34.211208, 26.610060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.339867, 34.019001, 26.659956>,  <32.115231, 33.698654, 26.743116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339867, 34.019001, 26.659956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651192, -0.272789, 0.708191,
		0.510457, -0.533096, -0.674716,
		0.561590, 0.800871, -0.207900,
		32.508343, 34.259262, 26.597586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786423, 33.415783, 26.659393>,  <32.115231, 33.698654, 26.743116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786423, 33.415783, 26.659393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.786671, 33.808853, 26.733521>,  <32.786819, 34.044697, 26.777996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.786671, 33.808853, 26.733521>,  <32.786423, 33.415783, 26.659393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786671, 33.808853, 26.733521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552132, -0.154845, 0.819252,
		0.833756, 0.101816, -0.542664,
		0.000616, 0.982678, 0.185319,
		32.786854, 34.103657, 26.789116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496651, 33.512745, 26.890890>,  <32.786423, 33.415783, 26.659393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496651, 33.512745, 26.890890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.326828, 33.857693, 27.001215>,  <33.224934, 34.064659, 27.067410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.326828, 33.857693, 27.001215>,  <33.496651, 33.512745, 26.890890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326828, 33.857693, 27.001215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624486, 0.058343, 0.778854,
		0.655566, 0.502910, -0.563306,
		-0.424559, 0.862367, 0.275813,
		33.199459, 34.116402, 27.083960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008694, 33.975376, 26.905533>,  <33.496651, 33.512745, 26.890890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008694, 33.975376, 26.905533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.738464, 34.130676, 27.156246>,  <33.576324, 34.223858, 27.306675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.738464, 34.130676, 27.156246>,  <34.008694, 33.975376, 26.905533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738464, 34.130676, 27.156246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684717, 0.015119, 0.728652,
		0.273423, 0.921430, -0.276055,
		-0.675576, 0.388250, 0.626785,
		33.535793, 34.247150, 27.344282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264328, 34.586826, 27.220718>,  <34.008694, 33.975376, 26.905533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264328, 34.586826, 27.220718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.998775, 34.433559, 27.477604>,  <33.839443, 34.341599, 27.631735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.998775, 34.433559, 27.477604>,  <34.264328, 34.586826, 27.220718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998775, 34.433559, 27.477604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667930, 0.082428, 0.739645,
		-0.336345, 0.919993, 0.201207,
		-0.663884, -0.383168, 0.642215,
		33.799610, 34.318607, 27.670269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373245, 35.036694, 27.804047>,  <34.264328, 34.586826, 27.220718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373245, 35.036694, 27.804047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.175079, 34.724213, 27.955984>,  <34.056179, 34.536724, 28.047148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.175079, 34.724213, 27.955984>,  <34.373245, 35.036694, 27.804047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175079, 34.724213, 27.955984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608303, 0.000158, 0.793705,
		-0.620106, 0.624275, 0.475131,
		-0.495415, -0.781205, 0.379846,
		34.026455, 34.489853, 28.069939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409840, 35.114697, 28.534016>,  <34.373245, 35.036694, 27.804047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409840, 35.114697, 28.534016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.305428, 34.732651, 28.477982>,  <34.242779, 34.503426, 28.444361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.305428, 34.732651, 28.477982>,  <34.409840, 35.114697, 28.534016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305428, 34.732651, 28.477982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688492, -0.285919, 0.666505,
		-0.676639, 0.077533, 0.732221,
		-0.261032, -0.955112, -0.140083,
		34.227119, 34.446117, 28.435957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399986, 34.816803, 29.175135>,  <34.409840, 35.114697, 28.534016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399986, 34.816803, 29.175135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.454811, 34.514606, 28.918869>,  <34.487705, 34.333290, 28.765110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.454811, 34.514606, 28.918869>,  <34.399986, 34.816803, 29.175135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454811, 34.514606, 28.918869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617350, -0.440647, 0.651697,
		-0.774656, -0.484839, 0.406003,
		0.137064, -0.755487, -0.640666,
		34.495930, 34.287960, 28.726669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201664, 34.296570, 29.598984>,  <34.399986, 34.816803, 29.175135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201664, 34.296570, 29.598984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.448875, 34.156368, 29.317507>,  <34.597202, 34.072247, 29.148621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.448875, 34.156368, 29.317507>,  <34.201664, 34.296570, 29.598984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448875, 34.156368, 29.317507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545855, -0.452846, 0.704963,
		-0.565756, -0.819805, -0.088550,
		0.618031, -0.350501, -0.703695,
		34.634285, 34.051216, 29.106398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228355, 33.583206, 29.832220>,  <34.201664, 34.296570, 29.598984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228355, 33.583206, 29.832220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.537560, 33.664974, 29.591999>,  <34.723083, 33.714035, 29.447866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.537560, 33.664974, 29.591999>,  <34.228355, 33.583206, 29.832220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537560, 33.664974, 29.591999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601656, -0.536408, 0.591842,
		-0.201156, -0.818827, -0.537641,
		0.773011, 0.204422, -0.600554,
		34.769463, 33.726299, 29.411833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724331, 32.937099, 29.863310>,  <34.228355, 33.583206, 29.832220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724331, 32.937099, 29.863310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.943264, 33.224148, 29.691057>,  <35.074623, 33.396378, 29.587706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.943264, 33.224148, 29.691057>,  <34.724331, 32.937099, 29.863310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943264, 33.224148, 29.691057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832758, -0.415779, 0.365571,
		0.083294, -0.558701, -0.825176,
		0.547336, 0.717622, -0.430631,
		35.107464, 33.439434, 29.561869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220913, 32.605934, 29.435307>,  <34.724331, 32.937099, 29.863310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220913, 32.605934, 29.435307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.352077, 32.971966, 29.529207>,  <35.430779, 33.191586, 29.585548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.352077, 32.971966, 29.529207>,  <35.220913, 32.605934, 29.435307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352077, 32.971966, 29.529207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847975, -0.394642, 0.353831,
		0.416425, 0.083037, -0.905370,
		0.327915, 0.915075, 0.234752,
		35.450451, 33.246487, 29.599632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826511, 32.645641, 29.110470>,  <35.220913, 32.605934, 29.435307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826511, 32.645641, 29.110470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.841682, 32.906040, 29.413723>,  <35.850784, 33.062279, 29.595675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.841682, 32.906040, 29.413723>,  <35.826511, 32.645641, 29.110470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841682, 32.906040, 29.413723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897781, -0.355354, 0.260216,
		0.438805, 0.670769, -0.597929,
		0.037932, 0.650994, 0.758135,
		35.853062, 33.101337, 29.641163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504704, 32.997456, 29.017485>,  <35.826511, 32.645641, 29.110470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504704, 32.997456, 29.017485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.395515, 33.079231, 29.393503>,  <36.330002, 33.128296, 29.619114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.395515, 33.079231, 29.393503>,  <36.504704, 32.997456, 29.017485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395515, 33.079231, 29.393503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940090, -0.150775, 0.305775,
		0.204248, 0.967198, -0.151034,
		-0.272972, 0.204440, 0.940048,
		36.313625, 33.140564, 29.675518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955509, 32.385216, 29.184341>,  <36.504704, 32.997456, 29.017485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955509, 32.385216, 29.184341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.185795, 32.102409, 29.020058>,  <37.323967, 31.932726, 28.921488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.185795, 32.102409, 29.020058>,  <36.955509, 32.385216, 29.184341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185795, 32.102409, 29.020058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286559, 0.295980, -0.911197,
		0.765795, 0.642278, -0.032204,
		0.575710, -0.707018, -0.410710,
		37.358509, 31.890305, 28.896845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223171, 32.759380, 28.590260>,  <36.955509, 32.385216, 29.184341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223171, 32.759380, 28.590260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.273167, 32.366417, 28.534752>,  <37.303162, 32.130638, 28.501448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.273167, 32.366417, 28.534752>,  <37.223171, 32.759380, 28.590260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273167, 32.366417, 28.534752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236363, 0.106354, -0.965827,
		0.963593, 0.153512, -0.218912,
		0.124984, -0.982406, -0.138767,
		37.310661, 32.071693, 28.493122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393692, 32.790573, 27.913839>,  <37.223171, 32.759380, 28.590260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393692, 32.790573, 27.913839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.344910, 32.400196, 27.986128>,  <37.315639, 32.165970, 28.029501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.344910, 32.400196, 27.986128>,  <37.393692, 32.790573, 27.913839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344910, 32.400196, 27.986128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175229, -0.158050, -0.971759,
		0.976944, -0.150183, -0.151738,
		-0.121960, -0.975943, 0.180723,
		37.308323, 32.107414, 28.040344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753773, 32.372211, 27.448664>,  <37.393692, 32.790573, 27.913839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753773, 32.372211, 27.448664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.474789, 32.120213, 27.585276>,  <37.307396, 31.969013, 27.667244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.474789, 32.120213, 27.585276>,  <37.753773, 32.372211, 27.448664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474789, 32.120213, 27.585276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373103, -0.087659, -0.923640,
		0.611832, -0.771631, -0.173916,
		-0.697464, -0.630001, 0.341531,
		37.265549, 31.931211, 27.687735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746574, 31.895264, 26.921900>,  <37.753773, 32.372211, 27.448664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746574, 31.895264, 26.921900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.402813, 31.858536, 27.123095>,  <37.196556, 31.836500, 27.243813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.402813, 31.858536, 27.123095>,  <37.746574, 31.895264, 26.921900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402813, 31.858536, 27.123095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491545, -0.122445, -0.862201,
		0.140755, -0.988219, 0.060097,
		-0.859402, -0.091819, 0.502989,
		37.144993, 31.830990, 27.273991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361858, 31.474314, 26.480108>,  <37.746574, 31.895264, 26.921900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361858, 31.474314, 26.480108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.093941, 31.638634, 26.727535>,  <36.933189, 31.737226, 26.875992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.093941, 31.638634, 26.727535>,  <37.361858, 31.474314, 26.480108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093941, 31.638634, 26.727535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608320, 0.174149, -0.774351,
		-0.425828, -0.894938, 0.133257,
		-0.669789, 0.410803, 0.618566,
		36.893005, 31.761875, 26.913105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716747, 31.147076, 26.316288>,  <37.361858, 31.474314, 26.480108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716747, 31.147076, 26.316288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.619843, 31.495815, 26.486555>,  <36.561699, 31.705059, 26.588717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.619843, 31.495815, 26.486555>,  <36.716747, 31.147076, 26.316288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619843, 31.495815, 26.486555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773633, 0.091177, -0.627039,
		-0.585493, -0.481217, 0.652402,
		-0.242258, 0.871847, 0.425669,
		36.547165, 31.757370, 26.614256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022068, 31.144144, 26.280966>,  <36.716747, 31.147076, 26.316288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022068, 31.144144, 26.280966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.123360, 31.529516, 26.316021>,  <36.184135, 31.760740, 26.337053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.123360, 31.529516, 26.316021>,  <36.022068, 31.144144, 26.280966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123360, 31.529516, 26.316021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823197, 0.262176, -0.503597,
		-0.508157, 0.055381, 0.859482,
		0.253225, 0.963430, 0.087637,
		36.199326, 31.818544, 26.342312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362469, 31.560377, 26.345861>,  <36.022068, 31.144144, 26.280966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362469, 31.560377, 26.345861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.640980, 31.837074, 26.269239>,  <35.808086, 32.003094, 26.223267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.640980, 31.837074, 26.269239>,  <35.362469, 31.560377, 26.345861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640980, 31.837074, 26.269239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678439, 0.547121, -0.490285,
		-0.234348, 0.471332, 0.850251,
		0.696277, 0.691741, -0.191553,
		35.849861, 32.044598, 26.211773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952602, 32.110569, 26.203936>,  <35.362469, 31.560377, 26.345861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952602, 32.110569, 26.203936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.305950, 32.226929, 26.056946>,  <35.517960, 32.296745, 25.968752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.305950, 32.226929, 26.056946>,  <34.952602, 32.110569, 26.203936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305950, 32.226929, 26.056946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458981, 0.695623, -0.552670,
		0.094852, 0.656876, 0.748009,
		0.883368, 0.290900, -0.367475,
		35.570961, 32.314198, 25.946703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041748, 32.910919, 26.331049>,  <34.952602, 32.110569, 26.203936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041748, 32.910919, 26.331049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.277214, 32.795712, 26.028919>,  <35.418495, 32.726585, 25.847641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.277214, 32.795712, 26.028919>,  <35.041748, 32.910919, 26.331049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277214, 32.795712, 26.028919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570917, 0.513373, -0.640704,
		0.572299, 0.808389, 0.137771,
		0.588666, -0.288019, -0.755326,
		35.453815, 32.709305, 25.802320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074955, 33.533306, 25.994722>,  <35.041748, 32.910919, 26.331049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074955, 33.533306, 25.994722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.176220, 33.247650, 25.733675>,  <35.236980, 33.076256, 25.577047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.176220, 33.247650, 25.733675>,  <35.074955, 33.533306, 25.994722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176220, 33.247650, 25.733675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456999, 0.506297, -0.731310,
		0.852677, 0.483388, -0.198186,
		0.253165, -0.714143, -0.652616,
		35.252171, 33.033409, 25.537889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254436, 33.908897, 25.460464>,  <35.074955, 33.533306, 25.994722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254436, 33.908897, 25.460464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.210278, 33.546566, 25.296865>,  <35.183781, 33.329166, 25.198706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.210278, 33.546566, 25.296865>,  <35.254436, 33.908897, 25.460464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210278, 33.546566, 25.296865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555919, 0.397398, -0.730089,
		0.823873, 0.146771, -0.547441,
		-0.110396, -0.905833, -0.408998,
		35.177158, 33.274815, 25.174166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558762, 33.872631, 24.797863>,  <35.254436, 33.908897, 25.460464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558762, 33.872631, 24.797863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.282318, 33.583530, 24.797544>,  <35.116451, 33.410069, 24.797354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.282318, 33.583530, 24.797544>,  <35.558762, 33.872631, 24.797863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282318, 33.583530, 24.797544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384590, 0.368684, -0.846264,
		0.611932, -0.584553, -0.532764,
		-0.691108, -0.722752, -0.000797,
		35.074986, 33.366707, 24.797306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676659, 33.625164, 24.207243>,  <35.558762, 33.872631, 24.797863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676659, 33.625164, 24.207243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.310749, 33.497292, 24.306025>,  <35.091202, 33.420567, 24.365294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.310749, 33.497292, 24.306025>,  <35.676659, 33.625164, 24.207243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310749, 33.497292, 24.306025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343548, 0.294089, -0.891901,
		0.212497, -0.900731, -0.378851,
		-0.914779, -0.319680, 0.246952,
		35.036316, 33.401386, 24.380110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487301, 33.372372, 23.559153>,  <35.676659, 33.625164, 24.207243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487301, 33.372372, 23.559153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.177563, 33.446060, 23.801294>,  <34.991722, 33.490273, 23.946579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.177563, 33.446060, 23.801294>,  <35.487301, 33.372372, 23.559153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177563, 33.446060, 23.801294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547562, 0.284385, -0.786957,
		-0.317125, -0.940845, -0.119341,
		-0.774343, 0.184217, 0.605357,
		34.945259, 33.501324, 23.982901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020214, 33.006557, 23.317896>,  <35.487301, 33.372372, 23.559153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020214, 33.006557, 23.317896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.845463, 33.307774, 23.514702>,  <34.740612, 33.488503, 23.632786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.845463, 33.307774, 23.514702>,  <35.020214, 33.006557, 23.317896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845463, 33.307774, 23.514702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536485, 0.220919, -0.814480,
		-0.722028, -0.619784, 0.307479,
		-0.436874, 0.753036, 0.492014,
		34.714401, 33.533684, 23.662306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336761, 33.068535, 23.043678>,  <35.020214, 33.006557, 23.317896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336761, 33.068535, 23.043678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.358784, 33.422230, 23.229187>,  <34.371998, 33.634449, 23.340492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.358784, 33.422230, 23.229187>,  <34.336761, 33.068535, 23.043678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358784, 33.422230, 23.229187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788981, 0.323195, -0.522546,
		-0.611946, -0.337137, 0.715445,
		0.055059, 0.884242, 0.463773,
		34.375301, 33.687504, 23.368319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677795, 33.229927, 23.115086>,  <34.336761, 33.068535, 23.043678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677795, 33.229927, 23.115086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.878841, 33.574821, 23.140123>,  <33.999470, 33.781757, 23.155146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.878841, 33.574821, 23.140123>,  <33.677795, 33.229927, 23.115086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878841, 33.574821, 23.140123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760237, 0.475308, -0.442856,
		-0.411600, 0.175001, 0.894405,
		0.502618, 0.862240, 0.062594,
		34.029629, 33.833492, 23.158901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.189556, 33.732136, 23.273048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.490116, 33.970459, 23.159618>,  <33.670452, 34.113453, 23.091560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.490116, 33.970459, 23.159618>,  <33.189556, 33.732136, 23.273048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490116, 33.970459, 23.159618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625925, 0.507565, -0.592111,
		-0.208850, 0.622409, 0.754313,
		0.751398, 0.595806, -0.283576,
		33.715534, 34.149200, 23.074545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.066093, 34.411331, 23.523779>,  <33.189556, 33.732136, 23.273048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.066093, 34.411331, 23.523779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.300861, 34.426537, 23.200279>,  <33.441723, 34.435658, 23.006180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.300861, 34.426537, 23.200279>,  <33.066093, 34.411331, 23.523779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300861, 34.426537, 23.200279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639555, 0.634296, -0.434325,
		0.496478, 0.772155, 0.396592,
		0.586923, 0.038010, -0.808750,
		33.476936, 34.437939, 22.957655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988579, 35.112152, 23.348230>,  <33.066093, 34.411331, 23.523779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988579, 35.112152, 23.348230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.144520, 34.936825, 23.024282>,  <33.238083, 34.831627, 22.829914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.144520, 34.936825, 23.024282>,  <32.988579, 35.112152, 23.348230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144520, 34.936825, 23.024282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497293, 0.639989, -0.585760,
		0.775057, 0.631104, 0.031529,
		0.389853, -0.438318, -0.809871,
		33.261475, 34.805328, 22.781321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091209, 35.698135, 22.948893>,  <32.988579, 35.112152, 23.348230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091209, 35.698135, 22.948893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.070526, 35.381042, 22.705946>,  <33.058117, 35.190784, 22.560177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.070526, 35.381042, 22.705946>,  <33.091209, 35.698135, 22.948893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.070526, 35.381042, 22.705946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548433, 0.530807, -0.646115,
		0.834594, 0.299691, -0.462210,
		-0.051710, -0.792735, -0.607369,
		33.055012, 35.143223, 22.523735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902420, 35.990524, 22.243538>,  <33.091209, 35.698135, 22.948893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902420, 35.990524, 22.243538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.849819, 35.603401, 22.157696>,  <32.818260, 35.371128, 22.106190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.849819, 35.603401, 22.157696>,  <32.902420, 35.990524, 22.243538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849819, 35.603401, 22.157696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474885, 0.251531, -0.843336,
		0.870167, -0.008986, -0.492675,
		-0.131502, -0.967807, -0.214607,
		32.810368, 35.313061, 22.093313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064594, 35.780170, 21.500002>,  <32.902420, 35.990524, 22.243538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064594, 35.780170, 21.500002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.795307, 35.513176, 21.627283>,  <32.633736, 35.352982, 21.703651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.795307, 35.513176, 21.627283>,  <33.064594, 35.780170, 21.500002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795307, 35.513176, 21.627283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634043, 0.299642, -0.712884,
		0.380491, -0.681676, -0.624935,
		-0.673213, -0.667482, 0.318201,
		32.593342, 35.312931, 21.722744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749706, 35.265125, 20.875238>,  <33.064594, 35.780170, 21.500002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749706, 35.265125, 20.875238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.487473, 35.265961, 21.177286>,  <32.330132, 35.266460, 21.358515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.487473, 35.265961, 21.177286>,  <32.749706, 35.265125, 20.875238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487473, 35.265961, 21.177286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754524, 0.038060, -0.655168,
		-0.030114, -0.999273, -0.023369,
		-0.655581, 0.002097, 0.755122,
		32.290798, 35.266586, 21.403822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150734, 34.845074, 20.661352>,  <32.749706, 35.265125, 20.875238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150734, 34.845074, 20.661352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.988392, 35.068241, 20.950905>,  <31.890985, 35.202141, 21.124636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.988392, 35.068241, 20.950905>,  <32.150734, 34.845074, 20.661352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988392, 35.068241, 20.950905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746043, 0.255267, -0.615027,
		-0.527918, -0.789662, 0.312629,
		-0.405860, 0.557919, 0.723881,
		31.866634, 35.235619, 21.168070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.567474, 34.777691, 20.544495>,  <32.150734, 34.845074, 20.661352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.567474, 34.777691, 20.544495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.562412, 35.118706, 20.753504>,  <31.559374, 35.323315, 20.878908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.562412, 35.118706, 20.753504>,  <31.567474, 34.777691, 20.544495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562412, 35.118706, 20.753504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695652, 0.367863, -0.617046,
		-0.718267, -0.371302, 0.588410,
		-0.012656, 0.852533, 0.522521,
		31.558615, 35.374466, 20.910259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.922338, 34.856071, 20.780432>,  <31.567474, 34.777691, 20.544495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.922338, 34.856071, 20.780432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.105478, 35.208000, 20.729393>,  <31.215363, 35.419159, 20.698769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.105478, 35.208000, 20.729393>,  <30.922338, 34.856071, 20.780432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.105478, 35.208000, 20.729393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712232, 0.277105, -0.644933,
		-0.532070, 0.386163, 0.753512,
		0.457851, 0.879824, -0.127599,
		31.242834, 35.471947, 20.691113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470322, 35.189056, 20.431904>,  <30.922338, 34.856071, 20.780432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.470322, 35.189056, 20.431904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.748840, 35.475830, 20.418203>,  <30.915951, 35.647896, 20.409983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.748840, 35.475830, 20.418203>,  <30.470322, 35.189056, 20.431904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.748840, 35.475830, 20.418203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549223, 0.501471, -0.668492,
		-0.462091, 0.484280, 0.742930,
		0.696295, 0.716938, -0.034252,
		30.957729, 35.690910, 20.407928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.115850, 35.746658, 20.354744>,  <30.470322, 35.189056, 20.431904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.115850, 35.746658, 20.354744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.468611, 35.894108, 20.237194>,  <30.680267, 35.982578, 20.166664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.468611, 35.894108, 20.237194>,  <30.115850, 35.746658, 20.354744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.468611, 35.894108, 20.237194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458745, 0.527388, -0.715133,
		-0.108630, 0.765491, 0.634210,
		0.881903, 0.368626, -0.293875,
		30.733181, 36.004696, 20.149031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.988991, 36.443905, 20.185656>,  <30.115850, 35.746658, 20.354744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.988991, 36.443905, 20.185656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.344154, 36.386982, 20.010674>,  <30.557253, 36.352829, 19.905685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.344154, 36.386982, 20.010674>,  <29.988991, 36.443905, 20.185656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344154, 36.386982, 20.010674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300947, 0.539522, -0.786350,
		0.347921, 0.829858, 0.436218,
		0.887909, -0.142309, -0.437454,
		30.610527, 36.344288, 19.879436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.065548, 37.071388, 19.876127>,  <29.988991, 36.443905, 20.185656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.065548, 37.071388, 19.876127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.312233, 36.812077, 19.697512>,  <30.460243, 36.656490, 19.590343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.312233, 36.812077, 19.697512>,  <30.065548, 37.071388, 19.876127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.312233, 36.812077, 19.697512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145639, 0.463498, -0.874048,
		0.773600, 0.604068, 0.191428,
		0.616711, -0.648283, -0.446538,
		30.497246, 36.617592, 19.563551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.567131, 37.489147, 19.580917>,  <30.065548, 37.071388, 19.876127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.567131, 37.489147, 19.580917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.548447, 37.136318, 19.393398>,  <30.537235, 36.924622, 19.280886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.548447, 37.136318, 19.393398>,  <30.567131, 37.489147, 19.580917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.548447, 37.136318, 19.393398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299141, 0.460126, -0.835942,
		0.953065, 0.101189, -0.285356,
		-0.046711, -0.882068, -0.468800,
		30.534433, 36.871696, 19.252758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.983353, 37.656376, 18.983406>,  <30.567131, 37.489147, 19.580917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.983353, 37.656376, 18.983406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.750690, 37.335903, 18.927137>,  <30.611094, 37.143620, 18.893377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.750690, 37.335903, 18.927137>,  <30.983353, 37.656376, 18.983406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.750690, 37.335903, 18.927137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179426, 0.295042, -0.938487,
		0.793401, -0.520635, -0.315365,
		-0.581654, -0.801180, -0.140671,
		30.576195, 37.095551, 18.884935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.111870, 37.388546, 18.270258>,  <30.983353, 37.656376, 18.983406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.111870, 37.388546, 18.270258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.743771, 37.271374, 18.374052>,  <30.522911, 37.201069, 18.436329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.743771, 37.271374, 18.374052>,  <31.111870, 37.388546, 18.270258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.743771, 37.271374, 18.374052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336016, 0.251603, -0.907628,
		0.200589, -0.922434, -0.329968,
		-0.920248, -0.292935, 0.259484,
		30.467695, 37.183495, 18.451897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.874573, 37.091484, 17.692949>,  <31.111870, 37.388546, 18.270258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.874573, 37.091484, 17.692949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.528299, 37.152626, 17.883621>,  <30.320536, 37.189312, 17.998024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.528299, 37.152626, 17.883621>,  <30.874573, 37.091484, 17.692949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.528299, 37.152626, 17.883621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422933, 0.286094, -0.859813,
		-0.267799, -0.945932, -0.183022,
		-0.865685, 0.152851, 0.476681,
		30.268593, 37.198483, 18.026627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.404896, 36.914265, 17.249590>,  <30.874573, 37.091484, 17.692949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.404896, 36.914265, 17.249590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.166494, 37.109463, 17.504663>,  <30.023455, 37.226582, 17.657707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.166494, 37.109463, 17.504663>,  <30.404896, 36.914265, 17.249590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.166494, 37.109463, 17.504663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658758, 0.156943, -0.735803,
		-0.459151, -0.858619, 0.227935,
		-0.596002, 0.487999, 0.637683,
		29.987694, 37.255863, 17.695969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.769539, 36.850967, 16.890306>,  <30.404896, 36.914265, 17.249590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.769539, 36.850967, 16.890306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.733807, 37.145107, 17.159018>,  <29.712368, 37.321590, 17.320244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.733807, 37.145107, 17.159018>,  <29.769539, 36.850967, 16.890306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.733807, 37.145107, 17.159018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605541, 0.495409, -0.622808,
		-0.790785, -0.462425, 0.401027,
		-0.089330, 0.735345, 0.671779,
		29.707008, 37.365711, 17.360552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.087492, 36.995682, 16.988869>,  <29.769539, 36.850967, 16.890306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.087492, 36.995682, 16.988869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.287870, 37.328350, 17.084681>,  <29.408098, 37.527950, 17.142168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.287870, 37.328350, 17.084681>,  <29.087492, 36.995682, 16.988869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.287870, 37.328350, 17.084681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550580, 0.519768, -0.653225,
		-0.667768, 0.195351, 0.718278,
		0.500946, 0.831673, 0.239528,
		29.438154, 37.577850, 17.156538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.622637, 37.443287, 17.103195>,  <29.087492, 36.995682, 16.988869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.622637, 37.443287, 17.103195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.939234, 37.686523, 17.078629>,  <29.129192, 37.832466, 17.063889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.939234, 37.686523, 17.078629>,  <28.622637, 37.443287, 17.103195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.939234, 37.686523, 17.078629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475359, 0.549319, -0.687228,
		-0.384157, 0.573131, 0.723840,
		0.791491, 0.608087, -0.061418,
		29.176682, 37.868950, 17.060204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.511656, 38.242657, 17.189953>,  <28.622637, 37.443287, 17.103195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.511656, 38.242657, 17.189953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.823572, 38.242561, 16.939537>,  <29.010721, 38.242504, 16.789288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.823572, 38.242561, 16.939537>,  <28.511656, 38.242657, 17.189953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.823572, 38.242561, 16.939537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399287, 0.770014, -0.497643,
		0.482178, 0.638027, 0.600355,
		0.779791, -0.000238, -0.626040,
		29.057510, 38.242489, 16.751724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.902729, 37.830887, 17.346481>,  <28.511656, 38.242657, 17.189953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.902729, 37.830887, 17.346481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.629715, 38.110714, 17.431097>,  <27.465906, 38.278610, 17.481867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.629715, 38.110714, 17.431097>,  <27.902729, 37.830887, 17.346481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.629715, 38.110714, 17.431097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209398, -0.090123, 0.973669,
		0.700211, 0.708861, -0.084976,
		-0.682537, 0.699567, 0.211540,
		27.424953, 38.320583, 17.494558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.232546, 38.283844, 17.834187>,  <27.902729, 37.830887, 17.346481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.232546, 38.283844, 17.834187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.841896, 38.366936, 17.856297>,  <27.607506, 38.416790, 17.869562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.841896, 38.366936, 17.856297>,  <28.232546, 38.283844, 17.834187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.841896, 38.366936, 17.856297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072727, 0.077340, 0.994349,
		0.202281, 0.975124, -0.090640,
		-0.976623, 0.207730, 0.055273,
		27.548908, 38.429256, 17.872879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.042257, 38.960442, 18.284609>,  <28.232546, 38.283844, 17.834187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.042257, 38.960442, 18.284609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.715349, 38.731003, 18.262474>,  <27.519205, 38.593342, 18.249193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.715349, 38.731003, 18.262474>,  <28.042257, 38.960442, 18.284609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.715349, 38.731003, 18.262474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056391, -0.015964, 0.998281,
		-0.573491, 0.818985, -0.019299,
		-0.817269, -0.573593, -0.055339,
		27.470169, 38.558926, 18.245872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.597776, 39.106918, 18.819458>,  <28.042257, 38.960442, 18.284609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.597776, 39.106918, 18.819458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.505337, 38.729389, 18.724977>,  <27.449873, 38.502872, 18.668289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.505337, 38.729389, 18.724977>,  <27.597776, 39.106918, 18.819458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.505337, 38.729389, 18.724977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038714, -0.233658, 0.971548,
		-0.972159, 0.233670, 0.017459,
		-0.231101, -0.943823, -0.236199,
		27.436007, 38.446243, 18.654118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.437937, 38.903488, 19.493948>,  <27.597776, 39.106918, 18.819458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.437937, 38.903488, 19.493948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.466095, 38.564419, 19.283617>,  <27.482990, 38.360977, 19.157419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.466095, 38.564419, 19.283617>,  <27.437937, 38.903488, 19.493948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.466095, 38.564419, 19.283617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225774, -0.499916, 0.836128,
		-0.971633, -0.177578, 0.156190,
		0.070396, -0.847673, -0.525828,
		27.487213, 38.310116, 19.125868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.956152, 38.388233, 19.710768>,  <27.437937, 38.903488, 19.493948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.956152, 38.388233, 19.710768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.280737, 38.213394, 19.555603>,  <27.475487, 38.108490, 19.462503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.280737, 38.213394, 19.555603>,  <26.956152, 38.388233, 19.710768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.280737, 38.213394, 19.555603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279853, -0.292085, 0.914532,
		-0.513043, -0.850666, -0.114693,
		0.811461, -0.437097, -0.387914,
		27.524176, 38.082264, 19.439228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.938070, 37.778278, 20.079132>,  <26.956152, 38.388233, 19.710768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.938070, 37.778278, 20.079132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.302170, 37.825558, 19.920399>,  <27.520630, 37.853928, 19.825159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.302170, 37.825558, 19.920399>,  <26.938070, 37.778278, 20.079132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.302170, 37.825558, 19.920399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411539, -0.363945, 0.835571,
		-0.045660, -0.923890, -0.379924,
		0.910247, 0.118201, -0.396835,
		27.575245, 37.861019, 19.801348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.323347, 37.224167, 20.421543>,  <26.938070, 37.778278, 20.079132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.323347, 37.224167, 20.421543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.635712, 37.423557, 20.270973>,  <27.823132, 37.543190, 20.180632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.635712, 37.423557, 20.270973>,  <27.323347, 37.224167, 20.421543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.635712, 37.423557, 20.270973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559568, -0.290454, 0.776222,
		0.277595, -0.816796, -0.505751,
		0.780913, 0.498477, -0.376424,
		27.869986, 37.573101, 20.158047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.889877, 36.775368, 20.379740>,  <27.323347, 37.224167, 20.421543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.889877, 36.775368, 20.379740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.080509, 37.126545, 20.361485>,  <28.194889, 37.337254, 20.350531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.080509, 37.126545, 20.361485>,  <27.889877, 36.775368, 20.379740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.080509, 37.126545, 20.361485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695024, -0.344480, 0.631090,
		0.538341, -0.332486, -0.774366,
		0.476582, 0.877945, -0.045638,
		28.223484, 37.389927, 20.347794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.563087, 36.547050, 20.279972>,  <27.889877, 36.775368, 20.379740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.563087, 36.547050, 20.279972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.614895, 36.921738, 20.410070>,  <28.645979, 37.146549, 20.488131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.614895, 36.921738, 20.410070>,  <28.563087, 36.547050, 20.279972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.614895, 36.921738, 20.410070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584833, -0.337049, 0.737813,
		0.800747, 0.094655, -0.591477,
		0.129519, 0.936717, 0.325248,
		28.653751, 37.202751, 20.507645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.277079, 36.695244, 20.298021>,  <28.563087, 36.547050, 20.279972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.277079, 36.695244, 20.298021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.075935, 36.931057, 20.550871>,  <28.955250, 37.072544, 20.702581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.075935, 36.931057, 20.550871>,  <29.277079, 36.695244, 20.298021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.075935, 36.931057, 20.550871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569406, -0.324277, 0.755395,
		0.650317, 0.739791, -0.172621,
		-0.502857, 0.589537, 0.632124,
		28.925077, 37.107918, 20.740509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.767859, 36.862549, 20.804415>,  <29.277079, 36.695244, 20.298021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.767859, 36.862549, 20.804415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.448360, 36.993076, 21.006609>,  <29.256660, 37.071392, 21.127926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.448360, 36.993076, 21.006609>,  <29.767859, 36.862549, 20.804415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.448360, 36.993076, 21.006609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452536, -0.227829, 0.862151,
		0.396503, 0.917392, 0.034306,
		-0.798747, 0.326321, 0.505488,
		29.208736, 37.090973, 21.158255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.140926, 37.135483, 21.300835>,  <29.767859, 36.862549, 20.804415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.140926, 37.135483, 21.300835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.760624, 37.069523, 21.405806>,  <29.532442, 37.029945, 21.468788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.760624, 37.069523, 21.405806>,  <30.140926, 37.135483, 21.300835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.760624, 37.069523, 21.405806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308131, -0.411639, 0.857676,
		-0.033405, 0.896304, 0.442180,
		-0.950757, -0.164900, 0.262428,
		29.475397, 37.020054, 21.484533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.894167, 37.508701, 21.898258>,  <30.140926, 37.135483, 21.300835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.894167, 37.508701, 21.898258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.667923, 37.180111, 21.869226>,  <29.532177, 36.982956, 21.851809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.667923, 37.180111, 21.869226>,  <29.894167, 37.508701, 21.898258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.667923, 37.180111, 21.869226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518243, -0.422520, 0.743573,
		-0.641491, 0.382958, 0.664704,
		-0.565608, -0.821474, -0.072578,
		29.498241, 36.933670, 21.847454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.868721, 37.374607, 22.519140>,  <29.894167, 37.508701, 21.898258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.868721, 37.374607, 22.519140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.711819, 37.032536, 22.383608>,  <29.617678, 36.827293, 22.302288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.711819, 37.032536, 22.383608>,  <29.868721, 37.374607, 22.519140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.711819, 37.032536, 22.383608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333727, -0.475558, 0.813923,
		-0.857182, 0.206190, 0.471937,
		-0.392257, -0.855178, -0.338829,
		29.594141, 36.775982, 22.281960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.429962, 37.063225, 23.089140>,  <29.868721, 37.374607, 22.519140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.429962, 37.063225, 23.089140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.521282, 36.775723, 22.826454>,  <29.576075, 36.603222, 22.668842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.521282, 36.775723, 22.826454>,  <29.429962, 37.063225, 23.089140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.521282, 36.775723, 22.826454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463259, -0.513079, 0.722593,
		-0.856312, -0.469196, 0.215833,
		0.228298, -0.718752, -0.656716,
		29.589771, 36.560097, 22.629440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.318451, 36.402847, 23.480467>,  <29.429962, 37.063225, 23.089140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.318451, 36.402847, 23.480467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.554462, 36.282295, 23.180857>,  <29.696070, 36.209965, 23.001091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.554462, 36.282295, 23.180857>,  <29.318451, 36.402847, 23.480467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.554462, 36.282295, 23.180857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518461, -0.569743, 0.637646,
		-0.618925, -0.764568, -0.179910,
		0.590026, -0.301378, -0.749026,
		29.731470, 36.191883, 22.956148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.335543, 35.586750, 23.367426>,  <29.318451, 36.402847, 23.480467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.335543, 35.586750, 23.367426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.681408, 35.739254, 23.236582>,  <29.888927, 35.830757, 23.158075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.681408, 35.739254, 23.236582>,  <29.335543, 35.586750, 23.367426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.681408, 35.739254, 23.236582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501458, -0.693904, 0.516757,
		-0.029966, -0.610852, -0.791177,
		0.864663, 0.381257, -0.327110,
		29.940807, 35.853630, 23.138449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.905043, 34.992519, 23.273737>,  <29.335543, 35.586750, 23.367426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.905043, 34.992519, 23.273737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.143793, 35.312290, 23.301046>,  <30.287045, 35.504150, 23.317432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.143793, 35.312290, 23.301046>,  <29.905043, 34.992519, 23.273737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.143793, 35.312290, 23.301046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722806, -0.572701, 0.386737,
		0.348267, -0.181485, -0.919659,
		0.596877, 0.799423, 0.068275,
		30.322857, 35.552116, 23.321529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.582396, 34.665176, 23.201590>,  <29.905043, 34.992519, 23.273737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.582396, 34.665176, 23.201590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.649601, 35.030453, 23.350105>,  <30.689924, 35.249619, 23.439215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.649601, 35.030453, 23.350105>,  <30.582396, 34.665176, 23.201590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.649601, 35.030453, 23.350105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665083, -0.383012, 0.641066,
		0.727623, 0.139228, -0.671699,
		0.168014, 0.913191, 0.371287,
		30.700005, 35.304409, 23.461491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324451, 34.799984, 23.252878>,  <30.582396, 34.665176, 23.201590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324451, 34.799984, 23.252878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.170851, 35.052124, 23.522753>,  <31.078690, 35.203407, 23.684677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.170851, 35.052124, 23.522753>,  <31.324451, 34.799984, 23.252878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.170851, 35.052124, 23.522753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701255, -0.276246, 0.657214,
		0.600653, 0.725500, -0.335955,
		-0.384002, 0.630347, 0.674688,
		31.055651, 35.241230, 23.725159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<34.903042, 32.119137, 24.647545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.982876, 32.467381, 24.827414>,  <35.030777, 32.676327, 24.935335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.982876, 32.467381, 24.827414>,  <34.903042, 32.119137, 24.647545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982876, 32.467381, 24.827414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719054, -0.441882, 0.536378,
		0.665678, 0.216285, -0.714208,
		0.199586, 0.870610, 0.449672,
		35.042751, 32.728565, 24.962315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581928, 32.261433, 24.552694>,  <34.903042, 32.119137, 24.647545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581928, 32.261433, 24.552694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.496922, 32.485222, 24.873150>,  <35.445915, 32.619495, 25.065424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.496922, 32.485222, 24.873150>,  <35.581928, 32.261433, 24.552694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496922, 32.485222, 24.873150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833767, -0.323728, 0.447250,
		0.509576, 0.763013, -0.397672,
		-0.212520, 0.559473, 0.801140,
		35.433167, 32.653065, 25.113491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226048, 32.557991, 24.797562>,  <35.581928, 32.261433, 24.552694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226048, 32.557991, 24.797562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.970127, 32.584076, 25.103868>,  <35.816574, 32.599728, 25.287653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.970127, 32.584076, 25.103868>,  <36.226048, 32.557991, 24.797562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970127, 32.584076, 25.103868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697522, -0.369056, 0.614215,
		0.322668, 0.927116, 0.190633,
		-0.639803, 0.065217, 0.765767,
		35.778187, 32.603642, 25.333599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651417, 32.661739, 25.327448>,  <36.226048, 32.557991, 24.797562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651417, 32.661739, 25.327448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.315147, 32.577778, 25.527132>,  <36.113388, 32.527401, 25.646942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.315147, 32.577778, 25.527132>,  <36.651417, 32.661739, 25.327448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315147, 32.577778, 25.527132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541030, -0.365731, 0.757316,
		0.023610, 0.906741, 0.421026,
		-0.840672, -0.209907, 0.499209,
		36.062946, 32.514805, 25.676895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568035, 33.072231, 25.952187>,  <36.651417, 32.661739, 25.327448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568035, 33.072231, 25.952187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.356167, 32.742554, 26.032335>,  <36.229046, 32.544746, 26.080425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.356167, 32.742554, 26.032335>,  <36.568035, 33.072231, 25.952187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356167, 32.742554, 26.032335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474744, -0.092304, 0.875270,
		-0.702900, 0.558729, 0.440173,
		-0.529669, -0.824197, 0.200373,
		36.197266, 32.495293, 26.092447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622009, 33.005421, 26.669815>,  <36.568035, 33.072231, 25.952187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622009, 33.005421, 26.669815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.452457, 32.655602, 26.575596>,  <36.350727, 32.445709, 26.519064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.452457, 32.655602, 26.575596>,  <36.622009, 33.005421, 26.669815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452457, 32.655602, 26.575596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499540, -0.442681, 0.744643,
		-0.755501, 0.197976, 0.624518,
		-0.423884, -0.874551, -0.235549,
		36.325291, 32.393238, 26.504930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292587, 32.854603, 27.296370>,  <36.622009, 33.005421, 26.669815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292587, 32.854603, 27.296370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.365612, 32.527367, 27.078234>,  <36.409428, 32.331024, 26.947351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.365612, 32.527367, 27.078234>,  <36.292587, 32.854603, 27.296370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365612, 32.527367, 27.078234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360637, -0.460282, 0.811222,
		-0.914666, -0.344766, 0.211005,
		0.182560, -0.818093, -0.545340,
		36.420380, 32.281940, 26.914631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928589, 32.363091, 27.671673>,  <36.292587, 32.854603, 27.296370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928589, 32.363091, 27.671673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.214195, 32.189312, 27.452063>,  <36.385559, 32.085045, 27.320297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.214195, 32.189312, 27.452063>,  <35.928589, 32.363091, 27.671673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214195, 32.189312, 27.452063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371127, -0.430074, 0.822983,
		-0.593668, -0.791384, -0.145844,
		0.714019, -0.434452, -0.549025,
		36.428402, 32.058975, 27.287355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058636, 31.767813, 27.969465>,  <35.928589, 32.363091, 27.671673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058636, 31.767813, 27.969465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.380421, 31.807350, 27.735178>,  <36.573494, 31.831072, 27.594606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.380421, 31.807350, 27.735178>,  <36.058636, 31.767813, 27.969465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380421, 31.807350, 27.735178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564805, -0.432618, 0.702735,
		-0.183931, -0.896142, -0.403854,
		0.804466, 0.098844, -0.585717,
		36.621761, 31.837004, 27.559464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325188, 31.149328, 28.122751>,  <36.058636, 31.767813, 27.969465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325188, 31.149328, 28.122751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.612190, 31.395540, 27.992329>,  <36.784389, 31.543268, 27.914076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.612190, 31.395540, 27.992329>,  <36.325188, 31.149328, 28.122751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612190, 31.395540, 27.992329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594642, -0.297493, 0.746926,
		0.362756, -0.729808, -0.579472,
		0.717502, 0.615531, -0.326057,
		36.827442, 31.580200, 27.894512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945503, 30.809816, 28.219494>,  <36.325188, 31.149328, 28.122751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945503, 30.809816, 28.219494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.073303, 31.181902, 28.147247>,  <37.149982, 31.405153, 28.103899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.073303, 31.181902, 28.147247>,  <36.945503, 30.809816, 28.219494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073303, 31.181902, 28.147247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679081, -0.091831, 0.728297,
		0.660886, -0.355343, -0.661031,
		0.319498, 0.930214, -0.180617,
		37.169151, 31.460966, 28.093061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719570, 30.823030, 28.188515>,  <36.945503, 30.809816, 28.219494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719570, 30.823030, 28.188515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.612206, 31.196241, 28.284357>,  <37.547787, 31.420168, 28.341862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.612206, 31.196241, 28.284357>,  <37.719570, 30.823030, 28.188515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612206, 31.196241, 28.284357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498575, -0.078271, 0.863306,
		0.824243, 0.351186, -0.444176,
		-0.268415, 0.933028, 0.239607,
		37.531681, 31.476151, 28.356239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294735, 31.175205, 28.443289>,  <37.719570, 30.823030, 28.188515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294735, 31.175205, 28.443289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.982628, 31.376953, 28.591232>,  <37.795364, 31.498001, 28.679998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.982628, 31.376953, 28.591232>,  <38.294735, 31.175205, 28.443289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982628, 31.376953, 28.591232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386125, -0.076750, 0.919248,
		0.492028, 0.860070, -0.134864,
		-0.780267, 0.504370, 0.369858,
		37.748547, 31.528265, 28.702190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571930, 31.633850, 28.892635>,  <38.294735, 31.175205, 28.443289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571930, 31.633850, 28.892635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.195694, 31.575417, 29.015238>,  <37.969952, 31.540356, 29.088799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.195694, 31.575417, 29.015238>,  <38.571930, 31.633850, 28.892635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195694, 31.575417, 29.015238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321662, -0.094338, 0.942143,
		-0.108716, 0.984764, 0.135723,
		-0.940593, -0.146083, 0.306505,
		37.913517, 31.531591, 29.107189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230717, 32.108932, 29.186485>,  <38.571930, 31.633850, 28.892635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230717, 32.108932, 29.186485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.522747, 32.370739, 29.265062>,  <39.697968, 32.527824, 29.312208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.522747, 32.370739, 29.265062>,  <39.230717, 32.108932, 29.186485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.522747, 32.370739, 29.265062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303943, 0.568481, -0.764492,
		-0.612050, 0.498431, 0.613972,
		0.730078, 0.654520, 0.196444,
		39.741772, 32.567097, 29.323996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894089, 32.671036, 29.189070>,  <39.230717, 32.108932, 29.186485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894089, 32.671036, 29.189070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.274185, 32.773342, 29.117926>,  <39.502243, 32.834724, 29.075239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.274185, 32.773342, 29.117926>,  <38.894089, 32.671036, 29.189070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274185, 32.773342, 29.117926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309771, 0.715257, -0.626458,
		-0.033010, 0.650379, 0.758892,
		0.950238, 0.255762, -0.177858,
		39.559258, 32.850071, 29.064568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952942, 33.466061, 29.260937>,  <38.894089, 32.671036, 29.189070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952942, 33.466061, 29.260937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.251354, 33.351910, 29.020273>,  <39.430401, 33.283417, 28.875875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.251354, 33.351910, 29.020273>,  <38.952942, 33.466061, 29.260937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251354, 33.351910, 29.020273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153050, 0.805843, -0.572007,
		0.648080, 0.518821, 0.557510,
		0.746035, -0.285379, -0.601657,
		39.475166, 33.266296, 28.839777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423939, 34.000435, 29.165882>,  <38.952942, 33.466061, 29.260937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423939, 34.000435, 29.165882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.497765, 33.781334, 28.839472>,  <39.542061, 33.649872, 28.643625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.497765, 33.781334, 28.839472>,  <39.423939, 34.000435, 29.165882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497765, 33.781334, 28.839472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094834, 0.816492, -0.569515,
		0.978233, 0.182502, 0.098754,
		0.184569, -0.547753, -0.816027,
		39.553135, 33.617008, 28.594664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762997, 34.454750, 28.701023>,  <39.423939, 34.000435, 29.165882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762997, 34.454750, 28.701023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.581810, 34.157623, 28.503826>,  <39.473099, 33.979347, 28.385508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.581810, 34.157623, 28.503826>,  <39.762997, 34.454750, 28.701023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581810, 34.157623, 28.503826> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307403, 0.649198, -0.695734,
		0.836854, -0.163597, -0.522410,
		-0.452967, -0.742818, -0.492993,
		39.445919, 33.934776, 28.355928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892010, 34.636124, 28.050692>,  <39.762997, 34.454750, 28.701023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892010, 34.636124, 28.050692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.606678, 34.360413, 27.999994>,  <39.435478, 34.194988, 27.969576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.606678, 34.360413, 27.999994>,  <39.892010, 34.636124, 28.050692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606678, 34.360413, 27.999994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355625, 0.511833, -0.782021,
		0.603901, -0.512763, -0.610228,
		-0.713326, -0.689276, -0.126745,
		39.392681, 34.153629, 27.961971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889217, 34.606537, 27.364420>,  <39.892010, 34.636124, 28.050692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889217, 34.606537, 27.364420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.532295, 34.484924, 27.497900>,  <39.318142, 34.411957, 27.577988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.532295, 34.484924, 27.497900>,  <39.889217, 34.606537, 27.364420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532295, 34.484924, 27.497900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448234, 0.508884, -0.734931,
		0.053627, -0.805359, -0.590357,
		-0.892307, -0.304030, 0.333699,
		39.264603, 34.393715, 27.598009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501419, 34.275341, 26.789370>,  <39.889217, 34.606537, 27.364420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501419, 34.275341, 26.789370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.214684, 34.373676, 27.050356>,  <39.042645, 34.432678, 27.206947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.214684, 34.373676, 27.050356>,  <39.501419, 34.275341, 26.789370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214684, 34.373676, 27.050356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568670, 0.335325, -0.751113,
		-0.403439, -0.909463, -0.100573,
		-0.716834, 0.245835, 0.652467,
		38.999634, 34.447426, 27.246096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944733, 33.995911, 26.448486>,  <39.501419, 34.275341, 26.789370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944733, 33.995911, 26.448486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.789982, 34.262779, 26.703112>,  <38.697132, 34.422901, 26.855886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.789982, 34.262779, 26.703112>,  <38.944733, 33.995911, 26.448486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789982, 34.262779, 26.703112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655790, 0.286247, -0.698571,
		-0.648279, -0.687714, 0.326779,
		-0.386877, 0.667167, 0.636564,
		38.673920, 34.462929, 26.894081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196651, 33.862343, 26.526176>,  <38.944733, 33.995911, 26.448486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196651, 33.862343, 26.526176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.236507, 34.241508, 26.647194>,  <38.260422, 34.469009, 26.719805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.236507, 34.241508, 26.647194>,  <38.196651, 33.862343, 26.526176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236507, 34.241508, 26.647194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811889, 0.253235, -0.526031,
		-0.575246, -0.193215, 0.794834,
		0.099643, 0.947914, 0.302542,
		38.266399, 34.525883, 26.737957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576736, 34.121048, 26.668360>,  <38.196651, 33.862343, 26.526176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576736, 34.121048, 26.668360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.785568, 34.455975, 26.603451>,  <37.910870, 34.656929, 26.564507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.785568, 34.455975, 26.603451>,  <37.576736, 34.121048, 26.668360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785568, 34.455975, 26.603451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766496, 0.377183, -0.519824,
		-0.374052, 0.395771, 0.838720,
		0.522082, 0.837317, -0.162271,
		37.942192, 34.707169, 26.554770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126404, 34.678871, 26.856125>,  <37.576736, 34.121048, 26.668360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126404, 34.678871, 26.856125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.419407, 34.809093, 26.616980>,  <37.595211, 34.887226, 26.473494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.419407, 34.809093, 26.616980>,  <37.126404, 34.678871, 26.856125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419407, 34.809093, 26.616980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678339, 0.422980, -0.600787,
		0.057293, 0.845637, 0.530675,
		0.732512, 0.325557, -0.597862,
		37.639160, 34.906761, 26.437620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782246, 35.380821, 26.643822>,  <37.126404, 34.678871, 26.856125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782246, 35.380821, 26.643822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.070831, 35.330822, 26.371389>,  <37.243980, 35.300823, 26.207930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.070831, 35.330822, 26.371389>,  <36.782246, 35.380821, 26.643822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070831, 35.330822, 26.371389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569737, 0.451879, -0.686443,
		0.393568, 0.883279, 0.254799,
		0.721460, -0.124993, -0.681082,
		37.287270, 35.293324, 26.167065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945454, 36.083939, 26.248455>,  <36.782246, 35.380821, 26.643822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945454, 36.083939, 26.248455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.090443, 35.798462, 26.008705>,  <37.177437, 35.627174, 25.864855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.090443, 35.798462, 26.008705>,  <36.945454, 36.083939, 26.248455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090443, 35.798462, 26.008705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472771, 0.413423, -0.778183,
		0.803180, 0.565441, -0.187557,
		0.362476, -0.713693, -0.599377,
		37.199184, 35.584354, 25.828892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176186, 36.766010, 26.416822>,  <36.945454, 36.083939, 26.248455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176186, 36.766010, 26.416822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.990757, 37.099636, 26.536444>,  <36.879501, 37.299812, 26.608217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.990757, 37.099636, 26.536444>,  <37.176186, 36.766010, 26.416822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990757, 37.099636, 26.536444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443511, -0.073763, 0.893229,
		0.767071, 0.546710, -0.335723,
		-0.463573, 0.834067, 0.299054,
		36.851685, 37.349857, 26.626160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568520, 36.964638, 26.881508>,  <37.176186, 36.766010, 26.416822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568520, 36.964638, 26.881508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.260357, 37.209972, 26.951136>,  <37.075459, 37.357174, 26.992912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.260357, 37.209972, 26.951136>,  <37.568520, 36.964638, 26.881508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260357, 37.209972, 26.951136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368539, 0.205619, 0.906587,
		0.520247, 0.762590, -0.384447,
		-0.770404, 0.613333, 0.174072,
		37.029236, 37.393970, 27.003357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860451, 37.600174, 27.088358>,  <37.568520, 36.964638, 26.881508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860451, 37.600174, 27.088358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.488125, 37.560829, 27.229162>,  <37.264729, 37.537220, 27.313644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.488125, 37.560829, 27.229162>,  <37.860451, 37.600174, 27.088358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488125, 37.560829, 27.229162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330183, 0.186708, 0.925267,
		-0.156736, 0.977479, -0.141313,
		-0.930813, -0.098364, 0.352011,
		37.208881, 37.531319, 27.334764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755787, 38.125084, 27.628727>,  <37.860451, 37.600174, 27.088358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755787, 38.125084, 27.628727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.479259, 37.843246, 27.692753>,  <37.313343, 37.674145, 27.731169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.479259, 37.843246, 27.692753>,  <37.755787, 38.125084, 27.628727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479259, 37.843246, 27.692753> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120733, 0.105769, 0.987034,
		-0.712389, 0.701684, 0.011948,
		-0.691322, -0.704594, 0.160065,
		37.271862, 37.631866, 27.740772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454620, 38.426247, 28.202719>,  <37.755787, 38.125084, 27.628727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454620, 38.426247, 28.202719> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.323059, 38.048519, 28.199251>,  <37.244122, 37.821880, 28.197170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.323059, 38.048519, 28.199251>,  <37.454620, 38.426247, 28.202719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323059, 38.048519, 28.199251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024480, -0.017703, 0.999544,
		-0.944045, 0.328545, 0.028940,
		-0.328907, -0.944323, -0.008669,
		37.224388, 37.765221, 28.196650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854042, 38.345547, 28.583307>,  <37.454620, 38.426247, 28.202719>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854042, 38.345547, 28.583307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.032875, 37.987770, 28.587332>,  <37.140175, 37.773106, 28.589746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.032875, 37.987770, 28.587332>,  <36.854042, 38.345547, 28.583307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032875, 37.987770, 28.587332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210061, 0.115920, 0.970792,
		-0.869480, -0.431907, 0.239712,
		0.447079, -0.894438, 0.010063,
		37.167000, 37.719440, 28.590351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525066, 37.844677, 29.127878>,  <36.854042, 38.345547, 28.583307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525066, 37.844677, 29.127878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.886627, 37.694313, 29.046247>,  <37.103565, 37.604095, 28.997269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.886627, 37.694313, 29.046247>,  <36.525066, 37.844677, 29.127878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886627, 37.694313, 29.046247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205731, -0.036219, 0.977938,
		-0.375006, -0.925949, 0.044598,
		0.903905, -0.375908, -0.204079,
		37.157799, 37.581539, 28.985023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564827, 37.093555, 29.461946>,  <36.525066, 37.844677, 29.127878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564827, 37.093555, 29.461946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.935387, 37.239094, 29.423161>,  <37.157722, 37.326416, 29.399889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.935387, 37.239094, 29.423161>,  <36.564827, 37.093555, 29.461946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935387, 37.239094, 29.423161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206727, -0.276211, 0.938601,
		0.314723, -0.889564, -0.331098,
		0.926398, 0.363847, -0.096967,
		37.213306, 37.348248, 29.394070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973751, 36.630646, 29.844133>,  <36.564827, 37.093555, 29.461946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973751, 36.630646, 29.844133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.267681, 36.896862, 29.791853>,  <37.444038, 37.056591, 29.760485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.267681, 36.896862, 29.791853>,  <36.973751, 36.630646, 29.844133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267681, 36.896862, 29.791853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401024, -0.270914, 0.875092,
		0.547004, -0.695453, -0.465974,
		0.734824, 0.665546, -0.130702,
		37.488129, 37.096527, 29.752642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655678, 36.392376, 30.046698>,  <36.973751, 36.630646, 29.844133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655678, 36.392376, 30.046698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.741920, 36.782909, 30.040020>,  <37.793667, 37.017231, 30.036013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.741920, 36.782909, 30.040020>,  <37.655678, 36.392376, 30.046698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741920, 36.782909, 30.040020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617058, -0.122979, 0.777249,
		0.756804, -0.177883, -0.628972,
		0.215609, 0.976337, -0.016693,
		37.806602, 37.075809, 30.035011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383247, 36.409599, 30.088032>,  <37.655678, 36.392376, 30.046698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383247, 36.409599, 30.088032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.260880, 36.769417, 30.212759>,  <38.187458, 36.985310, 30.287596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.260880, 36.769417, 30.212759>,  <38.383247, 36.409599, 30.088032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260880, 36.769417, 30.212759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642295, -0.046759, 0.765030,
		0.702760, 0.434316, -0.563469,
		-0.305918, 0.899546, 0.311819,
		38.169106, 37.039280, 30.306305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948711, 36.762398, 30.323324>,  <38.383247, 36.409599, 30.088032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948711, 36.762398, 30.323324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.655109, 36.958847, 30.510956>,  <38.478951, 37.076717, 30.623535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.655109, 36.958847, 30.510956>,  <38.948711, 36.762398, 30.323324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655109, 36.958847, 30.510956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561261, 0.049762, 0.826142,
		0.382398, 0.869665, -0.312175,
		-0.734001, 0.491127, 0.469080,
		38.434910, 37.106186, 30.651680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.248001, 38.935253, 23.613401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014805, 39.007870, 23.930176>,  <34.874886, 39.051441, 24.120239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014805, 39.007870, 23.930176>,  <35.248001, 38.935253, 23.613401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014805, 39.007870, 23.930176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771178, -0.183161, 0.609702,
		0.255740, 0.966174, -0.033222,
		-0.582993, 0.181546, 0.791934,
		34.839909, 39.062332, 24.167755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541889, 39.438995, 24.095032>,  <35.248001, 38.935253, 23.613401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541889, 39.438995, 24.095032> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290039, 39.238956, 24.332846>,  <35.138927, 39.118935, 24.475534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290039, 39.238956, 24.332846>,  <35.541889, 39.438995, 24.095032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290039, 39.238956, 24.332846> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753694, -0.207567, 0.623587,
		-0.188448, 0.840726, 0.507609,
		-0.629629, -0.500096, 0.594535,
		35.101151, 39.088928, 24.511206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801830, 39.495747, 24.756271>,  <35.541889, 39.438995, 24.095032>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801830, 39.495747, 24.756271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541977, 39.199829, 24.826349>,  <35.386066, 39.022278, 24.868397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541977, 39.199829, 24.826349>,  <35.801830, 39.495747, 24.756271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541977, 39.199829, 24.826349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627059, -0.391098, 0.673676,
		-0.429859, 0.547498, 0.717960,
		-0.649629, -0.739789, 0.175197,
		35.347088, 38.977894, 24.878908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706501, 39.408451, 25.604067>,  <35.801830, 39.495747, 24.756271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706501, 39.408451, 25.604067> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628693, 39.067375, 25.410130>,  <35.582008, 38.862728, 25.293766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628693, 39.067375, 25.410130>,  <35.706501, 39.408451, 25.604067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628693, 39.067375, 25.410130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639362, -0.485077, 0.596586,
		-0.743893, -0.193941, 0.639539,
		-0.194524, -0.852694, -0.484844,
		35.570335, 38.811565, 25.264677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607903, 38.832321, 26.194340>,  <35.706501, 39.408451, 25.604067>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607903, 38.832321, 26.194340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678318, 38.631340, 25.855742>,  <35.720566, 38.510750, 25.652582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678318, 38.631340, 25.855742>,  <35.607903, 38.832321, 26.194340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678318, 38.631340, 25.855742> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427834, -0.735407, 0.525486,
		-0.886549, -0.454663, 0.085509,
		0.176035, -0.502453, -0.846495,
		35.731129, 38.480606, 25.601793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262707, 38.137390, 26.191254>,  <35.607903, 38.832321, 26.194340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262707, 38.137390, 26.191254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559612, 38.115425, 25.924110>,  <35.737755, 38.102245, 25.763824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559612, 38.115425, 25.924110>,  <35.262707, 38.137390, 26.191254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559612, 38.115425, 25.924110> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386514, -0.779063, 0.493626,
		-0.547409, -0.624536, -0.557044,
		0.742260, -0.054910, -0.667859,
		35.782291, 38.098953, 25.723753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424438, 37.378841, 26.174690>,  <35.262707, 38.137390, 26.191254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424438, 37.378841, 26.174690> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732536, 37.556705, 25.991821>,  <35.917397, 37.663422, 25.882101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732536, 37.556705, 25.991821>,  <35.424438, 37.378841, 26.174690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732536, 37.556705, 25.991821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629845, -0.417859, 0.654744,
		0.100103, -0.792259, -0.601918,
		0.770244, 0.444657, -0.457171,
		35.963608, 37.690102, 25.854670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745296, 36.820114, 26.145298>,  <35.424438, 37.378841, 26.174690>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745296, 36.820114, 26.145298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987560, 37.137341, 26.119318>,  <36.132919, 37.327679, 26.103729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987560, 37.137341, 26.119318>,  <35.745296, 36.820114, 26.145298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987560, 37.137341, 26.119318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572612, -0.377705, 0.727636,
		0.552533, -0.477891, -0.682881,
		0.605658, 0.793069, -0.064952,
		36.169258, 37.375263, 26.099833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523106, 36.666142, 26.138628>,  <35.745296, 36.820114, 26.145298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523106, 36.666142, 26.138628> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545181, 37.045708, 26.262899>,  <36.558426, 37.273445, 26.337463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545181, 37.045708, 26.262899>,  <36.523106, 36.666142, 26.138628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545181, 37.045708, 26.262899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462480, -0.300055, 0.834313,
		0.884911, 0.097642, -0.455411,
		0.055185, 0.948911, 0.310680,
		36.561737, 37.330379, 26.356104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101486, 36.456448, 25.671124>,  <36.523106, 36.666142, 26.138628>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101486, 36.456448, 25.671124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049358, 36.079723, 25.547182>,  <37.018082, 35.853687, 25.472816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049358, 36.079723, 25.547182>,  <37.101486, 36.456448, 25.671124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049358, 36.079723, 25.547182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277753, 0.334687, -0.900465,
		0.951771, -0.031289, -0.305209,
		-0.130324, -0.941810, -0.309855,
		37.010262, 35.797180, 25.454226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418026, 36.429520, 24.996910>,  <37.101486, 36.456448, 25.671124>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418026, 36.429520, 24.996910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183056, 36.105850, 25.002089>,  <37.042072, 35.911648, 25.005196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183056, 36.105850, 25.002089>,  <37.418026, 36.429520, 24.996910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183056, 36.105850, 25.002089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205162, 0.133428, -0.969590,
		0.782840, -0.572219, -0.244391,
		-0.587427, -0.809174, 0.012944,
		37.006828, 35.863098, 25.005972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668457, 36.143166, 24.389666>,  <37.418026, 36.429520, 24.996910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668457, 36.143166, 24.389666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303883, 36.010925, 24.487627>,  <37.085136, 35.931580, 24.546404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303883, 36.010925, 24.487627>,  <37.668457, 36.143166, 24.389666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303883, 36.010925, 24.487627> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318273, 0.189338, -0.928899,
		0.260729, -0.924582, -0.277792,
		-0.911440, -0.330604, 0.244904,
		37.030449, 35.911743, 24.561098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458023, 35.781246, 23.848555>,  <37.668457, 36.143166, 24.389666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458023, 35.781246, 23.848555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114620, 35.872414, 24.032299>,  <36.908577, 35.927116, 24.142546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114620, 35.872414, 24.032299>,  <37.458023, 35.781246, 23.848555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114620, 35.872414, 24.032299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416808, 0.211677, -0.884005,
		-0.298720, -0.950392, -0.086727,
		-0.858509, 0.227921, 0.459363,
		36.857067, 35.940788, 24.170109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946663, 35.512707, 23.474207>,  <37.458023, 35.781246, 23.848555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946663, 35.512707, 23.474207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766521, 35.806263, 23.677614>,  <36.658436, 35.982395, 23.799660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766521, 35.806263, 23.677614>,  <36.946663, 35.512707, 23.474207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766521, 35.806263, 23.677614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567500, 0.204416, -0.797595,
		-0.689296, -0.647781, 0.324423,
		-0.450349, 0.733889, 0.508519,
		36.631416, 36.026428, 23.830170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328667, 35.456337, 23.228811>,  <36.946663, 35.512707, 23.474207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328667, 35.456337, 23.228811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317699, 35.823738, 23.386599>,  <36.311119, 36.044178, 23.481270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317699, 35.823738, 23.386599>,  <36.328667, 35.456337, 23.228811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317699, 35.823738, 23.386599> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578979, 0.307092, -0.755300,
		-0.814881, -0.249098, 0.523373,
		-0.027420, 0.918501, 0.394466,
		36.309475, 36.099289, 23.504938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582138, 35.585739, 23.162632>,  <36.328667, 35.456337, 23.228811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582138, 35.585739, 23.162632> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751057, 35.940693, 23.236628>,  <35.852409, 36.153664, 23.281025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751057, 35.940693, 23.236628>,  <35.582138, 35.585739, 23.162632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751057, 35.940693, 23.236628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577541, 0.420695, -0.699615,
		-0.698649, 0.188606, 0.690157,
		0.422297, 0.887380, 0.184991,
		35.877747, 36.206905, 23.292126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073154, 36.070194, 23.365540>,  <35.582138, 35.585739, 23.162632>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073154, 36.070194, 23.365540> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366108, 36.299774, 23.219011>,  <35.541882, 36.437523, 23.131094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366108, 36.299774, 23.219011>,  <35.073154, 36.070194, 23.365540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366108, 36.299774, 23.219011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607079, 0.306811, -0.733023,
		-0.308326, 0.759243, 0.573137,
		0.732387, 0.573949, -0.366322,
		35.585823, 36.471958, 23.109116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920364, 36.819984, 23.516888>,  <35.073154, 36.070194, 23.365540>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920364, 36.819984, 23.516888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158070, 36.799984, 23.195801>,  <35.300694, 36.787983, 23.003149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158070, 36.799984, 23.195801>,  <34.920364, 36.819984, 23.516888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158070, 36.799984, 23.195801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690785, 0.479432, -0.541259,
		0.411913, 0.876154, 0.250367,
		0.594260, -0.050002, -0.802718,
		35.336346, 36.784985, 22.954985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832874, 37.560982, 23.145763>,  <34.920364, 36.819984, 23.516888>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832874, 37.560982, 23.145763> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006908, 37.326725, 22.872202>,  <35.111328, 37.186169, 22.708065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006908, 37.326725, 22.872202>,  <34.832874, 37.560982, 23.145763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006908, 37.326725, 22.872202> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500517, 0.474077, -0.724385,
		0.748453, 0.657474, -0.086860,
		0.435086, -0.585644, -0.683901,
		35.137436, 37.151031, 22.667032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000675, 38.036362, 22.721926>,  <34.832874, 37.560982, 23.145763>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000675, 38.036362, 22.721926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036686, 37.703857, 22.502504>,  <35.058292, 37.504356, 22.370852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036686, 37.703857, 22.502504>,  <35.000675, 38.036362, 22.721926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036686, 37.703857, 22.502504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456057, 0.455241, -0.764702,
		0.885386, 0.319012, -0.338117,
		0.090025, -0.831256, -0.548551,
		35.063694, 37.454479, 22.337938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976601, 38.307045, 22.089478>,  <35.000675, 38.036362, 22.721926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976601, 38.307045, 22.089478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904835, 37.916576, 22.040646>,  <34.861774, 37.682297, 22.011347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904835, 37.916576, 22.040646>,  <34.976601, 38.307045, 22.089478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904835, 37.916576, 22.040646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487052, 0.195957, -0.851106,
		0.854747, -0.093237, -0.510602,
		-0.179410, -0.976170, -0.122082,
		34.851013, 37.623726, 22.004021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981956, 38.201656, 21.390484>,  <34.976601, 38.307045, 22.089478>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981956, 38.201656, 21.390484> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785355, 37.887394, 21.540775>,  <34.667393, 37.698837, 21.630949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785355, 37.887394, 21.540775>,  <34.981956, 38.201656, 21.390484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785355, 37.887394, 21.540775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686791, 0.084403, -0.721937,
		0.535480, -0.612882, -0.581064,
		-0.491506, -0.785653, 0.375726,
		34.637901, 37.651699, 21.653494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944157, 37.748848, 20.855986>,  <34.981956, 38.201656, 21.390484>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944157, 37.748848, 20.855986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640129, 37.671886, 21.104267>,  <34.457714, 37.625710, 21.253237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640129, 37.671886, 21.104267>,  <34.944157, 37.748848, 20.855986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640129, 37.671886, 21.104267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633663, 0.007635, -0.773571,
		0.144101, -0.981286, -0.127724,
		-0.760070, -0.192407, 0.620704,
		34.412109, 37.614166, 21.290478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.831028, 38.180271, 25.207596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.183573, 38.261200, 25.036827>,  <29.395100, 38.309757, 24.934366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.183573, 38.261200, 25.036827>,  <28.831028, 38.180271, 25.207596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.183573, 38.261200, 25.036827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470910, -0.448890, 0.759435,
		-0.037989, -0.870381, -0.490912,
		0.881363, 0.202325, -0.426924,
		29.447981, 38.321896, 24.908751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.213638, 37.677200, 25.327644>,  <28.831028, 38.180271, 25.207596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.213638, 37.677200, 25.327644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.502235, 37.940956, 25.243124>,  <29.675394, 38.099209, 25.192411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.502235, 37.940956, 25.243124>,  <29.213638, 37.677200, 25.327644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.502235, 37.940956, 25.243124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584451, -0.416302, 0.696499,
		0.371300, -0.626016, -0.685741,
		0.721494, 0.659392, -0.211303,
		29.718683, 38.138775, 25.179733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.754789, 37.181873, 25.195623>,  <29.213638, 37.677200, 25.327644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.754789, 37.181873, 25.195623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.921448, 37.540939, 25.253033>,  <30.021442, 37.756378, 25.287477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.921448, 37.540939, 25.253033>,  <29.754789, 37.181873, 25.195623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.921448, 37.540939, 25.253033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601696, -0.390658, 0.696669,
		0.681447, -0.203906, -0.702889,
		0.416644, 0.897669, 0.143523,
		30.046440, 37.810242, 25.296089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501106, 37.066132, 25.322521>,  <29.754789, 37.181873, 25.195623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.501106, 37.066132, 25.322521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.452608, 37.432915, 25.474569>,  <30.423510, 37.652985, 25.565798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.452608, 37.432915, 25.474569>,  <30.501106, 37.066132, 25.322521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.452608, 37.432915, 25.474569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684723, -0.199986, 0.700828,
		0.718647, 0.345250, -0.603613,
		-0.121247, 0.916956, 0.380120,
		30.416235, 37.708000, 25.588606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.162470, 37.404541, 25.321264>,  <30.501106, 37.066132, 25.322521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.162470, 37.404541, 25.321264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.917112, 37.579235, 25.584480>,  <30.769897, 37.684052, 25.742409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.917112, 37.579235, 25.584480>,  <31.162470, 37.404541, 25.321264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917112, 37.579235, 25.584480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649484, -0.195115, 0.734915,
		0.449354, 0.878178, -0.163967,
		-0.613394, 0.436731, 0.658038,
		30.733093, 37.710255, 25.781891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601173, 37.791813, 25.747046>,  <31.162470, 37.404541, 25.321264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601173, 37.791813, 25.747046> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.271084, 37.732903, 25.965153>,  <31.073030, 37.697556, 26.096016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.271084, 37.732903, 25.965153>,  <31.601173, 37.791813, 25.747046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.271084, 37.732903, 25.965153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564786, -0.223293, 0.794454,
		0.004752, 0.963562, 0.267444,
		-0.825224, -0.147273, 0.545267,
		31.023516, 37.688721, 26.128733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833822, 37.966667, 26.363823>,  <31.601173, 37.791813, 25.747046>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833822, 37.966667, 26.363823> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.479746, 37.809834, 26.463985>,  <31.267300, 37.715733, 26.524084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.479746, 37.809834, 26.463985>,  <31.833822, 37.966667, 26.363823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479746, 37.809834, 26.463985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356627, -0.226236, 0.906440,
		-0.298751, 0.891676, 0.340091,
		-0.885192, -0.392085, 0.250408,
		31.214188, 37.692207, 26.539108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650030, 38.149601, 27.021677>,  <31.833822, 37.966667, 26.363823>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650030, 38.149601, 27.021677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.450144, 37.809669, 26.954659>,  <31.330212, 37.605709, 26.914448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.450144, 37.809669, 26.954659>,  <31.650030, 38.149601, 27.021677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.450144, 37.809669, 26.954659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243427, -0.323420, 0.914409,
		-0.831280, 0.416160, 0.368490,
		-0.499717, -0.849830, -0.167549,
		31.300228, 37.554722, 26.904394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.228931, 38.047016, 27.653250>,  <31.650030, 38.149601, 27.021677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.228931, 38.047016, 27.653250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.287951, 37.693207, 27.476229>,  <31.323362, 37.480923, 27.370016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.287951, 37.693207, 27.476229>,  <31.228931, 38.047016, 27.653250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.287951, 37.693207, 27.476229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294384, -0.387895, 0.873427,
		-0.944229, -0.259151, 0.203157,
		0.147546, -0.884521, -0.442551,
		31.332214, 37.427849, 27.343464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.990269, 37.592445, 28.085686>,  <31.228931, 38.047016, 27.653250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.990269, 37.592445, 28.085686> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.215544, 37.351578, 27.859335>,  <31.350708, 37.207058, 27.723524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.215544, 37.351578, 27.859335>,  <30.990269, 37.592445, 28.085686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215544, 37.351578, 27.859335> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254780, -0.524903, 0.812136,
		-0.786072, -0.601557, -0.142198,
		0.563186, -0.602168, -0.565876,
		31.384501, 37.170929, 27.689571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.782204, 36.851002, 28.301931>,  <30.990269, 37.592445, 28.085686>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.782204, 36.851002, 28.301931> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.132181, 36.840527, 28.108524>,  <31.342167, 36.834240, 27.992479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.132181, 36.840527, 28.108524>,  <30.782204, 36.851002, 28.301931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.132181, 36.840527, 28.108524> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297208, -0.759281, 0.578930,
		-0.382287, -0.650236, -0.656544,
		0.874942, -0.026187, -0.483519,
		31.394665, 36.832672, 27.963469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049377, 36.155903, 28.387615>,  <30.782204, 36.851002, 28.301931>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.049377, 36.155903, 28.387615> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.379324, 36.340729, 28.257330>,  <31.577291, 36.451626, 28.179159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.379324, 36.340729, 28.257330>,  <31.049377, 36.155903, 28.387615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.379324, 36.340729, 28.257330> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563149, -0.621084, 0.545085,
		0.049571, -0.633047, -0.772524,
		0.824867, 0.462067, -0.325712,
		31.626783, 36.479347, 28.159616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550924, 35.574688, 28.101116>,  <31.049377, 36.155903, 28.387615>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.550924, 35.574688, 28.101116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.735237, 35.913448, 28.207275>,  <31.845825, 36.116703, 28.270971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.735237, 35.913448, 28.207275>,  <31.550924, 35.574688, 28.101116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.735237, 35.913448, 28.207275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516661, -0.499112, 0.695664,
		0.721623, -0.183428, -0.667543,
		0.460783, 0.846901, 0.265401,
		31.873472, 36.167519, 28.286896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277439, 35.445774, 28.122284>,  <31.550924, 35.574688, 28.101116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277439, 35.445774, 28.122284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.197521, 35.756924, 28.360611>,  <32.149570, 35.943611, 28.503607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.197521, 35.756924, 28.360611>,  <32.277439, 35.445774, 28.122284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197521, 35.756924, 28.360611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413876, -0.484175, 0.770897,
		0.888139, 0.400613, -0.225208,
		-0.199791, 0.777871, 0.595818,
		32.137585, 35.990284, 28.539356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644508, 35.206589, 27.546106>,  <32.277439, 35.445774, 28.122284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644508, 35.206589, 27.546106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.803032, 34.873001, 27.392519>,  <32.898148, 34.672848, 27.300367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.803032, 34.873001, 27.392519>,  <32.644508, 35.206589, 27.546106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803032, 34.873001, 27.392519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448895, 0.188806, -0.873410,
		0.800893, 0.518503, -0.299540,
		0.396311, -0.833970, -0.383968,
		32.921925, 34.622810, 27.277328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780106, 35.414894, 26.939135>,  <32.644508, 35.206589, 27.546106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780106, 35.414894, 26.939135> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.805313, 35.017593, 26.900183>,  <32.820438, 34.779213, 26.876812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.805313, 35.017593, 26.900183>,  <32.780106, 35.414894, 26.939135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805313, 35.017593, 26.900183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292020, 0.074949, -0.953471,
		0.954333, 0.088527, -0.285325,
		0.063024, -0.993250, -0.097378,
		32.824219, 34.719620, 26.870970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272804, 35.234093, 26.332247>,  <32.780106, 35.414894, 26.939135>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.272804, 35.234093, 26.332247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.003635, 34.948154, 26.408325>,  <32.842136, 34.776592, 26.453972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.003635, 34.948154, 26.408325>,  <33.272804, 35.234093, 26.332247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003635, 34.948154, 26.408325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274528, 0.002581, -0.961576,
		0.686887, -0.699278, -0.197982,
		-0.672919, -0.714845, 0.190198,
		32.801758, 34.733700, 26.465385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299458, 34.827835, 25.701960>,  <33.272804, 35.234093, 26.332247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299458, 34.827835, 25.701960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.958275, 34.755379, 25.897776>,  <32.753563, 34.711906, 26.015265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.958275, 34.755379, 25.897776>,  <33.299458, 34.827835, 25.701960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958275, 34.755379, 25.897776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515993, 0.151021, -0.843175,
		0.078795, -0.971794, -0.222278,
		-0.852960, -0.181132, 0.489540,
		32.702385, 34.701038, 26.044638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951633, 34.374008, 25.263821>,  <33.299458, 34.827835, 25.701960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951633, 34.374008, 25.263821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.655396, 34.518894, 25.490210>,  <32.477654, 34.605824, 25.626043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.655396, 34.518894, 25.490210>,  <32.951633, 34.374008, 25.263821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655396, 34.518894, 25.490210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605626, 0.005085, -0.795733,
		-0.291103, -0.932081, 0.215600,
		-0.740592, 0.362213, 0.565972,
		32.433216, 34.627560, 25.660002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415897, 34.026962, 24.987438>,  <32.951633, 34.374008, 25.263821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415897, 34.026962, 24.987438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.256981, 34.331753, 25.192007>,  <32.161633, 34.514626, 25.314749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.256981, 34.331753, 25.192007>,  <32.415897, 34.026962, 24.987438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256981, 34.331753, 25.192007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630982, 0.177842, -0.755138,
		-0.666350, -0.622707, 0.410139,
		-0.397290, 0.761977, 0.511422,
		32.137794, 34.560345, 25.345434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767738, 33.959328, 24.734768>,  <32.415897, 34.026962, 24.987438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767738, 33.959328, 24.734768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.789137, 34.322960, 24.900040>,  <31.801977, 34.541138, 24.999203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.789137, 34.322960, 24.900040>,  <31.767738, 33.959328, 24.734768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.789137, 34.322960, 24.900040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791982, 0.290642, -0.536929,
		-0.608197, -0.298505, 0.735522,
		0.053498, 0.909078, 0.413178,
		31.805185, 34.595684, 25.023993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066692, 34.195034, 25.019371>,  <31.767738, 33.959328, 24.734768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066692, 34.195034, 25.019371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.278927, 34.532993, 24.992178>,  <31.406267, 34.735767, 24.975863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.278927, 34.532993, 24.992178>,  <31.066692, 34.195034, 25.019371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.278927, 34.532993, 24.992178> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690695, 0.384467, -0.612475,
		-0.491343, 0.371927, 0.787561,
		0.530587, 0.844899, -0.067983,
		31.438103, 34.786465, 24.971783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.548223, 34.765640, 25.111036>,  <31.066692, 34.195034, 25.019371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.548223, 34.765640, 25.111036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.868990, 34.893196, 24.908953>,  <31.061451, 34.969730, 24.787703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.868990, 34.893196, 24.908953>,  <30.548223, 34.765640, 25.111036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.868990, 34.893196, 24.908953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592210, 0.535885, -0.601759,
		0.078838, 0.781751, 0.618587,
		0.801917, 0.318892, -0.505209,
		31.109566, 34.988865, 24.757389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.399914, 35.432510, 24.956522>,  <30.548223, 34.765640, 25.111036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.399914, 35.432510, 24.956522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.685162, 35.348896, 24.688862>,  <30.856310, 35.298729, 24.528265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.685162, 35.348896, 24.688862>,  <30.399914, 35.432510, 24.956522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.685162, 35.348896, 24.688862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447636, 0.598814, -0.664111,
		0.539521, 0.773127, 0.333454,
		0.713119, -0.209035, -0.669153,
		30.899097, 35.286186, 24.488115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.572096, 36.039314, 24.661119>,  <30.399914, 35.432510, 24.956522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.572096, 36.039314, 24.661119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.717405, 35.791317, 24.382944>,  <30.804592, 35.642517, 24.216038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.717405, 35.791317, 24.382944>,  <30.572096, 36.039314, 24.661119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.717405, 35.791317, 24.382944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407951, 0.565223, -0.717006,
		0.837619, 0.544177, -0.047596,
		0.363276, -0.619995, -0.695440,
		30.826387, 35.605320, 24.174313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.713669, 36.449741, 24.032574>,  <30.572096, 36.039314, 24.661119>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.713669, 36.449741, 24.032574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.722534, 36.098183, 23.841972>,  <30.727854, 35.887249, 23.727612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.722534, 36.098183, 23.841972>,  <30.713669, 36.449741, 24.032574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.722534, 36.098183, 23.841972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325013, 0.444397, -0.834792,
		0.945450, 0.173370, -0.275803,
		0.022161, -0.878894, -0.476503,
		30.729183, 35.834515, 23.699022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034252, 36.598579, 23.313309>,  <30.713669, 36.449741, 24.032574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034252, 36.598579, 23.313309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.815605, 36.263950, 23.298565>,  <30.684416, 36.063175, 23.289719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.815605, 36.263950, 23.298565>,  <31.034252, 36.598579, 23.313309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.815605, 36.263950, 23.298565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516701, 0.371599, -0.771320,
		0.658960, -0.402573, -0.635380,
		-0.546619, -0.836570, -0.036859,
		30.651619, 36.012978, 23.287508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.109468, 36.322437, 22.697929>,  <31.034252, 36.598579, 23.313309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.109468, 36.322437, 22.697929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.756319, 36.193539, 22.834566>,  <30.544430, 36.116199, 22.916548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.756319, 36.193539, 22.834566>,  <31.109468, 36.322437, 22.697929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.756319, 36.193539, 22.834566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453333, 0.395015, -0.799032,
		0.122552, -0.860301, -0.494835,
		-0.882876, -0.322248, 0.341593,
		30.491457, 36.096863, 22.937044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351324, 35.824699, 22.171070>,  <31.109468, 36.322437, 22.697929>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351324, 35.824699, 22.171070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.518869, 35.633953, 21.861967>,  <31.619396, 35.519505, 21.676504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.518869, 35.633953, 21.861967>,  <31.351324, 35.824699, 22.171070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518869, 35.633953, 21.861967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656115, -0.429379, 0.620602,
		-0.627748, -0.766966, 0.133026,
		0.418862, -0.476861, -0.772759,
		31.644527, 35.490894, 21.630138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405588, 35.050354, 22.375561>,  <31.351324, 35.824699, 22.171070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405588, 35.050354, 22.375561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.671268, 35.119965, 22.084755>,  <31.830677, 35.161732, 21.910271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.671268, 35.119965, 22.084755>,  <31.405588, 35.050354, 22.375561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.671268, 35.119965, 22.084755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727663, -0.373361, 0.575420,
		-0.171300, -0.911217, -0.374620,
		0.664201, 0.174027, -0.727015,
		31.870529, 35.172173, 21.866650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.811487, 34.487465, 22.360624>,  <31.405588, 35.050354, 22.375561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.811487, 34.487465, 22.360624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.034901, 34.747677, 22.154774>,  <32.168949, 34.903805, 22.031263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.034901, 34.747677, 22.154774>,  <31.811487, 34.487465, 22.360624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034901, 34.747677, 22.154774> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820933, -0.344687, 0.455259,
		0.118776, -0.676754, -0.726565,
		0.558536, 0.650535, -0.514628,
		32.202461, 34.942837, 22.000385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.348957, 34.082279, 22.124516>,  <31.811487, 34.487465, 22.360624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.348957, 34.082279, 22.124516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.507336, 34.449490, 22.115944>,  <32.602364, 34.669815, 22.110800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.507336, 34.449490, 22.115944>,  <32.348957, 34.082279, 22.124516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507336, 34.449490, 22.115944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825527, -0.345633, 0.446142,
		0.402163, -0.194338, -0.894705,
		0.395942, 0.918025, -0.021431,
		32.626118, 34.724895, 22.109514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037876, 34.099857, 21.772272>,  <32.348957, 34.082279, 22.124516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037876, 34.099857, 21.772272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.018154, 34.409294, 22.024979>,  <33.006321, 34.594955, 22.176601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.018154, 34.409294, 22.024979>,  <33.037876, 34.099857, 21.772272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018154, 34.409294, 22.024979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831536, -0.318601, 0.455019,
		0.553279, 0.547768, -0.627560,
		-0.049303, 0.773591, 0.631764,
		33.003365, 34.641373, 22.214508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758915, 34.380249, 21.672848>,  <33.037876, 34.099857, 21.772272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758915, 34.380249, 21.672848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.605976, 34.496090, 22.023832>,  <33.514214, 34.565594, 22.234423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.605976, 34.496090, 22.023832>,  <33.758915, 34.380249, 21.672848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605976, 34.496090, 22.023832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821184, -0.328872, 0.466368,
		0.423632, 0.898875, -0.112069,
		-0.382351, 0.289598, 0.877463,
		33.491272, 34.582970, 22.287071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338352, 34.461761, 22.021914>,  <33.758915, 34.380249, 21.672848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338352, 34.461761, 22.021914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.052998, 34.460514, 22.302219>,  <33.881786, 34.459766, 22.470402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.052998, 34.460514, 22.302219>,  <34.338352, 34.461761, 22.021914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052998, 34.460514, 22.302219> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686432, -0.204363, 0.697888,
		0.141034, 0.978890, 0.147930,
		-0.713387, -0.003117, 0.700763,
		33.838982, 34.459579, 22.512449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648445, 34.906158, 22.561373>,  <34.338352, 34.461761, 22.021914>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648445, 34.906158, 22.561373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.359287, 34.671623, 22.707596>,  <34.185795, 34.530903, 22.795330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.359287, 34.671623, 22.707596>,  <34.648445, 34.906158, 22.561373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359287, 34.671623, 22.707596> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561368, -0.189923, 0.805478,
		-0.402857, 0.787486, 0.466446,
		-0.722892, -0.586340, 0.365558,
		34.142418, 34.495720, 22.817263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693260, 34.959793, 23.187574>,  <34.648445, 34.906158, 22.561373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693260, 34.959793, 23.187574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.495049, 34.612389, 23.192156>,  <34.376122, 34.403946, 23.194904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.495049, 34.612389, 23.192156>,  <34.693260, 34.959793, 23.187574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.495049, 34.612389, 23.192156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400136, -0.216556, 0.890503,
		-0.770933, 0.445856, 0.454834,
		-0.495533, -0.868514, 0.011453,
		34.346390, 34.351833, 23.195591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535130, 34.847542, 23.892075>,  <34.693260, 34.959793, 23.187574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535130, 34.847542, 23.892075> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.490238, 34.485382, 23.728289>,  <34.463303, 34.268085, 23.630018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.490238, 34.485382, 23.728289>,  <34.535130, 34.847542, 23.892075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490238, 34.485382, 23.728289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056630, -0.417225, 0.907037,
		-0.992068, 0.078607, 0.098097,
		-0.112228, -0.905397, -0.409464,
		34.456570, 34.213764, 23.605450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114479, 34.404659, 24.403738>,  <34.535130, 34.847542, 23.892075>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114479, 34.404659, 24.403738> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.298874, 34.134117, 24.173944>,  <34.409512, 33.971790, 24.036068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.298874, 34.134117, 24.173944>,  <34.114479, 34.404659, 24.403738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298874, 34.134117, 24.173944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294985, -0.493764, 0.818035,
		-0.836944, -0.546566, -0.028102,
		0.460986, -0.676360, -0.574482,
		34.437168, 33.931210, 24.001600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833378, 33.721363, 24.720953>,  <34.114479, 34.404659, 24.403738>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833378, 33.721363, 24.720953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.150303, 33.626389, 24.496143>,  <34.340458, 33.569405, 24.361258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.150303, 33.626389, 24.496143>,  <33.833378, 33.721363, 24.720953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150303, 33.626389, 24.496143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280975, -0.675678, 0.681551,
		-0.541573, -0.697913, -0.468631,
		0.792307, -0.237436, -0.562026,
		34.387997, 33.555157, 24.327536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841328, 33.030994, 24.820358>,  <33.833378, 33.721363, 24.720953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841328, 33.030994, 24.820358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.189304, 33.128605, 24.648943>,  <34.398090, 33.187172, 24.546093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.189304, 33.128605, 24.648943>,  <33.841328, 33.030994, 24.820358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189304, 33.128605, 24.648943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475319, -0.646464, 0.596789,
		-0.131404, -0.722867, -0.678378,
		0.869945, 0.244026, -0.428540,
		34.450287, 33.201813, 24.520380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233864, 32.422867, 24.749741>,  <33.841328, 33.030994, 24.820358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233864, 32.422867, 24.749741> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.490177, 32.729866, 24.757223>,  <34.643967, 32.914066, 24.761713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.490177, 32.729866, 24.757223>,  <34.233864, 32.422867, 24.749741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490177, 32.729866, 24.757223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523927, -0.454976, 0.720068,
		0.561159, -0.451606, -0.693652,
		0.640782, 0.767495, 0.018705,
		34.682411, 32.960114, 24.762835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.512672, 37.175869, 20.528982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.302380, 37.395271, 20.789057>,  <34.176205, 37.526913, 20.945103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.302380, 37.395271, 20.789057>,  <34.512672, 37.175869, 20.528982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302380, 37.395271, 20.789057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705225, 0.146367, -0.693710,
		-0.475673, -0.823233, 0.309874,
		-0.525730, 0.548510, 0.650188,
		34.144661, 37.559826, 20.984114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840679, 36.912445, 20.463980>,  <34.512672, 37.175869, 20.528982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840679, 36.912445, 20.463980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.815197, 37.281059, 20.617193>,  <33.799908, 37.502228, 20.709122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.815197, 37.281059, 20.617193>,  <33.840679, 36.912445, 20.463980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815197, 37.281059, 20.617193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752043, 0.207977, -0.625441,
		-0.656028, -0.327902, 0.679785,
		-0.063703, 0.921535, 0.383035,
		33.796085, 37.557518, 20.732103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198860, 36.964409, 20.465393>,  <33.840679, 36.912445, 20.463980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198860, 36.964409, 20.465393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.297218, 37.348469, 20.518545>,  <33.356232, 37.578903, 20.550436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.297218, 37.348469, 20.518545>,  <33.198860, 36.964409, 20.465393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297218, 37.348469, 20.518545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782761, 0.277553, -0.557001,
		-0.571683, 0.032951, 0.819813,
		0.245895, 0.960145, 0.132880,
		33.370987, 37.636513, 20.558409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558338, 37.373775, 20.815903>,  <33.198860, 36.964409, 20.465393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558338, 37.373775, 20.815903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.815430, 37.597630, 20.606638>,  <32.969685, 37.731941, 20.481079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.815430, 37.597630, 20.606638>,  <32.558338, 37.373775, 20.815903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815430, 37.597630, 20.606638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763387, 0.410533, -0.498702,
		-0.064317, 0.719908, 0.691084,
		0.642732, 0.559639, -0.523164,
		33.008247, 37.765522, 20.449688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259960, 38.054905, 20.700085>,  <32.558338, 37.373775, 20.815903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259960, 38.054905, 20.700085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.537643, 38.053665, 20.412180>,  <32.704254, 38.052921, 20.239437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.537643, 38.053665, 20.412180>,  <32.259960, 38.054905, 20.700085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537643, 38.053665, 20.412180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652818, 0.418458, -0.631445,
		0.303148, 0.908231, 0.288474,
		0.694212, -0.003100, -0.719764,
		32.745907, 38.052734, 20.196251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.069908, 38.653168, 20.377289>,  <32.259960, 38.054905, 20.700085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.069908, 38.653168, 20.377289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.327888, 38.505848, 20.109440>,  <32.482677, 38.417458, 19.948730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.327888, 38.505848, 20.109440>,  <32.069908, 38.653168, 20.377289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.327888, 38.505848, 20.109440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361114, 0.625356, -0.691756,
		0.673524, 0.687960, 0.270327,
		0.644951, -0.368296, -0.669624,
		32.521374, 38.395359, 19.908552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396446, 39.282398, 19.970640>,  <32.069908, 38.653168, 20.377289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396446, 39.282398, 19.970640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.469658, 38.961823, 19.742887>,  <32.513584, 38.769478, 19.606236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.469658, 38.961823, 19.742887>,  <32.396446, 39.282398, 19.970640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469658, 38.961823, 19.742887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146462, 0.550473, -0.821905,
		0.972137, 0.233824, -0.016629,
		0.183027, -0.801440, -0.569381,
		32.524567, 38.721390, 19.572073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894730, 39.418232, 19.430841>,  <32.396446, 39.282398, 19.970640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894730, 39.418232, 19.430841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.702778, 39.097347, 19.288755>,  <32.587608, 38.904816, 19.203505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.702778, 39.097347, 19.288755>,  <32.894730, 39.418232, 19.430841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702778, 39.097347, 19.288755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143532, 0.471208, -0.870265,
		0.865516, -0.366635, -0.341264,
		-0.479876, -0.802211, -0.355214,
		32.558815, 38.856686, 19.182192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233994, 39.235649, 18.791187>,  <32.894730, 39.418232, 19.430841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233994, 39.235649, 18.791187> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.852390, 39.117462, 18.811470>,  <32.623428, 39.046551, 18.823641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.852390, 39.117462, 18.811470>,  <33.233994, 39.235649, 18.791187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852390, 39.117462, 18.811470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160621, 0.360958, -0.918646,
		0.253121, -0.884540, -0.391814,
		-0.954008, -0.295462, 0.050710,
		32.566189, 39.028824, 18.826683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080475, 39.143566, 18.120125>,  <33.233994, 39.235649, 18.791187>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080475, 39.143566, 18.120125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.718506, 39.148964, 18.290274>,  <32.501324, 39.152203, 18.392363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.718506, 39.148964, 18.290274>,  <33.080475, 39.143566, 18.120125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718506, 39.148964, 18.290274> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390926, 0.368726, -0.843337,
		-0.168226, -0.929440, -0.328392,
		-0.904918, 0.013494, 0.425371,
		32.447029, 39.153011, 18.417885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661217, 38.834156, 17.689711>,  <33.080475, 39.143566, 18.120125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661217, 38.834156, 17.689711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.358673, 39.009991, 17.883488>,  <32.177147, 39.115490, 17.999754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.358673, 39.009991, 17.883488>,  <32.661217, 38.834156, 17.689711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358673, 39.009991, 17.883488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392660, 0.287217, -0.873684,
		-0.523196, -0.851043, -0.044634,
		-0.756362, 0.439582, 0.484442,
		32.131763, 39.141865, 18.028820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011299, 38.606434, 17.418116>,  <32.661217, 38.834156, 17.689711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011299, 38.606434, 17.418116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.936668, 38.952690, 17.603954>,  <31.891890, 39.160446, 17.715458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.936668, 38.952690, 17.603954>,  <32.011299, 38.606434, 17.418116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.936668, 38.952690, 17.603954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524558, 0.312074, -0.792117,
		-0.830679, -0.391498, 0.395855,
		-0.186576, 0.865644, 0.464597,
		31.880695, 39.212383, 17.743334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.225405, 38.691414, 17.483255>,  <32.011299, 38.606434, 17.418116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.225405, 38.691414, 17.483255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.434944, 39.031834, 17.468832>,  <31.560667, 39.236084, 17.460178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.434944, 39.031834, 17.468832>,  <31.225405, 38.691414, 17.483255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434944, 39.031834, 17.468832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424463, 0.224103, -0.877274,
		-0.738522, 0.474863, 0.478634,
		0.523848, 0.851048, -0.036057,
		31.592098, 39.287148, 17.458015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.765659, 39.018990, 17.193872>,  <31.225405, 38.691414, 17.483255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.765659, 39.018990, 17.193872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.074846, 39.266804, 17.139175>,  <31.260359, 39.415493, 17.106358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.074846, 39.266804, 17.139175>,  <30.765659, 39.018990, 17.193872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.074846, 39.266804, 17.139175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491403, 0.448289, -0.746699,
		-0.401308, 0.644368, 0.650954,
		0.772965, 0.619537, -0.136742,
		31.306736, 39.452663, 17.098152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.316053, 38.511795, 16.954369>,  <30.765659, 39.018990, 17.193872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.316053, 38.511795, 16.954369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.965361, 38.322117, 16.986570>,  <29.754944, 38.208309, 17.005892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.965361, 38.322117, 16.986570>,  <30.316053, 38.511795, 16.954369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.965361, 38.322117, 16.986570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398509, -0.622446, 0.673611,
		-0.269313, 0.622658, 0.734688,
		-0.876733, -0.474192, 0.080502,
		29.702341, 38.179859, 17.010721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.095718, 38.599537, 17.657179>,  <30.316053, 38.511795, 16.954369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.095718, 38.599537, 17.657179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.883114, 38.291393, 17.516304>,  <29.755550, 38.106506, 17.431780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.883114, 38.291393, 17.516304>,  <30.095718, 38.599537, 17.657179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883114, 38.291393, 17.516304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167022, -0.502933, 0.848034,
		-0.830421, 0.391917, 0.395982,
		-0.531511, -0.770363, -0.352188,
		29.723661, 38.060284, 17.410648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.609396, 38.400913, 18.148075>,  <30.095718, 38.599537, 17.657179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.609396, 38.400913, 18.148075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.672522, 38.084152, 17.912115>,  <29.710398, 37.894096, 17.770538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.672522, 38.084152, 17.912115>,  <29.609396, 38.400913, 18.148075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.672522, 38.084152, 17.912115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173933, -0.565754, 0.806021,
		-0.972030, -0.229806, 0.048453,
		0.157816, -0.791904, -0.589901,
		29.719866, 37.846581, 17.735146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.241953, 37.939396, 18.507656>,  <29.609396, 38.400913, 18.148075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.241953, 37.939396, 18.507656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.463224, 37.726482, 18.251324>,  <29.595987, 37.598736, 18.097525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.463224, 37.726482, 18.251324>,  <29.241953, 37.939396, 18.507656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.463224, 37.726482, 18.251324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320515, -0.574046, 0.753486,
		-0.768937, -0.622209, -0.146944,
		0.553178, -0.532286, -0.640832,
		29.629177, 37.566795, 18.059074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.119129, 37.298946, 18.632835>,  <29.241953, 37.939396, 18.507656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.119129, 37.298946, 18.632835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.478422, 37.280018, 18.458050>,  <29.693998, 37.268661, 18.353178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.478422, 37.280018, 18.458050>,  <29.119129, 37.298946, 18.632835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.478422, 37.280018, 18.458050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274057, -0.716942, 0.641005,
		-0.343610, -0.695525, -0.631013,
		0.898234, -0.047322, -0.436961,
		29.747892, 37.265820, 18.326962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.309944, 36.571957, 18.683022>,  <29.119129, 37.298946, 18.632835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.309944, 36.571957, 18.683022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.659151, 36.758385, 18.625582>,  <29.868675, 36.870243, 18.591118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.659151, 36.758385, 18.625582>,  <29.309944, 36.571957, 18.683022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.659151, 36.758385, 18.625582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420696, -0.570766, 0.705153,
		0.246688, -0.676022, -0.694363,
		0.873018, 0.466069, -0.143599,
		29.921057, 36.898205, 18.582502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.890970, 36.045422, 18.610172>,  <29.309944, 36.571957, 18.683022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.890970, 36.045422, 18.610172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.108456, 36.363018, 18.718950>,  <30.238947, 36.553577, 18.784218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.108456, 36.363018, 18.718950>,  <29.890970, 36.045422, 18.610172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.108456, 36.363018, 18.718950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428066, -0.541066, 0.723883,
		0.721898, -0.277173, -0.634065,
		0.543712, 0.793992, 0.271945,
		30.271570, 36.601215, 18.800533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.630922, 35.864079, 18.476274>,  <29.890970, 36.045422, 18.610172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.630922, 35.864079, 18.476274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.597633, 36.147270, 18.756798>,  <30.577660, 36.317184, 18.925112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.597633, 36.147270, 18.756798>,  <30.630922, 35.864079, 18.476274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.597633, 36.147270, 18.756798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517391, -0.570768, 0.637598,
		0.851693, 0.415914, -0.318802,
		-0.083224, 0.707982, 0.701309,
		30.572666, 36.359665, 18.967190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.236059, 35.759865, 18.806932>,  <30.630922, 35.864079, 18.476274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.236059, 35.759865, 18.806932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.012959, 35.999229, 19.036999>,  <30.879099, 36.142849, 19.175037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.012959, 35.999229, 19.036999>,  <31.236059, 35.759865, 18.806932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.012959, 35.999229, 19.036999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420945, -0.393291, 0.817391,
		0.715346, 0.698013, -0.032541,
		-0.557751, 0.598415, 0.575164,
		30.845633, 36.178753, 19.209547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.726570, 36.007515, 19.326460>,  <31.236059, 35.759865, 18.806932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.726570, 36.007515, 19.326460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.367575, 36.095863, 19.479156>,  <31.152178, 36.148872, 19.570774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.367575, 36.095863, 19.479156>,  <31.726570, 36.007515, 19.326460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.367575, 36.095863, 19.479156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354588, -0.153329, 0.922365,
		0.262256, 0.963175, 0.059293,
		-0.897491, 0.220871, 0.381742,
		31.098328, 36.162125, 19.593679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853954, 36.521618, 19.849930>,  <31.726570, 36.007515, 19.326460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853954, 36.521618, 19.849930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.507217, 36.335739, 19.922199>,  <31.299175, 36.224213, 19.965561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.507217, 36.335739, 19.922199>,  <31.853954, 36.521618, 19.849930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.507217, 36.335739, 19.922199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236720, -0.064665, 0.969424,
		-0.438807, 0.883105, 0.166058,
		-0.866841, -0.464699, 0.180673,
		31.247166, 36.196331, 19.976400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821468, 36.596912, 20.541910>,  <31.853954, 36.521618, 19.849930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821468, 36.596912, 20.541910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.524158, 36.331207, 20.510164>,  <31.345772, 36.171783, 20.491116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.524158, 36.331207, 20.510164>,  <31.821468, 36.596912, 20.541910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.524158, 36.331207, 20.510164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179891, -0.312725, 0.932653,
		-0.644343, 0.678942, 0.351936,
		-0.743277, -0.664259, -0.079367,
		31.301176, 36.131931, 20.486355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.633593, 36.631767, 21.127045>,  <31.821468, 36.596912, 20.541910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.633593, 36.631767, 21.127045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.475689, 36.287781, 20.997658>,  <31.380947, 36.081390, 20.920027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.475689, 36.287781, 20.997658>,  <31.633593, 36.631767, 21.127045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475689, 36.287781, 20.997658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317640, -0.458088, 0.830217,
		-0.862131, 0.224989, 0.453993,
		-0.394758, -0.859963, -0.323466,
		31.357262, 36.029793, 20.900618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.163345, 36.501976, 21.587152>,  <31.633593, 36.631767, 21.127045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.163345, 36.501976, 21.587152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.257519, 36.160194, 21.401903>,  <31.314022, 35.955124, 21.290754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.257519, 36.160194, 21.401903>,  <31.163345, 36.501976, 21.587152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.257519, 36.160194, 21.401903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437155, -0.332492, 0.835671,
		-0.868025, -0.399200, 0.295249,
		0.235432, -0.854453, -0.463123,
		31.328148, 35.903858, 21.262966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.576366, 36.025272, 21.893648>,  <31.163345, 36.501976, 21.587152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.576366, 36.025272, 21.893648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.317339, 36.044968, 22.197813>,  <30.161922, 36.056786, 22.380312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.317339, 36.044968, 22.197813>,  <30.576366, 36.025272, 21.893648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.317339, 36.044968, 22.197813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723489, 0.273528, -0.633835,
		-0.239204, -0.960603, -0.141504,
		-0.647569, 0.049239, 0.760414,
		30.123068, 36.059738, 22.425938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.977257, 35.560123, 21.879385>,  <30.576366, 36.025272, 21.893648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.977257, 35.560123, 21.879385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.863462, 35.867443, 22.108746>,  <29.795185, 36.051834, 22.246363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.863462, 35.867443, 22.108746>,  <29.977257, 35.560123, 21.879385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.863462, 35.867443, 22.108746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676647, 0.262788, -0.687816,
		-0.679129, -0.583665, 0.445105,
		-0.284487, 0.768295, 0.573402,
		29.778116, 36.097931, 22.280766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.155502, 35.540825, 22.042540>,  <29.977257, 35.560123, 21.879385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.155502, 35.540825, 22.042540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.309536, 35.909489, 22.061499>,  <29.401957, 36.130688, 22.072874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.309536, 35.909489, 22.061499>,  <29.155502, 35.540825, 22.042540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.309536, 35.909489, 22.061499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664668, 0.312606, -0.678597,
		-0.640255, 0.229814, 0.732980,
		0.385085, 0.921663, 0.047397,
		29.425062, 36.185989, 22.075718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.591797, 35.958786, 21.752199>,  <29.155502, 35.540825, 22.042540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.591797, 35.958786, 21.752199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.851658, 36.259693, 21.796101>,  <29.007574, 36.440239, 21.822441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.851658, 36.259693, 21.796101>,  <28.591797, 35.958786, 21.752199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.851658, 36.259693, 21.796101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493198, 0.526911, -0.692185,
		-0.578539, 0.395548, 0.713326,
		0.649652, 0.752267, 0.109755,
		29.046553, 36.485374, 21.829027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.240623, 36.608139, 21.804085>,  <28.591797, 35.958786, 21.752199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.240623, 36.608139, 21.804085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.607759, 36.733185, 21.706236>,  <28.828041, 36.808212, 21.647528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.607759, 36.733185, 21.706236>,  <28.240623, 36.608139, 21.804085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.607759, 36.733185, 21.706236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383482, 0.539169, -0.749826,
		-0.102516, 0.782028, 0.614754,
		0.917841, 0.312616, -0.244620,
		28.883112, 36.826969, 21.632851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.240234, 37.365406, 21.936525>,  <28.240623, 36.608139, 21.804085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.240234, 37.365406, 21.936525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.538748, 37.305698, 21.677055>,  <28.717855, 37.269875, 21.521374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.538748, 37.305698, 21.677055>,  <28.240234, 37.365406, 21.936525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.538748, 37.305698, 21.677055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509574, 0.498865, -0.701048,
		0.428246, 0.853729, 0.296232,
		0.746284, -0.149269, -0.648675,
		28.762632, 37.260918, 21.482452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.317516, 37.924969, 21.527327>,  <28.240234, 37.365406, 21.936525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.317516, 37.924969, 21.527327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.541851, 37.687191, 21.296814>,  <28.676451, 37.544525, 21.158506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.541851, 37.687191, 21.296814>,  <28.317516, 37.924969, 21.527327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.541851, 37.687191, 21.296814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235614, 0.552679, -0.799395,
		0.793694, 0.584108, 0.169902,
		0.560835, -0.594444, -0.576282,
		28.710102, 37.508858, 21.123930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.876995, 38.440769, 21.832233>,  <28.317516, 37.924969, 21.527327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.876995, 38.440769, 21.832233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.805656, 38.782829, 22.026928>,  <28.762854, 38.988064, 22.143745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.805656, 38.782829, 22.026928>,  <28.876995, 38.440769, 21.832233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.805656, 38.782829, 22.026928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542811, -0.327083, 0.773546,
		0.820701, 0.402164, -0.405851,
		-0.178346, 0.855150, 0.486736,
		28.752153, 39.039375, 22.172949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.525709, 38.697910, 22.061712>,  <28.876995, 38.440769, 21.832233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.525709, 38.697910, 22.061712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.255661, 38.869205, 22.301987>,  <29.093632, 38.971981, 22.446152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.255661, 38.869205, 22.301987>,  <29.525709, 38.697910, 22.061712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.255661, 38.869205, 22.301987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614581, -0.123891, 0.779064,
		0.408044, 0.895133, -0.179545,
		-0.675122, 0.428238, 0.600685,
		29.053123, 38.997677, 22.482193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.932011, 39.014748, 22.617846>,  <29.525709, 38.697910, 22.061712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.932011, 39.014748, 22.617846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.568417, 39.038689, 22.782848>,  <29.350260, 39.053055, 22.881849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.568417, 39.038689, 22.782848>,  <29.932011, 39.014748, 22.617846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.568417, 39.038689, 22.782848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391214, -0.219046, 0.893851,
		0.143857, 0.973877, 0.175694,
		-0.908987, 0.059853, 0.412506,
		29.295721, 39.056644, 22.906601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.989962, 39.440746, 23.204252>,  <29.932011, 39.014748, 22.617846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.989962, 39.440746, 23.204252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.647633, 39.245213, 23.271915>,  <29.442236, 39.127892, 23.312513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.647633, 39.245213, 23.271915>,  <29.989962, 39.440746, 23.204252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.647633, 39.245213, 23.271915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301845, -0.206368, 0.930753,
		-0.420073, 0.847618, 0.324165,
		-0.855820, -0.488832, 0.169159,
		29.390886, 39.098564, 23.322662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.867521, 39.663982, 23.900730>,  <29.989962, 39.440746, 23.204252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.867521, 39.663982, 23.900730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.632851, 39.345798, 23.839996>,  <29.492048, 39.154888, 23.803556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.632851, 39.345798, 23.839996>,  <29.867521, 39.663982, 23.900730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.632851, 39.345798, 23.839996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203936, -0.326569, 0.922910,
		-0.783721, 0.510487, 0.353813,
		-0.586678, -0.795459, -0.151833,
		29.456846, 39.107162, 23.794447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.491022, 39.621780, 24.530840>,  <29.867521, 39.663982, 23.900730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.491022, 39.621780, 24.530840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.474600, 39.266064, 24.348640>,  <29.464746, 39.052635, 24.239321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.474600, 39.266064, 24.348640>,  <29.491022, 39.621780, 24.530840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.474600, 39.266064, 24.348640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272648, -0.448552, 0.851154,
		-0.961237, -0.089245, 0.260880,
		-0.041057, -0.889290, -0.455498,
		29.462282, 38.999275, 24.211990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.068644, 39.236538, 25.013454>,  <29.491022, 39.621780, 24.530840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.068644, 39.236538, 25.013454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.277388, 38.974998, 24.794313>,  <29.402634, 38.818073, 24.662828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.277388, 38.974998, 24.794313>,  <29.068644, 39.236538, 25.013454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.277388, 38.974998, 24.794313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299061, -0.461241, 0.835356,
		-0.798891, -0.599778, -0.045161,
		0.521858, -0.653853, -0.547851,
		29.433945, 38.778843, 24.629957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.954592, 42.831749, 19.394775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.922239, 42.456310, 19.260620>,  <31.902828, 42.231045, 19.180126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.922239, 42.456310, 19.260620>,  <31.954592, 42.831749, 19.394775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.922239, 42.456310, 19.260620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288319, -0.344139, 0.893555,
		-0.954113, -0.024429, 0.298450,
		-0.080879, -0.938601, -0.335390,
		31.897976, 42.174728, 19.160004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.416227, 42.394005, 19.885836>,  <31.954592, 42.831749, 19.394775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.416227, 42.394005, 19.885836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.670544, 42.146946, 19.700670>,  <31.823133, 41.998711, 19.589571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.670544, 42.146946, 19.700670>,  <31.416227, 42.394005, 19.885836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.670544, 42.146946, 19.700670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225281, -0.425134, 0.876647,
		-0.738255, -0.661648, -0.131152,
		0.635789, -0.617643, -0.462914,
		31.861280, 41.961655, 19.561796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347610, 41.820812, 20.288837>,  <31.416227, 42.394005, 19.885836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347610, 41.820812, 20.288837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.679829, 41.732792, 20.084183>,  <31.879160, 41.679981, 19.961390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.679829, 41.732792, 20.084183>,  <31.347610, 41.820812, 20.288837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.679829, 41.732792, 20.084183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339175, -0.528809, 0.778024,
		-0.441762, -0.819718, -0.364565,
		0.830546, -0.220050, -0.511636,
		31.928991, 41.666775, 19.930691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431412, 41.080627, 20.329493>,  <31.347610, 41.820812, 20.288837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431412, 41.080627, 20.329493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.792206, 41.232048, 20.246426>,  <32.008682, 41.322899, 20.196585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.792206, 41.232048, 20.246426>,  <31.431412, 41.080627, 20.329493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.792206, 41.232048, 20.246426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387388, -0.497114, 0.776407,
		0.190674, -0.780754, -0.595035,
		0.901983, 0.378550, -0.207668,
		32.062801, 41.345612, 20.184126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.937422, 40.441494, 20.327503>,  <31.431412, 41.080627, 20.329493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.937422, 40.441494, 20.327503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.154552, 40.775223, 20.365957>,  <32.284832, 40.975460, 20.389029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.154552, 40.775223, 20.365957>,  <31.937422, 40.441494, 20.327503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154552, 40.775223, 20.365957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509984, -0.418404, 0.751568,
		0.667273, -0.358945, -0.652613,
		0.542828, 0.834324, 0.096134,
		32.317402, 41.025520, 20.394796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640587, 40.326714, 20.308556>,  <31.937422, 40.441494, 20.327503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.640587, 40.326714, 20.308556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.615711, 40.669979, 20.512396>,  <32.600784, 40.875938, 20.634701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.615711, 40.669979, 20.512396>,  <32.640587, 40.326714, 20.308556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615711, 40.669979, 20.512396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444501, -0.433341, 0.783986,
		0.893617, 0.275275, -0.354503,
		-0.062191, 0.858160, 0.509601,
		32.597054, 40.927425, 20.665276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139183, 40.222847, 20.744970>,  <32.640587, 40.326714, 20.308556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139183, 40.222847, 20.744970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.967625, 40.560570, 20.873466>,  <32.864689, 40.763203, 20.950565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.967625, 40.560570, 20.873466>,  <33.139183, 40.222847, 20.744970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967625, 40.560570, 20.873466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378267, -0.155076, 0.912615,
		0.820341, 0.512936, -0.252860,
		-0.428900, 0.844303, 0.321242,
		32.838955, 40.813862, 20.969839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654034, 40.555614, 21.051439>,  <33.139183, 40.222847, 20.744970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654034, 40.555614, 21.051439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.309307, 40.691307, 21.202272>,  <33.102470, 40.772724, 21.292772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.309307, 40.691307, 21.202272>,  <33.654034, 40.555614, 21.051439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309307, 40.691307, 21.202272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294410, -0.270815, 0.916505,
		0.413030, 0.900877, 0.133519,
		-0.861817, 0.339235, 0.377082,
		33.050762, 40.793079, 21.315397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791763, 40.943115, 21.633663>,  <33.654034, 40.555614, 21.051439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791763, 40.943115, 21.633663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.409836, 40.829578, 21.668905>,  <33.180679, 40.761456, 21.690050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.409836, 40.829578, 21.668905>,  <33.791763, 40.943115, 21.633663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409836, 40.829578, 21.668905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156273, -0.227329, 0.961197,
		-0.252802, 0.931533, 0.261414,
		-0.954814, -0.283845, 0.088104,
		33.123390, 40.744427, 21.695337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629154, 41.095673, 22.256617>,  <33.791763, 40.943115, 21.633663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629154, 41.095673, 22.256617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.344597, 40.826645, 22.175058>,  <33.173862, 40.665230, 22.126123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.344597, 40.826645, 22.175058>,  <33.629154, 41.095673, 22.256617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344597, 40.826645, 22.175058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085634, -0.370909, 0.924713,
		-0.697559, 0.640373, 0.321456,
		-0.711392, -0.672569, -0.203893,
		33.131180, 40.624874, 22.113890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077442, 41.122131, 22.840464>,  <33.629154, 41.095673, 22.256617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077442, 41.122131, 22.840464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.052021, 40.768490, 22.655287>,  <33.036770, 40.556305, 22.544180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.052021, 40.768490, 22.655287>,  <33.077442, 41.122131, 22.840464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052021, 40.768490, 22.655287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282756, -0.460824, 0.841243,
		-0.957084, -0.077436, 0.279274,
		-0.063554, -0.884107, -0.462943,
		33.032955, 40.503258, 22.516403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653210, 40.701042, 23.278696>,  <33.077442, 41.122131, 22.840464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653210, 40.701042, 23.278696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.864365, 40.437046, 23.064877>,  <32.991058, 40.278648, 22.936584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.864365, 40.437046, 23.064877>,  <32.653210, 40.701042, 23.278696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864365, 40.437046, 23.064877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439131, -0.326632, 0.836944,
		-0.726977, -0.676552, 0.117397,
		0.527890, -0.659992, -0.534549,
		33.022732, 40.239048, 22.904512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984104, 40.424393, 23.351473>,  <32.653210, 40.701042, 23.278696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984104, 40.424393, 23.351473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.679144, 40.436047, 23.610054>,  <31.496168, 40.443039, 23.765202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.679144, 40.436047, 23.610054>,  <31.984104, 40.424393, 23.351473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.679144, 40.436047, 23.610054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580147, 0.411778, -0.702758,
		-0.286668, -0.910819, -0.297037,
		-0.762399, 0.029133, 0.646452,
		31.450424, 40.444786, 23.803989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413406, 40.133934, 23.046762>,  <31.984104, 40.424393, 23.351473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413406, 40.133934, 23.046762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.267595, 40.363152, 23.340359>,  <31.180109, 40.500683, 23.516516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.267595, 40.363152, 23.340359>,  <31.413406, 40.133934, 23.046762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.267595, 40.363152, 23.340359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621912, 0.436841, -0.649919,
		-0.693068, -0.693391, 0.197142,
		-0.364528, 0.573044, 0.733989,
		31.158237, 40.535065, 23.560555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.691763, 40.075600, 23.041124>,  <31.413406, 40.133934, 23.046762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.691763, 40.075600, 23.041124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.732841, 40.412815, 23.252306>,  <30.757488, 40.615147, 23.379015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.732841, 40.412815, 23.252306>,  <30.691763, 40.075600, 23.041124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.732841, 40.412815, 23.252306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732036, 0.423411, -0.533710,
		-0.673481, -0.331671, 0.660619,
		0.102697, 0.843040, 0.527955,
		30.763651, 40.665726, 23.410692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.992020, 40.305084, 23.197666>,  <30.691763, 40.075600, 23.041124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.992020, 40.305084, 23.197666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.226095, 40.626751, 23.239372>,  <30.366541, 40.819752, 23.264397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.226095, 40.626751, 23.239372>,  <29.992020, 40.305084, 23.197666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226095, 40.626751, 23.239372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534968, 0.479490, -0.695628,
		-0.609395, 0.351295, 0.710795,
		0.585189, 0.804165, 0.104267,
		30.401651, 40.868000, 23.270653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.518641, 40.776440, 23.250433>,  <29.992020, 40.305084, 23.197666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.518641, 40.776440, 23.250433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.844755, 40.983326, 23.146284>,  <30.040424, 41.107460, 23.083794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.844755, 40.983326, 23.146284>,  <29.518641, 40.776440, 23.250433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.844755, 40.983326, 23.146284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559518, 0.587812, -0.584309,
		-0.149165, 0.622062, 0.768628,
		0.815285, 0.517220, -0.260374,
		30.089340, 41.138493, 23.068172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.314201, 41.514454, 23.212156>,  <29.518641, 40.776440, 23.250433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.314201, 41.514454, 23.212156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.644505, 41.491020, 22.987766>,  <29.842686, 41.476959, 22.853132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.644505, 41.491020, 22.987766>,  <29.314201, 41.514454, 23.212156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.644505, 41.491020, 22.987766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379181, 0.678643, -0.629020,
		0.417551, 0.732128, 0.538181,
		0.825756, -0.058580, -0.560977,
		29.892231, 41.473446, 22.819473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.458485, 42.176006, 23.010151>,  <29.314201, 41.514454, 23.212156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.458485, 42.176006, 23.010151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.647537, 41.963539, 22.728872>,  <29.760969, 41.836060, 22.560104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.647537, 41.963539, 22.728872>,  <29.458485, 42.176006, 23.010151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.647537, 41.963539, 22.728872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397216, 0.583891, -0.708019,
		0.786664, 0.613952, 0.064977,
		0.472629, -0.531163, -0.703198,
		29.789326, 41.804192, 22.517914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.769482, 42.643307, 22.622078>,  <29.458485, 42.176006, 23.010151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.769482, 42.643307, 22.622078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.762341, 42.317524, 22.390099>,  <29.758055, 42.122055, 22.250912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.762341, 42.317524, 22.390099>,  <29.769482, 42.643307, 22.622078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.762341, 42.317524, 22.390099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207611, 0.570419, -0.794682,
		0.978049, 0.106215, -0.179275,
		-0.017854, -0.814457, -0.579949,
		29.756985, 42.073185, 22.216114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.976938, 42.910030, 22.009424>,  <29.769482, 42.643307, 22.622078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.976938, 42.910030, 22.009424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.807245, 42.558250, 21.923077>,  <29.705429, 42.347183, 21.871269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.807245, 42.558250, 21.923077>,  <29.976938, 42.910030, 22.009424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.807245, 42.558250, 21.923077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340551, 0.375823, -0.861848,
		0.839079, -0.292109, -0.458933,
		-0.424231, -0.879449, -0.215867,
		29.679976, 42.294415, 21.858316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.232321, 42.737656, 21.362503>,  <29.976938, 42.910030, 22.009424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.232321, 42.737656, 21.362503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.877003, 42.558975, 21.405201>,  <29.663813, 42.451767, 21.430820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.877003, 42.558975, 21.405201>,  <30.232321, 42.737656, 21.362503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.877003, 42.558975, 21.405201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295270, 0.377431, -0.877702,
		0.351770, -0.811181, -0.467165,
		-0.888298, -0.446689, 0.106749,
		29.610514, 42.424965, 21.437223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.049679, 42.610203, 20.716276>,  <30.232321, 42.737656, 21.362503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.049679, 42.610203, 20.716276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.699047, 42.535908, 20.893866>,  <29.488668, 42.491329, 21.000420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.699047, 42.535908, 20.893866>,  <30.049679, 42.610203, 20.716276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.699047, 42.535908, 20.893866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471758, 0.149233, -0.869007,
		0.095144, -0.971203, -0.218433,
		-0.876580, -0.185729, 0.443974,
		29.436073, 42.480186, 21.027058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.652946, 42.190243, 20.270689>,  <30.049679, 42.610203, 20.716276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.652946, 42.190243, 20.270689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.370012, 42.343956, 20.508009>,  <29.200253, 42.436184, 20.650400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.370012, 42.343956, 20.508009>,  <29.652946, 42.190243, 20.270689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.370012, 42.343956, 20.508009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575701, 0.173857, -0.798963,
		-0.410176, -0.906698, 0.098256,
		-0.707336, 0.384282, 0.593299,
		29.157812, 42.459240, 20.685999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.937588, 42.096371, 19.866299>,  <29.652946, 42.190243, 20.270689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.937588, 42.096371, 19.866299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.814430, 42.334103, 20.163481>,  <28.740536, 42.476742, 20.341789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.814430, 42.334103, 20.163481>,  <28.937588, 42.096371, 19.866299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.814430, 42.334103, 20.163481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487040, 0.572358, -0.659695,
		-0.817309, -0.564963, 0.113236,
		-0.307892, 0.594325, 0.742953,
		28.722063, 42.512402, 20.386366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.314253, 42.022758, 19.881962>,  <28.937588, 42.096371, 19.866299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.314253, 42.022758, 19.881962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.389112, 42.383465, 20.037802>,  <28.434029, 42.599888, 20.131306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.389112, 42.383465, 20.037802>,  <28.314253, 42.022758, 19.881962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.389112, 42.383465, 20.037802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527273, 0.426849, -0.734699,
		-0.828829, -0.067926, 0.555363,
		0.187151, 0.901768, 0.389601,
		28.445257, 42.653996, 20.154682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.371611, 41.388733, 20.275698>,  <28.314253, 42.022758, 19.881962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.371611, 41.388733, 20.275698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.074232, 41.121716, 20.259342>,  <27.895805, 40.961506, 20.249529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.074232, 41.121716, 20.259342>,  <28.371611, 41.388733, 20.275698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.074232, 41.121716, 20.259342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404715, -0.497717, 0.767127,
		-0.532444, 0.553768, 0.640191,
		-0.743444, -0.667547, -0.040888,
		27.851198, 40.921452, 20.247076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.150751, 41.357891, 20.877913>,  <28.371611, 41.388733, 20.275698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.150751, 41.357891, 20.877913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.955788, 41.030670, 20.755779>,  <27.838810, 40.834339, 20.682499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.955788, 41.030670, 20.755779>,  <28.150751, 41.357891, 20.877913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.955788, 41.030670, 20.755779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304263, -0.486884, 0.818760,
		-0.818448, 0.306169, 0.486214,
		-0.487409, -0.818049, -0.305333,
		27.809565, 40.785255, 20.664179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.855278, 41.114613, 21.460032>,  <28.150751, 41.357891, 20.877913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.855278, 41.114613, 21.460032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.856396, 40.797588, 21.216118>,  <27.857067, 40.607372, 21.069769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.856396, 40.797588, 21.216118>,  <27.855278, 41.114613, 21.460032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.856396, 40.797588, 21.216118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207120, -0.596104, 0.775733,
		-0.978312, -0.128467, 0.162489,
		0.002796, -0.792563, -0.609783,
		27.857235, 40.559818, 21.033182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.514320, 40.551037, 21.781462>,  <27.855278, 41.114613, 21.460032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.514320, 40.551037, 21.781462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.747524, 40.375088, 21.508226>,  <27.887447, 40.269516, 21.344286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.747524, 40.375088, 21.508226>,  <27.514320, 40.551037, 21.781462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.747524, 40.375088, 21.508226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325533, -0.643849, 0.692450,
		-0.744398, -0.626072, -0.232176,
		0.583010, -0.439877, -0.683087,
		27.922428, 40.243126, 21.303301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.371540, 39.834129, 21.870476>,  <27.514320, 40.551037, 21.781462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.371540, 39.834129, 21.870476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.714405, 39.847610, 21.664900>,  <27.920124, 39.855701, 21.541553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.714405, 39.847610, 21.664900>,  <27.371540, 39.834129, 21.870476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.714405, 39.847610, 21.664900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450731, -0.531942, 0.716853,
		-0.249226, -0.846110, -0.471153,
		0.857163, 0.033705, -0.513942,
		27.971554, 39.857723, 21.510717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.525545, 39.154018, 21.770584>,  <27.371540, 39.834129, 21.870476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.525545, 39.154018, 21.770584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.872938, 39.350590, 21.744541>,  <28.081373, 39.468533, 21.728914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.872938, 39.350590, 21.744541>,  <27.525545, 39.154018, 21.770584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.872938, 39.350590, 21.744541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386933, -0.589912, 0.708722,
		0.309879, -0.640704, -0.702477,
		0.868480, 0.491429, -0.065109,
		28.133482, 39.498020, 21.725008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.140440, 38.635609, 21.598978>,  <27.525545, 39.154018, 21.770584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.140440, 38.635609, 21.598978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.247442, 38.976471, 21.778873>,  <28.311644, 39.180988, 21.886810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.247442, 38.976471, 21.778873>,  <28.140440, 38.635609, 21.598978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.247442, 38.976471, 21.778873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459531, -0.523078, 0.717789,
		0.846919, 0.014657, -0.531520,
		0.267506, 0.852158, 0.449740,
		28.327694, 39.232117, 21.913795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.515966, 38.424320, 21.017433>,  <28.140440, 38.635609, 21.598978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.515966, 38.424320, 21.017433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.587793, 38.059227, 20.870644>,  <28.630890, 37.840172, 20.782570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.587793, 38.059227, 20.870644>,  <28.515966, 38.424320, 21.017433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587793, 38.059227, 20.870644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343745, 0.291306, -0.892738,
		0.921735, 0.286451, -0.261439,
		0.179567, -0.912736, -0.366973,
		28.641663, 37.785408, 20.760551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.861343, 38.476860, 20.343897>,  <28.515966, 38.424320, 21.017433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.861343, 38.476860, 20.343897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.657616, 38.132748, 20.334919>,  <28.535379, 37.926281, 20.329533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.657616, 38.132748, 20.334919>,  <28.861343, 38.476860, 20.343897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.657616, 38.132748, 20.334919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502433, 0.318431, -0.803842,
		0.698681, -0.398135, -0.594419,
		-0.509319, -0.860285, -0.022446,
		28.504820, 37.874660, 20.328186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893524, 38.196491, 19.670259>,  <28.861343, 38.476860, 20.343897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.893524, 38.196491, 19.670259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.560867, 38.041012, 19.828892>,  <28.361273, 37.947723, 19.924072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.560867, 38.041012, 19.828892>,  <28.893524, 38.196491, 19.670259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.560867, 38.041012, 19.828892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488868, 0.173737, -0.854883,
		0.263393, -0.904835, -0.334511,
		-0.831645, -0.388701, 0.396583,
		28.311375, 37.924400, 19.947866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.763887, 37.680099, 19.317307>,  <28.893524, 38.196491, 19.670259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.763887, 37.680099, 19.317307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.399977, 37.764664, 19.460197>,  <28.181631, 37.815403, 19.545933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.399977, 37.764664, 19.460197>,  <28.763887, 37.680099, 19.317307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.399977, 37.764664, 19.460197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337532, 0.124160, -0.933090,
		-0.241620, -0.969479, -0.041599,
		-0.909776, 0.211412, 0.357230,
		28.127045, 37.828087, 19.567366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.400541, 37.365070, 18.821211>,  <28.763887, 37.680099, 19.317307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.400541, 37.365070, 18.821211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.155537, 37.618065, 19.010859>,  <28.008533, 37.769859, 19.124647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.155537, 37.618065, 19.010859>,  <28.400541, 37.365070, 18.821211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.155537, 37.618065, 19.010859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455627, 0.207640, -0.865615,
		-0.645935, -0.746223, 0.160995,
		-0.612513, 0.632485, 0.474121,
		27.971783, 37.807812, 19.153095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.730602, 37.168758, 18.500172>,  <28.400541, 37.365070, 18.821211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.730602, 37.168758, 18.500172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.641382, 37.511711, 18.685703>,  <27.587851, 37.717484, 18.797022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.641382, 37.511711, 18.685703>,  <27.730602, 37.168758, 18.500172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.641382, 37.511711, 18.685703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524945, 0.295285, -0.798272,
		-0.821389, -0.421542, 0.384216,
		-0.223052, 0.857385, 0.463831,
		27.574467, 37.768925, 18.824852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.037071, 37.233047, 18.356445>,  <27.730602, 37.168758, 18.500172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.037071, 37.233047, 18.356445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.171911, 37.598976, 18.445414>,  <27.252815, 37.818531, 18.498795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.171911, 37.598976, 18.445414>,  <27.037071, 37.233047, 18.356445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.171911, 37.598976, 18.445414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347808, 0.340545, -0.873532,
		-0.874868, 0.217108, 0.432979,
		0.337100, 0.914819, 0.222420,
		27.273041, 37.873421, 18.512140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.537371, 37.658642, 18.060081>,  <27.037071, 37.233047, 18.356445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.537371, 37.658642, 18.060081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.816227, 37.934296, 18.139168>,  <26.983540, 38.099689, 18.186619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.816227, 37.934296, 18.139168>,  <26.537371, 37.658642, 18.060081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.816227, 37.934296, 18.139168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228648, 0.475088, -0.849713,
		-0.679497, 0.547162, 0.488772,
		0.697140, 0.689134, 0.197713,
		27.025370, 38.141037, 18.198483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.210617, 38.350430, 17.941982>,  <26.537371, 37.658642, 18.060081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.210617, 38.350430, 17.941982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.607479, 38.355713, 17.892254>,  <26.845596, 38.358883, 17.862417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.607479, 38.355713, 17.892254>,  <26.210617, 38.350430, 17.941982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.607479, 38.355713, 17.892254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124153, 0.221157, -0.967303,
		0.014716, 0.975149, 0.221062,
		0.992154, 0.013210, -0.124322,
		26.905125, 38.359676, 17.854958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.043198, 32.663944, 30.728764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.293415, 32.864113, 30.489342>,  <36.443546, 32.984215, 30.345690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.293415, 32.864113, 30.489342>,  <36.043198, 32.663944, 30.728764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293415, 32.864113, 30.489342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765672, 0.541069, -0.347836,
		0.149793, 0.675884, 0.721626,
		0.625546, 0.500425, -0.598554,
		36.481079, 33.014240, 30.309776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919323, 33.392670, 30.894676>,  <36.043198, 32.663944, 30.728764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919323, 33.392670, 30.894676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.057846, 33.316578, 30.527224>,  <36.140961, 33.270924, 30.306751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.057846, 33.316578, 30.527224>,  <35.919323, 33.392670, 30.894676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057846, 33.316578, 30.527224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716707, 0.578186, -0.389912,
		0.605313, 0.793419, 0.063892,
		0.346305, -0.190227, -0.918633,
		36.161739, 33.259510, 30.251635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909073, 34.088146, 30.519560>,  <35.919323, 33.392670, 30.894676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909073, 34.088146, 30.519560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.896885, 33.797092, 30.245443>,  <35.889572, 33.622459, 30.080975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.896885, 33.797092, 30.245443>,  <35.909073, 34.088146, 30.519560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896885, 33.797092, 30.245443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858267, 0.370446, -0.355172,
		0.512298, 0.577340, -0.635791,
		-0.030471, -0.727632, -0.685291,
		35.887745, 33.578804, 30.039856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808170, 34.463924, 29.935152>,  <35.909073, 34.088146, 30.519560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808170, 34.463924, 29.935152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.722263, 34.084538, 29.841963>,  <35.670719, 33.856903, 29.786049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.722263, 34.084538, 29.841963>,  <35.808170, 34.463924, 29.935152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722263, 34.084538, 29.841963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769111, 0.311266, -0.558195,
		0.601949, 0.059301, -0.796330,
		-0.214769, -0.948471, -0.232975,
		35.657833, 33.799995, 29.772070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909286, 34.331654, 29.160778>,  <35.808170, 34.463924, 29.935152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909286, 34.331654, 29.160778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.642502, 34.063484, 29.290821>,  <35.482433, 33.902580, 29.368847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.642502, 34.063484, 29.290821>,  <35.909286, 34.331654, 29.160778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642502, 34.063484, 29.290821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613969, 0.247297, -0.749591,
		0.422149, -0.699551, -0.576558,
		-0.666958, -0.670427, 0.325107,
		35.442413, 33.862358, 29.388353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717865, 34.105381, 28.589209>,  <35.909286, 34.331654, 29.160778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717865, 34.105381, 28.589209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.419556, 33.985142, 28.827019>,  <35.240570, 33.912998, 28.969704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.419556, 33.985142, 28.827019>,  <35.717865, 34.105381, 28.589209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419556, 33.985142, 28.827019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665088, 0.284444, -0.690471,
		0.038448, -0.910346, -0.412058,
		-0.745775, -0.300602, 0.594524,
		35.195824, 33.894962, 29.005375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276867, 33.660252, 28.096704>,  <35.717865, 34.105381, 28.589209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276867, 33.660252, 28.096704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.060791, 33.744602, 28.422583>,  <34.931145, 33.795212, 28.618109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.060791, 33.744602, 28.422583>,  <35.276867, 33.660252, 28.096704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060791, 33.744602, 28.422583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788550, 0.211269, -0.577542,
		-0.293909, -0.954409, 0.052160,
		-0.540191, 0.210876, 0.814693,
		34.898735, 33.807865, 28.666990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694843, 33.272972, 27.972807>,  <35.276867, 33.660252, 28.096704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694843, 33.272972, 27.972807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.625725, 33.583027, 28.215887>,  <34.584255, 33.769062, 28.361734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.625725, 33.583027, 28.215887>,  <34.694843, 33.272972, 27.972807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625725, 33.583027, 28.215887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778404, 0.270574, -0.566459,
		-0.603513, -0.570917, 0.556619,
		-0.172795, 0.775140, 0.607700,
		34.573887, 33.815571, 28.398197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945602, 33.223724, 28.274376>,  <34.694843, 33.272972, 27.972807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945602, 33.223724, 28.274376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.052216, 33.607960, 28.305946>,  <34.116184, 33.838501, 28.324888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.052216, 33.607960, 28.305946>,  <33.945602, 33.223724, 28.274376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052216, 33.607960, 28.305946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815758, 0.268447, -0.512323,
		-0.513319, 0.072168, 0.855158,
		0.266537, 0.960588, 0.078927,
		34.132175, 33.896137, 28.329624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389008, 33.427528, 28.567259>,  <33.945602, 33.223724, 28.274376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389008, 33.427528, 28.567259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.572929, 33.752979, 28.424936>,  <33.683281, 33.948250, 28.339542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.572929, 33.752979, 28.424936>,  <33.389008, 33.427528, 28.567259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572929, 33.752979, 28.424936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820610, 0.236170, -0.520406,
		-0.339383, 0.531264, 0.776259,
		0.459802, 0.813623, -0.355809,
		33.710869, 33.997066, 28.318193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834423, 33.939747, 28.400568>,  <33.389008, 33.427528, 28.567259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834423, 33.939747, 28.400568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.154667, 34.078365, 28.205046>,  <33.346813, 34.161537, 28.087732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.154667, 34.078365, 28.205046>,  <32.834423, 33.939747, 28.400568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154667, 34.078365, 28.205046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599154, 0.454499, -0.659124,
		-0.006258, 0.820570, 0.571512,
		0.800609, 0.346549, -0.488804,
		33.394848, 34.182331, 28.058405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758026, 34.649227, 28.296745>,  <32.834423, 33.939747, 28.400568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758026, 34.649227, 28.296745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.982735, 34.523079, 27.990816>,  <33.117558, 34.447388, 27.807259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.982735, 34.523079, 27.990816>,  <32.758026, 34.649227, 28.296745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982735, 34.523079, 27.990816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713187, 0.283904, -0.640907,
		0.419261, 0.905505, -0.065432,
		0.561768, -0.315373, -0.764825,
		33.151264, 34.428467, 27.761370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.717445, 35.277763, 28.685961>,  <32.758026, 34.649227, 28.296745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.717445, 35.277763, 28.685961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.485184, 35.567650, 28.834358>,  <32.345829, 35.741581, 28.923397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.485184, 35.567650, 28.834358>,  <32.717445, 35.277763, 28.685961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485184, 35.567650, 28.834358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237922, -0.284742, 0.928609,
		0.778611, 0.627466, -0.007089,
		-0.580652, 0.724713, 0.370991,
		32.310989, 35.785065, 28.945656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166317, 35.695213, 29.110868>,  <32.717445, 35.277763, 28.685961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166317, 35.695213, 29.110868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.792545, 35.756748, 29.239353>,  <32.568283, 35.793667, 29.316444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.792545, 35.756748, 29.239353>,  <33.166317, 35.695213, 29.110868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792545, 35.756748, 29.239353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326010, 0.006351, 0.945345,
		0.143386, 0.988076, -0.056086,
		-0.934429, 0.153834, 0.321213,
		32.512218, 35.802898, 29.335716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228931, 36.201527, 29.590761>,  <33.166317, 35.695213, 29.110868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228931, 36.201527, 29.590761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.870174, 36.045120, 29.673403>,  <32.654919, 35.951275, 29.722988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.870174, 36.045120, 29.673403>,  <33.228931, 36.201527, 29.590761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870174, 36.045120, 29.673403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206761, 0.042219, 0.977480,
		-0.390937, 0.919413, 0.042982,
		-0.896893, -0.391020, 0.206604,
		32.601105, 35.927814, 29.735384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941051, 36.590267, 30.151358>,  <33.228931, 36.201527, 29.590761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941051, 36.590267, 30.151358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.739201, 36.244946, 30.154415>,  <32.618088, 36.037754, 30.156250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.739201, 36.244946, 30.154415>,  <32.941051, 36.590267, 30.151358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739201, 36.244946, 30.154415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047526, -0.018937, 0.998691,
		-0.862027, 0.504332, 0.050586,
		-0.504629, -0.863302, 0.007644,
		32.587811, 35.985954, 30.156708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527603, 36.589588, 30.692297>,  <32.941051, 36.590267, 30.151358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527603, 36.589588, 30.692297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.531319, 36.196487, 30.618427>,  <32.533546, 35.960625, 30.574104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.531319, 36.196487, 30.618427>,  <32.527603, 36.589588, 30.692297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531319, 36.196487, 30.618427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223586, -0.177967, 0.958299,
		-0.974640, -0.050192, 0.218077,
		0.009289, -0.982755, -0.184676,
		32.534103, 35.901661, 30.563025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259224, 36.270103, 31.214848>,  <32.527603, 36.589588, 30.692297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259224, 36.270103, 31.214848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.460606, 35.965134, 31.052242>,  <32.581432, 35.782154, 30.954679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.460606, 35.965134, 31.052242>,  <32.259224, 36.270103, 31.214848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460606, 35.965134, 31.052242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266042, -0.310840, 0.912470,
		-0.822045, -0.567533, 0.046343,
		0.503452, -0.762420, -0.406512,
		32.611641, 35.736408, 30.930288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121254, 35.685268, 31.707554>,  <32.259224, 36.270103, 31.214848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121254, 35.685268, 31.707554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.445602, 35.589378, 31.494007>,  <32.640213, 35.531845, 31.365879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.445602, 35.589378, 31.494007>,  <32.121254, 35.685268, 31.707554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445602, 35.589378, 31.494007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471931, -0.271602, 0.838757,
		-0.346074, -0.932075, -0.107099,
		0.810872, -0.239729, -0.533870,
		32.688866, 35.517460, 31.333847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415043, 35.227257, 32.224033>,  <32.121254, 35.685268, 31.707554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415043, 35.227257, 32.224033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.702305, 35.282814, 31.951281>,  <32.874660, 35.316147, 31.787628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.702305, 35.282814, 31.951281>,  <32.415043, 35.227257, 32.224033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702305, 35.282814, 31.951281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691125, -0.256763, 0.675588,
		-0.081250, -0.956443, -0.280386,
		0.718154, 0.138890, -0.681884,
		32.917751, 35.324482, 31.746716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781914, 34.564610, 32.169765>,  <32.415043, 35.227257, 32.224033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781914, 34.564610, 32.169765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.034153, 34.840664, 32.027748>,  <33.185497, 35.006298, 31.942539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.034153, 34.840664, 32.027748>,  <32.781914, 34.564610, 32.169765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034153, 34.840664, 32.027748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737822, -0.391173, 0.550093,
		0.240759, -0.608844, -0.755873,
		0.630598, 0.690140, -0.355040,
		33.223331, 35.047707, 31.921236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443546, 34.187988, 32.193554>,  <32.781914, 34.564610, 32.169765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443546, 34.187988, 32.193554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.530598, 34.578224, 32.181812>,  <33.582829, 34.812366, 32.174767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.530598, 34.578224, 32.181812>,  <33.443546, 34.187988, 32.193554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530598, 34.578224, 32.181812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623563, -0.115832, 0.773144,
		0.750872, -0.186563, -0.633550,
		0.217625, 0.975591, -0.029359,
		33.595886, 34.870903, 32.173004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083771, 34.185467, 32.085560>,  <33.443546, 34.187988, 32.193554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083771, 34.185467, 32.085560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.032024, 34.550194, 32.241436>,  <34.000977, 34.769028, 32.334961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.032024, 34.550194, 32.241436>,  <34.083771, 34.185467, 32.085560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032024, 34.550194, 32.241436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778001, -0.150331, 0.610012,
		0.614801, 0.382093, -0.689945,
		-0.129361, 0.911814, 0.389693,
		33.993217, 34.823738, 32.358345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722221, 34.411659, 32.128922>,  <34.083771, 34.185467, 32.085560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722221, 34.411659, 32.128922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.507500, 34.632458, 32.384151>,  <34.378666, 34.764938, 32.537289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.507500, 34.632458, 32.384151>,  <34.722221, 34.411659, 32.128922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507500, 34.632458, 32.384151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645835, -0.217797, 0.731753,
		0.542895, 0.804901, -0.239583,
		-0.536808, 0.551995, 0.638074,
		34.346458, 34.798058, 32.575573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143116, 34.898777, 32.449879>,  <34.722221, 34.411659, 32.128922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143116, 34.898777, 32.449879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.837502, 34.805492, 32.690498>,  <34.654133, 34.749523, 32.834869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.837502, 34.805492, 32.690498>,  <35.143116, 34.898777, 32.449879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837502, 34.805492, 32.690498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639944, -0.392419, 0.660666,
		0.081988, 0.889731, 0.449062,
		-0.764035, -0.233208, 0.601552,
		34.608292, 34.735531, 32.870964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423599, 35.034569, 33.157421>,  <35.143116, 34.898777, 32.449879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423599, 35.034569, 33.157421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.094830, 34.814163, 33.215137>,  <34.897568, 34.681919, 33.249767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.094830, 34.814163, 33.215137>,  <35.423599, 35.034569, 33.157421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094830, 34.814163, 33.215137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404316, -0.385969, 0.829190,
		-0.401209, 0.739870, 0.540023,
		-0.821925, -0.551018, 0.144287,
		34.848251, 34.648857, 33.258423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642746, 35.460869, 32.587898>,  <35.423599, 35.034569, 33.157421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642746, 35.460869, 32.587898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.933220, 35.202667, 32.493256>,  <36.107502, 35.047745, 32.436470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.933220, 35.202667, 32.493256>,  <35.642746, 35.460869, 32.587898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933220, 35.202667, 32.493256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432249, 0.696301, -0.572998,
		0.534621, 0.313829, 0.784661,
		0.726183, -0.645505, -0.236605,
		36.151073, 35.009014, 32.422276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677841, 36.169903, 32.428772>,  <35.642746, 35.460869, 32.587898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677841, 36.169903, 32.428772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.981911, 36.428925, 32.407585>,  <36.164352, 36.584339, 32.394875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.981911, 36.428925, 32.407585>,  <35.677841, 36.169903, 32.428772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981911, 36.428925, 32.407585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537290, 0.580706, -0.611637,
		-0.365314, 0.493407, 0.789364,
		0.760174, 0.647557, -0.052962,
		36.209965, 36.623192, 32.391697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406055, 36.778927, 32.529469>,  <35.677841, 36.169903, 32.428772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406055, 36.778927, 32.529469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.749264, 36.856083, 32.339062>,  <35.955189, 36.902378, 32.224819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.749264, 36.856083, 32.339062>,  <35.406055, 36.778927, 32.529469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749264, 36.856083, 32.339062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476607, 0.644432, -0.597957,
		0.191418, 0.739933, 0.644871,
		0.858024, 0.192890, -0.476014,
		36.006672, 36.913948, 32.196259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348183, 37.427654, 32.420433>,  <35.406055, 36.778927, 32.529469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348183, 37.427654, 32.420433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.621395, 37.303513, 32.155964>,  <35.785320, 37.229027, 31.997282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.621395, 37.303513, 32.155964>,  <35.348183, 37.427654, 32.420433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621395, 37.303513, 32.155964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376902, 0.625634, -0.683028,
		0.625634, 0.715726, 0.310353,
		0.683028, -0.310353, -0.661176,
		35.826305, 37.210407, 31.957611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566624, 38.101475, 32.077553>,  <35.348183, 37.427654, 32.420433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566624, 38.101475, 32.077553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.673935, 37.795166, 31.843760>,  <35.738323, 37.611382, 31.703484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.673935, 37.795166, 31.843760>,  <35.566624, 38.101475, 32.077553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673935, 37.795166, 31.843760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450328, 0.436666, -0.778799,
		0.851605, 0.472146, -0.227699,
		0.268279, -0.765768, -0.584487,
		35.754417, 37.565437, 31.668413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891495, 38.393406, 31.492008>,  <35.566624, 38.101475, 32.077553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891495, 38.393406, 31.492008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.810493, 38.029026, 31.348251>,  <35.761894, 37.810398, 31.261997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.810493, 38.029026, 31.348251>,  <35.891495, 38.393406, 31.492008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810493, 38.029026, 31.348251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265978, 0.404362, -0.875070,
		0.942469, -0.081615, -0.324178,
		-0.202504, -0.910950, -0.359391,
		35.749741, 37.755741, 31.240435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241642, 38.235313, 30.880318>,  <35.891495, 38.393406, 31.492008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241642, 38.235313, 30.880318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.941017, 37.973083, 30.851015>,  <35.760643, 37.815746, 30.833433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.941017, 37.973083, 30.851015>,  <36.241642, 38.235313, 30.880318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941017, 37.973083, 30.851015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200276, 0.332576, -0.921565,
		0.628522, -0.677944, -0.381249,
		-0.751564, -0.655579, -0.073256,
		35.715549, 37.776409, 30.829039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259563, 37.931389, 30.127707>,  <36.241642, 38.235313, 30.880318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259563, 37.931389, 30.127707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.890995, 37.858494, 30.264975>,  <35.669853, 37.814758, 30.347336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.890995, 37.858494, 30.264975>,  <36.259563, 37.931389, 30.127707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890995, 37.858494, 30.264975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382127, 0.264993, -0.885301,
		0.070391, -0.946874, -0.313807,
		-0.921425, -0.182232, 0.343173,
		35.614567, 37.803825, 30.367926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963848, 37.703461, 29.560192>,  <36.259563, 37.931389, 30.127707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963848, 37.703461, 29.560192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.655434, 37.799999, 29.795902>,  <35.470383, 37.857922, 29.937328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.655434, 37.799999, 29.795902>,  <35.963848, 37.703461, 29.560192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655434, 37.799999, 29.795902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565516, 0.165872, -0.807885,
		-0.292727, -0.956158, 0.008593,
		-0.771040, 0.241349, 0.589278,
		35.424122, 37.872402, 29.972685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355556, 37.321655, 29.266291>,  <35.963848, 37.703461, 29.560192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355556, 37.321655, 29.266291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.211163, 37.621075, 29.488771>,  <35.124527, 37.800728, 29.622259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.211163, 37.621075, 29.488771>,  <35.355556, 37.321655, 29.266291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211163, 37.621075, 29.488771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641793, 0.233306, -0.730527,
		-0.676602, -0.620676, 0.396195,
		-0.360987, 0.748552, 0.556201,
		35.102867, 37.845638, 29.655632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683842, 37.374401, 29.136444>,  <35.355556, 37.321655, 29.266291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683842, 37.374401, 29.136444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.734497, 37.734013, 29.304111>,  <34.764893, 37.949780, 29.404713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.734497, 37.734013, 29.304111>,  <34.683842, 37.374401, 29.136444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734497, 37.734013, 29.304111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465237, 0.427044, -0.775363,
		-0.876080, -0.096821, 0.472344,
		0.126640, 0.899033, 0.419169,
		34.772488, 38.003723, 29.429863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982738, 37.670609, 29.177841>,  <34.683842, 37.374401, 29.136444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982738, 37.670609, 29.177841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.231030, 37.984203, 29.181128>,  <34.380005, 38.172359, 29.183100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.231030, 37.984203, 29.181128>,  <33.982738, 37.670609, 29.177841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231030, 37.984203, 29.181128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539080, 0.434383, -0.721599,
		-0.569289, 0.443488, 0.692263,
		0.620728, 0.783983, 0.008214,
		34.417248, 38.219398, 29.183592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626225, 38.269466, 29.142122>,  <33.982738, 37.670609, 29.177841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626225, 38.269466, 29.142122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.984753, 38.408253, 29.031691>,  <34.199871, 38.491524, 28.965431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.984753, 38.408253, 29.031691>,  <33.626225, 38.269466, 29.142122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984753, 38.408253, 29.031691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414739, 0.435810, -0.798788,
		-0.156830, 0.830474, 0.534526,
		0.896324, 0.346962, -0.276081,
		34.253651, 38.512341, 28.948866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585567, 39.003052, 28.902538>,  <33.626225, 38.269466, 29.142122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585567, 39.003052, 28.902538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.908779, 38.842297, 28.730223>,  <34.102707, 38.745846, 28.626833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.908779, 38.842297, 28.730223>,  <33.585567, 39.003052, 28.902538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908779, 38.842297, 28.730223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315261, 0.322758, -0.892433,
		0.497697, 0.856922, 0.134099,
		0.808027, -0.401886, -0.430790,
		34.151188, 38.721729, 28.600986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884777, 39.583138, 28.448780>,  <33.585567, 39.003052, 28.902538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884777, 39.583138, 28.448780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.016972, 39.225971, 28.326483>,  <34.096287, 39.011669, 28.253105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.016972, 39.225971, 28.326483>,  <33.884777, 39.583138, 28.448780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016972, 39.225971, 28.326483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283680, 0.214987, -0.934509,
		0.900170, 0.395573, -0.182253,
		0.330484, -0.892918, -0.305741,
		34.116116, 38.958096, 28.234760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277325, 39.675129, 27.833076>,  <33.884777, 39.583138, 28.448780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277325, 39.675129, 27.833076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.175735, 39.288250, 27.835135>,  <34.114780, 39.056122, 27.836369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.175735, 39.288250, 27.835135>,  <34.277325, 39.675129, 27.833076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175735, 39.288250, 27.835135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222791, 0.053323, -0.973407,
		0.941203, -0.248365, -0.229025,
		-0.253972, -0.967198, 0.005146,
		34.099545, 38.998089, 27.836678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610416, 39.326309, 27.240673>,  <34.277325, 39.675129, 27.833076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610416, 39.326309, 27.240673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.309639, 39.081631, 27.338991>,  <34.129173, 38.934822, 27.397982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.309639, 39.081631, 27.338991>,  <34.610416, 39.326309, 27.240673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309639, 39.081631, 27.338991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261071, -0.066057, -0.963057,
		0.605334, -0.788331, -0.110026,
		-0.751939, -0.611695, 0.245797,
		34.084057, 38.898121, 27.412731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475311, 38.926311, 26.700802>,  <34.610416, 39.326309, 27.240673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475311, 38.926311, 26.700802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.136711, 38.827496, 26.889446>,  <33.933552, 38.768208, 27.002632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.136711, 38.827496, 26.889446>,  <34.475311, 38.926311, 26.700802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136711, 38.827496, 26.889446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453111, -0.130800, -0.881806,
		0.279528, -0.960137, -0.001215,
		-0.846495, -0.247041, 0.471610,
		33.882763, 38.753384, 27.030930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182255, 38.424770, 26.302906>,  <34.475311, 38.926311, 26.700802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182255, 38.424770, 26.302906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.890171, 38.572983, 26.532516>,  <33.714920, 38.661911, 26.670282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.890171, 38.572983, 26.532516>,  <34.182255, 38.424770, 26.302906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890171, 38.572983, 26.532516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548981, 0.181944, -0.815792,
		-0.406720, -0.910824, 0.070560,
		-0.730205, 0.370535, 0.574025,
		33.671108, 38.684143, 26.704723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647858, 38.205284, 26.018042>,  <34.182255, 38.424770, 26.302906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647858, 38.205284, 26.018042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.471001, 38.488983, 26.237665>,  <33.364887, 38.659203, 26.369440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.471001, 38.488983, 26.237665>,  <33.647858, 38.205284, 26.018042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471001, 38.488983, 26.237665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585051, 0.235948, -0.775915,
		-0.679869, -0.664297, 0.310625,
		-0.442146, 0.709252, 0.549061,
		33.338356, 38.701759, 26.402384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916550, 38.119118, 25.871168>,  <33.647858, 38.205284, 26.018042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916550, 38.119118, 25.871168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.942204, 38.484192, 26.032604>,  <32.957596, 38.703236, 26.129465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.942204, 38.484192, 26.032604>,  <32.916550, 38.119118, 25.871168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942204, 38.484192, 26.032604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594267, 0.359828, -0.719285,
		-0.801706, -0.193706, 0.565460,
		0.064139, 0.912690, 0.403589,
		32.961445, 38.757999, 26.153681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141903, 38.421398, 25.862972>,  <32.916550, 38.119118, 25.871168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141903, 38.421398, 25.862972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.383385, 38.735916, 25.915560>,  <32.528275, 38.924625, 25.947113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.383385, 38.735916, 25.915560>,  <32.141903, 38.421398, 25.862972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383385, 38.735916, 25.915560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485067, 0.493169, -0.722146,
		-0.632656, 0.372190, 0.679133,
		0.603702, 0.786295, 0.131469,
		32.564495, 38.971806, 25.955000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671385, 38.942635, 25.839775>,  <32.141903, 38.421398, 25.862972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671385, 38.942635, 25.839775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.027122, 39.104839, 25.755276>,  <32.240566, 39.202164, 25.704576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.027122, 39.104839, 25.755276>,  <31.671385, 38.942635, 25.839775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027122, 39.104839, 25.755276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441866, 0.643406, -0.625127,
		-0.117580, 0.649296, 0.751392,
		0.889342, 0.405516, -0.211250,
		32.293926, 39.226494, 25.691900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.719194, 39.744457, 26.034908>,  <31.671385, 38.942635, 25.839775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.719194, 39.744457, 26.034908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.981134, 39.654369, 25.746340>,  <32.138298, 39.600319, 25.573198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.981134, 39.654369, 25.746340>,  <31.719194, 39.744457, 26.034908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981134, 39.654369, 25.746340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384391, 0.722620, -0.574511,
		0.650704, 0.653526, 0.386636,
		0.654850, -0.225217, -0.721422,
		32.177589, 39.586803, 25.529913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844667, 40.412739, 25.760693>,  <31.719194, 39.744457, 26.034908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844667, 40.412739, 25.760693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.934320, 40.138657, 25.483490>,  <31.988111, 39.974209, 25.317167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.934320, 40.138657, 25.483490>,  <31.844667, 40.412739, 25.760693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.934320, 40.138657, 25.483490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274391, 0.637964, -0.719522,
		0.935133, 0.351423, -0.045025,
		0.224133, -0.685204, -0.693009,
		32.001560, 39.933094, 25.275587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054134, 40.779678, 25.278534>,  <31.844667, 40.412739, 25.760693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054134, 40.779678, 25.278534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.987793, 40.442356, 25.074053>,  <31.947989, 40.239964, 24.951365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.987793, 40.442356, 25.074053>,  <32.054134, 40.779678, 25.278534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987793, 40.442356, 25.074053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273299, 0.537383, -0.797826,
		0.947524, 0.007391, -0.319600,
		-0.165851, -0.843306, -0.511203,
		31.938038, 40.189365, 24.920692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289684, 40.881042, 24.618713>,  <32.054134, 40.779678, 25.278534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289684, 40.881042, 24.618713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.037865, 40.572243, 24.583654>,  <31.886772, 40.386963, 24.562618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.037865, 40.572243, 24.583654>,  <32.289684, 40.881042, 24.618713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037865, 40.572243, 24.583654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430514, 0.440518, -0.787783,
		0.646778, -0.458217, -0.609685,
		-0.629552, -0.771998, -0.087649,
		31.848999, 40.340645, 24.557360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284187, 40.703465, 23.951544>,  <32.289684, 40.881042, 24.618713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284187, 40.703465, 23.951544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.937891, 40.558483, 24.089596>,  <31.730112, 40.471493, 24.172428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.937891, 40.558483, 24.089596>,  <32.284187, 40.703465, 23.951544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.937891, 40.558483, 24.089596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464276, 0.324066, -0.824275,
		0.186915, -0.873847, -0.448836,
		-0.865742, -0.362453, 0.345133,
		31.678169, 40.449745, 24.193136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773968, 40.155758, 23.725872>,  <32.284187, 40.703465, 23.951544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773968, 40.155758, 23.725872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.017490, 40.032162, 23.433603>,  <33.163605, 39.958004, 23.258242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.017490, 40.032162, 23.433603>,  <32.773968, 40.155758, 23.725872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017490, 40.032162, 23.433603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442524, -0.632156, 0.636044,
		-0.658432, -0.710565, -0.248122,
		0.608803, -0.308992, -0.730673,
		33.200130, 39.939465, 23.214401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882763, 39.434448, 23.773224>,  <32.773968, 40.155758, 23.725872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882763, 39.434448, 23.773224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.208256, 39.567459, 23.582535>,  <33.403553, 39.647266, 23.468121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.208256, 39.567459, 23.582535>,  <32.882763, 39.434448, 23.773224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208256, 39.567459, 23.582535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575977, -0.571460, 0.584537,
		-0.078053, -0.750238, -0.656544,
		0.813731, 0.332530, -0.476724,
		33.452374, 39.667217, 23.439518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252789, 38.790539, 23.573143>,  <32.882763, 39.434448, 23.773224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252789, 38.790539, 23.573143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.512253, 39.094803, 23.562984>,  <33.667931, 39.277359, 23.556889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.512253, 39.094803, 23.562984>,  <33.252789, 38.790539, 23.573143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512253, 39.094803, 23.562984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557070, -0.451780, 0.696827,
		0.518573, -0.466149, -0.716789,
		0.648656, 0.760657, -0.025396,
		33.706848, 39.323002, 23.555365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873737, 38.488583, 23.335960>,  <33.252789, 38.790539, 23.573143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873737, 38.488583, 23.335960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.954529, 38.824673, 23.537249>,  <34.003002, 39.026325, 23.658022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.954529, 38.824673, 23.537249>,  <33.873737, 38.488583, 23.335960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954529, 38.824673, 23.537249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598604, -0.512577, 0.615579,
		0.775163, 0.176897, -0.606490,
		0.201979, 0.840221, 0.503222,
		34.015121, 39.076740, 23.688215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572739, 38.432953, 23.466179>,  <33.873737, 38.488583, 23.335960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572739, 38.432953, 23.466179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.460201, 38.712967, 23.728718>,  <34.392677, 38.880978, 23.886242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.460201, 38.712967, 23.728718>,  <34.572739, 38.432953, 23.466179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460201, 38.712967, 23.728718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620929, -0.388680, 0.680717,
		0.731636, 0.599062, -0.325319,
		-0.281347, 0.700037, 0.656347,
		34.375797, 38.922977, 23.925623>
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
