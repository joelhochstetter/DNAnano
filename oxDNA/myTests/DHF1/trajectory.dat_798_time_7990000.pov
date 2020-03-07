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
	<4.030513, 4.131522, 3.657801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.204590, 3.808769, 3.498028>,  <4.309036, 3.615117, 3.402164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.204590, 3.808769, 3.498028>,  <4.030513, 4.131522, 3.657801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.204590, 3.808769, 3.498028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849290, -0.220644, -0.479606,
		0.298853, 0.547957, -0.781301,
		0.435193, -0.806883, -0.399434,
		4.335148, 3.566705, 3.378198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.013455, 4.070353, 2.866004>,  <4.030513, 4.131522, 3.657801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.013455, 4.070353, 2.866004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.021542, 3.703018, 3.024118>,  <4.026393, 3.482618, 3.118987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.021542, 3.703018, 3.024118>,  <4.013455, 4.070353, 2.866004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.021542, 3.703018, 3.024118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884429, -0.200799, -0.421266,
		0.466237, -0.341086, -0.816262,
		0.020216, -0.918336, 0.395286,
		4.027606, 3.427517, 3.142704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.054210, 3.688775, 2.398443>,  <4.013455, 4.070353, 2.866004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.054210, 3.688775, 2.398443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.858690, 3.504662, 2.694880>,  <3.741378, 3.394194, 2.872741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.858690, 3.504662, 2.694880>,  <4.054210, 3.688775, 2.398443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.858690, 3.504662, 2.694880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804023, -0.091985, -0.587440,
		0.338558, -0.882994, -0.325116,
		-0.488800, -0.460283, 0.741090,
		3.712050, 3.366577, 2.917207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.736953, 3.139503, 2.039226>,  <4.054210, 3.688775, 2.398443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.736953, 3.139503, 2.039226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.539377, 3.266029, 2.363194>,  <3.420832, 3.341945, 2.557574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.539377, 3.266029, 2.363194>,  <3.736953, 3.139503, 2.039226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.539377, 3.266029, 2.363194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825025, 0.123584, -0.551417,
		-0.274516, -0.940569, 0.199928,
		-0.493938, 0.316318, 0.809919,
		3.391196, 3.360924, 2.606169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.175367, 2.836608, 1.939515>,  <3.736953, 3.139503, 2.039226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.175367, 2.836608, 1.939515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.112001, 3.137222, 2.195671>,  <3.073982, 3.317591, 2.349365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.112001, 3.137222, 2.195671>,  <3.175367, 2.836608, 1.939515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.112001, 3.137222, 2.195671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813633, 0.268084, -0.515881,
		-0.559381, -0.602765, 0.569005,
		-0.158413, 0.751535, 0.640391,
		3.064477, 3.362683, 2.387788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.510608, 2.764624, 2.126289>,  <3.175367, 2.836608, 1.939515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.510608, 2.764624, 2.126289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.632637, 3.140076, 2.190672>,  <2.705854, 3.365346, 2.229302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.632637, 3.140076, 2.190672>,  <2.510608, 2.764624, 2.126289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.632637, 3.140076, 2.190672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731827, 0.339215, -0.591068,
		-0.609393, 0.062526, 0.790399,
		0.305072, 0.938629, 0.160957,
		2.724159, 3.421664, 2.238959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.834874, 3.075667, 2.099712>,  <2.510608, 2.764624, 2.126289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.834874, 3.075667, 2.099712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.090487, 3.377785, 2.041512>,  <2.243854, 3.559055, 2.006591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.090487, 3.377785, 2.041512>,  <1.834874, 3.075667, 2.099712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.090487, 3.377785, 2.041512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604387, 0.376050, -0.702355,
		-0.475769, 0.536765, 0.696797,
		0.639030, 0.755295, -0.145501,
		2.282196, 3.604373, 1.997861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.433598, 3.783321, 2.071098>,  <1.834874, 3.075667, 2.099712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.433598, 3.783321, 2.071098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.761415, 3.864273, 1.856663>,  <1.958106, 3.912844, 1.728002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.761415, 3.864273, 1.856663>,  <1.433598, 3.783321, 2.071098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.761415, 3.864273, 1.856663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522449, 0.648180, -0.553994,
		0.235364, 0.734101, 0.636946,
		0.819543, 0.202381, -0.536088,
		2.007278, 3.924987, 1.695836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.381377, 4.249125, 0.579375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.759819, 4.307747, 0.463854>,  <1.986884, 4.342920, 0.394541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.759819, 4.307747, 0.463854>,  <1.381377, 4.249125, 0.579375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.759819, 4.307747, 0.463854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321070, -0.307633, 0.895699,
		0.042423, -0.940151, -0.338107,
		0.946105, 0.146555, -0.288803,
		2.043651, 4.351713, 0.377213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.842181, 3.654589, 0.710841>,  <1.381377, 4.249125, 0.579375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.842181, 3.654589, 0.710841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.066151, 3.985992, 0.713851>,  <2.200533, 4.184834, 0.715657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.066151, 3.985992, 0.713851>,  <1.842181, 3.654589, 0.710841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.066151, 3.985992, 0.713851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435899, -0.302290, 0.847710,
		0.704611, -0.471373, -0.530406,
		0.559925, 0.828509, 0.007526,
		2.234128, 4.234545, 0.716109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.684118, 3.691948, 0.771973>,  <1.842181, 3.654589, 0.710841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.684118, 3.691948, 0.771973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.529095, 3.985733, 0.994814>,  <2.436081, 4.162004, 1.128519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.529095, 3.985733, 0.994814>,  <2.684118, 3.691948, 0.771973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.529095, 3.985733, 0.994814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637624, -0.222874, 0.737402,
		0.665758, 0.641009, -0.381935,
		-0.387558, 0.734463, 0.557103,
		2.412827, 4.206072, 1.161945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.172214, 4.157049, 1.181954>,  <2.684118, 3.691948, 0.771973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.172214, 4.157049, 1.181954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.830101, 4.140785, 1.388579>,  <2.624833, 4.131027, 1.512554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.830101, 4.140785, 1.388579>,  <3.172214, 4.157049, 1.181954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.830101, 4.140785, 1.388579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512598, -0.212076, 0.832026,
		0.075722, 0.976407, 0.202227,
		-0.855283, -0.040659, 0.516563,
		2.573516, 4.128588, 1.543548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.306499, 4.438948, 1.886819>,  <3.172214, 4.157049, 1.181954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.306499, 4.438948, 1.886819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.982685, 4.206100, 1.917266>,  <2.788397, 4.066392, 1.935534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.982685, 4.206100, 1.917266>,  <3.306499, 4.438948, 1.886819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.982685, 4.206100, 1.917266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316225, -0.323133, 0.891957,
		-0.494628, 0.746139, 0.445668,
		-0.809534, -0.582118, 0.076117,
		2.739825, 4.031465, 1.940101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.075395, 4.650155, 2.551710>,  <3.306499, 4.438948, 1.886819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.075395, 4.650155, 2.551710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.968330, 4.284752, 2.429162>,  <2.904092, 4.065510, 2.355633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.968330, 4.284752, 2.429162>,  <3.075395, 4.650155, 2.551710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.968330, 4.284752, 2.429162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295163, -0.380424, 0.876445,
		-0.917189, 0.144161, 0.371458,
		-0.267661, -0.913507, -0.306370,
		2.888032, 4.010700, 2.337251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.819304, 4.382504, 3.158183>,  <3.075395, 4.650155, 2.551710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.819304, 4.382504, 3.158183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.906681, 4.075676, 2.916891>,  <2.959107, 3.891579, 2.772116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.906681, 4.075676, 2.916891>,  <2.819304, 4.382504, 3.158183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.906681, 4.075676, 2.916891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604905, -0.378631, 0.700521,
		-0.765750, -0.517919, 0.381296,
		0.218442, -0.767071, -0.603229,
		2.972214, 3.845555, 2.735923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.661760, 3.786318, 3.568448>,  <2.819304, 4.382504, 3.158183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.661760, 3.786318, 3.568448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.914345, 3.666161, 3.282505>,  <3.065895, 3.594066, 3.110939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.914345, 3.666161, 3.282505>,  <2.661760, 3.786318, 3.568448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.914345, 3.666161, 3.282505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566818, -0.450278, 0.689904,
		-0.529127, -0.840842, -0.114065,
		0.631461, -0.300393, -0.714858,
		3.103783, 3.576043, 3.068048>
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
