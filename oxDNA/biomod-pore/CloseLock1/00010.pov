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
	<24.208935, 35.018864, 35.089794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.339895, 34.983456, 34.713501>,  <24.418470, 34.962212, 34.487724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.339895, 34.983456, 34.713501>,  <24.208935, 35.018864, 35.089794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.339895, 34.983456, 34.713501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403587, 0.913316, 0.054515,
		0.854358, -0.397514, 0.334746,
		0.327399, -0.088524, -0.940730,
		24.438114, 34.956898, 34.431282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.977329, 35.186016, 34.975624>,  <24.208935, 35.018864, 35.089794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.977329, 35.186016, 34.975624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.810066, 35.252048, 34.618324>,  <24.709709, 35.291668, 34.403946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.810066, 35.252048, 34.618324>,  <24.977329, 35.186016, 34.975624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.810066, 35.252048, 34.618324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475423, 0.877685, -0.060358,
		0.774028, -0.449910, -0.445491,
		-0.418156, 0.165078, -0.893250,
		24.684620, 35.301571, 34.350349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.554729, 35.465599, 34.560280>,  <24.977329, 35.186016, 34.975624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.554729, 35.465599, 34.560280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.191971, 35.561459, 34.421654>,  <24.974316, 35.618973, 34.338478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.191971, 35.561459, 34.421654>,  <25.554729, 35.465599, 34.560280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.191971, 35.561459, 34.421654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278238, 0.958280, -0.065449,
		0.316418, -0.155782, -0.935741,
		-0.906898, 0.239649, -0.346562,
		24.919901, 35.633354, 34.317684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.557796, 35.300533, 33.767296>,  <25.554729, 35.465599, 34.560280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.557796, 35.300533, 33.767296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.266741, 35.061405, 33.901852>,  <25.092108, 34.917931, 33.982586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.266741, 35.061405, 33.901852>,  <25.557796, 35.300533, 33.767296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.266741, 35.061405, 33.901852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524968, 0.169655, -0.834042,
		0.441537, -0.783473, -0.437283,
		-0.727636, -0.597819, 0.336389,
		25.048450, 34.882061, 34.002769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.184978, 35.669983, 34.174469>,  <25.557796, 35.300533, 33.767296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.184978, 35.669983, 34.174469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.574484, 35.592060, 34.221519>,  <26.808187, 35.545307, 34.249748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.574484, 35.592060, 34.221519>,  <26.184978, 35.669983, 34.174469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.574484, 35.592060, 34.221519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011651, -0.558885, -0.829163,
		0.227265, 0.806038, -0.546491,
		0.973763, -0.194807, 0.117623,
		26.866613, 35.533619, 34.256805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.508339, 35.882603, 33.578060>,  <26.184978, 35.669983, 34.174469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.508339, 35.882603, 33.578060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.759417, 35.615982, 33.738914>,  <26.910063, 35.456009, 33.835426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.759417, 35.615982, 33.738914>,  <26.508339, 35.882603, 33.578060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.759417, 35.615982, 33.738914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009081, -0.522815, -0.852398,
		0.778408, 0.531393, -0.334221,
		0.627693, -0.666548, 0.402137,
		26.947725, 35.416019, 33.859554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.934385, 35.705666, 33.084949>,  <26.508339, 35.882603, 33.578060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.934385, 35.705666, 33.084949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.946049, 35.400013, 33.342709>,  <26.953047, 35.216621, 33.497364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.946049, 35.400013, 33.342709>,  <26.934385, 35.705666, 33.084949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.946049, 35.400013, 33.342709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167308, -0.631848, -0.756820,
		0.985473, 0.129881, 0.109422,
		0.029158, -0.764133, 0.644399,
		26.954796, 35.170773, 33.536030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.534454, 35.384796, 32.847256>,  <26.934385, 35.705666, 33.084949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.534454, 35.384796, 32.847256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.312134, 35.129387, 33.060188>,  <27.178741, 34.976143, 33.187946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.312134, 35.129387, 33.060188>,  <27.534454, 35.384796, 32.847256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.312134, 35.129387, 33.060188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170592, -0.714324, -0.678704,
		0.813624, -0.286413, 0.505949,
		-0.555801, -0.638521, 0.532331,
		27.145393, 34.937832, 33.219887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.958036, 34.716225, 32.722023>,  <27.534454, 35.384796, 32.847256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.958036, 34.716225, 32.722023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.601656, 34.600327, 32.861881>,  <27.387827, 34.530788, 32.945797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.601656, 34.600327, 32.861881>,  <27.958036, 34.716225, 32.722023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.601656, 34.600327, 32.861881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063340, -0.841752, -0.536135,
		0.449657, -0.455524, 0.768314,
		-0.890952, -0.289742, 0.349647,
		27.334370, 34.513405, 32.966774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.094810, 34.127407, 33.051273>,  <27.958036, 34.716225, 32.722023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.094810, 34.127407, 33.051273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.722620, 34.131313, 32.904785>,  <27.499306, 34.133656, 32.816895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.722620, 34.131313, 32.904785>,  <28.094810, 34.127407, 33.051273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.722620, 34.131313, 32.904785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271190, -0.653734, -0.706461,
		-0.246304, -0.756662, 0.605638,
		-0.930478, 0.009761, -0.366216,
		27.443476, 34.134243, 32.794922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.938494, 33.430721, 32.873497>,  <28.094810, 34.127407, 33.051273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.938494, 33.430721, 32.873497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.664001, 33.642418, 32.673901>,  <27.499306, 33.769436, 32.554142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.664001, 33.642418, 32.673901>,  <27.938494, 33.430721, 32.873497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.664001, 33.642418, 32.673901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119519, -0.594644, -0.795056,
		-0.717495, -0.605232, 0.344811,
		-0.686233, 0.529238, -0.498991,
		27.458132, 33.801189, 32.524204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.341331, 33.048588, 32.758350>,  <27.938494, 33.430721, 32.873497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.341331, 33.048588, 32.758350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.345270, 33.325924, 32.470131>,  <27.347633, 33.492325, 32.297199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.345270, 33.325924, 32.470131>,  <27.341331, 33.048588, 32.758350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.345270, 33.325924, 32.470131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089190, -0.717099, -0.691241,
		-0.995966, 0.071072, 0.054777,
		0.009848, 0.693338, -0.720545,
		27.348225, 33.533924, 32.253967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.811468, 32.773167, 32.177235>,  <27.341331, 33.048588, 32.758350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.811468, 32.773167, 32.177235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.968323, 33.077839, 31.970909>,  <27.062435, 33.260643, 31.847115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.968323, 33.077839, 31.970909>,  <26.811468, 32.773167, 32.177235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.968323, 33.077839, 31.970909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024680, -0.551812, -0.833603,
		-0.919575, 0.339618, -0.197588,
		0.392138, 0.761684, -0.515814,
		27.085964, 33.306343, 31.816164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.442488, 32.788296, 31.624420>,  <26.811468, 32.773167, 32.177235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.442488, 32.788296, 31.624420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.789850, 32.969444, 31.543653>,  <26.998268, 33.078133, 31.495193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.789850, 32.969444, 31.543653>,  <26.442488, 32.788296, 31.624420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.789850, 32.969444, 31.543653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119449, -0.586290, -0.801246,
		-0.481248, 0.671690, -0.563235,
		0.868408, 0.452876, -0.201918,
		27.050373, 33.105309, 31.483078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.415648, 33.052174, 30.934601>,  <26.442488, 32.788296, 31.624420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.415648, 33.052174, 30.934601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.806490, 33.026863, 31.015850>,  <27.040995, 33.011677, 31.064600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.806490, 33.026863, 31.015850>,  <26.415648, 33.052174, 30.934601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.806490, 33.026863, 31.015850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143178, -0.510603, -0.847812,
		0.157366, 0.857485, -0.489853,
		0.977106, -0.063280, 0.203124,
		27.099621, 33.007877, 31.076788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.684292, 33.191959, 30.358562>,  <26.415648, 33.052174, 30.934601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.684292, 33.191959, 30.358562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.013601, 33.044334, 30.531078>,  <27.211187, 32.955757, 30.634588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.013601, 33.044334, 30.531078>,  <26.684292, 33.191959, 30.358562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.013601, 33.044334, 30.531078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202053, -0.519496, -0.830240,
		0.530467, 0.770658, -0.353117,
		0.823274, -0.369066, 0.431289,
		27.260584, 32.933613, 30.660465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.179771, 33.174957, 29.829454>,  <26.684292, 33.191959, 30.358562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.179771, 33.174957, 29.829454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.331289, 32.939434, 30.115061>,  <27.422199, 32.798119, 30.286425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.331289, 32.939434, 30.115061>,  <27.179771, 33.174957, 29.829454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.331289, 32.939434, 30.115061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329570, -0.635113, -0.698580,
		0.864811, 0.499937, -0.046524,
		0.378795, -0.588807, 0.714017,
		27.444927, 32.762791, 30.329266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.853458, 33.096657, 29.640127>,  <27.179771, 33.174957, 29.829454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.853458, 33.096657, 29.640127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.739798, 32.784805, 29.863352>,  <27.671600, 32.597694, 29.997286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.739798, 32.784805, 29.863352>,  <27.853458, 33.096657, 29.640127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.739798, 32.784805, 29.863352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231300, -0.620603, -0.749235,
		0.930461, -0.083818, 0.356675,
		-0.284153, -0.779633, 0.558060,
		27.654552, 32.550915, 30.030769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.374825, 32.550117, 29.505659>,  <27.853458, 33.096657, 29.640127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.374825, 32.550117, 29.505659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.076180, 32.351604, 29.682869>,  <27.896992, 32.232498, 29.789196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.076180, 32.351604, 29.682869>,  <28.374825, 32.550117, 29.505659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.076180, 32.351604, 29.682869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070380, -0.721133, -0.689213,
		0.661527, -0.483395, 0.573334,
		-0.746612, -0.496284, 0.443027,
		27.852196, 32.202721, 29.815777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.663548, 31.823298, 29.657248>,  <28.374825, 32.550117, 29.505659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.663548, 31.823298, 29.657248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.265066, 31.819103, 29.622673>,  <28.025978, 31.816586, 29.601929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.265066, 31.819103, 29.622673>,  <28.663548, 31.823298, 29.657248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.265066, 31.819103, 29.622673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070059, -0.685989, -0.724231,
		-0.051698, -0.727536, 0.684119,
		-0.996202, -0.010488, -0.086435,
		27.966206, 31.815956, 29.596743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.373732, 31.118441, 29.542912>,  <28.663548, 31.823298, 29.657248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.373732, 31.118441, 29.542912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.076183, 31.344574, 29.400331>,  <27.897655, 31.480253, 29.314783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.076183, 31.344574, 29.400331>,  <28.373732, 31.118441, 29.542912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.076183, 31.344574, 29.400331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199750, -0.697036, -0.688652,
		-0.637775, -0.441067, 0.631429,
		-0.743870, 0.565333, -0.356449,
		27.853022, 31.514174, 29.293396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.872486, 30.658510, 29.448532>,  <28.373732, 31.118441, 29.542912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.872486, 30.658510, 29.448532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.736853, 30.978752, 29.250925>,  <27.655472, 31.170898, 29.132360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.736853, 30.978752, 29.250925>,  <27.872486, 30.658510, 29.448532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.736853, 30.978752, 29.250925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222219, -0.578430, -0.784880,
		-0.914134, -0.156360, 0.374046,
		-0.339083, 0.800606, -0.494016,
		27.635128, 31.218933, 29.102720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.207491, 30.506317, 29.329113>,  <27.872486, 30.658510, 29.448532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.207491, 30.506317, 29.329113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.342775, 30.770351, 29.060816>,  <27.423946, 30.928772, 28.899837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.342775, 30.770351, 29.060816>,  <27.207491, 30.506317, 29.329113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.342775, 30.770351, 29.060816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375688, -0.558782, -0.739339,
		-0.862828, 0.502043, 0.059000,
		0.338212, 0.660087, -0.670744,
		27.444239, 30.968378, 28.859592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.676268, 30.627287, 28.781487>,  <27.207491, 30.506317, 29.329113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.676268, 30.627287, 28.781487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.996424, 30.769360, 28.588316>,  <27.188519, 30.854603, 28.472414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.996424, 30.769360, 28.588316>,  <26.676268, 30.627287, 28.781487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.996424, 30.769360, 28.588316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366814, -0.346997, -0.863158,
		-0.474152, 0.868009, -0.147448,
		0.800392, 0.355182, -0.482926,
		27.236542, 30.875914, 28.443438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.400097, 30.906469, 28.271444>,  <26.676268, 30.627287, 28.781487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.400097, 30.906469, 28.271444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769966, 30.812634, 28.151480>,  <26.991888, 30.756332, 28.079500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769966, 30.812634, 28.151480>,  <26.400097, 30.906469, 28.271444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.769966, 30.812634, 28.151480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358545, -0.271334, -0.893210,
		0.128163, 0.933458, -0.335007,
		0.924673, -0.234592, -0.299911,
		27.047367, 30.742256, 28.061506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.473637, 31.244661, 27.655003>,  <26.400097, 30.906469, 28.271444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.473637, 31.244661, 27.655003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.734095, 30.941240, 27.645161>,  <26.890369, 30.759188, 27.639256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.734095, 30.941240, 27.645161>,  <26.473637, 31.244661, 27.655003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.734095, 30.941240, 27.645161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223421, -0.160603, -0.961400,
		0.725321, 0.631509, -0.274053,
		0.651147, -0.758553, -0.024604,
		26.929440, 30.713675, 27.637779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.699852, 31.197521, 26.958084>,  <26.473637, 31.244661, 27.655003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.699852, 31.197521, 26.958084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.867334, 30.857933, 27.087038>,  <26.967825, 30.654181, 27.164412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.867334, 30.857933, 27.087038>,  <26.699852, 31.197521, 26.958084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.867334, 30.857933, 27.087038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119321, -0.300494, -0.946291,
		0.900248, 0.434686, -0.024520,
		0.418708, -0.848971, 0.322387,
		26.992947, 30.603241, 27.183754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.347431, 30.957417, 26.561245>,  <26.699852, 31.197521, 26.958084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.347431, 30.957417, 26.561245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.194954, 30.607210, 26.680016>,  <27.103468, 30.397087, 26.751278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.194954, 30.607210, 26.680016>,  <27.347431, 30.957417, 26.561245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.194954, 30.607210, 26.680016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372460, -0.439397, -0.817437,
		0.846147, -0.201009, 0.493589,
		-0.381194, -0.875514, 0.296927,
		27.080595, 30.344555, 26.769094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.993841, 31.348631, 25.880449>,  <27.347431, 30.957417, 26.561245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.993841, 31.348631, 25.880449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.701809, 31.077311, 25.913651>,  <26.526590, 30.914518, 25.933571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.701809, 31.077311, 25.913651>,  <26.993841, 31.348631, 25.880449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.701809, 31.077311, 25.913651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139268, 0.266605, 0.953691,
		-0.669019, 0.684712, -0.289108,
		-0.730081, -0.678301, 0.083005,
		26.482784, 30.873819, 25.938553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.338469, 31.531731, 25.982679>,  <26.993841, 31.348631, 25.880449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.338469, 31.531731, 25.982679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397867, 31.178776, 26.161268>,  <26.433506, 30.967003, 26.268421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397867, 31.178776, 26.161268>,  <26.338469, 31.531731, 25.982679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.397867, 31.178776, 26.161268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200626, 0.415210, 0.887327,
		-0.968348, -0.221341, -0.115372,
		0.148498, -0.882388, 0.446474,
		26.442417, 30.914059, 26.295210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.093979, 32.157433, 26.152679>,  <26.338469, 31.531731, 25.982679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.093979, 32.157433, 26.152679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.365768, 32.198215, 25.862047>,  <26.528843, 32.222687, 25.687668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.365768, 32.198215, 25.862047>,  <26.093979, 32.157433, 26.152679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.365768, 32.198215, 25.862047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557146, 0.572645, 0.601387,
		0.477389, -0.813438, 0.332291,
		0.679476, 0.101961, -0.726578,
		26.569611, 32.228806, 25.644073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.775761, 32.050301, 26.454695>,  <26.093979, 32.157433, 26.152679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.775761, 32.050301, 26.454695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794037, 32.285538, 26.131693>,  <26.805002, 32.426678, 25.937893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794037, 32.285538, 26.131693>,  <26.775761, 32.050301, 26.454695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.794037, 32.285538, 26.131693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489264, 0.691582, 0.531352,
		0.870938, -0.419361, -0.256132,
		0.045692, 0.588091, -0.807503,
		26.807745, 32.461964, 25.889442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.541325, 32.257664, 26.392714>,  <26.775761, 32.050301, 26.454695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.541325, 32.257664, 26.392714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.304502, 32.524696, 26.212133>,  <27.162409, 32.684914, 26.103786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.304502, 32.524696, 26.212133>,  <27.541325, 32.257664, 26.392714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.304502, 32.524696, 26.212133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360988, 0.720526, 0.592056,
		0.720526, 0.187563, -0.667580,
		-0.592056, 0.667580, -0.451449,
		27.126886, 32.724972, 26.076698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.014812, 32.835232, 26.071529>,  <27.541325, 32.257664, 26.392714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.014812, 32.835232, 26.071529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.645723, 32.975052, 26.136513>,  <27.424271, 33.058945, 26.175503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.645723, 32.975052, 26.136513>,  <28.014812, 32.835232, 26.071529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.645723, 32.975052, 26.136513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351116, 0.588292, 0.728443,
		0.159056, 0.729194, -0.665565,
		-0.922723, 0.349554, 0.162460,
		27.368906, 33.079918, 26.185251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.001640, 33.596790, 26.056444>,  <28.014812, 32.835232, 26.071529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.001640, 33.596790, 26.056444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.705704, 33.467834, 26.292646>,  <27.528141, 33.390461, 26.434368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.705704, 33.467834, 26.292646>,  <28.001640, 33.596790, 26.056444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.705704, 33.467834, 26.292646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347930, 0.567881, 0.745959,
		-0.575829, 0.757347, -0.307973,
		-0.739842, -0.322392, 0.590506,
		27.483751, 33.371117, 26.469799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.768091, 34.230587, 26.356379>,  <28.001640, 33.596790, 26.056444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.768091, 34.230587, 26.356379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.676121, 33.903866, 26.568026>,  <27.620939, 33.707832, 26.695015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.676121, 33.903866, 26.568026>,  <27.768091, 34.230587, 26.356379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.676121, 33.903866, 26.568026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274709, 0.467105, 0.840445,
		-0.933632, 0.338594, 0.116984,
		-0.229926, -0.816803, 0.529119,
		27.607143, 33.658825, 26.726761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.329838, 34.461845, 26.898756>,  <27.768091, 34.230587, 26.356379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.329838, 34.461845, 26.898756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.521339, 34.125374, 26.999323>,  <27.636240, 33.923489, 27.059662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.521339, 34.125374, 26.999323>,  <27.329838, 34.461845, 26.898756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.521339, 34.125374, 26.999323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294807, 0.423768, 0.856452,
		-0.826973, -0.335909, 0.450866,
		0.478753, -0.841181, 0.251416,
		27.664965, 33.873020, 27.074747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.147696, 34.340660, 27.667727>,  <27.329838, 34.461845, 26.898756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.147696, 34.340660, 27.667727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.475784, 34.127113, 27.585535>,  <27.672638, 33.998985, 27.536221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.475784, 34.127113, 27.585535>,  <27.147696, 34.340660, 27.667727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.475784, 34.127113, 27.585535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416479, 0.311073, 0.854271,
		-0.392148, -0.786270, 0.477493,
		0.820223, -0.533866, -0.205478,
		27.721851, 33.966953, 27.523891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.321297, 33.826782, 28.207420>,  <27.147696, 34.340660, 27.667727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.321297, 33.826782, 28.207420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.678894, 33.874931, 28.034777>,  <27.893452, 33.903820, 27.931190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.678894, 33.874931, 28.034777>,  <27.321297, 33.826782, 28.207420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.678894, 33.874931, 28.034777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395466, 0.240929, 0.886318,
		0.210675, -0.963049, 0.167786,
		0.893993, 0.120372, -0.431611,
		27.947092, 33.911041, 27.905294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.687830, 33.466759, 28.713024>,  <27.321297, 33.826782, 28.207420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.687830, 33.466759, 28.713024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.969263, 33.680462, 28.525600>,  <28.138123, 33.808681, 28.413147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.969263, 33.680462, 28.525600>,  <27.687830, 33.466759, 28.713024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.969263, 33.680462, 28.525600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370618, 0.286710, 0.883425,
		0.606313, -0.795217, 0.003719,
		0.703581, 0.534254, -0.468558,
		28.180338, 33.840736, 28.385033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.419447, 33.214989, 28.934418>,  <27.687830, 33.466759, 28.713024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.419447, 33.214989, 28.934418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.476425, 33.582359, 28.786800>,  <28.510612, 33.802784, 28.698229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.476425, 33.582359, 28.786800>,  <28.419447, 33.214989, 28.934418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.476425, 33.582359, 28.786800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405291, 0.286038, 0.868286,
		0.903022, -0.273252, -0.331488,
		0.142443, 0.918431, -0.369045,
		28.519157, 33.857887, 28.676086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.178137, 33.375275, 29.165218>,  <28.419447, 33.214989, 28.934418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.178137, 33.375275, 29.165218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978985, 33.702278, 29.049433>,  <28.859493, 33.898479, 28.979961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978985, 33.702278, 29.049433>,  <29.178137, 33.375275, 29.165218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.978985, 33.702278, 29.049433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363606, 0.499792, 0.786129,
		0.787342, 0.286147, -0.546089,
		-0.497879, 0.817513, -0.289463,
		28.829620, 33.947533, 28.962593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.581898, 33.976906, 28.956215>,  <29.178137, 33.375275, 29.165218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.581898, 33.976906, 28.956215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.238564, 34.142666, 29.077229>,  <29.032562, 34.242123, 29.149837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.238564, 34.142666, 29.077229>,  <29.581898, 33.976906, 28.956215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.238564, 34.142666, 29.077229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494153, 0.508964, 0.704818,
		0.138101, 0.754470, -0.641641,
		-0.858336, 0.414405, 0.302535,
		28.981062, 34.266987, 29.167990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.768604, 34.495934, 29.399738>,  <29.581898, 33.976906, 28.956215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.768604, 34.495934, 29.399738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.371725, 34.529053, 29.437017>,  <29.133598, 34.548923, 29.459385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.371725, 34.529053, 29.437017>,  <29.768604, 34.495934, 29.399738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.371725, 34.529053, 29.437017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119287, 0.413347, 0.902726,
		0.036224, 0.906801, -0.419999,
		-0.992199, 0.082801, 0.093197,
		29.074066, 34.553894, 29.464977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.761156, 35.101143, 29.636827>,  <29.768604, 34.495934, 29.399738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.761156, 35.101143, 29.636827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.410639, 34.947239, 29.752808>,  <29.200329, 34.854897, 29.822395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.410639, 34.947239, 29.752808>,  <29.761156, 35.101143, 29.636827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.410639, 34.947239, 29.752808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092801, 0.455755, 0.885254,
		-0.472757, 0.802649, -0.363669,
		-0.876292, -0.384762, 0.289948,
		29.147751, 34.831810, 29.839792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.280237, 35.719574, 29.743958>,  <29.761156, 35.101143, 29.636827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.280237, 35.719574, 29.743958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.207304, 35.380096, 29.942545>,  <29.163544, 35.176411, 30.061697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.207304, 35.380096, 29.942545>,  <29.280237, 35.719574, 29.743958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.207304, 35.380096, 29.942545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078235, 0.490807, 0.867748,
		-0.980119, 0.197062, -0.023094,
		-0.182335, -0.848690, 0.496467,
		29.152603, 35.125488, 30.091484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.321501, 35.939789, 30.421766>,  <29.280237, 35.719574, 29.743958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.321501, 35.939789, 30.421766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.248516, 35.551094, 30.481688>,  <29.204725, 35.317879, 30.517639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.248516, 35.551094, 30.481688>,  <29.321501, 35.939789, 30.421766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.248516, 35.551094, 30.481688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043269, 0.144275, 0.988591,
		-0.982260, 0.186863, 0.015721,
		-0.182463, -0.971734, 0.149801,
		29.193777, 35.259575, 30.526628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.707266, 35.875633, 30.793924>,  <29.321501, 35.939789, 30.421766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.707266, 35.875633, 30.793924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.929842, 35.551144, 30.865801>,  <29.063387, 35.356449, 30.908926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.929842, 35.551144, 30.865801>,  <28.707266, 35.875633, 30.793924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.929842, 35.551144, 30.865801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024879, 0.199900, 0.979500,
		-0.830515, -0.549504, 0.091050,
		0.556440, -0.811225, 0.179691,
		29.096775, 35.307777, 30.919708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.434591, 35.549324, 31.348083>,  <28.707266, 35.875633, 30.793924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.434591, 35.549324, 31.348083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.788818, 35.363953, 31.360712>,  <29.001354, 35.252728, 31.368288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.788818, 35.363953, 31.360712>,  <28.434591, 35.549324, 31.348083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.788818, 35.363953, 31.360712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051892, -0.031162, 0.998166,
		-0.461600, -0.885584, -0.051645,
		0.885569, -0.463433, 0.031571,
		29.054489, 35.224922, 31.370184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.385269, 35.043388, 31.888203>,  <28.434591, 35.549324, 31.348083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.385269, 35.043388, 31.888203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.773975, 35.111172, 31.822533>,  <29.007198, 35.151844, 31.783131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.773975, 35.111172, 31.822533>,  <28.385269, 35.043388, 31.888203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.773975, 35.111172, 31.822533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176009, -0.057239, 0.982723,
		0.157138, -0.983873, -0.085449,
		0.971766, 0.169464, -0.164176,
		29.065506, 35.162010, 31.773279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.609194, 34.589890, 32.283062>,  <28.385269, 35.043388, 31.888203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.609194, 34.589890, 32.283062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.924343, 34.823387, 32.204578>,  <29.113432, 34.963486, 32.157490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.924343, 34.823387, 32.204578>,  <28.609194, 34.589890, 32.283062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.924343, 34.823387, 32.204578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190746, 0.071623, 0.979023,
		0.585556, -0.808770, -0.054918,
		0.787871, 0.583748, -0.196209,
		29.160704, 34.998512, 32.145714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.126972, 34.368683, 32.690968>,  <28.609194, 34.589890, 32.283062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.126972, 34.368683, 32.690968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.249016, 34.739887, 32.605450>,  <29.322243, 34.962608, 32.554138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.249016, 34.739887, 32.605450>,  <29.126972, 34.368683, 32.690968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.249016, 34.739887, 32.605450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198852, 0.157470, 0.967296,
		0.931325, -0.337646, -0.136491,
		0.305110, 0.928008, -0.213797,
		29.340549, 35.018291, 32.541309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.741680, 34.493797, 33.108093>,  <29.126972, 34.368683, 32.690968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.741680, 34.493797, 33.108093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.586363, 34.848854, 33.009048>,  <29.493172, 35.061890, 32.949619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.586363, 34.848854, 33.009048>,  <29.741680, 34.493797, 33.108093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.586363, 34.848854, 33.009048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212084, 0.347561, 0.913357,
		0.896799, 0.302136, -0.323211,
		-0.388294, 0.887646, -0.247614,
		29.469875, 35.115147, 32.934765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261858, 34.992367, 33.281029>,  <29.741680, 34.493797, 33.108093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261858, 34.992367, 33.281029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.917871, 35.196346, 33.289146>,  <29.711479, 35.318733, 33.294018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.917871, 35.196346, 33.289146>,  <30.261858, 34.992367, 33.281029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.917871, 35.196346, 33.289146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251242, 0.388410, 0.886575,
		0.444223, 0.767524, -0.462139,
		-0.859967, 0.509946, 0.020294,
		29.659882, 35.349331, 33.295235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.468878, 35.495922, 33.611877>,  <30.261858, 34.992367, 33.281029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.468878, 35.495922, 33.611877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072306, 35.501385, 33.663841>,  <29.834362, 35.504662, 33.695019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072306, 35.501385, 33.663841>,  <30.468878, 35.495922, 33.611877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072306, 35.501385, 33.663841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130114, 0.191227, 0.972884,
		-0.011553, 0.981451, -0.191366,
		-0.991432, 0.013660, 0.129910,
		29.774876, 35.505482, 33.702816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.371490, 36.078117, 34.019066>,  <30.468878, 35.495922, 33.611877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.371490, 36.078117, 34.019066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.037367, 35.860130, 34.048115>,  <29.836893, 35.729340, 34.065544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.037367, 35.860130, 34.048115>,  <30.371490, 36.078117, 34.019066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.037367, 35.860130, 34.048115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063937, 0.227486, 0.971680,
		-0.546051, 0.807009, -0.224864,
		-0.835309, -0.544964, 0.072621,
		29.786774, 35.696640, 34.069901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.580959, 36.515114, 33.386871>,  <30.371490, 36.078117, 34.019066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.580959, 36.515114, 33.386871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.812073, 36.612530, 33.075268>,  <30.950741, 36.670979, 32.888306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.812073, 36.612530, 33.075268>,  <30.580959, 36.515114, 33.386871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.812073, 36.612530, 33.075268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619755, 0.490161, 0.612900,
		0.531103, -0.836918, 0.132275,
		0.577783, 0.243535, -0.779011,
		30.985407, 36.685589, 32.841564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373627, 36.490952, 33.573288>,  <30.580959, 36.515114, 33.386871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373627, 36.490952, 33.573288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280975, 36.752682, 33.285343>,  <31.225386, 36.909721, 33.112576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280975, 36.752682, 33.285343>,  <31.373627, 36.490952, 33.573288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280975, 36.752682, 33.285343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624495, 0.667396, 0.405696,
		0.745893, -0.355582, -0.563210,
		-0.231626, 0.654327, -0.719865,
		31.211487, 36.948978, 33.069386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964622, 36.781124, 33.363335>,  <31.373627, 36.490952, 33.573288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964622, 36.781124, 33.363335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693134, 37.039604, 33.223755>,  <31.530241, 37.194691, 33.140007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693134, 37.039604, 33.223755>,  <31.964622, 36.781124, 33.363335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.693134, 37.039604, 33.223755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561451, 0.762861, 0.320650,
		0.473406, 0.021711, -0.880576,
		-0.678719, 0.646198, -0.348954,
		31.489519, 37.233463, 33.119068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375484, 36.441055, 33.875027>,  <31.964622, 36.781124, 33.363335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375484, 36.441055, 33.875027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280464, 36.828419, 33.844696>,  <32.223450, 37.060837, 33.826500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280464, 36.828419, 33.844696>,  <32.375484, 36.441055, 33.875027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280464, 36.828419, 33.844696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950642, 0.247814, 0.186731,
		0.199622, -0.027722, -0.979481,
		-0.237553, 0.968411, -0.075823,
		32.209198, 37.118942, 33.821949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974846, 36.733685, 33.885880>,  <32.375484, 36.441055, 33.875027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974846, 36.733685, 33.885880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761333, 37.068760, 33.932125>,  <32.633228, 37.269806, 33.959873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761333, 37.068760, 33.932125>,  <32.974846, 36.733685, 33.885880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761333, 37.068760, 33.932125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786731, 0.441812, 0.431111,
		0.310056, 0.321074, -0.894861,
		-0.533779, 0.837684, 0.115612,
		32.601200, 37.320065, 33.966808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567772, 37.272060, 33.920452>,  <32.974846, 36.733685, 33.885880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567772, 37.272060, 33.920452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240517, 37.422817, 34.094162>,  <33.044163, 37.513271, 34.198387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240517, 37.422817, 34.094162>,  <33.567772, 37.272060, 33.920452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240517, 37.422817, 34.094162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556772, 0.707979, 0.434478,
		-0.143705, 0.597257, -0.789071,
		-0.818140, 0.376896, 0.434276,
		32.995075, 37.535885, 34.224445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383690, 38.019066, 33.847519>,  <33.567772, 37.272060, 33.920452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383690, 38.019066, 33.847519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251247, 37.855145, 34.187504>,  <33.171783, 37.756790, 34.391495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251247, 37.855145, 34.187504>,  <33.383690, 38.019066, 33.847519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251247, 37.855145, 34.187504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728637, 0.461296, 0.506254,
		-0.599548, 0.786935, 0.145861,
		-0.331104, -0.409804, 0.849959,
		33.151917, 37.732204, 34.442493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246124, 38.463360, 34.363094>,  <33.383690, 38.019066, 33.847519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246124, 38.463360, 34.363094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380379, 38.129116, 34.537037>,  <33.460934, 37.928570, 34.641403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380379, 38.129116, 34.537037>,  <33.246124, 38.463360, 34.363094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380379, 38.129116, 34.537037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429138, 0.546587, 0.719086,
		-0.838562, -0.054741, 0.542049,
		0.335640, -0.835611, 0.434855,
		33.481071, 37.878433, 34.667492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079552, 38.433990, 35.143085>,  <33.246124, 38.463360, 34.363094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079552, 38.433990, 35.143085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386108, 38.192780, 35.054543>,  <33.570042, 38.048054, 35.001415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386108, 38.192780, 35.054543>,  <33.079552, 38.433990, 35.143085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386108, 38.192780, 35.054543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481523, 0.311217, 0.819317,
		-0.425183, -0.734505, 0.528887,
		0.766391, -0.603031, -0.221357,
		33.616024, 38.011871, 34.988136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140518, 38.023792, 35.754929>,  <33.079552, 38.433990, 35.143085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140518, 38.023792, 35.754929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487331, 38.049667, 35.557316>,  <33.695419, 38.065193, 35.438747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487331, 38.049667, 35.557316>,  <33.140518, 38.023792, 35.754929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487331, 38.049667, 35.557316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428903, 0.407696, 0.806118,
		0.253561, -0.910823, 0.325742,
		0.867035, 0.064688, -0.494030,
		33.747440, 38.069073, 35.409107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487511, 38.081947, 36.334316>,  <33.140518, 38.023792, 35.754929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487511, 38.081947, 36.334316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755806, 38.164845, 36.049454>,  <33.916782, 38.214581, 35.878536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755806, 38.164845, 36.049454>,  <33.487511, 38.081947, 36.334316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755806, 38.164845, 36.049454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560406, 0.487359, 0.669646,
		0.485819, -0.848262, 0.210787,
		0.670764, 0.207201, -0.712140,
		33.957027, 38.227016, 35.835808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142223, 37.902222, 36.616375>,  <33.487511, 38.081947, 36.334316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142223, 37.902222, 36.616375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202919, 38.173149, 36.328426>,  <34.239338, 38.335705, 36.155659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202919, 38.173149, 36.328426>,  <34.142223, 37.902222, 36.616375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202919, 38.173149, 36.328426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622037, 0.500557, 0.602090,
		0.768144, -0.539148, -0.345362,
		0.151742, 0.677320, -0.719869,
		34.248444, 38.376347, 36.112465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882019, 38.023586, 36.503094>,  <34.142223, 37.902222, 36.616375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882019, 38.023586, 36.503094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710457, 38.355797, 36.360962>,  <34.607521, 38.555122, 36.275681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710457, 38.355797, 36.360962>,  <34.882019, 38.023586, 36.503094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710457, 38.355797, 36.360962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575858, 0.554440, 0.600820,
		0.696010, 0.053073, -0.716068,
		-0.428904, 0.830530, -0.355333,
		34.581787, 38.604958, 36.254360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428848, 38.499294, 36.387642>,  <34.882019, 38.023586, 36.503094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428848, 38.499294, 36.387642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108978, 38.737957, 36.414536>,  <34.917057, 38.881153, 36.430672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108978, 38.737957, 36.414536>,  <35.428848, 38.499294, 36.387642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108978, 38.737957, 36.414536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479710, 0.567525, 0.669174,
		0.361108, 0.567376, -0.740058,
		-0.799675, 0.596657, 0.067238,
		34.869076, 38.916954, 36.434708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748219, 39.220245, 36.433498>,  <35.428848, 38.499294, 36.387642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748219, 39.220245, 36.433498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376434, 39.231960, 36.580601>,  <35.153362, 39.238991, 36.668861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376434, 39.231960, 36.580601>,  <35.748219, 39.220245, 36.433498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376434, 39.231960, 36.580601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312216, 0.593464, 0.741837,
		-0.196521, 0.804328, -0.560746,
		-0.929462, 0.029287, 0.367752,
		35.097595, 39.240746, 36.690926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827938, 39.830482, 36.923138>,  <35.748219, 39.220245, 36.433498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827938, 39.830482, 36.923138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475792, 39.659695, 37.005756>,  <35.264503, 39.557224, 37.055328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475792, 39.659695, 37.005756>,  <35.827938, 39.830482, 36.923138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475792, 39.659695, 37.005756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010261, 0.418229, 0.908284,
		-0.474190, 0.801739, -0.363812,
		-0.880363, -0.426966, 0.206547,
		35.211681, 39.531605, 37.067719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485691, 40.356709, 37.382042>,  <35.827938, 39.830482, 36.923138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485691, 40.356709, 37.382042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315075, 40.004459, 37.464573>,  <35.212704, 39.793110, 37.514091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315075, 40.004459, 37.464573>,  <35.485691, 40.356709, 37.382042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315075, 40.004459, 37.464573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005693, 0.230733, 0.973000,
		-0.904451, 0.413849, -0.103430,
		-0.426540, -0.880620, 0.206331,
		35.187115, 39.740273, 37.526474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079578, 40.470535, 37.969196>,  <35.485691, 40.356709, 37.382042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079578, 40.470535, 37.969196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145042, 40.076374, 37.950413>,  <35.184319, 39.839878, 37.939144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145042, 40.076374, 37.950413>,  <35.079578, 40.470535, 37.969196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145042, 40.076374, 37.950413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184757, -0.016142, 0.982652,
		-0.969062, -0.169493, 0.179418,
		0.163656, -0.985399, -0.046957,
		35.194138, 39.780754, 37.936325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697819, 40.118572, 38.546341>,  <35.079578, 40.470535, 37.969196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697819, 40.118572, 38.546341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961334, 39.833233, 38.450733>,  <35.119446, 39.662029, 38.393368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961334, 39.833233, 38.450733>,  <34.697819, 40.118572, 38.546341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961334, 39.833233, 38.450733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090391, -0.240349, 0.966469,
		-0.746875, -0.658308, -0.093860,
		0.658793, -0.713347, -0.239016,
		35.158974, 39.619228, 38.379028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406178, 39.540398, 38.789116>,  <34.697819, 40.118572, 38.546341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406178, 39.540398, 38.789116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802147, 39.485863, 38.773827>,  <35.039730, 39.453144, 38.764652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802147, 39.485863, 38.773827>,  <34.406178, 39.540398, 38.789116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802147, 39.485863, 38.773827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007582, -0.218533, 0.975800,
		-0.141384, -0.966260, -0.215297,
		0.989926, -0.136330, -0.038223,
		35.099125, 39.444962, 38.762360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508804, 38.920650, 39.074921>,  <34.406178, 39.540398, 38.789116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508804, 38.920650, 39.074921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869808, 39.087891, 39.116219>,  <35.086411, 39.188236, 39.140999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869808, 39.087891, 39.116219>,  <34.508804, 38.920650, 39.074921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869808, 39.087891, 39.116219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052587, -0.344930, 0.937154,
		0.427437, -0.840366, -0.333291,
		0.902514, 0.418101, 0.103244,
		35.140564, 39.213322, 39.147190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868919, 38.365585, 39.480713>,  <34.508804, 38.920650, 39.074921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868919, 38.365585, 39.480713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092346, 38.690948, 39.545673>,  <35.226402, 38.886166, 39.584652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092346, 38.690948, 39.545673>,  <34.868919, 38.365585, 39.480713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092346, 38.690948, 39.545673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110488, -0.267015, 0.957338,
		0.822068, -0.516793, -0.239017,
		0.558567, 0.813405, 0.162405,
		35.259914, 38.934971, 39.594395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360592, 38.139954, 39.931923>,  <34.868919, 38.365585, 39.480713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360592, 38.139954, 39.931923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.364605, 38.538464, 39.966190>,  <35.367012, 38.777569, 39.986752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.364605, 38.538464, 39.966190>,  <35.360592, 38.139954, 39.931923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364605, 38.538464, 39.966190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045234, -0.086037, 0.995265,
		0.998926, -0.006113, -0.045929,
		0.010035, 0.996273, 0.085668,
		35.367615, 38.837345, 39.991890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883888, 38.275688, 40.458195>,  <35.360592, 38.139954, 39.931923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883888, 38.275688, 40.458195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674702, 38.614632, 40.421341>,  <35.549191, 38.817997, 40.399227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674702, 38.614632, 40.421341>,  <35.883888, 38.275688, 40.458195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674702, 38.614632, 40.421341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011482, 0.115089, 0.993289,
		0.852275, 0.518400, -0.069917,
		-0.522968, 0.847358, -0.092135,
		35.517811, 38.868839, 40.393700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174210, 38.927288, 40.853802>,  <35.883888, 38.275688, 40.458195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174210, 38.927288, 40.853802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790718, 39.037079, 40.824112>,  <35.560623, 39.102951, 40.806297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790718, 39.037079, 40.824112>,  <36.174210, 38.927288, 40.853802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790718, 39.037079, 40.824112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014396, 0.213863, 0.976757,
		0.283968, 0.937511, -0.201085,
		-0.958726, 0.274473, -0.074227,
		35.503101, 39.119419, 40.801846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060566, 39.443600, 41.407154>,  <36.174210, 38.927288, 40.853802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060566, 39.443600, 41.407154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692703, 39.306885, 41.329777>,  <35.471985, 39.224857, 41.283352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692703, 39.306885, 41.329777>,  <36.060566, 39.443600, 41.407154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692703, 39.306885, 41.329777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259194, 0.158170, 0.952786,
		-0.295051, 0.926372, -0.234050,
		-0.919654, -0.341785, -0.193442,
		35.416805, 39.204350, 41.271744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656891, 39.908100, 41.730175>,  <36.060566, 39.443600, 41.407154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656891, 39.908100, 41.730175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415371, 39.593475, 41.678410>,  <35.270458, 39.404701, 41.647350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415371, 39.593475, 41.678410>,  <35.656891, 39.908100, 41.730175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415371, 39.593475, 41.678410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404688, 0.162596, 0.899883,
		-0.686772, 0.595720, -0.416488,
		-0.603798, -0.786562, -0.129414,
		35.234230, 39.357506, 41.639584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968830, 40.151279, 41.969284>,  <35.656891, 39.908100, 41.730175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968830, 40.151279, 41.969284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926205, 39.753860, 41.953747>,  <34.900627, 39.515408, 41.944424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926205, 39.753860, 41.953747>,  <34.968830, 40.151279, 41.969284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926205, 39.753860, 41.953747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550654, 0.026449, 0.834314,
		-0.827903, 0.110297, -0.549919,
		-0.106567, -0.993547, -0.038839,
		34.894234, 39.455795, 41.942097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198936, 39.989109, 41.941269>,  <34.968830, 40.151279, 41.969284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198936, 39.989109, 41.941269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.399967, 39.679871, 42.096058>,  <34.520584, 39.494328, 42.188931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.399967, 39.679871, 42.096058>,  <34.198936, 39.989109, 41.941269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399967, 39.679871, 42.096058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577324, 0.033065, 0.815845,
		-0.643519, -0.633430, -0.429708,
		0.502573, -0.773093, 0.386972,
		34.550739, 39.447945, 42.212151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789188, 39.551529, 42.245907>,  <34.198936, 39.989109, 41.941269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789188, 39.551529, 42.245907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117218, 39.382797, 42.400593>,  <34.314034, 39.281559, 42.493404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117218, 39.382797, 42.400593>,  <33.789188, 39.551529, 42.245907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117218, 39.382797, 42.400593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454758, -0.070154, 0.887848,
		-0.347391, -0.903957, -0.249361,
		0.820070, -0.421829, 0.386711,
		34.363239, 39.256248, 42.516605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596767, 39.020214, 42.658386>,  <33.789188, 39.551529, 42.245907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596767, 39.020214, 42.658386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962212, 39.105331, 42.796967>,  <34.181480, 39.156403, 42.880116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962212, 39.105331, 42.796967>,  <33.596767, 39.020214, 42.658386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962212, 39.105331, 42.796967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321543, -0.143372, 0.935978,
		0.248840, -0.966522, -0.062565,
		0.913613, 0.212791, 0.346455,
		34.236294, 39.169170, 42.900902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857876, 38.433445, 43.094955>,  <33.596767, 39.020214, 42.658386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857876, 38.433445, 43.094955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051140, 38.764458, 43.209328>,  <34.167099, 38.963066, 43.277950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051140, 38.764458, 43.209328>,  <33.857876, 38.433445, 43.094955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051140, 38.764458, 43.209328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392207, -0.087404, 0.915715,
		0.782774, -0.554575, 0.282333,
		0.483156, 0.827531, 0.285926,
		34.196087, 39.012718, 43.295105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037148, 38.255150, 43.802841>,  <33.857876, 38.433445, 43.094955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037148, 38.255150, 43.802841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143753, 38.640633, 43.796619>,  <34.207718, 38.871922, 43.792885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143753, 38.640633, 43.796619>,  <34.037148, 38.255150, 43.802841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143753, 38.640633, 43.796619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211057, 0.074100, 0.974661,
		0.940438, -0.256480, 0.223146,
		0.266516, 0.963704, -0.015555,
		34.223709, 38.929745, 43.791954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449726, 38.370380, 44.308643>,  <34.037148, 38.255150, 43.802841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449726, 38.370380, 44.308643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328999, 38.750027, 44.272682>,  <34.256561, 38.977814, 44.251106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328999, 38.750027, 44.272682>,  <34.449726, 38.370380, 44.308643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328999, 38.750027, 44.272682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207696, 0.026579, 0.977832,
		0.930466, 0.313804, 0.189105,
		-0.301821, 0.949116, -0.089907,
		34.238453, 39.034760, 44.245708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769623, 38.715008, 44.873257>,  <34.449726, 38.370380, 44.308643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769623, 38.715008, 44.873257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506073, 38.989563, 44.750134>,  <34.347942, 39.154297, 44.676258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506073, 38.989563, 44.750134>,  <34.769623, 38.715008, 44.873257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506073, 38.989563, 44.750134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284788, 0.151131, 0.946602,
		0.696259, 0.711356, 0.095899,
		-0.658877, 0.686391, -0.307812,
		34.308411, 39.195480, 44.657791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898624, 39.331554, 45.126842>,  <34.769623, 38.715008, 44.873257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898624, 39.331554, 45.126842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506527, 39.297195, 45.055573>,  <34.271271, 39.276581, 45.012810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506527, 39.297195, 45.055573>,  <34.898624, 39.331554, 45.126842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506527, 39.297195, 45.055573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195344, 0.278802, 0.940271,
		-0.031095, 0.956499, -0.290074,
		-0.980242, -0.085902, -0.178178,
		34.212456, 39.271423, 45.002121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664089, 39.704903, 45.567513>,  <34.898624, 39.331554, 45.126842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664089, 39.704903, 45.567513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316711, 39.535938, 45.463692>,  <34.108284, 39.434559, 45.401398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316711, 39.535938, 45.463692>,  <34.664089, 39.704903, 45.567513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316711, 39.535938, 45.463692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380671, 0.232727, 0.894946,
		-0.317627, 0.876019, -0.362910,
		-0.868448, -0.422408, -0.259555,
		34.056175, 39.409214, 45.385826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117970, 40.197361, 45.854282>,  <34.664089, 39.704903, 45.567513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117970, 40.197361, 45.854282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962593, 39.833248, 45.797024>,  <33.869366, 39.614780, 45.762669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962593, 39.833248, 45.797024>,  <34.117970, 40.197361, 45.854282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962593, 39.833248, 45.797024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477752, 0.066116, 0.876003,
		-0.787949, 0.408666, -0.460573,
		-0.388444, -0.910286, -0.143145,
		33.846062, 39.560162, 45.754082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602776, 40.142738, 46.338253>,  <34.117970, 40.197361, 45.854282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602776, 40.142738, 46.338253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.613869, 39.753445, 46.247002>,  <33.620525, 39.519867, 46.192249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.613869, 39.753445, 46.247002>,  <33.602776, 40.142738, 46.338253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613869, 39.753445, 46.247002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455481, -0.215451, 0.863781,
		-0.889814, 0.079954, -0.449265,
		0.027732, -0.973236, -0.228129,
		33.622189, 39.461475, 46.178562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922394, 39.880756, 46.383095>,  <33.602776, 40.142738, 46.338253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922394, 39.880756, 46.383095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204750, 39.601250, 46.429489>,  <33.374165, 39.433544, 46.457325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204750, 39.601250, 46.429489>,  <32.922394, 39.880756, 46.383095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204750, 39.601250, 46.429489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331041, -0.180690, 0.926155,
		-0.626209, -0.692154, -0.358867,
		0.705885, -0.698766, 0.115982,
		33.416515, 39.391621, 46.464283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681965, 39.358131, 46.775909>,  <32.922394, 39.880756, 46.383095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681965, 39.358131, 46.775909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074993, 39.304188, 46.827084>,  <33.310810, 39.271820, 46.857788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074993, 39.304188, 46.827084>,  <32.681965, 39.358131, 46.775909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074993, 39.304188, 46.827084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161447, -0.277979, 0.946923,
		-0.092137, -0.951074, -0.294906,
		0.982571, -0.134858, 0.127936,
		33.369766, 39.263729, 46.865463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698677, 38.727463, 47.095325>,  <32.681965, 39.358131, 46.775909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698677, 38.727463, 47.095325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.040928, 38.914471, 47.184166>,  <33.246277, 39.026676, 47.237469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.040928, 38.914471, 47.184166>,  <32.698677, 38.727463, 47.095325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040928, 38.914471, 47.184166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137203, -0.208885, 0.968268,
		0.499076, -0.858949, -0.114583,
		0.855628, 0.467518, 0.222100,
		33.297615, 39.054726, 47.250797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945576, 38.368896, 47.696285>,  <32.698677, 38.727463, 47.095325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945576, 38.368896, 47.696285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227642, 38.652370, 47.705212>,  <33.396881, 38.822456, 47.710567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227642, 38.652370, 47.705212>,  <32.945576, 38.368896, 47.696285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227642, 38.652370, 47.705212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107869, -0.138334, 0.984494,
		0.700786, -0.691827, -0.173994,
		0.705169, 0.708688, 0.022316,
		33.439194, 38.864979, 47.711906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621277, 38.006718, 47.861404>,  <32.945576, 38.368896, 47.696285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621277, 38.006718, 47.861404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595310, 38.394241, 47.957073>,  <33.579731, 38.626755, 48.014473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595310, 38.394241, 47.957073>,  <33.621277, 38.006718, 47.861404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595310, 38.394241, 47.957073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188882, -0.247272, 0.950358,
		0.979852, 0.016515, 0.199041,
		-0.064912, 0.968805, 0.239171,
		33.575836, 38.684883, 48.028824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023880, 38.076786, 48.458916>,  <33.621277, 38.006718, 47.861404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023880, 38.076786, 48.458916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.778316, 38.392517, 48.455582>,  <33.630978, 38.581955, 48.453583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.778316, 38.392517, 48.455582>,  <34.023880, 38.076786, 48.458916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778316, 38.392517, 48.455582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288405, -0.214458, 0.933183,
		0.734805, 0.575293, 0.359305,
		-0.613910, 0.789332, -0.008333,
		33.594143, 38.629318, 48.453083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154629, 38.479298, 49.035534>,  <34.023880, 38.076786, 48.458916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154629, 38.479298, 49.035534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.778118, 38.565022, 48.931175>,  <33.552212, 38.616455, 48.868561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.778118, 38.565022, 48.931175>,  <34.154629, 38.479298, 49.035534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778118, 38.565022, 48.931175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303065, -0.195693, 0.932661,
		0.148827, 0.956961, 0.249153,
		-0.941277, 0.214314, -0.260897,
		33.495735, 38.629314, 48.852905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936127, 38.582817, 49.657856>,  <34.154629, 38.479298, 49.035534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936127, 38.582817, 49.657856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594391, 38.584454, 49.449974>,  <33.389351, 38.585438, 49.325245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594391, 38.584454, 49.449974>,  <33.936127, 38.582817, 49.657856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594391, 38.584454, 49.449974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459141, -0.474477, 0.751040,
		-0.243512, 0.880258, 0.407243,
		-0.854337, 0.004095, -0.519703,
		33.338089, 38.585682, 49.294064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509735, 38.973518, 50.086143>,  <33.936127, 38.582817, 49.657856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509735, 38.973518, 50.086143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293289, 38.722649, 49.862057>,  <33.163422, 38.572128, 49.727604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293289, 38.722649, 49.862057>,  <33.509735, 38.973518, 50.086143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293289, 38.722649, 49.862057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343111, -0.443552, 0.827971,
		-0.767768, 0.640247, 0.024823,
		-0.541116, -0.627173, -0.560221,
		33.130955, 38.534496, 49.693989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394951, 38.380619, 50.484386>,  <33.509735, 38.973518, 50.086143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394951, 38.380619, 50.484386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102962, 38.386860, 50.211067>,  <32.927769, 38.390606, 50.047077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102962, 38.386860, 50.211067>,  <33.394951, 38.380619, 50.484386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102962, 38.386860, 50.211067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555512, -0.595972, 0.579848,
		-0.398178, 0.802854, 0.443712,
		-0.729973, 0.015605, -0.683298,
		32.883972, 38.391541, 50.006077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886192, 38.572136, 50.925369>,  <33.394951, 38.380619, 50.484386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886192, 38.572136, 50.925369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775993, 38.357937, 50.606037>,  <32.709873, 38.229416, 50.414436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775993, 38.357937, 50.606037>,  <32.886192, 38.572136, 50.925369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775993, 38.357937, 50.606037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688429, -0.469724, 0.552652,
		-0.670942, 0.701853, -0.239244,
		-0.275502, -0.535501, -0.798334,
		32.693344, 38.197289, 50.366535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.088711, 38.248154, 51.098030>,  <32.886192, 38.572136, 50.925369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.088711, 38.248154, 51.098030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913324, 38.201077, 51.454433>,  <31.808092, 38.172829, 51.668274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913324, 38.201077, 51.454433>,  <32.088711, 38.248154, 51.098030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913324, 38.201077, 51.454433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588885, -0.786547, 0.185897,
		0.678941, 0.606211, 0.414182,
		-0.438467, -0.117692, 0.891008,
		31.781784, 38.165768, 51.721737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605400, 38.143917, 51.496861>,  <32.088711, 38.248154, 51.098030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605400, 38.143917, 51.496861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287331, 38.000984, 51.692825>,  <32.096489, 37.915226, 51.810406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287331, 38.000984, 51.692825>,  <32.605400, 38.143917, 51.496861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287331, 38.000984, 51.692825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516202, -0.822824, 0.237689,
		0.318181, 0.441899, 0.838741,
		-0.795170, -0.357332, 0.489916,
		32.048779, 37.893784, 51.839802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644085, 37.831547, 52.153519>,  <32.605400, 38.143917, 51.496861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644085, 37.831547, 52.153519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334972, 37.659908, 51.966461>,  <32.149506, 37.556927, 51.854229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334972, 37.659908, 51.966461>,  <32.644085, 37.831547, 52.153519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334972, 37.659908, 51.966461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319749, -0.899699, 0.297158,
		-0.548244, 0.080111, 0.832473,
		-0.772780, -0.429097, -0.467640,
		32.103138, 37.531178, 51.826168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219219, 37.510399, 52.485691>,  <32.644085, 37.831547, 52.153519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219219, 37.510399, 52.485691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269669, 37.338493, 52.128056>,  <32.299938, 37.235352, 51.913475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269669, 37.338493, 52.128056>,  <32.219219, 37.510399, 52.485691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269669, 37.338493, 52.128056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399867, -0.802799, 0.442289,
		-0.907854, -0.413299, 0.070598,
		0.126122, -0.429764, -0.894090,
		32.307507, 37.209564, 51.859829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.795773, 36.918045, 52.464397>,  <32.219219, 37.510399, 52.485691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.795773, 36.918045, 52.464397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133614, 36.925705, 52.250378>,  <32.336319, 36.930302, 52.121964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133614, 36.925705, 52.250378>,  <31.795773, 36.918045, 52.464397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133614, 36.925705, 52.250378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376026, -0.732607, 0.567354,
		-0.381120, -0.680382, -0.625962,
		0.844602, 0.019148, -0.535053,
		32.386993, 36.931450, 52.089863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890112, 36.279011, 52.141518>,  <31.795773, 36.918045, 52.464397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890112, 36.279011, 52.141518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212658, 36.472515, 52.277607>,  <32.406185, 36.588619, 52.359261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212658, 36.472515, 52.277607>,  <31.890112, 36.279011, 52.141518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212658, 36.472515, 52.277607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099456, -0.677985, 0.728317,
		0.582997, -0.553451, -0.594816,
		0.806364, 0.483765, 0.340219,
		32.454567, 36.617645, 52.379673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413998, 35.802513, 52.197498>,  <31.890112, 36.279011, 52.141518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413998, 35.802513, 52.197498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516380, 36.084599, 52.461971>,  <32.577812, 36.253849, 52.620655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516380, 36.084599, 52.461971>,  <32.413998, 35.802513, 52.197498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516380, 36.084599, 52.461971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367650, -0.703588, 0.608110,
		0.894046, 0.087432, -0.439361,
		0.255961, 0.705209, 0.661184,
		32.593170, 36.296162, 52.660328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054844, 35.844276, 52.422398>,  <32.413998, 35.802513, 52.197498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054844, 35.844276, 52.422398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.793095, 35.938457, 52.709827>,  <32.636044, 35.994965, 52.882286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.793095, 35.938457, 52.709827>,  <33.054844, 35.844276, 52.422398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793095, 35.938457, 52.709827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328504, -0.767411, 0.550604,
		0.681084, 0.596359, 0.424830,
		-0.654377, 0.235449, 0.718578,
		32.596783, 36.009094, 52.925400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325794, 35.958935, 51.831642>,  <33.054844, 35.844276, 52.422398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325794, 35.958935, 51.831642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190262, 35.584862, 51.872879>,  <33.108944, 35.360416, 51.897621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190262, 35.584862, 51.872879>,  <33.325794, 35.958935, 51.831642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190262, 35.584862, 51.872879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597825, -0.298610, -0.743933,
		0.726500, -0.190431, 0.660253,
		-0.338826, -0.935183, 0.103096,
		33.088615, 35.304306, 51.903809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749741, 35.641151, 51.532368>,  <33.325794, 35.958935, 51.831642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749741, 35.641151, 51.532368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855217, 35.905231, 51.251057>,  <32.918503, 36.063679, 51.082268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855217, 35.905231, 51.251057>,  <32.749741, 35.641151, 51.532368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855217, 35.905231, 51.251057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421800, -0.576765, -0.699590,
		-0.867496, 0.481122, 0.126381,
		0.263696, 0.660199, -0.703279,
		32.934326, 36.103291, 51.040073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287216, 35.501038, 50.900063>,  <32.749741, 35.641151, 51.532368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287216, 35.501038, 50.900063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599316, 35.684624, 50.730091>,  <32.786575, 35.794777, 50.628109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599316, 35.684624, 50.730091>,  <32.287216, 35.501038, 50.900063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599316, 35.684624, 50.730091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160841, -0.509291, -0.845431,
		-0.604437, 0.727991, -0.323552,
		0.780247, 0.458969, -0.424925,
		32.833389, 35.822315, 50.602615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056232, 35.690250, 50.216858>,  <32.287216, 35.501038, 50.900063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056232, 35.690250, 50.216858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454384, 35.691715, 50.178471>,  <32.693275, 35.692596, 50.155437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454384, 35.691715, 50.178471>,  <32.056232, 35.690250, 50.216858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454384, 35.691715, 50.178471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081377, -0.498502, -0.863060,
		-0.051006, 0.866880, -0.495900,
		0.995377, 0.003666, -0.095971,
		32.752998, 35.692814, 50.149681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290359, 35.736420, 49.468597>,  <32.056232, 35.690250, 50.216858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290359, 35.736420, 49.468597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619122, 35.580151, 49.634415>,  <32.816380, 35.486389, 49.733906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619122, 35.580151, 49.634415>,  <32.290359, 35.736420, 49.468597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619122, 35.580151, 49.634415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162521, -0.536663, -0.827997,
		0.545946, 0.747908, -0.377594,
		0.821906, -0.390675, 0.414540,
		32.865692, 35.462948, 49.758778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883560, 35.968349, 49.060345>,  <32.290359, 35.736420, 49.468597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883560, 35.968349, 49.060345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044415, 35.652477, 49.245682>,  <33.140926, 35.462952, 49.356884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044415, 35.652477, 49.245682>,  <32.883560, 35.968349, 49.060345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044415, 35.652477, 49.245682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456366, -0.265837, -0.849153,
		0.793736, 0.552928, 0.253482,
		0.402136, -0.789684, 0.463342,
		33.165054, 35.415573, 49.384686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606327, 35.990974, 48.860954>,  <32.883560, 35.968349, 49.060345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606327, 35.990974, 48.860954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502949, 35.617397, 48.959709>,  <33.440922, 35.393250, 49.018963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502949, 35.617397, 48.959709>,  <33.606327, 35.990974, 48.860954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502949, 35.617397, 48.959709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642308, -0.357026, -0.678212,
		0.721557, -0.016705, 0.692153,
		-0.258447, -0.933945, 0.246885,
		33.425415, 35.337215, 49.033775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224030, 35.673931, 48.693428>,  <33.606327, 35.990974, 48.860954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224030, 35.673931, 48.693428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.984264, 35.360737, 48.759930>,  <33.840405, 35.172821, 48.799831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.984264, 35.360737, 48.759930>,  <34.224030, 35.673931, 48.693428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984264, 35.360737, 48.759930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703125, -0.614312, -0.358101,
		0.382522, -0.097750, 0.918761,
		-0.599410, -0.782985, 0.166257,
		33.804440, 35.125843, 48.809807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545288, 35.045639, 48.665386>,  <34.224030, 35.673931, 48.693428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545288, 35.045639, 48.665386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.189217, 34.870369, 48.615440>,  <33.975574, 34.765209, 48.585472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.189217, 34.870369, 48.615440>,  <34.545288, 35.045639, 48.665386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189217, 34.870369, 48.615440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422506, -0.691308, -0.586159,
		0.170518, -0.574542, 0.800516,
		-0.890176, -0.438173, -0.124867,
		33.922165, 34.738918, 48.577980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701820, 34.246304, 48.701748>,  <34.545288, 35.045639, 48.665386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701820, 34.246304, 48.701748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364773, 34.340424, 48.507996>,  <34.162544, 34.396896, 48.391743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364773, 34.340424, 48.507996>,  <34.701820, 34.246304, 48.701748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364773, 34.340424, 48.507996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271720, -0.590809, -0.759679,
		-0.464927, -0.771738, 0.433893,
		-0.842621, 0.235298, -0.484380,
		34.111988, 34.411015, 48.362682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522057, 33.677322, 48.343735>,  <34.701820, 34.246304, 48.701748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522057, 33.677322, 48.343735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315506, 33.955750, 48.144196>,  <34.191578, 34.122807, 48.024471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315506, 33.955750, 48.144196>,  <34.522057, 33.677322, 48.343735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315506, 33.955750, 48.144196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080392, -0.540544, -0.837466,
		-0.852581, -0.472549, 0.223165,
		-0.516375, 0.696067, -0.498847,
		34.160595, 34.164570, 47.994541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093193, 33.353996, 47.950523>,  <34.522057, 33.677322, 48.343735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093193, 33.353996, 47.950523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138351, 33.685783, 47.731716>,  <34.165447, 33.884857, 47.600430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138351, 33.685783, 47.731716>,  <34.093193, 33.353996, 47.950523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138351, 33.685783, 47.731716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123573, -0.557989, -0.820596,
		-0.985892, 0.025047, -0.165496,
		0.112899, 0.829470, -0.547022,
		34.172222, 33.934624, 47.567608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836193, 33.213299, 47.225048>,  <34.093193, 33.353996, 47.950523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836193, 33.213299, 47.225048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028507, 33.558704, 47.164139>,  <34.143898, 33.765949, 47.127594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028507, 33.558704, 47.164139>,  <33.836193, 33.213299, 47.225048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028507, 33.558704, 47.164139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055373, -0.203219, -0.977566,
		-0.875086, 0.461571, -0.145520,
		0.480789, 0.863513, -0.152275,
		34.172745, 33.817757, 47.118458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503464, 33.498779, 46.624794>,  <33.836193, 33.213299, 47.225048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503464, 33.498779, 46.624794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867779, 33.661274, 46.654270>,  <34.086369, 33.758770, 46.671955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867779, 33.661274, 46.654270>,  <33.503464, 33.498779, 46.624794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867779, 33.661274, 46.654270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146710, -0.151621, -0.977490,
		-0.385920, 0.901101, -0.197694,
		0.910792, 0.406237, 0.073687,
		34.141018, 33.783146, 46.676376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588120, 33.516445, 45.963425>,  <33.503464, 33.498779, 46.624794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.588120, 33.516445, 45.963425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934040, 33.636311, 46.124577>,  <34.141594, 33.708229, 46.221268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934040, 33.636311, 46.124577>,  <33.588120, 33.516445, 45.963425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934040, 33.636311, 46.124577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373614, 0.151997, -0.915046,
		-0.335446, 0.941858, 0.019488,
		0.864806, 0.299668, 0.402878,
		34.193481, 33.726212, 46.245441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745869, 33.992950, 45.619476>,  <33.588120, 33.516445, 45.963425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745869, 33.992950, 45.619476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102795, 33.873150, 45.754578>,  <34.316952, 33.801270, 45.835636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102795, 33.873150, 45.754578>,  <33.745869, 33.992950, 45.619476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102795, 33.873150, 45.754578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376265, 0.080095, -0.923043,
		0.249399, 0.950728, 0.184161,
		0.892314, -0.299500, 0.337750,
		34.370487, 33.783298, 45.855904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282135, 34.444317, 45.335037>,  <33.745869, 33.992950, 45.619476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282135, 34.444317, 45.335037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492962, 34.111603, 45.404694>,  <34.619457, 33.911972, 45.446487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492962, 34.111603, 45.404694>,  <34.282135, 34.444317, 45.335037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492962, 34.111603, 45.404694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372162, 0.041700, -0.927231,
		0.763998, 0.553524, 0.331539,
		0.527069, -0.831789, 0.174141,
		34.651081, 33.862064, 45.456936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068508, 34.588734, 45.207314>,  <34.282135, 34.444317, 45.335037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068508, 34.588734, 45.207314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961037, 34.207256, 45.153233>,  <34.896553, 33.978371, 45.120785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961037, 34.207256, 45.153233>,  <35.068508, 34.588734, 45.207314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961037, 34.207256, 45.153233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460958, -0.004058, -0.887413,
		0.845771, -0.300752, 0.440703,
		-0.268680, -0.953694, -0.135202,
		34.880432, 33.921146, 45.112671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480904, 34.300362, 44.702137>,  <35.068508, 34.588734, 45.207314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480904, 34.300362, 44.702137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206917, 34.010101, 44.728222>,  <35.042526, 33.835945, 44.743874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206917, 34.010101, 44.728222>,  <35.480904, 34.300362, 44.702137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206917, 34.010101, 44.728222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127822, -0.207810, -0.969782,
		0.717278, -0.655928, 0.235096,
		-0.684963, -0.725654, 0.065215,
		35.001427, 33.792404, 44.747787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786335, 33.627460, 44.519920>,  <35.480904, 34.300362, 44.702137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786335, 33.627460, 44.519920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394382, 33.631172, 44.440174>,  <35.159210, 33.633400, 44.392326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394382, 33.631172, 44.440174>,  <35.786335, 33.627460, 44.519920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394382, 33.631172, 44.440174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196210, -0.138052, -0.970795,
		-0.036525, -0.990381, 0.133455,
		-0.979881, 0.009273, -0.199366,
		35.100418, 33.633953, 44.380363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672672, 33.061970, 44.086594>,  <35.786335, 33.627460, 44.519920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672672, 33.061970, 44.086594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.360489, 33.304329, 44.024933>,  <35.173180, 33.449745, 43.987934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.360489, 33.304329, 44.024933>,  <35.672672, 33.061970, 44.086594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360489, 33.304329, 44.024933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106904, -0.113607, -0.987758,
		-0.615998, -0.787385, 0.023892,
		-0.780460, 0.605903, -0.154156,
		35.126350, 33.486099, 43.978687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249908, 32.724804, 43.639324>,  <35.672672, 33.061970, 44.086594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249908, 32.724804, 43.639324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124722, 33.100197, 43.580933>,  <35.049610, 33.325432, 43.545898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124722, 33.100197, 43.580933>,  <35.249908, 32.724804, 43.639324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124722, 33.100197, 43.580933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021786, -0.160754, -0.986754,
		-0.949515, -0.305638, 0.070755,
		-0.312964, 0.938479, -0.145980,
		35.030834, 33.381741, 43.537140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738628, 32.653671, 43.047417>,  <35.249908, 32.724804, 43.639324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738628, 32.653671, 43.047417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820164, 33.044868, 43.065239>,  <34.869087, 33.279587, 43.075932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820164, 33.044868, 43.065239>,  <34.738628, 32.653671, 43.047417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820164, 33.044868, 43.065239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108786, 0.067852, -0.991747,
		-0.972941, 0.197312, 0.120222,
		0.203841, 0.977990, 0.044551,
		34.881317, 33.338264, 43.078606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226101, 32.927750, 42.628120>,  <34.738628, 32.653671, 43.047417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226101, 32.927750, 42.628120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508850, 33.210606, 42.634769>,  <34.678501, 33.380318, 42.638760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508850, 33.210606, 42.634769>,  <34.226101, 32.927750, 42.628120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508850, 33.210606, 42.634769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106952, 0.130090, -0.985717,
		-0.699203, 0.695003, 0.167588,
		0.706878, 0.707141, 0.016627,
		34.720913, 33.422749, 42.639759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041260, 33.276318, 42.031494>,  <34.226101, 32.927750, 42.628120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041260, 33.276318, 42.031494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391083, 33.453747, 42.109867>,  <34.600979, 33.560204, 42.156891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391083, 33.453747, 42.109867>,  <34.041260, 33.276318, 42.031494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391083, 33.453747, 42.109867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028110, 0.449740, -0.892717,
		-0.484102, 0.775227, 0.405793,
		0.874560, 0.443573, 0.195929,
		34.653450, 33.586819, 42.168644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959393, 34.048660, 41.882496>,  <34.041260, 33.276318, 42.031494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959393, 34.048660, 41.882496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.340981, 33.933498, 41.848919>,  <34.569935, 33.864403, 41.828773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.340981, 33.933498, 41.848919>,  <33.959393, 34.048660, 41.882496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340981, 33.933498, 41.848919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059937, 0.457304, -0.887288,
		0.293844, 0.841418, 0.453511,
		0.953972, -0.287906, -0.083944,
		34.627171, 33.847126, 41.823734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265491, 34.675640, 41.718731>,  <33.959393, 34.048660, 41.882496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265491, 34.675640, 41.718731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524899, 34.395142, 41.600292>,  <34.680542, 34.226841, 41.529228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524899, 34.395142, 41.600292>,  <34.265491, 34.675640, 41.718731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524899, 34.395142, 41.600292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094583, 0.460208, -0.882758,
		0.755301, 0.544479, 0.364780,
		0.648518, -0.701250, -0.296097,
		34.719452, 34.184765, 41.511463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934349, 34.998192, 41.518147>,  <34.265491, 34.675640, 41.718731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934349, 34.998192, 41.518147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907635, 34.645065, 41.332172>,  <34.891605, 34.433189, 41.220589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907635, 34.645065, 41.332172>,  <34.934349, 34.998192, 41.518147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907635, 34.645065, 41.332172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318538, 0.422730, -0.848430,
		0.945554, -0.204766, 0.252978,
		-0.066788, -0.882820, -0.464940,
		34.887600, 34.380219, 41.192692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631603, 34.964127, 41.303787>,  <34.934349, 34.998192, 41.518147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631603, 34.964127, 41.303787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421757, 34.691853, 41.099262>,  <35.295849, 34.528488, 40.976547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421757, 34.691853, 41.099262>,  <35.631603, 34.964127, 41.303787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421757, 34.691853, 41.099262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374023, 0.355254, -0.856681,
		0.764776, -0.640674, 0.068219,
		-0.524618, -0.680685, -0.511316,
		35.264370, 34.487648, 40.945866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914783, 34.803738, 40.694435>,  <35.631603, 34.964127, 41.303787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914783, 34.803738, 40.694435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559757, 34.639977, 40.609943>,  <35.346741, 34.541721, 40.559250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559757, 34.639977, 40.609943>,  <35.914783, 34.803738, 40.694435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559757, 34.639977, 40.609943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035487, 0.396384, -0.917399,
		0.459313, -0.821747, -0.337288,
		-0.887565, -0.409404, -0.211226,
		35.293488, 34.517155, 40.546577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024254, 34.528385, 40.100494>,  <35.914783, 34.803738, 40.694435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024254, 34.528385, 40.100494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634151, 34.604286, 40.145866>,  <35.400089, 34.649826, 40.173092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634151, 34.604286, 40.145866>,  <36.024254, 34.528385, 40.100494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634151, 34.604286, 40.145866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008241, 0.481532, -0.876390,
		-0.220922, -0.855640, -0.468053,
		-0.975257, 0.189757, 0.113433,
		35.341576, 34.661213, 40.179897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655170, 34.200966, 39.539211>,  <36.024254, 34.528385, 40.100494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655170, 34.200966, 39.539211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393620, 34.480297, 39.655682>,  <35.236691, 34.647896, 39.725563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393620, 34.480297, 39.655682>,  <35.655170, 34.200966, 39.539211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393620, 34.480297, 39.655682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174205, 0.235546, -0.956123,
		-0.736275, -0.675908, -0.032365,
		-0.653874, 0.698331, 0.291173,
		35.197456, 34.689796, 39.743034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126789, 34.196350, 38.989765>,  <35.655170, 34.200966, 39.539211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126789, 34.196350, 38.989765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107658, 34.537384, 39.197922>,  <35.096180, 34.742004, 39.322815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107658, 34.537384, 39.197922>,  <35.126789, 34.196350, 38.989765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107658, 34.537384, 39.197922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088562, 0.515318, -0.852411,
		-0.994922, -0.086855, 0.050861,
		-0.047826, 0.852587, 0.520393,
		35.093311, 34.793159, 39.354038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444633, 34.574207, 38.744797>,  <35.126789, 34.196350, 38.989765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444633, 34.574207, 38.744797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715294, 34.828037, 38.894176>,  <34.877689, 34.980335, 38.983803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715294, 34.828037, 38.894176>,  <34.444633, 34.574207, 38.744797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715294, 34.828037, 38.894176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019723, 0.522630, -0.852332,
		-0.736043, 0.569363, 0.366152,
		0.676647, 0.634574, 0.373448,
		34.918289, 35.018410, 39.006210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201565, 35.231773, 38.440968>,  <34.444633, 34.574207, 38.744797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201565, 35.231773, 38.440968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.534245, 35.382072, 38.604473>,  <34.733852, 35.472252, 38.702576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.534245, 35.382072, 38.604473>,  <34.201565, 35.231773, 38.440968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534245, 35.382072, 38.604473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092219, 0.632496, -0.769055,
		-0.547510, 0.677320, 0.491397,
		0.831702, 0.375749, 0.408759,
		34.783756, 35.494797, 38.727100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142105, 36.015041, 38.443611>,  <34.201565, 35.231773, 38.440968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142105, 36.015041, 38.443611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531185, 35.922226, 38.442036>,  <34.764633, 35.866539, 38.441090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531185, 35.922226, 38.442036>,  <34.142105, 36.015041, 38.443611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531185, 35.922226, 38.442036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163769, 0.698340, -0.696779,
		0.164425, 0.677112, 0.717275,
		0.972699, -0.232036, -0.003935,
		34.822994, 35.852615, 38.440857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490471, 36.542713, 38.594593>,  <34.142105, 36.015041, 38.443611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490471, 36.542713, 38.594593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720367, 36.310524, 38.363865>,  <34.858307, 36.171211, 38.225426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720367, 36.310524, 38.363865>,  <34.490471, 36.542713, 38.594593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720367, 36.310524, 38.363865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153831, 0.768943, -0.620534,
		0.803747, 0.267913, 0.531238,
		0.574741, -0.580473, -0.576822,
		34.892788, 36.136383, 38.190819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012672, 36.929199, 38.369896>,  <34.490471, 36.542713, 38.594593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012672, 36.929199, 38.369896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.078552, 36.625870, 38.117603>,  <35.118080, 36.443874, 37.966228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.078552, 36.625870, 38.117603>,  <35.012672, 36.929199, 38.369896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078552, 36.625870, 38.117603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137071, 0.650859, -0.746722,
		0.976773, 0.036529, 0.211139,
		0.164699, -0.758319, -0.630735,
		35.127960, 36.398373, 37.928383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648689, 37.074600, 37.935585>,  <35.012672, 36.929199, 38.369896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648689, 37.074600, 37.935585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446007, 36.788509, 37.743042>,  <35.324398, 36.616856, 37.627518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446007, 36.788509, 37.743042>,  <35.648689, 37.074600, 37.935585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446007, 36.788509, 37.743042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108642, 0.500913, -0.858652,
		0.855245, -0.487381, -0.176113,
		-0.506709, -0.715224, -0.481354,
		35.293995, 36.573944, 37.598637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057724, 36.863625, 37.338997>,  <35.648689, 37.074600, 37.935585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057724, 36.863625, 37.338997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669998, 36.800671, 37.263458>,  <35.437363, 36.762897, 37.218136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669998, 36.800671, 37.263458>,  <36.057724, 36.863625, 37.338997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669998, 36.800671, 37.263458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092843, 0.476931, -0.874023,
		0.227624, -0.864735, -0.447684,
		-0.969313, -0.157384, -0.188846,
		35.379204, 36.753456, 37.206806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549889, 36.658283, 37.918083>,  <36.057724, 36.863625, 37.338997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549889, 36.658283, 37.918083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797237, 36.522480, 37.634575>,  <36.945648, 36.440998, 37.464470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797237, 36.522480, 37.634575>,  <36.549889, 36.658283, 37.918083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797237, 36.522480, 37.634575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184698, -0.813830, 0.550970,
		-0.763873, -0.471612, -0.440544,
		0.618372, -0.339504, -0.708769,
		36.982750, 36.420628, 37.421944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438335, 35.917702, 37.731682>,  <36.549889, 36.658283, 37.918083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438335, 35.917702, 37.731682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824707, 35.954334, 37.634861>,  <37.056530, 35.976315, 37.576767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824707, 35.954334, 37.634861>,  <36.438335, 35.917702, 37.731682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824707, 35.954334, 37.634861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228936, -0.738524, 0.634169,
		-0.120684, -0.667978, -0.734330,
		0.965932, 0.091580, -0.242052,
		37.114487, 35.981808, 37.562244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635029, 35.193584, 37.570023>,  <36.438335, 35.917702, 37.731682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635029, 35.193584, 37.570023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.957050, 35.414585, 37.656406>,  <37.150261, 35.547184, 37.708237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.957050, 35.414585, 37.656406>,  <36.635029, 35.193584, 37.570023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957050, 35.414585, 37.656406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341017, -0.728920, 0.593618,
		0.485389, -0.404247, -0.775230,
		0.805049, 0.552503, 0.215955,
		37.198566, 35.580338, 37.721191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148556, 34.843342, 37.271114>,  <36.635029, 35.193584, 37.570023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148556, 34.843342, 37.271114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286606, 35.061989, 37.576298>,  <37.369434, 35.193176, 37.759407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286606, 35.061989, 37.576298>,  <37.148556, 34.843342, 37.271114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286606, 35.061989, 37.576298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456954, -0.807911, 0.372120,
		0.819807, 0.220209, -0.528607,
		0.345123, 0.546616, 0.762956,
		37.390144, 35.225975, 37.805183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784359, 34.558346, 37.550014>,  <37.148556, 34.843342, 37.271114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784359, 34.558346, 37.550014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.733509, 34.789169, 37.872711>,  <37.702999, 34.927666, 38.066330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.733509, 34.789169, 37.872711>,  <37.784359, 34.558346, 37.550014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733509, 34.789169, 37.872711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293862, -0.754919, 0.586296,
		0.947357, 0.311602, -0.073611,
		-0.127120, 0.577063, 0.806746,
		37.695374, 34.962288, 38.114735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443737, 34.528988, 38.018196>,  <37.784359, 34.558346, 37.550014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443737, 34.528988, 38.018196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142136, 34.648022, 38.252434>,  <37.961174, 34.719440, 38.392975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142136, 34.648022, 38.252434>,  <38.443737, 34.528988, 38.018196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142136, 34.648022, 38.252434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447145, -0.420528, 0.789441,
		0.481183, 0.857089, 0.184018,
		-0.754006, 0.297583, 0.585593,
		37.915936, 34.737297, 38.428112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855576, 34.796825, 38.654011>,  <38.443737, 34.528988, 38.018196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855576, 34.796825, 38.654011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470196, 34.740608, 38.745239>,  <38.238968, 34.706879, 38.799976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470196, 34.740608, 38.745239>,  <38.855576, 34.796825, 38.654011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470196, 34.740608, 38.745239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266491, -0.415604, 0.869630,
		-0.027435, 0.898621, 0.437866,
		-0.963447, -0.140546, 0.228072,
		38.181160, 34.698444, 38.813660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729610, 35.027859, 39.355526>,  <38.855576, 34.796825, 38.654011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729610, 35.027859, 39.355526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.424408, 34.777431, 39.291187>,  <38.241287, 34.627174, 39.252583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.424408, 34.777431, 39.291187>,  <38.729610, 35.027859, 39.355526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424408, 34.777431, 39.291187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145888, -0.409205, 0.900704,
		-0.629718, 0.663774, 0.403559,
		-0.763002, -0.626064, -0.160847,
		38.195507, 34.589611, 39.242931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319786, 35.104462, 39.975182>,  <38.729610, 35.027859, 39.355526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319786, 35.104462, 39.975182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214764, 34.751610, 39.818764>,  <38.151749, 34.539898, 39.724915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214764, 34.751610, 39.818764>,  <38.319786, 35.104462, 39.975182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214764, 34.751610, 39.818764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156648, -0.438855, 0.884799,
		-0.952117, 0.171052, 0.253406,
		-0.262555, -0.882127, -0.391046,
		38.135998, 34.486973, 39.701450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924366, 34.887112, 40.600677>,  <38.319786, 35.104462, 39.975182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924366, 34.887112, 40.600677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988091, 34.575703, 40.357853>,  <38.026325, 34.388859, 40.212158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988091, 34.575703, 40.357853>,  <37.924366, 34.887112, 40.600677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988091, 34.575703, 40.357853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040944, -0.619597, 0.783851,
		-0.986379, -0.100022, -0.130586,
		0.159313, -0.778521, -0.607062,
		38.035885, 34.342148, 40.175735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407772, 34.455231, 40.794388>,  <37.924366, 34.887112, 40.600677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407772, 34.455231, 40.794388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.695724, 34.221268, 40.644905>,  <37.868496, 34.080891, 40.555214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.695724, 34.221268, 40.644905>,  <37.407772, 34.455231, 40.794388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695724, 34.221268, 40.644905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024596, -0.559567, 0.828420,
		-0.693665, -0.587170, -0.417206,
		0.719878, -0.584907, -0.373710,
		37.911690, 34.045795, 40.532791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198055, 33.693001, 40.800175>,  <37.407772, 34.455231, 40.794388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198055, 33.693001, 40.800175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597538, 33.713348, 40.800884>,  <37.837227, 33.725555, 40.801311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597538, 33.713348, 40.800884>,  <37.198055, 33.693001, 40.800175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597538, 33.713348, 40.800884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031413, -0.643456, 0.764838,
		0.040051, -0.763791, -0.644220,
		0.998704, 0.050869, 0.001778,
		37.897148, 33.728611, 40.801418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265564, 33.019325, 41.087078>,  <37.198055, 33.693001, 40.800175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265564, 33.019325, 41.087078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606815, 33.226341, 41.113369>,  <37.811565, 33.350552, 41.129143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606815, 33.226341, 41.113369>,  <37.265564, 33.019325, 41.087078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606815, 33.226341, 41.113369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135570, -0.341594, 0.930019,
		0.503775, -0.784516, -0.361587,
		0.853130, 0.517541, 0.065730,
		37.862755, 33.381603, 41.133087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781300, 32.585030, 41.300808>,  <37.265564, 33.019325, 41.087078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781300, 32.585030, 41.300808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.916451, 32.942726, 41.418224>,  <37.997540, 33.157345, 41.488674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.916451, 32.942726, 41.418224>,  <37.781300, 32.585030, 41.300808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916451, 32.942726, 41.418224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190430, -0.370387, 0.909148,
		0.921726, -0.251277, -0.295435,
		0.337873, 0.894245, 0.293544,
		38.017811, 33.210999, 41.506287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060654, 32.347504, 41.846622>,  <37.781300, 32.585030, 41.300808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060654, 32.347504, 41.846622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103634, 32.744736, 41.865559>,  <38.129421, 32.983074, 41.876919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103634, 32.744736, 41.865559>,  <38.060654, 32.347504, 41.846622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103634, 32.744736, 41.865559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220719, -0.070254, 0.972804,
		0.969401, -0.094078, -0.226741,
		0.107449, 0.993083, 0.047340,
		38.135868, 33.042660, 41.879761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704159, 32.601204, 42.219952>,  <38.060654, 32.347504, 41.846622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704159, 32.601204, 42.219952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.444336, 32.901863, 42.265732>,  <38.288441, 33.082260, 42.293201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.444336, 32.901863, 42.265732>,  <38.704159, 32.601204, 42.219952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444336, 32.901863, 42.265732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040404, -0.116194, 0.992404,
		0.759237, 0.649249, 0.045105,
		-0.649558, 0.751648, 0.114451,
		38.249470, 33.127357, 42.300068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979752, 33.139404, 42.692524>,  <38.704159, 32.601204, 42.219952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979752, 33.139404, 42.692524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582039, 33.178246, 42.710320>,  <38.343410, 33.201550, 42.720997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582039, 33.178246, 42.710320>,  <38.979752, 33.139404, 42.692524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582039, 33.178246, 42.710320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030625, -0.139880, 0.989695,
		0.102326, 0.985396, 0.136106,
		-0.994279, 0.097104, 0.044491,
		38.283756, 33.207378, 42.723667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778458, 33.743015, 43.182228>,  <38.979752, 33.139404, 42.692524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778458, 33.743015, 43.182228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454350, 33.509830, 43.158154>,  <38.259884, 33.369919, 43.143707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454350, 33.509830, 43.158154>,  <38.778458, 33.743015, 43.182228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454350, 33.509830, 43.158154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101104, 0.037882, 0.994154,
		-0.577271, 0.811618, -0.089635,
		-0.810269, -0.582959, -0.060190,
		38.211269, 33.334942, 43.140099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441811, 33.941856, 43.755211>,  <38.778458, 33.743015, 43.182228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441811, 33.941856, 43.755211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.166405, 33.665867, 43.665882>,  <38.001160, 33.500271, 43.612286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.166405, 33.665867, 43.665882>,  <38.441811, 33.941856, 43.755211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166405, 33.665867, 43.665882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269230, -0.042750, 0.962127,
		-0.673394, 0.722566, -0.156328,
		-0.688518, -0.689978, -0.223324,
		37.959850, 33.458874, 43.598885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757881, 34.141228, 44.128265>,  <38.441811, 33.941856, 43.755211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757881, 34.141228, 44.128265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698818, 33.759987, 44.022598>,  <37.663380, 33.531242, 43.959198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698818, 33.759987, 44.022598>,  <37.757881, 34.141228, 44.128265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698818, 33.759987, 44.022598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455490, -0.171558, 0.873554,
		-0.877910, 0.249314, -0.408798,
		-0.147657, -0.953106, -0.264172,
		37.654522, 33.474056, 43.943348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102142, 34.007130, 44.237968>,  <37.757881, 34.141228, 44.128265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102142, 34.007130, 44.237968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286190, 33.653942, 44.275192>,  <37.396618, 33.442028, 44.297527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286190, 33.653942, 44.275192>,  <37.102142, 34.007130, 44.237968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286190, 33.653942, 44.275192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509733, -0.176890, 0.841951,
		-0.726956, -0.434829, -0.531468,
		0.460117, -0.882969, 0.093056,
		37.424225, 33.389053, 44.303108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571533, 33.639240, 44.545673>,  <37.102142, 34.007130, 44.237968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571533, 33.639240, 44.545673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913219, 33.443783, 44.616711>,  <37.118233, 33.326508, 44.659332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913219, 33.443783, 44.616711>,  <36.571533, 33.639240, 44.545673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913219, 33.443783, 44.616711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382034, -0.358230, 0.851893,
		-0.352637, -0.795558, -0.492682,
		0.854223, -0.488629, 0.177605,
		37.169483, 33.297188, 44.669987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441765, 32.952103, 44.809849>,  <36.571533, 33.639240, 44.545673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441765, 32.952103, 44.809849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795326, 33.110527, 44.909328>,  <37.007462, 33.205582, 44.969017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795326, 33.110527, 44.909328>,  <36.441765, 32.952103, 44.809849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795326, 33.110527, 44.909328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253389, -0.041390, 0.966479,
		0.393075, -0.917292, 0.063771,
		0.883904, 0.396057, 0.248701,
		37.060497, 33.229343, 44.983940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686714, 32.571655, 45.388195>,  <36.441765, 32.952103, 44.809849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686714, 32.571655, 45.388195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.896481, 32.911823, 45.405033>,  <37.022339, 33.115925, 45.415134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.896481, 32.911823, 45.405033>,  <36.686714, 32.571655, 45.388195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896481, 32.911823, 45.405033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108311, 0.017592, 0.993962,
		0.844546, -0.525807, 0.101336,
		0.524414, 0.850422, 0.042094,
		37.053806, 33.166950, 45.417660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102829, 32.513321, 45.940220>,  <36.686714, 32.571655, 45.388195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102829, 32.513321, 45.940220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060200, 32.908112, 45.892010>,  <37.034622, 33.144985, 45.863083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060200, 32.908112, 45.892010>,  <37.102829, 32.513321, 45.940220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060200, 32.908112, 45.892010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340721, 0.077631, 0.936954,
		0.934105, 0.140922, 0.328009,
		-0.106574, 0.986973, -0.120530,
		37.028229, 33.204205, 45.855850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466969, 32.725849, 46.449043>,  <37.102829, 32.513321, 45.940220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466969, 32.725849, 46.449043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197670, 33.008934, 46.363361>,  <37.036091, 33.178783, 46.311951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197670, 33.008934, 46.363361>,  <37.466969, 32.725849, 46.449043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197670, 33.008934, 46.363361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367144, -0.068495, 0.927639,
		0.641826, 0.703176, 0.305946,
		-0.673249, 0.707708, -0.214205,
		36.995697, 33.221245, 46.299099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556667, 33.342796, 46.977139>,  <37.466969, 32.725849, 46.449043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556667, 33.342796, 46.977139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188835, 33.364830, 46.821533>,  <36.968136, 33.378048, 46.728168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188835, 33.364830, 46.821533>,  <37.556667, 33.342796, 46.977139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188835, 33.364830, 46.821533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355159, 0.306873, 0.883001,
		0.168014, 0.950155, -0.262633,
		-0.919583, 0.055080, -0.389015,
		36.912960, 33.381355, 46.704830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460777, 34.019508, 47.132381>,  <37.556667, 33.342796, 46.977139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460777, 34.019508, 47.132381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.115055, 33.820210, 47.104904>,  <36.907623, 33.700630, 47.088417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.115055, 33.820210, 47.104904>,  <37.460777, 34.019508, 47.132381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115055, 33.820210, 47.104904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359879, 0.517219, 0.776512,
		-0.351370, 0.695866, -0.626346,
		-0.864307, -0.498252, -0.068693,
		36.855762, 33.670734, 47.084297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926891, 34.496025, 47.195263>,  <37.460777, 34.019508, 47.132381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926891, 34.496025, 47.195263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780685, 34.136295, 47.291279>,  <36.692963, 33.920456, 47.348888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780685, 34.136295, 47.291279>,  <36.926891, 34.496025, 47.195263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780685, 34.136295, 47.291279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509676, 0.409157, 0.756850,
		-0.778866, 0.154295, -0.607915,
		-0.365510, -0.899324, 0.240038,
		36.671032, 33.866497, 47.363289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329559, 34.748795, 47.577148>,  <36.926891, 34.496025, 47.195263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329559, 34.748795, 47.577148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363102, 34.358147, 47.656326>,  <36.383228, 34.123756, 47.703835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363102, 34.358147, 47.656326>,  <36.329559, 34.748795, 47.577148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363102, 34.358147, 47.656326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572555, 0.115364, 0.811709,
		-0.815567, -0.181401, -0.549495,
		0.083853, -0.976619, 0.197949,
		36.388256, 34.065163, 47.715710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701229, 34.382954, 47.760807>,  <36.329559, 34.748795, 47.577148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701229, 34.382954, 47.760807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971607, 34.165218, 47.959518>,  <36.133835, 34.034576, 48.078747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971607, 34.165218, 47.959518>,  <35.701229, 34.382954, 47.760807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971607, 34.165218, 47.959518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473722, 0.195428, 0.858717,
		-0.564519, -0.815782, -0.125768,
		0.675948, -0.544341, 0.496777,
		36.174393, 34.001915, 48.108551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338760, 34.053699, 48.310356>,  <35.701229, 34.382954, 47.760807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338760, 34.053699, 48.310356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.722965, 34.051647, 48.421631>,  <35.953487, 34.050415, 48.488396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.722965, 34.051647, 48.421631>,  <35.338760, 34.053699, 48.310356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722965, 34.051647, 48.421631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265897, 0.277505, 0.923195,
		-0.081938, -0.960710, 0.265182,
		0.960513, -0.005134, 0.278188,
		36.011120, 34.050106, 48.505089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328831, 33.866684, 49.055012>,  <35.338760, 34.053699, 48.310356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328831, 33.866684, 49.055012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706768, 33.986610, 49.002262>,  <35.933529, 34.058567, 48.970612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706768, 33.986610, 49.002262>,  <35.328831, 33.866684, 49.055012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706768, 33.986610, 49.002262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010637, 0.430490, 0.902533,
		0.327362, -0.851345, 0.409933,
		0.944839, 0.299816, -0.131870,
		35.990219, 34.076557, 48.962700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642258, 33.692188, 49.672787>,  <35.328831, 33.866684, 49.055012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642258, 33.692188, 49.672787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865845, 33.993824, 49.534859>,  <35.999996, 34.174805, 49.452103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865845, 33.993824, 49.534859>,  <35.642258, 33.692188, 49.672787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865845, 33.993824, 49.534859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013205, 0.423899, 0.905613,
		0.829086, -0.501653, 0.246903,
		0.558966, 0.754091, -0.344824,
		36.033535, 34.220051, 49.431412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049450, 33.811554, 50.285103>,  <35.642258, 33.692188, 49.672787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049450, 33.811554, 50.285103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082584, 34.131149, 50.046856>,  <36.102463, 34.322906, 49.903908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082584, 34.131149, 50.046856>,  <36.049450, 33.811554, 50.285103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082584, 34.131149, 50.046856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161315, 0.579036, 0.799183,
		0.983421, -0.162279, -0.080927,
		0.082832, 0.798988, -0.595614,
		36.107433, 34.370846, 49.868172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709988, 34.185787, 50.531075>,  <36.049450, 33.811554, 50.285103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709988, 34.185787, 50.531075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473461, 34.446415, 50.341000>,  <36.331547, 34.602791, 50.226955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473461, 34.446415, 50.341000>,  <36.709988, 34.185787, 50.531075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473461, 34.446415, 50.341000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035566, 0.567597, 0.822538,
		0.805655, 0.503280, -0.312455,
		-0.591316, 0.651570, -0.475187,
		36.296066, 34.641888, 50.198444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050499, 34.891872, 50.608269>,  <36.709988, 34.185787, 50.531075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050499, 34.891872, 50.608269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675285, 34.981575, 50.502586>,  <36.450157, 35.035397, 50.439175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675285, 34.981575, 50.502586>,  <37.050499, 34.891872, 50.608269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675285, 34.981575, 50.502586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027612, 0.711604, 0.702038,
		0.345451, 0.665829, -0.661314,
		-0.938030, 0.224259, -0.264209,
		36.393875, 35.048851, 50.423325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084248, 35.565975, 50.689579>,  <37.050499, 34.891872, 50.608269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084248, 35.565975, 50.689579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699966, 35.455002, 50.685894>,  <36.469398, 35.388416, 50.683685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699966, 35.455002, 50.685894>,  <37.084248, 35.565975, 50.689579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699966, 35.455002, 50.685894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189049, 0.629638, 0.753536,
		-0.203258, 0.725664, -0.657342,
		-0.960701, -0.277432, -0.009208,
		36.411755, 35.371773, 50.683132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733479, 36.245888, 50.791401>,  <37.084248, 35.565975, 50.689579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.733479, 36.245888, 50.791401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502190, 35.936272, 50.894562>,  <36.363415, 35.750500, 50.956459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502190, 35.936272, 50.894562>,  <36.733479, 36.245888, 50.791401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502190, 35.936272, 50.894562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315215, 0.503499, 0.804443,
		-0.752526, 0.383855, -0.535125,
		-0.578225, -0.774044, 0.257899,
		36.328724, 35.704060, 50.971931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165890, 36.498631, 51.365143>,  <36.733479, 36.245888, 50.791401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165890, 36.498631, 51.365143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410778, 36.788555, 51.238750>,  <37.557709, 36.962509, 51.162914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410778, 36.788555, 51.238750>,  <37.165890, 36.498631, 51.365143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410778, 36.788555, 51.238750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038941, -0.371498, -0.927617,
		-0.789731, 0.580206, -0.199213,
		0.612216, 0.724810, -0.315978,
		37.594444, 37.005997, 51.143959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878551, 36.934284, 50.933277>,  <37.165890, 36.498631, 51.365143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878551, 36.934284, 50.933277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258392, 36.985874, 50.819000>,  <37.486298, 37.016827, 50.750435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258392, 36.985874, 50.819000>,  <36.878551, 36.934284, 50.933277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258392, 36.985874, 50.819000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238994, -0.291816, -0.926135,
		-0.202818, 0.947739, -0.246285,
		0.949603, 0.128976, -0.285689,
		37.543274, 37.024567, 50.733292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861275, 37.274456, 50.216938>,  <36.878551, 36.934284, 50.933277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861275, 37.274456, 50.216938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.230637, 37.124893, 50.251602>,  <37.452255, 37.035156, 50.272400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.230637, 37.124893, 50.251602>,  <36.861275, 37.274456, 50.216938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230637, 37.124893, 50.251602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011299, -0.199208, -0.979892,
		0.383655, 0.905819, -0.179726,
		0.923407, -0.373910, 0.086662,
		37.507660, 37.012722, 50.277599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265705, 37.581787, 49.716560>,  <36.861275, 37.274456, 50.216938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265705, 37.581787, 49.716560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464481, 37.247509, 49.810078>,  <37.583748, 37.046940, 49.866188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464481, 37.247509, 49.810078>,  <37.265705, 37.581787, 49.716560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464481, 37.247509, 49.810078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176152, -0.166659, -0.970152,
		0.849719, 0.523290, 0.064391,
		0.496939, -0.835699, 0.233792,
		37.613564, 36.996799, 49.880215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062321, 37.505753, 49.459675>,  <37.265705, 37.581787, 49.716560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062321, 37.505753, 49.459675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.912998, 37.137600, 49.506222>,  <37.823406, 36.916710, 49.534149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.912998, 37.137600, 49.506222>,  <38.062321, 37.505753, 49.459675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912998, 37.137600, 49.506222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328374, -0.248409, -0.911298,
		0.867649, -0.301979, 0.394961,
		-0.373305, -0.920381, 0.116370,
		37.801006, 36.861485, 49.541134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447590, 37.220474, 49.038494>,  <38.062321, 37.505753, 49.459675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447590, 37.220474, 49.038494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233528, 36.897350, 49.137329>,  <38.105091, 36.703476, 49.196632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233528, 36.897350, 49.137329>,  <38.447590, 37.220474, 49.038494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233528, 36.897350, 49.137329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306461, -0.458229, -0.834331,
		0.787202, -0.370775, 0.492786,
		-0.535158, -0.807807, 0.247091,
		38.072979, 36.655006, 49.211456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883724, 36.626057, 49.162895>,  <38.447590, 37.220474, 49.038494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883724, 36.626057, 49.162895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.521290, 36.481739, 49.074509>,  <38.303829, 36.395149, 49.021477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.521290, 36.481739, 49.074509>,  <38.883724, 36.626057, 49.162895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521290, 36.481739, 49.074509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363939, -0.398329, -0.841951,
		0.215753, -0.843304, 0.492229,
		-0.906090, -0.360795, -0.220971,
		38.249462, 36.373501, 49.008217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997803, 35.985191, 48.951172>,  <38.883724, 36.626057, 49.162895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997803, 35.985191, 48.951172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.626106, 36.044827, 48.815952>,  <38.403088, 36.080608, 48.734821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.626106, 36.044827, 48.815952>,  <38.997803, 35.985191, 48.951172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626106, 36.044827, 48.815952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237601, -0.459536, -0.855788,
		-0.282934, -0.875557, 0.391598,
		-0.929244, 0.149087, -0.338052,
		38.347332, 36.089554, 48.714539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820038, 35.379814, 48.610161>,  <38.997803, 35.985191, 48.951172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820038, 35.379814, 48.610161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.596352, 35.677074, 48.463188>,  <38.462139, 35.855431, 48.375004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.596352, 35.677074, 48.463188>,  <38.820038, 35.379814, 48.610161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596352, 35.677074, 48.463188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317142, -0.217724, -0.923048,
		-0.765960, -0.632712, -0.113928,
		-0.559219, 0.743149, -0.367428,
		38.428585, 35.900021, 48.352959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430050, 35.023800, 48.053444>,  <38.820038, 35.379814, 48.610161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430050, 35.023800, 48.053444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409393, 35.413555, 47.965897>,  <38.396999, 35.647408, 47.913368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409393, 35.413555, 47.965897>,  <38.430050, 35.023800, 48.053444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409393, 35.413555, 47.965897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140224, -0.209913, -0.967612,
		-0.988772, -0.080658, -0.125793,
		-0.051640, 0.974387, -0.218867,
		38.393902, 35.705872, 47.900238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072208, 35.037788, 47.508484>,  <38.430050, 35.023800, 48.053444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072208, 35.037788, 47.508484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242523, 35.399696, 47.512463>,  <38.344711, 35.616840, 47.514851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242523, 35.399696, 47.512463>,  <38.072208, 35.037788, 47.508484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242523, 35.399696, 47.512463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286829, -0.124538, -0.949852,
		-0.858160, 0.407284, -0.312540,
		0.425783, 0.904770, 0.009948,
		38.370258, 35.671127, 47.515446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789734, 35.361233, 46.915649>,  <38.072208, 35.037788, 47.508484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789734, 35.361233, 46.915649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.137249, 35.540569, 46.999737>,  <38.345760, 35.648170, 47.050190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.137249, 35.540569, 46.999737>,  <37.789734, 35.361233, 46.915649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137249, 35.540569, 46.999737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215219, 0.040459, -0.975727,
		-0.445963, 0.892947, -0.061341,
		0.868791, 0.448340, 0.210223,
		38.397888, 35.675072, 47.062805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908615, 35.979282, 46.563702>,  <37.789734, 35.361233, 46.915649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908615, 35.979282, 46.563702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279785, 35.866650, 46.661407>,  <38.502487, 35.799072, 46.720032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279785, 35.866650, 46.661407>,  <37.908615, 35.979282, 46.563702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279785, 35.866650, 46.661407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317190, 0.252233, -0.914204,
		0.195808, 0.925793, 0.323368,
		0.927928, -0.281577, 0.244263,
		38.558163, 35.782177, 46.734688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417633, 36.580349, 46.585835>,  <37.908615, 35.979282, 46.563702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417633, 36.580349, 46.585835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.602123, 36.235191, 46.503193>,  <38.712818, 36.028099, 46.453609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.602123, 36.235191, 46.503193>,  <38.417633, 36.580349, 46.585835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602123, 36.235191, 46.503193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191823, 0.324317, -0.926295,
		0.866298, 0.387602, 0.315107,
		0.461228, -0.862892, -0.206605,
		38.740490, 35.976322, 46.441212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897987, 36.703030, 46.119823>,  <38.417633, 36.580349, 46.585835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897987, 36.703030, 46.119823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867641, 36.308929, 46.058464>,  <38.849434, 36.072472, 46.021648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867641, 36.308929, 46.058464>,  <38.897987, 36.703030, 46.119823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867641, 36.308929, 46.058464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240520, 0.131221, -0.961733,
		0.967675, -0.109856, 0.227017,
		-0.075862, -0.985247, -0.153402,
		38.844883, 36.013355, 46.012444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547813, 36.564919, 45.829220>,  <38.897987, 36.703030, 46.119823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547813, 36.564919, 45.829220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314972, 36.243980, 45.776451>,  <39.175266, 36.051418, 45.744789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314972, 36.243980, 45.776451>,  <39.547813, 36.564919, 45.829220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314972, 36.243980, 45.776451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145825, 0.056599, -0.987690,
		0.799931, -0.594176, 0.084055,
		-0.582104, -0.802341, -0.131921,
		39.140339, 36.003277, 45.736874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983234, 36.163933, 45.515106>,  <39.547813, 36.564919, 45.829220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983234, 36.163933, 45.515106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.605888, 36.063992, 45.427807>,  <39.379478, 36.004028, 45.375427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.605888, 36.063992, 45.427807>,  <39.983234, 36.163933, 45.515106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605888, 36.063992, 45.427807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177905, 0.174257, -0.968496,
		0.280009, -0.952475, -0.119939,
		-0.943369, -0.249850, -0.218244,
		39.322876, 35.989037, 45.362335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015881, 35.615360, 45.094177>,  <39.983234, 36.163933, 45.515106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.015881, 35.615360, 45.094177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.653114, 35.762936, 45.012806>,  <39.435455, 35.851482, 44.963982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.653114, 35.762936, 45.012806>,  <40.015881, 35.615360, 45.094177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653114, 35.762936, 45.012806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244198, 0.066855, -0.967418,
		-0.343316, -0.927047, -0.150726,
		-0.906918, 0.368937, -0.203431,
		39.381039, 35.873615, 44.951778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678024, 35.151249, 44.573383>,  <40.015881, 35.615360, 45.094177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678024, 35.151249, 44.573383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470020, 35.492867, 44.567738>,  <39.345219, 35.697838, 44.564350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470020, 35.492867, 44.567738>,  <39.678024, 35.151249, 44.573383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470020, 35.492867, 44.567738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104839, -0.080215, -0.991249,
		-0.847701, -0.513981, 0.131250,
		-0.520011, 0.854043, -0.014113,
		39.314018, 35.749081, 44.563503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134026, 35.006023, 44.151451>,  <39.678024, 35.151249, 44.573383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134026, 35.006023, 44.151451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.152233, 35.405079, 44.130901>,  <39.163158, 35.644512, 44.118572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.152233, 35.405079, 44.130901>,  <39.134026, 35.006023, 44.151451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.152233, 35.405079, 44.130901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026768, -0.052629, -0.998255,
		-0.998605, 0.044066, -0.029101,
		0.045520, 0.997642, -0.051376,
		39.165890, 35.704372, 44.115490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705917, 35.150806, 43.612450>,  <39.134026, 35.006023, 44.151451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705917, 35.150806, 43.612450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889896, 35.503761, 43.652138>,  <39.000286, 35.715534, 43.675949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889896, 35.503761, 43.652138>,  <38.705917, 35.150806, 43.612450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889896, 35.503761, 43.652138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174390, 0.019795, -0.984478,
		-0.870650, 0.470115, -0.144774,
		0.459952, 0.882383, 0.099218,
		39.027882, 35.768475, 43.681904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350105, 35.643322, 43.097931>,  <38.705917, 35.150806, 43.612450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350105, 35.643322, 43.097931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711956, 35.774841, 43.206402>,  <38.929066, 35.853752, 43.271484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711956, 35.774841, 43.206402>,  <38.350105, 35.643322, 43.097931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711956, 35.774841, 43.206402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243677, 0.123010, -0.962024,
		-0.349666, 0.936356, 0.031159,
		0.904630, 0.328794, 0.271181,
		38.983345, 35.873478, 43.287758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446243, 36.167324, 42.694519>,  <38.350105, 35.643322, 43.097931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446243, 36.167324, 42.694519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798557, 36.020653, 42.814358>,  <39.009945, 35.932648, 42.886261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798557, 36.020653, 42.814358>,  <38.446243, 36.167324, 42.694519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798557, 36.020653, 42.814358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305214, -0.044077, -0.951263,
		0.362017, 0.929301, 0.073094,
		0.880789, -0.366682, 0.299592,
		39.062794, 35.910648, 42.904236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819118, 36.517342, 42.238998>,  <38.446243, 36.167324, 42.694519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819118, 36.517342, 42.238998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055569, 36.222813, 42.370701>,  <39.197437, 36.046097, 42.449722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055569, 36.222813, 42.370701>,  <38.819118, 36.517342, 42.238998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055569, 36.222813, 42.370701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448237, -0.039494, -0.893042,
		0.670567, 0.675482, 0.306699,
		0.591121, -0.736318, 0.329259,
		39.232906, 36.001919, 42.469479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372776, 36.580727, 41.878407>,  <38.819118, 36.517342, 42.238998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372776, 36.580727, 41.878407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463783, 36.224174, 42.035213>,  <39.518387, 36.010242, 42.129299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463783, 36.224174, 42.035213>,  <39.372776, 36.580727, 41.878407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463783, 36.224174, 42.035213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537170, -0.220893, -0.814036,
		0.812209, 0.395787, 0.428565,
		0.227518, -0.891380, 0.392017,
		39.532040, 35.956760, 42.152817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099186, 36.446926, 41.705566>,  <39.372776, 36.580727, 41.878407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099186, 36.446926, 41.705566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947430, 36.081642, 41.765041>,  <39.856377, 35.862473, 41.800724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947430, 36.081642, 41.765041>,  <40.099186, 36.446926, 41.705566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947430, 36.081642, 41.765041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428910, -0.315978, -0.846282,
		0.819814, -0.257304, 0.511566,
		-0.379395, -0.913210, 0.148683,
		39.833611, 35.807678, 41.809647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538490, 36.066635, 41.637630>,  <40.099186, 36.446926, 41.705566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538490, 36.066635, 41.637630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.215427, 35.843784, 41.560379>,  <40.021591, 35.710075, 41.514027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.215427, 35.843784, 41.560379>,  <40.538490, 36.066635, 41.637630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.215427, 35.843784, 41.560379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391182, -0.261178, -0.882475,
		0.441211, -0.788286, 0.428880,
		-0.807657, -0.557128, -0.193129,
		39.973129, 35.676647, 41.502441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812141, 35.410461, 41.497677>,  <40.538490, 36.066635, 41.637630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.812141, 35.410461, 41.497677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439438, 35.413818, 41.352482>,  <40.215816, 35.415833, 41.265366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439438, 35.413818, 41.352482>,  <40.812141, 35.410461, 41.497677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439438, 35.413818, 41.352482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334197, -0.370966, -0.866428,
		-0.141927, -0.928609, 0.342845,
		-0.931756, 0.008392, -0.362988,
		40.159912, 35.416336, 41.243584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847923, 34.873703, 41.119122>,  <40.812141, 35.410461, 41.497677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847923, 34.873703, 41.119122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.544712, 35.083981, 40.964699>,  <40.362785, 35.210148, 40.872047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.544712, 35.083981, 40.964699>,  <40.847923, 34.873703, 41.119122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.544712, 35.083981, 40.964699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320303, -0.215564, -0.922463,
		-0.568152, -0.822909, -0.004977,
		-0.758030, 0.525694, -0.386053,
		40.317303, 35.241688, 40.848885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570385, 34.481102, 40.634892>,  <40.847923, 34.873703, 41.119122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570385, 34.481102, 40.634892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437401, 34.840931, 40.521591>,  <40.357609, 35.056828, 40.453609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437401, 34.840931, 40.521591>,  <40.570385, 34.481102, 40.634892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437401, 34.840931, 40.521591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347398, -0.162410, -0.923546,
		-0.876803, -0.405447, -0.258515,
		-0.332463, 0.899575, -0.283253,
		40.337662, 35.110802, 40.436615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.237755, 34.292747, 40.015900>,  <40.570385, 34.481102, 40.634892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.237755, 34.292747, 40.015900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.300453, 34.687435, 39.998886>,  <40.338074, 34.924248, 39.988678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.300453, 34.687435, 39.998886>,  <40.237755, 34.292747, 40.015900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.300453, 34.687435, 39.998886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434236, -0.107531, -0.894358,
		-0.887056, 0.121723, -0.445326,
		0.156750, 0.986722, -0.042530,
		40.347477, 34.983452, 39.986126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023632, 34.517860, 39.428032>,  <40.237755, 34.292747, 40.015900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023632, 34.517860, 39.428032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.285702, 34.803108, 39.527794>,  <40.442944, 34.974258, 39.587650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.285702, 34.803108, 39.527794>,  <40.023632, 34.517860, 39.428032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285702, 34.803108, 39.527794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362188, -0.006779, -0.932081,
		-0.662994, 0.701010, -0.262725,
		0.655178, 0.713120, 0.249402,
		40.482254, 35.017044, 39.602615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965740, 34.886257, 38.902321>,  <40.023632, 34.517860, 39.428032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965740, 34.886257, 38.902321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293713, 35.051369, 39.060978>,  <40.490498, 35.150436, 39.156174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293713, 35.051369, 39.060978>,  <39.965740, 34.886257, 38.902321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293713, 35.051369, 39.060978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380469, 0.124776, -0.916337,
		-0.427737, 0.902244, -0.054742,
		0.819930, 0.412779, 0.396647,
		40.539692, 35.175201, 39.179974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013599, 35.461407, 38.592987>,  <39.965740, 34.886257, 38.902321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013599, 35.461407, 38.592987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.384148, 35.424629, 38.739075>,  <40.606476, 35.402561, 38.826725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.384148, 35.424629, 38.739075>,  <40.013599, 35.461407, 38.592987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384148, 35.424629, 38.739075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369111, 0.414215, -0.831975,
		-0.074784, 0.905523, 0.417654,
		0.926372, -0.091942, 0.365215,
		40.662060, 35.397045, 38.848640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316963, 36.096916, 38.586224>,  <40.013599, 35.461407, 38.592987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316963, 36.096916, 38.586224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.637329, 35.857445, 38.581810>,  <40.829548, 35.713764, 38.579163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.637329, 35.857445, 38.581810>,  <40.316963, 36.096916, 38.586224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.637329, 35.857445, 38.581810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390305, 0.535956, -0.748607,
		0.454090, 0.595263, 0.662922,
		0.800915, -0.598677, -0.011038,
		40.877605, 35.677841, 38.578499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911377, 36.437443, 38.523354>,  <40.316963, 36.096916, 38.586224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.911377, 36.437443, 38.523354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036373, 36.084518, 38.382565>,  <41.111370, 35.872765, 38.298092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036373, 36.084518, 38.382565>,  <40.911377, 36.437443, 38.523354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.036373, 36.084518, 38.382565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443988, 0.463227, -0.767004,
		0.839778, 0.083405, 0.536486,
		0.312487, -0.882306, -0.351977,
		41.130119, 35.819828, 38.276970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622448, 36.448807, 38.390678>,  <40.911377, 36.437443, 38.523354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.622448, 36.448807, 38.390678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.505539, 36.131378, 38.177204>,  <41.435394, 35.940922, 38.049122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.505539, 36.131378, 38.177204>,  <41.622448, 36.448807, 38.390678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.505539, 36.131378, 38.177204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611116, 0.274268, -0.742505,
		0.735605, -0.543156, 0.404805,
		-0.292271, -0.793574, -0.533684,
		41.417858, 35.893307, 38.017097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.173370, 36.245579, 38.247604>,  <41.622448, 36.448807, 38.390678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.173370, 36.245579, 38.247604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.955090, 36.082481, 37.954769>,  <41.824123, 35.984623, 37.779068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.955090, 36.082481, 37.954769>,  <42.173370, 36.245579, 38.247604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.955090, 36.082481, 37.954769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734966, 0.186784, -0.651871,
		0.402540, -0.893787, 0.197751,
		-0.545698, -0.407745, -0.732091,
		41.791382, 35.960159, 37.735142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.659184, 35.720192, 37.833172>,  <42.173370, 36.245579, 38.247604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.659184, 35.720192, 37.833172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.348816, 35.807556, 37.596447>,  <42.162594, 35.859974, 37.454411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.348816, 35.807556, 37.596447>,  <42.659184, 35.720192, 37.833172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.348816, 35.807556, 37.596447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630664, 0.246898, -0.735733,
		-0.014575, -0.944106, -0.329318,
		-0.775919, 0.218413, -0.591816,
		42.116039, 35.873081, 37.418903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.750134, 35.350632, 37.179005>,  <42.659184, 35.720192, 37.833172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.750134, 35.350632, 37.179005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.513180, 35.652550, 37.066322>,  <42.371006, 35.833702, 36.998711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.513180, 35.652550, 37.066322>,  <42.750134, 35.350632, 37.179005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.513180, 35.652550, 37.066322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646246, 0.236385, -0.725595,
		-0.481084, -0.611888, -0.627815,
		-0.592389, 0.754795, -0.281709,
		42.335464, 35.878986, 36.981808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.648514, 35.303967, 36.372486>,  <42.750134, 35.350632, 37.179005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.648514, 35.303967, 36.372486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.591335, 35.676575, 36.506252>,  <42.557030, 35.900139, 36.586510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.591335, 35.676575, 36.506252>,  <42.648514, 35.303967, 36.372486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.591335, 35.676575, 36.506252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612495, 0.348668, -0.709422,
		-0.777442, 0.103418, -0.620394,
		-0.142944, 0.931523, 0.334412,
		42.548450, 35.956032, 36.606575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.589378, 35.761719, 35.799614>,  <42.648514, 35.303967, 36.372486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.589378, 35.761719, 35.799614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.701908, 36.002045, 36.098915>,  <42.769424, 36.146240, 36.278496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.701908, 36.002045, 36.098915>,  <42.589378, 35.761719, 35.799614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.701908, 36.002045, 36.098915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671085, 0.434183, -0.600941,
		-0.685932, 0.671198, -0.281053,
		0.281322, 0.600815, 0.748251,
		42.786304, 36.182289, 36.323391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.830921, 35.549171, 35.159313>,  <42.589378, 35.761719, 35.799614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.830921, 35.549171, 35.159313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.555241, 35.820190, 35.056614>,  <42.389832, 35.982803, 34.994995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.555241, 35.820190, 35.056614>,  <42.830921, 35.549171, 35.159313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.555241, 35.820190, 35.056614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005326, -0.359081, -0.933291,
		-0.724548, -0.641861, 0.251089,
		-0.689204, 0.677552, -0.256753,
		42.348480, 36.023457, 34.979588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.134632, 35.184517, 34.865059>,  <42.830921, 35.549171, 35.159313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.134632, 35.184517, 34.865059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.210796, 35.557674, 34.742779>,  <42.256496, 35.781570, 34.669411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.210796, 35.557674, 34.742779>,  <42.134632, 35.184517, 34.865059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.210796, 35.557674, 34.742779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110190, -0.289118, -0.950930,
		-0.975501, 0.214754, 0.047744,
		0.190412, 0.932894, -0.305699,
		42.267921, 35.837543, 34.651070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.561214, 35.511887, 34.389126>,  <42.134632, 35.184517, 34.865059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.561214, 35.511887, 34.389126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.941471, 35.622345, 34.332527>,  <42.169624, 35.688618, 34.298569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.941471, 35.622345, 34.332527>,  <41.561214, 35.511887, 34.389126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.941471, 35.622345, 34.332527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036141, -0.354364, -0.934409,
		-0.308171, 0.893404, -0.326894,
		0.950644, 0.276143, -0.141494,
		42.226665, 35.705189, 34.290077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.690800, 36.031517, 33.727047>,  <41.561214, 35.511887, 34.389126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.690800, 36.031517, 33.727047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.025562, 35.833874, 33.821228>,  <42.226421, 35.715286, 33.877735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.025562, 35.833874, 33.821228>,  <41.690800, 36.031517, 33.727047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.025562, 35.833874, 33.821228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118303, -0.256709, -0.959221,
		0.534402, 0.830637, -0.156388,
		0.836910, -0.494109, 0.235452,
		42.276634, 35.685642, 33.891865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.723709, 36.669712, 33.970501>,  <41.690800, 36.031517, 33.727047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.723709, 36.669712, 33.970501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123245, 36.652309, 33.978741>,  <42.362968, 36.641869, 33.983685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123245, 36.652309, 33.978741>,  <41.723709, 36.669712, 33.970501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.123245, 36.652309, 33.978741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047060, 0.972613, -0.227615,
		-0.010134, 0.228321, 0.973533,
		0.998841, -0.043508, 0.020601,
		42.422897, 36.639256, 33.984921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.912533, 37.177227, 34.422882>,  <41.723709, 36.669712, 33.970501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.912533, 37.177227, 34.422882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.207573, 37.123722, 34.158138>,  <42.384598, 37.091621, 33.999290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.207573, 37.123722, 34.158138>,  <41.912533, 37.177227, 34.422882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.207573, 37.123722, 34.158138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112663, 0.990822, -0.074688,
		0.665777, -0.019477, 0.745897,
		0.737596, -0.133760, -0.661861,
		42.428852, 37.083595, 33.959579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.507355, 37.578533, 34.622448>,  <41.912533, 37.177227, 34.422882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.507355, 37.578533, 34.622448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.603352, 37.523624, 34.238041>,  <42.660950, 37.490677, 34.007397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.603352, 37.523624, 34.238041>,  <42.507355, 37.578533, 34.622448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.603352, 37.523624, 34.238041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071234, 0.989773, -0.123594,
		0.968157, -0.038796, 0.247318,
		0.239994, -0.137276, -0.961019,
		42.675350, 37.482441, 33.949734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.109985, 38.041431, 34.467052>,  <42.507355, 37.578533, 34.622448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.109985, 38.041431, 34.467052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.926723, 37.951309, 34.123116>,  <42.816765, 37.897236, 33.916752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.926723, 37.951309, 34.123116>,  <43.109985, 38.041431, 34.467052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.926723, 37.951309, 34.123116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017888, 0.964809, -0.262342,
		0.888692, -0.135574, -0.438002,
		-0.458155, -0.225307, -0.859844,
		42.789276, 37.883717, 33.865162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.429161, 38.176205, 33.697701>,  <43.109985, 38.041431, 34.467052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.429161, 38.176205, 33.697701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.033569, 38.170853, 33.638710>,  <42.796215, 38.167641, 33.603317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.033569, 38.170853, 33.638710>,  <43.429161, 38.176205, 33.697701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.033569, 38.170853, 33.638710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026877, 0.963153, -0.267608,
		0.145623, -0.268622, -0.952175,
		-0.988975, -0.013379, -0.147476,
		42.736877, 38.166840, 33.594467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.388580, 38.717632, 33.282764>,  <43.429161, 38.176205, 33.697701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.388580, 38.717632, 33.282764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.002357, 38.650681, 33.362446>,  <42.770622, 38.610512, 33.410255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.002357, 38.650681, 33.362446>,  <43.388580, 38.717632, 33.282764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.002357, 38.650681, 33.362446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203282, 0.963163, -0.176052,
		-0.162402, -0.210483, -0.964014,
		-0.965558, -0.167376, 0.199208,
		42.712688, 38.600468, 33.422207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.080421, 39.088760, 32.816120>,  <43.388580, 38.717632, 33.282764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.080421, 39.088760, 32.816120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.796764, 39.026623, 33.091217>,  <42.626572, 38.989342, 33.256275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.796764, 39.026623, 33.091217>,  <43.080421, 39.088760, 32.816120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.796764, 39.026623, 33.091217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287467, 0.954372, -0.080847,
		-0.643803, -0.255035, -0.721440,
		-0.709141, -0.155341, 0.687741,
		42.584023, 38.980022, 33.297539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.481152, 39.472908, 32.623138>,  <43.080421, 39.088760, 32.816120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.481152, 39.472908, 32.623138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.398575, 39.391468, 33.005955>,  <42.349030, 39.342602, 33.235645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.398575, 39.391468, 33.005955>,  <42.481152, 39.472908, 32.623138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.398575, 39.391468, 33.005955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320463, 0.938233, 0.130474,
		-0.924492, -0.279760, -0.258939,
		-0.206443, -0.203602, 0.957041,
		42.336643, 39.330387, 33.293068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763092, 39.771114, 32.859562>,  <42.481152, 39.472908, 32.623138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.763092, 39.771114, 32.859562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.988911, 39.720661, 33.185844>,  <42.124401, 39.690388, 33.381615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.988911, 39.720661, 33.185844>,  <41.763092, 39.771114, 32.859562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.988911, 39.720661, 33.185844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110506, 0.967808, 0.226131,
		-0.817973, -0.217802, 0.532431,
		0.564543, -0.126132, 0.815710,
		42.158272, 39.682823, 33.430557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.394608, 40.164761, 33.327847>,  <41.763092, 39.771114, 32.859562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.394608, 40.164761, 33.327847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.762665, 40.127289, 33.479935>,  <41.983498, 40.104805, 33.571186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.762665, 40.127289, 33.479935>,  <41.394608, 40.164761, 33.327847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.762665, 40.127289, 33.479935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074411, 0.995100, 0.065109,
		-0.384458, -0.031616, 0.922601,
		0.920138, -0.093684, 0.380222,
		42.038708, 40.099182, 33.594002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.507343, 40.666683, 33.954998>,  <41.394608, 40.164761, 33.327847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.507343, 40.666683, 33.954998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.861298, 40.575485, 33.792522>,  <42.073669, 40.520767, 33.695038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.861298, 40.575485, 33.792522>,  <41.507343, 40.666683, 33.954998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.861298, 40.575485, 33.792522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242771, 0.969959, -0.015562,
		0.397537, -0.084841, 0.913656,
		0.884888, -0.227995, -0.406191,
		42.126762, 40.507088, 33.670666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.946415, 41.210331, 34.340668>,  <41.507343, 40.666683, 33.954998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.946415, 41.210331, 34.340668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.159004, 41.084301, 34.026150>,  <42.286556, 41.008682, 33.837437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.159004, 41.084301, 34.026150>,  <41.946415, 41.210331, 34.340668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.159004, 41.084301, 34.026150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296149, 0.938785, -0.176006,
		0.793621, -0.139319, 0.592247,
		0.531472, -0.315075, -0.786299,
		42.318447, 40.989777, 33.790260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.578968, 41.534618, 34.422031>,  <41.946415, 41.210331, 34.340668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.578968, 41.534618, 34.422031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.587032, 41.413170, 34.041000>,  <42.591869, 41.340302, 33.812382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.587032, 41.413170, 34.041000>,  <42.578968, 41.534618, 34.422031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.587032, 41.413170, 34.041000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361852, 0.890397, -0.276145,
		0.932017, -0.339126, 0.127816,
		0.020159, -0.303622, -0.952579,
		42.593079, 41.322083, 33.755226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.315239, 41.652893, 34.142944>,  <42.578968, 41.534618, 34.422031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.315239, 41.652893, 34.142944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.046066, 41.631527, 33.847836>,  <42.884563, 41.618706, 33.670773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.046066, 41.631527, 33.847836>,  <43.315239, 41.652893, 34.142944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.046066, 41.631527, 33.847836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364311, 0.844098, -0.393415,
		0.643766, -0.533521, -0.548563,
		-0.672936, -0.053420, -0.737769,
		42.844185, 41.615501, 33.626503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.711849, 41.625771, 33.486031>,  <43.315239, 41.652893, 34.142944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.711849, 41.625771, 33.486031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.346279, 41.737053, 33.367821>,  <43.126938, 41.803822, 33.296894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.346279, 41.737053, 33.367821>,  <43.711849, 41.625771, 33.486031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.346279, 41.737053, 33.367821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404355, 0.687029, -0.603728,
		0.035078, -0.671264, -0.740388,
		-0.913929, 0.278202, -0.295529,
		43.072102, 41.820515, 33.279163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.812260, 41.704277, 32.860771>,  <43.711849, 41.625771, 33.486031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.812260, 41.704277, 32.860771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.470943, 41.907043, 32.909664>,  <43.266155, 42.028702, 32.938999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.470943, 41.907043, 32.909664>,  <43.812260, 41.704277, 32.860771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.470943, 41.907043, 32.909664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332906, 0.710011, -0.620531,
		-0.401340, -0.488800, -0.774598,
		-0.853288, 0.506912, 0.122231,
		43.214958, 42.059116, 32.946335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.705357, 41.822441, 32.217274>,  <43.812260, 41.704277, 32.860771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.705357, 41.822441, 32.217274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.499771, 42.090195, 32.431850>,  <43.376419, 42.250847, 32.560596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.499771, 42.090195, 32.431850>,  <43.705357, 41.822441, 32.217274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.499771, 42.090195, 32.431850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341078, 0.733270, -0.588201,
		-0.787086, -0.119348, -0.605188,
		-0.513967, 0.669381, 0.536439,
		43.345581, 42.291008, 32.592781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.293652, 42.218075, 31.720009>,  <43.705357, 41.822441, 32.217274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.293652, 42.218075, 31.720009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.379982, 42.431450, 32.047146>,  <43.431782, 42.559475, 32.243427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.379982, 42.431450, 32.047146>,  <43.293652, 42.218075, 31.720009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.379982, 42.431450, 32.047146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328409, 0.749128, -0.575287,
		-0.919546, 0.392751, -0.013500,
		0.215831, 0.533436, 0.817841,
		43.444733, 42.591480, 32.292500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.057171, 42.940376, 31.504068>,  <43.293652, 42.218075, 31.720009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.057171, 42.940376, 31.504068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.222534, 43.039001, 31.854679>,  <43.321751, 43.098175, 32.065044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.222534, 43.039001, 31.854679>,  <43.057171, 42.940376, 31.504068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.222534, 43.039001, 31.854679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315604, 0.864163, -0.391939,
		-0.854100, 0.438667, 0.279436,
		0.413409, 0.246564, 0.876527,
		43.346558, 43.112972, 32.117638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.783157, 43.674583, 31.583929>,  <43.057171, 42.940376, 31.504068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.783157, 43.674583, 31.583929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.110741, 43.619213, 31.806690>,  <43.307293, 43.585991, 31.940348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.110741, 43.619213, 31.806690>,  <42.783157, 43.674583, 31.583929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.110741, 43.619213, 31.806690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285535, 0.940100, -0.186230,
		-0.497767, 0.311530, 0.809430,
		0.818961, -0.138421, 0.556904,
		43.356430, 43.577686, 31.973761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.857697, 44.286377, 31.889948>,  <42.783157, 43.674583, 31.583929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.857697, 44.286377, 31.889948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.213409, 44.104118, 31.905790>,  <43.426838, 43.994762, 31.915295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.213409, 44.104118, 31.905790>,  <42.857697, 44.286377, 31.889948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.213409, 44.104118, 31.905790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455908, 0.876225, -0.156134,
		0.036439, 0.156902, 0.986942,
		0.889281, -0.455643, 0.039604,
		43.480194, 43.967426, 31.917671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.245174, 44.841103, 32.118835>,  <42.857697, 44.286377, 31.889948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.245174, 44.841103, 32.118835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.495045, 44.563236, 31.976164>,  <43.644966, 44.396519, 31.890560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.495045, 44.563236, 31.976164>,  <43.245174, 44.841103, 32.118835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.495045, 44.563236, 31.976164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548666, 0.715470, -0.432513,
		0.555645, 0.074483, 0.828077,
		0.624680, -0.694661, -0.356681,
		43.682449, 44.354839, 31.869160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.992290, 45.077816, 32.201626>,  <43.245174, 44.841103, 32.118835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.992290, 45.077816, 32.201626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.943867, 44.850647, 31.875973>,  <43.914814, 44.714344, 31.680582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.943867, 44.850647, 31.875973>,  <43.992290, 45.077816, 32.201626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.943867, 44.850647, 31.875973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314441, 0.755984, -0.574121,
		0.941526, -0.325499, 0.087059,
		-0.121061, -0.567924, -0.814129,
		43.907547, 44.680271, 31.631735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.214066, 45.667423, 32.181522>,  <43.992290, 45.077816, 32.201626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.214066, 45.667423, 32.181522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.121128, 45.882572, 32.505672>,  <44.065365, 46.011662, 32.700165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.121128, 45.882572, 32.505672>,  <44.214066, 45.667423, 32.181522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.121128, 45.882572, 32.505672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510131, -0.641997, 0.572368,
		0.828121, 0.546383, -0.125224,
		-0.232339, 0.537871, 0.810379,
		44.051426, 46.043934, 32.748787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.796467, 45.804276, 32.570774>,  <44.214066, 45.667423, 32.181522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.796467, 45.804276, 32.570774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.506397, 45.819672, 32.845768>,  <44.332355, 45.828911, 33.010765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.506397, 45.819672, 32.845768>,  <44.796467, 45.804276, 32.570774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.506397, 45.819672, 32.845768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507438, -0.645010, 0.571374,
		0.465429, 0.763204, 0.448214,
		-0.725178, 0.038493, 0.687485,
		44.288845, 45.831219, 33.052013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.035877, 46.037907, 33.262177>,  <44.796467, 45.804276, 32.570774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.035877, 46.037907, 33.262177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.719170, 45.793629, 33.257088>,  <44.529144, 45.647064, 33.254036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.719170, 45.793629, 33.257088>,  <45.035877, 46.037907, 33.262177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.719170, 45.793629, 33.257088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571194, -0.747613, 0.338839,
		-0.216435, 0.261016, 0.940758,
		-0.791766, -0.610692, -0.012719,
		44.481640, 45.610420, 33.253273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.275429, 45.584957, 33.768425>,  <45.035877, 46.037907, 33.262177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.275429, 45.584957, 33.768425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.982052, 45.405712, 33.563969>,  <44.806026, 45.298164, 33.441296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.982052, 45.405712, 33.563969>,  <45.275429, 45.584957, 33.768425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.982052, 45.405712, 33.563969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316445, -0.890580, 0.326694,
		-0.601606, 0.077863, 0.794989,
		-0.733439, -0.448112, -0.511139,
		44.762020, 45.271278, 33.410625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.814533, 45.277359, 34.271786>,  <45.275429, 45.584957, 33.768425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.814533, 45.277359, 34.271786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.837013, 45.076565, 33.926567>,  <44.850502, 44.956089, 33.719437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.837013, 45.076565, 33.926567>,  <44.814533, 45.277359, 34.271786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.837013, 45.076565, 33.926567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345297, -0.801302, 0.488553,
		-0.936809, -0.325467, 0.128297,
		0.056203, -0.501982, -0.863050,
		44.853874, 44.925972, 33.667652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.153408, 45.851673, 34.595375>,  <44.814533, 45.277359, 34.271786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.153408, 45.851673, 34.595375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.082684, 45.597073, 34.895668>,  <45.040249, 45.444313, 35.075844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.082684, 45.597073, 34.895668>,  <45.153408, 45.851673, 34.595375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.082684, 45.597073, 34.895668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338361, -0.755572, -0.560912,
		0.924256, 0.154845, 0.348960,
		-0.176811, -0.636501, 0.750736,
		45.029640, 45.406124, 35.120888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.746891, 45.449574, 34.724689>,  <45.153408, 45.851673, 34.595375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.746891, 45.449574, 34.724689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.447388, 45.217865, 34.853561>,  <45.267685, 45.078838, 34.930885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.447388, 45.217865, 34.853561>,  <45.746891, 45.449574, 34.724689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.447388, 45.217865, 34.853561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267325, -0.708686, -0.652918,
		0.606544, -0.402751, 0.685490,
		-0.748760, -0.579272, 0.322184,
		45.222759, 45.044083, 34.950218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.991138, 44.765091, 34.889446>,  <45.746891, 45.449574, 34.724689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.991138, 44.765091, 34.889446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.600735, 44.707420, 34.824188>,  <45.366493, 44.672817, 34.785034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.600735, 44.707420, 34.824188>,  <45.991138, 44.765091, 34.889446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.600735, 44.707420, 34.824188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210285, -0.818459, -0.534701,
		-0.056439, -0.556181, 0.829142,
		-0.976010, -0.144178, -0.163150,
		45.307930, 44.664165, 34.775242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.145981, 44.194313, 34.495392>,  <45.991138, 44.765091, 34.889446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.145981, 44.194313, 34.495392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.754871, 44.124783, 34.542294>,  <45.520206, 44.083065, 34.570435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.754871, 44.124783, 34.542294>,  <46.145981, 44.194313, 34.495392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.754871, 44.124783, 34.542294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139966, -0.957474, -0.252297,
		0.156120, -0.230278, 0.960520,
		-0.977771, -0.173828, 0.117250,
		45.461540, 44.072636, 34.577469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.002789, 43.652077, 34.951950>,  <46.145981, 44.194313, 34.495392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.002789, 43.652077, 34.951950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.700237, 43.661282, 34.690456>,  <45.518707, 43.666805, 34.533562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.700237, 43.661282, 34.690456>,  <46.002789, 43.652077, 34.951950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.700237, 43.661282, 34.690456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067542, -0.991292, -0.113043,
		-0.650641, -0.129657, 0.748234,
		-0.756375, 0.023014, -0.653733,
		45.473324, 43.668186, 34.494335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.509430, 43.154972, 35.209450>,  <46.002789, 43.652077, 34.951950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.509430, 43.154972, 35.209450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.493954, 43.198498, 34.812126>,  <45.484669, 43.224613, 34.573730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.493954, 43.198498, 34.812126>,  <45.509430, 43.154972, 35.209450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.493954, 43.198498, 34.812126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091951, -0.989448, -0.111975,
		-0.995012, -0.095668, 0.028273,
		-0.038687, 0.108817, -0.993309,
		45.482346, 43.231144, 34.514133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.234200, 42.623211, 35.072021>,  <45.509430, 43.154972, 35.209450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.234200, 42.623211, 35.072021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.361973, 42.744976, 34.713070>,  <45.438637, 42.818035, 34.497700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.361973, 42.744976, 34.713070>,  <45.234200, 42.623211, 35.072021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.361973, 42.744976, 34.713070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146755, -0.951462, -0.270523,
		-0.936176, -0.045280, -0.348605,
		0.319435, 0.304416, -0.897381,
		45.457802, 42.836300, 34.443855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.745632, 42.322025, 34.556641>,  <45.234200, 42.623211, 35.072021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.745632, 42.322025, 34.556641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.111229, 42.395786, 34.412075>,  <45.330585, 42.440041, 34.325336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.111229, 42.395786, 34.412075>,  <44.745632, 42.322025, 34.556641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.111229, 42.395786, 34.412075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076050, -0.952830, -0.293823,
		-0.398544, 0.241066, -0.884901,
		0.913991, 0.184398, -0.361411,
		45.385426, 42.451107, 34.303650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.666012, 41.922581, 34.070641>,  <44.745632, 42.322025, 34.556641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.666012, 41.922581, 34.070641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.054478, 42.017933, 34.072239>,  <45.287556, 42.075146, 34.073196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.054478, 42.017933, 34.072239>,  <44.666012, 41.922581, 34.070641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.054478, 42.017933, 34.072239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229174, -0.928757, -0.291360,
		-0.065746, 0.283874, -0.956605,
		0.971163, 0.238384, 0.003995,
		45.345825, 42.089447, 34.073437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.898888, 41.738617, 33.428970>,  <44.666012, 41.922581, 34.070641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.898888, 41.738617, 33.428970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.216877, 41.738342, 33.671627>,  <45.407673, 41.738178, 33.817219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.216877, 41.738342, 33.671627>,  <44.898888, 41.738617, 33.428970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.216877, 41.738342, 33.671627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206687, -0.939860, -0.271926,
		0.570343, 0.341560, -0.747025,
		0.794977, -0.000691, 0.606639,
		45.455372, 41.738136, 33.853619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.408020, 41.377075, 33.041458>,  <44.898888, 41.738617, 33.428970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.408020, 41.377075, 33.041458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.534779, 41.364143, 33.420624>,  <45.610832, 41.356384, 33.648121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.534779, 41.364143, 33.420624>,  <45.408020, 41.377075, 33.041458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.534779, 41.364143, 33.420624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165808, -0.982140, -0.088928,
		0.933855, 0.185352, -0.305874,
		0.316894, -0.032329, 0.947910,
		45.629848, 41.354446, 33.704998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.928467, 40.832378, 33.031986>,  <45.408020, 41.377075, 33.041458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.928467, 40.832378, 33.031986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.843327, 40.866482, 33.421329>,  <45.792244, 40.886944, 33.654934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.843327, 40.866482, 33.421329>,  <45.928467, 40.832378, 33.031986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.843327, 40.866482, 33.421329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012195, -0.995877, 0.089893,
		0.977009, 0.031004, 0.210932,
		-0.212849, 0.085254, 0.973359,
		45.779472, 40.892059, 33.713337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.390450, 40.279381, 33.492718>,  <45.928467, 40.832378, 33.031986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.390450, 40.279381, 33.492718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.104019, 40.397499, 33.745708>,  <45.932159, 40.468369, 33.897503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.104019, 40.397499, 33.745708>,  <46.390450, 40.279381, 33.492718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.104019, 40.397499, 33.745708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296684, -0.948945, 0.107149,
		0.631828, -0.110919, 0.767131,
		-0.716081, 0.295295, 0.632479,
		45.889194, 40.486088, 33.935452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.631744, 39.994610, 34.055946>,  <46.390450, 40.279381, 33.492718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.631744, 39.994610, 34.055946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.233433, 40.020435, 34.082069>,  <45.994446, 40.035931, 34.097744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.233433, 40.020435, 34.082069>,  <46.631744, 39.994610, 34.055946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.233433, 40.020435, 34.082069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040703, -0.947773, 0.316338,
		0.082322, 0.312342, 0.946396,
		-0.995774, 0.064563, 0.065309,
		45.934700, 40.039803, 34.101662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.544361, 39.480270, 34.508244>,  <46.631744, 39.994610, 34.055946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.544361, 39.480270, 34.508244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.180149, 39.557945, 34.362240>,  <45.961624, 39.604549, 34.274639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.180149, 39.557945, 34.362240>,  <46.544361, 39.480270, 34.508244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.180149, 39.557945, 34.362240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257776, -0.956873, 0.133960,
		-0.323250, 0.216064, 0.921317,
		-0.910528, 0.194191, -0.365005,
		45.906990, 39.616203, 34.252739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.036999, 39.271858, 35.028717>,  <46.544361, 39.480270, 34.508244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.036999, 39.271858, 35.028717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.878441, 39.262295, 34.661610>,  <45.783306, 39.256557, 34.441345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.878441, 39.262295, 34.661610>,  <46.036999, 39.271858, 35.028717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.878441, 39.262295, 34.661610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234754, -0.963788, 0.126502,
		-0.887558, 0.265594, 0.376431,
		-0.396398, -0.023909, -0.917767,
		45.759521, 39.255123, 34.386280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.276989, 39.053127, 35.168293>,  <46.036999, 39.271858, 35.028717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.276989, 39.053127, 35.168293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.357777, 38.968708, 34.785740>,  <45.406250, 38.918056, 34.556210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.357777, 38.968708, 34.785740>,  <45.276989, 39.053127, 35.168293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.357777, 38.968708, 34.785740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411682, -0.904342, 0.112626,
		-0.888666, 0.370977, -0.269536,
		0.201971, -0.211050, -0.956382,
		45.418369, 38.905392, 34.498825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.687008, 38.719181, 34.934010>,  <45.276989, 39.053127, 35.168293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.687008, 38.719181, 34.934010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.958260, 38.635117, 34.652309>,  <45.121010, 38.584679, 34.483288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.958260, 38.635117, 34.652309>,  <44.687008, 38.719181, 34.934010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.958260, 38.635117, 34.652309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368175, -0.926476, -0.078037,
		-0.636072, 0.312207, -0.705648,
		0.678129, -0.210165, -0.704252,
		45.161697, 38.572067, 34.441032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.392120, 38.457886, 34.305374>,  <44.687008, 38.719181, 34.934010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.392120, 38.457886, 34.305374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.763218, 38.308651, 34.301418>,  <44.985878, 38.219109, 34.299046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.763218, 38.308651, 34.301418>,  <44.392120, 38.457886, 34.305374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.763218, 38.308651, 34.301418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366489, -0.905684, -0.213125,
		0.070561, 0.201349, -0.976975,
		0.927743, -0.373089, -0.009886,
		45.041542, 38.196724, 34.298450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.272610, 38.054382, 33.803604>,  <44.392120, 38.457886, 34.305374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.272610, 38.054382, 33.803604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.628021, 37.943760, 33.950047>,  <44.841267, 37.877384, 34.037914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.628021, 37.943760, 33.950047>,  <44.272610, 38.054382, 33.803604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.628021, 37.943760, 33.950047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192448, -0.948980, -0.249803,
		0.416515, 0.151500, -0.896417,
		0.888526, -0.276560, 0.366108,
		44.894581, 37.860790, 34.059879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.660320, 37.609562, 33.290676>,  <44.272610, 38.054382, 33.803604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.660320, 37.609562, 33.290676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.852531, 37.523930, 33.630856>,  <44.967857, 37.472549, 33.834961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.852531, 37.523930, 33.630856>,  <44.660320, 37.609562, 33.290676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.852531, 37.523930, 33.630856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013910, -0.971485, -0.236692,
		0.876868, 0.101908, -0.469805,
		0.480529, -0.214083, 0.850447,
		44.996689, 37.459705, 33.885990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.307697, 37.284687, 33.169567>,  <44.660320, 37.609562, 33.290676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.307697, 37.284687, 33.169567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.156940, 37.161613, 33.519032>,  <45.066486, 37.087769, 33.728710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.156940, 37.161613, 33.519032>,  <45.307697, 37.284687, 33.169567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.156940, 37.161613, 33.519032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074401, -0.930111, -0.359664,
		0.923266, -0.200554, 0.327656,
		-0.376888, -0.307688, 0.873661,
		45.043873, 37.069305, 33.781128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.650188, 36.687790, 33.252720>,  <45.307697, 37.284687, 33.169567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.650188, 36.687790, 33.252720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.337254, 36.685017, 33.501846>,  <45.149494, 36.683353, 33.651321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.337254, 36.685017, 33.501846>,  <45.650188, 36.687790, 33.252720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.337254, 36.685017, 33.501846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155431, -0.966129, -0.206001,
		0.603153, -0.257967, 0.754758,
		-0.782335, -0.006937, 0.622820,
		45.102554, 36.682934, 33.688694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.739414, 36.064804, 33.660011>,  <45.650188, 36.687790, 33.252720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.739414, 36.064804, 33.660011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.351765, 36.162457, 33.673855>,  <45.119175, 36.221046, 33.682159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.351765, 36.162457, 33.673855>,  <45.739414, 36.064804, 33.660011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.351765, 36.162457, 33.673855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246455, -0.963376, -0.105675,
		0.007539, -0.110941, 0.993798,
		-0.969125, 0.244130, 0.034605,
		45.061028, 36.235695, 33.684235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.472546, 35.505516, 33.949768>,  <45.739414, 36.064804, 33.660011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.472546, 35.505516, 33.949768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.149075, 35.677933, 33.789646>,  <44.954994, 35.781384, 33.693573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.149075, 35.677933, 33.789646>,  <45.472546, 35.505516, 33.949768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.149075, 35.677933, 33.789646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510245, -0.852614, 0.112691,
		-0.292734, 0.295386, 0.909425,
		-0.808676, 0.431041, -0.400309,
		44.906471, 35.807243, 33.669552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.058376, 35.081581, 34.393345>,  <45.472546, 35.505516, 33.949768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.058376, 35.081581, 34.393345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.200455, 35.339958, 34.663631>,  <46.285702, 35.494984, 34.825806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.200455, 35.339958, 34.663631>,  <46.058376, 35.081581, 34.393345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.200455, 35.339958, 34.663631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918126, -0.376954, -0.122271,
		0.175735, 0.663826, -0.726947,
		0.355192, 0.645942, 0.675721,
		46.307011, 35.533741, 34.866348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.756348, 35.571140, 34.150307>,  <46.058376, 35.081581, 34.393345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.756348, 35.571140, 34.150307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.716824, 35.423428, 34.519924>,  <46.693108, 35.334801, 34.741695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.716824, 35.423428, 34.519924>,  <46.756348, 35.571140, 34.150307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.716824, 35.423428, 34.519924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877907, -0.469559, -0.093777,
		0.468526, 0.801962, 0.370595,
		-0.098811, -0.369285, 0.924048,
		46.687180, 35.312641, 34.797138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.406212, 35.810463, 34.383991>,  <46.756348, 35.571140, 34.150307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.406212, 35.810463, 34.383991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.299652, 35.489937, 34.598255>,  <47.235718, 35.297623, 34.726814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.299652, 35.489937, 34.598255>,  <47.406212, 35.810463, 34.383991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.299652, 35.489937, 34.598255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869188, -0.439913, -0.225808,
		0.416587, 0.405434, 0.813682,
		-0.266399, -0.801311, 0.535660,
		47.219734, 35.249542, 34.758953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.946056, 35.625748, 34.911507>,  <47.406212, 35.810463, 34.383991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.946056, 35.625748, 34.911507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.752998, 35.290146, 34.811008>,  <47.637161, 35.088787, 34.750710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.752998, 35.290146, 34.811008>,  <47.946056, 35.625748, 34.911507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.752998, 35.290146, 34.811008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865095, -0.411955, -0.286189,
		0.136610, -0.355484, 0.924645,
		-0.482648, -0.839002, -0.251250,
		47.608204, 35.038445, 34.735634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.191891, 39.989002, 43.816540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.807056, 40.081059, 43.757999>,  <37.576157, 40.136292, 43.722874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.807056, 40.081059, 43.757999>,  <38.191891, 39.989002, 43.816540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807056, 40.081059, 43.757999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046809, -0.389311, -0.919916,
		-0.268686, -0.891892, 0.363780,
		-0.962090, 0.230141, -0.146351,
		37.518429, 40.150101, 43.714092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767445, 39.405914, 43.544392>,  <38.191891, 39.989002, 43.816540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767445, 39.405914, 43.544392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.565620, 39.733486, 43.435009>,  <37.444527, 39.930027, 43.369381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.565620, 39.733486, 43.435009>,  <37.767445, 39.405914, 43.544392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565620, 39.733486, 43.435009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024872, -0.302807, -0.952727,
		-0.863016, -0.487512, 0.132417,
		-0.504563, 0.818926, -0.273453,
		37.414253, 39.979164, 43.352974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221420, 39.256371, 43.000637>,  <37.767445, 39.405914, 43.544392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221420, 39.256371, 43.000637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.259243, 39.649017, 42.934319>,  <37.281937, 39.884605, 42.894527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.259243, 39.649017, 42.934319>,  <37.221420, 39.256371, 43.000637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259243, 39.649017, 42.934319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075727, -0.173148, -0.981980,
		-0.992635, 0.080296, -0.090707,
		0.094555, 0.981618, -0.165792,
		37.287609, 39.943504, 42.884583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777138, 39.420700, 42.368137>,  <37.221420, 39.256371, 43.000637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777138, 39.420700, 42.368137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.027744, 39.730892, 42.399376>,  <37.178108, 39.917007, 42.418121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.027744, 39.730892, 42.399376>,  <36.777138, 39.420700, 42.368137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027744, 39.730892, 42.399376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085918, 0.168310, -0.981982,
		-0.774657, 0.608519, 0.172077,
		0.626518, 0.775484, 0.078100,
		37.215698, 39.963539, 42.422806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400425, 40.002636, 42.060669>,  <36.777138, 39.420700, 42.368137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400425, 40.002636, 42.060669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.794209, 40.072800, 42.064018>,  <37.030479, 40.114899, 42.066029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.794209, 40.072800, 42.064018>,  <36.400425, 40.002636, 42.060669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794209, 40.072800, 42.064018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001061, 0.053596, -0.998562,
		-0.175610, 0.983035, 0.052949,
		0.984459, 0.175414, 0.008369,
		37.089546, 40.125423, 42.066528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548954, 40.385738, 41.439133>,  <36.400425, 40.002636, 42.060669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548954, 40.385738, 41.439133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.924957, 40.299263, 41.544697>,  <37.150558, 40.247379, 41.608036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.924957, 40.299263, 41.544697>,  <36.548954, 40.385738, 41.439133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924957, 40.299263, 41.544697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269970, -0.001579, -0.962867,
		0.208576, 0.976351, 0.056879,
		0.940006, -0.216187, 0.263915,
		37.206959, 40.234406, 41.623871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058109, 40.874645, 41.153622>,  <36.548954, 40.385738, 41.439133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058109, 40.874645, 41.153622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.248314, 40.529652, 41.222912>,  <37.362438, 40.322655, 41.264484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.248314, 40.529652, 41.222912>,  <37.058109, 40.874645, 41.153622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248314, 40.529652, 41.222912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397531, 0.035015, -0.916921,
		0.784764, 0.504872, 0.359514,
		0.475516, -0.862484, 0.173224,
		37.390968, 40.270905, 41.274879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636059, 40.962784, 40.705082>,  <37.058109, 40.874645, 41.153622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636059, 40.962784, 40.705082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.613453, 40.575294, 40.801731>,  <37.599888, 40.342800, 40.859722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.613453, 40.575294, 40.801731>,  <37.636059, 40.962784, 40.705082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613453, 40.575294, 40.801731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335162, -0.246374, -0.909377,
		0.940464, 0.029591, 0.338603,
		-0.056513, -0.968723, 0.241624,
		37.596500, 40.284679, 40.874218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130531, 40.634487, 40.295151>,  <37.636059, 40.962784, 40.705082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130531, 40.634487, 40.295151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.929581, 40.320934, 40.441113>,  <37.809010, 40.132805, 40.528690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.929581, 40.320934, 40.441113>,  <38.130531, 40.634487, 40.295151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929581, 40.320934, 40.441113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054218, -0.449754, -0.891505,
		0.862948, -0.428086, 0.268446,
		-0.502375, -0.783878, 0.364904,
		37.778870, 40.085770, 40.550583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593513, 40.023296, 40.181416>,  <38.130531, 40.634487, 40.295151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593513, 40.023296, 40.181416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.198204, 39.963314, 40.192947>,  <37.961018, 39.927326, 40.199867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.198204, 39.963314, 40.192947>,  <38.593513, 40.023296, 40.181416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198204, 39.963314, 40.192947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040449, -0.439146, -0.897505,
		0.147247, -0.885813, 0.440062,
		-0.988272, -0.149954, 0.028833,
		37.901722, 39.918327, 40.201595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530388, 39.388870, 39.972958>,  <38.593513, 40.023296, 40.181416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530388, 39.388870, 39.972958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.192230, 39.559261, 39.844055>,  <37.989334, 39.661495, 39.766712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.192230, 39.559261, 39.844055>,  <38.530388, 39.388870, 39.972958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192230, 39.559261, 39.844055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192711, -0.319440, -0.927804,
		-0.498169, -0.846462, 0.187961,
		-0.845394, 0.425981, -0.322257,
		37.938610, 39.687054, 39.747379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258255, 39.011497, 39.440727>,  <38.530388, 39.388870, 39.972958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258255, 39.011497, 39.440727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.997536, 39.312576, 39.403603>,  <37.841106, 39.493225, 39.381329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.997536, 39.312576, 39.403603>,  <38.258255, 39.011497, 39.440727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997536, 39.312576, 39.403603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034664, -0.151818, -0.987800,
		-0.757604, -0.640625, 0.125045,
		-0.651794, 0.752696, -0.092811,
		37.801998, 39.538383, 39.375759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622028, 38.750076, 39.061760>,  <38.258255, 39.011497, 39.440727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622028, 38.750076, 39.061760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.667564, 39.145256, 39.019802>,  <37.694885, 39.382362, 38.994629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.667564, 39.145256, 39.019802>,  <37.622028, 38.750076, 39.061760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667564, 39.145256, 39.019802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058511, -0.098730, -0.993393,
		-0.991775, 0.119225, 0.046566,
		0.113840, 0.987946, -0.104894,
		37.701717, 39.441639, 38.988335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112953, 38.974857, 38.601948>,  <37.622028, 38.750076, 39.061760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112953, 38.974857, 38.601948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.374172, 39.277287, 38.584560>,  <37.530903, 39.458744, 38.574127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.374172, 39.277287, 38.584560>,  <37.112953, 38.974857, 38.601948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374172, 39.277287, 38.584560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044643, -0.095725, -0.994406,
		-0.756003, 0.647451, -0.096266,
		0.653044, 0.756072, -0.043464,
		37.570084, 39.504108, 38.571522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953896, 39.290428, 37.887772>,  <37.112953, 38.974857, 38.601948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953896, 39.290428, 37.887772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.306229, 39.403549, 38.039646>,  <37.517628, 39.471424, 38.130772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.306229, 39.403549, 38.039646>,  <36.953896, 39.290428, 37.887772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306229, 39.403549, 38.039646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395309, 0.001976, -0.918546,
		-0.260521, 0.959175, -0.110056,
		0.880829, 0.282807, 0.379685,
		37.570477, 39.488392, 38.153553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271626, 39.689110, 37.308937>,  <36.953896, 39.290428, 37.887772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271626, 39.689110, 37.308937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.605904, 39.666832, 37.527481>,  <37.806469, 39.653465, 37.658607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.605904, 39.666832, 37.527481>,  <37.271626, 39.689110, 37.308937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605904, 39.666832, 37.527481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529520, -0.182169, -0.828507,
		0.145675, 0.981688, -0.122745,
		0.835696, -0.055697, 0.546361,
		37.856613, 39.650124, 37.691391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769806, 40.198444, 37.083473>,  <37.271626, 39.689110, 37.308937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769806, 40.198444, 37.083473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.971336, 39.888718, 37.236622>,  <38.092255, 39.702881, 37.328510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.971336, 39.888718, 37.236622>,  <37.769806, 40.198444, 37.083473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971336, 39.888718, 37.236622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566424, -0.038494, -0.823214,
		0.652170, 0.631621, 0.419200,
		0.503823, -0.774321, 0.382871,
		38.122482, 39.656422, 37.351482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512554, 40.325432, 36.843010>,  <37.769806, 40.198444, 37.083473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512554, 40.325432, 36.843010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.510963, 39.944397, 36.964706>,  <38.510010, 39.715775, 37.037724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.510963, 39.944397, 36.964706>,  <38.512554, 40.325432, 36.843010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510963, 39.944397, 36.964706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369623, -0.284099, -0.884684,
		0.929173, 0.108934, 0.353229,
		-0.003980, -0.952586, 0.304242,
		38.509769, 39.658623, 37.055981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187675, 40.065086, 36.707085>,  <38.512554, 40.325432, 36.843010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187675, 40.065086, 36.707085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.949486, 39.744289, 36.725880>,  <38.806572, 39.551811, 36.737156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.949486, 39.744289, 36.725880>,  <39.187675, 40.065086, 36.707085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949486, 39.744289, 36.725880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488960, -0.408220, -0.770892,
		0.637435, -0.436072, 0.635230,
		-0.595478, -0.801996, 0.046992,
		38.770844, 39.503689, 36.739979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664722, 39.515465, 36.487652>,  <39.187675, 40.065086, 36.707085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664722, 39.515465, 36.487652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.299076, 39.354233, 36.470093>,  <39.079689, 39.257496, 36.459557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.299076, 39.354233, 36.470093>,  <39.664722, 39.515465, 36.487652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299076, 39.354233, 36.470093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252452, -0.481084, -0.839539,
		0.317281, -0.778516, 0.541522,
		-0.914112, -0.403078, -0.043899,
		39.024841, 39.233311, 36.456924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615417, 38.731701, 36.578331>,  <39.664722, 39.515465, 36.487652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615417, 38.731701, 36.578331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.301304, 38.840000, 36.355614>,  <39.112835, 38.904980, 36.221985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.301304, 38.840000, 36.355614>,  <39.615417, 38.731701, 36.578331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301304, 38.840000, 36.355614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372516, -0.511690, -0.774213,
		-0.494520, -0.815395, 0.300967,
		-0.785291, 0.270749, -0.556789,
		39.065716, 38.921227, 36.188576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.223129, 38.421795, 36.554001>,  <39.615417, 38.731701, 36.578331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.223129, 38.421795, 36.554001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.884563, 38.416538, 36.341057>,  <39.681423, 38.413383, 36.213291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.884563, 38.416538, 36.341057>,  <40.223129, 38.421795, 36.554001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.884563, 38.416538, 36.341057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024357, -0.997694, 0.063347,
		-0.531969, 0.066585, 0.844142,
		-0.846414, -0.013138, -0.532364,
		39.630638, 38.412598, 36.181347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.766262, 38.053204, 36.033829>,  <40.223129, 38.421795, 36.554001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.766262, 38.053204, 36.033829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.128963, 37.999619, 36.193752>,  <41.346584, 37.967468, 36.289707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.128963, 37.999619, 36.193752>,  <40.766262, 38.053204, 36.033829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.128963, 37.999619, 36.193752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381045, 0.145658, 0.913011,
		-0.180549, -0.980223, 0.081029,
		0.906756, -0.133968, 0.399807,
		41.400990, 37.959427, 36.313694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.611164, 37.625900, 36.629562>,  <40.766262, 38.053204, 36.033829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.611164, 37.625900, 36.629562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.978695, 37.777863, 36.672318>,  <41.199215, 37.869041, 36.697971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.978695, 37.777863, 36.672318>,  <40.611164, 37.625900, 36.629562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.978695, 37.777863, 36.672318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163061, 0.118801, 0.979437,
		0.359397, -0.917364, 0.171106,
		0.918828, 0.379907, 0.106889,
		41.254345, 37.891834, 36.704384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972149, 37.188309, 37.097225>,  <40.611164, 37.625900, 36.629562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.972149, 37.188309, 37.097225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.157242, 37.542866, 37.102676>,  <41.268299, 37.755600, 37.105946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.157242, 37.542866, 37.102676>,  <40.972149, 37.188309, 37.097225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.157242, 37.542866, 37.102676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138351, 0.057023, 0.988740,
		0.875635, -0.459409, 0.149020,
		0.462734, 0.886393, 0.013628,
		41.296062, 37.808784, 37.106766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383347, 37.164410, 37.700558>,  <40.972149, 37.188309, 37.097225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.383347, 37.164410, 37.700558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.334629, 37.555801, 37.633923>,  <41.305401, 37.790634, 37.593941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.334629, 37.555801, 37.633923>,  <41.383347, 37.164410, 37.700558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.334629, 37.555801, 37.633923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074272, 0.158380, 0.984581,
		0.989773, 0.132286, 0.053384,
		-0.121791, 0.978477, -0.166585,
		41.298092, 37.849346, 37.583946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.809757, 37.372379, 38.118057>,  <41.383347, 37.164410, 37.700558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.809757, 37.372379, 38.118057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.578575, 37.691280, 38.048359>,  <41.439865, 37.882622, 38.006542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.578575, 37.691280, 38.048359>,  <41.809757, 37.372379, 38.118057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.578575, 37.691280, 38.048359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134916, 0.117229, 0.983898,
		0.804837, 0.592159, 0.039808,
		-0.577957, 0.797249, -0.174242,
		41.405190, 37.930454, 37.996086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.999554, 37.882660, 38.581459>,  <41.809757, 37.372379, 38.118057>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.999554, 37.882660, 38.581459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.630356, 37.983822, 38.465450>,  <41.408836, 38.044518, 38.395844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.630356, 37.983822, 38.465450>,  <41.999554, 37.882660, 38.581459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.630356, 37.983822, 38.465450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256228, 0.158376, 0.953553,
		0.287091, 0.954440, -0.081379,
		-0.922998, 0.252905, -0.290023,
		41.353455, 38.059692, 38.378445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.852592, 38.442871, 38.953823>,  <41.999554, 37.882660, 38.581459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.852592, 38.442871, 38.953823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.494648, 38.311695, 38.832714>,  <41.279881, 38.232990, 38.760048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.494648, 38.311695, 38.832714>,  <41.852592, 38.442871, 38.953823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.494648, 38.311695, 38.832714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357662, 0.121071, 0.925970,
		-0.267008, 0.936907, -0.225634,
		-0.894866, -0.327942, -0.302769,
		41.226189, 38.213314, 38.741882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.427128, 38.889748, 39.245789>,  <41.852592, 38.442871, 38.953823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.427128, 38.889748, 39.245789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.184139, 38.577538, 39.186787>,  <41.038345, 38.390213, 39.151386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.184139, 38.577538, 39.186787>,  <41.427128, 38.889748, 39.245789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.184139, 38.577538, 39.186787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214648, -0.017489, 0.976535,
		-0.764787, 0.624883, -0.156913,
		-0.607476, -0.780523, -0.147505,
		41.001896, 38.343380, 39.142536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771519, 39.136429, 39.556335>,  <41.427128, 38.889748, 39.245789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771519, 39.136429, 39.556335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.718166, 38.742794, 39.509377>,  <40.686153, 38.506615, 39.481201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.718166, 38.742794, 39.509377>,  <40.771519, 39.136429, 39.556335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718166, 38.742794, 39.509377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535016, -0.028210, 0.844371,
		-0.834246, 0.175432, -0.522740,
		-0.133383, -0.984087, -0.117393,
		40.678150, 38.447567, 39.474159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091248, 39.042828, 39.558952>,  <40.771519, 39.136429, 39.556335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.091248, 39.042828, 39.558952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.273846, 38.706711, 39.675926>,  <40.383404, 38.505039, 39.746113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.273846, 38.706711, 39.675926>,  <40.091248, 39.042828, 39.558952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273846, 38.706711, 39.675926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577832, -0.030067, 0.815602,
		-0.676553, -0.541296, -0.499274,
		0.456494, -0.840294, 0.292437,
		40.410793, 38.454624, 39.763657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648701, 38.776764, 40.043148>,  <40.091248, 39.042828, 39.558952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648701, 38.776764, 40.043148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.943962, 38.522171, 40.132607>,  <40.121120, 38.369415, 40.186279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.943962, 38.522171, 40.132607>,  <39.648701, 38.776764, 40.043148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943962, 38.522171, 40.132607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208072, 0.100551, 0.972931,
		-0.641739, -0.764711, -0.058211,
		0.738158, -0.636480, 0.223643,
		40.165409, 38.331226, 40.199699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351364, 38.246109, 40.329777>,  <39.648701, 38.776764, 40.043148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351364, 38.246109, 40.329777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.730957, 38.230537, 40.454945>,  <39.958714, 38.221195, 40.530045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.730957, 38.230537, 40.454945>,  <39.351364, 38.246109, 40.329777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730957, 38.230537, 40.454945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313622, -0.013253, 0.949456,
		-0.032831, -0.999153, -0.024791,
		0.948980, -0.038946, 0.312921,
		40.015652, 38.218861, 40.548820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540401, 37.632359, 40.615005>,  <39.351364, 38.246109, 40.329777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540401, 37.632359, 40.615005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.710438, 37.959347, 40.770458>,  <39.812458, 38.155540, 40.863728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.710438, 37.959347, 40.770458>,  <39.540401, 37.632359, 40.615005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710438, 37.959347, 40.770458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322757, -0.264232, 0.908851,
		0.845651, -0.511777, 0.151523,
		0.425092, 0.817475, 0.388628,
		39.837967, 38.204590, 40.887047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702839, 37.432865, 41.245556>,  <39.540401, 37.632359, 40.615005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.702839, 37.432865, 41.245556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.786854, 37.823681, 41.259903>,  <39.837261, 38.058170, 41.268513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.786854, 37.823681, 41.259903>,  <39.702839, 37.432865, 41.245556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786854, 37.823681, 41.259903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199481, 0.006907, 0.979877,
		0.957128, -0.212962, 0.196351,
		0.210033, 0.977036, 0.035871,
		39.849865, 38.116791, 41.270664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272926, 37.511250, 41.705143>,  <39.702839, 37.432865, 41.245556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272926, 37.511250, 41.705143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.086685, 37.865196, 41.699139>,  <39.974941, 38.077564, 41.695538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.086685, 37.865196, 41.699139>,  <40.272926, 37.511250, 41.705143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086685, 37.865196, 41.699139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007916, 0.012794, 0.999887,
		0.884959, 0.465668, 0.001047,
		-0.465602, 0.884867, -0.015008,
		39.947006, 38.130657, 41.694637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605122, 38.039322, 42.141537>,  <40.272926, 37.511250, 41.705143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605122, 38.039322, 42.141537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.224445, 38.156624, 42.105118>,  <39.996040, 38.227005, 42.083267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.224445, 38.156624, 42.105118>,  <40.605122, 38.039322, 42.141537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.224445, 38.156624, 42.105118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059671, 0.114245, 0.991659,
		0.301213, 0.949183, -0.091227,
		-0.951688, 0.293257, -0.091051,
		39.938938, 38.244602, 42.077801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630520, 38.586807, 42.605064>,  <40.605122, 38.039322, 42.141537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.630520, 38.586807, 42.605064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.241158, 38.539047, 42.526855>,  <40.007542, 38.510391, 42.479931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.241158, 38.539047, 42.526855>,  <40.630520, 38.586807, 42.605064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241158, 38.539047, 42.526855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227731, 0.411159, 0.882659,
		-0.024994, 0.903710, -0.427414,
		-0.973403, -0.119397, -0.195527,
		39.949135, 38.503227, 42.468197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272400, 39.209255, 42.720757>,  <40.630520, 38.586807, 42.605064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272400, 39.209255, 42.720757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.001717, 38.918896, 42.769989>,  <39.839306, 38.744682, 42.799526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.001717, 38.918896, 42.769989>,  <40.272400, 39.209255, 42.720757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001717, 38.918896, 42.769989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138583, 0.289761, 0.947013,
		-0.723094, 0.623792, -0.296679,
		-0.676705, -0.725894, 0.123078,
		39.798706, 38.701126, 42.806911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.628777, 39.481274, 42.918610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.554993, 39.110058, 43.048054>,  <39.510723, 38.887329, 43.125721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.554993, 39.110058, 43.048054>,  <39.628777, 39.481274, 42.918610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.554993, 39.110058, 43.048054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377105, 0.370889, 0.848666,
		-0.907616, 0.034507, -0.418380,
		-0.184457, -0.928036, 0.323612,
		39.499657, 38.831646, 43.145138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975269, 39.533813, 43.180275>,  <39.628777, 39.481274, 42.918610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975269, 39.533813, 43.180275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.119457, 39.203842, 43.354427>,  <39.205971, 39.005859, 43.458920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.119457, 39.203842, 43.354427>,  <38.975269, 39.533813, 43.180275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119457, 39.203842, 43.354427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470179, 0.242426, 0.848623,
		-0.805599, -0.510611, -0.300476,
		0.360473, -0.824928, 0.435377,
		39.227600, 38.956364, 43.485039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531300, 39.365284, 43.708103>,  <38.975269, 39.533813, 43.180275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531300, 39.365284, 43.708103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.816696, 39.113132, 43.830444>,  <38.987934, 38.961842, 43.903851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.816696, 39.113132, 43.830444>,  <38.531300, 39.365284, 43.708103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816696, 39.113132, 43.830444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351138, 0.056048, 0.934645,
		-0.606326, -0.774259, -0.181361,
		0.713493, -0.630382, 0.305855,
		39.030743, 38.924019, 43.922199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202171, 38.784916, 44.170734>,  <38.531300, 39.365284, 43.708103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202171, 38.784916, 44.170734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.591854, 38.801258, 44.259502>,  <38.825665, 38.811066, 44.312763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.591854, 38.801258, 44.259502>,  <38.202171, 38.784916, 44.170734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591854, 38.801258, 44.259502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218190, -0.080293, 0.972598,
		0.057561, -0.995933, -0.069307,
		0.974207, 0.040862, 0.221925,
		38.884117, 38.813515, 44.326080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298717, 38.307316, 44.632492>,  <38.202171, 38.784916, 44.170734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298717, 38.307316, 44.632492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.611481, 38.551842, 44.681343>,  <38.799137, 38.698559, 44.710651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.611481, 38.551842, 44.681343>,  <38.298717, 38.307316, 44.632492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611481, 38.551842, 44.681343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236109, 0.109099, 0.965583,
		0.576953, -0.783830, 0.229643,
		0.781906, 0.611317, 0.122124,
		38.846054, 38.735237, 44.717979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582600, 38.096737, 45.248569>,  <38.298717, 38.307316, 44.632492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582600, 38.096737, 45.248569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.726685, 38.466034, 45.195095>,  <38.813133, 38.687611, 45.163010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.726685, 38.466034, 45.195095>,  <38.582600, 38.096737, 45.248569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726685, 38.466034, 45.195095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158172, 0.201679, 0.966596,
		0.919364, -0.327032, 0.218678,
		0.360210, 0.923242, -0.133690,
		38.834747, 38.743008, 45.154987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089035, 38.234791, 45.826439>,  <38.582600, 38.096737, 45.248569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089035, 38.234791, 45.826439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.966484, 38.583302, 45.673069>,  <38.892952, 38.792408, 45.581047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.966484, 38.583302, 45.673069>,  <39.089035, 38.234791, 45.826439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966484, 38.583302, 45.673069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100571, 0.370910, 0.923207,
		0.946581, 0.321414, -0.026015,
		-0.306381, 0.871274, -0.383421,
		38.874569, 38.844685, 45.558044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497540, 38.732357, 46.160870>,  <39.089035, 38.234791, 45.826439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497540, 38.732357, 46.160870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.181122, 38.939491, 46.030582>,  <38.991272, 39.063774, 45.952408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.181122, 38.939491, 46.030582>,  <39.497540, 38.732357, 46.160870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.181122, 38.939491, 46.030582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095119, 0.421845, 0.901665,
		0.604320, 0.744239, -0.284441,
		-0.791044, 0.517838, -0.325720,
		38.943810, 39.094841, 45.932865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635475, 39.465229, 46.357098>,  <39.497540, 38.732357, 46.160870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635475, 39.465229, 46.357098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.250084, 39.385666, 46.285374>,  <39.018848, 39.337929, 46.242340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.250084, 39.385666, 46.285374>,  <39.635475, 39.465229, 46.357098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250084, 39.385666, 46.285374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255849, 0.485949, 0.835700,
		-0.079089, 0.851053, -0.519089,
		-0.963476, -0.198903, -0.179308,
		38.961040, 39.325996, 46.231583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331699, 40.022141, 46.581264>,  <39.635475, 39.465229, 46.357098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331699, 40.022141, 46.581264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.035763, 39.753197, 46.571735>,  <38.858200, 39.591831, 46.566017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.035763, 39.753197, 46.571735>,  <39.331699, 40.022141, 46.581264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035763, 39.753197, 46.571735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232466, 0.222249, 0.946871,
		-0.631343, 0.706073, -0.320730,
		-0.739842, -0.672359, -0.023823,
		38.813808, 39.551491, 46.564587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726990, 40.298077, 46.860939>,  <39.331699, 40.022141, 46.581264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726990, 40.298077, 46.860939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.700817, 39.900135, 46.891884>,  <38.685112, 39.661369, 46.910450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.700817, 39.900135, 46.891884>,  <38.726990, 40.298077, 46.860939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700817, 39.900135, 46.891884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325525, 0.094571, 0.940792,
		-0.943267, 0.036373, -0.330038,
		-0.065432, -0.994853, 0.077366,
		38.681187, 39.601681, 46.915092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070072, 40.144672, 47.301506>,  <38.726990, 40.298077, 46.860939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070072, 40.144672, 47.301506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.286259, 39.808701, 47.321159>,  <38.415970, 39.607117, 47.332951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.286259, 39.808701, 47.321159>,  <38.070072, 40.144672, 47.301506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286259, 39.808701, 47.321159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430225, -0.225712, 0.874048,
		-0.723048, -0.493534, -0.483349,
		0.540470, -0.839928, 0.049131,
		38.448399, 39.556721, 47.335899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581470, 39.624371, 47.420628>,  <38.070072, 40.144672, 47.301506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581470, 39.624371, 47.420628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.928551, 39.465275, 47.539894>,  <38.136799, 39.369820, 47.611454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.928551, 39.465275, 47.539894>,  <37.581470, 39.624371, 47.420628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928551, 39.465275, 47.539894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422016, -0.272457, 0.864679,
		-0.262628, -0.876135, -0.404245,
		0.867715, -0.397687, 0.298189,
		38.188862, 39.345955, 47.629345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251961, 39.133793, 47.819927>,  <37.581470, 39.624371, 47.420628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251961, 39.133793, 47.819927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.639839, 39.130268, 47.917595>,  <37.872566, 39.128155, 47.976196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.639839, 39.130268, 47.917595>,  <37.251961, 39.133793, 47.819927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639839, 39.130268, 47.917595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242548, -0.155222, 0.957641,
		0.029465, -0.987840, -0.152654,
		0.969692, -0.008809, 0.244173,
		37.930748, 39.127625, 47.990845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390854, 38.511368, 48.208736>,  <37.251961, 39.133793, 47.819927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390854, 38.511368, 48.208736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.668110, 38.779125, 48.315678>,  <37.834461, 38.939781, 48.379841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.668110, 38.779125, 48.315678>,  <37.390854, 38.511368, 48.208736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668110, 38.779125, 48.315678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216887, -0.160034, 0.962990,
		0.687403, -0.725468, 0.034257,
		0.693136, 0.669392, 0.267352,
		37.876049, 38.979942, 48.395882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789749, 38.261860, 48.697857>,  <37.390854, 38.511368, 48.208736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789749, 38.261860, 48.697857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.809147, 38.657040, 48.756660>,  <37.820786, 38.894146, 48.791943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.809147, 38.657040, 48.756660>,  <37.789749, 38.261860, 48.697857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809147, 38.657040, 48.756660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285111, -0.127364, 0.949995,
		0.957267, -0.087979, 0.275498,
		0.048491, 0.987946, 0.147005,
		37.823696, 38.953423, 48.800762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168083, 38.256115, 49.331734>,  <37.789749, 38.261860, 48.697857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168083, 38.256115, 49.331734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.012154, 38.622589, 49.294552>,  <37.918594, 38.842472, 49.272243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.012154, 38.622589, 49.294552>,  <38.168083, 38.256115, 49.331734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012154, 38.622589, 49.294552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319991, -0.040113, 0.946571,
		0.863504, 0.398746, 0.308808,
		-0.389828, 0.916184, -0.092957,
		37.895206, 38.897446, 49.266666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324905, 38.565125, 49.913410>,  <38.168083, 38.256115, 49.331734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324905, 38.565125, 49.913410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.043655, 38.822369, 49.792061>,  <37.874905, 38.976715, 49.719254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.043655, 38.822369, 49.792061>,  <38.324905, 38.565125, 49.913410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043655, 38.822369, 49.792061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271691, 0.151293, 0.950418,
		0.657117, 0.750683, 0.068349,
		-0.703122, 0.643106, -0.303371,
		37.832718, 39.015301, 49.701050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328117, 39.220299, 50.376888>,  <38.324905, 38.565125, 49.913410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328117, 39.220299, 50.376888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.967487, 39.182674, 50.207977>,  <37.751110, 39.160099, 50.106628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.967487, 39.182674, 50.207977>,  <38.328117, 39.220299, 50.376888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967487, 39.182674, 50.207977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431569, 0.127226, 0.893063,
		-0.030277, 0.987404, -0.155297,
		-0.901572, -0.094061, -0.422281,
		37.697018, 39.154457, 50.081291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006516, 39.683712, 50.726688>,  <38.328117, 39.220299, 50.376888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006516, 39.683712, 50.726688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.708996, 39.487709, 50.544846>,  <37.530483, 39.370110, 50.435741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.708996, 39.487709, 50.544846>,  <38.006516, 39.683712, 50.726688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708996, 39.487709, 50.544846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583450, 0.144127, 0.799258,
		-0.326120, 0.859723, -0.393093,
		-0.743796, -0.490004, -0.454602,
		37.485855, 39.340706, 50.408466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445045, 40.048447, 50.765194>,  <38.006516, 39.683712, 50.726688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445045, 40.048447, 50.765194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.284050, 39.684494, 50.724979>,  <37.187450, 39.466122, 50.700851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.284050, 39.684494, 50.724979>,  <37.445045, 40.048447, 50.765194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284050, 39.684494, 50.724979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633009, 0.197298, 0.748581,
		-0.661287, 0.364939, -0.655377,
		-0.402491, -0.909886, -0.100539,
		37.163303, 39.411530, 50.694817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802933, 40.144688, 50.865948>,  <37.445045, 40.048447, 50.765194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802933, 40.144688, 50.865948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.826508, 39.750622, 50.930412>,  <36.840652, 39.514183, 50.969090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.826508, 39.750622, 50.930412>,  <36.802933, 40.144688, 50.865948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826508, 39.750622, 50.930412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556418, 0.101617, 0.824665,
		-0.828810, -0.138275, -0.542176,
		0.058936, -0.985167, 0.161160,
		36.844189, 39.455070, 50.978760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127197, 39.945084, 51.002182>,  <36.802933, 40.144688, 50.865948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127197, 39.945084, 51.002182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.389973, 39.689720, 51.162613>,  <36.547638, 39.536503, 51.258873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.389973, 39.689720, 51.162613>,  <36.127197, 39.945084, 51.002182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389973, 39.689720, 51.162613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443347, 0.103175, 0.890392,
		-0.609817, -0.762750, -0.215258,
		0.656937, -0.638410, 0.401081,
		36.587055, 39.498196, 51.282936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803997, 39.270153, 51.301567>,  <36.127197, 39.945084, 51.002182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803997, 39.270153, 51.301567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.129124, 39.421711, 51.478550>,  <36.324200, 39.512646, 51.584740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.129124, 39.421711, 51.478550>,  <35.803997, 39.270153, 51.301567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129124, 39.421711, 51.478550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390955, -0.208244, 0.896542,
		0.431835, -0.901705, -0.021133,
		0.812818, 0.378896, 0.442453,
		36.372971, 39.535381, 51.611286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190464, 38.905556, 50.963863>,  <35.803997, 39.270153, 51.301567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190464, 38.905556, 50.963863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.841331, 39.100597, 50.971870>,  <34.631851, 39.217625, 50.976673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.841331, 39.100597, 50.971870>,  <35.190464, 38.905556, 50.963863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841331, 39.100597, 50.971870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164626, 0.332799, -0.928516,
		-0.459412, -0.807145, -0.370752,
		-0.872834, 0.487607, 0.020015,
		34.579483, 39.246880, 50.977875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890518, 38.843311, 50.338547>,  <35.190464, 38.905556, 50.963863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890518, 38.843311, 50.338547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.686680, 39.161545, 50.469608>,  <34.564377, 39.352486, 50.548244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.686680, 39.161545, 50.469608>,  <34.890518, 38.843311, 50.338547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686680, 39.161545, 50.469608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109335, 0.437604, -0.892496,
		-0.853437, -0.418990, -0.309987,
		-0.509598, 0.795582, 0.327657,
		34.533802, 39.400219, 50.567905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424419, 39.055016, 49.872082>,  <34.890518, 38.843311, 50.338547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424419, 39.055016, 49.872082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.464363, 39.388336, 50.089569>,  <34.488327, 39.588329, 50.220062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.464363, 39.388336, 50.089569>,  <34.424419, 39.055016, 49.872082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464363, 39.388336, 50.089569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186711, 0.521053, -0.832853,
		-0.977327, 0.184683, -0.103557,
		0.099855, 0.833305, 0.543721,
		34.494320, 39.638329, 50.252686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037518, 39.536556, 49.506046>,  <34.424419, 39.055016, 49.872082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037518, 39.536556, 49.506046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.275288, 39.755466, 49.741722>,  <34.417950, 39.886814, 49.883129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.275288, 39.755466, 49.741722>,  <34.037518, 39.536556, 49.506046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275288, 39.755466, 49.741722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183166, 0.621283, -0.761878,
		-0.783014, 0.560798, 0.269062,
		0.594423, 0.547278, 0.589193,
		34.453613, 39.919651, 49.918480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985889, 40.180252, 49.245628>,  <34.037518, 39.536556, 49.506046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985889, 40.180252, 49.245628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.325207, 40.187546, 49.457314>,  <34.528797, 40.191921, 49.584324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.325207, 40.187546, 49.457314>,  <33.985889, 40.180252, 49.245628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325207, 40.187546, 49.457314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474039, 0.419215, -0.774303,
		-0.235969, 0.907704, 0.346976,
		0.848296, 0.018231, 0.529209,
		34.579697, 40.193016, 49.616077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264225, 40.748608, 48.980320>,  <33.985889, 40.180252, 49.245628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264225, 40.748608, 48.980320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.554043, 40.538799, 49.159164>,  <34.727936, 40.412914, 49.266472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.554043, 40.538799, 49.159164>,  <34.264225, 40.748608, 48.980320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554043, 40.538799, 49.159164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618237, 0.207871, -0.758006,
		0.304651, 0.825631, 0.474892,
		0.724549, -0.524523, 0.447107,
		34.771408, 40.381443, 49.293297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929928, 41.215172, 49.059269>,  <34.264225, 40.748608, 48.980320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929928, 41.215172, 49.059269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.091007, 40.849415, 49.075859>,  <35.187653, 40.629959, 49.085812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.091007, 40.849415, 49.075859>,  <34.929928, 41.215172, 49.059269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091007, 40.849415, 49.075859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595626, 0.227367, -0.770412,
		0.695031, 0.334943, 0.636196,
		0.402694, -0.914395, 0.041474,
		35.211815, 40.575096, 49.088303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617859, 41.316441, 48.843903>,  <34.929928, 41.215172, 49.059269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617859, 41.316441, 48.843903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.563427, 40.920448, 48.828854>,  <35.530766, 40.682854, 48.819824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.563427, 40.920448, 48.828854>,  <35.617859, 41.316441, 48.843903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563427, 40.920448, 48.828854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569076, -0.047025, -0.820939,
		0.810946, -0.133128, 0.569775,
		-0.136084, -0.989983, -0.037625,
		35.522602, 40.623455, 48.817566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288155, 41.038330, 48.644276>,  <35.617859, 41.316441, 48.843903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288155, 41.038330, 48.644276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.015083, 40.768269, 48.532478>,  <35.851238, 40.606232, 48.465401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.015083, 40.768269, 48.532478>,  <36.288155, 41.038330, 48.644276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015083, 40.768269, 48.532478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372053, 0.008040, -0.928177,
		0.628906, -0.737636, 0.245703,
		-0.682681, -0.675151, -0.279496,
		35.810280, 40.565723, 48.448631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609337, 40.410439, 48.335121>,  <36.288155, 41.038330, 48.644276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609337, 40.410439, 48.335121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.238758, 40.374023, 48.189022>,  <36.016411, 40.352173, 48.101364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.238758, 40.374023, 48.189022>,  <36.609337, 40.410439, 48.335121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238758, 40.374023, 48.189022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370376, -0.047305, -0.927676,
		0.067179, -0.994723, 0.077545,
		-0.926449, -0.091041, -0.365244,
		35.960823, 40.346710, 48.079449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637981, 39.784157, 47.933460>,  <36.609337, 40.410439, 48.335121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637981, 39.784157, 47.933460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.328537, 39.999111, 47.799149>,  <36.142872, 40.128082, 47.718563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.328537, 39.999111, 47.799149>,  <36.637981, 39.784157, 47.933460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328537, 39.999111, 47.799149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390173, -0.013565, -0.920642,
		-0.499295, -0.843227, -0.199180,
		-0.773608, 0.537387, -0.335777,
		36.096455, 40.160328, 47.698414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364838, 39.429890, 47.370319>,  <36.637981, 39.784157, 47.933460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364838, 39.429890, 47.370319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.223522, 39.801239, 47.324165>,  <36.138733, 40.024048, 47.296471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.223522, 39.801239, 47.324165>,  <36.364838, 39.429890, 47.370319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223522, 39.801239, 47.324165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322224, 0.004962, -0.946650,
		-0.878269, -0.371626, -0.300896,
		-0.353293, 0.928369, -0.115389,
		36.117535, 40.079750, 47.289547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090076, 39.422901, 46.744610>,  <36.364838, 39.429890, 47.370319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090076, 39.422901, 46.744610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.128094, 39.816978, 46.801693>,  <36.150902, 40.053425, 46.835941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.128094, 39.816978, 46.801693>,  <36.090076, 39.422901, 46.744610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128094, 39.816978, 46.801693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362680, 0.099234, -0.926615,
		-0.927055, 0.139823, -0.347878,
		0.095041, 0.985191, 0.142707,
		36.156605, 40.112537, 46.844505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747723, 39.748394, 46.240761>,  <36.090076, 39.422901, 46.744610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747723, 39.748394, 46.240761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.985020, 40.051723, 46.348843>,  <36.127399, 40.233719, 46.413692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.985020, 40.051723, 46.348843>,  <35.747723, 39.748394, 46.240761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985020, 40.051723, 46.348843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259218, 0.137834, -0.955933,
		-0.762148, 0.637143, -0.114801,
		0.593243, 0.758321, 0.270208,
		36.162994, 40.279221, 46.429905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471958, 40.294930, 45.840034>,  <35.747723, 39.748394, 46.240761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471958, 40.294930, 45.840034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.852604, 40.353817, 45.947926>,  <36.080994, 40.389149, 46.012661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.852604, 40.353817, 45.947926>,  <35.471958, 40.294930, 45.840034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852604, 40.353817, 45.947926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266985, 0.038452, -0.962933,
		-0.152137, 0.988356, -0.002715,
		0.951616, 0.147223, 0.269726,
		36.138088, 40.397984, 46.028843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724091, 40.874012, 45.453274>,  <35.471958, 40.294930, 45.840034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724091, 40.874012, 45.453274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.055264, 40.669235, 45.544876>,  <36.253967, 40.546368, 45.599838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.055264, 40.669235, 45.544876>,  <35.724091, 40.874012, 45.453274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055264, 40.669235, 45.544876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421463, 0.298562, -0.856288,
		0.369997, 0.805467, 0.462953,
		0.827932, -0.511941, 0.229007,
		36.303642, 40.515652, 45.613579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299099, 41.182167, 45.031521>,  <35.724091, 40.874012, 45.453274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299099, 41.182167, 45.031521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.495239, 40.854519, 45.150581>,  <36.612923, 40.657928, 45.222019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.495239, 40.854519, 45.150581>,  <36.299099, 41.182167, 45.031521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495239, 40.854519, 45.150581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553938, 0.029255, -0.832044,
		0.672835, 0.572877, 0.468086,
		0.490353, -0.819119, 0.297654,
		36.642345, 40.608784, 45.239876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096020, 41.332840, 45.071640>,  <36.299099, 41.182167, 45.031521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096020, 41.332840, 45.071640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.022259, 40.946617, 44.998222>,  <36.978001, 40.714882, 44.954174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.022259, 40.946617, 44.998222>,  <37.096020, 41.332840, 45.071640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022259, 40.946617, 44.998222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558708, 0.050652, -0.827816,
		0.808604, -0.255199, 0.530126,
		-0.184406, -0.965561, -0.183539,
		36.966938, 40.656948, 44.943161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793190, 41.045807, 44.790806>,  <37.096020, 41.332840, 45.071640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793190, 41.045807, 44.790806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.509796, 40.787056, 44.677956>,  <37.339760, 40.631805, 44.610245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.509796, 40.787056, 44.677956>,  <37.793190, 41.045807, 44.790806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509796, 40.787056, 44.677956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397783, -0.035828, -0.916779,
		0.582934, -0.761754, 0.282700,
		-0.708489, -0.646875, -0.282128,
		37.297249, 40.592995, 44.593319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063213, 40.604599, 44.301773>,  <37.793190, 41.045807, 44.790806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063213, 40.604599, 44.301773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.695644, 40.469887, 44.219635>,  <37.475105, 40.389061, 44.170353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.695644, 40.469887, 44.219635>,  <38.063213, 40.604599, 44.301773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695644, 40.469887, 44.219635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273942, -0.170311, -0.946546,
		0.283803, -0.926053, 0.248760,
		-0.918919, -0.336778, -0.205350,
		37.419968, 40.368855, 44.158031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.401409, 43.532654, 31.105530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.192181, 43.764019, 31.355915>,  <44.066643, 43.902840, 31.506145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.192181, 43.764019, 31.355915>,  <44.401409, 43.532654, 31.105530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.192181, 43.764019, 31.355915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297556, -0.812172, 0.501834,
		0.798657, 0.076237, 0.596937,
		-0.523074, 0.578415, 0.625962,
		44.035259, 43.937542, 31.543703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.677399, 43.531685, 31.854324>,  <44.401409, 43.532654, 31.105530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.677399, 43.531685, 31.854324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.291180, 43.634945, 31.867428>,  <44.059448, 43.696903, 31.875290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.291180, 43.634945, 31.867428>,  <44.677399, 43.531685, 31.854324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.291180, 43.634945, 31.867428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206139, -0.835615, 0.509171,
		0.158818, 0.484876, 0.860042,
		-0.965548, 0.258154, 0.032759,
		44.001514, 43.712391, 31.877254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.509552, 43.264347, 32.523109>,  <44.677399, 43.531685, 31.854324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.509552, 43.264347, 32.523109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.156742, 43.387630, 32.380539>,  <43.945057, 43.461601, 32.294998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.156742, 43.387630, 32.380539>,  <44.509552, 43.264347, 32.523109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.156742, 43.387630, 32.380539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466132, -0.681382, 0.564305,
		-0.068940, 0.663873, 0.744661,
		-0.882025, 0.308207, -0.356427,
		43.892136, 43.480091, 32.273609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.136929, 43.462921, 33.056526>,  <44.509552, 43.264347, 32.523109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.136929, 43.462921, 33.056526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.873360, 43.351089, 32.777195>,  <43.715218, 43.283989, 32.609596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.873360, 43.351089, 32.777195>,  <44.136929, 43.462921, 33.056526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.873360, 43.351089, 32.777195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378175, -0.679381, 0.628829,
		-0.650235, 0.678438, 0.341929,
		-0.658922, -0.279578, -0.698325,
		43.675682, 43.267216, 32.567696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.559910, 43.312096, 33.421299>,  <44.136929, 43.462921, 33.056526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.559910, 43.312096, 33.421299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.519001, 43.113575, 33.076458>,  <43.494453, 42.994461, 32.869553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.519001, 43.113575, 33.076458>,  <43.559910, 43.312096, 33.421299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.519001, 43.113575, 33.076458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609113, -0.653933, 0.448724,
		-0.786461, 0.571012, -0.235425,
		-0.102275, -0.496304, -0.862103,
		43.488319, 42.964684, 32.817825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.861027, 43.280701, 33.279953>,  <43.559910, 43.312096, 33.421299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.861027, 43.280701, 33.279953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.988636, 42.962715, 33.073551>,  <43.065201, 42.771923, 32.949711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.988636, 42.962715, 33.073551>,  <42.861027, 43.280701, 33.279953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.988636, 42.962715, 33.073551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695963, -0.566074, 0.441810,
		-0.643319, 0.218174, -0.733853,
		0.319024, -0.794959, -0.516007,
		43.084343, 42.724228, 32.918751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.268951, 42.844597, 33.243580>,  <42.861027, 43.280701, 33.279953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.268951, 42.844597, 33.243580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.546028, 42.582775, 33.122429>,  <42.712273, 42.425682, 33.049740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.546028, 42.582775, 33.122429>,  <42.268951, 42.844597, 33.243580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.546028, 42.582775, 33.122429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562416, -0.753118, 0.341323,
		-0.451517, -0.066090, -0.889812,
		0.692691, -0.654557, -0.302875,
		42.753834, 42.386410, 33.031567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919422, 42.171219, 32.909782>,  <42.268951, 42.844597, 33.243580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.919422, 42.171219, 32.909782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.285015, 42.052834, 33.020809>,  <42.504372, 41.981800, 33.087425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.285015, 42.052834, 33.020809>,  <41.919422, 42.171219, 32.909782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.285015, 42.052834, 33.020809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374469, -0.878674, 0.296148,
		0.156240, -0.374614, -0.913922,
		0.913981, -0.295966, 0.277566,
		42.559208, 41.964043, 33.104080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.960896, 41.479923, 32.699486>,  <41.919422, 42.171219, 32.909782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.960896, 41.479923, 32.699486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.253513, 41.531715, 32.967239>,  <42.429085, 41.562790, 33.127892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.253513, 41.531715, 32.967239>,  <41.960896, 41.479923, 32.699486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.253513, 41.531715, 32.967239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149645, -0.927366, 0.342927,
		0.665170, -0.351036, -0.659032,
		0.731543, 0.129484, 0.669387,
		42.472977, 41.570560, 33.168056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.477222, 40.934803, 32.532784>,  <41.960896, 41.479923, 32.699486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.477222, 40.934803, 32.532784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.522621, 41.052887, 32.912251>,  <42.549862, 41.123737, 33.139931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.522621, 41.052887, 32.912251>,  <42.477222, 40.934803, 32.532784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.522621, 41.052887, 32.912251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024610, -0.953708, 0.299724,
		0.993233, -0.057366, -0.100981,
		0.113500, 0.295211, 0.948667,
		42.556671, 41.141449, 33.196850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.008373, 40.446350, 32.794273>,  <42.477222, 40.934803, 32.532784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.008373, 40.446350, 32.794273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.801132, 40.618145, 33.090141>,  <42.676788, 40.721222, 33.267662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.801132, 40.618145, 33.090141>,  <43.008373, 40.446350, 32.794273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.801132, 40.618145, 33.090141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029689, -0.873298, 0.486282,
		0.854805, 0.229982, 0.465206,
		-0.518099, 0.429488, 0.739671,
		42.645702, 40.746990, 33.312042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.379284, 40.234009, 33.437031>,  <43.008373, 40.446350, 32.794273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.379284, 40.234009, 33.437031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.994370, 40.312717, 33.512165>,  <42.763420, 40.359943, 33.557247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.994370, 40.312717, 33.512165>,  <43.379284, 40.234009, 33.437031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.994370, 40.312717, 33.512165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165345, -0.971382, 0.170521,
		0.216018, 0.133032, 0.967284,
		-0.962288, 0.196771, 0.187840,
		42.705685, 40.371750, 33.568516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.227795, 39.939629, 34.044697>,  <43.379284, 40.234009, 33.437031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.227795, 39.939629, 34.044697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.855400, 39.978657, 33.903992>,  <42.631962, 40.002075, 33.819569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.855400, 39.978657, 33.903992>,  <43.227795, 39.939629, 34.044697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.855400, 39.978657, 33.903992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159834, -0.975293, 0.152498,
		-0.328196, 0.198198, 0.923582,
		-0.930989, 0.097570, -0.351766,
		42.576103, 40.007927, 33.798462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.807274, 39.485092, 34.525959>,  <43.227795, 39.939629, 34.044697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.807274, 39.485092, 34.525959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.596050, 39.547699, 34.192097>,  <42.469315, 39.585262, 33.991779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.596050, 39.547699, 34.192097>,  <42.807274, 39.485092, 34.525959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.596050, 39.547699, 34.192097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148656, -0.984729, -0.090611,
		-0.836095, 0.076229, 0.543262,
		-0.528059, 0.156518, -0.834659,
		42.437634, 39.594654, 33.941700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.252193, 39.053413, 34.577217>,  <42.807274, 39.485092, 34.525959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.252193, 39.053413, 34.577217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.257023, 39.144428, 34.187740>,  <42.259922, 39.199036, 33.954052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.257023, 39.144428, 34.187740>,  <42.252193, 39.053413, 34.577217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257023, 39.144428, 34.187740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090071, -0.969560, -0.227684,
		-0.995862, 0.090451, 0.008786,
		0.012075, 0.227534, -0.973695,
		42.260647, 39.212688, 33.895630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.674473, 38.826447, 34.228771>,  <42.252193, 39.053413, 34.577217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.674473, 38.826447, 34.228771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.957073, 38.859104, 33.947575>,  <42.126633, 38.878696, 33.778858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.957073, 38.859104, 33.947575>,  <41.674473, 38.826447, 34.228771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.957073, 38.859104, 33.947575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115759, -0.993277, 0.000982,
		-0.698182, -0.082071, -0.711200,
		0.706500, 0.081642, -0.702989,
		42.169022, 38.883598, 33.736679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.498634, 38.278919, 33.763641>,  <41.674473, 38.826447, 34.228771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.498634, 38.278919, 33.763641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.868626, 38.390423, 33.660336>,  <42.090622, 38.457325, 33.598351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.868626, 38.390423, 33.660336>,  <41.498634, 38.278919, 33.763641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.868626, 38.390423, 33.660336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209226, -0.940929, -0.266228,
		-0.317224, 0.192220, -0.928666,
		0.924983, 0.278755, -0.258268,
		42.146122, 38.474049, 33.582855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.599255, 38.065578, 33.072762>,  <41.498634, 38.278919, 33.763641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.599255, 38.065578, 33.072762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.945164, 38.111099, 33.268402>,  <42.152710, 38.138412, 33.385788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.945164, 38.111099, 33.268402>,  <41.599255, 38.065578, 33.072762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.945164, 38.111099, 33.268402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100947, -0.993496, 0.052682,
		0.491916, 0.003815, -0.870634,
		0.864770, 0.113803, 0.489102,
		42.204594, 38.145241, 33.415134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.175789, 37.773201, 32.717857>,  <41.599255, 38.065578, 33.072762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.175789, 37.773201, 32.717857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.346622, 37.784191, 33.079376>,  <42.449123, 37.790783, 33.296288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.346622, 37.784191, 33.079376>,  <42.175789, 37.773201, 32.717857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.346622, 37.784191, 33.079376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192216, -0.979451, -0.061059,
		0.883544, 0.199800, -0.423591,
		0.427086, 0.027473, 0.903793,
		42.474747, 37.792435, 33.350513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.747879, 37.264198, 32.664112>,  <42.175789, 37.773201, 32.717857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.747879, 37.264198, 32.664112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.740547, 37.333042, 33.058075>,  <42.736149, 37.374348, 33.294453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.740547, 37.333042, 33.058075>,  <42.747879, 37.264198, 32.664112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.740547, 37.333042, 33.058075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037024, -0.984280, 0.172689,
		0.999146, 0.039631, 0.011669,
		-0.018330, 0.172110, 0.984907,
		42.735050, 37.384674, 33.353546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.284111, 36.769646, 33.027157>,  <42.747879, 37.264198, 32.664112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.284111, 36.769646, 33.027157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.020596, 36.884983, 33.305107>,  <42.862484, 36.954185, 33.471878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.020596, 36.884983, 33.305107>,  <43.284111, 36.769646, 33.027157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.020596, 36.884983, 33.305107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072602, -0.943691, 0.322762,
		0.748814, 0.162184, 0.642630,
		-0.658791, 0.288345, 0.694875,
		42.822960, 36.971485, 33.513569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.896072, 36.342640, 33.101135>,  <43.284111, 36.769646, 33.027157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.896072, 36.342640, 33.101135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.195633, 36.170994, 33.303123>,  <44.375370, 36.068005, 33.424316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.195633, 36.170994, 33.303123>,  <43.896072, 36.342640, 33.101135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.195633, 36.170994, 33.303123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194630, 0.870844, 0.451387,
		-0.633450, -0.239764, 0.735700,
		0.748906, -0.429120, 0.504971,
		44.420303, 36.042259, 33.454617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.835037, 36.599503, 33.849319>,  <43.896072, 36.342640, 33.101135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.835037, 36.599503, 33.849319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.207291, 36.467701, 33.785622>,  <44.430641, 36.388622, 33.747402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.207291, 36.467701, 33.785622>,  <43.835037, 36.599503, 33.849319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.207291, 36.467701, 33.785622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365690, 0.854024, 0.370018,
		0.014074, -0.402583, 0.915275,
		0.930630, -0.329500, -0.159240,
		44.486481, 36.368851, 33.737850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.125324, 36.611603, 34.502605>,  <43.835037, 36.599503, 33.849319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.125324, 36.611603, 34.502605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.432888, 36.630077, 34.247528>,  <44.617424, 36.641163, 34.094482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.432888, 36.630077, 34.247528>,  <44.125324, 36.611603, 34.502605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.432888, 36.630077, 34.247528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226477, 0.913042, 0.339210,
		0.597907, -0.405243, 0.691582,
		0.768906, 0.046188, -0.637692,
		44.663559, 36.643932, 34.056221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.685276, 36.852337, 35.015335>,  <44.125324, 36.611603, 34.502605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.685276, 36.852337, 35.015335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.769581, 36.905384, 34.627937>,  <44.820164, 36.937210, 34.395496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.769581, 36.905384, 34.627937>,  <44.685276, 36.852337, 35.015335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.769581, 36.905384, 34.627937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396555, 0.893971, 0.208710,
		0.893487, -0.428054, 0.135838,
		0.210774, 0.132612, -0.968498,
		44.832809, 36.945168, 34.337387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.423309, 37.145370, 35.074203>,  <44.685276, 36.852337, 35.015335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.423309, 37.145370, 35.074203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.280224, 37.248314, 34.715137>,  <45.194374, 37.310081, 34.499699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.280224, 37.248314, 34.715137>,  <45.423309, 37.145370, 35.074203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.280224, 37.248314, 34.715137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365365, 0.923215, 0.119089,
		0.859389, -0.285377, -0.424276,
		-0.357712, 0.257360, -0.897668,
		45.172909, 37.325523, 34.445839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.979790, 37.458916, 34.689003>,  <45.423309, 37.145370, 35.074203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.979790, 37.458916, 34.689003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.635777, 37.588406, 34.531246>,  <45.429367, 37.666100, 34.436592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.635777, 37.588406, 34.531246>,  <45.979790, 37.458916, 34.689003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.635777, 37.588406, 34.531246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386643, 0.917852, -0.089745,
		0.332944, -0.229674, -0.914548,
		-0.860032, 0.323724, -0.394396,
		45.377766, 37.685524, 34.412926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.312214, 37.874149, 34.195770>,  <45.979790, 37.458916, 34.689003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.312214, 37.874149, 34.195770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.924252, 37.961617, 34.238621>,  <45.691475, 38.014095, 34.264332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.924252, 37.961617, 34.238621>,  <46.312214, 37.874149, 34.195770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.924252, 37.961617, 34.238621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173822, 0.929856, -0.324275,
		-0.170516, -0.295895, -0.939878,
		-0.969902, 0.218666, 0.107122,
		45.633282, 38.027218, 34.270756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.191956, 38.269226, 33.647797>,  <46.312214, 37.874149, 34.195770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.191956, 38.269226, 33.647797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.875622, 38.359814, 33.875233>,  <45.685822, 38.414165, 34.011696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.875622, 38.359814, 33.875233>,  <46.191956, 38.269226, 33.647797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.875622, 38.359814, 33.875233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070879, 0.888882, -0.452620,
		-0.607916, -0.398247, -0.686904,
		-0.790831, 0.226468, 0.568593,
		45.638371, 38.427753, 34.045811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.630348, 38.687965, 33.241707>,  <46.191956, 38.269226, 33.647797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.630348, 38.687965, 33.241707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.590412, 38.755512, 33.633934>,  <45.566452, 38.796040, 33.869270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.590412, 38.755512, 33.633934>,  <45.630348, 38.687965, 33.241707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.590412, 38.755512, 33.633934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126319, 0.979670, -0.155849,
		-0.986953, 0.108305, -0.119139,
		-0.099837, 0.168866, 0.980570,
		45.560459, 38.806171, 33.928104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.233315, 39.280426, 33.223808>,  <45.630348, 38.687965, 33.241707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.233315, 39.280426, 33.223808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.380428, 39.274799, 33.595730>,  <45.468697, 39.271423, 33.818882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.380428, 39.274799, 33.595730>,  <45.233315, 39.280426, 33.223808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.380428, 39.274799, 33.595730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141523, 0.989085, -0.041013,
		-0.919078, 0.146673, 0.365762,
		0.367785, -0.014070, 0.929804,
		45.490765, 39.270576, 33.874672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.794231, 39.796833, 33.573475>,  <45.233315, 39.280426, 33.223808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.794231, 39.796833, 33.573475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.127182, 39.738983, 33.787479>,  <45.326954, 39.704273, 33.915882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.127182, 39.738983, 33.787479>,  <44.794231, 39.796833, 33.573475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.127182, 39.738983, 33.787479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142787, 0.988724, 0.045125,
		-0.535503, 0.038831, 0.843640,
		0.832375, -0.144626, 0.535009,
		45.376896, 39.695595, 33.947983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.649014, 40.207130, 34.166721>,  <44.794231, 39.796833, 33.573475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.649014, 40.207130, 34.166721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.043915, 40.146057, 34.148754>,  <45.280857, 40.109413, 34.137974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.043915, 40.146057, 34.148754>,  <44.649014, 40.207130, 34.166721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.043915, 40.146057, 34.148754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155452, 0.985611, 0.066378,
		0.034134, -0.072514, 0.996783,
		0.987254, -0.152686, -0.044915,
		45.340092, 40.100250, 34.135281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.815884, 40.672791, 34.625580>,  <44.649014, 40.207130, 34.166721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.815884, 40.672791, 34.625580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.153809, 40.616352, 34.419128>,  <45.356564, 40.582489, 34.295258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.153809, 40.616352, 34.419128>,  <44.815884, 40.672791, 34.625580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.153809, 40.616352, 34.419128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255351, 0.953988, 0.157172,
		0.470201, -0.264574, 0.841969,
		0.844812, -0.141096, -0.516125,
		45.407253, 40.574024, 34.264290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.359787, 40.942051, 35.012741>,  <44.815884, 40.672791, 34.625580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.359787, 40.942051, 35.012741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.464596, 40.933929, 34.626801>,  <45.527481, 40.929058, 34.395237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.464596, 40.933929, 34.626801>,  <45.359787, 40.942051, 35.012741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.464596, 40.933929, 34.626801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256859, 0.965183, 0.049448,
		0.930251, -0.260786, 0.258117,
		0.262025, -0.020301, -0.964848,
		45.543205, 40.927837, 34.337345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.897366, 41.311192, 35.064754>,  <45.359787, 40.942051, 35.012741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.897366, 41.311192, 35.064754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.841278, 41.318909, 34.668781>,  <45.807625, 41.323540, 34.431198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.841278, 41.318909, 34.668781>,  <45.897366, 41.311192, 35.064754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.841278, 41.318909, 34.668781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305991, 0.951712, -0.024791,
		0.941652, -0.306386, -0.139354,
		-0.140220, 0.019296, -0.989932,
		45.799213, 41.324699, 34.371803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.508247, 41.722252, 34.668301>,  <45.897366, 41.311192, 35.064754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.508247, 41.722252, 34.668301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.183365, 41.746567, 34.436222>,  <45.988438, 41.761154, 34.296974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.183365, 41.746567, 34.436222>,  <46.508247, 41.722252, 34.668301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.183365, 41.746567, 34.436222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196484, 0.964952, -0.173961,
		0.549291, -0.255291, -0.795679,
		-0.812203, 0.060783, -0.580200,
		45.939705, 41.764801, 34.262161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.666935, 42.118866, 33.983791>,  <46.508247, 41.722252, 34.668301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.666935, 42.118866, 33.983791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.274765, 42.147591, 34.057121>,  <46.039463, 42.164825, 34.101120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.274765, 42.147591, 34.057121>,  <46.666935, 42.118866, 33.983791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.274765, 42.147591, 34.057121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037485, 0.982159, -0.184280,
		-0.193286, -0.173801, -0.965626,
		-0.980426, 0.071816, 0.183323,
		45.980637, 42.169136, 34.112118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.437737, 42.701405, 33.622852>,  <46.666935, 42.118866, 33.983791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.437737, 42.701405, 33.622852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.125748, 42.633568, 33.863811>,  <45.938553, 42.592865, 34.008389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.125748, 42.633568, 33.863811>,  <46.437737, 42.701405, 33.622852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.125748, 42.633568, 33.863811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214911, 0.976628, -0.003311,
		-0.587758, -0.132044, -0.798189,
		-0.779971, -0.169594, 0.602398,
		45.891758, 42.582691, 34.044533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.983528, 43.211266, 33.345802>,  <46.437737, 42.701405, 33.622852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.983528, 43.211266, 33.345802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.808258, 43.103966, 33.688976>,  <45.703094, 43.039585, 33.894878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.808258, 43.103966, 33.688976>,  <45.983528, 43.211266, 33.345802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.808258, 43.103966, 33.688976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318276, 0.938902, 0.131007,
		-0.840655, -0.215655, -0.496782,
		-0.438177, -0.268245, 0.857931,
		45.676804, 43.023491, 33.946354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.333870, 43.398224, 33.243481>,  <45.983528, 43.211266, 33.345802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.333870, 43.398224, 33.243481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.373920, 43.331451, 33.635830>,  <45.397949, 43.291389, 33.871239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.373920, 43.331451, 33.635830>,  <45.333870, 43.398224, 33.243481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.373920, 43.331451, 33.635830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516502, 0.833873, 0.194634,
		-0.850412, -0.526110, -0.002728,
		0.100124, -0.166928, 0.980872,
		45.403957, 43.281372, 33.930092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.661716, 43.622169, 33.508732>,  <45.333870, 43.398224, 33.243481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.661716, 43.622169, 33.508732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.914280, 43.635147, 33.818642>,  <45.065819, 43.642933, 34.004585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.914280, 43.635147, 33.818642>,  <44.661716, 43.622169, 33.508732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.914280, 43.635147, 33.818642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542072, 0.732923, 0.411075,
		-0.554512, -0.679538, 0.480358,
		0.631407, 0.032443, 0.774773,
		45.103703, 43.644878, 34.051075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.243877, 37.936401, 40.974598> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885979, 38.048943, 40.835876>,  <40.671242, 38.116467, 40.752644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885979, 38.048943, 40.835876>,  <41.243877, 37.936401, 40.974598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.885979, 38.048943, 40.835876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265436, -0.289451, -0.919653,
		-0.359134, -0.914908, 0.184302,
		-0.894744, 0.281358, -0.346801,
		40.617554, 38.133350, 40.731834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.154102, 37.547222, 40.353569>,  <41.243877, 37.936401, 40.974598>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.154102, 37.547222, 40.353569> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838974, 37.790836, 40.316902>,  <40.649895, 37.937004, 40.294903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838974, 37.790836, 40.316902>,  <41.154102, 37.547222, 40.353569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838974, 37.790836, 40.316902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038113, -0.100344, -0.994222,
		-0.614720, -0.786767, 0.055841,
		-0.787825, 0.609040, -0.091670,
		40.602627, 37.973549, 40.289402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710125, 37.185036, 39.989841>,  <41.154102, 37.547222, 40.353569>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710125, 37.185036, 39.989841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640133, 37.572926, 39.921703>,  <40.598137, 37.805660, 39.880821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640133, 37.572926, 39.921703>,  <40.710125, 37.185036, 39.989841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.640133, 37.572926, 39.921703> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028840, -0.167890, -0.985384,
		-0.984149, -0.177339, 0.001411,
		-0.174984, 0.969724, -0.170343,
		40.587639, 37.863842, 39.870602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631435, 37.148537, 39.397144>,  <40.710125, 37.185036, 39.989841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631435, 37.148537, 39.397144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615959, 37.547913, 39.413269>,  <40.606674, 37.787537, 39.422943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615959, 37.547913, 39.413269>,  <40.631435, 37.148537, 39.397144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.615959, 37.547913, 39.413269> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229990, 0.048156, -0.972001,
		-0.972424, -0.028331, -0.231493,
		-0.038686, 0.998438, 0.040313,
		40.604355, 37.847443, 39.425362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.143456, 37.391136, 38.893166>,  <40.631435, 37.148537, 39.397144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.143456, 37.391136, 38.893166> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414562, 37.676491, 38.964401>,  <40.577225, 37.847702, 39.007145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414562, 37.676491, 38.964401>,  <40.143456, 37.391136, 38.893166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414562, 37.676491, 38.964401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273055, -0.019312, -0.961805,
		-0.682700, 0.700504, -0.207883,
		0.677762, 0.713387, 0.178092,
		40.617889, 37.890507, 39.017830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109100, 37.811245, 38.303375>,  <40.143456, 37.391136, 38.893166>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109100, 37.811245, 38.303375> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436913, 37.976444, 38.462273>,  <40.633598, 38.075565, 38.557613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436913, 37.976444, 38.462273>,  <40.109100, 37.811245, 38.303375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.436913, 37.976444, 38.462273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344220, 0.199424, -0.917465,
		-0.458135, 0.888628, 0.021271,
		0.819528, 0.413001, 0.397246,
		40.682770, 38.100346, 38.581448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184628, 38.544811, 38.055733>,  <40.109100, 37.811245, 38.303375>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184628, 38.544811, 38.055733> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537846, 38.380653, 38.146770>,  <40.749779, 38.282158, 38.201393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537846, 38.380653, 38.146770>,  <40.184628, 38.544811, 38.055733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.537846, 38.380653, 38.146770> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356801, 0.272111, -0.893671,
		0.304830, 0.870361, 0.386718,
		0.883047, -0.410399, 0.227598,
		40.802761, 38.257534, 38.215050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661640, 39.036518, 37.709187>,  <40.184628, 38.544811, 38.055733>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.661640, 39.036518, 37.709187> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870087, 38.704350, 37.788025>,  <40.995155, 38.505051, 37.835327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870087, 38.704350, 37.788025>,  <40.661640, 39.036518, 37.709187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.870087, 38.704350, 37.788025> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516978, 0.123370, -0.847062,
		0.679099, 0.543309, 0.493598,
		0.521112, -0.830418, 0.197099,
		41.026421, 38.455223, 37.847153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312943, 39.079487, 37.336475>,  <40.661640, 39.036518, 37.709187>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.312943, 39.079487, 37.336475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.333908, 38.691013, 37.429474>,  <41.346489, 38.457928, 37.485271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.333908, 38.691013, 37.429474>,  <41.312943, 39.079487, 37.336475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.333908, 38.691013, 37.429474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513606, -0.173442, -0.840314,
		0.856423, 0.163457, 0.489715,
		0.052418, -0.971185, 0.232492,
		41.349632, 38.399658, 37.499222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.007507, 38.890354, 37.251842>,  <41.312943, 39.079487, 37.336475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.007507, 38.890354, 37.251842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.790184, 38.561558, 37.183544>,  <41.659790, 38.364281, 37.142563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.790184, 38.561558, 37.183544>,  <42.007507, 38.890354, 37.251842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.790184, 38.561558, 37.183544> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559374, -0.202771, -0.803732,
		0.626035, -0.532185, 0.569964,
		-0.543306, -0.821987, -0.170749,
		41.627193, 38.314960, 37.132320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.418331, 38.348473, 37.008701>,  <42.007507, 38.890354, 37.251842>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.418331, 38.348473, 37.008701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.059219, 38.193447, 36.925003>,  <41.843750, 38.100433, 36.874783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.059219, 38.193447, 36.925003>,  <42.418331, 38.348473, 37.008701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.059219, 38.193447, 36.925003> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355800, -0.358156, -0.863209,
		0.259603, -0.849424, 0.459440,
		-0.897782, -0.387561, -0.209247,
		41.789886, 38.077179, 36.862228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.561489, 37.701572, 36.835949>,  <42.418331, 38.348473, 37.008701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.561489, 37.701572, 36.835949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.215969, 37.809074, 36.665482>,  <42.008656, 37.873577, 36.563202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.215969, 37.809074, 36.665482>,  <42.561489, 37.701572, 36.835949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.215969, 37.809074, 36.665482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341686, -0.309144, -0.887514,
		-0.370273, -0.912250, 0.175208,
		-0.863799, 0.268756, -0.426171,
		41.956829, 37.889702, 36.537632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.253468, 37.120914, 36.499107>,  <42.561489, 37.701572, 36.835949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.253468, 37.120914, 36.499107> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.130905, 37.453545, 36.313808>,  <42.057369, 37.653122, 36.202629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.130905, 37.453545, 36.313808>,  <42.253468, 37.120914, 36.499107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.130905, 37.453545, 36.313808> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390970, -0.333773, -0.857752,
		-0.867905, -0.443934, -0.222851,
		-0.306404, 0.831576, -0.463248,
		42.038982, 37.703018, 36.174835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.759220, 37.059132, 35.828884>,  <42.253468, 37.120914, 36.499107>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.759220, 37.059132, 35.828884> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.007378, 37.372765, 35.836082>,  <42.156273, 37.560944, 35.840401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.007378, 37.372765, 35.836082>,  <41.759220, 37.059132, 35.828884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.007378, 37.372765, 35.836082> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477360, -0.359304, -0.801890,
		-0.622282, 0.506081, -0.597200,
		0.620398, 0.784081, 0.017994,
		42.193497, 37.607990, 35.841480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.529709, 36.755653, 36.511097>,  <41.759220, 37.059132, 35.828884>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.529709, 36.755653, 36.511097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769718, 36.470440, 36.656178>,  <41.913723, 36.299313, 36.743225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769718, 36.470440, 36.656178>,  <41.529709, 36.755653, 36.511097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.769718, 36.470440, 36.656178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696314, -0.242288, 0.675606,
		-0.393851, -0.657936, -0.641874,
		0.600023, -0.713034, 0.362705,
		41.949726, 36.256531, 36.764988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223484, 36.034962, 36.500298>,  <41.529709, 36.755653, 36.511097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223484, 36.034962, 36.500298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.468010, 36.036148, 36.816853>,  <41.614723, 36.036861, 37.006786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.468010, 36.036148, 36.816853>,  <41.223484, 36.034962, 36.500298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.468010, 36.036148, 36.816853> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709738, -0.440328, 0.549894,
		0.350101, -0.897832, -0.267071,
		0.611311, 0.002968, 0.791385,
		41.651405, 36.037037, 37.054268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994728, 35.433254, 36.780041>,  <41.223484, 36.034962, 36.500298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994728, 35.433254, 36.780041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.230728, 35.595860, 37.059082>,  <41.372326, 35.693420, 37.226509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.230728, 35.595860, 37.059082>,  <40.994728, 35.433254, 36.780041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.230728, 35.595860, 37.059082> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610354, -0.341057, 0.714946,
		0.528556, -0.847602, 0.046893,
		0.589997, 0.406510, 0.697605,
		41.407726, 35.717812, 37.268364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.075436, 34.880161, 37.317924>,  <40.994728, 35.433254, 36.780041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.075436, 34.880161, 37.317924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.179050, 35.206020, 37.525482>,  <41.241219, 35.401535, 37.650017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.179050, 35.206020, 37.525482>,  <41.075436, 34.880161, 37.317924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179050, 35.206020, 37.525482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581568, -0.297372, 0.757197,
		0.771153, -0.497914, 0.396742,
		0.259039, 0.814648, 0.518891,
		41.256763, 35.450417, 37.681149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398571, 34.671913, 37.936573>,  <41.075436, 34.880161, 37.317924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.398571, 34.671913, 37.936573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.278065, 35.041885, 38.029293>,  <41.205761, 35.263870, 38.084927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.278065, 35.041885, 38.029293>,  <41.398571, 34.671913, 37.936573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.278065, 35.041885, 38.029293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239989, -0.308821, 0.920345,
		0.922845, 0.221640, 0.315012,
		-0.301268, 0.924935, 0.231803,
		41.187683, 35.319366, 38.098835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.845100, 34.828888, 38.501858>,  <41.398571, 34.671913, 37.936573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.845100, 34.828888, 38.501858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.518379, 35.059299, 38.514664>,  <41.322346, 35.197548, 38.522346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.518379, 35.059299, 38.514664>,  <41.845100, 34.828888, 38.501858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.518379, 35.059299, 38.514664> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173846, -0.298671, 0.938388,
		0.550100, 0.760912, 0.344096,
		-0.816803, 0.576027, 0.032018,
		41.273338, 35.232109, 38.524269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.884655, 35.117107, 39.224812>,  <41.845100, 34.828888, 38.501858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.884655, 35.117107, 39.224812> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513214, 35.217789, 39.115742>,  <41.290352, 35.278198, 39.050301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513214, 35.217789, 39.115742>,  <41.884655, 35.117107, 39.224812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.513214, 35.217789, 39.115742> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286696, -0.020084, 0.957811,
		0.235607, 0.967596, 0.090812,
		-0.928598, 0.251702, -0.272674,
		41.234634, 35.293301, 39.033939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.660385, 35.523388, 39.757107>,  <41.884655, 35.117107, 39.224812>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.660385, 35.523388, 39.757107> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.317684, 35.416893, 39.580433>,  <41.112064, 35.352997, 39.474426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.317684, 35.416893, 39.580433>,  <41.660385, 35.523388, 39.757107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.317684, 35.416893, 39.580433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471558, 0.057647, 0.879949,
		-0.208813, 0.962182, -0.174936,
		-0.856756, -0.266237, -0.441687,
		41.060658, 35.337021, 39.447926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259029, 35.951900, 40.009468>,  <41.660385, 35.523388, 39.757107>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.259029, 35.951900, 40.009468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002789, 35.684948, 39.857559>,  <40.849045, 35.524776, 39.766415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002789, 35.684948, 39.857559>,  <41.259029, 35.951900, 40.009468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.002789, 35.684948, 39.857559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625065, 0.165949, 0.762729,
		-0.446011, 0.725987, -0.523466,
		-0.640600, -0.667386, -0.379774,
		40.810608, 35.484734, 39.743626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591640, 36.228832, 39.937031>,  <41.259029, 35.951900, 40.009468>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591640, 36.228832, 39.937031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537666, 35.833115, 39.959255>,  <40.505280, 35.595684, 39.972591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537666, 35.833115, 39.959255>,  <40.591640, 36.228832, 39.937031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.537666, 35.833115, 39.959255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538822, 0.120323, 0.833782,
		-0.831542, 0.082570, -0.549290,
		-0.134938, -0.989295, 0.055563,
		40.497185, 35.536327, 39.975925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886990, 36.242378, 40.054466>,  <40.591640, 36.228832, 39.937031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886990, 36.242378, 40.054466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035900, 35.895317, 40.186279>,  <40.125248, 35.687080, 40.265366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035900, 35.895317, 40.186279>,  <39.886990, 36.242378, 40.054466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035900, 35.895317, 40.186279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642917, 0.014995, 0.765789,
		-0.669379, -0.496949, -0.552245,
		0.372277, -0.867651, 0.329534,
		40.147583, 35.635021, 40.285141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285614, 35.878651, 40.289379>,  <39.886990, 36.242378, 40.054466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285614, 35.878651, 40.289379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573921, 35.677792, 40.480522>,  <39.746906, 35.557278, 40.595207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573921, 35.677792, 40.480522>,  <39.285614, 35.878651, 40.289379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573921, 35.677792, 40.480522> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550570, 0.004128, 0.834779,
		-0.421155, -0.864772, -0.273493,
		0.720764, -0.502148, 0.477856,
		39.790150, 35.527145, 40.623878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013897, 35.258202, 40.655258>,  <39.285614, 35.878651, 40.289379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013897, 35.258202, 40.655258> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360630, 35.337540, 40.838242>,  <39.568668, 35.385143, 40.948032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360630, 35.337540, 40.838242>,  <39.013897, 35.258202, 40.655258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360630, 35.337540, 40.838242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476888, 0.061959, 0.876778,
		0.145561, -0.978172, 0.148296,
		0.866828, 0.198345, 0.457460,
		39.620678, 35.397041, 40.975479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110332, 34.767838, 41.157505>,  <39.013897, 35.258202, 40.655258>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.110332, 34.767838, 41.157505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357338, 35.064919, 41.261089>,  <39.505543, 35.243168, 41.323238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357338, 35.064919, 41.261089>,  <39.110332, 34.767838, 41.157505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357338, 35.064919, 41.261089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423911, 0.036924, 0.904951,
		0.662552, -0.668597, 0.337643,
		0.617515, 0.742707, 0.258962,
		39.542591, 35.287731, 41.338779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046329, 34.072655, 41.236202>,  <39.110332, 34.767838, 41.157505>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046329, 34.072655, 41.236202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699455, 33.873928, 41.222580>,  <38.491329, 33.754692, 41.214405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699455, 33.873928, 41.222580>,  <39.046329, 34.072655, 41.236202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699455, 33.873928, 41.222580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035988, 0.130729, -0.990765,
		0.496684, -0.857951, -0.131246,
		-0.867185, -0.496820, -0.034055,
		38.439301, 33.724880, 41.212364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196712, 33.568146, 40.733974>,  <39.046329, 34.072655, 41.236202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196712, 33.568146, 40.733974> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802593, 33.630314, 40.762352>,  <38.566120, 33.667614, 40.779377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802593, 33.630314, 40.762352>,  <39.196712, 33.568146, 40.733974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802593, 33.630314, 40.762352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030315, 0.249618, -0.967870,
		-0.168131, -0.955791, -0.241237,
		-0.985298, 0.155416, 0.070943,
		38.507004, 33.676937, 40.783634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929615, 33.326355, 40.084133>,  <39.196712, 33.568146, 40.733974>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929615, 33.326355, 40.084133> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652325, 33.571190, 40.236336>,  <38.485950, 33.718090, 40.327660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652325, 33.571190, 40.236336>,  <38.929615, 33.326355, 40.084133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652325, 33.571190, 40.236336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165758, 0.378402, -0.910679,
		-0.701399, -0.694380, -0.160861,
		-0.693227, 0.612085, 0.380510,
		38.444355, 33.754814, 40.350491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313179, 33.227856, 39.604122>,  <38.929615, 33.326355, 40.084133>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313179, 33.227856, 39.604122> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247200, 33.584942, 39.771858>,  <38.207611, 33.799194, 39.872501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247200, 33.584942, 39.771858>,  <38.313179, 33.227856, 39.604122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247200, 33.584942, 39.771858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283767, 0.364236, -0.887022,
		-0.944600, -0.265309, 0.193243,
		-0.164949, 0.892717, 0.419343,
		38.197716, 33.852757, 39.897659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684952, 33.334877, 39.366913>,  <38.313179, 33.227856, 39.604122>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684952, 33.334877, 39.366913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838127, 33.692204, 39.461021>,  <37.930031, 33.906597, 39.517487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838127, 33.692204, 39.461021>,  <37.684952, 33.334877, 39.366913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838127, 33.692204, 39.461021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375851, 0.383314, -0.843686,
		-0.843857, 0.234653, 0.482538,
		0.382937, 0.893313, 0.235267,
		37.953007, 33.960197, 39.531601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210861, 33.775867, 39.042431>,  <37.684952, 33.334877, 39.366913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210861, 33.775867, 39.042431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512123, 34.026386, 39.122948>,  <37.692879, 34.176697, 39.171257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512123, 34.026386, 39.122948>,  <37.210861, 33.775867, 39.042431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512123, 34.026386, 39.122948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360285, 0.648709, -0.670352,
		-0.550415, 0.432356, 0.714221,
		0.753152, 0.626295, 0.201288,
		37.738068, 34.214275, 39.183334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965870, 34.503323, 39.327347>,  <37.210861, 33.775867, 39.042431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965870, 34.503323, 39.327347> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324402, 34.560566, 39.159481>,  <37.539520, 34.594910, 39.058762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324402, 34.560566, 39.159481>,  <36.965870, 34.503323, 39.327347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324402, 34.560566, 39.159481> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379970, 0.735713, -0.560669,
		0.228516, 0.662003, 0.713816,
		0.896328, 0.143106, -0.419663,
		37.593300, 34.603497, 39.033581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094833, 35.236839, 39.310692>,  <36.965870, 34.503323, 39.327347>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094833, 35.236839, 39.310692> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340549, 35.086861, 39.032970>,  <37.487980, 34.996872, 38.866337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340549, 35.086861, 39.032970>,  <37.094833, 35.236839, 39.310692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340549, 35.086861, 39.032970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256775, 0.737013, -0.625203,
		0.746129, 0.562337, 0.356465,
		0.614294, -0.374951, -0.694301,
		37.524837, 34.974377, 38.824680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536983, 35.768990, 39.141415>,  <37.094833, 35.236839, 39.310692>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536983, 35.768990, 39.141415> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515331, 35.513611, 38.834312>,  <37.502338, 35.360382, 38.650051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515331, 35.513611, 38.834312>,  <37.536983, 35.768990, 39.141415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515331, 35.513611, 38.834312> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086474, 0.762999, -0.640590,
		0.994782, -0.101069, 0.013905,
		-0.054134, -0.638450, -0.767757,
		37.499092, 35.322075, 38.603985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788216, 36.156979, 38.644161>,  <37.536983, 35.768990, 39.141415>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788216, 36.156979, 38.644161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697701, 35.854393, 38.398705>,  <37.643391, 35.672840, 38.251431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697701, 35.854393, 38.398705>,  <37.788216, 36.156979, 38.644161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697701, 35.854393, 38.398705> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121196, 0.603220, -0.788313,
		0.966490, -0.252759, -0.044823,
		-0.226292, -0.756465, -0.613639,
		37.629814, 35.627453, 38.214611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271984, 36.205292, 38.099018>,  <37.788216, 36.156979, 38.644161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271984, 36.205292, 38.099018> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939079, 36.031982, 37.960678>,  <37.739338, 35.927998, 37.877674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939079, 36.031982, 37.960678>,  <38.271984, 36.205292, 38.099018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939079, 36.031982, 37.960678> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010751, 0.611121, -0.791464,
		0.554275, -0.662425, -0.503956,
		-0.832264, -0.433271, -0.345852,
		37.689400, 35.902000, 37.856922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359653, 36.114326, 37.378807>,  <38.271984, 36.205292, 38.099018>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359653, 36.114326, 37.378807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962883, 36.090160, 37.423412>,  <37.724819, 36.075661, 37.450176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962883, 36.090160, 37.423412>,  <38.359653, 36.114326, 37.378807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962883, 36.090160, 37.423412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126046, 0.567054, -0.813979,
		-0.014062, -0.821462, -0.570090,
		-0.991925, -0.060411, 0.111515,
		37.665306, 36.072037, 37.456867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.231308, 32.691902, 45.019142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.876030, 32.829975, 44.897839>,  <37.662865, 32.912819, 44.825058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.876030, 32.829975, 44.897839>,  <38.231308, 32.691902, 45.019142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876030, 32.829975, 44.897839> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333746, 0.031037, -0.942152,
		-0.315800, -0.938023, -0.142769,
		-0.888191, 0.345180, -0.303260,
		37.609573, 32.933529, 44.806862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040047, 32.282475, 44.447880>,  <38.231308, 32.691902, 45.019142>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040047, 32.282475, 44.447880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.843784, 32.628956, 44.410042>,  <37.726028, 32.836845, 44.387341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.843784, 32.628956, 44.410042>,  <38.040047, 32.282475, 44.447880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843784, 32.628956, 44.410042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381612, 0.116016, -0.917013,
		-0.783345, -0.486036, -0.387478,
		-0.490655, 0.866204, -0.094596,
		37.696587, 32.888817, 44.381664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506214, 32.228954, 43.962967>,  <38.040047, 32.282475, 44.447880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.506214, 32.228954, 43.962967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.606377, 32.616207, 43.961189>,  <37.666473, 32.848560, 43.960125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.606377, 32.616207, 43.961189>,  <37.506214, 32.228954, 43.962967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606377, 32.616207, 43.961189> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020885, -0.009988, -0.999732,
		-0.967917, 0.250242, -0.022720,
		0.250402, 0.968132, -0.004442,
		37.681496, 32.906647, 43.959858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414394, 32.343025, 43.374027>,  <37.506214, 32.228954, 43.962967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414394, 32.343025, 43.374027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.552284, 32.713142, 43.437271>,  <37.635017, 32.935211, 43.475216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.552284, 32.713142, 43.437271>,  <37.414394, 32.343025, 43.374027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552284, 32.713142, 43.437271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069178, 0.142931, -0.987312,
		-0.936153, 0.351285, -0.014739,
		0.344721, 0.925294, 0.158107,
		37.655701, 32.990730, 43.484703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039913, 32.764046, 42.884804>,  <37.414394, 32.343025, 43.374027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039913, 32.764046, 42.884804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.396877, 32.920994, 42.973927>,  <37.611057, 33.015163, 43.027401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.396877, 32.920994, 42.973927>,  <37.039913, 32.764046, 42.884804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396877, 32.920994, 42.973927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104143, 0.301357, -0.947807,
		-0.439039, 0.869038, 0.228072,
		0.892412, 0.392372, 0.222812,
		37.664600, 33.038704, 43.040771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005905, 33.458988, 42.591862>,  <37.039913, 32.764046, 42.884804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005905, 33.458988, 42.591862> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.388977, 33.351536, 42.633224>,  <37.618820, 33.287064, 42.658043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.388977, 33.351536, 42.633224>,  <37.005905, 33.458988, 42.591862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388977, 33.351536, 42.633224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205122, 0.384872, -0.899888,
		0.201937, 0.883013, 0.423685,
		0.957678, -0.268628, 0.103406,
		37.676281, 33.270947, 42.664246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313770, 34.068047, 42.340126>,  <37.005905, 33.458988, 42.591862>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313770, 34.068047, 42.340126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.608192, 33.797504, 42.329021>,  <37.784843, 33.635178, 42.322357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.608192, 33.797504, 42.329021>,  <37.313770, 34.068047, 42.340126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608192, 33.797504, 42.329021> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201233, 0.257783, -0.945015,
		0.646322, 0.689994, 0.325847,
		0.736052, -0.676355, -0.027761,
		37.829010, 33.594597, 42.320694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968739, 34.279835, 42.106289>,  <37.313770, 34.068047, 42.340126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968739, 34.279835, 42.106289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.006874, 33.892090, 42.015732>,  <38.029755, 33.659443, 41.961395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.006874, 33.892090, 42.015732>,  <37.968739, 34.279835, 42.106289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006874, 33.892090, 42.015732> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345389, 0.245516, -0.905775,
		0.933604, 0.008161, 0.358213,
		0.095339, -0.969358, -0.226396,
		38.035477, 33.601284, 41.947815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770756, 34.114765, 41.897079>,  <37.968739, 34.279835, 42.106289>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770756, 34.114765, 41.897079> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.530994, 33.847897, 41.720177>,  <38.387138, 33.687775, 41.614037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.530994, 33.847897, 41.720177>,  <38.770756, 34.114765, 41.897079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530994, 33.847897, 41.720177> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382682, 0.246423, -0.890410,
		0.703041, -0.702961, 0.107609,
		-0.599406, -0.667175, -0.442256,
		38.351173, 33.647743, 41.587502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159237, 34.731983, 41.959721>,  <38.770756, 34.114765, 41.897079>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159237, 34.731983, 41.959721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.368702, 35.066978, 41.897243>,  <39.494381, 35.267975, 41.859756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.368702, 35.066978, 41.897243>,  <39.159237, 34.731983, 41.959721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368702, 35.066978, 41.897243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164804, 0.279457, 0.945909,
		0.835835, -0.469593, 0.284362,
		0.523659, 0.837488, -0.156189,
		39.525799, 35.318226, 41.850388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754284, 34.767403, 42.534718>,  <39.159237, 34.731983, 41.959721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754284, 34.767403, 42.534718> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.670620, 35.141819, 42.421524>,  <39.620422, 35.366470, 42.353607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.670620, 35.141819, 42.421524>,  <39.754284, 34.767403, 42.534718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670620, 35.141819, 42.421524> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181700, 0.247143, 0.951791,
		0.960853, 0.250492, 0.118387,
		-0.209157, 0.936042, -0.282982,
		39.607872, 35.422630, 42.336628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186653, 35.143459, 42.874466>,  <39.754284, 34.767403, 42.534718>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186653, 35.143459, 42.874466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.886669, 35.387695, 42.772697>,  <39.706676, 35.534237, 42.711636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.886669, 35.387695, 42.772697>,  <40.186653, 35.143459, 42.874466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886669, 35.387695, 42.772697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178973, 0.182976, 0.966689,
		0.636807, 0.770516, -0.027945,
		-0.749963, 0.610593, -0.254422,
		39.661678, 35.570873, 42.696369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226871, 35.672169, 43.389870>,  <40.186653, 35.143459, 42.874466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226871, 35.672169, 43.389870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.867157, 35.750511, 43.233452>,  <39.651329, 35.797516, 43.139603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.867157, 35.750511, 43.233452>,  <40.226871, 35.672169, 43.389870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867157, 35.750511, 43.233452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335862, 0.263429, 0.904324,
		0.280133, 0.944587, -0.171117,
		-0.899290, 0.195859, -0.391046,
		39.597370, 35.809269, 43.116138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099590, 36.322418, 43.635242>,  <40.226871, 35.672169, 43.389870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099590, 36.322418, 43.635242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.751606, 36.180576, 43.498169>,  <39.542816, 36.095470, 43.415924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.751606, 36.180576, 43.498169>,  <40.099590, 36.322418, 43.635242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751606, 36.180576, 43.498169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451300, 0.292430, 0.843097,
		-0.198756, 0.888110, -0.414434,
		-0.869956, -0.354605, -0.342682,
		39.490620, 36.074196, 43.395363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665085, 36.908119, 43.658569>,  <40.099590, 36.322418, 43.635242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665085, 36.908119, 43.658569> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.492584, 36.549370, 43.697857>,  <39.389084, 36.334122, 43.721428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.492584, 36.549370, 43.697857>,  <39.665085, 36.908119, 43.658569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492584, 36.549370, 43.697857> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282568, 0.237644, 0.929344,
		-0.856840, 0.373030, -0.355911,
		-0.431254, -0.896869, 0.098216,
		39.363209, 36.280308, 43.727322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282436, 36.966576, 44.276901>,  <39.665085, 36.908119, 43.658569>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282436, 36.966576, 44.276901> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.207787, 36.577934, 44.218719>,  <39.162998, 36.344749, 44.183811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.207787, 36.577934, 44.218719>,  <39.282436, 36.966576, 44.276901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207787, 36.577934, 44.218719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304426, -0.083576, 0.948862,
		-0.934075, 0.221360, -0.280184,
		-0.186623, -0.971604, -0.145454,
		39.151798, 36.286453, 44.175083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602768, 36.802528, 44.534126>,  <39.282436, 36.966576, 44.276901>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602768, 36.802528, 44.534126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.824680, 36.469749, 44.530636>,  <38.957829, 36.270081, 44.528542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.824680, 36.469749, 44.530636>,  <38.602768, 36.802528, 44.534126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824680, 36.469749, 44.530636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308283, -0.215295, 0.926612,
		-0.772773, -0.511378, -0.375918,
		0.554782, -0.831950, -0.008726,
		38.991116, 36.220165, 44.528019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157253, 36.189049, 44.638866>,  <38.602768, 36.802528, 44.534126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157253, 36.189049, 44.638866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.535980, 36.123608, 44.749702>,  <38.763214, 36.084343, 44.816204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.535980, 36.123608, 44.749702>,  <38.157253, 36.189049, 44.638866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535980, 36.123608, 44.749702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321694, -0.501169, 0.803332,
		0.007442, -0.849743, -0.527144,
		0.946814, -0.163601, 0.277087,
		38.820026, 36.074528, 44.832829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240105, 35.519054, 44.845062>,  <38.157253, 36.189049, 44.638866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240105, 35.519054, 44.845062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.531895, 35.713615, 45.037430>,  <38.706966, 35.830353, 45.152851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.531895, 35.713615, 45.037430>,  <38.240105, 35.519054, 44.845062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531895, 35.713615, 45.037430> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291313, -0.415218, 0.861818,
		0.618878, -0.768770, -0.161194,
		0.729471, 0.486402, 0.480922,
		38.750736, 35.859535, 45.181705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411118, 35.027760, 45.387562>,  <38.240105, 35.519054, 44.845062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411118, 35.027760, 45.387562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.640549, 35.340641, 45.484856>,  <38.778210, 35.528370, 45.543232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.640549, 35.340641, 45.484856>,  <38.411118, 35.027760, 45.387562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640549, 35.340641, 45.484856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048439, -0.328807, 0.943154,
		0.817715, -0.529194, -0.226487,
		0.573582, 0.782202, 0.243237,
		38.812622, 35.575302, 45.557827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966148, 34.729595, 45.826706>,  <38.411118, 35.027760, 45.387562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966148, 34.729595, 45.826706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.925011, 35.121140, 45.897430>,  <38.900330, 35.356064, 45.939865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.925011, 35.121140, 45.897430>,  <38.966148, 34.729595, 45.826706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925011, 35.121140, 45.897430> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184479, -0.155903, 0.970393,
		0.977441, 0.132416, -0.164546,
		-0.102842, 0.978857, 0.176814,
		38.894157, 35.414795, 45.950474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520977, 34.927628, 46.346924>,  <38.966148, 34.729595, 45.826706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520977, 34.927628, 46.346924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.257866, 35.226849, 46.382130>,  <39.099998, 35.406384, 46.403255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.257866, 35.226849, 46.382130>,  <39.520977, 34.927628, 46.346924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257866, 35.226849, 46.382130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027923, -0.092556, 0.995316,
		0.752698, 0.657150, 0.039993,
		-0.657774, 0.748055, 0.088017,
		39.060535, 35.451263, 46.408535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732582, 35.312840, 47.040661>,  <39.520977, 34.927628, 46.346924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732582, 35.312840, 47.040661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.363033, 35.431271, 46.943668>,  <39.141304, 35.502331, 46.885471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.363033, 35.431271, 46.943668>,  <39.732582, 35.312840, 47.040661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363033, 35.431271, 46.943668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164624, 0.264530, 0.950223,
		0.345484, 0.917803, -0.195650,
		-0.923872, 0.296078, -0.242483,
		39.085873, 35.520096, 46.870922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.315228, 39.967236, 44.480778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.613632, 39.703259, 44.516418>,  <33.792675, 39.544872, 44.537804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.613632, 39.703259, 44.516418>,  <33.315228, 39.967236, 44.480778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613632, 39.703259, 44.516418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246202, 0.149012, -0.957695,
		0.618744, 0.736393, 0.273644,
		0.746016, -0.659940, 0.089101,
		33.837437, 39.505276, 44.543148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675331, 40.179268, 43.986248>,  <33.315228, 39.967236, 44.480778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675331, 40.179268, 43.986248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.850517, 39.827530, 44.061028>,  <33.955627, 39.616489, 44.105896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.850517, 39.827530, 44.061028>,  <33.675331, 40.179268, 43.986248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850517, 39.827530, 44.061028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346552, -0.026746, -0.937649,
		0.829513, 0.475443, 0.293023,
		0.437961, -0.879340, 0.186952,
		33.981907, 39.563728, 44.117111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274101, 40.277966, 43.673180>,  <33.675331, 40.179268, 43.986248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274101, 40.277966, 43.673180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.255756, 39.881275, 43.721142>,  <34.244751, 39.643261, 43.749920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.255756, 39.881275, 43.721142>,  <34.274101, 40.277966, 43.673180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255756, 39.881275, 43.721142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594798, -0.123549, -0.794325,
		0.802566, 0.034892, 0.595542,
		-0.045863, -0.991725, 0.119910,
		34.241997, 39.583759, 43.757114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938412, 40.029922, 43.545353>,  <34.274101, 40.277966, 43.673180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938412, 40.029922, 43.545353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.705631, 39.711308, 43.479786>,  <34.565964, 39.520138, 43.440445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.705631, 39.711308, 43.479786>,  <34.938412, 40.029922, 43.545353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705631, 39.711308, 43.479786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514600, -0.204621, -0.832657,
		0.629699, -0.568915, 0.528976,
		-0.581950, -0.796534, -0.163914,
		34.531048, 39.472347, 43.430611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375816, 39.357738, 43.457592>,  <34.938412, 40.029922, 43.545353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375816, 39.357738, 43.457592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.027214, 39.293556, 43.272236>,  <34.818050, 39.255047, 43.161022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.027214, 39.293556, 43.272236>,  <35.375816, 39.357738, 43.457592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027214, 39.293556, 43.272236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490377, -0.289464, -0.822035,
		-0.002235, -0.943645, 0.330953,
		-0.871508, -0.160454, -0.463389,
		34.765762, 39.245419, 43.133221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467587, 38.788036, 43.005676>,  <35.375816, 39.357738, 43.457592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467587, 38.788036, 43.005676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.119293, 38.933414, 42.873173>,  <34.910316, 39.020641, 42.793671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.119293, 38.933414, 42.873173>,  <35.467587, 38.788036, 43.005676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119293, 38.933414, 42.873173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205133, -0.343769, -0.916375,
		-0.446932, -0.865868, 0.224775,
		-0.870731, 0.363449, -0.331259,
		34.858074, 39.042450, 42.773796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180183, 38.351093, 42.485962>,  <35.467587, 38.788036, 43.005676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180183, 38.351093, 42.485962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.979172, 38.690758, 42.420982>,  <34.858566, 38.894558, 42.381996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.979172, 38.690758, 42.420982>,  <35.180183, 38.351093, 42.485962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979172, 38.690758, 42.420982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224596, -0.053225, -0.972997,
		-0.834880, -0.525441, -0.163972,
		-0.502525, 0.849163, -0.162448,
		34.828415, 38.945507, 42.372250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741219, 38.191071, 41.870972>,  <35.180183, 38.351093, 42.485962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741219, 38.191071, 41.870972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.762363, 38.588779, 41.908127>,  <34.775051, 38.827404, 41.930420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.762363, 38.588779, 41.908127>,  <34.741219, 38.191071, 41.870972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762363, 38.588779, 41.908127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200989, 0.080523, -0.976278,
		-0.978166, 0.070275, -0.195581,
		0.052859, 0.994272, 0.092890,
		34.778221, 38.887062, 41.935993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307732, 38.474201, 41.373291>,  <34.741219, 38.191071, 41.870972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307732, 38.474201, 41.373291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.613705, 38.713848, 41.467892>,  <34.797287, 38.857635, 41.524654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.613705, 38.713848, 41.467892>,  <34.307732, 38.474201, 41.373291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613705, 38.713848, 41.467892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070566, 0.287020, -0.955322,
		-0.640236, 0.747444, 0.177273,
		0.764931, 0.599122, 0.236505,
		34.843185, 38.893585, 41.538841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216469, 38.975685, 40.968933>,  <34.307732, 38.474201, 41.373291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216469, 38.975685, 40.968933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.601772, 39.015545, 41.068691>,  <34.832954, 39.039459, 41.128548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.601772, 39.015545, 41.068691>,  <34.216469, 38.975685, 40.968933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601772, 39.015545, 41.068691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200898, 0.348937, -0.915359,
		-0.178239, 0.931833, 0.316098,
		0.963261, 0.099649, 0.249398,
		34.890751, 39.045441, 41.143509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284599, 39.438160, 40.547516>,  <34.216469, 38.975685, 40.968933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284599, 39.438160, 40.547516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.662586, 39.354233, 40.647930>,  <34.889378, 39.303875, 40.708179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.662586, 39.354233, 40.647930>,  <34.284599, 39.438160, 40.547516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662586, 39.354233, 40.647930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293927, 0.207447, -0.933045,
		0.143692, 0.955480, 0.257701,
		0.944965, -0.209817, 0.251033,
		34.946075, 39.291286, 40.723240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746567, 39.965668, 40.265156>,  <34.284599, 39.438160, 40.547516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746567, 39.965668, 40.265156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.983391, 39.645393, 40.301750>,  <35.125484, 39.453228, 40.323708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.983391, 39.645393, 40.301750>,  <34.746567, 39.965668, 40.265156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983391, 39.645393, 40.301750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486888, 0.264926, -0.832319,
		0.642189, 0.537324, 0.546695,
		0.592059, -0.800685, 0.091484,
		35.161007, 39.405190, 40.329197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360367, 40.146648, 40.153328>,  <34.746567, 39.965668, 40.265156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360367, 40.146648, 40.153328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.400684, 39.752083, 40.101448>,  <35.424873, 39.515343, 40.070320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.400684, 39.752083, 40.101448>,  <35.360367, 40.146648, 40.153328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400684, 39.752083, 40.101448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387291, 0.158983, -0.908146,
		0.916431, 0.041306, 0.398055,
		0.100796, -0.986417, -0.129699,
		35.430923, 39.456158, 40.062538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012970, 39.911098, 39.911549>,  <35.360367, 40.146648, 40.153328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012970, 39.911098, 39.911549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.764782, 39.622665, 39.788219>,  <35.615871, 39.449608, 39.714222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.764782, 39.622665, 39.788219>,  <36.012970, 39.911098, 39.911549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764782, 39.622665, 39.788219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331507, 0.115137, -0.936401,
		0.710719, -0.683218, 0.167604,
		-0.620468, -0.721080, -0.308322,
		35.578640, 39.406342, 39.695724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638775, 39.695930, 40.091076>,  <36.012970, 39.911098, 39.911549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638775, 39.695930, 40.091076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.030109, 39.773121, 40.121071>,  <37.264908, 39.819435, 40.139069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.030109, 39.773121, 40.121071>,  <36.638775, 39.695930, 40.091076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030109, 39.773121, 40.121071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080824, 0.022554, 0.996473,
		0.190609, -0.980943, 0.037663,
		0.978333, 0.192980, 0.074985,
		37.323608, 39.831013, 40.143566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022198, 39.179436, 40.589760>,  <36.638775, 39.695930, 40.091076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022198, 39.179436, 40.589760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.172577, 39.549046, 40.561954>,  <37.262806, 39.770813, 40.545273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.172577, 39.549046, 40.561954>,  <37.022198, 39.179436, 40.589760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172577, 39.549046, 40.561954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021909, 0.083858, 0.996237,
		0.926380, -0.373014, 0.051771,
		0.375952, 0.924028, -0.069512,
		37.285362, 39.826256, 40.541100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564468, 39.032413, 41.129814>,  <37.022198, 39.179436, 40.589760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564468, 39.032413, 41.129814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.541901, 39.427711, 41.072975>,  <37.528362, 39.664890, 41.038872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.541901, 39.427711, 41.072975>,  <37.564468, 39.032413, 41.129814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541901, 39.427711, 41.072975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221806, 0.151173, 0.963301,
		0.973457, 0.022827, -0.227727,
		-0.056416, 0.988244, -0.142097,
		37.524975, 39.724186, 41.030346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204319, 39.322952, 41.476910>,  <37.564468, 39.032413, 41.129814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204319, 39.322952, 41.476910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.972996, 39.643887, 41.417812>,  <37.834202, 39.836445, 41.382355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.972996, 39.643887, 41.417812>,  <38.204319, 39.322952, 41.476910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972996, 39.643887, 41.417812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094020, 0.245430, 0.964844,
		0.810385, 0.544083, -0.217368,
		-0.578305, 0.802332, -0.147739,
		37.799503, 39.884586, 41.373489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452591, 39.884357, 41.898167>,  <38.204319, 39.322952, 41.476910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452591, 39.884357, 41.898167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.071980, 39.993271, 41.840946>,  <37.843613, 40.058620, 41.806614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.071980, 39.993271, 41.840946>,  <38.452591, 39.884357, 41.898167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071980, 39.993271, 41.840946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083168, 0.219988, 0.971951,
		0.296117, 0.936732, -0.186678,
		-0.951524, 0.272285, -0.143048,
		37.786522, 40.074955, 41.798031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375198, 40.497055, 42.140629>,  <38.452591, 39.884357, 41.898167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375198, 40.497055, 42.140629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.000912, 40.356831, 42.124969>,  <37.776340, 40.272694, 42.115574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.000912, 40.356831, 42.124969>,  <38.375198, 40.497055, 42.140629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000912, 40.356831, 42.124969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132359, 0.246076, 0.960171,
		-0.326969, 0.903632, -0.276659,
		-0.935720, -0.350564, -0.039144,
		37.720196, 40.251659, 42.113228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083202, 40.919544, 42.520855>,  <38.375198, 40.497055, 42.140629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083202, 40.919544, 42.520855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.812721, 40.626953, 42.485779>,  <37.650433, 40.451397, 42.464733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.812721, 40.626953, 42.485779>,  <38.083202, 40.919544, 42.520855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812721, 40.626953, 42.485779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251761, 0.117580, 0.960620,
		-0.692364, 0.671648, -0.263666,
		-0.676201, -0.731480, -0.087686,
		37.609859, 40.407509, 42.459473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467552, 41.220375, 42.776630>,  <38.083202, 40.919544, 42.520855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467552, 41.220375, 42.776630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.397808, 40.827312, 42.801907>,  <37.355961, 40.591476, 42.817074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.397808, 40.827312, 42.801907>,  <37.467552, 41.220375, 42.776630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397808, 40.827312, 42.801907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052885, 0.073430, 0.995897,
		-0.983261, 0.170301, -0.064771,
		-0.174359, -0.982652, 0.063194,
		37.345501, 40.532516, 42.820866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872105, 41.132080, 43.116863>,  <37.467552, 41.220375, 42.776630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872105, 41.132080, 43.116863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.063671, 40.786129, 43.177025>,  <37.178612, 40.578556, 43.213123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.063671, 40.786129, 43.177025>,  <36.872105, 41.132080, 43.116863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063671, 40.786129, 43.177025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278263, 0.012933, 0.960418,
		-0.832593, -0.501808, -0.234471,
		0.478913, -0.864882, 0.150402,
		37.207344, 40.526665, 43.222145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396351, 40.681984, 43.471027>,  <36.872105, 41.132080, 43.116863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396351, 40.681984, 43.471027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.742249, 40.518192, 43.587326>,  <36.949787, 40.419918, 43.657104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.742249, 40.518192, 43.587326>,  <36.396351, 40.681984, 43.471027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742249, 40.518192, 43.587326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330160, -0.027287, 0.943531,
		-0.378426, -0.911910, -0.158791,
		0.864748, -0.409483, 0.290750,
		37.001671, 40.395348, 43.674549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101299, 40.317505, 44.048954>,  <36.396351, 40.681984, 43.471027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101299, 40.317505, 44.048954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.500999, 40.302879, 44.054054>,  <36.740818, 40.294102, 44.057114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.500999, 40.302879, 44.054054>,  <36.101299, 40.317505, 44.048954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500999, 40.302879, 44.054054> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018242, -0.153965, 0.987908,
		-0.034160, -0.987400, -0.154517,
		0.999250, -0.036566, 0.012753,
		36.800774, 40.291908, 44.057880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404217, 39.647739, 44.429539>,  <36.101299, 40.317505, 44.048954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404217, 39.647739, 44.429539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.663910, 39.948757, 44.473671>,  <36.819725, 40.129368, 44.500149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.663910, 39.948757, 44.473671>,  <36.404217, 39.647739, 44.429539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663910, 39.948757, 44.473671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086675, -0.070911, 0.993710,
		0.755632, -0.654715, 0.019188,
		0.649236, 0.752542, 0.110330,
		36.858681, 40.174519, 44.506771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703602, 39.403263, 44.865467>,  <36.404217, 39.647739, 44.429539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703602, 39.403263, 44.865467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.806904, 39.789177, 44.885456>,  <36.868885, 40.020725, 44.897449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.806904, 39.789177, 44.885456>,  <36.703602, 39.403263, 44.865467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806904, 39.789177, 44.885456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070999, -0.032628, 0.996943,
		0.963464, -0.261014, 0.060072,
		0.258256, 0.964783, 0.049968,
		36.884380, 40.078613, 44.900448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248333, 39.547085, 45.391346>,  <36.703602, 39.403263, 44.865467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248333, 39.547085, 45.391346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.011623, 39.865623, 45.341335>,  <36.869598, 40.056747, 45.311329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.011623, 39.865623, 45.341335>,  <37.248333, 39.547085, 45.391346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011623, 39.865623, 45.341335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249881, -0.033757, 0.967688,
		0.766394, 0.603899, 0.218968,
		-0.591777, 0.796346, -0.125031,
		36.834091, 40.104527, 45.303825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946999, 39.759270, 45.416950>,  <37.248333, 39.547085, 45.391346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946999, 39.759270, 45.416950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.259853, 39.565159, 45.573292>,  <38.447567, 39.448692, 45.667095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.259853, 39.565159, 45.573292>,  <37.946999, 39.759270, 45.416950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259853, 39.565159, 45.573292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303153, -0.251666, -0.919110,
		0.544384, 0.837361, -0.049726,
		0.782141, -0.485275, 0.390851,
		38.494495, 39.419575, 45.690548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515038, 39.964718, 45.014912>,  <37.946999, 39.759270, 45.416950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515038, 39.964718, 45.014912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.617290, 39.621437, 45.192966>,  <38.678642, 39.415470, 45.299797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.617290, 39.621437, 45.192966>,  <38.515038, 39.964718, 45.014912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617290, 39.621437, 45.192966> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376911, -0.335528, -0.863342,
		0.890275, 0.388475, 0.237693,
		0.255634, -0.858200, 0.445132,
		38.693981, 39.363976, 45.326508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123283, 39.965145, 44.966251>,  <38.515038, 39.964718, 45.014912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123283, 39.965145, 44.966251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.052502, 39.575600, 45.023201>,  <39.010033, 39.341873, 45.057369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.052502, 39.575600, 45.023201>,  <39.123283, 39.965145, 44.966251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052502, 39.575600, 45.023201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524874, -0.215740, -0.823385,
		0.832583, -0.070973, 0.549334,
		-0.176951, -0.973868, 0.142370,
		38.999416, 39.283440, 45.065910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826466, 39.579498, 44.919769>,  <39.123283, 39.965145, 44.966251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.826466, 39.579498, 44.919769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.533649, 39.314522, 44.856148>,  <39.357960, 39.155537, 44.817974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.533649, 39.314522, 44.856148>,  <39.826466, 39.579498, 44.919769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533649, 39.314522, 44.856148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401999, -0.231527, -0.885885,
		0.550018, -0.712440, 0.435786,
		-0.732036, -0.662438, -0.159056,
		39.314037, 39.115791, 44.808430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137897, 38.987762, 44.627525>,  <39.826466, 39.579498, 44.919769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137897, 38.987762, 44.627525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.755283, 38.921738, 44.531368>,  <39.525715, 38.882122, 44.473675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.755283, 38.921738, 44.531368>,  <40.137897, 38.987762, 44.627525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755283, 38.921738, 44.531368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282888, -0.325256, -0.902321,
		0.070748, -0.931109, 0.357814,
		-0.956540, -0.165059, -0.240389,
		39.468323, 38.872219, 44.459251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057667, 38.286518, 44.472721>,  <40.137897, 38.987762, 44.627525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057667, 38.286518, 44.472721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.752785, 38.474731, 44.294888>,  <39.569855, 38.587658, 44.188187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.752785, 38.474731, 44.294888>,  <40.057667, 38.286518, 44.472721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752785, 38.474731, 44.294888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244426, -0.426752, -0.870712,
		-0.599421, -0.772324, 0.210261,
		-0.762201, 0.470529, -0.444579,
		39.524124, 38.615891, 44.161514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858746, 37.930534, 43.972107>,  <40.057667, 38.286518, 44.472721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858746, 37.930534, 43.972107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.632725, 38.227058, 43.827236>,  <39.497112, 38.404972, 43.740314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.632725, 38.227058, 43.827236>,  <39.858746, 37.930534, 43.972107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632725, 38.227058, 43.827236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120259, -0.360289, -0.925057,
		-0.816242, -0.566263, 0.114434,
		-0.565055, 0.741308, -0.362181,
		39.463207, 38.449451, 43.718582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285336, 37.623547, 43.501869>,  <39.858746, 37.930534, 43.972107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285336, 37.623547, 43.501869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.351471, 38.006275, 43.406239>,  <39.391151, 38.235912, 43.348862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.351471, 38.006275, 43.406239>,  <39.285336, 37.623547, 43.501869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351471, 38.006275, 43.406239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041878, -0.249005, -0.967596,
		-0.985347, 0.149971, -0.081241,
		0.165340, 0.956820, -0.239076,
		39.401073, 38.293320, 43.334515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861259, 37.791759, 42.884377>,  <39.285336, 37.623547, 43.501869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861259, 37.791759, 42.884377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.153580, 38.064526, 42.872250>,  <39.328972, 38.228188, 42.864975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.153580, 38.064526, 42.872250>,  <38.861259, 37.791759, 42.884377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153580, 38.064526, 42.872250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089040, -0.139265, -0.986244,
		-0.676758, 0.718049, -0.162492,
		0.730801, 0.681917, -0.030314,
		39.372822, 38.269100, 42.863155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717335, 38.106186, 42.298458>,  <38.861259, 37.791759, 42.884377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717335, 38.106186, 42.298458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.092545, 38.233292, 42.353802>,  <39.317669, 38.309555, 42.387009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.092545, 38.233292, 42.353802>,  <38.717335, 38.106186, 42.298458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092545, 38.233292, 42.353802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091614, 0.157688, -0.983230,
		-0.334252, 0.934966, 0.118803,
		0.938020, 0.317763, 0.138363,
		39.373951, 38.328621, 42.395309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775700, 38.791344, 42.023308>,  <38.717335, 38.106186, 42.298458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.775700, 38.791344, 42.023308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.141182, 38.629002, 42.031525>,  <39.360470, 38.531597, 42.036453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.141182, 38.629002, 42.031525>,  <38.775700, 38.791344, 42.023308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141182, 38.629002, 42.031525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190404, 0.382904, -0.903953,
		0.359007, 0.829860, 0.427138,
		0.913707, -0.405854, 0.020543,
		39.415295, 38.507244, 42.037689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186958, 39.191563, 41.569019>,  <38.775700, 38.791344, 42.023308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186958, 39.191563, 41.569019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.442116, 38.886772, 41.613701>,  <39.595211, 38.703896, 41.640511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.442116, 38.886772, 41.613701>,  <39.186958, 39.191563, 41.569019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.442116, 38.886772, 41.613701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349517, 0.157201, -0.923648,
		0.686241, 0.628232, 0.366602,
		0.637896, -0.761979, 0.111699,
		39.633484, 38.658180, 41.647209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769695, 39.446724, 41.345760>,  <39.186958, 39.191563, 41.569019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.769695, 39.446724, 41.345760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.795959, 39.048588, 41.317516>,  <39.811718, 38.809708, 41.300571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.795959, 39.048588, 41.317516>,  <39.769695, 39.446724, 41.345760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795959, 39.048588, 41.317516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473451, 0.093363, -0.875858,
		0.878370, 0.024082, 0.477375,
		0.065662, -0.995341, -0.070606,
		39.815659, 38.749985, 41.296333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514694, 39.226055, 41.195934>,  <39.769695, 39.446724, 41.345760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514694, 39.226055, 41.195934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.237537, 38.967583, 41.067963>,  <40.071243, 38.812500, 40.991180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.237537, 38.967583, 41.067963>,  <40.514694, 39.226055, 41.195934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.237537, 38.967583, 41.067963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432835, -0.017883, -0.901296,
		0.576676, -0.762977, 0.292079,
		-0.692891, -0.646178, -0.319930,
		40.029671, 38.773727, 40.971985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.332018, 30.567471, 27.816919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.940760, 30.641058, 27.855682>,  <27.706005, 30.685211, 27.878941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.940760, 30.641058, 27.855682>,  <28.332018, 30.567471, 27.816919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.940760, 30.641058, 27.855682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188528, 0.588077, 0.786525,
		0.087707, 0.787604, -0.609907,
		-0.978143, 0.183969, 0.096907,
		27.647316, 30.696249, 27.884754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.298485, 31.250061, 27.847416>,  <28.332018, 30.567471, 27.816919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.298485, 31.250061, 27.847416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.946806, 31.158598, 28.014616>,  <27.735798, 31.103720, 28.114935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.946806, 31.158598, 28.014616>,  <28.298485, 31.250061, 27.847416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.946806, 31.158598, 28.014616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189919, 0.636411, 0.747604,
		-0.436966, 0.736679, -0.516105,
		-0.879199, -0.228660, 0.417999,
		27.683046, 31.090000, 28.140017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.910147, 31.897152, 28.046427>,  <28.298485, 31.250061, 27.847416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.910147, 31.897152, 28.046427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.755909, 31.604641, 28.271477>,  <27.663366, 31.429134, 28.406507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.755909, 31.604641, 28.271477>,  <27.910147, 31.897152, 28.046427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.755909, 31.604641, 28.271477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047279, 0.593321, 0.803576,
		-0.921456, 0.336455, -0.194207,
		-0.385595, -0.731278, 0.562627,
		27.640230, 31.385258, 28.440266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.271021, 32.247673, 28.353270>,  <27.910147, 31.897152, 28.046427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.271021, 32.247673, 28.353270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.399891, 31.943285, 28.578526>,  <27.477213, 31.760653, 28.713678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.399891, 31.943285, 28.578526>,  <27.271021, 32.247673, 28.353270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.399891, 31.943285, 28.578526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100194, 0.564106, 0.819601,
		-0.941363, -0.320479, 0.105497,
		0.322176, -0.760971, 0.563138,
		27.496544, 31.714994, 28.747467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.832954, 32.131531, 28.816191>,  <27.271021, 32.247673, 28.353270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.832954, 32.131531, 28.816191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.143436, 31.932007, 28.970436>,  <27.329725, 31.812294, 29.062984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.143436, 31.932007, 28.970436>,  <26.832954, 32.131531, 28.816191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.143436, 31.932007, 28.970436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157919, 0.438310, 0.884842,
		-0.610383, -0.747715, 0.261448,
		0.776205, -0.498805, 0.385615,
		27.376297, 31.782366, 29.086121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.639711, 31.789202, 29.429541>,  <26.832954, 32.131531, 28.816191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.639711, 31.789202, 29.429541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.036562, 31.792725, 29.479517>,  <27.274672, 31.794838, 29.509502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.036562, 31.792725, 29.479517>,  <26.639711, 31.789202, 29.429541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.036562, 31.792725, 29.479517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119443, 0.366794, 0.922603,
		-0.037703, -0.930261, 0.364957,
		0.992125, 0.008806, 0.124943,
		27.334200, 31.795366, 29.517000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.763126, 31.635410, 30.212399>,  <26.639711, 31.789202, 29.429541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.763126, 31.635410, 30.212399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.104588, 31.800970, 30.085928>,  <27.309464, 31.900305, 30.010046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.104588, 31.800970, 30.085928>,  <26.763126, 31.635410, 30.212399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.104588, 31.800970, 30.085928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092843, 0.476403, 0.874311,
		0.512504, -0.775711, 0.368255,
		0.853651, 0.413898, -0.316178,
		27.360683, 31.925138, 29.991076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.140177, 31.711153, 30.823545>,  <26.763126, 31.635410, 30.212399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.140177, 31.711153, 30.823545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.339321, 31.951855, 30.573738>,  <27.458809, 32.096275, 30.423853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.339321, 31.951855, 30.573738>,  <27.140177, 31.711153, 30.823545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.339321, 31.951855, 30.573738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102202, 0.674381, 0.731276,
		0.861214, -0.427901, 0.274248,
		0.497861, 0.601756, -0.624518,
		27.488680, 32.132381, 30.386383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.899868, 31.910519, 31.178400>,  <27.140177, 31.711153, 30.823545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.899868, 31.910519, 31.178400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.754921, 32.165737, 30.906639>,  <27.667952, 32.318867, 30.743584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.754921, 32.165737, 30.906639>,  <27.899868, 31.910519, 31.178400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.754921, 32.165737, 30.906639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009662, 0.731476, 0.681799,
		0.931985, 0.240498, -0.271229,
		-0.362369, 0.638047, -0.679401,
		27.646210, 32.357151, 30.702820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.318769, 32.386898, 31.112700>,  <27.899868, 31.910519, 31.178400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.318769, 32.386898, 31.112700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.980165, 32.560406, 30.989239>,  <27.777004, 32.664513, 30.915161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.980165, 32.560406, 30.989239>,  <28.318769, 32.386898, 31.112700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.980165, 32.560406, 30.989239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088694, 0.686571, 0.721633,
		0.524936, 0.583492, -0.619660,
		-0.846508, 0.433771, -0.308653,
		27.726213, 32.690536, 30.896643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.335588, 33.000134, 31.297657>,  <28.318769, 32.386898, 31.112700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.335588, 33.000134, 31.297657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.941135, 33.002277, 31.231308>,  <27.704464, 33.003563, 31.191498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.941135, 33.002277, 31.231308>,  <28.335588, 33.000134, 31.297657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.941135, 33.002277, 31.231308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106465, 0.746275, 0.657069,
		0.127313, 0.665616, -0.735355,
		-0.986132, 0.005364, -0.165875,
		27.645296, 33.003887, 31.181545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.124134, 33.768421, 31.130524>,  <28.335588, 33.000134, 31.297657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.124134, 33.768421, 31.130524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.801888, 33.561413, 31.245874>,  <27.608540, 33.437210, 31.315084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.801888, 33.561413, 31.245874>,  <28.124134, 33.768421, 31.130524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.801888, 33.561413, 31.245874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211120, 0.705584, 0.676446,
		-0.553546, 0.484073, -0.677687,
		-0.805615, -0.517518, 0.288376,
		27.560204, 33.406158, 31.332388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.666264, 34.179703, 31.060858>,  <28.124134, 33.768421, 31.130524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.666264, 34.179703, 31.060858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.538191, 33.909061, 31.326096>,  <27.461348, 33.746677, 31.485237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.538191, 33.909061, 31.326096>,  <27.666264, 34.179703, 31.060858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.538191, 33.909061, 31.326096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138747, 0.725883, 0.673679,
		-0.937141, 0.123697, -0.326291,
		-0.320181, -0.676604, 0.663092,
		27.442137, 33.706081, 31.525023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.113459, 34.463116, 31.370634>,  <27.666264, 34.179703, 31.060858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.113459, 34.463116, 31.370634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.190077, 34.175751, 31.638124>,  <27.236048, 34.003330, 31.798618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.190077, 34.175751, 31.638124>,  <27.113459, 34.463116, 31.370634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.190077, 34.175751, 31.638124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280426, 0.612879, 0.738743,
		-0.940569, -0.329032, -0.084066,
		0.191548, -0.718413, 0.668724,
		27.247541, 33.960228, 31.838741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.561615, 34.424843, 31.858391>,  <27.113459, 34.463116, 31.370634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.561615, 34.424843, 31.858391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.837761, 34.238586, 32.079868>,  <27.003448, 34.126835, 32.212753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.837761, 34.238586, 32.079868>,  <26.561615, 34.424843, 31.858391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.837761, 34.238586, 32.079868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378248, 0.420089, 0.824897,
		-0.616703, -0.778914, 0.113888,
		0.690366, -0.465638, 0.553692,
		27.044870, 34.098896, 32.245975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.181471, 34.340405, 32.485573>,  <26.561615, 34.424843, 31.858391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.181471, 34.340405, 32.485573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.565311, 34.267067, 32.570946>,  <26.795616, 34.223064, 32.622169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.565311, 34.267067, 32.570946>,  <26.181471, 34.340405, 32.485573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.565311, 34.267067, 32.570946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150428, 0.306735, 0.939832,
		-0.237779, -0.933969, 0.266763,
		0.959600, -0.183344, 0.213431,
		26.853191, 34.212063, 32.634975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.120054, 34.186916, 33.191795>,  <26.181471, 34.340405, 32.485573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.120054, 34.186916, 33.191795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.505730, 34.280293, 33.141438>,  <26.737135, 34.336319, 33.111221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.505730, 34.280293, 33.141438>,  <26.120054, 34.186916, 33.191795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.505730, 34.280293, 33.141438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027932, 0.382654, 0.923469,
		0.263750, -0.893913, 0.362430,
		0.964187, 0.233442, -0.125894,
		26.794985, 34.350327, 33.103668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.425972, 34.038464, 33.847321>,  <26.120054, 34.186916, 33.191795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.425972, 34.038464, 33.847321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.665447, 34.304203, 33.668339>,  <26.809132, 34.463646, 33.560951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.665447, 34.304203, 33.668339>,  <26.425972, 34.038464, 33.847321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.665447, 34.304203, 33.668339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002704, 0.556950, 0.830541,
		0.800978, -0.498445, 0.331643,
		0.598688, 0.664349, -0.447453,
		26.845053, 34.503506, 33.534103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.128141, 34.117554, 34.259903>,  <26.425972, 34.038464, 33.847321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.128141, 34.117554, 34.259903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.040344, 34.445946, 34.049068>,  <26.987665, 34.642979, 33.922565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.040344, 34.445946, 34.049068>,  <27.128141, 34.117554, 34.259903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.040344, 34.445946, 34.049068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182940, 0.565314, 0.804334,
		0.958308, 0.080121, -0.274273,
		-0.219495, 0.820975, -0.527088,
		26.974495, 34.692238, 33.890942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.699125, 34.506603, 34.474869>,  <27.128141, 34.117554, 34.259903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.699125, 34.506603, 34.474869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.454868, 34.777443, 34.310596>,  <27.308315, 34.939945, 34.212032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.454868, 34.777443, 34.310596>,  <27.699125, 34.506603, 34.474869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.454868, 34.777443, 34.310596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224919, 0.645530, 0.729865,
		0.759296, 0.353316, -0.546478,
		-0.610640, 0.677096, -0.410681,
		27.271677, 34.980572, 34.187393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.034599, 35.155636, 34.468155>,  <27.699125, 34.506603, 34.474869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.034599, 35.155636, 34.468155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.653255, 35.266426, 34.420170>,  <27.424450, 35.332901, 34.391376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.653255, 35.266426, 34.420170>,  <28.034599, 35.155636, 34.468155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.653255, 35.266426, 34.420170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093701, 0.649388, 0.754662,
		0.286927, 0.708223, -0.645053,
		-0.953359, 0.276975, -0.119966,
		27.367249, 35.349518, 34.384178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.754301, 35.087513, 34.325623>,  <28.034599, 35.155636, 34.468155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.754301, 35.087513, 34.325623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.057962, 35.335316, 34.245716>,  <29.240158, 35.483997, 34.197773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.057962, 35.335316, 34.245716>,  <28.754301, 35.087513, 34.325623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.057962, 35.335316, 34.245716> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107005, -0.183944, -0.977095,
		-0.642058, 0.763138, -0.073351,
		0.759151, 0.619503, -0.199763,
		29.285707, 35.521168, 34.185787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.473585, 35.534184, 33.803650>,  <28.754301, 35.087513, 34.325623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.473585, 35.534184, 33.803650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.872675, 35.545708, 33.779274>,  <29.112129, 35.552624, 33.764648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.872675, 35.545708, 33.779274>,  <28.473585, 35.534184, 33.803650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.872675, 35.545708, 33.779274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055890, -0.151864, -0.986820,
		-0.037686, 0.987981, -0.149909,
		0.997725, 0.028811, -0.060941,
		29.171993, 35.554352, 33.760990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.665106, 36.117672, 33.363705>,  <28.473585, 35.534184, 33.803650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.665106, 36.117672, 33.363705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.955606, 35.843128, 33.348354>,  <29.129908, 35.678402, 33.339146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.955606, 35.843128, 33.348354>,  <28.665106, 36.117672, 33.363705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.955606, 35.843128, 33.348354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193073, -0.150081, -0.969638,
		0.659759, 0.711611, -0.241514,
		0.726252, -0.686357, -0.038375,
		29.173483, 35.637222, 33.336842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.853086, 36.241901, 32.652687>,  <28.665106, 36.117672, 33.363705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.853086, 36.241901, 32.652687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.026976, 35.892658, 32.740955>,  <29.131310, 35.683113, 32.793919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.026976, 35.892658, 32.740955>,  <28.853086, 36.241901, 32.652687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.026976, 35.892658, 32.740955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202869, -0.143799, -0.968590,
		0.877417, 0.465837, 0.114614,
		0.434723, -0.873108, 0.220675,
		29.157393, 35.630726, 32.807159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.509348, 36.268990, 32.208443>,  <28.853086, 36.241901, 32.652687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.509348, 36.268990, 32.208443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.458458, 35.894527, 32.339542>,  <29.427923, 35.669849, 32.418201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.458458, 35.894527, 32.339542>,  <29.509348, 36.268990, 32.208443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.458458, 35.894527, 32.339542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176786, -0.346543, -0.921224,
		0.975992, -0.059262, 0.209589,
		-0.127225, -0.936160, 0.327747,
		29.420290, 35.613678, 32.437866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.136740, 35.908459, 32.011669>,  <29.509348, 36.268990, 32.208443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.136740, 35.908459, 32.011669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.847879, 35.636673, 32.063553>,  <29.674564, 35.473602, 32.094685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.847879, 35.636673, 32.063553>,  <30.136740, 35.908459, 32.011669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.847879, 35.636673, 32.063553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047055, -0.235334, -0.970775,
		0.690135, -0.694941, 0.201919,
		-0.722150, -0.679467, 0.129712,
		29.631235, 35.432835, 32.102467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.316574, 35.340103, 31.606441>,  <30.136740, 35.908459, 32.011669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.316574, 35.340103, 31.606441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.926443, 35.278912, 31.670107>,  <29.692364, 35.242199, 31.708305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.926443, 35.278912, 31.670107>,  <30.316574, 35.340103, 31.606441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.926443, 35.278912, 31.670107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114032, -0.268228, -0.956583,
		0.189024, -0.951132, 0.244166,
		-0.975329, -0.152975, 0.159161,
		29.633844, 35.233021, 31.717855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.253860, 34.731110, 31.327131>,  <30.316574, 35.340103, 31.606441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.253860, 34.731110, 31.327131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.877598, 34.862606, 31.360819>,  <29.651840, 34.941505, 31.381031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.877598, 34.862606, 31.360819>,  <30.253860, 34.731110, 31.327131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.877598, 34.862606, 31.360819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216571, -0.390460, -0.894784,
		-0.261268, -0.859924, 0.438485,
		-0.940657, 0.328741, 0.084220,
		29.595400, 34.961227, 31.386086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.879955, 34.247013, 31.089422>,  <30.253860, 34.731110, 31.327131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.879955, 34.247013, 31.089422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.627335, 34.554909, 31.052229>,  <29.475761, 34.739647, 31.029913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.627335, 34.554909, 31.052229>,  <29.879955, 34.247013, 31.089422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.627335, 34.554909, 31.052229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189486, -0.269522, -0.944168,
		-0.751823, -0.578672, 0.316071,
		-0.631551, 0.769738, -0.092983,
		29.437870, 34.785831, 31.024334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.283459, 34.009125, 30.784809>,  <29.879955, 34.247013, 31.089422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.283459, 34.009125, 30.784809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.239992, 34.396900, 30.696833>,  <29.213913, 34.629566, 30.644047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.239992, 34.396900, 30.696833>,  <29.283459, 34.009125, 30.784809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.239992, 34.396900, 30.696833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371417, -0.244823, -0.895607,
		-0.922085, -0.015630, 0.386671,
		-0.108665, 0.969442, -0.219943,
		29.207392, 34.687733, 30.630850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.621847, 34.035198, 30.589769>,  <29.283459, 34.009125, 30.784809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.621847, 34.035198, 30.589769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.779507, 34.366989, 30.431475>,  <28.874102, 34.566063, 30.336498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.779507, 34.366989, 30.431475>,  <28.621847, 34.035198, 30.589769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.779507, 34.366989, 30.431475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402111, -0.231547, -0.885829,
		-0.826410, 0.508277, 0.242280,
		0.394147, 0.829482, -0.395737,
		28.897751, 34.615833, 30.312754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.091078, 34.201302, 30.215639>,  <28.621847, 34.035198, 30.589769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.091078, 34.201302, 30.215639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.414286, 34.406307, 30.099409>,  <28.608210, 34.529312, 30.029671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.414286, 34.406307, 30.099409>,  <28.091078, 34.201302, 30.215639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.414286, 34.406307, 30.099409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246371, -0.154068, -0.956851,
		-0.535169, 0.844743, 0.001779,
		0.808019, 0.512516, -0.290573,
		28.656691, 34.560062, 30.012238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.836321, 34.681168, 29.662949>,  <28.091078, 34.201302, 30.215639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.836321, 34.681168, 29.662949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.230787, 34.645416, 29.607111>,  <28.467466, 34.623966, 29.573608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.230787, 34.645416, 29.607111>,  <27.836321, 34.681168, 29.662949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230787, 34.645416, 29.607111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153379, -0.172720, -0.972956,
		0.062854, 0.980907, -0.184040,
		0.986167, -0.089382, -0.139594,
		28.526638, 34.618603, 29.565233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.921597, 34.994877, 29.008924>,  <27.836321, 34.681168, 29.662949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.921597, 34.994877, 29.008924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.253231, 34.784233, 29.084072>,  <28.452211, 34.657845, 29.129160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.253231, 34.784233, 29.084072>,  <27.921597, 34.994877, 29.008924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.253231, 34.784233, 29.084072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047776, -0.268052, -0.962219,
		0.557075, 0.806739, -0.197079,
		0.829087, -0.526613, 0.187868,
		28.501957, 34.626247, 29.140432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.379795, 35.106853, 28.515947>,  <27.921597, 34.994877, 29.008924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.379795, 35.106853, 28.515947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.513853, 34.756878, 28.655752>,  <28.594288, 34.546894, 28.739635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.513853, 34.756878, 28.655752>,  <28.379795, 35.106853, 28.515947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.513853, 34.756878, 28.655752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074187, -0.394323, -0.915973,
		0.939240, 0.281056, -0.197065,
		0.335147, -0.874938, 0.349513,
		28.614397, 34.494396, 28.760607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.984306, 34.896893, 28.088511>,  <28.379795, 35.106853, 28.515947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.984306, 34.896893, 28.088511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.831169, 34.566074, 28.253159>,  <28.739286, 34.367584, 28.351948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.831169, 34.566074, 28.253159>,  <28.984306, 34.896893, 28.088511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.831169, 34.566074, 28.253159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174386, -0.372858, -0.911354,
		0.907205, -0.420687, -0.001479,
		-0.382843, -0.827042, 0.411621,
		28.716316, 34.317963, 28.376644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124357, 34.379585, 27.614632>,  <28.984306, 34.896893, 28.088511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.124357, 34.379585, 27.614632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.858389, 34.209305, 27.860119>,  <28.698807, 34.107136, 28.007412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.858389, 34.209305, 27.860119>,  <29.124357, 34.379585, 27.614632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.858389, 34.209305, 27.860119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381647, -0.512670, -0.769100,
		0.642047, -0.745616, 0.178416,
		-0.664922, -0.425706, 0.613720,
		28.658913, 34.081593, 28.044235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.037315, 33.704849, 27.307907>,  <29.124357, 34.379585, 27.614632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.037315, 33.704849, 27.307907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.705051, 33.789566, 27.513878>,  <28.505693, 33.840397, 27.637461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.705051, 33.789566, 27.513878>,  <29.037315, 33.704849, 27.307907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.705051, 33.789566, 27.513878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554212, -0.403257, -0.728171,
		0.053426, -0.890240, 0.452348,
		-0.830659, 0.211794, 0.514926,
		28.455854, 33.853104, 27.668356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.693430, 33.072456, 27.411358>,  <29.037315, 33.704849, 27.307907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.693430, 33.072456, 27.411358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.414021, 33.358269, 27.426893>,  <28.246374, 33.529755, 27.436214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.414021, 33.358269, 27.426893>,  <28.693430, 33.072456, 27.411358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.414021, 33.358269, 27.426893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530304, -0.480458, -0.698525,
		-0.480458, -0.508534, 0.714530,
		0.698525, -0.714530, -0.038838,
		28.204462, 33.572628, 27.438545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.205069, 32.684917, 27.301334>,  <28.693430, 33.072456, 27.411358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.205069, 32.684917, 27.301334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.057644, 33.050785, 27.234945>,  <27.969189, 33.270306, 27.195112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.057644, 33.050785, 27.234945>,  <28.205069, 32.684917, 27.301334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.057644, 33.050785, 27.234945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457141, -0.333796, -0.824380,
		-0.809434, -0.227962, 0.541156,
		-0.368563, 0.914666, -0.165975,
		27.947075, 33.325184, 27.185152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.490664, 32.572754, 27.303839>,  <28.205069, 32.684917, 27.301334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.490664, 32.572754, 27.303839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.549076, 32.918934, 27.112141>,  <27.584124, 33.126640, 26.997122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.549076, 32.918934, 27.112141>,  <27.490664, 32.572754, 27.303839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.549076, 32.918934, 27.112141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599934, -0.307718, -0.738504,
		-0.786608, 0.395362, 0.474274,
		0.146034, 0.865447, -0.479245,
		27.592886, 33.178570, 26.968367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.481392, 36.342995, 47.318886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.141884, 36.159164, 47.214287>,  <38.938179, 36.048866, 47.151527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.141884, 36.159164, 47.214287>,  <39.481392, 36.342995, 47.318886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141884, 36.159164, 47.214287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416799, 0.277186, 0.865706,
		-0.325377, 0.843775, -0.426818,
		-0.848769, -0.459578, -0.261495,
		38.887253, 36.021290, 47.135838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057316, 36.768208, 47.515167>,  <39.481392, 36.342995, 47.318886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057316, 36.768208, 47.515167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.830315, 36.439739, 47.491104>,  <38.694115, 36.242657, 47.476665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.830315, 36.439739, 47.491104>,  <39.057316, 36.768208, 47.515167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830315, 36.439739, 47.491104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418242, 0.224569, 0.880138,
		-0.709235, 0.524640, -0.470892,
		-0.567503, -0.821171, -0.060154,
		38.660065, 36.193386, 47.473057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458023, 36.963432, 47.659451>,  <39.057316, 36.768208, 47.515167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458023, 36.963432, 47.659451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.434006, 36.569199, 47.722721>,  <38.419594, 36.332657, 47.760685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.434006, 36.569199, 47.722721>,  <38.458023, 36.963432, 47.659451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434006, 36.569199, 47.722721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491606, 0.167110, 0.854633,
		-0.868745, -0.026447, -0.494553,
		-0.060042, -0.985583, 0.158178,
		38.415993, 36.273525, 47.770176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705372, 36.839920, 47.862457>,  <38.458023, 36.963432, 47.659451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705372, 36.839920, 47.862457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.929325, 36.543526, 48.010765>,  <38.063698, 36.365688, 48.099751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.929325, 36.543526, 48.010765>,  <37.705372, 36.839920, 47.862457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929325, 36.543526, 48.010765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546147, 0.006480, 0.837665,
		-0.623101, -0.671488, -0.401060,
		0.559883, -0.740987, 0.370769,
		38.097290, 36.321228, 48.121994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238873, 36.413212, 48.129265>,  <37.705372, 36.839920, 47.862457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238873, 36.413212, 48.129265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.576248, 36.312916, 48.319317>,  <37.778671, 36.252739, 48.433346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.576248, 36.312916, 48.319317>,  <37.238873, 36.413212, 48.129265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576248, 36.312916, 48.319317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462295, 0.111783, 0.879652,
		-0.273677, -0.961578, -0.021635,
		0.843436, -0.250742, 0.475125,
		37.829281, 36.237694, 48.461853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016392, 36.128231, 48.711552>,  <37.238873, 36.413212, 48.129265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016392, 36.128231, 48.711552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.401413, 36.201805, 48.791214>,  <37.632423, 36.245949, 48.839012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.401413, 36.201805, 48.791214>,  <37.016392, 36.128231, 48.711552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401413, 36.201805, 48.791214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234894, 0.199061, 0.951420,
		0.135349, -0.962572, 0.234810,
		0.962551, 0.183930, 0.199159,
		37.690178, 36.256985, 48.850960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199570, 35.731426, 49.316647>,  <37.016392, 36.128231, 48.711552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199570, 35.731426, 49.316647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.468529, 36.026791, 49.296124>,  <37.629906, 36.204010, 49.283810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.468529, 36.026791, 49.296124>,  <37.199570, 35.731426, 49.316647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468529, 36.026791, 49.296124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048814, 0.113405, 0.992349,
		0.738577, -0.664750, 0.112298,
		0.672399, 0.738408, -0.051309,
		37.670250, 36.248314, 49.280731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515144, 35.665531, 49.932148>,  <37.199570, 35.731426, 49.316647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515144, 35.665531, 49.932148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.631359, 36.018116, 49.783226>,  <37.701088, 36.229668, 49.693874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.631359, 36.018116, 49.783226>,  <37.515144, 35.665531, 49.932148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631359, 36.018116, 49.783226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096639, 0.360065, 0.927908,
		0.951971, -0.305569, 0.019427,
		0.290536, 0.881465, -0.372301,
		37.718521, 36.282555, 49.671535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196388, 35.911312, 50.224022>,  <37.515144, 35.665531, 49.932148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196388, 35.911312, 50.224022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.040089, 36.250610, 50.081028>,  <37.946308, 36.454189, 49.995232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.040089, 36.250610, 50.081028>,  <38.196388, 35.911312, 50.224022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040089, 36.250610, 50.081028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319024, 0.489084, 0.811801,
		0.863447, 0.203162, -0.461719,
		-0.390746, 0.848246, -0.357485,
		37.922863, 36.505085, 49.973782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649994, 36.463856, 50.369347>,  <38.196388, 35.911312, 50.224022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649994, 36.463856, 50.369347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.297375, 36.651882, 50.351837>,  <38.085804, 36.764698, 50.341331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.297375, 36.651882, 50.351837>,  <38.649994, 36.463856, 50.369347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297375, 36.651882, 50.351837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206295, 0.466943, 0.859888,
		0.424645, 0.748999, -0.508603,
		-0.881543, 0.470070, -0.043771,
		38.032913, 36.792904, 50.338707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782207, 37.168930, 50.523247>,  <38.649994, 36.463856, 50.369347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782207, 37.168930, 50.523247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.387352, 37.140751, 50.580650>,  <38.150440, 37.123844, 50.615093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.387352, 37.140751, 50.580650>,  <38.782207, 37.168930, 50.523247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387352, 37.140751, 50.580650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097494, 0.446145, 0.889635,
		-0.126694, 0.892184, -0.433539,
		-0.987139, -0.070444, 0.143507,
		38.091209, 37.119617, 50.623703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493095, 37.844471, 50.653194>,  <38.782207, 37.168930, 50.523247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493095, 37.844471, 50.653194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.205807, 37.607643, 50.799404>,  <38.033432, 37.465546, 50.887131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.205807, 37.607643, 50.799404>,  <38.493095, 37.844471, 50.653194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205807, 37.607643, 50.799404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080674, 0.450917, 0.888912,
		-0.691122, 0.667924, -0.276093,
		-0.718221, -0.592074, 0.365523,
		37.990341, 37.430019, 50.909061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964581, 38.250736, 50.989502>,  <38.493095, 37.844471, 50.653194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964581, 38.250736, 50.989502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.992195, 37.892754, 51.165817>,  <38.008766, 37.677963, 51.271606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.992195, 37.892754, 51.165817>,  <37.964581, 38.250736, 50.989502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992195, 37.892754, 51.165817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128560, 0.446140, 0.885682,
		-0.989296, -0.004481, 0.145857,
		0.069041, -0.894952, 0.440788,
		38.012909, 37.624268, 51.298054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576405, 38.205311, 51.734470>,  <37.964581, 38.250736, 50.989502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576405, 38.205311, 51.734470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.888584, 37.961346, 51.679478>,  <38.075893, 37.814968, 51.646481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.888584, 37.961346, 51.679478>,  <37.576405, 38.205311, 51.734470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888584, 37.961346, 51.679478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392689, 0.307081, 0.866889,
		-0.486510, -0.730552, 0.479168,
		0.780451, -0.609914, -0.137482,
		38.122719, 37.778370, 51.638233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019981, 38.204247, 51.119804>,  <37.576405, 38.205311, 51.734470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019981, 38.204247, 51.119804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.896912, 38.581287, 51.067902>,  <36.823067, 38.807510, 51.036762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.896912, 38.581287, 51.067902>,  <37.019981, 38.204247, 51.119804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896912, 38.581287, 51.067902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399145, 0.004075, -0.916879,
		-0.863723, -0.333894, -0.377488,
		-0.307679, 0.942602, -0.129752,
		36.804607, 38.864067, 51.028976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638645, 38.245232, 50.520954>,  <37.019981, 38.204247, 51.119804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638645, 38.245232, 50.520954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.801834, 38.607235, 50.569149>,  <36.899746, 38.824436, 50.598064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.801834, 38.607235, 50.569149>,  <36.638645, 38.245232, 50.520954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801834, 38.607235, 50.569149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364916, -0.040672, -0.930152,
		-0.836895, 0.423444, -0.346845,
		0.407974, 0.905009, 0.120483,
		36.924225, 38.878738, 50.605293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424767, 38.650753, 50.022213>,  <36.638645, 38.245232, 50.520954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424767, 38.650753, 50.022213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.768517, 38.811329, 50.148907>,  <36.974766, 38.907673, 50.224922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.768517, 38.811329, 50.148907>,  <36.424767, 38.650753, 50.022213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768517, 38.811329, 50.148907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325216, 0.048918, -0.944374,
		-0.394602, 0.914579, -0.088515,
		0.859374, 0.401438, 0.316739,
		37.026329, 38.931759, 50.243927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538807, 39.065056, 49.480465>,  <36.424767, 38.650753, 50.022213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538807, 39.065056, 49.480465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.891403, 39.104645, 49.665150>,  <37.102962, 39.128399, 49.775959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.891403, 39.104645, 49.665150>,  <36.538807, 39.065056, 49.480465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891403, 39.104645, 49.665150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445652, 0.148840, -0.882746,
		-0.156090, 0.983896, 0.087093,
		0.881493, 0.098975, 0.461708,
		37.155849, 39.134338, 49.803661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887669, 39.695900, 49.263649>,  <36.538807, 39.065056, 49.480465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887669, 39.695900, 49.263649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.187149, 39.478008, 49.414764>,  <37.366837, 39.347275, 49.505432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.187149, 39.478008, 49.414764>,  <36.887669, 39.695900, 49.263649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187149, 39.478008, 49.414764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524298, 0.137838, -0.840305,
		0.405663, 0.827208, 0.388798,
		0.748698, -0.544727, 0.377787,
		37.411758, 39.314590, 49.528099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435379, 40.101414, 49.177700>,  <36.887669, 39.695900, 49.263649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435379, 40.101414, 49.177700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.584438, 39.732574, 49.219402>,  <37.673874, 39.511269, 49.244423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.584438, 39.732574, 49.219402>,  <37.435379, 40.101414, 49.177700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584438, 39.732574, 49.219402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478615, 0.094729, -0.872900,
		0.795025, 0.375178, 0.476631,
		0.372644, -0.922100, 0.104253,
		37.696232, 39.455944, 49.250679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164280, 40.149021, 48.960541>,  <37.435379, 40.101414, 49.177700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164280, 40.149021, 48.960541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.063698, 39.764126, 48.918846>,  <38.003349, 39.533188, 48.893829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.063698, 39.764126, 48.918846>,  <38.164280, 40.149021, 48.960541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063698, 39.764126, 48.918846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355909, 0.008220, -0.934484,
		0.900054, -0.272083, 0.340402,
		-0.251459, -0.962239, -0.104235,
		37.988258, 39.475452, 48.887577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834240, 39.769421, 48.768230>,  <38.164280, 40.149021, 48.960541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834240, 39.769421, 48.768230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.534698, 39.530483, 48.653408>,  <38.354973, 39.387123, 48.584515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.534698, 39.530483, 48.653408>,  <38.834240, 39.769421, 48.768230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534698, 39.530483, 48.653408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438842, -0.122366, -0.890193,
		0.496622, -0.792598, 0.353773,
		-0.748856, -0.597340, -0.287056,
		38.310043, 39.351280, 48.567291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210209, 39.189987, 48.374718>,  <38.834240, 39.769421, 48.768230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210209, 39.189987, 48.374718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.830681, 39.168461, 48.250244>,  <38.602962, 39.155544, 48.175560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.830681, 39.168461, 48.250244>,  <39.210209, 39.189987, 48.374718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830681, 39.168461, 48.250244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315720, -0.184383, -0.930765,
		-0.007289, -0.981380, 0.191937,
		-0.948824, -0.053814, -0.311185,
		38.546032, 39.152317, 48.156887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211353, 38.650116, 47.946457>,  <39.210209, 39.189987, 48.374718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211353, 38.650116, 47.946457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.920311, 38.905495, 47.846085>,  <38.745686, 39.058723, 47.785862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.920311, 38.905495, 47.846085>,  <39.211353, 38.650116, 47.946457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920311, 38.905495, 47.846085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230247, -0.117285, -0.966039,
		-0.646197, -0.760676, -0.061663,
		-0.727610, 0.638449, -0.250932,
		38.702026, 39.097031, 47.770805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889057, 38.285610, 47.455441>,  <39.211353, 38.650116, 47.946457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889057, 38.285610, 47.455441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.761459, 38.662277, 47.412525>,  <38.684902, 38.888275, 47.386776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.761459, 38.662277, 47.412525>,  <38.889057, 38.285610, 47.455441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761459, 38.662277, 47.412525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096537, -0.080335, -0.992082,
		-0.942827, -0.326827, -0.065279,
		-0.318995, 0.941664, -0.107293,
		38.665760, 38.944775, 47.380337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352589, 38.387169, 46.998768>,  <38.889057, 38.285610, 47.455441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352589, 38.387169, 46.998768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.450901, 38.772976, 46.960194>,  <38.509888, 39.004459, 46.937050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.450901, 38.772976, 46.960194>,  <38.352589, 38.387169, 46.998768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450901, 38.772976, 46.960194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127993, -0.066325, -0.989555,
		-0.960839, 0.255554, 0.107150,
		0.245778, 0.964517, -0.096437,
		38.524635, 39.062332, 46.931263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879692, 38.671261, 46.430801>,  <38.352589, 38.387169, 46.998768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879692, 38.671261, 46.430801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.160591, 38.951401, 46.481949>,  <38.329132, 39.119484, 46.512638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.160591, 38.951401, 46.481949>,  <37.879692, 38.671261, 46.430801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160591, 38.951401, 46.481949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073349, 0.107477, -0.991498,
		-0.708141, 0.705659, 0.024106,
		0.702250, 0.700353, 0.127868,
		38.371265, 39.161507, 46.520309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672264, 39.190189, 45.963146>,  <37.879692, 38.671261, 46.430801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672264, 39.190189, 45.963146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.059296, 39.255596, 46.040142>,  <38.291515, 39.294838, 46.086338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.059296, 39.255596, 46.040142>,  <37.672264, 39.190189, 45.963146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059296, 39.255596, 46.040142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213546, -0.122729, -0.969193,
		-0.134852, 0.978877, -0.153668,
		0.967581, 0.163513, 0.192485,
		38.349571, 39.304649, 46.097889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450836, 39.987938, 46.007248>,  <37.672264, 39.190189, 45.963146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450836, 39.987938, 46.007248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.133980, 40.199692, 45.885750>,  <36.943867, 40.326744, 45.812851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.133980, 40.199692, 45.885750>,  <37.450836, 39.987938, 46.007248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133980, 40.199692, 45.885750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398151, -0.071013, 0.914567,
		0.462590, 0.845403, 0.267029,
		-0.792140, 0.529388, -0.303748,
		36.896339, 40.358509, 45.794624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368752, 40.689823, 46.363403>,  <37.450836, 39.987938, 46.007248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368752, 40.689823, 46.363403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.992367, 40.606766, 46.256470>,  <36.766537, 40.556931, 46.192310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.992367, 40.606766, 46.256470>,  <37.368752, 40.689823, 46.363403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992367, 40.606766, 46.256470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295335, 0.117658, 0.948121,
		-0.165420, 0.971102, -0.172038,
		-0.940964, -0.207647, -0.267337,
		36.710079, 40.544472, 46.176270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011326, 41.223156, 46.722500>,  <37.368752, 40.689823, 46.363403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011326, 41.223156, 46.722500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.724560, 40.955482, 46.644287>,  <36.552502, 40.794880, 46.597359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.724560, 40.955482, 46.644287>,  <37.011326, 41.223156, 46.722500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724560, 40.955482, 46.644287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352857, 0.106396, 0.929609,
		-0.601273, 0.735443, -0.312401,
		-0.716912, -0.669182, -0.195533,
		36.509487, 40.754726, 46.585629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394897, 41.414822, 47.069916>,  <37.011326, 41.223156, 46.722500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394897, 41.414822, 47.069916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.330078, 41.025909, 47.002491>,  <36.291187, 40.792561, 46.962036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.330078, 41.025909, 47.002491>,  <36.394897, 41.414822, 47.069916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330078, 41.025909, 47.002491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622286, -0.031887, 0.782140,
		-0.765833, 0.231639, -0.599869,
		-0.162046, -0.972279, -0.168566,
		36.281464, 40.734226, 46.951920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684383, 41.282871, 47.191963>,  <36.394897, 41.414822, 47.069916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684383, 41.282871, 47.191963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.831944, 40.911213, 47.201710>,  <35.920479, 40.688217, 47.207558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.831944, 40.911213, 47.201710>,  <35.684383, 41.282871, 47.191963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831944, 40.911213, 47.201710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736295, -0.276126, 0.617757,
		-0.567260, -0.245834, -0.785991,
		0.368898, -0.929150, 0.024371,
		35.942612, 40.632469, 47.209023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116764, 40.843498, 47.163685>,  <35.684383, 41.282871, 47.191963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116764, 40.843498, 47.163685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.407249, 40.616318, 47.318626>,  <35.581543, 40.480011, 47.411591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.407249, 40.616318, 47.318626>,  <35.116764, 40.843498, 47.163685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407249, 40.616318, 47.318626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546070, -0.134265, 0.826911,
		-0.417635, -0.812038, -0.407646,
		0.726216, -0.567950, 0.387355,
		35.625114, 40.445934, 47.434834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764004, 40.257187, 47.532986>,  <35.116764, 40.843498, 47.163685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764004, 40.257187, 47.532986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.130093, 40.287746, 47.691242>,  <35.349747, 40.306084, 47.786194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.130093, 40.287746, 47.691242>,  <34.764004, 40.257187, 47.532986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130093, 40.287746, 47.691242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368198, -0.240314, 0.898154,
		0.163695, -0.967684, -0.191811,
		0.915224, 0.076399, 0.395637,
		35.404659, 40.310665, 47.809933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484604, 39.570450, 47.446182>,  <34.764004, 40.257187, 47.532986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484604, 39.570450, 47.446182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.116810, 39.423027, 47.391464>,  <33.896133, 39.334572, 47.358631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.116810, 39.423027, 47.391464>,  <34.484604, 39.570450, 47.446182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116810, 39.423027, 47.391464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136133, 0.027946, -0.990296,
		0.368805, -0.929184, 0.024477,
		-0.919484, -0.368559, -0.136799,
		33.840965, 39.312458, 47.350426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601398, 39.001678, 47.021542>,  <34.484604, 39.570450, 47.446182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601398, 39.001678, 47.021542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.217499, 39.106529, 46.981194>,  <33.987160, 39.169441, 46.956985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.217499, 39.106529, 46.981194>,  <34.601398, 39.001678, 47.021542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217499, 39.106529, 46.981194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065839, -0.139174, -0.988077,
		-0.273043, -0.954944, 0.116313,
		-0.959746, 0.262130, -0.100873,
		33.929573, 39.185169, 46.950932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208153, 38.397968, 46.716824>,  <34.601398, 39.001678, 47.021542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208153, 38.397968, 46.716824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.976570, 38.715771, 46.643528>,  <33.837620, 38.906452, 46.599552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.976570, 38.715771, 46.643528>,  <34.208153, 38.397968, 46.716824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976570, 38.715771, 46.643528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054591, -0.262002, -0.963522,
		-0.813530, -0.547833, 0.195060,
		-0.578955, 0.794502, -0.183240,
		33.802883, 38.954121, 46.588554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774559, 38.199268, 46.088394>,  <34.208153, 38.397968, 46.716824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774559, 38.199268, 46.088394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.751236, 38.598385, 46.101166>,  <33.737244, 38.837852, 46.108829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.751236, 38.598385, 46.101166>,  <33.774559, 38.199268, 46.088394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751236, 38.598385, 46.101166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001053, 0.032046, -0.999486,
		-0.998298, -0.058245, -0.002919,
		-0.058308, 0.997788, 0.031930,
		33.733742, 38.897720, 46.110744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357811, 38.368717, 45.545921>,  <33.774559, 38.199268, 46.088394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357811, 38.368717, 45.545921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.485821, 38.739376, 45.624828>,  <33.562626, 38.961769, 45.672173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.485821, 38.739376, 45.624828>,  <33.357811, 38.368717, 45.545921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485821, 38.739376, 45.624828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182870, 0.143880, -0.972552,
		-0.929591, 0.347318, -0.123409,
		0.320029, 0.926644, 0.197264,
		33.581829, 39.017368, 45.684006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958721, 38.767193, 45.062740>,  <33.357811, 38.368717, 45.545921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958721, 38.767193, 45.062740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.292290, 38.954662, 45.179302>,  <33.492432, 39.067146, 45.249241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.292290, 38.954662, 45.179302>,  <32.958721, 38.767193, 45.062740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292290, 38.954662, 45.179302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254416, 0.142089, -0.956600,
		-0.489741, 0.871868, -0.000747,
		0.833922, 0.468676, 0.291404,
		33.542465, 39.095264, 45.266724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992844, 39.294838, 44.599728>,  <32.958721, 38.767193, 45.062740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992844, 39.294838, 44.599728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.365860, 39.286022, 44.743885>,  <33.589668, 39.280731, 44.830379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.365860, 39.286022, 44.743885>,  <32.992844, 39.294838, 44.599728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365860, 39.286022, 44.743885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360992, 0.037073, -0.931832,
		0.007176, 0.999070, 0.042529,
		0.932542, -0.022040, 0.360390,
		33.645622, 39.279411, 44.852001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.577785, 34.637146, 51.096397> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.774952, 34.984100, 51.069019>,  <35.893250, 35.192272, 51.052593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.774952, 34.984100, 51.069019>,  <35.577785, 34.637146, 51.096397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774952, 34.984100, 51.069019> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116870, -0.143961, -0.982658,
		-0.862194, 0.476365, -0.172332,
		0.492913, 0.867382, -0.068449,
		35.922825, 35.244316, 51.048485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132599, 35.031784, 50.614204>,  <35.577785, 34.637146, 51.096397>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132599, 35.031784, 50.614204> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.521042, 35.124142, 50.638344>,  <35.754108, 35.179558, 50.652828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.521042, 35.124142, 50.638344>,  <35.132599, 35.031784, 50.614204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521042, 35.124142, 50.638344> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097595, -0.153479, -0.983321,
		-0.217782, 0.960798, -0.171578,
		0.971106, 0.230895, 0.060344,
		35.812374, 35.193409, 50.656448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252766, 35.467934, 50.061573>,  <35.132599, 35.031784, 50.614204>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252766, 35.467934, 50.061573> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.603607, 35.315170, 50.178078>,  <35.814114, 35.223511, 50.247978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.603607, 35.315170, 50.178078>,  <35.252766, 35.467934, 50.061573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603607, 35.315170, 50.178078> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219633, -0.220371, -0.950367,
		0.427139, 0.897542, -0.109409,
		0.877105, -0.381909, 0.291259,
		35.866737, 35.200596, 50.265457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515892, 35.462242, 49.484901>,  <35.252766, 35.467934, 50.061573>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515892, 35.462242, 49.484901> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.779449, 35.235901, 49.683163>,  <35.937584, 35.100098, 49.802120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.779449, 35.235901, 49.683163>,  <35.515892, 35.462242, 49.484901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779449, 35.235901, 49.683163> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271999, -0.435110, -0.858310,
		0.701340, 0.700352, -0.132780,
		0.658893, -0.565851, 0.495654,
		35.977116, 35.066147, 49.831860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153965, 35.475399, 49.135006>,  <35.515892, 35.462242, 49.484901>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153965, 35.475399, 49.135006> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.178368, 35.133038, 49.340416>,  <36.193008, 34.927620, 49.463661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.178368, 35.133038, 49.340416>,  <36.153965, 35.475399, 49.135006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178368, 35.133038, 49.340416> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290111, -0.477069, -0.829602,
		0.955046, 0.199589, 0.219204,
		0.061004, -0.855902, 0.513527,
		36.196671, 34.876266, 49.494473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807705, 35.095032, 48.919842>,  <36.153965, 35.475399, 49.135006>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807705, 35.095032, 48.919842> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.561138, 34.807877, 49.049252>,  <36.413197, 34.635586, 49.126896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.561138, 34.807877, 49.049252>,  <36.807705, 35.095032, 48.919842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561138, 34.807877, 49.049252> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281922, -0.584841, -0.760579,
		0.735220, -0.377626, 0.562894,
		-0.616418, -0.717885, 0.323526,
		36.376213, 34.592510, 49.146309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176369, 34.561752, 48.821884>,  <36.807705, 35.095032, 48.919842>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176369, 34.561752, 48.821884> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.802399, 34.423676, 48.854774>,  <36.578018, 34.340828, 48.874508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.802399, 34.423676, 48.854774>,  <37.176369, 34.561752, 48.821884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802399, 34.423676, 48.854774> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199267, -0.702453, -0.683266,
		0.293619, -0.622416, 0.725525,
		-0.934923, -0.345193, 0.082227,
		36.521923, 34.320118, 48.879444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230934, 33.870735, 48.868996>,  <37.176369, 34.561752, 48.821884>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230934, 33.870735, 48.868996> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.851055, 33.927853, 48.757507>,  <36.623127, 33.962124, 48.690613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.851055, 33.927853, 48.757507>,  <37.230934, 33.870735, 48.868996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851055, 33.927853, 48.757507> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134536, -0.617662, -0.774851,
		-0.282802, -0.773371, 0.567380,
		-0.949696, 0.142796, -0.278722,
		36.566147, 33.970692, 48.673889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023911, 33.206493, 48.634426>,  <37.230934, 33.870735, 48.868996>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023911, 33.206493, 48.634426> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.782894, 33.483028, 48.474934>,  <36.638283, 33.648949, 48.379238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.782894, 33.483028, 48.474934>,  <37.023911, 33.206493, 48.634426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782894, 33.483028, 48.474934> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003169, -0.497536, -0.867437,
		-0.798079, -0.523934, 0.297597,
		-0.602545, 0.691340, -0.398734,
		36.602131, 33.690430, 48.355312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484276, 32.831890, 48.137604>,  <37.023911, 33.206493, 48.634426>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484276, 32.831890, 48.137604> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.429523, 33.198563, 47.987431>,  <36.396671, 33.418568, 47.897327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.429523, 33.198563, 47.987431>,  <36.484276, 32.831890, 48.137604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429523, 33.198563, 47.987431> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003075, -0.378609, -0.925552,
		-0.990583, -0.127844, 0.049005,
		-0.136880, 0.916685, -0.375437,
		36.388458, 33.473568, 47.874798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952621, 32.824196, 47.633751>,  <36.484276, 32.831890, 48.137604>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952621, 32.824196, 47.633751> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.161720, 33.151684, 47.538731>,  <36.287182, 33.348175, 47.481720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.161720, 33.151684, 47.538731>,  <35.952621, 32.824196, 47.633751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161720, 33.151684, 47.538731> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046397, -0.250920, -0.966895,
		-0.851222, 0.516467, -0.093183,
		0.522751, 0.818719, -0.237551,
		36.318546, 33.397301, 47.467464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657677, 33.112217, 47.177120>,  <35.952621, 32.824196, 47.633751>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657677, 33.112217, 47.177120> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.018391, 33.273563, 47.115044>,  <36.234818, 33.370373, 47.077797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.018391, 33.273563, 47.115044>,  <35.657677, 33.112217, 47.177120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018391, 33.273563, 47.115044> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079072, -0.199036, -0.976797,
		-0.424896, 0.893129, -0.147592,
		0.901782, 0.403367, -0.155191,
		36.288925, 33.394573, 47.068485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329784, 33.779354, 47.009663>,  <35.657677, 33.112217, 47.177120>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329784, 33.779354, 47.009663> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.051907, 33.801876, 46.722824>,  <34.885181, 33.815388, 46.550720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.051907, 33.801876, 46.722824>,  <35.329784, 33.779354, 47.009663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051907, 33.801876, 46.722824> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531682, 0.631271, 0.564634,
		0.484477, 0.773516, -0.408602,
		-0.694692, 0.056306, -0.717100,
		34.843498, 33.818768, 46.507694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247055, 34.519936, 46.631496>,  <35.329784, 33.779354, 47.009663>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247055, 34.519936, 46.631496> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.923622, 34.285675, 46.654179>,  <34.729565, 34.145119, 46.667789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.923622, 34.285675, 46.654179>,  <35.247055, 34.519936, 46.631496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923622, 34.285675, 46.654179> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369668, 0.580624, 0.725412,
		-0.457763, 0.565589, -0.685975,
		-0.808578, -0.585649, 0.056708,
		34.681049, 34.109982, 46.671192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787594, 34.918289, 46.871021>,  <35.247055, 34.519936, 46.631496>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787594, 34.918289, 46.871021> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.584583, 34.579044, 46.931858>,  <34.462776, 34.375500, 46.968361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.584583, 34.579044, 46.931858>,  <34.787594, 34.918289, 46.871021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584583, 34.579044, 46.931858> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429039, 0.401824, 0.808988,
		-0.747224, 0.345327, -0.567807,
		-0.507524, -0.848108, 0.152094,
		34.432327, 34.324612, 46.977486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093319, 35.075970, 46.979546>,  <34.787594, 34.918289, 46.871021>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093319, 35.075970, 46.979546> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.135155, 34.721111, 47.159340>,  <34.160255, 34.508198, 47.267216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.135155, 34.721111, 47.159340>,  <34.093319, 35.075970, 46.979546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135155, 34.721111, 47.159340> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523531, 0.335160, 0.783316,
		-0.845563, -0.317244, -0.429394,
		0.104586, -0.887144, 0.449486,
		34.166531, 34.454967, 47.294186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474495, 34.902863, 47.223129>,  <34.093319, 35.075970, 46.979546>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474495, 34.902863, 47.223129> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.688618, 34.687714, 47.483631>,  <33.817093, 34.558624, 47.639935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.688618, 34.687714, 47.483631>,  <33.474495, 34.902863, 47.223129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688618, 34.687714, 47.483631> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618865, 0.274985, 0.735792,
		-0.574847, -0.796918, -0.185666,
		0.535310, -0.537870, 0.651259,
		33.849213, 34.526352, 47.679008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019886, 34.588978, 47.665936>,  <33.474495, 34.902863, 47.223129>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019886, 34.588978, 47.665936> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.347740, 34.518108, 47.883858>,  <33.544453, 34.475586, 48.014610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.347740, 34.518108, 47.883858>,  <33.019886, 34.588978, 47.665936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347740, 34.518108, 47.883858> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522702, 0.157978, 0.837751,
		-0.234492, -0.971418, 0.036876,
		0.819632, -0.177171, 0.544806,
		33.593628, 34.464958, 48.047298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733746, 34.332050, 48.290131>,  <33.019886, 34.588978, 47.665936>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733746, 34.332050, 48.290131> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.101917, 34.440300, 48.402966>,  <33.322819, 34.505249, 48.470669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.101917, 34.440300, 48.402966>,  <32.733746, 34.332050, 48.290131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101917, 34.440300, 48.402966> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378188, 0.433842, 0.817774,
		0.098928, -0.859385, 0.501668,
		0.920428, 0.270626, 0.282090,
		33.378044, 34.521488, 48.487591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811775, 34.132961, 48.939644>,  <32.733746, 34.332050, 48.290131>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811775, 34.132961, 48.939644> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.087112, 34.420071, 48.897739>,  <33.252316, 34.592339, 48.872597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.087112, 34.420071, 48.897739>,  <32.811775, 34.132961, 48.939644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087112, 34.420071, 48.897739> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214063, 0.338992, 0.916112,
		0.693077, -0.608177, 0.386994,
		0.688347, 0.717777, -0.104759,
		33.293617, 34.635403, 48.866310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136063, 34.179440, 49.518589>,  <32.811775, 34.132961, 48.939644>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136063, 34.179440, 49.518589> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.217155, 34.537720, 49.360291>,  <33.265812, 34.752689, 49.265312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.217155, 34.537720, 49.360291>,  <33.136063, 34.179440, 49.518589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217155, 34.537720, 49.360291> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160400, 0.429060, 0.888920,
		0.966007, -0.116737, 0.230657,
		0.202736, 0.895700, -0.395750,
		33.277977, 34.806431, 49.241566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612667, 34.403328, 50.027649>,  <33.136063, 34.179440, 49.518589>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612667, 34.403328, 50.027649> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.505882, 34.735767, 49.832508>,  <33.441811, 34.935230, 49.715424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.505882, 34.735767, 49.832508>,  <33.612667, 34.403328, 50.027649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505882, 34.735767, 49.832508> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092381, 0.481827, 0.871383,
		0.959268, 0.277698, -0.051854,
		-0.266966, 0.831100, -0.487855,
		33.425793, 34.985096, 49.686150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911076, 34.946739, 50.306412>,  <33.612667, 34.403328, 50.027649>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911076, 34.946739, 50.306412> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.590214, 35.108501, 50.130680>,  <33.397697, 35.205559, 50.025242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.590214, 35.108501, 50.130680>,  <33.911076, 34.946739, 50.306412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590214, 35.108501, 50.130680> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101039, 0.633208, 0.767358,
		0.588510, 0.659927, -0.467067,
		-0.802151, 0.404406, -0.439328,
		33.349567, 35.229824, 49.998882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022388, 35.585411, 50.078773>,  <33.911076, 34.946739, 50.306412>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022388, 35.585411, 50.078773> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.626736, 35.640579, 50.099159>,  <33.389343, 35.673679, 50.111389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.626736, 35.640579, 50.099159>,  <34.022388, 35.585411, 50.078773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626736, 35.640579, 50.099159> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136605, 0.733760, 0.665533,
		0.054399, 0.665261, -0.744626,
		-0.989131, 0.137924, 0.050962,
		33.329998, 35.681957, 50.114449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834881, 36.276546, 49.923870>,  <34.022388, 35.585411, 50.078773>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834881, 36.276546, 49.923870> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.533546, 36.155998, 50.157677>,  <33.352745, 36.083668, 50.297958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.533546, 36.155998, 50.157677>,  <33.834881, 36.276546, 49.923870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533546, 36.155998, 50.157677> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027472, 0.902458, 0.429902,
		-0.657059, 0.307804, -0.688135,
		-0.753338, -0.301375, 0.584512,
		33.307545, 36.065586, 50.333031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431271, 36.850510, 50.055214>,  <33.834881, 36.276546, 49.923870>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431271, 36.850510, 50.055214> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.271030, 36.627796, 50.346287>,  <33.174889, 36.494167, 50.520931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.271030, 36.627796, 50.346287>,  <33.431271, 36.850510, 50.055214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271030, 36.627796, 50.346287> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306817, 0.829854, 0.466054,
		-0.863358, -0.036565, -0.503266,
		-0.400596, -0.556781, 0.727680,
		33.150852, 36.460762, 50.564590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116188, 37.447350, 49.517239>,  <33.431271, 36.850510, 50.055214>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116188, 37.447350, 49.517239> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.888630, 37.740559, 49.666389>,  <32.752094, 37.916485, 49.755878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.888630, 37.740559, 49.666389>,  <33.116188, 37.447350, 49.517239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888630, 37.740559, 49.666389> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164184, 0.545493, -0.821877,
		-0.805857, -0.406339, -0.430677,
		-0.568892, 0.733026, 0.372875,
		32.717964, 37.960464, 49.778252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563923, 37.754082, 48.916798>,  <33.116188, 37.447350, 49.517239>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563923, 37.754082, 48.916798> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.674187, 38.041199, 49.172543>,  <32.740345, 38.213470, 49.325989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.674187, 38.041199, 49.172543>,  <32.563923, 37.754082, 48.916798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674187, 38.041199, 49.172543> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084006, 0.644595, -0.759895,
		-0.957578, 0.263182, 0.117390,
		0.275659, 0.717797, 0.639358,
		32.756886, 38.256538, 49.364349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225651, 38.428505, 48.713905>,  <32.563923, 37.754082, 48.916798>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225651, 38.428505, 48.713905> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.557133, 38.514771, 48.920490>,  <32.756023, 38.566532, 49.044441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.557133, 38.514771, 48.920490>,  <32.225651, 38.428505, 48.713905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557133, 38.514771, 48.920490> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219719, 0.723333, -0.654609,
		-0.514752, 0.655955, 0.552045,
		0.828706, 0.215666, 0.516463,
		32.805744, 38.579472, 49.075428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397873, 39.124733, 48.615734>,  <32.225651, 38.428505, 48.713905>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397873, 39.124733, 48.615734> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.765934, 38.991863, 48.698666>,  <32.986771, 38.912144, 48.748425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.765934, 38.991863, 48.698666>,  <32.397873, 39.124733, 48.615734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765934, 38.991863, 48.698666> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375373, 0.597608, -0.708491,
		0.111438, 0.729745, 0.674577,
		0.920150, -0.332171, 0.207331,
		33.041981, 38.892212, 48.760864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811478, 39.614037, 48.435219>,  <32.397873, 39.124733, 48.615734>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811478, 39.614037, 48.435219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.092209, 39.329494, 48.450218>,  <33.260651, 39.158768, 48.459217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.092209, 39.329494, 48.450218>,  <32.811478, 39.614037, 48.435219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092209, 39.329494, 48.450218> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389197, 0.338831, -0.856574,
		0.596621, 0.615767, 0.514660,
		0.701833, -0.711354, 0.037501,
		33.302757, 39.116089, 48.461468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549969, 39.928173, 48.409779>,  <32.811478, 39.614037, 48.435219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549969, 39.928173, 48.409779> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.541767, 39.554432, 48.267475>,  <33.536846, 39.330189, 48.182095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.541767, 39.554432, 48.267475>,  <33.549969, 39.928173, 48.409779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541767, 39.554432, 48.267475> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463191, 0.306466, -0.831584,
		0.886021, -0.181831, 0.426501,
		-0.020500, -0.934353, -0.355758,
		33.535618, 39.274124, 48.160748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130371, 39.902317, 48.008839>,  <33.549969, 39.928173, 48.409779>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130371, 39.902317, 48.008839> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.909382, 39.593884, 47.882217>,  <33.776787, 39.408825, 47.806244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.909382, 39.593884, 47.882217>,  <34.130371, 39.902317, 48.008839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909382, 39.593884, 47.882217> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429766, 0.061892, -0.900817,
		0.714195, -0.633722, 0.297191,
		-0.552473, -0.771081, -0.316555,
		33.743641, 39.362560, 47.787251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922546, 39.771439, 48.054241>,  <34.130371, 39.902317, 48.008839>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922546, 39.771439, 48.054241> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.231697, 39.984035, 48.192905>,  <35.417187, 40.111595, 48.276104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.231697, 39.984035, 48.192905>,  <34.922546, 39.771439, 48.054241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231697, 39.984035, 48.192905> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321887, -0.142426, 0.936004,
		0.546853, -0.835003, 0.061003,
		0.772878, 0.531493, 0.346663,
		35.463562, 40.143482, 48.296906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232353, 39.366325, 48.546101>,  <34.922546, 39.771439, 48.054241>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232353, 39.366325, 48.546101> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.323418, 39.747631, 48.625553>,  <35.378056, 39.976414, 48.673225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.323418, 39.747631, 48.625553>,  <35.232353, 39.366325, 48.546101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323418, 39.747631, 48.625553> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532503, -0.048899, 0.845015,
		0.815236, -0.298150, 0.496484,
		0.227663, 0.953266, 0.198630,
		35.391716, 40.033611, 48.685143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633324, 39.349453, 49.129345>,  <35.232353, 39.366325, 48.546101>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633324, 39.349453, 49.129345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.485645, 39.721130, 49.122593>,  <35.397038, 39.944138, 49.118542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.485645, 39.721130, 49.122593>,  <35.633324, 39.349453, 49.129345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485645, 39.721130, 49.122593> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350412, -0.122363, 0.928568,
		0.860758, 0.348739, 0.370778,
		-0.369197, 0.929198, -0.016877,
		35.374886, 39.999889, 49.117531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771507, 39.649418, 49.772217>,  <35.633324, 39.349453, 49.129345>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771507, 39.649418, 49.772217> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.484566, 39.903812, 49.658428>,  <35.312401, 40.056450, 49.590153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.484566, 39.903812, 49.658428>,  <35.771507, 39.649418, 49.772217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484566, 39.903812, 49.658428> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457697, -0.122341, 0.880651,
		0.525280, 0.761940, 0.378851,
		-0.717352, 0.635987, -0.284475,
		35.269360, 40.094608, 49.573086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707588, 40.251766, 50.269466>,  <35.771507, 39.649418, 49.772217>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707588, 40.251766, 50.269466> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.363319, 40.237007, 50.066341>,  <35.156757, 40.228149, 49.944466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.363319, 40.237007, 50.066341>,  <35.707588, 40.251766, 50.269466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363319, 40.237007, 50.066341> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490730, -0.205748, 0.846671,
		-0.135724, 0.977909, 0.158974,
		-0.860676, -0.036901, -0.507814,
		35.105118, 40.225937, 49.913998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260635, 40.618561, 50.675858>,  <35.707588, 40.251766, 50.269466>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260635, 40.618561, 50.675858> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.027252, 40.402966, 50.432850>,  <34.887222, 40.273609, 50.287045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.027252, 40.402966, 50.432850>,  <35.260635, 40.618561, 50.675858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027252, 40.402966, 50.432850> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604284, -0.211665, 0.768140,
		-0.542605, 0.815288, -0.202202,
		-0.583456, -0.538984, -0.607515,
		34.852215, 40.241272, 50.250595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653107, 40.734283, 50.878895>,  <35.260635, 40.618561, 50.675858>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653107, 40.734283, 50.878895> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.608883, 40.391006, 50.678379>,  <34.582348, 40.185040, 50.558071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.608883, 40.391006, 50.678379>,  <34.653107, 40.734283, 50.878895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608883, 40.391006, 50.678379> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604199, -0.342436, 0.719501,
		-0.789126, 0.382428, -0.480655,
		-0.110564, -0.858188, -0.501287,
		34.575714, 40.133549, 50.527992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913071, 40.487320, 50.930538>,  <34.653107, 40.734283, 50.878895>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913071, 40.487320, 50.930538> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.117332, 40.156155, 50.837769>,  <34.239891, 39.957455, 50.782104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.117332, 40.156155, 50.837769>,  <33.913071, 40.487320, 50.930538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117332, 40.156155, 50.837769> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453000, -0.488352, 0.745857,
		-0.730767, -0.275814, -0.624425,
		0.510657, -0.827912, -0.231928,
		34.270531, 39.907780, 50.768188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892181, 41.139339, 50.589859>,  <33.913071, 40.487320, 50.930538>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892181, 41.139339, 50.589859> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.562939, 40.913204, 50.568340>,  <33.365395, 40.777523, 50.555428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.562939, 40.913204, 50.568340>,  <33.892181, 41.139339, 50.589859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562939, 40.913204, 50.568340> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556048, 0.821559, -0.125902,
		0.115374, -0.073717, -0.990583,
		-0.823103, -0.565338, -0.053796,
		33.316010, 40.743603, 50.552200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<38.459625, 39.420788, 35.187729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620522, 39.116558, 35.391586>,  <38.717060, 38.934021, 35.513901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620522, 39.116558, 35.391586>,  <38.459625, 39.420788, 35.187729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620522, 39.116558, 35.391586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367520, 0.375700, 0.850752,
		-0.838530, -0.529509, -0.128404,
		0.402239, -0.760572, 0.509641,
		38.741192, 38.888386, 35.544479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972095, 39.262844, 35.655354>,  <38.459625, 39.420788, 35.187729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972095, 39.262844, 35.655354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.315937, 39.141724, 35.819984>,  <38.522243, 39.069050, 35.918762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.315937, 39.141724, 35.819984>,  <37.972095, 39.262844, 35.655354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315937, 39.141724, 35.819984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370187, 0.186153, 0.910115,
		-0.352198, -0.934698, 0.047925,
		0.859603, -0.302800, 0.411575,
		38.573818, 39.050884, 35.943459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783001, 38.896515, 36.196484>,  <37.972095, 39.262844, 35.655354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783001, 38.896515, 36.196484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160610, 39.011669, 36.260910>,  <38.387177, 39.080761, 36.299568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160610, 39.011669, 36.260910>,  <37.783001, 38.896515, 36.196484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160610, 39.011669, 36.260910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237190, 0.253025, 0.937933,
		0.229252, -0.923638, 0.307143,
		0.944026, 0.287874, 0.161072,
		38.443817, 39.098034, 36.309231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903114, 38.543449, 36.775036>,  <37.783001, 38.896515, 36.196484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903114, 38.543449, 36.775036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.207005, 38.802593, 36.797321>,  <38.389339, 38.958080, 36.810692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.207005, 38.802593, 36.797321>,  <37.903114, 38.543449, 36.775036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207005, 38.802593, 36.797321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100114, 0.031882, 0.994465,
		0.642493, -0.761096, 0.089081,
		0.759723, 0.647855, 0.055713,
		38.434921, 38.996948, 36.814034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360352, 38.433819, 37.386978>,  <37.903114, 38.543449, 36.775036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360352, 38.433819, 37.386978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405418, 38.819283, 37.290089>,  <38.432457, 39.050560, 37.231956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405418, 38.819283, 37.290089>,  <38.360352, 38.433819, 37.386978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405418, 38.819283, 37.290089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284339, 0.264849, 0.921415,
		0.952080, -0.034940, 0.303845,
		0.112668, 0.963657, -0.242223,
		38.439220, 39.108379, 37.217422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691669, 38.673386, 37.978874>,  <38.360352, 38.433819, 37.386978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691669, 38.673386, 37.978874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505581, 38.968765, 37.783627>,  <38.393929, 39.145992, 37.666477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505581, 38.968765, 37.783627>,  <38.691669, 38.673386, 37.978874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505581, 38.968765, 37.783627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248149, 0.420522, 0.872687,
		0.849701, 0.527120, -0.012391,
		-0.465221, 0.738448, -0.488123,
		38.366013, 39.190300, 37.637188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876423, 39.247093, 38.288864>,  <38.691669, 38.673386, 37.978874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876423, 39.247093, 38.288864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.521141, 39.338463, 38.129406>,  <38.307972, 39.393284, 38.033730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.521141, 39.338463, 38.129406>,  <38.876423, 39.247093, 38.288864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521141, 39.338463, 38.129406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318373, 0.319588, 0.892470,
		0.331266, 0.919611, -0.211134,
		-0.888201, 0.228426, -0.398648,
		38.254681, 39.406990, 38.009811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775394, 39.862919, 38.565792>,  <38.876423, 39.247093, 38.288864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.775394, 39.862919, 38.565792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421329, 39.746613, 38.420490>,  <38.208893, 39.676830, 38.333309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421329, 39.746613, 38.420490>,  <38.775394, 39.862919, 38.565792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421329, 39.746613, 38.420490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462049, 0.457296, 0.759862,
		-0.054828, 0.840438, -0.539127,
		-0.885158, -0.290765, -0.363251,
		38.155781, 39.659382, 38.311516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450394, 40.432835, 38.628864>,  <38.775394, 39.862919, 38.565792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450394, 40.432835, 38.628864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194256, 40.126122, 38.610935>,  <38.040573, 39.942093, 38.600178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194256, 40.126122, 38.610935>,  <38.450394, 40.432835, 38.628864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194256, 40.126122, 38.610935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379375, 0.264995, 0.886483,
		-0.667859, 0.584658, -0.460585,
		-0.640342, -0.766780, -0.044825,
		38.002151, 39.896088, 38.597488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881306, 40.765450, 38.871044>,  <38.450394, 40.432835, 38.628864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881306, 40.765450, 38.871044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812870, 40.373196, 38.909153>,  <37.771809, 40.137844, 38.932018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812870, 40.373196, 38.909153>,  <37.881306, 40.765450, 38.871044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812870, 40.373196, 38.909153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379452, 0.154819, 0.912167,
		-0.909256, 0.119908, -0.398592,
		-0.171086, -0.980639, 0.095270,
		37.761543, 40.079002, 38.937733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231583, 40.677235, 39.216167>,  <37.881306, 40.765450, 38.871044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231583, 40.677235, 39.216167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.428535, 40.332733, 39.266438>,  <37.546707, 40.126030, 39.296600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.428535, 40.332733, 39.266438>,  <37.231583, 40.677235, 39.216167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428535, 40.332733, 39.266438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319658, -0.044636, 0.946481,
		-0.809552, -0.506208, -0.297286,
		0.492386, -0.861256, 0.125679,
		37.576252, 40.074356, 39.304142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773338, 40.241879, 39.543240>,  <37.231583, 40.677235, 39.216167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773338, 40.241879, 39.543240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137882, 40.097679, 39.622696>,  <37.356609, 40.011158, 39.670372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137882, 40.097679, 39.622696>,  <36.773338, 40.241879, 39.543240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137882, 40.097679, 39.622696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218271, -0.014116, 0.975786,
		-0.348968, -0.932652, -0.091552,
		0.911361, -0.360501, 0.198644,
		37.411289, 39.989529, 39.682289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288723, 39.748589, 39.247395>,  <36.773338, 40.241879, 39.543240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288723, 39.748589, 39.247395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938408, 39.557705, 39.218353>,  <35.728218, 39.443172, 39.200928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938408, 39.557705, 39.218353>,  <36.288723, 39.748589, 39.247395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938408, 39.557705, 39.218353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091784, -0.016974, -0.995634,
		0.473896, -0.878625, 0.058666,
		-0.875785, -0.477211, -0.072599,
		35.675671, 39.414543, 39.196575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416431, 39.192898, 38.716225>,  <36.288723, 39.748589, 39.247395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416431, 39.192898, 38.716225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.025932, 39.279266, 38.723320>,  <35.791634, 39.331089, 38.727577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.025932, 39.279266, 38.723320>,  <36.416431, 39.192898, 38.716225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025932, 39.279266, 38.723320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011682, 0.029277, -0.999503,
		-0.216334, -0.975971, -0.026060,
		-0.976249, 0.215922, 0.017735,
		35.733059, 39.344044, 38.728642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111294, 38.771763, 38.177147>,  <36.416431, 39.192898, 38.716225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111294, 38.771763, 38.177147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804874, 39.022659, 38.233334>,  <35.621021, 39.173199, 38.267044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804874, 39.022659, 38.233334>,  <36.111294, 38.771763, 38.177147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804874, 39.022659, 38.233334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228800, -0.061871, -0.971505,
		-0.600679, -0.776362, 0.190909,
		-0.766052, 0.627242, 0.140467,
		35.575058, 39.210831, 38.275475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416798, 38.475498, 37.901062>,  <36.111294, 38.771763, 38.177147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416798, 38.475498, 37.901062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358646, 38.870960, 37.916191>,  <35.323757, 39.108238, 37.925270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358646, 38.870960, 37.916191>,  <35.416798, 38.475498, 37.901062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358646, 38.870960, 37.916191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488811, -0.038533, -0.871538,
		-0.860192, -0.145188, 0.488867,
		-0.145374, 0.988653, 0.037824,
		35.315033, 39.167557, 37.927540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757172, 38.563438, 37.802437>,  <35.416798, 38.475498, 37.901062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757172, 38.563438, 37.802437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884304, 38.931892, 37.712551>,  <34.960583, 39.152966, 37.658619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884304, 38.931892, 37.712551>,  <34.757172, 38.563438, 37.802437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884304, 38.931892, 37.712551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466445, -0.054437, -0.882874,
		-0.825477, 0.385423, 0.412356,
		0.317832, 0.921133, -0.224715,
		34.979652, 39.208233, 37.645138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186947, 38.794628, 37.530392>,  <34.757172, 38.563438, 37.802437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186947, 38.794628, 37.530392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483261, 39.013702, 37.374813>,  <34.661049, 39.145145, 37.281464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483261, 39.013702, 37.374813>,  <34.186947, 38.794628, 37.530392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483261, 39.013702, 37.374813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348896, -0.181093, -0.919498,
		-0.574029, 0.816854, 0.056934,
		0.740785, 0.547682, -0.388949,
		34.705498, 39.178005, 37.258129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876461, 39.295822, 37.103630>,  <34.186947, 38.794628, 37.530392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876461, 39.295822, 37.103630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254112, 39.275272, 36.973408>,  <34.480701, 39.262943, 36.895275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254112, 39.275272, 36.973408>,  <33.876461, 39.295822, 37.103630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254112, 39.275272, 36.973408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329270, -0.190097, -0.924902,
		-0.014369, 0.980420, -0.196392,
		0.944126, -0.051376, -0.325554,
		34.537350, 39.259861, 36.875740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943439, 39.697128, 36.411697>,  <33.876461, 39.295822, 37.103630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943439, 39.697128, 36.411697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217373, 39.405800, 36.402210>,  <34.381733, 39.231003, 36.396519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217373, 39.405800, 36.402210>,  <33.943439, 39.697128, 36.411697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217373, 39.405800, 36.402210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381839, -0.330934, -0.862949,
		0.620651, 0.600031, -0.504734,
		0.684830, -0.728317, -0.023721,
		34.422821, 39.187305, 36.395096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940701, 39.541748, 35.717140>,  <33.943439, 39.697128, 36.411697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940701, 39.541748, 35.717140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187580, 39.269890, 35.875706>,  <34.335709, 39.106773, 35.970844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187580, 39.269890, 35.875706>,  <33.940701, 39.541748, 35.717140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187580, 39.269890, 35.875706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215425, -0.630547, -0.745656,
		0.756741, 0.374821, -0.535586,
		0.617200, -0.679646, 0.396415,
		34.372742, 39.065994, 35.994629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343235, 39.242771, 35.181339>,  <33.940701, 39.541748, 35.717140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343235, 39.242771, 35.181339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334286, 38.947681, 35.451229>,  <34.328918, 38.770626, 35.613163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334286, 38.947681, 35.451229>,  <34.343235, 39.242771, 35.181339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334286, 38.947681, 35.451229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242199, -0.650793, -0.719588,
		0.969969, -0.179515, -0.164120,
		-0.022369, -0.737728, 0.674728,
		34.327576, 38.726364, 35.653648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762772, 38.703888, 34.909584>,  <34.343235, 39.242771, 35.181339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762772, 38.703888, 34.909584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525047, 38.544296, 35.188900>,  <34.382412, 38.448544, 35.356491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525047, 38.544296, 35.188900>,  <34.762772, 38.703888, 34.909584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525047, 38.544296, 35.188900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237458, -0.742505, -0.626339,
		0.768377, -0.538057, 0.346542,
		-0.594315, -0.398976, 0.698290,
		34.346752, 38.424603, 35.398388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876305, 37.994320, 34.867935>,  <34.762772, 38.703888, 34.909584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876305, 37.994320, 34.867935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517941, 38.018040, 35.044037>,  <34.302921, 38.032272, 35.149696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517941, 38.018040, 35.044037>,  <34.876305, 37.994320, 34.867935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517941, 38.018040, 35.044037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316768, -0.780097, -0.539544,
		0.311445, -0.622842, 0.717683,
		-0.895913, 0.059301, 0.440254,
		34.249168, 38.035831, 35.176113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664177, 37.295605, 34.757763>,  <34.876305, 37.994320, 34.867935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664177, 37.295605, 34.757763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349117, 37.527802, 34.840370>,  <34.160084, 37.667118, 34.889935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349117, 37.527802, 34.840370>,  <34.664177, 37.295605, 34.757763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349117, 37.527802, 34.840370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557073, -0.527761, -0.641200,
		-0.263219, -0.620082, 0.739063,
		-0.787646, 0.580488, 0.206515,
		34.112823, 37.701946, 34.902325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001728, 37.162086, 35.077381>,  <34.664177, 37.295605, 34.757763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001728, 37.162086, 35.077381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776459, 37.315182, 35.370323>,  <33.641296, 37.407040, 35.546089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776459, 37.315182, 35.370323>,  <34.001728, 37.162086, 35.077381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776459, 37.315182, 35.370323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150624, -0.823870, 0.546398,
		0.812494, 0.418027, 0.406333,
		-0.563175, 0.382741, 0.732354,
		33.607506, 37.430004, 35.590031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301231, 37.136730, 35.784668>,  <34.001728, 37.162086, 35.077381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301231, 37.136730, 35.784668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901859, 37.115162, 35.790836>,  <33.662235, 37.102222, 35.794537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901859, 37.115162, 35.790836>,  <34.301231, 37.136730, 35.784668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901859, 37.115162, 35.790836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054556, -0.870140, 0.489775,
		-0.012988, 0.489846, 0.871712,
		-0.998426, -0.053918, 0.015422,
		33.602333, 37.098988, 35.795464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972439, 37.083237, 36.485626>,  <34.301231, 37.136730, 35.784668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972439, 37.083237, 36.485626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786880, 36.899426, 36.182671>,  <33.675545, 36.789139, 36.000896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786880, 36.899426, 36.182671>,  <33.972439, 37.083237, 36.485626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786880, 36.899426, 36.182671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294778, -0.886297, 0.357188,
		-0.835405, -0.057561, 0.546612,
		-0.463901, -0.459526, -0.757385,
		33.647709, 36.761566, 35.955456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151386, 36.909561, 37.216412>,  <33.972439, 37.083237, 36.485626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151386, 36.909561, 37.216412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775299, 36.815502, 37.117863>,  <33.549648, 36.759068, 37.058735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775299, 36.815502, 37.117863>,  <34.151386, 36.909561, 37.216412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775299, 36.815502, 37.117863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084616, 0.539415, -0.837778,
		0.329898, -0.808539, -0.487269,
		-0.940216, -0.235151, -0.246367,
		33.493233, 36.744957, 37.043953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397182, 36.271545, 36.888084>,  <34.151386, 36.909561, 37.216412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397182, 36.271545, 36.888084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788776, 36.325706, 36.949081>,  <35.023731, 36.358204, 36.985680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788776, 36.325706, 36.949081>,  <34.397182, 36.271545, 36.888084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788776, 36.325706, 36.949081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070263, -0.478035, 0.875526,
		0.191447, -0.867841, -0.458475,
		0.978985, 0.135403, 0.152496,
		35.082474, 36.366325, 36.994831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704689, 35.602787, 37.000885>,  <34.397182, 36.271545, 36.888084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704689, 35.602787, 37.000885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918446, 35.890564, 37.178349>,  <35.046700, 36.063229, 37.284824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918446, 35.890564, 37.178349>,  <34.704689, 35.602787, 37.000885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918446, 35.890564, 37.178349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034517, -0.543026, 0.839006,
		0.844530, -0.433046, -0.315023,
		0.534394, 0.719440, 0.443655,
		35.078762, 36.106396, 37.311443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476871, 35.378059, 37.191429>,  <34.704689, 35.602787, 37.000885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476871, 35.378059, 37.191429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358433, 35.674263, 37.432747>,  <35.287369, 35.851986, 37.577538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358433, 35.674263, 37.432747>,  <35.476871, 35.378059, 37.191429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358433, 35.674263, 37.432747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077258, -0.610984, 0.787864,
		0.952027, 0.279897, 0.123703,
		-0.296101, 0.740511, 0.603297,
		35.269604, 35.896416, 37.613735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882607, 35.335686, 37.784008>,  <35.476871, 35.378059, 37.191429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882607, 35.335686, 37.784008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580147, 35.575016, 37.890026>,  <35.398670, 35.718616, 37.953636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580147, 35.575016, 37.890026>,  <35.882607, 35.335686, 37.784008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580147, 35.575016, 37.890026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037993, -0.444473, 0.894987,
		0.653300, 0.666670, 0.358818,
		-0.756145, 0.598328, 0.265045,
		35.353302, 35.754513, 37.969540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085999, 35.509449, 38.401749>,  <35.882607, 35.335686, 37.784008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085999, 35.509449, 38.401749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697475, 35.603592, 38.388130>,  <35.464359, 35.660080, 38.379959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697475, 35.603592, 38.388130>,  <36.085999, 35.509449, 38.401749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697475, 35.603592, 38.388130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136533, -0.434696, 0.890167,
		0.194710, 0.869279, 0.454360,
		-0.971312, 0.235360, -0.034045,
		35.406082, 35.674198, 38.377918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026360, 35.799232, 39.048195>,  <36.085999, 35.509449, 38.401749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026360, 35.799232, 39.048195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.650047, 35.699551, 38.956261>,  <35.424259, 35.639740, 38.901100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.650047, 35.699551, 38.956261>,  <36.026360, 35.799232, 39.048195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650047, 35.699551, 38.956261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099516, -0.445087, 0.889941,
		-0.324073, 0.860114, 0.393931,
		-0.940783, -0.249203, -0.229835,
		35.367813, 35.624790, 38.887310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656452, 35.995628, 39.641758>,  <36.026360, 35.799232, 39.048195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656452, 35.995628, 39.641758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440002, 35.723289, 39.444321>,  <35.310135, 35.559887, 39.325859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440002, 35.723289, 39.444321>,  <35.656452, 35.995628, 39.641758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440002, 35.723289, 39.444321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342583, -0.357560, 0.868785,
		-0.768000, 0.639214, -0.039765,
		-0.541121, -0.680850, -0.493590,
		35.277664, 35.519035, 39.296242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010101, 35.938057, 40.002094>,  <35.656452, 35.995628, 39.641758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010101, 35.938057, 40.002094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053478, 35.585373, 39.818428>,  <35.079506, 35.373764, 39.708229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053478, 35.585373, 39.818428>,  <35.010101, 35.938057, 40.002094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053478, 35.585373, 39.818428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349019, -0.466254, 0.812892,
		-0.930820, 0.072104, -0.358296,
		0.108444, -0.881708, -0.459164,
		35.086010, 35.320862, 39.680679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385094, 35.616974, 40.141071>,  <35.010101, 35.938057, 40.002094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385094, 35.616974, 40.141071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644428, 35.340031, 40.014393>,  <34.800030, 35.173866, 39.938385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644428, 35.340031, 40.014393>,  <34.385094, 35.616974, 40.141071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644428, 35.340031, 40.014393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288202, -0.608195, 0.739620,
		-0.704696, -0.388252, -0.593856,
		0.648339, -0.692358, -0.316697,
		34.838932, 35.132324, 39.919384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984764, 34.993599, 40.318081>,  <34.385094, 35.616974, 40.141071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984764, 34.993599, 40.318081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370480, 34.899216, 40.269970>,  <34.601910, 34.842587, 40.241104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370480, 34.899216, 40.269970>,  <33.984764, 34.993599, 40.318081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370480, 34.899216, 40.269970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068808, -0.661752, 0.746559,
		-0.255756, -0.711622, -0.654357,
		0.964290, -0.235962, -0.120282,
		34.659767, 34.828426, 40.233887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096577, 34.237438, 40.157425>,  <33.984764, 34.993599, 40.318081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096577, 34.237438, 40.157425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.455139, 34.334908, 40.305523>,  <34.670277, 34.393387, 40.394382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.455139, 34.334908, 40.305523>,  <34.096577, 34.237438, 40.157425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455139, 34.334908, 40.305523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068021, -0.749806, 0.658152,
		0.437985, -0.615155, -0.655556,
		0.896405, 0.243669, 0.370247,
		34.724060, 34.408009, 40.416595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531574, 33.598602, 40.167721>,  <34.096577, 34.237438, 40.157425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531574, 33.598602, 40.167721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.716866, 33.860950, 40.406136>,  <34.828041, 34.018360, 40.549183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.716866, 33.860950, 40.406136>,  <34.531574, 33.598602, 40.167721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716866, 33.860950, 40.406136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019208, -0.679818, 0.733130,
		0.886032, -0.328155, -0.327507,
		0.463225, 0.655867, 0.596037,
		34.855835, 34.057713, 40.584946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816803, 33.203621, 40.619911>,  <34.531574, 33.598602, 40.167721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816803, 33.203621, 40.619911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.863781, 33.564472, 40.785980>,  <34.891968, 33.780983, 40.885624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.863781, 33.564472, 40.785980>,  <34.816803, 33.203621, 40.619911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863781, 33.564472, 40.785980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137337, -0.428806, 0.892897,
		0.983537, -0.047850, -0.174258,
		0.117448, 0.902129, 0.415174,
		34.899017, 33.835110, 40.910534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363316, 33.096378, 41.171955>,  <34.816803, 33.203621, 40.619911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363316, 33.096378, 41.171955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171062, 33.432732, 41.271481>,  <35.055710, 33.634544, 41.331196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171062, 33.432732, 41.271481>,  <35.363316, 33.096378, 41.171955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171062, 33.432732, 41.271481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105281, -0.226350, 0.968340,
		0.870579, 0.491612, 0.020262,
		-0.480634, 0.840882, 0.248813,
		35.026871, 33.684998, 41.346123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840492, 33.325085, 41.745712>,  <35.363316, 33.096378, 41.171955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840492, 33.325085, 41.745712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.477142, 33.491798, 41.759289>,  <35.259132, 33.591827, 41.767437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.477142, 33.491798, 41.759289>,  <35.840492, 33.325085, 41.745712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477142, 33.491798, 41.759289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019079, -0.039782, 0.999026,
		0.417729, 0.908134, 0.028185,
		-0.908371, 0.416785, 0.033944,
		35.204632, 33.616833, 41.769470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888020, 33.790771, 42.345200>,  <35.840492, 33.325085, 41.745712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888020, 33.790771, 42.345200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494572, 33.755329, 42.282417>,  <35.258503, 33.734062, 42.244747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494572, 33.755329, 42.282417>,  <35.888020, 33.790771, 42.345200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494572, 33.755329, 42.282417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160907, 0.039348, 0.986185,
		-0.081210, 0.995289, -0.052962,
		-0.983623, -0.088610, -0.156953,
		35.199486, 33.728745, 42.235332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615582, 34.385296, 42.569729>,  <35.888020, 33.790771, 42.345200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615582, 34.385296, 42.569729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337105, 34.099243, 42.594711>,  <35.170017, 33.927612, 42.609699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337105, 34.099243, 42.594711>,  <35.615582, 34.385296, 42.569729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337105, 34.099243, 42.594711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134331, 0.215250, 0.967276,
		-0.705171, 0.665024, -0.245920,
		-0.696196, -0.715130, 0.062454,
		35.128246, 33.884705, 42.613449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309757, 34.571823, 43.137791>,  <35.615582, 34.385296, 42.569729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309757, 34.571823, 43.137791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143646, 34.208710, 43.114220>,  <35.043980, 33.990841, 43.100079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143646, 34.208710, 43.114220>,  <35.309757, 34.571823, 43.137791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143646, 34.208710, 43.114220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149216, 0.004074, 0.988796,
		-0.897372, 0.419421, -0.137147,
		-0.415281, -0.907783, -0.058928,
		35.019062, 33.936375, 43.096542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771168, 34.627563, 43.575367>,  <35.309757, 34.571823, 43.137791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771168, 34.627563, 43.575367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819244, 34.231888, 43.541771>,  <34.848091, 33.994480, 43.521614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819244, 34.231888, 43.541771>,  <34.771168, 34.627563, 43.575367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819244, 34.231888, 43.541771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400457, -0.125725, 0.907649,
		-0.908398, -0.075460, -0.411240,
		0.120194, -0.989191, -0.083990,
		34.855301, 33.935131, 43.516575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122108, 34.217171, 43.728333>,  <34.771168, 34.627563, 43.575367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122108, 34.217171, 43.728333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454880, 34.011585, 43.811985>,  <34.654541, 33.888233, 43.862179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454880, 34.011585, 43.811985>,  <34.122108, 34.217171, 43.728333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454880, 34.011585, 43.811985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314405, -0.126063, 0.940881,
		-0.457217, -0.848497, -0.266468,
		0.831927, -0.513966, 0.209134,
		34.704456, 33.857395, 43.874725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846199, 33.693958, 44.115086>,  <34.122108, 34.217171, 43.728333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846199, 33.693958, 44.115086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.239136, 33.694881, 44.189919>,  <34.474899, 33.695435, 44.234818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.239136, 33.694881, 44.189919>,  <33.846199, 33.693958, 44.115086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239136, 33.694881, 44.189919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185549, -0.116262, 0.975733,
		0.024007, -0.993216, -0.113780,
		0.982342, 0.002313, 0.187082,
		34.533836, 33.695576, 44.246044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869823, 33.227921, 44.592712>,  <33.846199, 33.693958, 44.115086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869823, 33.227921, 44.592712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219055, 33.420090, 44.626003>,  <34.428596, 33.535389, 44.645977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219055, 33.420090, 44.626003>,  <33.869823, 33.227921, 44.592712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219055, 33.420090, 44.626003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004699, -0.162390, 0.986716,
		0.487552, -0.861874, -0.139522,
		0.873082, 0.480419, 0.083223,
		34.480980, 33.564217, 44.650970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402477, 32.712650, 44.934723>,  <33.869823, 33.227921, 44.592712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402477, 32.712650, 44.934723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.558018, 33.079369, 44.971127>,  <34.651340, 33.299400, 44.992970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.558018, 33.079369, 44.971127>,  <34.402477, 32.712650, 44.934723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558018, 33.079369, 44.971127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107938, -0.143433, 0.983756,
		0.914956, -0.372711, -0.154731,
		0.388850, 0.916795, 0.091005,
		34.674671, 33.354408, 44.998428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963058, 32.632370, 45.543800>,  <34.402477, 32.712650, 44.934723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963058, 32.632370, 45.543800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880581, 33.022923, 45.518009>,  <34.831093, 33.257256, 45.502537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880581, 33.022923, 45.518009>,  <34.963058, 32.632370, 45.543800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880581, 33.022923, 45.518009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080671, 0.048703, 0.995550,
		0.975179, 0.210481, 0.068723,
		-0.206198, 0.976384, -0.064474,
		34.818722, 33.315838, 45.498669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380299, 33.017006, 45.989479>,  <34.963058, 32.632370, 45.543800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380299, 33.017006, 45.989479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062584, 33.255470, 45.942661>,  <34.871956, 33.398548, 45.914570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062584, 33.255470, 45.942661>,  <35.380299, 33.017006, 45.989479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062584, 33.255470, 45.942661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095115, 0.312295, 0.945212,
		0.600055, 0.739634, -0.304755,
		-0.794284, 0.596165, -0.117044,
		34.824299, 33.434319, 45.907547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771992, 33.671432, 46.188034>,  <35.380299, 33.017006, 45.989479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771992, 33.671432, 46.188034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.127941, 33.580364, 46.346169>,  <36.341511, 33.525723, 46.441051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.127941, 33.580364, 46.346169>,  <35.771992, 33.671432, 46.188034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127941, 33.580364, 46.346169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431730, 0.140219, -0.891037,
		0.147430, 0.963589, 0.223070,
		0.889873, -0.227671, 0.395338,
		36.394901, 33.512062, 46.464771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239468, 34.262424, 45.920986>,  <35.771992, 33.671432, 46.188034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239468, 34.262424, 45.920986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467773, 33.957466, 46.042957>,  <36.604759, 33.774490, 46.116138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467773, 33.957466, 46.042957>,  <36.239468, 34.262424, 45.920986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467773, 33.957466, 46.042957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567823, 0.098225, -0.817269,
		0.593128, 0.639616, 0.488968,
		0.570767, -0.762393, 0.304929,
		36.639004, 33.728748, 46.134438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952831, 34.538498, 45.822308>,  <36.239468, 34.262424, 45.920986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952831, 34.538498, 45.822308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001480, 34.141529, 45.815380>,  <37.030670, 33.903347, 45.811222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001480, 34.141529, 45.815380>,  <36.952831, 34.538498, 45.822308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001480, 34.141529, 45.815380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462492, 0.072102, -0.883687,
		0.878242, 0.099461, 0.467758,
		0.121618, -0.992426, -0.017323,
		37.037964, 33.843800, 45.810184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559090, 34.322414, 45.522449>,  <36.952831, 34.538498, 45.822308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559090, 34.322414, 45.522449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398895, 33.957275, 45.490654>,  <37.302780, 33.738190, 45.471577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398895, 33.957275, 45.490654>,  <37.559090, 34.322414, 45.522449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398895, 33.957275, 45.490654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474458, -0.132370, -0.870269,
		0.783902, -0.386242, 0.486121,
		-0.400482, -0.912850, -0.079490,
		37.278751, 33.683422, 45.466808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072575, 33.936066, 45.346489>,  <37.559090, 34.322414, 45.522449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072575, 33.936066, 45.346489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755638, 33.721813, 45.229668>,  <37.565475, 33.593262, 45.159576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755638, 33.721813, 45.229668>,  <38.072575, 33.936066, 45.346489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755638, 33.721813, 45.229668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394117, -0.083985, -0.915215,
		0.465694, -0.840263, 0.277648,
		-0.792339, -0.535636, -0.292051,
		37.517937, 33.561123, 45.142052>
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
