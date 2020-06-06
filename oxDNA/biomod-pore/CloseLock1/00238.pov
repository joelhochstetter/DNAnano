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
	<23.935118, 35.441238, 34.993042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.189655, 35.154819, 35.107826>,  <24.342377, 34.982967, 35.176697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.189655, 35.154819, 35.107826>,  <23.935118, 35.441238, 34.993042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.189655, 35.154819, 35.107826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758871, 0.514282, -0.399536,
		0.138509, 0.472006, 0.870647,
		0.636342, -0.716047, 0.286959,
		24.380558, 34.940006, 35.193913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.465151, 35.726967, 35.382332>,  <23.935118, 35.441238, 34.993042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.465151, 35.726967, 35.382332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.615671, 35.408142, 35.193401>,  <24.705984, 35.216846, 35.080044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.615671, 35.408142, 35.193401>,  <24.465151, 35.726967, 35.382332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.615671, 35.408142, 35.193401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761288, 0.556561, -0.332689,
		0.528051, -0.234384, 0.816227,
		0.376303, -0.797060, -0.472326,
		24.728561, 35.169025, 35.051704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.246759, 35.489136, 35.475220>,  <24.465151, 35.726967, 35.382332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.246759, 35.489136, 35.475220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.028341, 35.465473, 35.140953>,  <24.897289, 35.451275, 34.940395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.028341, 35.465473, 35.140953>,  <25.246759, 35.489136, 35.475220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.028341, 35.465473, 35.140953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614966, 0.649078, -0.447788,
		0.568901, -0.758418, -0.318046,
		-0.546048, -0.059160, -0.835663,
		24.864527, 35.447723, 34.890255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.723747, 35.401104, 34.883080>,  <25.246759, 35.489136, 35.475220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.723747, 35.401104, 34.883080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.402554, 35.625175, 34.801682>,  <25.209837, 35.759621, 34.752842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.402554, 35.625175, 34.801682>,  <25.723747, 35.401104, 34.883080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.402554, 35.625175, 34.801682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595823, 0.762837, -0.251147,
		0.014548, -0.322916, -0.946316,
		-0.802984, 0.560183, -0.203499,
		25.161659, 35.793232, 34.740631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.917826, 35.827732, 34.323109>,  <25.723747, 35.401104, 34.883080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.917826, 35.827732, 34.323109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.612545, 36.011101, 34.505260>,  <25.429377, 36.121124, 34.614552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.612545, 36.011101, 34.505260>,  <25.917826, 35.827732, 34.323109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.612545, 36.011101, 34.505260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417970, 0.887695, -0.193130,
		-0.492773, 0.042937, -0.869098,
		-0.763201, 0.458426, 0.455378,
		25.383585, 36.148628, 34.641872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.710283, 35.949963, 34.382729>,  <25.917826, 35.827732, 34.323109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.710283, 35.949963, 34.382729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.890821, 36.268066, 34.544640>,  <26.999144, 36.458931, 34.641788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.890821, 36.268066, 34.544640>,  <26.710283, 35.949963, 34.382729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.890821, 36.268066, 34.544640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018921, -0.462038, 0.886658,
		0.892149, -0.392530, -0.223586,
		0.451345, 0.795262, 0.404779,
		27.026224, 36.506645, 34.666073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.200991, 35.567467, 34.746048>,  <26.710283, 35.949963, 34.382729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.200991, 35.567467, 34.746048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.132248, 35.938606, 34.878448>,  <27.091002, 36.161289, 34.957890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.132248, 35.938606, 34.878448>,  <27.200991, 35.567467, 34.746048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.132248, 35.938606, 34.878448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112852, -0.352330, 0.929047,
		0.978637, 0.122310, 0.165260,
		-0.171858, 0.927849, 0.331000,
		27.080690, 36.216961, 34.977749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.610798, 35.636318, 35.374737>,  <27.200991, 35.567467, 34.746048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.610798, 35.636318, 35.374737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.357252, 35.943974, 35.407322>,  <27.205124, 36.128567, 35.426872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.357252, 35.943974, 35.407322>,  <27.610798, 35.636318, 35.374737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.357252, 35.943974, 35.407322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077605, -0.168036, 0.982721,
		0.769540, 0.616591, 0.166202,
		-0.633866, 0.769142, 0.081460,
		27.167093, 36.174717, 35.431759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.887648, 36.049072, 35.982655>,  <27.610798, 35.636318, 35.374737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.887648, 36.049072, 35.982655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.501175, 36.128578, 35.916950>,  <27.269291, 36.176281, 35.877525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.501175, 36.128578, 35.916950>,  <27.887648, 36.049072, 35.982655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.501175, 36.128578, 35.916950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216481, -0.279153, 0.935526,
		0.140095, 0.939450, 0.312742,
		-0.966183, 0.198766, -0.164265,
		27.211321, 36.188210, 35.867672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.699528, 36.371723, 36.541119>,  <27.887648, 36.049072, 35.982655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.699528, 36.371723, 36.541119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363852, 36.221817, 36.383480>,  <27.162445, 36.131874, 36.288898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363852, 36.221817, 36.383480>,  <27.699528, 36.371723, 36.541119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.363852, 36.221817, 36.383480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314131, -0.257505, 0.913790,
		-0.443937, 0.890642, 0.098371,
		-0.839191, -0.374764, -0.394094,
		27.112095, 36.109386, 36.265251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.164888, 36.486183, 36.992134>,  <27.699528, 36.371723, 36.541119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.164888, 36.486183, 36.992134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.998613, 36.200943, 36.766323>,  <26.898849, 36.029797, 36.630836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.998613, 36.200943, 36.766323>,  <27.164888, 36.486183, 36.992134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.998613, 36.200943, 36.766323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219514, -0.523680, 0.823148,
		-0.882621, 0.466092, 0.061150,
		-0.415685, -0.713104, -0.564524,
		26.873907, 35.987011, 36.596966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.713516, 36.249840, 37.353699>,  <27.164888, 36.486183, 36.992134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.713516, 36.249840, 37.353699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.676821, 35.928883, 37.117821>,  <26.654802, 35.736309, 36.976295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.676821, 35.928883, 37.117821>,  <26.713516, 36.249840, 37.353699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.676821, 35.928883, 37.117821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332532, -0.533512, 0.777681,
		-0.938619, 0.267438, -0.217878,
		-0.091741, -0.802397, -0.589696,
		26.649298, 35.688164, 36.940910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.057878, 35.975723, 37.484730>,  <26.713516, 36.249840, 37.353699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.057878, 35.975723, 37.484730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.274096, 35.676094, 37.331520>,  <26.403826, 35.496319, 37.239594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.274096, 35.676094, 37.331520>,  <26.057878, 35.975723, 37.484730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.274096, 35.676094, 37.331520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292845, -0.594319, 0.749017,
		-0.788706, -0.292707, -0.540616,
		0.540541, -0.749071, -0.383025,
		26.436258, 35.451374, 37.216614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.645437, 35.473511, 37.567772>,  <26.057878, 35.975723, 37.484730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.645437, 35.473511, 37.567772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.997324, 35.288292, 37.524517>,  <26.208456, 35.177162, 37.498566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.997324, 35.288292, 37.524517>,  <25.645437, 35.473511, 37.567772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.997324, 35.288292, 37.524517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201261, -0.568630, 0.797593,
		-0.430807, -0.679892, -0.593425,
		0.879716, -0.463041, -0.108134,
		26.261238, 35.149380, 37.492077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.455883, 34.821705, 37.657578>,  <25.645437, 35.473511, 37.567772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.455883, 34.821705, 37.657578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.840218, 34.866802, 37.758835>,  <26.070818, 34.893860, 37.819592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.840218, 34.866802, 37.758835>,  <25.455883, 34.821705, 37.657578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.840218, 34.866802, 37.758835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136305, -0.603086, 0.785944,
		0.241278, -0.789668, -0.564100,
		0.960836, 0.112741, 0.253147,
		26.128468, 34.900623, 37.834778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.652037, 34.158417, 37.897282>,  <25.455883, 34.821705, 37.657578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.652037, 34.158417, 37.897282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.952467, 34.381618, 38.038433>,  <26.132725, 34.515537, 38.123123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.952467, 34.381618, 38.038433>,  <25.652037, 34.158417, 37.897282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.952467, 34.381618, 38.038433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064508, -0.593952, 0.801910,
		0.657058, -0.579531, -0.482098,
		0.751074, 0.558001, 0.352876,
		26.177790, 34.549019, 38.144295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.133490, 33.768505, 38.294380>,  <25.652037, 34.158417, 37.897282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.133490, 33.768505, 38.294380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.209209, 34.136280, 38.432243>,  <26.254642, 34.356945, 38.514961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.209209, 34.136280, 38.432243>,  <26.133490, 33.768505, 38.294380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.209209, 34.136280, 38.432243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052441, -0.359974, 0.931488,
		0.980518, -0.158257, -0.116360,
		0.189301, 0.919442, 0.344661,
		26.266001, 34.412113, 38.535641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.320097, 33.655972, 38.953056>,  <26.133490, 33.768505, 38.294380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.320097, 33.655972, 38.953056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.257921, 34.049145, 38.992432>,  <26.220615, 34.285049, 39.016056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.257921, 34.049145, 38.992432>,  <26.320097, 33.655972, 38.953056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.257921, 34.049145, 38.992432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088628, -0.113125, 0.989620,
		0.983862, 0.145099, 0.104699,
		-0.155437, 0.982929, 0.098440,
		26.211290, 34.344025, 39.021965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.841125, 33.936321, 39.427479>,  <26.320097, 33.655972, 38.953056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.841125, 33.936321, 39.427479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.546692, 34.206406, 39.446548>,  <26.370031, 34.368458, 39.457993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.546692, 34.206406, 39.446548>,  <26.841125, 33.936321, 39.427479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.546692, 34.206406, 39.446548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114559, 0.054849, 0.991901,
		0.667126, 0.735584, -0.117725,
		-0.736084, 0.675209, 0.047677,
		26.325867, 34.408970, 39.460850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.008373, 34.577065, 39.959934>,  <26.841125, 33.936321, 39.427479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.008373, 34.577065, 39.959934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.615242, 34.513264, 39.922829>,  <26.379362, 34.474983, 39.900566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.615242, 34.513264, 39.922829>,  <27.008373, 34.577065, 39.959934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.615242, 34.513264, 39.922829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104749, 0.068454, 0.992140,
		-0.151894, 0.984822, -0.083986,
		-0.982830, -0.159498, -0.092762,
		26.320393, 34.465416, 39.895000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.768915, 34.956032, 40.524624>,  <27.008373, 34.577065, 39.959934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.768915, 34.956032, 40.524624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.453922, 34.746052, 40.395439>,  <26.264927, 34.620064, 40.317928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.453922, 34.746052, 40.395439>,  <26.768915, 34.956032, 40.524624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.453922, 34.746052, 40.395439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283573, -0.156650, 0.946069,
		-0.547226, 0.836596, -0.025501,
		-0.787483, -0.524945, -0.322959,
		26.217678, 34.588570, 40.298550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.159782, 35.295399, 40.701168>,  <26.768915, 34.956032, 40.524624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.159782, 35.295399, 40.701168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.085518, 34.904228, 40.662807>,  <26.040958, 34.669525, 40.639790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.085518, 34.904228, 40.662807>,  <26.159782, 35.295399, 40.701168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.085518, 34.904228, 40.662807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281072, -0.040666, 0.958825,
		-0.941556, 0.204974, -0.267317,
		-0.185663, -0.977922, -0.095902,
		26.029819, 34.610851, 40.634037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.531988, 35.182232, 41.117504>,  <26.159782, 35.295399, 40.701168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.531988, 35.182232, 41.117504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.644547, 34.801983, 41.065136>,  <25.712082, 34.573833, 41.033714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.644547, 34.801983, 41.065136>,  <25.531988, 35.182232, 41.117504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.644547, 34.801983, 41.065136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399688, -0.240141, 0.884637,
		-0.872392, -0.196606, -0.447525,
		0.281394, -0.950620, -0.130916,
		25.728966, 34.516796, 41.025860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.973555, 34.756378, 41.104015>,  <25.531988, 35.182232, 41.117504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.973555, 34.756378, 41.104015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.275282, 34.520973, 41.220402>,  <25.456318, 34.379730, 41.290234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.275282, 34.520973, 41.220402>,  <24.973555, 34.756378, 41.104015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.275282, 34.520973, 41.220402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522546, -0.269907, 0.808762,
		-0.397431, -0.762106, -0.511119,
		0.754317, -0.588510, 0.290966,
		25.501577, 34.344421, 41.307693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.704746, 34.184544, 41.220207>,  <24.973555, 34.756378, 41.104015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.704746, 34.184544, 41.220207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.054132, 34.114639, 41.401985>,  <25.263763, 34.072697, 41.511051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.054132, 34.114639, 41.401985>,  <24.704746, 34.184544, 41.220207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.054132, 34.114639, 41.401985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486360, -0.269827, 0.831052,
		-0.022612, -0.946917, -0.320680,
		0.873466, -0.174758, 0.454441,
		25.316172, 34.062210, 41.538319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.590122, 33.562962, 41.578331>,  <24.704746, 34.184544, 41.220207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.590122, 33.562962, 41.578331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.876505, 33.790951, 41.739594>,  <25.048334, 33.927746, 41.836349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.876505, 33.790951, 41.739594>,  <24.590122, 33.562962, 41.578331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.876505, 33.790951, 41.739594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436003, -0.085967, 0.895830,
		0.545257, -0.817154, 0.186961,
		0.715958, 0.569973, 0.403155,
		25.091291, 33.961945, 41.860538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.971104, 33.179085, 42.114460>,  <24.590122, 33.562962, 41.578331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.971104, 33.179085, 42.114460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.901810, 33.571201, 42.152443>,  <24.860233, 33.806473, 42.175232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.901810, 33.571201, 42.152443>,  <24.971104, 33.179085, 42.114460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.901810, 33.571201, 42.152443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640683, -0.185392, 0.745087,
		0.748008, 0.068238, 0.660173,
		-0.173234, 0.980293, 0.094955,
		24.849840, 33.865288, 42.180931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.124125, 33.581993, 42.648071>,  <24.971104, 33.179085, 42.114460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.124125, 33.581993, 42.648071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.769127, 33.581367, 42.463745>,  <24.556128, 33.580994, 42.353149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.769127, 33.581367, 42.463745>,  <25.124125, 33.581993, 42.648071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.769127, 33.581367, 42.463745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389301, -0.532524, 0.751574,
		-0.246569, 0.846414, 0.472004,
		-0.887496, -0.001563, -0.460813,
		24.502878, 33.580898, 42.325500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.516922, 34.347061, 42.874741>,  <25.124125, 33.581993, 42.648071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.516922, 34.347061, 42.874741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.501915, 34.273727, 43.267673>,  <25.492910, 34.229729, 43.503433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.501915, 34.273727, 43.267673>,  <25.516922, 34.347061, 42.874741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.501915, 34.273727, 43.267673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738150, 0.667711, 0.096424,
		-0.673593, -0.721492, -0.160380,
		-0.037518, -0.183335, 0.982334,
		25.490660, 34.218727, 43.562374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.846478, 34.225929, 43.044701>,  <25.516922, 34.347061, 42.874741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.846478, 34.225929, 43.044701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.075827, 34.403145, 43.320370>,  <25.213436, 34.509476, 43.485771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.075827, 34.403145, 43.320370>,  <24.846478, 34.225929, 43.044701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.075827, 34.403145, 43.320370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527484, 0.843267, -0.103252,
		-0.626899, -0.304324, 0.717206,
		0.573374, 0.443043, 0.689170,
		25.247839, 34.536057, 43.527122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.573568, 34.382580, 43.774807>,  <24.846478, 34.225929, 43.044701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.573568, 34.382580, 43.774807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.799644, 34.657310, 43.592018>,  <24.935289, 34.822147, 43.482346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.799644, 34.657310, 43.592018>,  <24.573568, 34.382580, 43.774807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.799644, 34.657310, 43.592018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728763, 0.675278, 0.113594,
		0.386605, 0.268825, 0.882196,
		0.565190, 0.686828, -0.456976,
		24.969202, 34.863358, 43.454926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.735493, 34.927734, 44.092720>,  <24.573568, 34.382580, 43.774807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.735493, 34.927734, 44.092720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.735310, 35.053692, 43.713070>,  <24.735201, 35.129269, 43.485279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.735310, 35.053692, 43.713070>,  <24.735493, 34.927734, 44.092720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.735310, 35.053692, 43.713070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738691, 0.639647, 0.212574,
		0.674044, 0.701208, 0.232318,
		-0.000457, 0.314896, -0.949126,
		24.735172, 35.148159, 43.428333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.864244, 35.635670, 44.034981>,  <24.735493, 34.927734, 44.092720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.864244, 35.635670, 44.034981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.674120, 35.574501, 43.688412>,  <24.560045, 35.537800, 43.480469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.674120, 35.574501, 43.688412>,  <24.864244, 35.635670, 44.034981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.674120, 35.574501, 43.688412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434175, 0.897285, 0.079818,
		0.765225, 0.414119, -0.492885,
		-0.475313, -0.152919, -0.866426,
		24.531527, 35.528625, 43.428482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.627890, 35.472118, 44.058517>,  <24.864244, 35.635670, 44.034981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.627890, 35.472118, 44.058517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.919750, 35.396973, 44.321522>,  <26.094866, 35.351883, 44.479324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.919750, 35.396973, 44.321522>,  <25.627890, 35.472118, 44.058517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.919750, 35.396973, 44.321522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682419, 0.261587, -0.682551,
		-0.043767, 0.946720, 0.319071,
		0.729649, -0.187867, 0.657509,
		26.138645, 35.340614, 44.518776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.041527, 36.006153, 44.135693>,  <25.627890, 35.472118, 44.058517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.041527, 36.006153, 44.135693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.240179, 35.669292, 44.219727>,  <26.359371, 35.467175, 44.270145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.240179, 35.669292, 44.219727>,  <26.041527, 36.006153, 44.135693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.240179, 35.669292, 44.219727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575278, 0.138133, -0.806210,
		0.649931, 0.521248, 0.553073,
		0.496633, -0.842152, 0.210086,
		26.389170, 35.416645, 44.282753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.678082, 36.167080, 44.273354>,  <26.041527, 36.006153, 44.135693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.678082, 36.167080, 44.273354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.665585, 35.793098, 44.131992>,  <26.658087, 35.568710, 44.047176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.665585, 35.793098, 44.131992>,  <26.678082, 36.167080, 44.273354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.665585, 35.793098, 44.131992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442781, 0.304039, -0.843508,
		0.896085, -0.182831, 0.404479,
		-0.031242, -0.934951, -0.353400,
		26.656212, 35.512611, 44.025974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.363398, 36.140099, 44.025738>,  <26.678082, 36.167080, 44.273354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.363398, 36.140099, 44.025738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.146450, 35.860455, 43.839371>,  <27.016281, 35.692669, 43.727551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.146450, 35.860455, 43.839371>,  <27.363398, 36.140099, 44.025738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.146450, 35.860455, 43.839371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345510, 0.319901, -0.882205,
		0.765805, -0.639462, 0.068044,
		-0.542370, -0.699108, -0.465922,
		26.983740, 35.650723, 43.699593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.826597, 35.755924, 43.533318>,  <27.363398, 36.140099, 44.025738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.826597, 35.755924, 43.533318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455370, 35.695488, 43.397163>,  <27.232634, 35.659225, 43.315472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455370, 35.695488, 43.397163>,  <27.826597, 35.755924, 43.533318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.455370, 35.695488, 43.397163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294766, 0.260604, -0.919347,
		0.227605, -0.953551, -0.197323,
		-0.928067, -0.151084, -0.340389,
		27.176950, 35.650162, 43.295048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.949034, 35.524914, 43.022480>,  <27.826597, 35.755924, 43.533318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.949034, 35.524914, 43.022480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.565289, 35.589558, 42.929955>,  <27.335041, 35.628342, 42.874439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.565289, 35.589558, 42.929955>,  <27.949034, 35.524914, 43.022480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.565289, 35.589558, 42.929955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252724, 0.127464, -0.959106,
		-0.125514, -0.978589, -0.163126,
		-0.959363, 0.161607, -0.231314,
		27.277479, 35.638039, 42.860561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.716360, 35.083599, 42.409111>,  <27.949034, 35.524914, 43.022480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.716360, 35.083599, 42.409111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.462698, 35.392799, 42.416294>,  <27.310501, 35.578320, 42.420605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.462698, 35.392799, 42.416294>,  <27.716360, 35.083599, 42.409111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.462698, 35.392799, 42.416294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049487, 0.063758, -0.996738,
		-0.771622, -0.631196, -0.078686,
		-0.634154, 0.772999, 0.017961,
		27.272451, 35.624699, 42.421680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.222456, 35.055225, 41.822121>,  <27.716360, 35.083599, 42.409111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.222456, 35.055225, 41.822121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.234175, 35.440865, 41.927692>,  <27.241205, 35.672249, 41.991035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.234175, 35.440865, 41.927692>,  <27.222456, 35.055225, 41.822121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.234175, 35.440865, 41.927692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101080, 0.265543, -0.958786,
		-0.994447, 0.001410, 0.105230,
		0.029295, 0.964098, 0.263925,
		27.242964, 35.730095, 42.006870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.749334, 35.342514, 41.313595>,  <27.222456, 35.055225, 41.822121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.749334, 35.342514, 41.313595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.962713, 35.643135, 41.468826>,  <27.090740, 35.823505, 41.561966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.962713, 35.643135, 41.468826>,  <26.749334, 35.342514, 41.313595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.962713, 35.643135, 41.468826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153763, 0.365003, -0.918221,
		-0.831739, 0.549496, 0.079150,
		0.533449, 0.751550, 0.388080,
		27.122747, 35.868599, 41.585251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.515434, 35.931419, 41.010735>,  <26.749334, 35.342514, 41.313595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.515434, 35.931419, 41.010735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.866417, 36.063721, 41.149685>,  <27.077007, 36.143101, 41.233055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.866417, 36.063721, 41.149685>,  <26.515434, 35.931419, 41.010735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.866417, 36.063721, 41.149685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238010, 0.328527, -0.914014,
		-0.416439, 0.884686, 0.209544,
		0.877456, 0.330758, 0.347375,
		27.129654, 36.162949, 41.253899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.509357, 36.617424, 40.968929>,  <26.515434, 35.931419, 41.010735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.509357, 36.617424, 40.968929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.895967, 36.514915, 40.973892>,  <27.127934, 36.453411, 40.976871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.895967, 36.514915, 40.973892>,  <26.509357, 36.617424, 40.968929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.895967, 36.514915, 40.973892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171786, 0.610447, -0.773204,
		0.190572, 0.749454, 0.634036,
		0.966526, -0.256270, 0.012412,
		27.185925, 36.438034, 40.977615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.929258, 37.242939, 40.840691>,  <26.509357, 36.617424, 40.968929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.929258, 37.242939, 40.840691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180746, 36.944080, 40.754444>,  <27.331638, 36.764767, 40.702698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180746, 36.944080, 40.754444>,  <26.929258, 37.242939, 40.840691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.180746, 36.944080, 40.754444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342641, 0.515068, -0.785686,
		0.698075, 0.420098, 0.579835,
		0.628720, -0.747143, -0.215613,
		27.369362, 36.719936, 40.689758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.654156, 37.542271, 40.704884>,  <26.929258, 37.242939, 40.840691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.654156, 37.542271, 40.704884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.654541, 37.187279, 40.520546>,  <27.654772, 36.974285, 40.409943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.654541, 37.187279, 40.520546>,  <27.654156, 37.542271, 40.704884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.654541, 37.187279, 40.520546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300739, 0.439766, -0.846264,
		0.953706, -0.137780, 0.267323,
		0.000962, -0.887481, -0.460843,
		27.654829, 36.921036, 40.382294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.292597, 37.489449, 40.480156>,  <27.654156, 37.542271, 40.704884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.292597, 37.489449, 40.480156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.096004, 37.230015, 40.247677>,  <27.978050, 37.074356, 40.108189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.096004, 37.230015, 40.247677>,  <28.292597, 37.489449, 40.480156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.096004, 37.230015, 40.247677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511355, 0.325293, -0.795425,
		0.704957, -0.688133, 0.171781,
		-0.491479, -0.648582, -0.581198,
		27.948561, 37.035439, 40.073318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.797478, 37.239494, 40.096458>,  <28.292597, 37.489449, 40.480156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.797478, 37.239494, 40.096458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.448919, 37.192699, 39.905888>,  <28.239784, 37.164623, 39.791546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.448919, 37.192699, 39.905888>,  <28.797478, 37.239494, 40.096458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.448919, 37.192699, 39.905888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439388, 0.245827, -0.864007,
		0.218203, -0.962227, -0.162806,
		-0.871393, -0.116994, -0.476431,
		28.187502, 37.157600, 39.762959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.061289, 37.166595, 39.536514>,  <28.797478, 37.239494, 40.096458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.061289, 37.166595, 39.536514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.669369, 37.181461, 39.457916>,  <28.434217, 37.190380, 39.410755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.669369, 37.181461, 39.457916>,  <29.061289, 37.166595, 39.536514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.669369, 37.181461, 39.457916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198958, 0.081767, -0.976591,
		-0.020227, -0.995958, -0.087509,
		-0.979800, 0.037164, -0.196500,
		28.375429, 37.192612, 39.398968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.951180, 36.771030, 38.976864>,  <29.061289, 37.166595, 39.536514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.951180, 36.771030, 38.976864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.639938, 37.022285, 38.977276>,  <28.453194, 37.173038, 38.977524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.639938, 37.022285, 38.977276>,  <28.951180, 36.771030, 38.976864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.639938, 37.022285, 38.977276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053286, 0.067636, -0.996286,
		-0.625874, -0.775157, -0.086099,
		-0.778101, 0.628138, 0.001026,
		28.406507, 37.210728, 38.977585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.472383, 36.594788, 38.365887>,  <28.951180, 36.771030, 38.976864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.472383, 36.594788, 38.365887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.399473, 36.975559, 38.464363>,  <28.355726, 37.204021, 38.523449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.399473, 36.975559, 38.464363>,  <28.472383, 36.594788, 38.365887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.399473, 36.975559, 38.464363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075045, 0.263123, -0.961839,
		-0.980379, -0.156845, -0.119398,
		-0.182276, 0.951928, 0.246190,
		28.344791, 37.261139, 38.538219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.859833, 36.770428, 37.972267>,  <28.472383, 36.594788, 38.365887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.859833, 36.770428, 37.972267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.034014, 37.113487, 38.081676>,  <28.138521, 37.319324, 38.147320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.034014, 37.113487, 38.081676>,  <27.859833, 36.770428, 37.972267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.034014, 37.113487, 38.081676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025614, 0.315519, -0.948573,
		-0.899848, 0.406052, 0.159361,
		0.435452, 0.857654, 0.273519,
		28.164650, 37.370785, 38.163731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.453617, 37.294399, 37.548992>,  <27.859833, 36.770428, 37.972267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.453617, 37.294399, 37.548992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.780910, 37.479076, 37.686008>,  <27.977287, 37.589882, 37.768219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.780910, 37.479076, 37.686008>,  <27.453617, 37.294399, 37.548992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.780910, 37.479076, 37.686008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018645, 0.574215, -0.818492,
		-0.574583, 0.676104, 0.461234,
		0.818234, 0.461692, 0.342540,
		28.026381, 37.617584, 37.788769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.404453, 37.981014, 37.342285>,  <27.453617, 37.294399, 37.548992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.404453, 37.981014, 37.342285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.799406, 37.941185, 37.391533>,  <28.036379, 37.917286, 37.421082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.799406, 37.941185, 37.391533>,  <27.404453, 37.981014, 37.342285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.799406, 37.941185, 37.391533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158266, 0.596484, -0.786866,
		0.004915, 0.796424, 0.604718,
		0.987384, -0.099574, 0.123115,
		28.095621, 37.911312, 37.428467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.560656, 38.625217, 37.263145>,  <27.404453, 37.981014, 37.342285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.560656, 38.625217, 37.263145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.905437, 38.429955, 37.208397>,  <28.112307, 38.312798, 37.175549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.905437, 38.429955, 37.208397>,  <27.560656, 38.625217, 37.263145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.905437, 38.429955, 37.208397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185976, 0.555597, -0.810385,
		0.471639, 0.673063, 0.569687,
		0.861957, -0.488157, -0.136867,
		28.164024, 38.283508, 37.167336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.035009, 39.125076, 37.041695>,  <27.560656, 38.625217, 37.263145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.035009, 39.125076, 37.041695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.172268, 38.778393, 36.896881>,  <28.254623, 38.570381, 36.809994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.172268, 38.778393, 36.896881>,  <28.035009, 39.125076, 37.041695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.172268, 38.778393, 36.896881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194215, 0.442576, -0.875447,
		0.918983, 0.230097, 0.320197,
		0.343149, -0.866708, -0.362031,
		28.275213, 38.518379, 36.788273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.753942, 39.278336, 36.682606>,  <28.035009, 39.125076, 37.041695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.753942, 39.278336, 36.682606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.633080, 38.920967, 36.549641>,  <28.560562, 38.706547, 36.469864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.633080, 38.920967, 36.549641>,  <28.753942, 39.278336, 36.682606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.633080, 38.920967, 36.549641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225102, 0.271976, -0.935606,
		0.926300, -0.357525, 0.118933,
		-0.302155, -0.893423, -0.332411,
		28.542433, 38.652939, 36.449917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.299501, 38.986061, 36.256489>,  <28.753942, 39.278336, 36.682606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.299501, 38.986061, 36.256489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946802, 38.835445, 36.142830>,  <28.735182, 38.745075, 36.074635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946802, 38.835445, 36.142830>,  <29.299501, 38.986061, 36.256489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.946802, 38.835445, 36.142830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168406, 0.311394, -0.935240,
		0.440637, -0.872497, -0.211159,
		-0.881748, -0.376541, -0.284146,
		28.682278, 38.722485, 36.057587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.335062, 38.464252, 35.833298>,  <29.299501, 38.986061, 36.256489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.335062, 38.464252, 35.833298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.011774, 38.684837, 35.750668>,  <28.817802, 38.817188, 35.701088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.011774, 38.684837, 35.750668>,  <29.335062, 38.464252, 35.833298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.011774, 38.684837, 35.750668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385036, 0.229445, -0.893925,
		-0.445568, -0.802025, -0.397774,
		-0.808218, 0.551462, -0.206575,
		28.769308, 38.850277, 35.688694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.695198, 39.003624, 35.513588>,  <29.335062, 38.464252, 35.833298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.695198, 39.003624, 35.513588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.805420, 39.385910, 35.472244>,  <29.871553, 39.615280, 35.447437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.805420, 39.385910, 35.472244>,  <29.695198, 39.003624, 35.513588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.805420, 39.385910, 35.472244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732270, -0.139031, 0.666672,
		0.622777, -0.259389, -0.738150,
		0.275553, 0.955713, -0.103357,
		29.888086, 39.672623, 35.441238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.283066, 39.039085, 35.887295>,  <29.695198, 39.003624, 35.513588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.283066, 39.039085, 35.887295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.261385, 39.427601, 35.794640>,  <30.248377, 39.660709, 35.739044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.261385, 39.427601, 35.794640>,  <30.283066, 39.039085, 35.887295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.261385, 39.427601, 35.794640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592628, 0.217997, 0.775416,
		0.803651, -0.095247, -0.587430,
		-0.054202, 0.971291, -0.231640,
		30.245125, 39.718987, 35.725147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.894920, 39.403126, 35.628975>,  <30.283066, 39.039085, 35.887295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.894920, 39.403126, 35.628975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.653627, 39.638943, 35.843842>,  <30.508852, 39.780434, 35.972763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.653627, 39.638943, 35.843842>,  <30.894920, 39.403126, 35.628975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.653627, 39.638943, 35.843842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724130, 0.122552, 0.678688,
		0.334286, 0.798385, -0.500834,
		-0.603232, 0.589544, 0.537167,
		30.472658, 39.815807, 36.004993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137388, 40.043682, 35.749561>,  <30.894920, 39.403126, 35.628975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137388, 40.043682, 35.749561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.912315, 39.946686, 36.065685>,  <30.777271, 39.888489, 36.255360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.912315, 39.946686, 36.065685>,  <31.137388, 40.043682, 35.749561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.912315, 39.946686, 36.065685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781495, 0.155677, 0.604177,
		-0.269541, 0.957581, 0.101910,
		-0.562683, -0.242492, 0.790307,
		30.743511, 39.873940, 36.302776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238119, 40.461193, 36.322159>,  <31.137388, 40.043682, 35.749561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238119, 40.461193, 36.322159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.097706, 40.121506, 36.479946>,  <31.013458, 39.917694, 36.574619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.097706, 40.121506, 36.479946>,  <31.238119, 40.461193, 36.322159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.097706, 40.121506, 36.479946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559338, 0.147678, 0.815679,
		-0.750944, 0.506970, 0.423160,
		-0.351034, -0.849219, 0.394465,
		30.992395, 39.866741, 36.598286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.827333, 40.561546, 37.020832>,  <31.238119, 40.461193, 36.322159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.827333, 40.561546, 37.020832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.980572, 40.192455, 37.003796>,  <31.072515, 39.971001, 36.993572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.980572, 40.192455, 37.003796>,  <30.827333, 40.561546, 37.020832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.980572, 40.192455, 37.003796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473007, 0.156360, 0.867073,
		-0.793411, -0.352319, 0.496357,
		0.383097, -0.922726, -0.042591,
		31.095501, 39.915638, 36.991016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829641, 40.317898, 37.797478>,  <30.827333, 40.561546, 37.020832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.829641, 40.317898, 37.797478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.092058, 40.084064, 37.606533>,  <31.249508, 39.943764, 37.491966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.092058, 40.084064, 37.606533>,  <30.829641, 40.317898, 37.797478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.092058, 40.084064, 37.606533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525164, -0.100668, 0.845026,
		-0.542043, -0.805063, 0.240960,
		0.656042, -0.584584, -0.477357,
		31.288870, 39.908688, 37.463326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949011, 39.754375, 38.163761>,  <30.829641, 40.317898, 37.797478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949011, 39.754375, 38.163761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275738, 39.747929, 37.933094>,  <31.471775, 39.744061, 37.794693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275738, 39.747929, 37.933094>,  <30.949011, 39.754375, 38.163761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.275738, 39.747929, 37.933094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572490, -0.100650, 0.813711,
		-0.071158, -0.994791, -0.072984,
		0.816818, -0.016120, -0.576670,
		31.520782, 39.743092, 37.760094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.453438, 39.238602, 38.465576>,  <30.949011, 39.754375, 38.163761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.453438, 39.238602, 38.465576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712048, 39.458939, 38.254452>,  <31.867212, 39.591141, 38.127777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712048, 39.458939, 38.254452>,  <31.453438, 39.238602, 38.465576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.712048, 39.458939, 38.254452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694581, -0.138863, 0.705885,
		0.315539, -0.822976, -0.472383,
		0.646523, 0.550843, -0.527807,
		31.906004, 39.624191, 38.096111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126770, 38.933899, 38.397102>,  <31.453438, 39.238602, 38.465576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126770, 38.933899, 38.397102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265251, 39.292439, 38.286324>,  <32.348339, 39.507561, 38.219856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265251, 39.292439, 38.286324>,  <32.126770, 38.933899, 38.397102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.265251, 39.292439, 38.286324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762230, -0.096646, 0.640051,
		0.546942, -0.432688, -0.716683,
		0.346207, 0.896348, -0.276948,
		32.369114, 39.561344, 38.203239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802647, 38.880341, 38.167015>,  <32.126770, 38.933899, 38.397102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802647, 38.880341, 38.167015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775593, 39.263485, 38.278675>,  <32.759361, 39.493374, 38.345669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775593, 39.263485, 38.278675>,  <32.802647, 38.880341, 38.167015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775593, 39.263485, 38.278675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705775, -0.151827, 0.691975,
		0.705200, 0.243814, -0.665769,
		-0.067632, 0.957864, 0.279146,
		32.755302, 39.550842, 38.362419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419567, 39.201332, 38.154091>,  <32.802647, 38.880341, 38.167015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419567, 39.201332, 38.154091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239014, 39.444229, 38.415627>,  <33.130680, 39.589970, 38.572548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239014, 39.444229, 38.415627>,  <33.419567, 39.201332, 38.154091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239014, 39.444229, 38.415627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759439, -0.123291, 0.638790,
		0.468515, 0.784889, -0.405515,
		-0.451383, 0.607246, 0.653839,
		33.103600, 39.626404, 38.611778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983128, 39.610126, 38.453560>,  <33.419567, 39.201332, 38.154091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983128, 39.610126, 38.453560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686581, 39.699890, 38.706547>,  <33.508652, 39.753746, 38.858337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686581, 39.699890, 38.706547>,  <33.983128, 39.610126, 38.453560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686581, 39.699890, 38.706547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594419, -0.217884, 0.774075,
		0.311513, 0.949825, 0.028141,
		-0.741367, 0.224407, 0.632468,
		33.464169, 39.767212, 38.896286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263519, 40.175716, 38.960320>,  <33.983128, 39.610126, 38.453560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263519, 40.175716, 38.960320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950199, 39.979107, 39.112553>,  <33.762207, 39.861141, 39.203892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950199, 39.979107, 39.112553>,  <34.263519, 40.175716, 38.960320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950199, 39.979107, 39.112553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549604, -0.261495, 0.793446,
		-0.290480, 0.830675, 0.474975,
		-0.783299, -0.491528, 0.380583,
		33.715210, 39.831650, 39.226727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180828, 40.462170, 39.647255>,  <34.263519, 40.175716, 38.960320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180828, 40.462170, 39.647255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007980, 40.103825, 39.605869>,  <33.904270, 39.888817, 39.581036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007980, 40.103825, 39.605869>,  <34.180828, 40.462170, 39.647255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007980, 40.103825, 39.605869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550525, -0.352924, 0.756549,
		-0.714280, 0.269957, 0.645699,
		-0.432119, -0.895861, -0.103469,
		33.878345, 39.835068, 39.574829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999748, 40.392719, 40.322720>,  <34.180828, 40.462170, 39.647255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999748, 40.392719, 40.322720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940823, 40.028316, 40.168648>,  <33.905468, 39.809673, 40.076202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940823, 40.028316, 40.168648>,  <33.999748, 40.392719, 40.322720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940823, 40.028316, 40.168648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490233, -0.405483, 0.771528,
		-0.859052, -0.075172, 0.506339,
		-0.147315, -0.911006, -0.385182,
		33.896629, 39.755016, 40.053093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546513, 39.949970, 40.737667>,  <33.999748, 40.392719, 40.322720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546513, 39.949970, 40.737667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743176, 39.671631, 40.528263>,  <33.861172, 39.504627, 40.402618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743176, 39.671631, 40.528263>,  <33.546513, 39.949970, 40.737667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743176, 39.671631, 40.528263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303459, -0.426590, 0.852017,
		-0.816203, -0.577763, 0.001427,
		0.491655, -0.695852, -0.523512,
		33.890671, 39.462875, 40.371208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413666, 39.337326, 41.020710>,  <33.546513, 39.949970, 40.737667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413666, 39.337326, 41.020710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738388, 39.248592, 40.804649>,  <33.933220, 39.195351, 40.675011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738388, 39.248592, 40.804649>,  <33.413666, 39.337326, 41.020710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738388, 39.248592, 40.804649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330892, -0.587418, 0.738546,
		-0.481131, -0.778286, -0.403464,
		0.811803, -0.221835, -0.540154,
		33.981930, 39.182041, 40.642605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480610, 38.683880, 41.131512>,  <33.413666, 39.337326, 41.020710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480610, 38.683880, 41.131512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841610, 38.812435, 41.016827>,  <34.058208, 38.889568, 40.948017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841610, 38.812435, 41.016827>,  <33.480610, 38.683880, 41.131512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841610, 38.812435, 41.016827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421437, -0.521751, 0.741732,
		0.088793, -0.790244, -0.606325,
		0.902500, 0.321388, -0.286710,
		34.112362, 38.908852, 40.930813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894424, 38.109482, 41.221313>,  <33.480610, 38.683880, 41.131512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894424, 38.109482, 41.221313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.170853, 38.398457, 41.212269>,  <34.336708, 38.571842, 41.206841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.170853, 38.398457, 41.212269>,  <33.894424, 38.109482, 41.221313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170853, 38.398457, 41.212269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521825, -0.477036, 0.707203,
		0.500121, -0.500526, -0.706649,
		0.691070, 0.722434, -0.022611,
		34.378174, 38.615189, 41.205486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622826, 37.834179, 41.103745>,  <33.894424, 38.109482, 41.221313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622826, 37.834179, 41.103745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635826, 38.190018, 41.285984>,  <34.643627, 38.403519, 41.395329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635826, 38.190018, 41.285984>,  <34.622826, 37.834179, 41.103745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635826, 38.190018, 41.285984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483768, -0.412885, 0.771683,
		0.874593, 0.195323, -0.443775,
		0.032501, 0.889593, 0.455597,
		34.645576, 38.456894, 41.422665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335415, 37.945198, 41.355366>,  <34.622826, 37.834179, 41.103745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335415, 37.945198, 41.355366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100437, 38.180363, 41.577816>,  <34.959450, 38.321461, 41.711285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100437, 38.180363, 41.577816>,  <35.335415, 37.945198, 41.355366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100437, 38.180363, 41.577816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523929, -0.247444, 0.815027,
		0.616769, 0.770154, -0.162662,
		-0.587447, 0.587907, 0.556122,
		34.924202, 38.356735, 41.744652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703999, 38.155823, 41.850304>,  <35.335415, 37.945198, 41.355366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703999, 38.155823, 41.850304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354912, 38.289406, 41.992764>,  <35.145462, 38.369556, 42.078239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354912, 38.289406, 41.992764>,  <35.703999, 38.155823, 41.850304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354912, 38.289406, 41.992764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271627, -0.274030, 0.922565,
		0.405696, 0.901874, 0.148437,
		-0.872714, 0.333961, 0.356146,
		35.093098, 38.389595, 42.099606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764168, 38.713432, 42.396904>,  <35.703999, 38.155823, 41.850304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764168, 38.713432, 42.396904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426888, 38.507126, 42.457561>,  <35.224518, 38.383343, 42.493954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426888, 38.507126, 42.457561>,  <35.764168, 38.713432, 42.396904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426888, 38.507126, 42.457561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327286, -0.268716, 0.905912,
		-0.426488, 0.813498, 0.395385,
		-0.843204, -0.515764, 0.151642,
		35.173927, 38.352398, 42.503056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624714, 38.922779, 43.053925>,  <35.764168, 38.713432, 42.396904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624714, 38.922779, 43.053925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340702, 38.642319, 43.027863>,  <35.170296, 38.474045, 43.012226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340702, 38.642319, 43.027863>,  <35.624714, 38.922779, 43.053925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340702, 38.642319, 43.027863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117554, -0.209258, 0.970769,
		-0.694288, 0.681617, 0.231002,
		-0.710032, -0.701149, -0.065159,
		35.127693, 38.431973, 43.008316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062443, 39.107449, 43.552338>,  <35.624714, 38.922779, 43.053925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062443, 39.107449, 43.552338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.014771, 38.713089, 43.505348>,  <34.986168, 38.476475, 43.477154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.014771, 38.713089, 43.505348>,  <35.062443, 39.107449, 43.552338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014771, 38.713089, 43.505348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109094, -0.130600, 0.985415,
		-0.986861, 0.104624, 0.123120,
		-0.119178, -0.985899, -0.117470,
		34.979015, 38.417320, 43.470108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538197, 38.922333, 44.044857>,  <35.062443, 39.107449, 43.552338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538197, 38.922333, 44.044857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735767, 38.587746, 43.949898>,  <34.854309, 38.386993, 43.892921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735767, 38.587746, 43.949898>,  <34.538197, 38.922333, 44.044857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735767, 38.587746, 43.949898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094487, -0.219779, 0.970963,
		-0.864354, -0.502017, -0.029520,
		0.493928, -0.836467, -0.237401,
		34.883945, 38.336807, 43.878677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224327, 38.448574, 44.523731>,  <34.538197, 38.922333, 44.044857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224327, 38.448574, 44.523731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552410, 38.241699, 44.425930>,  <34.749260, 38.117573, 44.367249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552410, 38.241699, 44.425930>,  <34.224327, 38.448574, 44.523731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552410, 38.241699, 44.425930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091270, -0.303626, 0.948410,
		-0.564743, -0.800206, -0.201832,
		0.820204, -0.517186, -0.244505,
		34.798473, 38.086544, 44.352577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221390, 37.790531, 44.793602>,  <34.224327, 38.448574, 44.523731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221390, 37.790531, 44.793602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616184, 37.830048, 44.742863>,  <34.853062, 37.853760, 44.712418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616184, 37.830048, 44.742863>,  <34.221390, 37.790531, 44.793602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616184, 37.830048, 44.742863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149535, -0.274141, 0.949992,
		0.059080, -0.956601, -0.285348,
		0.986990, 0.098795, -0.126849,
		34.912281, 37.859688, 44.704807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533310, 37.147362, 45.074612>,  <34.221390, 37.790531, 44.793602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533310, 37.147362, 45.074612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793983, 37.449677, 45.049019>,  <34.950390, 37.631065, 45.033665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793983, 37.449677, 45.049019>,  <34.533310, 37.147362, 45.074612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793983, 37.449677, 45.049019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095511, 0.001911, 0.995427,
		0.752451, -0.654817, -0.070940,
		0.651687, 0.755785, -0.063980,
		34.989491, 37.676411, 45.029823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983196, 36.812012, 45.505970>,  <34.533310, 37.147362, 45.074612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983196, 36.812012, 45.505970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094643, 37.195801, 45.489063>,  <35.161510, 37.426075, 45.478920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094643, 37.195801, 45.489063>,  <34.983196, 36.812012, 45.505970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094643, 37.195801, 45.489063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073944, 0.022451, 0.997010,
		0.957551, -0.280910, -0.064691,
		0.278617, 0.959471, -0.042270,
		35.178226, 37.483643, 45.476383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613285, 36.904087, 45.927998>,  <34.983196, 36.812012, 45.505970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613285, 36.904087, 45.927998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472706, 37.276226, 45.886150>,  <35.388359, 37.499508, 45.861042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472706, 37.276226, 45.886150>,  <35.613285, 36.904087, 45.927998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472706, 37.276226, 45.886150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027546, 0.101426, 0.994462,
		0.935803, 0.352382, -0.010019,
		-0.351447, 0.930344, -0.104621,
		35.367271, 37.555328, 45.854763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967583, 37.339615, 46.417347>,  <35.613285, 36.904087, 45.927998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967583, 37.339615, 46.417347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.612644, 37.497757, 46.322433>,  <35.399681, 37.592644, 46.265484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.612644, 37.497757, 46.322433>,  <35.967583, 37.339615, 46.417347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612644, 37.497757, 46.322433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210797, 0.109864, 0.971337,
		0.410096, 0.911933, -0.014147,
		-0.887348, 0.395359, -0.237287,
		35.346439, 37.616364, 46.251247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868454, 38.077927, 46.709522>,  <35.967583, 37.339615, 46.417347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868454, 38.077927, 46.709522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501518, 37.923569, 46.670403>,  <35.281357, 37.830952, 46.646931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501518, 37.923569, 46.670403>,  <35.868454, 38.077927, 46.709522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501518, 37.923569, 46.670403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229102, 0.310847, 0.922435,
		-0.325566, 0.868595, -0.373563,
		-0.917344, -0.385897, -0.097796,
		35.226315, 37.807800, 46.641064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389214, 38.596478, 47.052292>,  <35.868454, 38.077927, 46.709522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389214, 38.596478, 47.052292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137638, 38.289345, 47.003506>,  <34.986694, 38.105064, 46.974232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137638, 38.289345, 47.003506>,  <35.389214, 38.596478, 47.052292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137638, 38.289345, 47.003506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488071, 0.267829, 0.830695,
		-0.605165, 0.581985, -0.543202,
		-0.628938, -0.767829, -0.121970,
		34.948956, 38.058994, 46.966915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696945, 38.837345, 46.983593>,  <35.389214, 38.596478, 47.052292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696945, 38.837345, 46.983593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688667, 38.458279, 47.111034>,  <34.683701, 38.230839, 47.187500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688667, 38.458279, 47.111034>,  <34.696945, 38.837345, 46.983593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688667, 38.458279, 47.111034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504630, 0.284997, 0.814939,
		-0.863088, -0.143912, -0.484116,
		-0.020692, -0.947663, 0.318600,
		34.682461, 38.173981, 47.206615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052097, 38.806614, 47.260967>,  <34.696945, 38.837345, 46.983593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052097, 38.806614, 47.260967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212360, 38.475380, 47.417809>,  <34.308517, 38.276638, 47.511913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212360, 38.475380, 47.417809>,  <34.052097, 38.806614, 47.260967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212360, 38.475380, 47.417809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478340, 0.175954, 0.860367,
		-0.781448, -0.532276, -0.325608,
		0.400660, -0.828084, 0.392108,
		34.332558, 38.226955, 47.535442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491943, 38.464077, 47.669563>,  <34.052097, 38.806614, 47.260967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491943, 38.464077, 47.669563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840569, 38.311272, 47.792488>,  <34.049744, 38.219589, 47.866245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840569, 38.311272, 47.792488>,  <33.491943, 38.464077, 47.669563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840569, 38.311272, 47.792488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272449, 0.143748, 0.951372,
		-0.407611, -0.912909, 0.021207,
		0.871565, -0.382012, 0.307314,
		34.102039, 38.196667, 47.884682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305141, 37.890816, 48.091141>,  <33.491943, 38.464077, 47.669563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305141, 37.890816, 48.091141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648960, 38.071598, 48.186562>,  <33.855251, 38.180069, 48.243816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648960, 38.071598, 48.186562>,  <33.305141, 37.890816, 48.091141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648960, 38.071598, 48.186562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210607, -0.112045, 0.971129,
		0.465641, -0.884973, -0.001122,
		0.859548, 0.451961, 0.238555,
		33.906826, 38.207188, 48.258129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799511, 37.405270, 48.491077>,  <33.305141, 37.890816, 48.091141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799511, 37.405270, 48.491077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806911, 37.794159, 48.584412>,  <33.811352, 38.027493, 48.640411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806911, 37.794159, 48.584412>,  <33.799511, 37.405270, 48.491077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806911, 37.794159, 48.584412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226642, -0.223223, 0.948053,
		0.973803, -0.070426, 0.216215,
		0.018504, 0.972220, 0.233337,
		33.812462, 38.085823, 48.654411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191566, 37.468567, 49.050247>,  <33.799511, 37.405270, 48.491077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191566, 37.468567, 49.050247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935936, 37.775967, 49.037693>,  <33.782558, 37.960407, 49.030159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935936, 37.775967, 49.037693>,  <34.191566, 37.468567, 49.050247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935936, 37.775967, 49.037693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336617, -0.242770, 0.909809,
		0.691568, 0.592005, 0.413840,
		-0.639079, 0.768500, -0.031387,
		33.744213, 38.006516, 49.028278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336376, 37.799500, 49.568935>,  <34.191566, 37.468567, 49.050247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336376, 37.799500, 49.568935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960377, 37.900539, 49.477207>,  <33.734776, 37.961163, 49.422169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960377, 37.900539, 49.477207>,  <34.336376, 37.799500, 49.568935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960377, 37.900539, 49.477207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271205, -0.145441, 0.951470,
		0.206990, 0.956577, 0.205221,
		-0.940002, 0.252601, -0.229324,
		33.678375, 37.976318, 49.408409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096786, 38.267242, 50.036949>,  <34.336376, 37.799500, 49.568935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096786, 38.267242, 50.036949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776791, 38.069450, 49.901009>,  <33.584793, 37.950775, 49.819443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776791, 38.069450, 49.901009>,  <34.096786, 38.267242, 50.036949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776791, 38.069450, 49.901009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343724, -0.086577, 0.935071,
		-0.491796, 0.864868, -0.100703,
		-0.799994, -0.494478, -0.339854,
		33.536793, 37.921108, 49.799053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559570, 38.652119, 50.273067>,  <34.096786, 38.267242, 50.036949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559570, 38.652119, 50.273067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374599, 38.310619, 50.177338>,  <33.263615, 38.105721, 50.119900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374599, 38.310619, 50.177338>,  <33.559570, 38.652119, 50.273067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374599, 38.310619, 50.177338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573612, 0.082237, 0.814989,
		-0.676112, 0.514155, -0.527748,
		-0.462431, -0.853746, -0.239324,
		33.235870, 38.054497, 50.105541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900005, 38.704357, 50.579678>,  <33.559570, 38.652119, 50.273067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900005, 38.704357, 50.579678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871998, 38.313774, 50.498066>,  <32.855194, 38.079426, 50.449100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871998, 38.313774, 50.498066>,  <32.900005, 38.704357, 50.579678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871998, 38.313774, 50.498066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651624, -0.110090, 0.750511,
		-0.755304, 0.185501, -0.628574,
		-0.070021, -0.976458, -0.204028,
		32.850990, 38.020836, 50.436859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170528, 38.559532, 50.563057>,  <32.900005, 38.704357, 50.579678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170528, 38.559532, 50.563057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352959, 38.207973, 50.618958>,  <32.462418, 37.997040, 50.652500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352959, 38.207973, 50.618958>,  <32.170528, 38.559532, 50.563057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.352959, 38.207973, 50.618958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527032, -0.140207, 0.838200,
		-0.717098, -0.455940, -0.527152,
		0.456079, -0.878898, 0.139753,
		32.489784, 37.944305, 50.660885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784395, 37.896320, 50.815727>,  <32.170528, 38.559532, 50.563057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784395, 37.896320, 50.815727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155064, 37.849991, 50.958763>,  <32.377464, 37.822193, 51.044582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155064, 37.849991, 50.958763>,  <31.784395, 37.896320, 50.815727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155064, 37.849991, 50.958763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375266, -0.230870, 0.897705,
		-0.021418, -0.966066, -0.257404,
		0.926670, -0.115822, 0.357587,
		32.433064, 37.815243, 51.066040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.822630, 37.226959, 51.243145>,  <31.784395, 37.896320, 50.815727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.822630, 37.226959, 51.243145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098560, 37.492603, 51.358452>,  <32.264118, 37.651989, 51.427635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098560, 37.492603, 51.358452>,  <31.822630, 37.226959, 51.243145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098560, 37.492603, 51.358452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075906, -0.329631, 0.941054,
		0.719986, -0.671044, -0.176978,
		0.689825, 0.664111, 0.288266,
		32.305508, 37.691837, 51.444931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193333, 36.885380, 51.643532>,  <31.822630, 37.226959, 51.243145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193333, 36.885380, 51.643532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227909, 37.266850, 51.758797>,  <32.248653, 37.495731, 51.827953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227909, 37.266850, 51.758797>,  <32.193333, 36.885380, 51.643532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227909, 37.266850, 51.758797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222287, -0.263488, 0.938703,
		0.971142, -0.145196, 0.189213,
		0.086440, 0.953673, 0.288159,
		32.253841, 37.552952, 51.845245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304836, 36.883007, 52.310238>,  <32.193333, 36.885380, 51.643532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304836, 36.883007, 52.310238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237556, 37.276649, 52.287483>,  <32.197189, 37.512836, 52.273830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237556, 37.276649, 52.287483>,  <32.304836, 36.883007, 52.310238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237556, 37.276649, 52.287483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215191, 0.019661, 0.976374,
		0.961978, 0.176468, 0.208464,
		-0.168200, 0.984110, -0.056888,
		32.187096, 37.571884, 52.270416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569828, 37.200436, 52.929607>,  <32.304836, 36.883007, 52.310238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569828, 37.200436, 52.929607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298935, 37.443119, 52.763107>,  <32.136398, 37.588730, 52.663208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298935, 37.443119, 52.763107>,  <32.569828, 37.200436, 52.929607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298935, 37.443119, 52.763107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327469, 0.258072, 0.908935,
		0.658881, 0.751867, 0.023904,
		-0.677230, 0.606708, -0.416252,
		32.095764, 37.625130, 52.638233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053055, 37.459324, 52.390255>,  <32.569828, 37.200436, 52.929607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053055, 37.459324, 52.390255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242474, 37.281097, 52.694157>,  <33.356125, 37.174160, 52.876495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242474, 37.281097, 52.694157>,  <33.053055, 37.459324, 52.390255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242474, 37.281097, 52.694157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033859, -0.871171, -0.489811,
		0.880119, 0.206223, -0.427625,
		0.473545, -0.445571, 0.759751,
		33.384537, 37.147427, 52.922081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770672, 37.178543, 52.309086>,  <33.053055, 37.459324, 52.390255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770672, 37.178543, 52.309086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565845, 36.943737, 52.559910>,  <33.442951, 36.802853, 52.710403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565845, 36.943737, 52.559910>,  <33.770672, 37.178543, 52.309086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565845, 36.943737, 52.559910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083284, -0.760525, -0.643945,
		0.854901, -0.277516, 0.438326,
		-0.512063, -0.587015, 0.627061,
		33.412228, 36.767632, 52.748028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071438, 36.463539, 52.213482>,  <33.770672, 37.178543, 52.309086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071438, 36.463539, 52.213482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696384, 36.411247, 52.342323>,  <33.471352, 36.379871, 52.419628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696384, 36.411247, 52.342323>,  <34.071438, 36.463539, 52.213482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696384, 36.411247, 52.342323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147617, -0.689158, -0.709416,
		0.314717, -0.712721, 0.626882,
		-0.937636, -0.130727, 0.322099,
		33.415092, 36.372028, 52.438953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895782, 35.710365, 52.184032>,  <34.071438, 36.463539, 52.213482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895782, 35.710365, 52.184032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549366, 35.906052, 52.142765>,  <33.341518, 36.023464, 52.118004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549366, 35.906052, 52.142765>,  <33.895782, 35.710365, 52.184032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549366, 35.906052, 52.142765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295172, -0.666827, -0.684263,
		-0.403545, -0.562148, 0.721901,
		-0.866040, 0.489216, -0.103164,
		33.289555, 36.052818, 52.111816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416382, 35.195709, 52.067520>,  <33.895782, 35.710365, 52.184032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416382, 35.195709, 52.067520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295238, 35.541634, 51.907330>,  <33.222553, 35.749187, 51.811214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295238, 35.541634, 51.907330>,  <33.416382, 35.195709, 52.067520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295238, 35.541634, 51.907330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341564, -0.490789, -0.801536,
		-0.889725, -0.105965, 0.444028,
		-0.302858, 0.864811, -0.400473,
		33.204380, 35.801079, 51.787189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708675, 35.042980, 51.853745>,  <33.416382, 35.195709, 52.067520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708675, 35.042980, 51.853745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893295, 35.340565, 51.660461>,  <33.004066, 35.519115, 51.544491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893295, 35.340565, 51.660461>,  <32.708675, 35.042980, 51.853745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893295, 35.340565, 51.660461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203160, -0.441576, -0.873920,
		-0.863536, 0.501530, -0.052668,
		0.461554, 0.743961, -0.483207,
		33.031761, 35.563755, 51.515499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441887, 35.069122, 51.262123>,  <32.708675, 35.042980, 51.853745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441887, 35.069122, 51.262123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790295, 35.255676, 51.200397>,  <32.999340, 35.367607, 51.163364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790295, 35.255676, 51.200397>,  <32.441887, 35.069122, 51.262123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790295, 35.255676, 51.200397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077387, -0.440463, -0.894429,
		-0.485116, 0.767123, -0.419744,
		0.871019, 0.466385, -0.154310,
		33.051601, 35.395592, 51.154106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404018, 35.339458, 50.601917>,  <32.441887, 35.069122, 51.262123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404018, 35.339458, 50.601917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794178, 35.321312, 50.688210>,  <33.028275, 35.310425, 50.739983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794178, 35.321312, 50.688210>,  <32.404018, 35.339458, 50.601917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794178, 35.321312, 50.688210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152042, -0.570149, -0.807349,
		0.159624, 0.820288, -0.549226,
		0.975399, -0.045367, 0.215727,
		33.086800, 35.307701, 50.752926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715897, 35.450783, 50.018734>,  <32.404018, 35.339458, 50.601917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715897, 35.450783, 50.018734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997818, 35.259277, 50.228130>,  <33.166969, 35.144375, 50.353767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997818, 35.259277, 50.228130>,  <32.715897, 35.450783, 50.018734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997818, 35.259277, 50.228130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306915, -0.459504, -0.833462,
		0.639576, 0.748092, -0.176920,
		0.704802, -0.478763, 0.523489,
		33.209259, 35.115650, 50.385178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391510, 35.514206, 49.635574>,  <32.715897, 35.450783, 50.018734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391510, 35.514206, 49.635574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460842, 35.203026, 49.877151>,  <33.502441, 35.016315, 50.022099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460842, 35.203026, 49.877151>,  <33.391510, 35.514206, 49.635574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460842, 35.203026, 49.877151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411149, -0.500074, -0.762157,
		0.894938, 0.380412, 0.233178,
		0.173327, -0.777954, 0.603941,
		33.512840, 34.969639, 50.058334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078754, 35.327663, 49.529091>,  <33.391510, 35.514206, 49.635574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078754, 35.327663, 49.529091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.892860, 35.000874, 49.665661>,  <33.781322, 34.804798, 49.747604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.892860, 35.000874, 49.665661>,  <34.078754, 35.327663, 49.529091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892860, 35.000874, 49.665661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380216, -0.532364, -0.756323,
		0.799660, -0.221675, 0.558036,
		-0.464736, -0.816975, 0.341426,
		33.753441, 34.755779, 49.768089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549145, 34.773521, 49.477238>,  <34.078754, 35.327663, 49.529091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549145, 34.773521, 49.477238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197697, 34.582619, 49.483685>,  <33.986828, 34.468079, 49.487553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197697, 34.582619, 49.483685>,  <34.549145, 34.773521, 49.477238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197697, 34.582619, 49.483685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234070, -0.459850, -0.856592,
		0.416224, -0.748844, 0.515743,
		-0.878618, -0.477254, 0.016119,
		33.934113, 34.439442, 49.488522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836548, 34.065018, 49.332375>,  <34.549145, 34.773521, 49.477238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836548, 34.065018, 49.332375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440125, 34.088600, 49.284504>,  <34.202271, 34.102749, 49.255783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440125, 34.088600, 49.284504>,  <34.836548, 34.065018, 49.332375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440125, 34.088600, 49.284504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082702, -0.432426, -0.897868,
		-0.104684, -0.899740, 0.423685,
		-0.991061, 0.058953, -0.119678,
		34.142807, 34.106285, 49.248600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612656, 33.426380, 48.987667>,  <34.836548, 34.065018, 49.332375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612656, 33.426380, 48.987667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299656, 33.665306, 48.917343>,  <34.111855, 33.808662, 48.875149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299656, 33.665306, 48.917343>,  <34.612656, 33.426380, 48.987667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299656, 33.665306, 48.917343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037993, -0.236026, -0.971004,
		-0.621493, -0.766488, 0.161996,
		-0.782498, 0.597317, -0.175809,
		34.064907, 33.844501, 48.864601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186302, 32.983429, 48.567032>,  <34.612656, 33.426380, 48.987667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186302, 32.983429, 48.567032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081867, 33.363335, 48.498005>,  <34.019207, 33.591278, 48.456589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081867, 33.363335, 48.498005>,  <34.186302, 32.983429, 48.567032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081867, 33.363335, 48.498005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102499, -0.205036, -0.973373,
		-0.959857, -0.236451, 0.150883,
		-0.261092, 0.949763, -0.172569,
		34.003540, 33.648262, 48.446236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509682, 32.891872, 48.216373>,  <34.186302, 32.983429, 48.567032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509682, 32.891872, 48.216373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681385, 33.241016, 48.123550>,  <33.784409, 33.450504, 48.067856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681385, 33.241016, 48.123550>,  <33.509682, 32.891872, 48.216373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681385, 33.241016, 48.123550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173765, -0.172316, -0.969594,
		-0.886307, 0.456533, 0.077703,
		0.429262, 0.872860, -0.232055,
		33.810165, 33.502876, 48.053932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092751, 33.016636, 47.650604>,  <33.509682, 32.891872, 48.216373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092751, 33.016636, 47.650604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372116, 33.302094, 47.628971>,  <33.539738, 33.473370, 47.615993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372116, 33.302094, 47.628971>,  <33.092751, 33.016636, 47.650604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372116, 33.302094, 47.628971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138938, 0.061069, -0.988416,
		-0.702076, 0.697840, 0.141804,
		0.698416, 0.713645, -0.054081,
		33.581642, 33.516186, 47.612747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842358, 33.614635, 47.342869>,  <33.092751, 33.016636, 47.650604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842358, 33.614635, 47.342869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.238823, 33.648312, 47.301880>,  <33.476704, 33.668518, 47.277287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.238823, 33.648312, 47.301880>,  <32.842358, 33.614635, 47.342869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238823, 33.648312, 47.301880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121515, 0.266949, -0.956019,
		-0.053134, 0.960026, 0.274821,
		0.991166, 0.084192, -0.102474,
		33.536171, 33.673569, 47.271137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013153, 34.383823, 47.032265>,  <32.842358, 33.614635, 47.342869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013153, 34.383823, 47.032265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232162, 34.057957, 46.955811>,  <33.363567, 33.862434, 46.909939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232162, 34.057957, 46.955811>,  <33.013153, 34.383823, 47.032265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232162, 34.057957, 46.955811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022662, 0.213898, -0.976593,
		0.836486, 0.539035, 0.098651,
		0.547519, -0.814671, -0.191138,
		33.396420, 33.813557, 46.898468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510891, 34.846394, 46.689926>,  <33.013153, 34.383823, 47.032265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510891, 34.846394, 46.689926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841072, 34.692646, 46.524570>,  <34.039181, 34.600399, 46.425358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841072, 34.692646, 46.524570>,  <33.510891, 34.846394, 46.689926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841072, 34.692646, 46.524570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391033, 0.138783, -0.909853,
		0.407089, 0.912689, -0.035741,
		0.825453, -0.384367, -0.413389,
		34.088707, 34.577335, 46.400555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624947, 35.254478, 46.151302>,  <33.510891, 34.846394, 46.689926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624947, 35.254478, 46.151302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840191, 34.924431, 46.082466>,  <33.969337, 34.726402, 46.041164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840191, 34.924431, 46.082466>,  <33.624947, 35.254478, 46.151302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840191, 34.924431, 46.082466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265780, 0.027646, -0.963637,
		0.799876, 0.564277, -0.204425,
		0.538107, -0.825122, -0.172087,
		34.001621, 34.676895, 46.030838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980042, 35.395634, 45.658829>,  <33.624947, 35.254478, 46.151302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980042, 35.395634, 45.658829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.947414, 34.997036, 45.651501>,  <33.927837, 34.757877, 45.647102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.947414, 34.997036, 45.651501>,  <33.980042, 35.395634, 45.658829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947414, 34.997036, 45.651501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397978, 0.049421, -0.916063,
		0.913761, -0.067433, -0.400616,
		-0.081572, -0.996499, -0.018322,
		33.922943, 34.698086, 45.646004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224453, 35.113426, 44.946838>,  <33.980042, 35.395634, 45.658829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224453, 35.113426, 44.946838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996773, 34.834068, 45.120392>,  <33.860165, 34.666454, 45.224522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996773, 34.834068, 45.120392>,  <34.224453, 35.113426, 44.946838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996773, 34.834068, 45.120392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516044, -0.107363, -0.849807,
		0.640086, -0.707611, -0.299294,
		-0.569200, -0.698399, 0.433880,
		33.826012, 34.624550, 45.250557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202007, 34.609749, 44.479160>,  <34.224453, 35.113426, 44.946838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202007, 34.609749, 44.479160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875443, 34.540226, 44.699440>,  <33.679504, 34.498512, 44.831608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875443, 34.540226, 44.699440>,  <34.202007, 34.609749, 44.479160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875443, 34.540226, 44.699440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555769, -0.022508, -0.831032,
		0.156834, -0.984523, -0.078220,
		-0.816409, -0.173806, 0.550697,
		33.630520, 34.488083, 44.864651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804825, 34.054329, 44.056053>,  <34.202007, 34.609749, 44.479160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804825, 34.054329, 44.056053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538105, 34.207287, 44.311913>,  <33.378075, 34.299061, 44.465427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538105, 34.207287, 44.311913>,  <33.804825, 34.054329, 44.056053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538105, 34.207287, 44.311913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631176, 0.166572, -0.757542,
		-0.396225, -0.908863, 0.130286,
		-0.666800, 0.382390, 0.639653,
		33.338066, 34.322002, 44.503807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214550, 33.610985, 43.952866>,  <33.804825, 34.054329, 44.056053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214550, 33.610985, 43.952866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130249, 33.982124, 44.075943>,  <33.079670, 34.204807, 44.149792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130249, 33.982124, 44.075943>,  <33.214550, 33.610985, 43.952866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130249, 33.982124, 44.075943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627620, 0.112892, -0.770291,
		-0.749452, -0.355455, 0.558546,
		-0.210748, 0.927851, 0.307698,
		33.067024, 34.260479, 44.168251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503227, 33.726402, 43.778530>,  <33.214550, 33.610985, 43.952866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503227, 33.726402, 43.778530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585823, 34.111004, 43.851059>,  <32.635380, 34.341763, 43.894577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585823, 34.111004, 43.851059>,  <32.503227, 33.726402, 43.778530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585823, 34.111004, 43.851059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691479, 0.274514, -0.668206,
		-0.692256, 0.012598, 0.721542,
		0.206491, 0.961501, 0.181322,
		32.647770, 34.399452, 43.905457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859375, 34.026386, 43.792046>,  <32.503227, 33.726402, 43.778530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859375, 34.026386, 43.792046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.125435, 34.315319, 43.716343>,  <32.285072, 34.488678, 43.670921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.125435, 34.315319, 43.716343>,  <31.859375, 34.026386, 43.792046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.125435, 34.315319, 43.716343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490692, 0.231778, -0.839941,
		-0.562848, 0.651552, 0.508608,
		0.665149, 0.722329, -0.189255,
		32.324978, 34.532017, 43.659565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.516266, 34.679852, 43.746334>,  <31.859375, 34.026386, 43.792046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.516266, 34.679852, 43.746334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861649, 34.707504, 43.546467>,  <32.068878, 34.724094, 43.426548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861649, 34.707504, 43.546467>,  <31.516266, 34.679852, 43.746334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861649, 34.707504, 43.546467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486835, 0.373522, -0.789603,
		0.132054, 0.925042, 0.356173,
		0.863455, 0.069127, -0.499668,
		32.120686, 34.728241, 43.396568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.502182, 35.311806, 43.423767>,  <31.516266, 34.679852, 43.746334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.502182, 35.311806, 43.423767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798841, 35.125744, 43.230442>,  <31.976837, 35.014107, 43.114449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798841, 35.125744, 43.230442>,  <31.502182, 35.311806, 43.423767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798841, 35.125744, 43.230442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493134, 0.110348, -0.862927,
		0.454729, 0.878323, -0.147545,
		0.741647, -0.465157, -0.483310,
		32.021336, 34.986198, 43.085449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764231, 35.780563, 42.910965>,  <31.502182, 35.311806, 43.423767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764231, 35.780563, 42.910965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868109, 35.425819, 42.758110>,  <31.930435, 35.212971, 42.666397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868109, 35.425819, 42.758110>,  <31.764231, 35.780563, 42.910965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868109, 35.425819, 42.758110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376896, 0.271251, -0.885648,
		0.889106, 0.374024, -0.263813,
		0.259694, -0.886865, -0.382139,
		31.946016, 35.159760, 42.643467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531248, 35.912041, 42.314800>,  <31.764231, 35.780563, 42.910965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531248, 35.912041, 42.314800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659697, 35.534977, 42.278408>,  <31.736765, 35.308739, 42.256573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659697, 35.534977, 42.278408>,  <31.531248, 35.912041, 42.314800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659697, 35.534977, 42.278408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292883, -0.007495, -0.956119,
		0.900612, 0.333675, -0.278496,
		0.321120, -0.942659, -0.090978,
		31.756033, 35.252178, 42.251114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.066315, 35.775665, 41.742458>,  <31.531248, 35.912041, 42.314800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.066315, 35.775665, 41.742458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883511, 35.422756, 41.787601>,  <31.773827, 35.211010, 41.814686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883511, 35.422756, 41.787601>,  <32.066315, 35.775665, 41.742458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.883511, 35.422756, 41.787601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311686, 0.040018, -0.949342,
		0.833061, -0.469038, -0.293280,
		-0.457014, -0.882271, 0.112855,
		31.746407, 35.158073, 41.821457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133022, 35.456932, 41.070229>,  <32.066315, 35.775665, 41.742458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133022, 35.456932, 41.070229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.839394, 35.253922, 41.250694>,  <31.663216, 35.132114, 41.358974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.839394, 35.253922, 41.250694>,  <32.133022, 35.456932, 41.070229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.839394, 35.253922, 41.250694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405848, -0.204784, -0.890702,
		0.544447, -0.836947, -0.055652,
		-0.734074, -0.507526, 0.451168,
		31.619171, 35.101665, 41.386044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163055, 34.916420, 40.719933>,  <32.133022, 35.456932, 41.070229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163055, 34.916420, 40.719933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.797421, 34.920029, 40.882103>,  <31.578041, 34.922192, 40.979404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.797421, 34.920029, 40.882103>,  <32.163055, 34.916420, 40.719933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.797421, 34.920029, 40.882103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404730, -0.082890, -0.910672,
		0.025398, -0.996518, 0.079417,
		-0.914084, 0.009013, 0.405426,
		31.523195, 34.922733, 41.003731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765039, 34.364925, 40.466225>,  <32.163055, 34.916420, 40.719933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765039, 34.364925, 40.466225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.476519, 34.613167, 40.589237>,  <31.303406, 34.762112, 40.663044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.476519, 34.613167, 40.589237>,  <31.765039, 34.364925, 40.466225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.476519, 34.613167, 40.589237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351846, 0.054133, -0.934491,
		-0.596595, -0.782255, 0.179310,
		-0.721304, 0.620602, 0.307529,
		31.260128, 34.799347, 40.681496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.120716, 34.166836, 40.121113>,  <31.765039, 34.364925, 40.466225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.120716, 34.166836, 40.121113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.073687, 34.544888, 40.243031>,  <31.045469, 34.771721, 40.316181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.073687, 34.544888, 40.243031>,  <31.120716, 34.166836, 40.121113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.073687, 34.544888, 40.243031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418716, 0.231129, -0.878212,
		-0.900474, -0.230876, 0.368568,
		-0.117571, 0.945133, 0.304797,
		31.038416, 34.828426, 40.334469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.438292, 34.463417, 39.766567>,  <31.120716, 34.166836, 40.121113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.438292, 34.463417, 39.766567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.659731, 34.777714, 39.876942>,  <30.792595, 34.966290, 39.943169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.659731, 34.777714, 39.876942>,  <30.438292, 34.463417, 39.766567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.659731, 34.777714, 39.876942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237546, 0.466570, -0.851988,
		-0.798186, 0.406110, 0.444942,
		0.553598, 0.785740, 0.275940,
		30.825809, 35.013435, 39.959724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.973272, 35.135265, 39.641300>,  <30.438292, 34.463417, 39.766567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.973272, 35.135265, 39.641300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.366741, 35.207256, 39.641766>,  <30.602821, 35.250450, 39.642044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.366741, 35.207256, 39.641766>,  <29.973272, 35.135265, 39.641300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.366741, 35.207256, 39.641766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099597, 0.549724, -0.829388,
		-0.149908, 0.815729, 0.558672,
		0.983671, 0.179974, 0.001164,
		30.661842, 35.261250, 39.642117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.843538, 35.779922, 39.499172>,  <29.973272, 35.135265, 39.641300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.843538, 35.779922, 39.499172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.230034, 35.707115, 39.426228>,  <30.461931, 35.663433, 39.382462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.230034, 35.707115, 39.426228>,  <29.843538, 35.779922, 39.499172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.230034, 35.707115, 39.426228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006471, 0.724699, -0.689036,
		0.257573, 0.664592, 0.701408,
		0.966237, -0.182016, -0.182363,
		30.519905, 35.652512, 39.371517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.218863, 36.369339, 39.508560>,  <29.843538, 35.779922, 39.499172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.218863, 36.369339, 39.508560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.438183, 36.114594, 39.291759>,  <30.569775, 35.961746, 39.161678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.438183, 36.114594, 39.291759>,  <30.218863, 36.369339, 39.508560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438183, 36.114594, 39.291759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343589, 0.762437, -0.548303,
		0.762437, 0.114411, 0.636867,
		0.548303, -0.636867, -0.542000,
		30.602674, 35.923534, 39.129158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637840, 36.792778, 39.198269>,  <30.218863, 36.369339, 39.508560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637840, 36.792778, 39.198269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.709900, 36.464733, 38.981026>,  <30.753136, 36.267906, 38.850681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.709900, 36.464733, 38.981026>,  <30.637840, 36.792778, 39.198269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.709900, 36.464733, 38.981026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367371, 0.568281, -0.736271,
		0.912461, -0.066883, 0.403660,
		0.180149, -0.820112, -0.543105,
		30.763945, 36.218700, 38.818092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.281471, 36.828407, 38.914822>,  <30.637840, 36.792778, 39.198269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.281471, 36.828407, 38.914822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119045, 36.559341, 38.667393>,  <31.021589, 36.397903, 38.518936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119045, 36.559341, 38.667393>,  <31.281471, 36.828407, 38.914822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119045, 36.559341, 38.667393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369666, 0.498130, -0.784355,
		0.835739, -0.547164, 0.046389,
		-0.406063, -0.672665, -0.618575,
		30.997227, 36.357540, 38.481819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819540, 36.642342, 38.495506>,  <31.281471, 36.828407, 38.914822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819540, 36.642342, 38.495506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470516, 36.565266, 38.315945>,  <31.261103, 36.519020, 38.208210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470516, 36.565266, 38.315945>,  <31.819540, 36.642342, 38.495506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.470516, 36.565266, 38.315945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313475, 0.483915, -0.817043,
		0.374665, -0.853637, -0.361842,
		-0.872560, -0.192689, -0.448900,
		31.208748, 36.507458, 38.181274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010056, 36.300716, 37.814053>,  <31.819540, 36.642342, 38.495506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010056, 36.300716, 37.814053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.636753, 36.438850, 37.774517>,  <31.412771, 36.521732, 37.750797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.636753, 36.438850, 37.774517>,  <32.010056, 36.300716, 37.814053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.636753, 36.438850, 37.774517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195265, 0.256790, -0.946536,
		-0.301493, -0.902664, -0.307083,
		-0.933260, 0.345336, -0.098838,
		31.356775, 36.542450, 37.744865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034576, 35.598808, 37.549385>,  <32.010056, 36.300716, 37.814053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034576, 35.598808, 37.549385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270702, 35.467972, 37.254215>,  <32.412380, 35.389469, 37.077114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270702, 35.467972, 37.254215>,  <32.034576, 35.598808, 37.549385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270702, 35.467972, 37.254215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729559, -0.174936, 0.661166,
		-0.345353, -0.928659, 0.135365,
		0.590318, -0.327093, -0.737926,
		32.447800, 35.369843, 37.032837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255219, 34.938927, 37.730793>,  <32.034576, 35.598808, 37.549385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255219, 34.938927, 37.730793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513855, 35.135288, 37.497234>,  <32.669037, 35.253105, 37.357101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513855, 35.135288, 37.497234>,  <32.255219, 34.938927, 37.730793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513855, 35.135288, 37.497234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753788, -0.293607, 0.587876,
		0.117158, -0.820246, -0.559884,
		0.646589, 0.490908, -0.583893,
		32.707832, 35.282562, 37.322067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824238, 34.519520, 37.781914>,  <32.255219, 34.938927, 37.730793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824238, 34.519520, 37.781914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959335, 34.875000, 37.657894>,  <33.040394, 35.088287, 37.583481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959335, 34.875000, 37.657894>,  <32.824238, 34.519520, 37.781914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959335, 34.875000, 37.657894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803686, -0.100836, 0.586448,
		0.489914, -0.447256, -0.748296,
		0.337747, 0.888704, -0.310053,
		33.060661, 35.141609, 37.564877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561516, 34.433807, 37.598312>,  <32.824238, 34.519520, 37.781914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561516, 34.433807, 37.598312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512333, 34.827145, 37.651867>,  <33.482822, 35.063145, 37.683998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512333, 34.827145, 37.651867>,  <33.561516, 34.433807, 37.598312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512333, 34.827145, 37.651867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902845, 0.054826, 0.426457,
		0.412011, 0.173315, -0.894544,
		-0.122956, 0.983339, 0.133888,
		33.475445, 35.122147, 37.692032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183426, 34.639076, 37.454994>,  <33.561516, 34.433807, 37.598312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183426, 34.639076, 37.454994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020691, 34.931030, 37.674721>,  <33.923050, 35.106201, 37.806557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020691, 34.931030, 37.674721>,  <34.183426, 34.639076, 37.454994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020691, 34.931030, 37.674721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810026, 0.010259, 0.586304,
		0.422300, 0.683492, -0.595401,
		-0.406842, 0.729886, 0.549314,
		33.898640, 35.149998, 37.839516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758766, 35.057144, 37.696037>,  <34.183426, 34.639076, 37.454994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758766, 35.057144, 37.696037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442039, 35.133995, 37.927940>,  <34.252003, 35.180103, 38.067081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442039, 35.133995, 37.927940>,  <34.758766, 35.057144, 37.696037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442039, 35.133995, 37.927940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599316, 0.061509, 0.798146,
		0.117683, 0.979441, -0.163846,
		-0.791815, 0.192124, 0.579756,
		34.204494, 35.191631, 38.101868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989723, 35.463356, 38.250496>,  <34.758766, 35.057144, 37.696037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989723, 35.463356, 38.250496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641994, 35.309975, 38.375225>,  <34.433357, 35.217945, 38.450062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641994, 35.309975, 38.375225>,  <34.989723, 35.463356, 38.250496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641994, 35.309975, 38.375225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425556, -0.259873, 0.866815,
		-0.251352, 0.886243, 0.389097,
		-0.869324, -0.383458, 0.311826,
		34.381199, 35.194939, 38.468773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911674, 35.735016, 38.872585>,  <34.989723, 35.463356, 38.250496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911674, 35.735016, 38.872585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648598, 35.435299, 38.903572>,  <34.490753, 35.255466, 38.922165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648598, 35.435299, 38.903572>,  <34.911674, 35.735016, 38.872585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648598, 35.435299, 38.903572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366909, -0.228830, 0.901673,
		-0.657892, 0.621445, 0.425422,
		-0.657690, -0.749295, 0.077468,
		34.451290, 35.210510, 38.926811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558777, 35.785946, 39.421299>,  <34.911674, 35.735016, 38.872585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558777, 35.785946, 39.421299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510361, 35.394653, 39.353878>,  <34.481312, 35.159878, 39.313427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510361, 35.394653, 39.353878>,  <34.558777, 35.785946, 39.421299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510361, 35.394653, 39.353878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232894, -0.193044, 0.953150,
		-0.964940, 0.076118, 0.251191,
		-0.121042, -0.978233, -0.168548,
		34.474049, 35.101185, 39.303314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109200, 35.524872, 39.971943>,  <34.558777, 35.785946, 39.421299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109200, 35.524872, 39.971943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320202, 35.210506, 39.842892>,  <34.446804, 35.021889, 39.765461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320202, 35.210506, 39.842892>,  <34.109200, 35.524872, 39.971943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320202, 35.210506, 39.842892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074377, -0.335577, 0.939072,
		-0.846291, -0.519360, -0.118565,
		0.527504, -0.785909, -0.322623,
		34.478455, 34.974735, 39.746105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881332, 35.004269, 40.394871>,  <34.109200, 35.524872, 39.971943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881332, 35.004269, 40.394871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212719, 34.831593, 40.252163>,  <34.411552, 34.727985, 40.166538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212719, 34.831593, 40.252163>,  <33.881332, 35.004269, 40.394871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212719, 34.831593, 40.252163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130707, -0.470407, 0.872716,
		-0.544571, -0.769648, -0.333292,
		0.828467, -0.431692, -0.356769,
		34.461258, 34.702084, 40.145134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875488, 34.336010, 40.652653>,  <33.881332, 35.004269, 40.394871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875488, 34.336010, 40.652653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268913, 34.340611, 40.580563>,  <34.504967, 34.343372, 40.537308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268913, 34.340611, 40.580563>,  <33.875488, 34.336010, 40.652653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268913, 34.340611, 40.580563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172272, -0.359159, 0.917239,
		-0.054176, -0.933205, -0.355236,
		0.983559, 0.011505, -0.180223,
		34.563980, 34.344063, 40.526497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207748, 33.632656, 40.892784>,  <33.875488, 34.336010, 40.652653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207748, 33.632656, 40.892784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513290, 33.889801, 40.869968>,  <34.696617, 34.044086, 40.856277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513290, 33.889801, 40.869968>,  <34.207748, 33.632656, 40.892784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513290, 33.889801, 40.869968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400055, -0.402283, 0.823483,
		0.506440, -0.651841, -0.564466,
		0.763855, 0.642862, -0.057040,
		34.742447, 34.082661, 40.852856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850044, 33.172848, 40.936211>,  <34.207748, 33.632656, 40.892784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850044, 33.172848, 40.936211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.938358, 33.551594, 41.029766>,  <34.991348, 33.778839, 41.085899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.938358, 33.551594, 41.029766>,  <34.850044, 33.172848, 40.936211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938358, 33.551594, 41.029766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387061, -0.305179, 0.870086,
		0.895229, -0.101575, -0.433874,
		0.220789, 0.946862, 0.233890,
		35.004597, 33.835651, 41.099934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455605, 33.173672, 41.141327>,  <34.850044, 33.172848, 40.936211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455605, 33.173672, 41.141327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335915, 33.523567, 41.293800>,  <35.264099, 33.733505, 41.385284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335915, 33.523567, 41.293800>,  <35.455605, 33.173672, 41.141327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335915, 33.523567, 41.293800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375137, -0.259473, 0.889914,
		0.877345, 0.409284, -0.250504,
		-0.299228, 0.874735, 0.381185,
		35.246147, 33.785988, 41.408157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060268, 33.457584, 41.473763>,  <35.455605, 33.173672, 41.141327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060268, 33.457584, 41.473763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.740002, 33.638039, 41.631447>,  <35.547840, 33.746311, 41.726055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.740002, 33.638039, 41.631447>,  <36.060268, 33.457584, 41.473763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740002, 33.638039, 41.631447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337150, -0.204617, 0.918946,
		0.495232, 0.868681, 0.011730,
		-0.800671, 0.451137, 0.394209,
		35.499802, 33.773380, 41.749710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268188, 33.862270, 42.047951>,  <36.060268, 33.457584, 41.473763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268188, 33.862270, 42.047951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874134, 33.833488, 42.110332>,  <35.637699, 33.816219, 42.147762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874134, 33.833488, 42.110332>,  <36.268188, 33.862270, 42.047951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874134, 33.833488, 42.110332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156403, -0.000572, 0.987693,
		-0.070980, 0.997408, 0.011817,
		-0.985140, -0.071955, 0.155957,
		35.578590, 33.811901, 42.157120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194420, 34.433849, 42.433426>,  <36.268188, 33.862270, 42.047951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194420, 34.433849, 42.433426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876797, 34.202473, 42.508133>,  <35.686222, 34.063648, 42.552956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876797, 34.202473, 42.508133>,  <36.194420, 34.433849, 42.433426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876797, 34.202473, 42.508133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064386, 0.225484, 0.972117,
		-0.604426, 0.783939, -0.141804,
		-0.794055, -0.578443, 0.186763,
		35.638580, 34.028938, 42.564163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743984, 34.881981, 42.894306>,  <36.194420, 34.433849, 42.433426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743984, 34.881981, 42.894306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.680969, 34.492653, 42.961029>,  <35.643158, 34.259056, 43.001064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.680969, 34.492653, 42.961029>,  <35.743984, 34.881981, 42.894306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680969, 34.492653, 42.961029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174724, 0.138781, 0.974788,
		-0.971932, 0.182714, 0.148199,
		-0.157541, -0.973322, 0.166810,
		35.633709, 34.200657, 43.011070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428211, 34.844997, 43.503479>,  <35.743984, 34.881981, 42.894306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428211, 34.844997, 43.503479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541996, 34.462631, 43.474350>,  <35.610268, 34.233212, 43.456875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541996, 34.462631, 43.474350>,  <35.428211, 34.844997, 43.503479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541996, 34.462631, 43.474350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152265, -0.029944, 0.987886,
		-0.946518, -0.292106, 0.137034,
		0.284464, -0.955917, -0.072820,
		35.627335, 34.175858, 43.452503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054787, 34.521103, 43.960655>,  <35.428211, 34.844997, 43.503479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054787, 34.521103, 43.960655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363029, 34.275112, 43.893757>,  <35.547974, 34.127518, 43.853619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363029, 34.275112, 43.893757>,  <35.054787, 34.521103, 43.960655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363029, 34.275112, 43.893757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097652, -0.145382, 0.984545,
		-0.629784, -0.775029, -0.051979,
		0.770608, -0.614975, -0.167242,
		35.594212, 34.090618, 43.843586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972000, 33.983551, 44.412624>,  <35.054787, 34.521103, 43.960655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972000, 33.983551, 44.412624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357845, 33.931183, 44.321079>,  <35.589352, 33.899761, 44.266151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357845, 33.931183, 44.321079>,  <34.972000, 33.983551, 44.412624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357845, 33.931183, 44.321079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213315, -0.122635, 0.969256,
		-0.154965, -0.983778, -0.090368,
		0.964615, -0.130924, -0.228859,
		35.647228, 33.891907, 44.252422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228420, 33.234344, 44.516102>,  <34.972000, 33.983551, 44.412624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228420, 33.234344, 44.516102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537560, 33.486378, 44.546310>,  <35.723042, 33.637600, 44.564434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537560, 33.486378, 44.546310>,  <35.228420, 33.234344, 44.516102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537560, 33.486378, 44.546310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128160, -0.271523, 0.953861,
		0.621518, -0.727508, -0.290597,
		0.772845, 0.630085, 0.075519,
		35.769413, 33.675404, 44.568966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768925, 32.821434, 44.904049>,  <35.228420, 33.234344, 44.516102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768925, 32.821434, 44.904049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882969, 33.203571, 44.935120>,  <35.951397, 33.432854, 44.953762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882969, 33.203571, 44.935120>,  <35.768925, 32.821434, 44.904049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882969, 33.203571, 44.935120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335862, -0.175477, 0.925421,
		0.897724, -0.237760, -0.370894,
		0.285111, 0.955342, 0.077675,
		35.968502, 33.490173, 44.958424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423824, 32.774799, 45.207329>,  <35.768925, 32.821434, 44.904049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423824, 32.774799, 45.207329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313126, 33.154900, 45.264500>,  <36.246708, 33.382961, 45.298801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313126, 33.154900, 45.264500>,  <36.423824, 32.774799, 45.207329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313126, 33.154900, 45.264500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333616, -0.044474, 0.941659,
		0.901173, 0.308283, -0.304712,
		-0.276746, 0.950255, 0.142927,
		36.230103, 33.439976, 45.307377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042461, 33.146572, 45.486076>,  <36.423824, 32.774799, 45.207329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042461, 33.146572, 45.486076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701351, 33.327110, 45.591198>,  <36.496685, 33.435432, 45.654270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701351, 33.327110, 45.591198>,  <37.042461, 33.146572, 45.486076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701351, 33.327110, 45.591198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345809, 0.110858, 0.931733,
		0.391402, 0.885435, -0.250616,
		-0.852772, 0.451348, 0.262801,
		36.445518, 33.462513, 45.670040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299004, 33.678276, 45.892029>,  <37.042461, 33.146572, 45.486076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299004, 33.678276, 45.892029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917850, 33.692738, 46.012505>,  <36.689159, 33.701412, 46.084789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917850, 33.692738, 46.012505>,  <37.299004, 33.678276, 45.892029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917850, 33.692738, 46.012505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303285, 0.134654, 0.943338,
		-0.006455, 0.990233, -0.139273,
		-0.952878, 0.036150, 0.301192,
		36.631989, 33.703583, 46.102863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251495, 34.144997, 46.463974>,  <37.299004, 33.678276, 45.892029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251495, 34.144997, 46.463974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898335, 33.961887, 46.505798>,  <36.686440, 33.852020, 46.530891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898335, 33.961887, 46.505798>,  <37.251495, 34.144997, 46.463974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898335, 33.961887, 46.505798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086592, 0.060133, 0.994427,
		-0.461509, 0.887034, -0.013452,
		-0.882899, -0.457772, 0.104562,
		36.633465, 33.824554, 46.537167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907394, 34.519062, 46.936001>,  <37.251495, 34.144997, 46.463974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907394, 34.519062, 46.936001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784988, 34.138264, 46.938877>,  <36.711544, 33.909782, 46.940605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784988, 34.138264, 46.938877>,  <36.907394, 34.519062, 46.936001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784988, 34.138264, 46.938877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168590, -0.046754, 0.984577,
		-0.936979, 0.302511, 0.174805,
		-0.306019, -0.951998, 0.007193,
		36.693184, 33.852665, 46.941036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313599, 34.593037, 47.283279>,  <36.907394, 34.519062, 46.936001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313599, 34.593037, 47.283279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421040, 34.209156, 47.316315>,  <36.485504, 33.978828, 47.336136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421040, 34.209156, 47.316315>,  <36.313599, 34.593037, 47.283279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421040, 34.209156, 47.316315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130281, 0.048762, 0.990277,
		-0.954401, -0.276747, -0.111934,
		0.268598, -0.959705, 0.082593,
		36.501617, 33.921246, 47.341091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967503, 34.367760, 47.909367>,  <36.313599, 34.593037, 47.283279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967503, 34.367760, 47.909367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229736, 34.070652, 47.854965>,  <36.387077, 33.892387, 47.822323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229736, 34.070652, 47.854965>,  <35.967503, 34.367760, 47.909367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229736, 34.070652, 47.854965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005459, -0.184768, 0.982767,
		-0.755103, -0.643543, -0.125185,
		0.655583, -0.742774, -0.136005,
		36.426411, 33.847820, 47.814163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659225, 33.787827, 48.268494>,  <35.967503, 34.367760, 47.909367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659225, 33.787827, 48.268494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054390, 33.743992, 48.224636>,  <36.291489, 33.717693, 48.198322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054390, 33.743992, 48.224636>,  <35.659225, 33.787827, 48.268494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054390, 33.743992, 48.224636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102606, -0.067929, 0.992400,
		-0.116201, -0.991654, -0.055863,
		0.987912, -0.109586, -0.109643,
		36.350765, 33.711117, 48.191742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702644, 33.305550, 48.758118>,  <35.659225, 33.787827, 48.268494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702644, 33.305550, 48.758118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071102, 33.447178, 48.693462>,  <36.292175, 33.532154, 48.654671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071102, 33.447178, 48.693462>,  <35.702644, 33.305550, 48.758118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071102, 33.447178, 48.693462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255306, -0.236201, 0.937565,
		0.293784, -0.904900, -0.307971,
		0.921146, 0.354069, -0.161634,
		36.347446, 33.553398, 48.644974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239063, 32.901733, 49.215763>,  <35.702644, 33.305550, 48.758118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239063, 32.901733, 49.215763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443527, 33.236946, 49.139431>,  <36.566208, 33.438072, 49.093632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443527, 33.236946, 49.139431>,  <36.239063, 32.901733, 49.215763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443527, 33.236946, 49.139431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485655, -0.098443, 0.868590,
		0.709120, -0.536668, -0.457314,
		0.511164, 0.838032, -0.190827,
		36.596878, 33.488354, 49.082184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966373, 32.811146, 49.334366>,  <36.239063, 32.901733, 49.215763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966373, 32.811146, 49.334366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883209, 33.200340, 49.374485>,  <36.833309, 33.433857, 49.398556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883209, 33.200340, 49.374485>,  <36.966373, 32.811146, 49.334366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883209, 33.200340, 49.374485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480861, 0.012378, 0.876709,
		0.851789, 0.230511, -0.470447,
		-0.207915, 0.972991, 0.100300,
		36.820835, 33.492237, 49.404575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501244, 32.977665, 49.655266>,  <36.966373, 32.811146, 49.334366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501244, 32.977665, 49.655266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.243633, 33.276630, 49.720512>,  <37.089069, 33.456009, 49.759659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.243633, 33.276630, 49.720512>,  <37.501244, 32.977665, 49.655266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243633, 33.276630, 49.720512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355843, 0.103930, 0.928749,
		0.677208, 0.656178, -0.332896,
		-0.644022, 0.747415, 0.163114,
		37.050426, 33.500854, 49.769447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866341, 33.594624, 49.912376>,  <37.501244, 32.977665, 49.655266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866341, 33.594624, 49.912376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494194, 33.641304, 50.051399>,  <37.270905, 33.669312, 50.134811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494194, 33.641304, 50.051399>,  <37.866341, 33.594624, 49.912376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494194, 33.641304, 50.051399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362428, 0.149722, 0.919907,
		0.055316, 0.981817, -0.181592,
		-0.930369, 0.116700, 0.347556,
		37.215084, 33.676315, 50.155666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003067, 34.027737, 50.417313>,  <37.866341, 33.594624, 49.912376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003067, 34.027737, 50.417313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634117, 33.918682, 50.526775>,  <37.412746, 33.853249, 50.592453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634117, 33.918682, 50.526775>,  <38.003067, 34.027737, 50.417313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634117, 33.918682, 50.526775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232444, 0.174072, 0.956906,
		-0.308527, 0.946238, -0.097187,
		-0.922378, -0.272641, 0.273654,
		37.357403, 33.836891, 50.608871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248848, 34.707050, 50.527004>,  <38.003067, 34.027737, 50.417313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248848, 34.707050, 50.527004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496693, 35.021011, 50.527267>,  <38.645401, 35.209389, 50.527428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496693, 35.021011, 50.527267>,  <38.248848, 34.707050, 50.527004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496693, 35.021011, 50.527267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010011, -0.007060, -0.999925,
		-0.784842, 0.619576, -0.012232,
		0.619615, 0.784905, 0.000662,
		38.682579, 35.256481, 50.527466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871498, 35.223133, 50.178646>,  <38.248848, 34.707050, 50.527004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871498, 35.223133, 50.178646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257236, 35.328869, 50.173447>,  <38.488678, 35.392311, 50.170326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257236, 35.328869, 50.173447>,  <37.871498, 35.223133, 50.178646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257236, 35.328869, 50.173447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077592, 0.235443, -0.968786,
		-0.253024, 0.935251, 0.247558,
		0.964343, 0.264335, -0.012995,
		38.546539, 35.408169, 50.169548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811798, 35.895145, 49.818012>,  <37.871498, 35.223133, 50.178646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811798, 35.895145, 49.818012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187771, 35.760002, 49.798515>,  <38.413353, 35.678917, 49.786819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187771, 35.760002, 49.798515>,  <37.811798, 35.895145, 49.818012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187771, 35.760002, 49.798515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012599, 0.177019, -0.984127,
		0.341127, 0.924399, 0.170643,
		0.939933, -0.337862, -0.048739,
		38.469749, 35.658642, 49.783894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075905, 36.492111, 49.504997>,  <37.811798, 35.895145, 49.818012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075905, 36.492111, 49.504997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342964, 36.195862, 49.474762>,  <38.503201, 36.018112, 49.456619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342964, 36.195862, 49.474762>,  <38.075905, 36.492111, 49.504997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342964, 36.195862, 49.474762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067059, 0.160946, -0.984682,
		0.741446, 0.652357, 0.157122,
		0.667653, -0.740626, -0.075587,
		38.543259, 35.973675, 49.452087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631207, 36.798740, 49.069885>,  <38.075905, 36.492111, 49.504997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631207, 36.798740, 49.069885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.612209, 36.399517, 49.086010>,  <38.600811, 36.159985, 49.095684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.612209, 36.399517, 49.086010>,  <38.631207, 36.798740, 49.069885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612209, 36.399517, 49.086010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061626, -0.037350, -0.997400,
		0.996969, -0.049856, -0.059733,
		-0.047495, -0.998058, 0.040309,
		38.597961, 36.100101, 49.098103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165585, 36.613712, 48.667900>,  <38.631207, 36.798740, 49.069885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165585, 36.613712, 48.667900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897911, 36.316483, 48.670048>,  <38.737309, 36.138145, 48.671337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897911, 36.316483, 48.670048>,  <39.165585, 36.613712, 48.667900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897911, 36.316483, 48.670048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096124, 0.079398, -0.992198,
		0.736853, -0.664479, -0.124559,
		-0.669185, -0.743077, 0.005368,
		38.697155, 36.093559, 48.671658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361485, 36.112301, 48.147266>,  <39.165585, 36.613712, 48.667900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361485, 36.112301, 48.147266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988945, 35.979206, 48.206432>,  <38.765423, 35.899349, 48.241932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988945, 35.979206, 48.206432>,  <39.361485, 36.112301, 48.147266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988945, 35.979206, 48.206432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168688, 0.034263, -0.985074,
		0.322705, -0.942396, -0.088039,
		-0.931346, -0.332739, 0.147914,
		38.709541, 35.879383, 48.250805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230824, 35.466610, 47.737911>,  <39.361485, 36.112301, 48.147266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230824, 35.466610, 47.737911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875660, 35.643345, 47.789131>,  <38.662563, 35.749386, 47.819862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875660, 35.643345, 47.789131>,  <39.230824, 35.466610, 47.737911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875660, 35.643345, 47.789131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236732, -0.200206, -0.950724,
		-0.394433, -0.874468, 0.282362,
		-0.887908, 0.441841, 0.128046,
		38.609287, 35.775898, 47.827545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834625, 35.028084, 47.469242>,  <39.230824, 35.466610, 47.737911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834625, 35.028084, 47.469242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622017, 35.366184, 47.447220>,  <38.494450, 35.569046, 47.434006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622017, 35.366184, 47.447220>,  <38.834625, 35.028084, 47.469242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622017, 35.366184, 47.447220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371059, -0.290778, -0.881909,
		-0.761445, -0.448325, 0.468193,
		-0.531523, 0.845253, -0.055057,
		38.462559, 35.619759, 47.430702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194183, 34.833057, 47.163677>,  <38.834625, 35.028084, 47.469242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194183, 34.833057, 47.163677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190708, 35.230652, 47.120010>,  <38.188622, 35.469208, 47.093811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190708, 35.230652, 47.120010>,  <38.194183, 34.833057, 47.163677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190708, 35.230652, 47.120010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244656, -0.107968, -0.963580,
		-0.969571, 0.018335, 0.244122,
		-0.008690, 0.993985, -0.109169,
		38.188103, 35.528847, 47.087261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558208, 34.917156, 46.785553>,  <38.194183, 34.833057, 47.163677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558208, 34.917156, 46.785553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744114, 35.268173, 46.738380>,  <37.855656, 35.478783, 46.710079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744114, 35.268173, 46.738380>,  <37.558208, 34.917156, 46.785553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744114, 35.268173, 46.738380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396888, 0.087411, -0.913695,
		-0.791502, 0.471457, 0.388913,
		0.464763, 0.877546, -0.117930,
		37.883541, 35.531437, 46.703003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007294, 35.396873, 46.525795>,  <37.558208, 34.917156, 46.785553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007294, 35.396873, 46.525795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355625, 35.568890, 46.430527>,  <37.564625, 35.672100, 46.373367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355625, 35.568890, 46.430527>,  <37.007294, 35.396873, 46.525795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355625, 35.568890, 46.430527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320105, 0.128364, -0.938646,
		-0.373088, 0.893635, 0.249442,
		0.870826, 0.430045, -0.238166,
		37.616875, 35.697903, 46.359077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936653, 36.121738, 46.076462>,  <37.007294, 35.396873, 46.525795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936653, 36.121738, 46.076462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300110, 35.982006, 45.984955>,  <37.518185, 35.898167, 45.930050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300110, 35.982006, 45.984955>,  <36.936653, 36.121738, 46.076462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300110, 35.982006, 45.984955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157886, 0.219759, -0.962693,
		0.386568, 0.910866, 0.144530,
		0.908646, -0.349327, -0.228765,
		37.572704, 35.877209, 45.916325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255142, 36.691494, 45.640659>,  <36.936653, 36.121738, 46.076462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255142, 36.691494, 45.640659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411591, 36.325684, 45.599346>,  <37.505459, 36.106197, 45.574558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411591, 36.325684, 45.599346>,  <37.255142, 36.691494, 45.640659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411591, 36.325684, 45.599346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067769, 0.083299, -0.994218,
		0.917840, 0.395862, -0.029396,
		0.391124, -0.914524, -0.103282,
		37.528927, 36.051327, 45.568363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802616, 36.808968, 45.100819>,  <37.255142, 36.691494, 45.640659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802616, 36.808968, 45.100819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748085, 36.412994, 45.116085>,  <37.715366, 36.175411, 45.125244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748085, 36.412994, 45.116085>,  <37.802616, 36.808968, 45.100819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748085, 36.412994, 45.116085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096341, -0.051587, -0.994011,
		0.985968, -0.131836, 0.102404,
		-0.136330, -0.989928, 0.038162,
		37.707188, 36.116016, 45.127533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992397, 36.712936, 44.496368>,  <37.802616, 36.808968, 45.100819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992397, 36.712936, 44.496368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850014, 36.348961, 44.581512>,  <37.764584, 36.130577, 44.632599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850014, 36.348961, 44.581512>,  <37.992397, 36.712936, 44.496368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850014, 36.348961, 44.581512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099467, -0.189594, -0.976811,
		0.929194, -0.368874, -0.023021,
		-0.355956, -0.909938, 0.212860,
		37.743229, 36.075981, 44.645370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330978, 36.211430, 44.011940>,  <37.992397, 36.712936, 44.496368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330978, 36.211430, 44.011940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004147, 36.023449, 44.145527>,  <37.808048, 35.910660, 44.225681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004147, 36.023449, 44.145527>,  <38.330978, 36.211430, 44.011940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004147, 36.023449, 44.145527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136905, -0.404548, -0.904211,
		0.560041, -0.784530, 0.266208,
		-0.817075, -0.469950, 0.333969,
		37.759026, 35.882465, 44.245716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356174, 35.464870, 43.704128>,  <38.330978, 36.211430, 44.011940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356174, 35.464870, 43.704128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987095, 35.570339, 43.816631>,  <37.765648, 35.633621, 43.884132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987095, 35.570339, 43.816631>,  <38.356174, 35.464870, 43.704128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987095, 35.570339, 43.816631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348854, -0.260505, -0.900243,
		-0.164101, -0.928770, 0.332351,
		-0.922698, 0.263673, 0.281257,
		37.710285, 35.649441, 43.901009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950790, 35.103321, 43.273712>,  <38.356174, 35.464870, 43.704128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950790, 35.103321, 43.273712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700073, 35.383125, 43.411007>,  <37.549641, 35.551006, 43.493382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700073, 35.383125, 43.411007>,  <37.950790, 35.103321, 43.273712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700073, 35.383125, 43.411007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520780, -0.048435, -0.852316,
		-0.579580, -0.712978, 0.394651,
		-0.626798, 0.699511, 0.343233,
		37.512035, 35.592979, 43.513977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258549, 34.827011, 43.007759>,  <37.950790, 35.103321, 43.273712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258549, 34.827011, 43.007759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229691, 35.215534, 43.098404>,  <37.212376, 35.448647, 43.152790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229691, 35.215534, 43.098404>,  <37.258549, 34.827011, 43.007759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229691, 35.215534, 43.098404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412018, 0.177893, -0.893642,
		-0.908316, -0.157838, 0.387363,
		-0.072141, 0.971309, 0.226615,
		37.208050, 35.506927, 43.166389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533409, 35.025070, 42.869858>,  <37.258549, 34.827011, 43.007759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533409, 35.025070, 42.869858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759998, 35.353554, 42.842346>,  <36.895950, 35.550644, 42.825840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759998, 35.353554, 42.842346>,  <36.533409, 35.025070, 42.869858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759998, 35.353554, 42.842346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361741, 0.172798, -0.916124,
		-0.740443, 0.543838, 0.394949,
		0.566469, 0.821207, -0.068781,
		36.929939, 35.599915, 42.821712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083572, 35.431263, 42.489864>,  <36.533409, 35.025070, 42.869858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083572, 35.431263, 42.489864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422409, 35.641880, 42.461040>,  <36.625710, 35.768250, 42.443745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422409, 35.641880, 42.461040>,  <36.083572, 35.431263, 42.489864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422409, 35.641880, 42.461040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235855, 0.250958, -0.938825,
		-0.476244, 0.812266, 0.336772,
		0.847092, 0.526539, -0.072060,
		36.676537, 35.799843, 42.439423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944336, 36.185635, 42.141399>,  <36.083572, 35.431263, 42.489864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944336, 36.185635, 42.141399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318348, 36.055580, 42.084820>,  <36.542755, 35.977547, 42.050873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318348, 36.055580, 42.084820>,  <35.944336, 36.185635, 42.141399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318348, 36.055580, 42.084820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153021, -0.010157, -0.988171,
		0.319850, 0.945614, -0.059250,
		0.935030, -0.325133, -0.141451,
		36.598858, 35.958042, 42.042385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192451, 36.480244, 41.519112>,  <35.944336, 36.185635, 42.141399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.192451, 36.480244, 41.519112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459751, 36.190498, 41.586929>,  <36.620129, 36.016651, 41.627621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459751, 36.190498, 41.586929>,  <36.192451, 36.480244, 41.519112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459751, 36.190498, 41.586929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128452, -0.112137, -0.985355,
		0.732766, 0.680239, 0.018111,
		0.668247, -0.724362, 0.169549,
		36.660225, 35.973190, 41.637794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773739, 36.668777, 41.076935>,  <36.192451, 36.480244, 41.519112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773739, 36.668777, 41.076935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792645, 36.279259, 41.165920>,  <36.803989, 36.045547, 41.219311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792645, 36.279259, 41.165920>,  <36.773739, 36.668777, 41.076935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792645, 36.279259, 41.165920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271499, -0.201799, -0.941045,
		0.961277, 0.104879, 0.254846,
		0.047268, -0.973796, 0.222459,
		36.806824, 35.987122, 41.232658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404430, 36.421188, 40.869812>,  <36.773739, 36.668777, 41.076935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404430, 36.421188, 40.869812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.167198, 36.099613, 40.887455>,  <37.024860, 35.906670, 40.898041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.167198, 36.099613, 40.887455>,  <37.404430, 36.421188, 40.869812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167198, 36.099613, 40.887455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290919, -0.265054, -0.919300,
		0.750748, -0.532386, 0.391078,
		-0.593080, -0.803935, 0.044108,
		36.989273, 35.858433, 40.900688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820492, 35.942181, 40.697605>,  <37.404430, 36.421188, 40.869812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820492, 35.942181, 40.697605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445366, 35.834332, 40.610149>,  <37.220291, 35.769623, 40.557674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445366, 35.834332, 40.610149>,  <37.820492, 35.942181, 40.697605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445366, 35.834332, 40.610149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253437, -0.101413, -0.962021,
		0.237206, -0.957612, 0.163439,
		-0.937818, -0.269619, -0.218639,
		37.164021, 35.753445, 40.544559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871452, 35.361523, 40.382149>,  <37.820492, 35.942181, 40.697605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871452, 35.361523, 40.382149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.510212, 35.497280, 40.276917>,  <37.293468, 35.578735, 40.213776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.510212, 35.497280, 40.276917>,  <37.871452, 35.361523, 40.382149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510212, 35.497280, 40.276917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169092, -0.282089, -0.944369,
		-0.394726, -0.897350, 0.197368,
		-0.903105, 0.339394, -0.263083,
		37.239281, 35.599098, 40.197990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613857, 34.867996, 39.844101>,  <37.871452, 35.361523, 40.382149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613857, 34.867996, 39.844101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400635, 35.205128, 39.814465>,  <37.272701, 35.407406, 39.796684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400635, 35.205128, 39.814465>,  <37.613857, 34.867996, 39.844101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400635, 35.205128, 39.814465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191328, 0.034780, -0.980909,
		-0.824164, -0.537053, -0.179797,
		-0.533054, 0.842831, -0.074089,
		37.240719, 35.457977, 39.792236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127426, 34.745358, 39.325958>,  <37.613857, 34.867996, 39.844101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127426, 34.745358, 39.325958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174278, 35.142582, 39.321625>,  <37.202389, 35.380917, 39.319023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174278, 35.142582, 39.321625>,  <37.127426, 34.745358, 39.325958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174278, 35.142582, 39.321625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162021, -0.029876, -0.986335,
		-0.979811, 0.113777, -0.164396,
		0.117134, 0.993057, -0.010838,
		37.209419, 35.440498, 39.318375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847836, 34.950699, 38.710781>,  <37.127426, 34.745358, 39.325958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847836, 34.950699, 38.710781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015633, 35.307869, 38.776146>,  <37.116310, 35.522171, 38.815365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015633, 35.307869, 38.776146>,  <36.847836, 34.950699, 38.710781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015633, 35.307869, 38.776146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169959, 0.099574, -0.980407,
		-0.891705, 0.439049, -0.109991,
		0.419494, 0.892928, 0.163411,
		37.141479, 35.575748, 38.825169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584824, 35.389748, 38.152683>,  <36.847836, 34.950699, 38.710781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584824, 35.389748, 38.152683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920986, 35.574368, 38.266312>,  <37.122684, 35.685139, 38.334488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920986, 35.574368, 38.266312>,  <36.584824, 35.389748, 38.152683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920986, 35.574368, 38.266312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309603, 0.021344, -0.950626,
		-0.444821, 0.886859, -0.124959,
		0.840405, 0.461546, 0.284069,
		37.173107, 35.712830, 38.351532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701702, 35.767262, 37.591312>,  <36.584824, 35.389748, 38.152683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701702, 35.767262, 37.591312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060829, 35.786797, 37.766376>,  <37.276306, 35.798519, 37.871414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060829, 35.786797, 37.766376>,  <36.701702, 35.767262, 37.591312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060829, 35.786797, 37.766376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436192, 0.038030, -0.899050,
		-0.060552, 0.998082, 0.012842,
		0.897814, 0.048838, 0.437658,
		37.330173, 35.801449, 37.897675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203735, 36.323402, 37.216263>,  <36.701702, 35.767262, 37.591312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203735, 36.323402, 37.216263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.446960, 36.063866, 37.399242>,  <37.592896, 35.908142, 37.509029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.446960, 36.063866, 37.399242>,  <37.203735, 36.323402, 37.216263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446960, 36.063866, 37.399242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613945, 0.019015, -0.789120,
		0.503318, 0.760683, 0.409917,
		0.608065, -0.648844, 0.457447,
		37.629379, 35.869213, 37.536476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669403, 36.366623, 36.826199>,  <37.203735, 36.323402, 37.216263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669403, 36.366623, 36.826199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822399, 36.072838, 37.050438>,  <37.914196, 35.896568, 37.184982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822399, 36.072838, 37.050438>,  <37.669403, 36.366623, 36.826199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822399, 36.072838, 37.050438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607605, -0.257151, -0.751458,
		0.696075, 0.628046, 0.347906,
		0.382486, -0.734460, 0.560601,
		37.937145, 35.852501, 37.218616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379749, 36.415134, 36.815876>,  <37.669403, 36.366623, 36.826199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379749, 36.415134, 36.815876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.344265, 36.030228, 36.918766>,  <38.322975, 35.799282, 36.980499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.344265, 36.030228, 36.918766>,  <38.379749, 36.415134, 36.815876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344265, 36.030228, 36.918766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781776, -0.227290, -0.580660,
		0.617217, 0.149581, 0.772443,
		-0.088713, -0.962271, 0.257226,
		38.317650, 35.741547, 36.995934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023754, 36.206654, 37.054600>,  <38.379749, 36.415134, 36.815876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.023754, 36.206654, 37.054600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826729, 35.875000, 36.948826>,  <38.708515, 35.676010, 36.885361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826729, 35.875000, 36.948826>,  <39.023754, 36.206654, 37.054600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826729, 35.875000, 36.948826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832841, -0.360925, -0.419654,
		0.252508, -0.426935, 0.868312,
		-0.492561, -0.829132, -0.264433,
		38.678959, 35.626259, 36.869495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326160, 35.539139, 37.386829>,  <39.023754, 36.206654, 37.054600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326160, 35.539139, 37.386829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.149590, 35.469269, 37.034775>,  <39.043648, 35.427345, 36.823544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.149590, 35.469269, 37.034775>,  <39.326160, 35.539139, 37.386829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149590, 35.469269, 37.034775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877435, -0.289269, -0.382662,
		-0.187754, -0.941176, 0.280957,
		-0.441425, -0.174675, -0.880132,
		39.017162, 35.416866, 36.770737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806782, 35.040806, 37.238739>,  <39.326160, 35.539139, 37.386829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806782, 35.040806, 37.238739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573792, 35.128765, 36.925724>,  <39.433998, 35.181541, 36.737915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573792, 35.128765, 36.925724>,  <39.806782, 35.040806, 37.238739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573792, 35.128765, 36.925724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774565, -0.141812, -0.616392,
		-0.246514, -0.965161, -0.087721,
		-0.582477, 0.219895, -0.782539,
		39.399048, 35.194733, 36.690964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.917004, 34.517975, 36.732670>,  <39.806782, 35.040806, 37.238739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.917004, 34.517975, 36.732670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766891, 34.819584, 36.517036>,  <39.676823, 35.000549, 36.387657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766891, 34.819584, 36.517036>,  <39.917004, 34.517975, 36.732670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766891, 34.819584, 36.517036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816557, -0.006280, -0.577231,
		-0.438632, -0.656816, -0.613348,
		-0.375282, 0.754025, -0.539082,
		39.654308, 35.045792, 36.355312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931660, 34.334793, 36.031948>,  <39.917004, 34.517975, 36.732670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931660, 34.334793, 36.031948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.981770, 34.731575, 36.039146>,  <40.011837, 34.969646, 36.043465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.981770, 34.731575, 36.039146>,  <39.931660, 34.334793, 36.031948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981770, 34.731575, 36.039146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723792, -0.078970, -0.685484,
		-0.678550, 0.098903, -0.727865,
		0.125276, 0.991959, 0.018001,
		40.019352, 35.029163, 36.044548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791119, 34.539261, 35.321804>,  <39.931660, 34.334793, 36.031948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.791119, 34.539261, 35.321804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.064884, 34.763622, 35.508121>,  <40.229145, 34.898239, 35.619911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.064884, 34.763622, 35.508121>,  <39.791119, 34.539261, 35.321804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.064884, 34.763622, 35.508121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585076, -0.041321, -0.809925,
		-0.435039, 0.826852, -0.356450,
		0.684417, 0.560899, 0.465795,
		40.270210, 34.931892, 35.647861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113487, 35.091713, 34.899189>,  <39.791119, 34.539261, 35.321804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.113487, 35.091713, 34.899189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.382961, 34.984421, 35.174637>,  <40.544647, 34.920044, 35.339905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.382961, 34.984421, 35.174637>,  <40.113487, 35.091713, 34.899189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.382961, 34.984421, 35.174637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676933, -0.149858, -0.720628,
		0.296490, 0.951627, 0.080617,
		0.673688, -0.268232, 0.688619,
		40.585068, 34.903950, 35.381222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767517, 35.591366, 34.813938>,  <40.113487, 35.091713, 34.899189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767517, 35.591366, 34.813938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.834259, 35.219971, 34.946644>,  <40.874306, 34.997131, 35.026268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.834259, 35.219971, 34.946644>,  <40.767517, 35.591366, 34.813938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.834259, 35.219971, 34.946644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739994, -0.104435, -0.664456,
		0.651588, 0.356371, 0.669651,
		0.166858, -0.928490, 0.331761,
		40.884315, 34.941425, 35.046173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.488213, 35.620480, 35.112816>,  <40.767517, 35.591366, 34.813938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.488213, 35.620480, 35.112816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.789391, 35.363262, 35.168781>,  <41.970097, 35.208931, 35.202362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.789391, 35.363262, 35.168781>,  <41.488213, 35.620480, 35.112816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.789391, 35.363262, 35.168781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362173, -0.582418, -0.727749,
		0.549461, 0.497280, -0.671420,
		0.752943, -0.643041, 0.139915,
		42.015274, 35.170349, 35.210754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.662914, 35.425629, 34.496052>,  <41.488213, 35.620480, 35.112816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.662914, 35.425629, 34.496052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.803478, 35.139606, 34.737782>,  <41.887817, 34.967995, 34.882820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.803478, 35.139606, 34.737782>,  <41.662914, 35.425629, 34.496052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.803478, 35.139606, 34.737782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396290, -0.698423, -0.595952,
		0.848214, -0.030067, -0.528799,
		0.351407, -0.715053, 0.604328,
		41.908901, 34.925091, 34.919079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.913330, 34.895744, 34.143166>,  <41.662914, 35.425629, 34.496052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.913330, 34.895744, 34.143166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.861107, 34.716827, 34.497089>,  <41.829773, 34.609478, 34.709442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.861107, 34.716827, 34.497089>,  <41.913330, 34.895744, 34.143166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.861107, 34.716827, 34.497089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481903, -0.751300, -0.450909,
		0.866443, -0.485262, -0.117460,
		-0.130561, -0.447291, 0.884808,
		41.821938, 34.582642, 34.762531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.557980, 34.811134, 33.717781>,  <41.913330, 34.895744, 34.143166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.557980, 34.811134, 33.717781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.896835, 34.953701, 33.560139>,  <43.100151, 35.039242, 33.465553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.896835, 34.953701, 33.560139>,  <42.557980, 34.811134, 33.717781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.896835, 34.953701, 33.560139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264084, 0.925999, 0.269789,
		0.461096, -0.124474, 0.878576,
		0.847142, 0.356417, -0.394103,
		43.150978, 35.060627, 33.441906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.684288, 35.383694, 34.151642>,  <42.557980, 34.811134, 33.717781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.684288, 35.383694, 34.151642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.872658, 35.456787, 33.806427>,  <42.985680, 35.500645, 33.599297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.872658, 35.456787, 33.806427>,  <42.684288, 35.383694, 34.151642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.872658, 35.456787, 33.806427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176419, 0.978056, 0.110826,
		0.864351, 0.100065, 0.492833,
		0.470928, 0.182737, -0.863037,
		43.013935, 35.511608, 33.547516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.213123, 36.012409, 34.291119>,  <42.684288, 35.383694, 34.151642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.213123, 36.012409, 34.291119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.155178, 35.980461, 33.896629>,  <43.120411, 35.961292, 33.659935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.155178, 35.980461, 33.896629>,  <43.213123, 36.012409, 34.291119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.155178, 35.980461, 33.896629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228298, 0.972540, -0.045232,
		0.962754, 0.218601, -0.159116,
		-0.144859, -0.079873, -0.986223,
		43.111721, 35.956501, 33.600761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.623535, 36.487038, 33.969234>,  <43.213123, 36.012409, 34.291119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.623535, 36.487038, 33.969234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.339859, 36.413357, 33.697025>,  <43.169651, 36.369148, 33.533699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.339859, 36.413357, 33.697025>,  <43.623535, 36.487038, 33.969234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.339859, 36.413357, 33.697025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079384, 0.979989, -0.182537,
		0.700531, -0.075431, -0.709624,
		-0.709193, -0.184205, -0.680524,
		43.127102, 36.358097, 33.492867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.817898, 36.900955, 33.330254>,  <43.623535, 36.487038, 33.969234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.817898, 36.900955, 33.330254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.431892, 36.801476, 33.297024>,  <43.200291, 36.741787, 33.277084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.431892, 36.801476, 33.297024>,  <43.817898, 36.900955, 33.330254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.431892, 36.801476, 33.297024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197068, 0.896906, -0.395883,
		0.172965, -0.365660, -0.914536,
		-0.965011, -0.248699, -0.083074,
		43.142387, 36.726864, 33.272102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.656334, 36.963657, 32.635658>,  <43.817898, 36.900955, 33.330254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.656334, 36.963657, 32.635658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.297760, 36.989769, 32.810993>,  <43.082615, 37.005436, 32.916195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.297760, 36.989769, 32.810993>,  <43.656334, 36.963657, 32.635658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.297760, 36.989769, 32.810993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151792, 0.884037, -0.442083,
		-0.416366, -0.462836, -0.782574,
		-0.896436, 0.065279, 0.438338,
		43.028828, 37.009354, 32.942493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.153603, 37.161346, 32.132851>,  <43.656334, 36.963657, 32.635658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.153603, 37.161346, 32.132851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.993179, 37.260426, 32.485622>,  <42.896923, 37.319874, 32.697285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.993179, 37.260426, 32.485622>,  <43.153603, 37.161346, 32.132851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.993179, 37.260426, 32.485622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108916, 0.943026, -0.314386,
		-0.909553, -0.222144, -0.351235,
		-0.401063, 0.247696, 0.881927,
		42.872860, 37.334736, 32.750202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.862537, 37.789387, 31.916012>,  <43.153603, 37.161346, 32.132851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.862537, 37.789387, 31.916012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.794949, 37.795673, 32.310211>,  <42.754395, 37.799446, 32.546730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.794949, 37.795673, 32.310211>,  <42.862537, 37.789387, 31.916012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.794949, 37.795673, 32.310211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170571, 0.984320, -0.044939,
		-0.970750, -0.175691, -0.163638,
		-0.168967, 0.015713, 0.985497,
		42.744259, 37.800388, 32.605862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.226074, 38.078396, 32.098503>,  <42.862537, 37.789387, 31.916012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.226074, 38.078396, 32.098503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.445004, 38.141361, 32.427299>,  <42.576359, 38.179142, 32.624577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.445004, 38.141361, 32.427299>,  <42.226074, 38.078396, 32.098503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.445004, 38.141361, 32.427299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223138, 0.974047, -0.037959,
		-0.806629, -0.162641, 0.568241,
		0.547320, 0.157415, 0.821986,
		42.609200, 38.188587, 32.673897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.803661, 38.533997, 32.502922>,  <42.226074, 38.078396, 32.098503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.803661, 38.533997, 32.502922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.173565, 38.571743, 32.650391>,  <42.395508, 38.594391, 32.738873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.173565, 38.571743, 32.650391>,  <41.803661, 38.533997, 32.502922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.173565, 38.571743, 32.650391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101760, 0.994809, 0.000618,
		-0.366696, -0.038087, 0.929561,
		0.924759, 0.094366, 0.368668,
		42.450993, 38.600052, 32.760990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.706123, 39.035725, 33.002235>,  <41.803661, 38.533997, 32.502922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.706123, 39.035725, 33.002235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.094288, 39.008858, 32.909470>,  <42.327187, 38.992737, 32.853809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.094288, 39.008858, 32.909470>,  <41.706123, 39.035725, 33.002235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.094288, 39.008858, 32.909470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060154, 0.997496, -0.037202,
		0.233830, 0.022151, 0.972025,
		0.970415, -0.067170, -0.231912,
		42.385414, 38.988708, 32.839897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.019119, 39.422157, 33.566780>,  <41.706123, 39.035725, 33.002235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.019119, 39.422157, 33.566780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.255665, 39.394932, 33.245369>,  <42.397594, 39.378597, 33.052525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.255665, 39.394932, 33.245369>,  <42.019119, 39.422157, 33.566780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.255665, 39.394932, 33.245369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187214, 0.980795, 0.054704,
		0.784370, -0.182781, 0.592752,
		0.591367, -0.068064, -0.803525,
		42.433075, 39.374512, 33.004311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.598640, 39.736237, 33.726879>,  <42.019119, 39.422157, 33.566780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.598640, 39.736237, 33.726879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599850, 39.731445, 33.326908>,  <42.600574, 39.728569, 33.086926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599850, 39.731445, 33.326908>,  <42.598640, 39.736237, 33.726879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.599850, 39.731445, 33.326908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241419, 0.970360, -0.010894,
		0.970416, -0.241368, 0.005825,
		0.003023, -0.011978, -0.999924,
		42.600758, 39.727852, 33.026932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.139069, 40.200760, 33.531075>,  <42.598640, 39.736237, 33.726879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.139069, 40.200760, 33.531075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.924770, 40.142857, 33.198322>,  <42.796192, 40.108116, 32.998672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.924770, 40.142857, 33.198322>,  <43.139069, 40.200760, 33.531075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.924770, 40.142857, 33.198322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065541, 0.989352, -0.129950,
		0.841834, -0.015097, -0.539526,
		-0.535743, -0.144758, -0.831880,
		42.764046, 40.099430, 32.948757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.442657, 40.644173, 33.045361>,  <43.139069, 40.200760, 33.531075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.442657, 40.644173, 33.045361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.057968, 40.564812, 32.969753>,  <42.827156, 40.517193, 32.924389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.057968, 40.564812, 32.969753>,  <43.442657, 40.644173, 33.045361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.057968, 40.564812, 32.969753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167598, 0.971589, -0.167109,
		0.216803, -0.129033, -0.967650,
		-0.961721, -0.198406, -0.189018,
		42.769451, 40.505291, 32.913048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.295441, 40.918121, 32.362202>,  <43.442657, 40.644173, 33.045361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.295441, 40.918121, 32.362202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.934471, 40.898563, 32.533428>,  <42.717888, 40.886829, 32.636166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.934471, 40.898563, 32.533428>,  <43.295441, 40.918121, 32.362202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.934471, 40.898563, 32.533428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155810, 0.963334, -0.218428,
		-0.401693, -0.263812, -0.876953,
		-0.902422, -0.048897, 0.428069,
		42.663746, 40.883896, 32.661850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.957310, 41.510204, 32.019318>,  <43.295441, 40.918121, 32.362202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.957310, 41.510204, 32.019318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.675034, 41.394485, 32.278023>,  <42.505669, 41.325054, 32.433247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.675034, 41.394485, 32.278023>,  <42.957310, 41.510204, 32.019318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.675034, 41.394485, 32.278023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412496, 0.909941, -0.043060,
		-0.576058, -0.297174, -0.761475,
		-0.705694, -0.289300, 0.646762,
		42.463326, 41.307693, 32.472050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.296513, 41.799271, 31.811424>,  <42.957310, 41.510204, 32.019318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.296513, 41.799271, 31.811424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.265598, 41.724457, 32.203148>,  <42.247051, 41.679569, 32.438183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.265598, 41.724457, 32.203148>,  <42.296513, 41.799271, 31.811424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.265598, 41.724457, 32.203148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455770, 0.880235, 0.132140,
		-0.886736, -0.436127, -0.153274,
		-0.077287, -0.187031, 0.979309,
		42.242413, 41.668346, 32.496941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.558464, 41.875389, 32.145607>,  <42.296513, 41.799271, 31.811424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.558464, 41.875389, 32.145607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.794376, 41.917812, 32.465836>,  <41.935925, 41.943268, 32.657970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.794376, 41.917812, 32.465836>,  <41.558464, 41.875389, 32.145607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.794376, 41.917812, 32.465836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301288, 0.948660, 0.096278,
		-0.749257, -0.297985, 0.591455,
		0.589780, 0.106061, 0.800569,
		41.971310, 41.949631, 32.706005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.157860, 42.259960, 32.652607>,  <41.558464, 41.875389, 32.145607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.157860, 42.259960, 32.652607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.529877, 42.309372, 32.791035>,  <41.753086, 42.339020, 32.874092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.529877, 42.309372, 32.791035>,  <41.157860, 42.259960, 32.652607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.529877, 42.309372, 32.791035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204344, 0.956612, 0.207696,
		-0.305399, -0.263883, 0.914930,
		0.930040, 0.123531, 0.346071,
		41.808887, 42.346432, 32.894855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.076763, 42.888699, 33.221855>,  <41.157860, 42.259960, 32.652607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.076763, 42.888699, 33.221855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.468296, 42.843296, 33.153736>,  <41.703217, 42.816055, 33.112865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.468296, 42.843296, 33.153736>,  <41.076763, 42.888699, 33.221855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.468296, 42.843296, 33.153736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137172, 0.981394, 0.134351,
		0.151877, -0.154867, 0.976191,
		0.978834, -0.113502, -0.170295,
		41.761948, 42.809246, 33.102646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466370, 43.202045, 33.715900>,  <41.076763, 42.888699, 33.221855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.466370, 43.202045, 33.715900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.712547, 43.229771, 33.401852>,  <41.860256, 43.246407, 33.213421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.712547, 43.229771, 33.401852>,  <41.466370, 43.202045, 33.715900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.712547, 43.229771, 33.401852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076534, 0.986162, 0.147060,
		0.784452, -0.150597, 0.601628,
		0.615449, 0.069317, -0.785123,
		41.897182, 43.250565, 33.166313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072338, 43.610558, 33.941475>,  <41.466370, 43.202045, 33.715900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.072338, 43.610558, 33.941475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.960739, 43.676918, 33.563133>,  <41.893780, 43.716736, 33.336128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.960739, 43.676918, 33.563133>,  <42.072338, 43.610558, 33.941475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.960739, 43.676918, 33.563133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081138, 0.985514, 0.148928,
		0.956857, -0.035194, -0.288420,
		-0.279000, 0.165905, -0.945851,
		41.877041, 43.726688, 33.279377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.580101, 44.030842, 33.473888>,  <42.072338, 43.610558, 33.941475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.580101, 44.030842, 33.473888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.192898, 44.074306, 33.383427>,  <41.960575, 44.100388, 33.329147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.192898, 44.074306, 33.383427>,  <42.580101, 44.030842, 33.473888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.192898, 44.074306, 33.383427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058167, 0.973987, 0.219013,
		0.244072, 0.198852, -0.949150,
		-0.968011, 0.108664, -0.226156,
		41.902496, 44.106907, 33.315578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.156853, 43.627670, 33.604679>,  <42.580101, 44.030842, 33.473888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.156853, 43.627670, 33.604679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.198841, 43.956062, 33.380188>,  <43.224033, 44.153099, 33.245495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.198841, 43.956062, 33.380188>,  <43.156853, 43.627670, 33.604679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.198841, 43.956062, 33.380188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994276, -0.097948, 0.042688,
		-0.019925, -0.562493, -0.826562,
		0.104972, 0.820980, -0.561225,
		43.230331, 44.202354, 33.211819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.635143, 43.543152, 33.051010>,  <43.156853, 43.627670, 33.604679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.635143, 43.543152, 33.051010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.640160, 43.936520, 33.123375>,  <43.643169, 44.172539, 33.166794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.640160, 43.936520, 33.123375>,  <43.635143, 43.543152, 33.051010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.640160, 43.936520, 33.123375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978138, 0.025492, -0.206389,
		-0.207578, 0.179543, -0.961601,
		0.012543, 0.983420, 0.180909,
		43.643921, 44.231544, 33.177647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.957012, 43.642223, 32.432564>,  <43.635143, 43.543152, 33.051010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.957012, 43.642223, 32.432564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.012665, 43.933277, 32.701244>,  <44.046055, 44.107910, 32.862453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.012665, 43.933277, 32.701244>,  <43.957012, 43.642223, 32.432564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.012665, 43.933277, 32.701244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946918, 0.100750, -0.305280,
		-0.289807, 0.678522, -0.674996,
		0.139133, 0.727638, 0.671703,
		44.054405, 44.151569, 32.902756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.499001, 44.075748, 32.103359>,  <43.957012, 43.642223, 32.432564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.499001, 44.075748, 32.103359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.504471, 44.142292, 32.497746>,  <44.507755, 44.182220, 32.734379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.504471, 44.142292, 32.497746>,  <44.499001, 44.075748, 32.103359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.504471, 44.142292, 32.497746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999187, -0.039660, -0.007172,
		0.037911, 0.985267, -0.166768,
		0.013680, 0.166361, 0.985970,
		44.508575, 44.192200, 32.793537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.233273, 44.336155, 32.275143>,  <44.499001, 44.075748, 32.103359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.233273, 44.336155, 32.275143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.435997, 44.512379, 32.571533>,  <45.557632, 44.618114, 32.749367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.435997, 44.512379, 32.571533>,  <45.233273, 44.336155, 32.275143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.435997, 44.512379, 32.571533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304408, -0.895634, 0.324309,
		0.806523, 0.061197, -0.588026,
		0.506809, 0.440562, 0.740978,
		45.588039, 44.644547, 32.793827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.936184, 44.222313, 32.109673>,  <45.233273, 44.336155, 32.275143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.936184, 44.222313, 32.109673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.864845, 44.276333, 32.499535>,  <45.822041, 44.308746, 32.733452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.864845, 44.276333, 32.499535>,  <45.936184, 44.222313, 32.109673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.864845, 44.276333, 32.499535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253345, -0.950838, 0.178109,
		0.950793, 0.278690, 0.135368,
		-0.178350, 0.135050, 0.974655,
		45.811340, 44.316849, 32.791931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.552685, 43.988586, 32.598064>,  <45.936184, 44.222313, 32.109673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.552685, 43.988586, 32.598064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.174568, 43.957703, 32.724850>,  <45.947697, 43.939175, 32.800919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.174568, 43.957703, 32.724850>,  <46.552685, 43.988586, 32.598064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.174568, 43.957703, 32.724850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119021, -0.986241, 0.114729,
		0.303740, 0.146177, 0.941474,
		-0.945291, -0.077207, 0.316959,
		45.890980, 43.934540, 32.819939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.394791, 43.693924, 33.321671>,  <46.552685, 43.988586, 32.598064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.394791, 43.693924, 33.321671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.070953, 43.624630, 33.097328>,  <45.876652, 43.583054, 32.962723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.070953, 43.624630, 33.097328>,  <46.394791, 43.693924, 33.321671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.070953, 43.624630, 33.097328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042398, -0.970223, 0.238472,
		-0.585464, 0.169285, 0.792826,
		-0.809588, -0.173231, -0.560854,
		45.828075, 43.572662, 32.929073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.980927, 43.241879, 33.689281>,  <46.394791, 43.693924, 33.321671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.980927, 43.241879, 33.689281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.892262, 43.177444, 33.304592>,  <45.839062, 43.138783, 33.073776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.892262, 43.177444, 33.304592>,  <45.980927, 43.241879, 33.689281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.892262, 43.177444, 33.304592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005701, -0.986458, 0.163912,
		-0.975108, 0.030850, 0.219576,
		-0.221659, -0.161084, -0.961727,
		45.825764, 43.129120, 33.016075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.575359, 42.785107, 33.720963>,  <45.980927, 43.241879, 33.689281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.575359, 42.785107, 33.720963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.706810, 42.752350, 33.344601>,  <45.785683, 42.732697, 33.118786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.706810, 42.752350, 33.344601>,  <45.575359, 42.785107, 33.720963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.706810, 42.752350, 33.344601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038269, -0.994261, 0.099905,
		-0.943684, -0.068839, -0.323609,
		0.328629, -0.081895, -0.940902,
		45.805397, 42.727783, 33.062328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.191547, 42.228851, 33.509228>,  <45.575359, 42.785107, 33.720963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.191547, 42.228851, 33.509228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.510571, 42.258942, 33.269814>,  <45.701984, 42.276997, 33.126163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.510571, 42.258942, 33.269814>,  <45.191547, 42.228851, 33.509228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.510571, 42.258942, 33.269814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073713, -0.996912, -0.027073,
		-0.598723, -0.022528, -0.800639,
		0.797557, 0.075226, -0.598535,
		45.749836, 42.281509, 33.090252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.124588, 41.741203, 33.013416>,  <45.191547, 42.228851, 33.509228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.124588, 41.741203, 33.013416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.513268, 41.817421, 32.957577>,  <45.746475, 41.863152, 32.924072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.513268, 41.817421, 32.957577>,  <45.124588, 41.741203, 33.013416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.513268, 41.817421, 32.957577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167996, -0.972936, -0.158658,
		-0.166054, 0.130716, -0.977415,
		0.971701, 0.190548, -0.139600,
		45.804779, 41.874584, 32.915695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.326954, 41.350658, 32.463745>,  <45.124588, 41.741203, 33.013416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.326954, 41.350658, 32.463745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.674229, 41.447811, 32.636837>,  <45.882595, 41.506104, 32.740692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.674229, 41.447811, 32.636837>,  <45.326954, 41.350658, 32.463745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.674229, 41.447811, 32.636837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365371, -0.902955, -0.226224,
		0.335791, 0.354512, -0.872677,
		0.868187, 0.242886, 0.432733,
		45.934685, 41.520676, 32.766659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.921188, 41.064251, 32.016380>,  <45.326954, 41.350658, 32.463745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.921188, 41.064251, 32.016380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.077660, 41.086773, 32.383816>,  <46.171543, 41.100285, 32.604279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.077660, 41.086773, 32.383816>,  <45.921188, 41.064251, 32.016380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.077660, 41.086773, 32.383816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331974, -0.939561, -0.083778,
		0.858355, 0.337721, -0.386227,
		0.391177, 0.056306, 0.918591,
		46.195011, 41.103664, 32.659393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.620583, 40.828579, 31.927044>,  <45.921188, 41.064251, 32.016380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.620583, 40.828579, 31.927044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.525860, 40.795204, 32.314232>,  <46.469028, 40.775181, 32.546543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.525860, 40.795204, 32.314232>,  <46.620583, 40.828579, 31.927044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.525860, 40.795204, 32.314232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218892, -0.975272, -0.030517,
		0.946578, 0.204654, 0.249212,
		-0.236804, -0.083437, 0.967968,
		46.454819, 40.770172, 32.604622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.182053, 40.379005, 32.282333>,  <46.620583, 40.828579, 31.927044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.182053, 40.379005, 32.282333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.863804, 40.380516, 32.524647>,  <46.672855, 40.381424, 32.670033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.863804, 40.380516, 32.524647>,  <47.182053, 40.379005, 32.282333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.863804, 40.380516, 32.524647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085614, -0.989243, 0.118610,
		0.599711, 0.146232, 0.786742,
		-0.795624, 0.003776, 0.605779,
		46.625118, 40.381649, 32.706379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.382446, 39.857742, 32.745781>,  <47.182053, 40.379005, 32.282333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.382446, 39.857742, 32.745781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.992489, 39.908115, 32.819244>,  <46.758514, 39.938339, 32.863323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.992489, 39.908115, 32.819244>,  <47.382446, 39.857742, 32.745781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.992489, 39.908115, 32.819244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081947, -0.969748, 0.229942,
		0.207064, 0.209117, 0.955717,
		-0.974890, 0.125930, 0.183663,
		46.700024, 39.945896, 32.874344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.223244, 39.562237, 33.398407>,  <47.382446, 39.857742, 32.745781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.223244, 39.562237, 33.398407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.879025, 39.562504, 33.194664>,  <46.672493, 39.562664, 33.072418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.879025, 39.562504, 33.194664>,  <47.223244, 39.562237, 33.398407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.879025, 39.562504, 33.194664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129361, -0.967499, 0.217280,
		-0.492662, 0.252872, 0.832670,
		-0.860552, 0.000669, -0.509362,
		46.620857, 39.562706, 33.041855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.768894, 39.109951, 33.852325>,  <47.223244, 39.562237, 33.398407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.768894, 39.109951, 33.852325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.607819, 39.112179, 33.486198>,  <46.511173, 39.113514, 33.266521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.607819, 39.112179, 33.486198>,  <46.768894, 39.109951, 33.852325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.607819, 39.112179, 33.486198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262050, -0.958827, 0.109452,
		-0.877025, 0.283935, 0.387566,
		-0.402687, 0.005570, -0.915321,
		46.487011, 39.113850, 33.211601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.268635, 38.699577, 33.947723>,  <46.768894, 39.109951, 33.852325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.268635, 38.699577, 33.947723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.288746, 38.721531, 33.548832>,  <46.300812, 38.734703, 33.309498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.288746, 38.721531, 33.548832>,  <46.268635, 38.699577, 33.947723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.288746, 38.721531, 33.548832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331241, -0.941057, -0.068494,
		-0.942206, 0.333766, -0.029135,
		0.050279, 0.054885, -0.997226,
		46.303829, 38.737995, 33.249664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.628845, 38.363754, 33.705647>,  <46.268635, 38.699577, 33.947723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.628845, 38.363754, 33.705647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.876698, 38.375549, 33.391911>,  <46.025410, 38.382626, 33.203671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.876698, 38.375549, 33.391911>,  <45.628845, 38.363754, 33.705647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.876698, 38.375549, 33.391911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265548, -0.932490, -0.244841,
		-0.738607, 0.359991, -0.569970,
		0.619632, 0.029486, -0.784339,
		46.062588, 38.384396, 33.156609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.251690, 38.255241, 33.048676>,  <45.628845, 38.363754, 33.705647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.251690, 38.255241, 33.048676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.633530, 38.137840, 33.028255>,  <45.862633, 38.067402, 33.016003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.633530, 38.137840, 33.028255>,  <45.251690, 38.255241, 33.048676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.633530, 38.137840, 33.028255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297845, -0.943777, -0.143435,
		-0.006082, 0.152128, -0.988342,
		0.954595, -0.293500, -0.051051,
		45.919907, 38.049789, 33.012939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.261929, 37.715755, 32.643211>,  <45.251690, 38.255241, 33.048676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.261929, 37.715755, 32.643211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.631500, 37.635006, 32.773197>,  <45.853245, 37.586555, 32.851189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.631500, 37.635006, 32.773197>,  <45.261929, 37.715755, 32.643211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.631500, 37.635006, 32.773197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163562, -0.976336, -0.141474,
		0.345838, 0.077559, -0.935083,
		0.923928, -0.201871, 0.324968,
		45.908680, 37.574444, 32.870689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.405819, 37.137894, 32.293678>,  <45.261929, 37.715755, 32.643211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.405819, 37.137894, 32.293678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.646503, 37.143410, 32.613117>,  <45.790913, 37.146721, 32.804779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.646503, 37.143410, 32.613117>,  <45.405819, 37.137894, 32.293678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.646503, 37.143410, 32.613117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039623, -0.998104, 0.047095,
		0.797733, -0.059981, -0.600020,
		0.601707, 0.013795, 0.798598,
		45.827015, 37.147549, 32.852695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.831360, 36.646339, 32.188107>,  <45.405819, 37.137894, 32.293678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.831360, 36.646339, 32.188107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.871239, 36.688824, 32.583839>,  <45.895164, 36.714314, 32.821278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.871239, 36.688824, 32.583839>,  <45.831360, 36.646339, 32.188107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.871239, 36.688824, 32.583839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033838, -0.993350, 0.110052,
		0.994442, -0.044449, -0.095440,
		0.099697, 0.106210, 0.989333,
		45.901150, 36.720688, 32.880638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.292641, 36.173306, 32.346420>,  <45.831360, 36.646339, 32.188107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.292641, 36.173306, 32.346420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.123180, 36.249332, 32.700684>,  <46.021503, 36.294949, 32.913242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.123180, 36.249332, 32.700684>,  <46.292641, 36.173306, 32.346420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.123180, 36.249332, 32.700684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009694, -0.976731, 0.214247,
		0.905775, 0.099350, 0.411948,
		-0.423648, 0.190066, 0.885662,
		45.996086, 36.306351, 32.966381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.793053, 35.895004, 32.843678>,  <46.292641, 36.173306, 32.346420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.793053, 35.895004, 32.843678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.426090, 35.920902, 33.000736>,  <46.205914, 35.936443, 33.094971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.426090, 35.920902, 33.000736>,  <46.793053, 35.895004, 32.843678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.426090, 35.920902, 33.000736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114897, -0.901555, 0.417131,
		0.380997, 0.427793, 0.819655,
		-0.917409, 0.064750, 0.392642,
		46.150867, 35.940327, 33.118530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.821346, 35.527580, 33.486694>,  <46.793053, 35.895004, 32.843678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.821346, 35.527580, 33.486694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.429405, 35.574993, 33.422386>,  <46.194241, 35.603439, 33.383801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.429405, 35.574993, 33.422386>,  <46.821346, 35.527580, 33.486694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.429405, 35.574993, 33.422386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175652, -0.894537, 0.411034,
		-0.095099, 0.430992, 0.897331,
		-0.979848, 0.118529, -0.160774,
		46.135452, 35.610554, 33.374153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.649963, 35.538067, 34.179295>,  <46.821346, 35.527580, 33.486694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.649963, 35.538067, 34.179295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.620193, 35.266357, 33.887253>,  <46.602333, 35.103333, 33.712029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.620193, 35.266357, 33.887253>,  <46.649963, 35.538067, 34.179295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.620193, 35.266357, 33.887253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808394, -0.469787, 0.354682,
		-0.583918, -0.563812, 0.584085,
		-0.074422, -0.679276, -0.730100,
		46.597866, 35.062576, 33.668224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.642761, 34.880585, 34.361481>,  <46.649963, 35.538067, 34.179295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.642761, 34.880585, 34.361481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.791763, 34.817894, 33.995602>,  <46.881165, 34.780281, 33.776073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.791763, 34.817894, 33.995602>,  <46.642761, 34.880585, 34.361481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.791763, 34.817894, 33.995602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733950, -0.553445, 0.393721,
		-0.567944, -0.818007, -0.091130,
		0.372502, -0.156727, -0.914701,
		46.903515, 34.770878, 33.721191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.275970, 34.677246, 34.159706>,  <46.642761, 34.880585, 34.361481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.275970, 34.677246, 34.159706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.650646, 34.589386, 34.268780>,  <47.875454, 34.536671, 34.334225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.650646, 34.589386, 34.268780>,  <47.275970, 34.677246, 34.159706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.650646, 34.589386, 34.268780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153844, -0.441407, -0.884020,
		0.314546, 0.870007, -0.379670,
		0.936692, -0.219655, 0.272689,
		47.931652, 34.523491, 34.350586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.564629, 34.571232, 34.788818>,  <47.275970, 34.677246, 34.159706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.564629, 34.571232, 34.788818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.586136, 34.928562, 34.967293>,  <47.599041, 35.142960, 35.074379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.586136, 34.928562, 34.967293>,  <47.564629, 34.571232, 34.788818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.586136, 34.928562, 34.967293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591884, -0.388389, 0.706277,
		0.804228, 0.226115, -0.549627,
		0.053768, 0.893323, 0.446187,
		47.602268, 35.196560, 35.101151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.825989, 41.183971, 44.254230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.482567, 40.979313, 44.267521>,  <36.276512, 40.856518, 44.275494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.482567, 40.979313, 44.267521>,  <36.825989, 41.183971, 44.254230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482567, 40.979313, 44.267521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015269, -0.090290, -0.995798,
		0.512492, -0.854441, 0.085331,
		-0.858556, -0.511642, 0.033226,
		36.224998, 40.825821, 44.277489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825932, 40.540611, 43.722477>,  <36.825989, 41.183971, 44.254230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825932, 40.540611, 43.722477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.432404, 40.580341, 43.782116>,  <36.196285, 40.604179, 43.817902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.432404, 40.580341, 43.782116>,  <36.825932, 40.540611, 43.722477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432404, 40.580341, 43.782116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127370, 0.197476, -0.971998,
		-0.125990, -0.975263, -0.181630,
		-0.983821, 0.099328, 0.149099,
		36.137257, 40.610138, 43.826847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488407, 40.048332, 43.316341>,  <36.825932, 40.540611, 43.722477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488407, 40.048332, 43.316341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.244946, 40.359173, 43.380405>,  <36.098869, 40.545677, 43.418842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.244946, 40.359173, 43.380405>,  <36.488407, 40.048332, 43.316341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244946, 40.359173, 43.380405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174128, 0.066109, -0.982501,
		-0.774093, -0.625891, 0.095078,
		-0.608653, 0.777104, 0.160160,
		36.062351, 40.592304, 43.428455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897274, 39.831100, 42.917259>,  <36.488407, 40.048332, 43.316341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897274, 39.831100, 42.917259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.822090, 40.221973, 42.956821>,  <35.776981, 40.456497, 42.980560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.822090, 40.221973, 42.956821>,  <35.897274, 39.831100, 42.917259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822090, 40.221973, 42.956821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242383, 0.051437, -0.968816,
		-0.951800, -0.206068, 0.227185,
		-0.187956, 0.977185, 0.098905,
		35.765705, 40.515129, 42.986492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499237, 39.899296, 42.463722>,  <35.897274, 39.831100, 42.917259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499237, 39.899296, 42.463722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.624493, 40.271698, 42.538742>,  <35.699646, 40.495140, 42.583755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.624493, 40.271698, 42.538742>,  <35.499237, 39.899296, 42.463722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624493, 40.271698, 42.538742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077374, 0.221833, -0.972010,
		-0.946552, 0.289858, 0.141500,
		0.313134, 0.931006, 0.187549,
		35.718433, 40.550999, 42.595005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968033, 40.332687, 42.172798>,  <35.499237, 39.899296, 42.463722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968033, 40.332687, 42.172798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.284626, 40.574707, 42.207375>,  <35.474583, 40.719917, 42.228123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.284626, 40.574707, 42.207375>,  <34.968033, 40.332687, 42.172798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284626, 40.574707, 42.207375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103784, 0.272432, -0.956562,
		-0.602315, 0.748130, 0.278419,
		0.791483, 0.605047, 0.086445,
		35.522072, 40.756222, 42.233307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747704, 40.770554, 41.685875>,  <34.968033, 40.332687, 42.172798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747704, 40.770554, 41.685875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.144257, 40.804050, 41.726162>,  <35.382187, 40.824150, 41.750336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.144257, 40.804050, 41.726162>,  <34.747704, 40.770554, 41.685875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144257, 40.804050, 41.726162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082833, 0.194866, -0.977326,
		-0.101473, 0.977248, 0.186250,
		0.991384, 0.083744, 0.100722,
		35.441673, 40.829174, 41.756378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942509, 41.224518, 41.181198>,  <34.747704, 40.770554, 41.685875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942509, 41.224518, 41.181198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.294231, 41.045864, 41.247326>,  <35.505264, 40.938671, 41.287003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.294231, 41.045864, 41.247326>,  <34.942509, 41.224518, 41.181198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294231, 41.045864, 41.247326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166437, -0.037060, -0.985355,
		0.446219, 0.893949, 0.041749,
		0.879311, -0.446633, 0.165323,
		35.558025, 40.911873, 41.296925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396393, 41.500145, 40.714191>,  <34.942509, 41.224518, 41.181198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396393, 41.500145, 40.714191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.599274, 41.170326, 40.814484>,  <35.721001, 40.972435, 40.874660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.599274, 41.170326, 40.814484>,  <35.396393, 41.500145, 40.714191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599274, 41.170326, 40.814484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308013, -0.098284, -0.946292,
		0.804909, 0.557185, 0.204124,
		0.507198, -0.824551, 0.250730,
		35.751434, 40.922962, 40.889702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045139, 41.616398, 40.374359>,  <35.396393, 41.500145, 40.714191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045139, 41.616398, 40.374359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.036167, 41.222984, 40.446095>,  <36.030785, 40.986938, 40.489136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.036167, 41.222984, 40.446095>,  <36.045139, 41.616398, 40.374359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036167, 41.222984, 40.446095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474556, -0.168359, -0.863974,
		0.879939, 0.065723, 0.470518,
		-0.022433, -0.983532, 0.179335,
		36.029438, 40.927925, 40.499893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748646, 41.405708, 40.231201>,  <36.045139, 41.616398, 40.374359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748646, 41.405708, 40.231201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.536472, 41.066936, 40.216564>,  <36.409168, 40.863674, 40.207783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.536472, 41.066936, 40.216564>,  <36.748646, 41.405708, 40.231201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536472, 41.066936, 40.216564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506355, -0.281923, -0.814938,
		0.679883, -0.450802, 0.578391,
		-0.530437, -0.846934, -0.036591,
		36.377342, 40.812855, 40.205585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208408, 40.836418, 40.187965>,  <36.748646, 41.405708, 40.231201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208408, 40.836418, 40.187965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.863754, 40.733742, 40.012829>,  <36.656963, 40.672138, 39.907745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.863754, 40.733742, 40.012829>,  <37.208408, 40.836418, 40.187965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863754, 40.733742, 40.012829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501685, -0.300144, -0.811311,
		0.076839, -0.918709, 0.387389,
		-0.861631, -0.256687, -0.437839,
		36.605267, 40.656734, 39.881477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329937, 40.116379, 39.961056>,  <37.208408, 40.836418, 40.187965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329937, 40.116379, 39.961056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.013008, 40.232960, 39.746662>,  <36.822849, 40.302906, 39.618027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.013008, 40.232960, 39.746662>,  <37.329937, 40.116379, 39.961056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013008, 40.232960, 39.746662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433589, -0.349058, -0.830758,
		-0.429216, -0.890626, 0.150196,
		-0.792322, 0.291451, -0.535987,
		36.775311, 40.320396, 39.585865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276249, 39.640850, 39.359798>,  <37.329937, 40.116379, 39.961056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276249, 39.640850, 39.359798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.039978, 39.942219, 39.244240>,  <36.898216, 40.123039, 39.174904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.039978, 39.942219, 39.244240>,  <37.276249, 39.640850, 39.359798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039978, 39.942219, 39.244240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174396, -0.230370, -0.957348,
		-0.787837, -0.615866, 0.004681,
		-0.590677, 0.753418, -0.288899,
		36.862774, 40.168243, 39.157570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786911, 39.383797, 38.983280>,  <37.276249, 39.640850, 39.359798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786911, 39.383797, 38.983280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.787617, 39.770130, 38.879612>,  <36.788040, 40.001930, 38.817410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.787617, 39.770130, 38.879612>,  <36.786911, 39.383797, 38.983280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787617, 39.770130, 38.879612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112769, -0.257710, -0.959619,
		-0.993620, -0.027538, -0.109370,
		0.001760, 0.965830, -0.259172,
		36.788143, 40.059879, 38.801861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316227, 39.546947, 38.406929>,  <36.786911, 39.383797, 38.983280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316227, 39.546947, 38.406929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.611950, 39.815563, 38.387119>,  <36.789383, 39.976734, 38.375233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.611950, 39.815563, 38.387119>,  <36.316227, 39.546947, 38.406929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611950, 39.815563, 38.387119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105221, -0.187857, -0.976544,
		-0.665094, 0.716758, -0.209545,
		0.739310, 0.671541, -0.049525,
		36.833744, 40.017025, 38.372261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305073, 39.718060, 37.766129>,  <36.316227, 39.546947, 38.406929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305073, 39.718060, 37.766129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.655800, 39.888649, 37.854950>,  <36.866238, 39.991001, 37.908245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.655800, 39.888649, 37.854950>,  <36.305073, 39.718060, 37.766129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655800, 39.888649, 37.854950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312439, -0.154328, -0.937318,
		-0.365468, 0.891239, -0.268564,
		0.876821, 0.426470, 0.222056,
		36.918846, 40.016590, 37.921566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498287, 39.999790, 37.094406>,  <36.305073, 39.718060, 37.766129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498287, 39.999790, 37.094406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.837090, 40.025257, 37.305508>,  <37.040371, 40.040539, 37.432167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.837090, 40.025257, 37.305508>,  <36.498287, 39.999790, 37.094406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837090, 40.025257, 37.305508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528626, -0.205357, -0.823640,
		0.055936, 0.976614, -0.207597,
		0.847010, 0.063670, 0.527750,
		37.091194, 40.044357, 37.463833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866184, 40.558361, 36.821587>,  <36.498287, 39.999790, 37.094406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866184, 40.558361, 36.821587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.126232, 40.307415, 36.993053>,  <37.282261, 40.156845, 37.095936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.126232, 40.307415, 36.993053>,  <36.866184, 40.558361, 36.821587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126232, 40.307415, 36.993053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520085, -0.043889, -0.852986,
		0.553951, 0.777484, 0.297752,
		0.650115, -0.627369, 0.428670,
		37.321266, 40.119205, 37.121655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460339, 40.750908, 36.592361>,  <36.866184, 40.558361, 36.821587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460339, 40.750908, 36.592361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.544846, 40.382133, 36.722221>,  <37.595551, 40.160870, 36.800137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.544846, 40.382133, 36.722221>,  <37.460339, 40.750908, 36.592361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544846, 40.382133, 36.722221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357011, -0.236407, -0.903689,
		0.909894, 0.306827, 0.279196,
		0.211272, -0.921938, 0.324646,
		37.608227, 40.105553, 36.819614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198162, 40.669590, 36.303604>,  <37.460339, 40.750908, 36.592361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198162, 40.669590, 36.303604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.025276, 40.318390, 36.385880>,  <37.921543, 40.107670, 36.435246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.025276, 40.318390, 36.385880>,  <38.198162, 40.669590, 36.303604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025276, 40.318390, 36.385880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275529, -0.345767, -0.896956,
		0.858645, -0.331008, 0.391360,
		-0.432219, -0.877997, 0.205689,
		37.895611, 40.054989, 36.447586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649876, 40.139427, 36.304649>,  <38.198162, 40.669590, 36.303604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649876, 40.139427, 36.304649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.292267, 40.016098, 36.174625>,  <38.077702, 39.942101, 36.096611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.292267, 40.016098, 36.174625>,  <38.649876, 40.139427, 36.304649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292267, 40.016098, 36.174625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386551, -0.164010, -0.907568,
		0.226513, -0.937036, 0.265812,
		-0.894019, -0.308325, -0.325062,
		38.024059, 39.923599, 36.077106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778839, 39.622246, 35.832653>,  <38.649876, 40.139427, 36.304649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778839, 39.622246, 35.832653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.390823, 39.679939, 35.754463>,  <38.158012, 39.714558, 35.707550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.390823, 39.679939, 35.754463>,  <38.778839, 39.622246, 35.832653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390823, 39.679939, 35.754463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153814, -0.258157, -0.953780,
		-0.188032, -0.955276, 0.228238,
		-0.970044, 0.144234, -0.195476,
		38.099812, 39.723209, 35.695820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361641, 38.992546, 36.017296>,  <38.778839, 39.622246, 35.832653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361641, 38.992546, 36.017296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.598183, 38.717087, 36.185139>,  <39.740108, 38.551811, 36.285847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.598183, 38.717087, 36.185139>,  <39.361641, 38.992546, 36.017296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598183, 38.717087, 36.185139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403772, 0.197570, 0.893272,
		-0.698050, -0.697663, -0.161223,
		0.591350, -0.688645, 0.419611,
		39.775589, 38.510494, 36.311024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001057, 38.717567, 36.602608>,  <39.361641, 38.992546, 36.017296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001057, 38.717567, 36.602608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.359974, 38.558044, 36.678314>,  <39.575325, 38.462330, 36.723740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.359974, 38.558044, 36.678314>,  <39.001057, 38.717567, 36.602608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359974, 38.558044, 36.678314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202309, 0.009574, 0.979275,
		-0.392355, -0.916984, -0.072092,
		0.897290, -0.398808, 0.189270,
		39.629162, 38.438400, 36.735096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919888, 38.059105, 36.993492>,  <39.001057, 38.717567, 36.602608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919888, 38.059105, 36.993492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.292946, 38.180630, 37.071323>,  <39.516781, 38.253544, 37.118023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.292946, 38.180630, 37.071323>,  <38.919888, 38.059105, 36.993492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.292946, 38.180630, 37.071323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224360, 0.066058, 0.972265,
		0.282537, -0.950438, 0.129773,
		0.932650, 0.303816, 0.194576,
		39.572742, 38.271774, 37.129696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223003, 37.614853, 37.578102>,  <38.919888, 38.059105, 36.993492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223003, 37.614853, 37.578102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.440880, 37.950191, 37.569283>,  <39.571606, 38.151394, 37.563992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.440880, 37.950191, 37.569283>,  <39.223003, 37.614853, 37.578102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440880, 37.950191, 37.569283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094189, 0.087276, 0.991721,
		0.833333, -0.538101, 0.126501,
		0.544686, 0.838350, -0.022047,
		39.604286, 38.201698, 37.562668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772205, 37.477627, 38.129261>,  <39.223003, 37.614853, 37.578102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772205, 37.477627, 38.129261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.763294, 37.869194, 38.048042>,  <39.757946, 38.104134, 37.999313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.763294, 37.869194, 38.048042>,  <39.772205, 37.477627, 38.129261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763294, 37.869194, 38.048042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158635, 0.203984, 0.966036,
		0.987086, -0.010685, -0.159836,
		-0.022281, 0.978916, -0.203044,
		39.756611, 38.162868, 37.987129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349712, 37.799133, 38.390423>,  <39.772205, 37.477627, 38.129261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349712, 37.799133, 38.390423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.089962, 38.100967, 38.352654>,  <39.934113, 38.282066, 38.329990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.089962, 38.100967, 38.352654>,  <40.349712, 37.799133, 38.390423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089962, 38.100967, 38.352654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128635, 0.231367, 0.964325,
		0.749509, 0.614064, -0.247310,
		-0.649376, 0.754583, -0.094422,
		39.895149, 38.327343, 38.324326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659927, 38.431263, 38.701366>,  <40.349712, 37.799133, 38.390423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659927, 38.431263, 38.701366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.271839, 38.527431, 38.689541>,  <40.038986, 38.585133, 38.682446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.271839, 38.527431, 38.689541>,  <40.659927, 38.431263, 38.701366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271839, 38.527431, 38.689541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051572, 0.324265, 0.944559,
		0.236678, 0.914904, -0.327007,
		-0.970218, 0.240421, -0.029563,
		39.980774, 38.599556, 38.680672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584145, 39.012646, 39.080338>,  <40.659927, 38.431263, 38.701366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584145, 39.012646, 39.080338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.212650, 38.864365, 39.078201>,  <39.989754, 38.775398, 39.076920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.212650, 38.864365, 39.078201>,  <40.584145, 39.012646, 39.080338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212650, 38.864365, 39.078201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108638, 0.258339, 0.959926,
		-0.354462, 0.892101, -0.280201,
		-0.928738, -0.370698, -0.005345,
		39.934029, 38.753155, 39.076599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187000, 39.466175, 39.411610>,  <40.584145, 39.012646, 39.080338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.187000, 39.466175, 39.411610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.969273, 39.131092, 39.429352>,  <39.838638, 38.930042, 39.439999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.969273, 39.131092, 39.429352>,  <40.187000, 39.466175, 39.411610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969273, 39.131092, 39.429352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170399, 0.162185, 0.971936,
		-0.821393, 0.521481, -0.231024,
		-0.544315, -0.837707, 0.044358,
		39.805977, 38.879780, 39.442657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507080, 39.644985, 39.773037>,  <40.187000, 39.466175, 39.411610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507080, 39.644985, 39.773037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.564568, 39.251026, 39.811646>,  <39.599060, 39.014648, 39.834812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.564568, 39.251026, 39.811646>,  <39.507080, 39.644985, 39.773037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564568, 39.251026, 39.811646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377742, 0.035555, 0.925228,
		-0.914689, -0.169435, -0.366928,
		0.143720, -0.984900, 0.096524,
		39.607685, 38.955555, 39.840603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863247, 39.332520, 40.054951>,  <39.507080, 39.644985, 39.773037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863247, 39.332520, 40.054951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.165047, 39.083759, 40.138832>,  <39.346127, 38.934502, 40.189159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.165047, 39.083759, 40.138832>,  <38.863247, 39.332520, 40.054951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.165047, 39.083759, 40.138832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205368, 0.079760, 0.975429,
		-0.623347, -0.779023, -0.067540,
		0.754495, -0.621901, 0.209704,
		39.391396, 38.897190, 40.201744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655422, 38.934750, 40.549809>,  <38.863247, 39.332520, 40.054951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655422, 38.934750, 40.549809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.051556, 38.884750, 40.573860>,  <39.289234, 38.854752, 40.588291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.051556, 38.884750, 40.573860>,  <38.655422, 38.934750, 40.549809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051556, 38.884750, 40.573860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036985, 0.179838, 0.983001,
		-0.133691, -0.975722, 0.173476,
		0.990333, -0.125003, 0.060129,
		39.348656, 38.847248, 40.591900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919731, 38.270451, 40.864990>,  <38.655422, 38.934750, 40.549809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919731, 38.270451, 40.864990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.132610, 38.603321, 40.927288>,  <39.260338, 38.803043, 40.964664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.132610, 38.603321, 40.927288>,  <38.919731, 38.270451, 40.864990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132610, 38.603321, 40.927288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289243, 0.005829, 0.957238,
		0.795680, -0.554486, 0.243802,
		0.532196, 0.832173, 0.155743,
		39.292271, 38.852974, 40.974010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381111, 38.120373, 41.394199>,  <38.919731, 38.270451, 40.864990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381111, 38.120373, 41.394199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.341137, 38.518368, 41.395386>,  <39.317154, 38.757164, 41.396095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.341137, 38.518368, 41.395386>,  <39.381111, 38.120373, 41.394199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341137, 38.518368, 41.395386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346908, -0.037633, 0.937144,
		0.932560, 0.092628, 0.348931,
		-0.099937, 0.994989, 0.002962,
		39.311157, 38.816864, 41.396275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669178, 38.280346, 41.955070>,  <39.381111, 38.120373, 41.394199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669178, 38.280346, 41.955070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.465286, 38.616280, 41.880394>,  <39.342953, 38.817841, 41.835587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.465286, 38.616280, 41.880394>,  <39.669178, 38.280346, 41.955070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465286, 38.616280, 41.880394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243448, 0.067331, 0.967574,
		0.825171, 0.538652, 0.170136,
		-0.509730, 0.839834, -0.186693,
		39.312366, 38.868229, 41.824387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805805, 38.722389, 42.517391>,  <39.669178, 38.280346, 41.955070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.805805, 38.722389, 42.517391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.467777, 38.845390, 42.342438>,  <39.264961, 38.919189, 42.237465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.467777, 38.845390, 42.342438>,  <39.805805, 38.722389, 42.517391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467777, 38.845390, 42.342438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406240, 0.162557, 0.899191,
		0.347601, 0.937560, -0.012453,
		-0.845070, 0.307501, -0.437379,
		39.214256, 38.937641, 42.211224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685577, 39.453541, 42.645409>,  <39.805805, 38.722389, 42.517391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685577, 39.453541, 42.645409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.329727, 39.288326, 42.567478>,  <39.116215, 39.189198, 42.520721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.329727, 39.288326, 42.567478>,  <39.685577, 39.453541, 42.645409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329727, 39.288326, 42.567478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265421, 0.120478, 0.956575,
		-0.371632, 0.902709, -0.216811,
		-0.889630, -0.413040, -0.194824,
		39.062840, 39.164413, 42.509029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.299000, 40.000721, 42.991070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.084431, 39.663918, 42.968185>,  <38.955688, 39.461834, 42.954453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.084431, 39.663918, 42.968185>,  <39.299000, 40.000721, 42.991070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084431, 39.663918, 42.968185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333142, 0.148972, 0.931034,
		-0.775416, 0.518485, -0.360421,
		-0.536420, -0.842010, -0.057214,
		38.923504, 39.411316, 42.951019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760384, 40.159561, 43.346348>,  <39.299000, 40.000721, 42.991070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760384, 40.159561, 43.346348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.723797, 39.761787, 43.325459>,  <38.701847, 39.523121, 43.312923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.723797, 39.761787, 43.325459>,  <38.760384, 40.159561, 43.346348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723797, 39.761787, 43.325459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244119, -0.028451, 0.969328,
		-0.965422, 0.101408, -0.240159,
		-0.091465, -0.994438, -0.052223,
		38.696358, 39.463455, 43.309792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076912, 40.052509, 43.625874>,  <38.760384, 40.159561, 43.346348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076912, 40.052509, 43.625874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.275646, 39.705433, 43.619289>,  <38.394886, 39.497189, 43.615337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.275646, 39.705433, 43.619289>,  <38.076912, 40.052509, 43.625874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275646, 39.705433, 43.619289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312127, -0.196355, 0.929527,
		-0.809775, -0.456681, -0.368385,
		0.496832, -0.867691, -0.016461,
		38.424694, 39.445126, 43.614349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581112, 39.480392, 43.791862>,  <38.076912, 40.052509, 43.625874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581112, 39.480392, 43.791862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.953030, 39.381489, 43.900925>,  <38.176182, 39.322147, 43.966362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.953030, 39.381489, 43.900925>,  <37.581112, 39.480392, 43.791862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953030, 39.381489, 43.900925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328983, -0.226050, 0.916882,
		-0.165069, -0.942214, -0.291523,
		0.929797, -0.247254, 0.272659,
		38.231968, 39.307312, 43.982723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541515, 38.872498, 44.154488>,  <37.581112, 39.480392, 43.791862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541515, 38.872498, 44.154488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.902718, 38.999401, 44.270367>,  <38.119438, 39.075542, 44.339893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.902718, 38.999401, 44.270367>,  <37.541515, 38.872498, 44.154488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902718, 38.999401, 44.270367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213066, -0.254821, 0.943223,
		0.373070, -0.913461, -0.162507,
		0.903007, 0.317263, 0.289694,
		38.173618, 39.094582, 44.357273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774113, 38.376347, 44.646313>,  <37.541515, 38.872498, 44.154488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774113, 38.376347, 44.646313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.995895, 38.704296, 44.703419>,  <38.128963, 38.901066, 44.737682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.995895, 38.704296, 44.703419>,  <37.774113, 38.376347, 44.646313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995895, 38.704296, 44.703419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082350, -0.116658, 0.989752,
		0.828128, -0.560531, 0.002836,
		0.554456, 0.819876, 0.142768,
		38.162231, 38.950260, 44.746250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261860, 38.180405, 45.122196>,  <37.774113, 38.376347, 44.646313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261860, 38.180405, 45.122196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.301044, 38.577660, 45.147732>,  <38.324554, 38.816013, 45.163052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.301044, 38.577660, 45.147732>,  <38.261860, 38.180405, 45.122196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301044, 38.577660, 45.147732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135583, -0.076866, 0.987780,
		0.985911, -0.088114, -0.142183,
		0.097966, 0.993140, 0.063836,
		38.330433, 38.875603, 45.166882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920418, 38.354923, 45.605190>,  <38.261860, 38.180405, 45.122196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920418, 38.354923, 45.605190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.689663, 38.681400, 45.618042>,  <38.551212, 38.877289, 45.625751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.689663, 38.681400, 45.618042>,  <38.920418, 38.354923, 45.605190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689663, 38.681400, 45.618042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248820, 0.138133, 0.958649,
		0.778007, 0.561021, -0.282773,
		-0.576883, 0.816195, 0.032125,
		38.516598, 38.926258, 45.627678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287617, 38.844772, 45.945000>,  <38.920418, 38.354923, 45.605190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287617, 38.844772, 45.945000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.898666, 38.923164, 45.995716>,  <38.665295, 38.970200, 46.026146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.898666, 38.923164, 45.995716>,  <39.287617, 38.844772, 45.945000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898666, 38.923164, 45.995716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149680, 0.106698, 0.982961,
		0.179112, 0.974786, -0.133085,
		-0.972376, 0.195981, 0.126795,
		38.606953, 38.981960, 46.033756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249535, 39.437843, 46.419594>,  <39.287617, 38.844772, 45.945000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249535, 39.437843, 46.419594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.869507, 39.313370, 46.410328>,  <38.641491, 39.238686, 46.404770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.869507, 39.313370, 46.410328>,  <39.249535, 39.437843, 46.419594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869507, 39.313370, 46.410328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056788, 0.099433, 0.993423,
		-0.306831, 0.945135, -0.112139,
		-0.950069, -0.311181, -0.023163,
		38.584488, 39.220016, 46.403378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997265, 39.799213, 46.969086>,  <39.249535, 39.437843, 46.419594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997265, 39.799213, 46.969086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.681339, 39.561069, 46.910103>,  <38.491783, 39.418182, 46.874714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.681339, 39.561069, 46.910103>,  <38.997265, 39.799213, 46.969086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681339, 39.561069, 46.910103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158548, -0.034063, 0.986763,
		-0.592503, 0.802736, -0.067489,
		-0.789811, -0.595361, -0.147455,
		38.444397, 39.382462, 46.865868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487770, 39.976707, 47.431164>,  <38.997265, 39.799213, 46.969086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487770, 39.976707, 47.431164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.377125, 39.608212, 47.321770>,  <38.310738, 39.387112, 47.256134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.377125, 39.608212, 47.321770>,  <38.487770, 39.976707, 47.431164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377125, 39.608212, 47.321770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236800, -0.210473, 0.948486,
		-0.931348, 0.327129, -0.159930,
		-0.276617, -0.921242, -0.273488,
		38.294140, 39.331841, 47.239723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763031, 39.726883, 47.654949>,  <38.487770, 39.976707, 47.431164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763031, 39.726883, 47.654949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.995773, 39.404469, 47.611580>,  <38.135418, 39.211021, 47.585560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.995773, 39.404469, 47.611580>,  <37.763031, 39.726883, 47.654949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995773, 39.404469, 47.611580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327405, -0.354176, 0.875994,
		-0.744484, -0.474199, -0.469978,
		0.581851, -0.806036, -0.108423,
		38.170330, 39.162659, 47.579052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395947, 39.180630, 47.950466>,  <37.763031, 39.726883, 47.654949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395947, 39.180630, 47.950466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.767586, 39.033161, 47.938820>,  <37.990570, 38.944679, 47.931831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.767586, 39.033161, 47.938820>,  <37.395947, 39.180630, 47.950466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767586, 39.033161, 47.938820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161926, -0.476323, 0.864232,
		-0.332488, -0.798245, -0.502251,
		0.929102, -0.368674, -0.029115,
		38.046318, 38.922558, 47.930084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410805, 38.434696, 48.112743>,  <37.395947, 39.180630, 47.950466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410805, 38.434696, 48.112743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.791611, 38.542515, 48.170731>,  <38.020096, 38.607204, 48.205524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.791611, 38.542515, 48.170731>,  <37.410805, 38.434696, 48.112743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791611, 38.542515, 48.170731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063010, -0.636134, 0.769002,
		0.299498, -0.722966, -0.622592,
		0.952014, 0.269544, 0.144967,
		38.077213, 38.623379, 48.214222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732758, 37.802536, 48.295536>,  <37.410805, 38.434696, 48.112743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732758, 37.802536, 48.295536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.928570, 38.113644, 48.453239>,  <38.046059, 38.300308, 48.547863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.928570, 38.113644, 48.453239>,  <37.732758, 37.802536, 48.295536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928570, 38.113644, 48.453239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114419, -0.505522, 0.855193,
		0.864447, -0.373533, -0.336460,
		0.489531, 0.777766, 0.394258,
		38.075428, 38.346973, 48.571518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171482, 37.480419, 48.824444>,  <37.732758, 37.802536, 48.295536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171482, 37.480419, 48.824444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.186203, 37.872295, 48.903290>,  <38.195038, 38.107422, 48.950600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.186203, 37.872295, 48.903290>,  <38.171482, 37.480419, 48.824444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186203, 37.872295, 48.903290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098441, -0.199848, 0.974869,
		0.994462, -0.016477, -0.103797,
		0.036807, 0.979688, 0.197119,
		38.197247, 38.166203, 48.962425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700623, 37.529613, 49.267529>,  <38.171482, 37.480419, 48.824444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700623, 37.529613, 49.267529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.480782, 37.859623, 49.320084>,  <38.348877, 38.057629, 49.351616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.480782, 37.859623, 49.320084>,  <38.700623, 37.529613, 49.267529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480782, 37.859623, 49.320084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053039, -0.122497, 0.991051,
		0.833738, 0.551657, 0.023567,
		-0.549607, 0.825027, 0.131389,
		38.315899, 38.107132, 49.359501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053364, 37.866570, 49.767109>,  <38.700623, 37.529613, 49.267529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053364, 37.866570, 49.767109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.673969, 37.991409, 49.788887>,  <38.446331, 38.066315, 49.801956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.673969, 37.991409, 49.788887>,  <39.053364, 37.866570, 49.767109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673969, 37.991409, 49.788887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054230, -0.329262, 0.942680,
		0.312140, 0.891167, 0.329226,
		-0.948487, 0.312102, 0.054448,
		38.389423, 38.085041, 49.805222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956558, 38.150394, 50.365013>,  <39.053364, 37.866570, 49.767109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956558, 38.150394, 50.365013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.593693, 38.028728, 50.248707>,  <38.375973, 37.955730, 50.178925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.593693, 38.028728, 50.248707>,  <38.956558, 38.150394, 50.365013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593693, 38.028728, 50.248707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175934, -0.353542, 0.918725,
		-0.382238, 0.884587, 0.267208,
		-0.907161, -0.304161, -0.290766,
		38.321545, 37.937481, 50.161476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677147, 38.258244, 50.983765>,  <38.956558, 38.150394, 50.365013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677147, 38.258244, 50.983765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.396275, 38.042313, 50.798065>,  <38.227753, 37.912754, 50.686646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.396275, 38.042313, 50.798065>,  <38.677147, 38.258244, 50.983765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396275, 38.042313, 50.798065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248796, -0.424905, 0.870377,
		-0.667114, 0.726667, 0.164054,
		-0.702182, -0.539824, -0.464252,
		38.185619, 37.880363, 50.658791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085651, 38.365131, 51.357563>,  <38.677147, 38.258244, 50.983765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085651, 38.365131, 51.357563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.985943, 38.024841, 51.172462>,  <37.926117, 37.820667, 51.061401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.985943, 38.024841, 51.172462>,  <38.085651, 38.365131, 51.357563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985943, 38.024841, 51.172462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254959, -0.403330, 0.878818,
		-0.934270, 0.337045, -0.116361,
		-0.249269, -0.850720, -0.462752,
		37.911163, 37.769627, 51.033638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499565, 38.213856, 51.736572>,  <38.085651, 38.365131, 51.357563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499565, 38.213856, 51.736572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.649643, 37.885147, 51.565029>,  <37.739689, 37.687923, 51.462101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.649643, 37.885147, 51.565029>,  <37.499565, 38.213856, 51.736572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649643, 37.885147, 51.565029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087954, -0.492134, 0.866064,
		-0.922765, -0.287219, -0.256923,
		0.375191, -0.821772, -0.428863,
		37.762199, 37.638615, 51.436371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387440, 38.971031, 51.463806>,  <37.499565, 38.213856, 51.736572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387440, 38.971031, 51.463806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.384586, 39.321983, 51.655701>,  <37.382874, 39.532555, 51.770840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.384586, 39.321983, 51.655701>,  <37.387440, 38.971031, 51.463806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384586, 39.321983, 51.655701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978930, 0.091783, -0.182406,
		-0.204072, -0.470932, 0.858241,
		-0.007129, 0.877382, 0.479740,
		37.382446, 39.585197, 51.799622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041595, 39.600349, 51.440338>,  <37.387440, 38.971031, 51.463806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041595, 39.600349, 51.440338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.831810, 39.928276, 51.532284>,  <36.705936, 40.125031, 51.587452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.831810, 39.928276, 51.532284>,  <37.041595, 39.600349, 51.440338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831810, 39.928276, 51.532284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699809, -0.261286, -0.664829,
		-0.484977, -0.509540, 0.710750,
		-0.524466, 0.819816, 0.229863,
		36.674469, 40.174221, 51.601242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283092, 39.486496, 51.368336>,  <37.041595, 39.600349, 51.440338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283092, 39.486496, 51.368336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.312569, 39.879608, 51.300552>,  <36.330254, 40.115475, 51.259884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.312569, 39.879608, 51.300552>,  <36.283092, 39.486496, 51.368336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312569, 39.879608, 51.300552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371433, -0.130646, -0.919222,
		-0.925531, 0.130681, 0.355409,
		0.073692, 0.982778, -0.169457,
		36.334675, 40.174442, 51.249714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585220, 39.597710, 51.225437>,  <36.283092, 39.486496, 51.368336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585220, 39.597710, 51.225437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.807938, 39.900005, 51.087547>,  <35.941570, 40.081383, 51.004814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.807938, 39.900005, 51.087547>,  <35.585220, 39.597710, 51.225437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807938, 39.900005, 51.087547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471071, -0.054525, -0.880408,
		-0.684156, 0.652598, 0.325648,
		0.556797, 0.755740, -0.344724,
		35.974976, 40.126728, 50.984131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999615, 40.179646, 50.996552>,  <35.585220, 39.597710, 51.225437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999615, 40.179646, 50.996552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.334572, 40.235790, 50.785240>,  <35.535545, 40.269478, 50.658455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.334572, 40.235790, 50.785240>,  <34.999615, 40.179646, 50.996552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334572, 40.235790, 50.785240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531144, -0.019284, -0.847062,
		-0.129079, 0.989913, 0.058402,
		0.837391, 0.140358, -0.528276,
		35.585789, 40.277897, 50.626759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875088, 40.665661, 50.545326>,  <34.999615, 40.179646, 50.996552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875088, 40.665661, 50.545326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.205948, 40.515656, 50.377907>,  <35.404465, 40.425652, 50.277454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.205948, 40.515656, 50.377907>,  <34.875088, 40.665661, 50.545326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205948, 40.515656, 50.377907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448630, 0.007904, -0.893683,
		0.338452, 0.926985, -0.161705,
		0.827153, -0.375014, -0.418548,
		35.454094, 40.403152, 50.252342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981873, 41.134083, 50.032341>,  <34.875088, 40.665661, 50.545326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981873, 41.134083, 50.032341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.159698, 40.786476, 49.945465>,  <35.266396, 40.577911, 49.893341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.159698, 40.786476, 49.945465>,  <34.981873, 41.134083, 50.032341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159698, 40.786476, 49.945465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374973, 0.039650, -0.926188,
		0.813486, 0.493189, -0.308232,
		0.444564, -0.869019, -0.217187,
		35.293068, 40.525772, 49.880310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167053, 41.267967, 49.348995>,  <34.981873, 41.134083, 50.032341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167053, 41.267967, 49.348995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.202595, 40.872368, 49.396313>,  <35.223919, 40.635010, 49.424702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.202595, 40.872368, 49.396313>,  <35.167053, 41.267967, 49.348995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202595, 40.872368, 49.396313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411583, -0.144606, -0.899827,
		0.907030, 0.031265, -0.419903,
		0.088853, -0.988995, 0.118294,
		35.229252, 40.575668, 49.431801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595940, 40.985596, 48.805584>,  <35.167053, 41.267967, 49.348995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595940, 40.985596, 48.805584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.339718, 40.704689, 48.929852>,  <35.185986, 40.536144, 49.004410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.339718, 40.704689, 48.929852>,  <35.595940, 40.985596, 48.805584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339718, 40.704689, 48.929852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283696, -0.159522, -0.945552,
		0.713584, -0.693815, -0.097046,
		-0.640557, -0.702263, 0.310665,
		35.147552, 40.494011, 49.023052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660728, 40.286987, 48.537575>,  <35.595940, 40.985596, 48.805584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660728, 40.286987, 48.537575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.275898, 40.372295, 48.605598>,  <35.044998, 40.423481, 48.646412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.275898, 40.372295, 48.605598>,  <35.660728, 40.286987, 48.537575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275898, 40.372295, 48.605598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220076, -0.238551, -0.945865,
		-0.161153, -0.947423, 0.276440,
		-0.962079, 0.213267, 0.170062,
		34.987274, 40.436275, 48.656616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414734, 40.041687, 48.608650>,  <35.660728, 40.286987, 48.537575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414734, 40.041687, 48.608650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.173325, 39.733223, 48.527573>,  <36.028481, 39.548145, 48.478928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.173325, 39.733223, 48.527573>,  <36.414734, 40.041687, 48.608650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173325, 39.733223, 48.527573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060784, 0.208971, -0.976031,
		0.795028, -0.601374, -0.079244,
		-0.603519, -0.771156, -0.202692,
		35.992268, 39.501877, 48.466766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715473, 39.477161, 48.210674>,  <36.414734, 40.041687, 48.608650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715473, 39.477161, 48.210674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.326870, 39.452129, 48.119240>,  <36.093708, 39.437111, 48.064381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.326870, 39.452129, 48.119240>,  <36.715473, 39.477161, 48.210674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326870, 39.452129, 48.119240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225675, 0.050254, -0.972906,
		0.072379, -0.996774, -0.034698,
		-0.971511, -0.062587, -0.228584,
		36.035416, 39.433357, 48.050663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638245, 38.919064, 47.708912>,  <36.715473, 39.477161, 48.210674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638245, 38.919064, 47.708912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.330170, 39.172489, 47.679478>,  <36.145325, 39.324543, 47.661816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.330170, 39.172489, 47.679478>,  <36.638245, 38.919064, 47.708912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330170, 39.172489, 47.679478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237550, 0.177858, -0.954954,
		-0.591934, -0.752972, -0.287487,
		-0.770185, 0.633562, -0.073588,
		36.099113, 39.362556, 47.657402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498100, 38.860653, 47.043255>,  <36.638245, 38.919064, 47.708912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498100, 38.860653, 47.043255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.264244, 39.165531, 47.154434>,  <36.123932, 39.348457, 47.221142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.264244, 39.165531, 47.154434>,  <36.498100, 38.860653, 47.043255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264244, 39.165531, 47.154434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134037, 0.247142, -0.959664,
		-0.800143, -0.598315, -0.042327,
		-0.584642, 0.762195, 0.277945,
		36.088852, 39.394188, 47.237816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966457, 38.820019, 46.585003>,  <36.498100, 38.860653, 47.043255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966457, 38.820019, 46.585003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.961639, 39.190414, 46.735943>,  <35.958748, 39.412651, 46.826508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.961639, 39.190414, 46.735943>,  <35.966457, 38.820019, 46.585003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961639, 39.190414, 46.735943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286947, 0.358303, -0.888414,
		-0.957871, -0.118984, 0.261394,
		-0.012049, 0.925992, 0.377350,
		35.958023, 39.468212, 46.849148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339245, 39.156349, 46.203068>,  <35.966457, 38.820019, 46.585003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339245, 39.156349, 46.203068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.580769, 39.451321, 46.324142>,  <35.725681, 39.628304, 46.396790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.580769, 39.451321, 46.324142>,  <35.339245, 39.156349, 46.203068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580769, 39.451321, 46.324142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051132, 0.414773, -0.908487,
		-0.795489, 0.533074, 0.288149,
		0.603807, 0.737425, 0.302690,
		35.761909, 39.672546, 46.414951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043846, 39.767956, 46.054184>,  <35.339245, 39.156349, 46.203068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043846, 39.767956, 46.054184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.430805, 39.863991, 46.086437>,  <35.662979, 39.921612, 46.105789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.430805, 39.863991, 46.086437>,  <35.043846, 39.767956, 46.054184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430805, 39.863991, 46.086437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018407, 0.384192, -0.923070,
		-0.252595, 0.891491, 0.376085,
		0.967397, 0.240085, 0.080635,
		35.721024, 39.936016, 46.110626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087124, 40.463242, 45.782890>,  <35.043846, 39.767956, 46.054184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087124, 40.463242, 45.782890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.479046, 40.383980, 45.772114>,  <35.714199, 40.336422, 45.765648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.479046, 40.383980, 45.772114>,  <35.087124, 40.463242, 45.782890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479046, 40.383980, 45.772114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036628, 0.310268, -0.949943,
		0.196594, 0.929768, 0.311259,
		0.979801, -0.198154, -0.026941,
		35.772987, 40.324535, 45.764030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364475, 41.077026, 45.623253>,  <35.087124, 40.463242, 45.782890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364475, 41.077026, 45.623253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.653812, 40.809299, 45.555389>,  <35.827415, 40.648663, 45.514671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.653812, 40.809299, 45.555389>,  <35.364475, 41.077026, 45.623253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653812, 40.809299, 45.555389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052427, 0.191766, -0.980040,
		0.688494, 0.717801, 0.103622,
		0.723345, -0.669319, -0.169662,
		35.870815, 40.608505, 45.504490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737621, 41.510010, 45.190994>,  <35.364475, 41.077026, 45.623253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737621, 41.510010, 45.190994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.856777, 41.130016, 45.153496>,  <35.928272, 40.902020, 45.130997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.856777, 41.130016, 45.153496>,  <35.737621, 41.510010, 45.190994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856777, 41.130016, 45.153496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083168, 0.123658, -0.988834,
		0.950969, 0.286771, 0.115845,
		0.297894, -0.949985, -0.093745,
		35.946144, 40.845020, 45.125374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259979, 41.545090, 44.772541>,  <35.737621, 41.510010, 45.190994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259979, 41.545090, 44.772541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.123161, 41.170914, 44.736858>,  <36.041073, 40.946407, 44.715450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.123161, 41.170914, 44.736858>,  <36.259979, 41.545090, 44.772541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123161, 41.170914, 44.736858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119304, 0.050930, -0.991551,
		0.932081, -0.349793, 0.094181,
		-0.342041, -0.935441, -0.089203,
		36.020550, 40.890282, 44.710098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.012928, 42.806942, 32.760418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.634121, 42.799751, 32.888691>,  <42.406837, 42.795437, 32.965652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.634121, 42.799751, 32.888691>,  <43.012928, 42.806942, 32.760418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.634121, 42.799751, 32.888691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027491, -0.990230, -0.136704,
		0.320005, -0.138277, 0.937271,
		-0.947017, -0.017979, 0.320680,
		42.350018, 42.794357, 32.984894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.980339, 42.436127, 33.375202>,  <43.012928, 42.806942, 32.760418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.980339, 42.436127, 33.375202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.619133, 42.419304, 33.204185>,  <42.402409, 42.409210, 33.101574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.619133, 42.419304, 33.204185>,  <42.980339, 42.436127, 33.375202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.619133, 42.419304, 33.204185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030264, -0.998952, 0.034340,
		-0.428536, 0.018070, 0.903344,
		-0.903017, -0.042055, -0.427540,
		42.348228, 42.406689, 33.075924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.654015, 41.874439, 33.747574>,  <42.980339, 42.436127, 33.375202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.654015, 41.874439, 33.747574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.444958, 41.915222, 33.409000>,  <42.319523, 41.939690, 33.205856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.444958, 41.915222, 33.409000>,  <42.654015, 41.874439, 33.747574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.444958, 41.915222, 33.409000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077854, -0.994383, -0.071704,
		-0.848992, 0.028423, 0.527641,
		-0.522639, 0.101955, -0.846436,
		42.288166, 41.945808, 33.155071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.167233, 41.355854, 33.793724>,  <42.654015, 41.874439, 33.747574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.167233, 41.355854, 33.793724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.178196, 41.446945, 33.404388>,  <42.184776, 41.501598, 33.170788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.178196, 41.446945, 33.404388>,  <42.167233, 41.355854, 33.793724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.178196, 41.446945, 33.404388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140278, -0.963193, -0.229305,
		-0.989733, 0.142823, 0.005543,
		0.027411, 0.227729, -0.973339,
		42.186420, 41.515263, 33.112389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.568691, 40.984829, 33.442513>,  <42.167233, 41.355854, 33.793724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.568691, 40.984829, 33.442513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.847450, 41.087376, 33.174599>,  <42.014706, 41.148903, 33.013851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.847450, 41.087376, 33.174599>,  <41.568691, 40.984829, 33.442513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.847450, 41.087376, 33.174599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107373, -0.960696, -0.255997,
		-0.709085, 0.106487, -0.697035,
		0.696899, 0.256366, -0.669782,
		42.056519, 41.164284, 32.973663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400414, 40.671513, 32.751785>,  <41.568691, 40.984829, 33.442513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.400414, 40.671513, 32.751785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.795956, 40.730988, 32.754730>,  <42.033279, 40.766674, 32.756496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.795956, 40.730988, 32.754730>,  <41.400414, 40.671513, 32.751785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.795956, 40.730988, 32.754730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146682, -0.964680, -0.218808,
		-0.025435, 0.217449, -0.975740,
		0.988857, 0.148689, 0.007360,
		42.092613, 40.775593, 32.756939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.659351, 40.151314, 32.319977>,  <41.400414, 40.671513, 32.751785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.659351, 40.151314, 32.319977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.004101, 40.274883, 32.480843>,  <42.210949, 40.349026, 32.577362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.004101, 40.274883, 32.480843>,  <41.659351, 40.151314, 32.319977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.004101, 40.274883, 32.480843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417104, -0.882892, -0.215699,
		0.288438, 0.353651, -0.889795,
		0.861875, 0.308921, 0.402168,
		42.262665, 40.367561, 32.601494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.107834, 39.933910, 31.848835>,  <41.659351, 40.151314, 32.319977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.107834, 39.933910, 31.848835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.310089, 39.989723, 32.189388>,  <42.431442, 40.023212, 32.393723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.310089, 39.989723, 32.189388>,  <42.107834, 39.933910, 31.848835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.310089, 39.989723, 32.189388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359934, -0.930969, -0.061192,
		0.784075, 0.337384, -0.520960,
		0.505643, 0.139532, 0.851385,
		42.461781, 40.031582, 32.444805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.753307, 39.620735, 31.748772>,  <42.107834, 39.933910, 31.848835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.753307, 39.620735, 31.748772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.690212, 39.653969, 32.142365>,  <42.652355, 39.673908, 32.378521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.690212, 39.653969, 32.142365>,  <42.753307, 39.620735, 31.748772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.690212, 39.653969, 32.142365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366091, -0.920526, 0.136413,
		0.917113, 0.381744, 0.114783,
		-0.157736, 0.083085, 0.983980,
		42.642891, 39.678894, 32.437557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.296909, 39.260815, 32.033234>,  <42.753307, 39.620735, 31.748772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.296909, 39.260815, 32.033234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.014114, 39.288223, 32.314793>,  <42.844437, 39.304668, 32.483727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.014114, 39.288223, 32.314793>,  <43.296909, 39.260815, 32.033234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.014114, 39.288223, 32.314793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217152, -0.926186, 0.308262,
		0.673060, 0.370790, 0.639925,
		-0.706990, 0.068518, 0.703897,
		42.802017, 39.308777, 32.525963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.663025, 38.912861, 32.565868>,  <43.296909, 39.260815, 32.033234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.663025, 38.912861, 32.565868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.274349, 38.945110, 32.654709>,  <43.041145, 38.964458, 32.708012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.274349, 38.945110, 32.654709>,  <43.663025, 38.912861, 32.565868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.274349, 38.945110, 32.654709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011978, -0.955588, 0.294462,
		0.235973, 0.283465, 0.929497,
		-0.971686, 0.080619, 0.222098,
		42.982845, 38.969296, 32.721336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.683002, 38.560356, 33.163429>,  <43.663025, 38.912861, 32.565868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.683002, 38.560356, 33.163429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.301018, 38.583061, 33.046932>,  <43.071827, 38.596684, 32.977036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.301018, 38.583061, 33.046932>,  <43.683002, 38.560356, 33.163429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.301018, 38.583061, 33.046932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161608, -0.922677, 0.350070,
		-0.248850, 0.381371, 0.890297,
		-0.954964, 0.056765, -0.291241,
		43.014530, 38.600090, 32.959560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.327984, 38.326462, 33.705231>,  <43.683002, 38.560356, 33.163429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.327984, 38.326462, 33.705231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.083992, 38.281620, 33.391453>,  <42.937595, 38.254715, 33.203186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.083992, 38.281620, 33.391453>,  <43.327984, 38.326462, 33.705231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.083992, 38.281620, 33.391453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241671, -0.916464, 0.318888,
		-0.754665, 0.384094, 0.531933,
		-0.609980, -0.112100, -0.784448,
		42.900997, 38.247990, 33.156120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.803978, 37.877922, 33.889828>,  <43.327984, 38.326462, 33.705231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.803978, 37.877922, 33.889828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.771198, 37.850567, 33.492111>,  <42.751530, 37.834152, 33.253483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.771198, 37.850567, 33.492111>,  <42.803978, 37.877922, 33.889828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.771198, 37.850567, 33.492111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199240, -0.976380, 0.083578,
		-0.976518, 0.204951, 0.066390,
		-0.081952, -0.068388, -0.994287,
		42.746613, 37.830051, 33.193825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.295822, 37.532154, 33.838657>,  <42.803978, 37.877922, 33.889828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.295822, 37.532154, 33.838657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.478363, 37.482681, 33.486195>,  <42.587887, 37.452995, 33.274715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.478363, 37.482681, 33.486195>,  <42.295822, 37.532154, 33.838657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.478363, 37.482681, 33.486195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069963, -0.982238, 0.174106,
		-0.887044, -0.141103, -0.439595,
		0.456354, -0.123685, -0.881160,
		42.615269, 37.445576, 33.221848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.849213, 36.971283, 33.497791>,  <42.295822, 37.532154, 33.838657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.849213, 36.971283, 33.497791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.218761, 36.986511, 33.345470>,  <42.440491, 36.995647, 33.254078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.218761, 36.986511, 33.345470>,  <41.849213, 36.971283, 33.497791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.218761, 36.986511, 33.345470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079920, -0.992294, 0.094683,
		-0.374262, -0.117909, -0.919796,
		0.923873, 0.038074, -0.380801,
		42.495922, 36.997932, 33.231232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.869610, 36.492859, 33.037678>,  <41.849213, 36.971283, 33.497791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.869610, 36.492859, 33.037678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.259731, 36.548595, 33.106216>,  <42.493805, 36.582035, 33.147339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.259731, 36.548595, 33.106216>,  <41.869610, 36.492859, 33.037678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259731, 36.548595, 33.106216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143896, -0.989488, -0.014404,
		0.167537, 0.038704, -0.985106,
		0.975308, 0.139340, 0.171345,
		42.552322, 36.590397, 33.157619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.260902, 36.050922, 32.546215>,  <41.869610, 36.492859, 33.037678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.260902, 36.050922, 32.546215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.517834, 36.139183, 32.839806>,  <42.671993, 36.192139, 33.015961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.517834, 36.139183, 32.839806>,  <42.260902, 36.050922, 32.546215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.517834, 36.139183, 32.839806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430877, -0.895958, -0.107727,
		0.633844, 0.385451, -0.670574,
		0.642329, 0.220652, 0.733979,
		42.710533, 36.205379, 33.059998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.964062, 35.935574, 32.313717>,  <42.260902, 36.050922, 32.546215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.964062, 35.935574, 32.313717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.994877, 35.916279, 32.712063>,  <43.013367, 35.904701, 32.951069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.994877, 35.916279, 32.712063>,  <42.964062, 35.935574, 32.313717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.994877, 35.916279, 32.712063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595306, -0.799016, -0.084756,
		0.799797, 0.599371, -0.032841,
		0.077041, -0.048238, 0.995860,
		43.017990, 35.901806, 33.010822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.669346, 35.650360, 32.426147>,  <42.964062, 35.935574, 32.313717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.669346, 35.650360, 32.426147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.464550, 35.616833, 32.768105>,  <43.341671, 35.596718, 32.973278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.464550, 35.616833, 32.768105>,  <43.669346, 35.650360, 32.426147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.464550, 35.616833, 32.768105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436522, -0.882528, 0.174906,
		0.739807, 0.462730, 0.488434,
		-0.511991, -0.083816, 0.854892,
		43.310951, 35.591686, 33.024570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.156448, 35.530075, 32.893509>,  <43.669346, 35.650360, 32.426147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.156448, 35.530075, 32.893509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.812653, 35.370712, 33.021603>,  <43.606377, 35.275093, 33.098461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.812653, 35.370712, 33.021603>,  <44.156448, 35.530075, 32.893509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.812653, 35.370712, 33.021603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443882, -0.892410, 0.081075,
		0.253483, 0.211830, 0.943861,
		-0.859486, -0.398412, 0.320238,
		43.554806, 35.251190, 33.117676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.769352, 35.595837, 33.191528>,  <44.156448, 35.530075, 32.893509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.769352, 35.595837, 33.191528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.167374, 35.620022, 33.223068>,  <45.406185, 35.634533, 33.241993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.167374, 35.620022, 33.223068>,  <44.769352, 35.595837, 33.191528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.167374, 35.620022, 33.223068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072603, 0.984198, 0.161504,
		-0.067835, -0.166429, 0.983717,
		0.995051, 0.060466, 0.078846,
		45.465889, 35.638161, 33.246723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.007668, 36.148270, 33.693546>,  <44.769352, 35.595837, 33.191528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.007668, 36.148270, 33.693546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.360279, 36.085087, 33.515575>,  <45.571846, 36.047176, 33.408791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.360279, 36.085087, 33.515575>,  <45.007668, 36.148270, 33.693546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.360279, 36.085087, 33.515575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229025, 0.967138, 0.110420,
		0.412867, -0.199238, 0.888732,
		0.881526, -0.157953, -0.444929,
		45.624737, 36.037701, 33.382095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.467976, 36.567028, 34.094345>,  <45.007668, 36.148270, 33.693546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.467976, 36.567028, 34.094345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.628841, 36.502758, 33.733803>,  <45.725361, 36.464195, 33.517475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.628841, 36.502758, 33.733803>,  <45.467976, 36.567028, 34.094345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.628841, 36.502758, 33.733803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221009, 0.972405, -0.074730,
		0.888493, -0.169155, 0.426575,
		0.402163, -0.160674, -0.901359,
		45.749489, 36.454556, 33.463394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.061897, 36.850735, 34.152576>,  <45.467976, 36.567028, 34.094345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.061897, 36.850735, 34.152576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.992496, 36.835747, 33.758930>,  <45.950855, 36.826756, 33.522743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.992496, 36.835747, 33.758930>,  <46.061897, 36.850735, 34.152576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.992496, 36.835747, 33.758930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331604, 0.938704, -0.094203,
		0.927327, -0.342682, -0.150444,
		-0.173504, -0.037469, -0.984120,
		45.940445, 36.824505, 33.463696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.591595, 37.254017, 33.876984>,  <46.061897, 36.850735, 34.152576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.591595, 37.254017, 33.876984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.363766, 37.210232, 33.551136>,  <46.227070, 37.183960, 33.355625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.363766, 37.210232, 33.551136>,  <46.591595, 37.254017, 33.876984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.363766, 37.210232, 33.551136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216440, 0.936140, -0.277122,
		0.792934, -0.334157, -0.509504,
		-0.569569, -0.109462, -0.814622,
		46.192894, 37.177395, 33.306751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.049370, 37.405910, 33.351387>,  <46.591595, 37.254017, 33.876984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.049370, 37.405910, 33.351387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.671371, 37.449284, 33.227959>,  <46.444572, 37.475307, 33.153900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.671371, 37.449284, 33.227959>,  <47.049370, 37.405910, 33.351387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.671371, 37.449284, 33.227959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245463, 0.858635, -0.449992,
		0.216158, -0.500986, -0.838026,
		-0.944999, 0.108435, -0.308574,
		46.387871, 37.481815, 33.135387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.120575, 37.691082, 32.598106>,  <47.049370, 37.405910, 33.351387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.120575, 37.691082, 32.598106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.754414, 37.803337, 32.713547>,  <46.534718, 37.870689, 32.782810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.754414, 37.803337, 32.713547>,  <47.120575, 37.691082, 32.598106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.754414, 37.803337, 32.713547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232700, 0.953909, -0.189495,
		-0.328474, -0.106307, -0.938511,
		-0.915399, 0.280636, 0.288597,
		46.479794, 37.887527, 32.800125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.958931, 38.354584, 32.219398>,  <47.120575, 37.691082, 32.598106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.958931, 38.354584, 32.219398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.673203, 38.363354, 32.499187>,  <46.501766, 38.368614, 32.667061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.673203, 38.363354, 32.499187>,  <46.958931, 38.354584, 32.219398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.673203, 38.363354, 32.499187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011517, 0.999742, -0.019576,
		-0.699724, -0.005927, -0.714388,
		-0.714320, 0.021925, 0.699476,
		46.458908, 38.369930, 32.709030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.403175, 38.788315, 31.936966>,  <46.958931, 38.354584, 32.219398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.403175, 38.788315, 31.936966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.377655, 38.771599, 32.335800>,  <46.362343, 38.761570, 32.575100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.377655, 38.771599, 32.335800>,  <46.403175, 38.788315, 31.936966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.377655, 38.771599, 32.335800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004611, 0.999124, 0.041584,
		-0.997952, -0.001945, -0.063942,
		-0.063805, -0.041794, 0.997087,
		46.358513, 38.759060, 32.634926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.805370, 39.249935, 32.106567>,  <46.403175, 38.788315, 31.936966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.805370, 39.249935, 32.106567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.048473, 39.188095, 32.418140>,  <46.194336, 39.150990, 32.605083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.048473, 39.188095, 32.418140>,  <45.805370, 39.249935, 32.106567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.048473, 39.188095, 32.418140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091341, 0.987966, 0.124823,
		-0.788855, -0.004713, 0.614562,
		0.607754, -0.154602, 0.778931,
		46.230801, 39.141716, 32.651821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.453468, 39.571980, 32.516235>,  <45.805370, 39.249935, 32.106567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.453468, 39.571980, 32.516235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.824192, 39.581726, 32.666130>,  <46.046627, 39.587574, 32.756065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.824192, 39.581726, 32.666130>,  <45.453468, 39.571980, 32.516235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.824192, 39.581726, 32.666130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042128, 0.998340, 0.039271,
		-0.373154, -0.052184, 0.926301,
		0.926812, 0.024369, 0.374733,
		46.102234, 39.589035, 32.778549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.407127, 40.066662, 33.028156>,  <45.453468, 39.571980, 32.516235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.407127, 40.066662, 33.028156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.800262, 40.026516, 32.966255>,  <46.036144, 40.002430, 32.929115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.800262, 40.026516, 32.966255>,  <45.407127, 40.066662, 33.028156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.800262, 40.026516, 32.966255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136393, 0.960275, 0.243454,
		0.124175, -0.260384, 0.957487,
		0.982842, -0.100364, -0.154757,
		46.095116, 39.996407, 32.919827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.630253, 40.368164, 33.528496>,  <45.407127, 40.066662, 33.028156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.630253, 40.368164, 33.528496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.935417, 40.361752, 33.269974>,  <46.118515, 40.357903, 33.114861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.935417, 40.361752, 33.269974>,  <45.630253, 40.368164, 33.528496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.935417, 40.361752, 33.269974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147464, 0.977656, 0.149814,
		0.629466, -0.209601, 0.748224,
		0.762907, -0.016033, -0.646310,
		46.164288, 40.356941, 33.076080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.207680, 40.844952, 33.909393>,  <45.630253, 40.368164, 33.528496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.207680, 40.844952, 33.909393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.263988, 40.815872, 33.514446>,  <46.297775, 40.798424, 33.277477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.263988, 40.815872, 33.514446>,  <46.207680, 40.844952, 33.909393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.263988, 40.815872, 33.514446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190206, 0.980708, -0.045085,
		0.971599, -0.181457, 0.151887,
		0.140776, -0.072694, -0.987369,
		46.306221, 40.794064, 33.218235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.888649, 41.193497, 33.688488>,  <46.207680, 40.844952, 33.909393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.888649, 41.193497, 33.688488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.655861, 41.177162, 33.363613>,  <46.516190, 41.167362, 33.168690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.655861, 41.177162, 33.363613>,  <46.888649, 41.193497, 33.688488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.655861, 41.177162, 33.363613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233676, 0.948220, -0.215116,
		0.778915, -0.314979, -0.542292,
		-0.581969, -0.040836, -0.812185,
		46.481270, 41.164913, 33.119957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.085491, 41.796383, 33.349201>,  <46.888649, 41.193497, 33.688488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.085491, 41.796383, 33.349201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.734447, 41.720440, 33.173130>,  <46.523823, 41.674873, 33.067490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.734447, 41.720440, 33.173130>,  <47.085491, 41.796383, 33.349201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.734447, 41.720440, 33.173130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092924, 0.968187, -0.232332,
		0.470283, -0.162994, -0.867333,
		-0.877610, -0.189858, -0.440176,
		46.471165, 41.663483, 33.041077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.073940, 42.054485, 32.700043>,  <47.085491, 41.796383, 33.349201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.073940, 42.054485, 32.700043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.681526, 41.996666, 32.751705>,  <46.446079, 41.961975, 32.782703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.681526, 41.996666, 32.751705>,  <47.073940, 42.054485, 32.700043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.681526, 41.996666, 32.751705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170079, 0.961521, -0.215757,
		-0.093000, -0.233631, -0.967867,
		-0.981032, -0.144549, 0.129157,
		46.387215, 41.953300, 32.790451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.664261, 42.467491, 32.222492>,  <47.073940, 42.054485, 32.700043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.664261, 42.467491, 32.222492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.390285, 42.418983, 32.509869>,  <46.225899, 42.389877, 32.682293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.390285, 42.418983, 32.509869>,  <46.664261, 42.467491, 32.222492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.390285, 42.418983, 32.509869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362947, 0.911791, -0.192113,
		-0.631766, -0.392340, -0.668536,
		-0.684939, -0.121273, 0.718437,
		46.184803, 42.382603, 32.725399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.163910, 42.588951, 31.827032>,  <46.664261, 42.467491, 32.222492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.163910, 42.588951, 31.827032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.056316, 42.631828, 32.209896>,  <45.991760, 42.657555, 32.439613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.056316, 42.631828, 32.209896>,  <46.163910, 42.588951, 31.827032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.056316, 42.631828, 32.209896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242467, 0.954245, -0.175004,
		-0.932126, -0.279153, -0.230685,
		-0.268983, 0.107192, 0.957161,
		45.975620, 42.663986, 32.497044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.497536, 42.926144, 31.759060>,  <46.163910, 42.588951, 31.827032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.497536, 42.926144, 31.759060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.608089, 42.993454, 32.137539>,  <45.674423, 43.033840, 32.364628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.608089, 42.993454, 32.137539>,  <45.497536, 42.926144, 31.759060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.608089, 42.993454, 32.137539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390030, 0.919466, -0.049595,
		-0.878343, -0.355339, 0.319763,
		0.276388, 0.168278, 0.946199,
		45.691006, 43.043938, 32.421398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.917652, 43.127674, 32.117172>,  <45.497536, 42.926144, 31.759060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.917652, 43.127674, 32.117172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.215385, 43.270962, 32.342613>,  <45.394024, 43.356934, 32.477879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.215385, 43.270962, 32.342613>,  <44.917652, 43.127674, 32.117172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.215385, 43.270962, 32.342613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378609, 0.921578, -0.085723,
		-0.550115, -0.149580, 0.821583,
		0.744331, 0.358216, 0.563607,
		45.438686, 43.378426, 32.511696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.400307, 38.003189, 40.344814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104378, 38.271030, 40.318588>,  <39.926819, 38.431736, 40.302853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104378, 38.271030, 40.318588>,  <40.400307, 38.003189, 40.344814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104378, 38.271030, 40.318588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000440, -0.096970, -0.995287,
		-0.672801, -0.736365, 0.071446,
		-0.739823, 0.669599, -0.065566,
		39.882431, 38.471909, 40.298920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798351, 37.697205, 40.052700>,  <40.400307, 38.003189, 40.344814>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798351, 37.697205, 40.052700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714886, 38.080753, 39.975723>,  <39.664806, 38.310883, 39.929539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714886, 38.080753, 39.975723>,  <39.798351, 37.697205, 40.052700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714886, 38.080753, 39.975723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015629, -0.193480, -0.980980,
		-0.977864, -0.207698, 0.025386,
		-0.208659, 0.958867, -0.192443,
		39.652287, 38.368412, 39.917992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165806, 37.752514, 39.615185>,  <39.798351, 37.697205, 40.052700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165806, 37.752514, 39.615185> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380039, 38.083946, 39.549934>,  <39.508579, 38.282806, 39.510784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380039, 38.083946, 39.549934>,  <39.165806, 37.752514, 39.615185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380039, 38.083946, 39.549934> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187546, -0.071638, -0.979640,
		-0.823393, 0.555274, 0.117028,
		0.535585, 0.828577, -0.163125,
		39.540714, 38.332520, 39.500996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833637, 38.097443, 39.026787>,  <39.165806, 37.752514, 39.615185>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833637, 38.097443, 39.026787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186745, 38.285286, 39.032314>,  <39.398609, 38.397991, 39.035629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186745, 38.285286, 39.032314>,  <38.833637, 38.097443, 39.026787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186745, 38.285286, 39.032314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037207, 0.099201, -0.994372,
		-0.468336, 0.877284, 0.105044,
		0.882766, 0.469609, 0.013818,
		39.451576, 38.426170, 39.036461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686749, 38.629333, 38.559959>,  <38.833637, 38.097443, 39.026787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686749, 38.629333, 38.559959> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082256, 38.623272, 38.619423>,  <39.319561, 38.619637, 38.655102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082256, 38.623272, 38.619423>,  <38.686749, 38.629333, 38.559959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082256, 38.623272, 38.619423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148650, 0.201082, -0.968230,
		-0.015219, 0.979457, 0.201077,
		0.988773, -0.015154, 0.148657,
		39.378887, 38.618725, 38.664021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004738, 39.235813, 38.253647>,  <38.686749, 38.629333, 38.559959>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004738, 39.235813, 38.253647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294731, 38.960953, 38.272472>,  <39.468727, 38.796036, 38.283768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294731, 38.960953, 38.272472>,  <39.004738, 39.235813, 38.253647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294731, 38.960953, 38.272472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123955, 0.062960, -0.990288,
		0.677518, 0.723779, 0.130822,
		0.724986, -0.687154, 0.047060,
		39.512226, 38.754807, 38.286591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.390732, 39.407982, 37.712612>,  <39.004738, 39.235813, 38.253647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.390732, 39.407982, 37.712612> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501194, 39.040150, 37.824409>,  <39.567471, 38.819450, 37.891487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501194, 39.040150, 37.824409>,  <39.390732, 39.407982, 37.712612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501194, 39.040150, 37.824409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378465, -0.163262, -0.911104,
		0.883461, 0.357383, 0.302943,
		0.276154, -0.919578, 0.279492,
		39.584042, 38.764275, 37.908257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185707, 39.341682, 37.650986>,  <39.390732, 39.407982, 37.712612>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185707, 39.341682, 37.650986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008995, 38.985188, 37.609947>,  <39.902969, 38.771290, 37.585323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008995, 38.985188, 37.609947>,  <40.185707, 39.341682, 37.650986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.008995, 38.985188, 37.609947> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386465, -0.085854, -0.918299,
		0.809615, -0.445335, 0.382361,
		-0.441778, -0.891239, -0.102598,
		39.876461, 38.717815, 37.579166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689308, 38.736923, 37.417843>,  <40.185707, 39.341682, 37.650986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.689308, 38.736923, 37.417843> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318375, 38.617897, 37.327061>,  <40.095814, 38.546482, 37.272591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318375, 38.617897, 37.327061>,  <40.689308, 38.736923, 37.417843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.318375, 38.617897, 37.327061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313892, -0.288221, -0.904655,
		0.203785, -0.910155, 0.360681,
		-0.927331, -0.297570, -0.226955,
		40.040176, 38.528625, 37.258976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811913, 38.088047, 37.087387>,  <40.689308, 38.736923, 37.417843>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811913, 38.088047, 37.087387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446434, 38.211998, 36.982208>,  <40.227146, 38.286369, 36.919102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446434, 38.211998, 36.982208>,  <40.811913, 38.088047, 37.087387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446434, 38.211998, 36.982208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169977, -0.296329, -0.939839,
		-0.369153, -0.903419, 0.218082,
		-0.913692, 0.309876, -0.262952,
		40.172325, 38.304958, 36.903324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.588581, 37.586044, 36.649609>,  <40.811913, 38.088047, 37.087387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.588581, 37.586044, 36.649609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349907, 37.889038, 36.543640>,  <40.206703, 38.070835, 36.480061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349907, 37.889038, 36.543640>,  <40.588581, 37.586044, 36.649609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.349907, 37.889038, 36.543640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102754, -0.255289, -0.961389,
		-0.795869, -0.600869, 0.074493,
		-0.596687, 0.757485, -0.264918,
		40.170902, 38.116283, 36.464165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966240, 37.416645, 36.269207>,  <40.588581, 37.586044, 36.649609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966240, 37.416645, 36.269207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130764, 37.772503, 36.189861>,  <40.229481, 37.986019, 36.142254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130764, 37.772503, 36.189861>,  <39.966240, 37.416645, 36.269207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130764, 37.772503, 36.189861> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206543, -0.302937, -0.930360,
		-0.887784, 0.341700, -0.308352,
		0.411315, 0.889646, -0.198367,
		40.254158, 38.039398, 36.130352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916126, 36.676987, 35.854588>,  <39.966240, 37.416645, 36.269207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916126, 36.676987, 35.854588> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250717, 36.574345, 35.660904>,  <40.451473, 36.512760, 35.544693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250717, 36.574345, 35.660904>,  <39.916126, 36.676987, 35.854588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250717, 36.574345, 35.660904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230484, 0.636894, -0.735692,
		0.497171, 0.726993, 0.473605,
		0.836479, -0.256607, -0.484206,
		40.501659, 36.497364, 35.515644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626118, 36.110405, 36.276344>,  <39.916126, 36.676987, 35.854588>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626118, 36.110405, 36.276344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706436, 35.778530, 36.067997>,  <39.754627, 35.579407, 35.942989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706436, 35.778530, 36.067997>,  <39.626118, 36.110405, 36.276344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706436, 35.778530, 36.067997> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803613, -0.443585, 0.396784,
		-0.560254, 0.338899, -0.755819,
		0.200800, -0.829687, -0.520864,
		39.766678, 35.529625, 35.911739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082989, 36.038830, 35.802792>,  <39.626118, 36.110405, 36.276344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082989, 36.038830, 35.802792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272144, 35.716358, 35.945034>,  <39.385635, 35.522877, 36.030380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272144, 35.716358, 35.945034>,  <39.082989, 36.038830, 35.802792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272144, 35.716358, 35.945034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817587, -0.250990, 0.518224,
		-0.328528, -0.535797, -0.777811,
		0.472886, -0.806180, 0.355603,
		39.414009, 35.474503, 36.051716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658630, 35.487507, 35.629448>,  <39.082989, 36.038830, 35.802792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658630, 35.487507, 35.629448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887196, 35.385769, 35.941551>,  <39.024334, 35.324726, 36.128811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887196, 35.385769, 35.941551>,  <38.658630, 35.487507, 35.629448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887196, 35.385769, 35.941551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818387, -0.105809, 0.564842,
		-0.061103, -0.961310, -0.268608,
		0.571410, -0.254339, 0.780258,
		39.058617, 35.309467, 36.175629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327232, 34.868225, 35.886768>,  <38.658630, 35.487507, 35.629448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327232, 34.868225, 35.886768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549301, 35.045151, 36.168522>,  <38.682541, 35.151306, 36.337574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549301, 35.045151, 36.168522>,  <38.327232, 34.868225, 35.886768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549301, 35.045151, 36.168522> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814248, 0.116262, 0.568756,
		0.169672, -0.889296, 0.424693,
		0.555168, 0.442308, 0.704381,
		38.715851, 35.177845, 36.379837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134415, 34.501842, 36.479599>,  <38.327232, 34.868225, 35.886768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134415, 34.501842, 36.479599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305672, 34.838375, 36.611568>,  <38.408424, 35.040295, 36.690750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305672, 34.838375, 36.611568>,  <38.134415, 34.501842, 36.479599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305672, 34.838375, 36.611568> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710038, 0.087320, 0.698729,
		0.559056, -0.533413, 0.634765,
		0.428139, 0.841335, 0.329927,
		38.434113, 35.090775, 36.710548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119217, 34.488506, 37.189377>,  <38.134415, 34.501842, 36.479599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119217, 34.488506, 37.189377> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192036, 34.879639, 37.147987>,  <38.235725, 35.114319, 37.123154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192036, 34.879639, 37.147987>,  <38.119217, 34.488506, 37.189377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192036, 34.879639, 37.147987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634471, 0.197207, 0.747366,
		0.751204, -0.070400, 0.656306,
		0.182043, 0.977831, -0.103476,
		38.246647, 35.172989, 37.116943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330418, 34.726292, 37.794518>,  <38.119217, 34.488506, 37.189377>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330418, 34.726292, 37.794518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195610, 35.048279, 37.599190>,  <38.114727, 35.241470, 37.481995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195610, 35.048279, 37.599190>,  <38.330418, 34.726292, 37.794518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195610, 35.048279, 37.599190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493864, 0.290429, 0.819603,
		0.801572, 0.517381, 0.299664,
		-0.337016, 0.804964, -0.488316,
		38.094505, 35.289768, 37.452694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677795, 35.312580, 38.080147>,  <38.330418, 34.726292, 37.794518>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677795, 35.312580, 38.080147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334743, 35.462967, 37.939796>,  <38.128910, 35.553200, 37.855587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334743, 35.462967, 37.939796>,  <38.677795, 35.312580, 38.080147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334743, 35.462967, 37.939796> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297661, 0.193463, 0.934864,
		0.419359, 0.906212, -0.054010,
		-0.857634, 0.375967, -0.350875,
		38.077454, 35.575756, 37.834534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492027, 35.804279, 38.473454>,  <38.677795, 35.312580, 38.080147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492027, 35.804279, 38.473454> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126366, 35.813179, 38.311554>,  <37.906967, 35.818520, 38.214417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126366, 35.813179, 38.311554>,  <38.492027, 35.804279, 38.473454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126366, 35.813179, 38.311554> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392082, 0.204910, 0.896819,
		0.102888, 0.978528, -0.178598,
		-0.914159, 0.022247, -0.404746,
		37.852119, 35.819855, 38.190132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292736, 36.452969, 38.605202>,  <38.492027, 35.804279, 38.473454>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292736, 36.452969, 38.605202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974648, 36.220142, 38.537289>,  <37.783794, 36.080444, 38.496540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974648, 36.220142, 38.537289>,  <38.292736, 36.452969, 38.605202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974648, 36.220142, 38.537289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440885, 0.362879, 0.820938,
		-0.416232, 0.727678, -0.545193,
		-0.795218, -0.582069, -0.169781,
		37.736084, 36.045521, 38.486355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758251, 36.687183, 39.010323>,  <38.292736, 36.452969, 38.605202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758251, 36.687183, 39.010323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548199, 36.350498, 38.960106>,  <37.422169, 36.148487, 38.929974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548199, 36.350498, 38.960106>,  <37.758251, 36.687183, 39.010323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548199, 36.350498, 38.960106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406157, 0.118245, 0.906121,
		-0.747845, 0.526824, -0.403961,
		-0.525133, -0.841709, -0.125544,
		37.390659, 36.097984, 38.922443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027084, 36.739956, 39.336464>,  <37.758251, 36.687183, 39.010323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027084, 36.739956, 39.336464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081638, 36.344025, 39.320232>,  <37.114372, 36.106468, 39.310493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081638, 36.344025, 39.320232>,  <37.027084, 36.739956, 39.336464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081638, 36.344025, 39.320232> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503097, -0.104494, 0.857890,
		-0.853400, -0.096592, -0.512229,
		0.136389, -0.989824, -0.040580,
		37.122555, 36.047077, 39.308060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476460, 36.468307, 39.538071>,  <37.027084, 36.739956, 39.336464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476460, 36.468307, 39.538071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708672, 36.151485, 39.613579>,  <36.848000, 35.961391, 39.658882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708672, 36.151485, 39.613579>,  <36.476460, 36.468307, 39.538071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708672, 36.151485, 39.613579> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522207, -0.184297, 0.832667,
		-0.624730, -0.581962, -0.520607,
		0.580527, -0.792057, 0.188769,
		36.882832, 35.913868, 39.670208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030090, 35.881462, 39.710125>,  <36.476460, 36.468307, 39.538071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030090, 35.881462, 39.710125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393452, 35.850128, 39.874405>,  <36.611469, 35.831329, 39.972973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393452, 35.850128, 39.874405>,  <36.030090, 35.881462, 39.710125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393452, 35.850128, 39.874405> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416906, -0.243988, 0.875591,
		0.031616, -0.966609, -0.254296,
		0.908400, -0.078335, 0.410699,
		36.665970, 35.826626, 39.997616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955330, 35.395142, 40.262344>,  <36.030090, 35.881462, 39.710125>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955330, 35.395142, 40.262344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326229, 35.510532, 40.357841>,  <36.548767, 35.579765, 40.415138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326229, 35.510532, 40.357841>,  <35.955330, 35.395142, 40.262344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326229, 35.510532, 40.357841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171880, -0.238535, 0.955802,
		0.332673, -0.927299, -0.171597,
		0.927246, 0.288476, 0.238738,
		36.604404, 35.597076, 40.429462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803459, 34.575512, 40.345734>,  <35.955330, 35.395142, 40.262344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803459, 34.575512, 40.345734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418072, 34.486176, 40.404850>,  <35.186840, 34.432571, 40.440319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418072, 34.486176, 40.404850>,  <35.803459, 34.575512, 40.345734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418072, 34.486176, 40.404850> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178010, 0.121753, -0.976467,
		0.200098, -0.967105, -0.157064,
		-0.963470, -0.223348, 0.147791,
		35.129032, 34.419174, 40.449188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566341, 34.073853, 39.791027>,  <35.803459, 34.575512, 40.345734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566341, 34.073853, 39.791027> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230133, 34.270321, 39.882477>,  <35.028408, 34.388203, 39.937347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230133, 34.270321, 39.882477>,  <35.566341, 34.073853, 39.791027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230133, 34.270321, 39.882477> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141561, 0.208226, -0.967782,
		-0.522954, -0.845808, -0.105488,
		-0.840524, 0.491172, 0.228625,
		34.977978, 34.417671, 39.951065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028313, 33.900742, 39.296429>,  <35.566341, 34.073853, 39.791027>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028313, 33.900742, 39.296429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863522, 34.236359, 39.438572>,  <34.764645, 34.437729, 39.523857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863522, 34.236359, 39.438572>,  <35.028313, 33.900742, 39.296429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863522, 34.236359, 39.438572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460782, 0.144609, -0.875653,
		-0.786099, -0.524493, 0.327040,
		-0.411981, 0.839044, 0.355354,
		34.739925, 34.488071, 39.545177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269939, 33.871170, 39.095493>,  <35.028313, 33.900742, 39.296429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269939, 33.871170, 39.095493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355343, 34.254852, 39.169613>,  <34.406586, 34.485062, 39.214085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355343, 34.254852, 39.169613>,  <34.269939, 33.871170, 39.095493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355343, 34.254852, 39.169613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627947, 0.280046, -0.726125,
		-0.748396, 0.038676, 0.662123,
		0.213509, 0.959207, 0.185299,
		34.419395, 34.542614, 39.225204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660339, 34.188179, 38.892490>,  <34.269939, 33.871170, 39.095493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660339, 34.188179, 38.892490> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916824, 34.494354, 38.914188>,  <34.070717, 34.678059, 38.927208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916824, 34.494354, 38.914188>,  <33.660339, 34.188179, 38.892490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916824, 34.494354, 38.914188> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500523, 0.470778, -0.726529,
		-0.581652, 0.438712, 0.684991,
		0.641216, 0.765441, 0.054243,
		34.109188, 34.723988, 38.930462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311947, 34.739704, 38.874454>,  <33.660339, 34.188179, 38.892490>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311947, 34.739704, 38.874454> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659172, 34.911316, 38.774536>,  <33.867508, 35.014282, 38.714584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659172, 34.911316, 38.774536>,  <33.311947, 34.739704, 38.874454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659172, 34.911316, 38.774536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436341, 0.419342, -0.796090,
		-0.236797, 0.800053, 0.551219,
		0.868063, 0.429031, -0.249797,
		33.919590, 35.040024, 38.699596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199211, 35.469196, 38.900021>,  <33.311947, 34.739704, 38.874454>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199211, 35.469196, 38.900021> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500938, 35.386162, 38.650887>,  <33.681973, 35.336342, 38.501408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500938, 35.386162, 38.650887>,  <33.199211, 35.469196, 38.900021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500938, 35.386162, 38.650887> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519959, 0.390301, -0.759808,
		0.400816, 0.896980, 0.186474,
		0.754314, -0.207585, -0.622832,
		33.727234, 35.323887, 38.464039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.231853, 36.055862, 38.486279>,  <33.199211, 35.469196, 38.900021>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.231853, 36.055862, 38.486279> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434448, 35.784122, 38.273876>,  <33.556004, 35.621078, 38.146435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434448, 35.784122, 38.273876>,  <33.231853, 36.055862, 38.486279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434448, 35.784122, 38.273876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556521, 0.212832, -0.803111,
		0.658605, 0.702276, -0.270274,
		0.506483, -0.679346, -0.531003,
		33.586391, 35.580318, 38.114574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371773, 36.464039, 37.814827>,  <33.231853, 36.055862, 38.486279>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371773, 36.464039, 37.814827> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411823, 36.068012, 37.775352>,  <33.435856, 35.830395, 37.751667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411823, 36.068012, 37.775352>,  <33.371773, 36.464039, 37.814827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411823, 36.068012, 37.775352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633073, 0.013125, -0.773981,
		0.767589, 0.139976, -0.625471,
		0.100130, -0.990068, -0.098690,
		33.441864, 35.770992, 37.745747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581482, 36.247185, 37.064426>,  <33.371773, 36.464039, 37.814827>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581482, 36.247185, 37.064426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406662, 35.919151, 37.212185>,  <33.301769, 35.722332, 37.300842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406662, 35.919151, 37.212185>,  <33.581482, 36.247185, 37.064426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406662, 35.919151, 37.212185> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692681, 0.044900, -0.719845,
		0.573746, -0.570482, -0.587678,
		-0.437045, -0.820082, 0.369401,
		33.275547, 35.673126, 37.323006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565487, 35.833004, 36.530468>,  <33.581482, 36.247185, 37.064426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565487, 35.833004, 36.530468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292885, 35.664200, 36.769619>,  <33.129322, 35.562916, 36.913109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292885, 35.664200, 36.769619>,  <33.565487, 35.833004, 36.530468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292885, 35.664200, 36.769619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626275, -0.086333, -0.774807,
		0.378592, -0.902472, -0.205457,
		-0.681504, -0.422009, 0.597881,
		33.088432, 35.537598, 36.948982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399567, 35.354256, 36.083248>,  <33.565487, 35.833004, 36.530468>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399567, 35.354256, 36.083248> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094753, 35.378204, 36.341152>,  <32.911865, 35.392574, 36.495895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094753, 35.378204, 36.341152>,  <33.399567, 35.354256, 36.083248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094753, 35.378204, 36.341152> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632849, -0.279701, -0.721990,
		0.137113, -0.958218, 0.251033,
		-0.762038, 0.059872, 0.644759,
		32.866142, 35.396164, 36.534580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.586792, 33.265373, 43.633301> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.285690, 33.516293, 43.713158>,  <36.105030, 33.666843, 43.761070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.285690, 33.516293, 43.713158>,  <36.586792, 33.265373, 43.633301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285690, 33.516293, 43.713158> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327889, -0.094303, -0.939998,
		-0.570830, -0.773050, 0.276671,
		-0.752756, 0.627296, 0.199643,
		36.059864, 33.704483, 43.773052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004456, 32.969402, 43.209255>,  <36.586792, 33.265373, 43.633301>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004456, 32.969402, 43.209255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.873154, 33.336658, 43.298038>,  <35.794373, 33.557011, 43.351311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.873154, 33.336658, 43.298038>,  <36.004456, 32.969402, 43.209255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873154, 33.336658, 43.298038> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514600, 0.023227, -0.857116,
		-0.792107, -0.395577, 0.464850,
		-0.328259, 0.918140, 0.221962,
		35.774677, 33.612099, 43.364628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238468, 32.948910, 43.155560>,  <36.004456, 32.969402, 43.209255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238468, 32.948910, 43.155560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.352871, 33.329578, 43.110809>,  <35.421513, 33.557980, 43.083958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.352871, 33.329578, 43.110809>,  <35.238468, 32.948910, 43.155560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352871, 33.329578, 43.110809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466268, 0.036217, -0.883902,
		-0.837136, 0.304962, 0.454094,
		0.286003, 0.951675, -0.111876,
		35.438671, 33.615082, 43.077248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627598, 33.276279, 43.021847>,  <35.238468, 32.948910, 43.155560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627598, 33.276279, 43.021847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.949093, 33.465107, 42.876984>,  <35.141991, 33.578403, 42.790066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.949093, 33.465107, 42.876984>,  <34.627598, 33.276279, 43.021847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949093, 33.465107, 42.876984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494658, 0.191907, -0.847635,
		-0.330641, 0.860420, 0.387755,
		0.803735, 0.472069, -0.362161,
		35.190212, 33.606728, 42.768333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333706, 33.575806, 42.442310>,  <34.627598, 33.276279, 43.021847>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333706, 33.575806, 42.442310> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.719723, 33.648106, 42.366394>,  <34.951332, 33.691486, 42.320843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.719723, 33.648106, 42.366394>,  <34.333706, 33.575806, 42.442310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719723, 33.648106, 42.366394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255136, 0.482176, -0.838100,
		-0.059971, 0.857226, 0.511436,
		0.965044, 0.180747, -0.189793,
		35.009235, 33.702332, 42.309456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453609, 34.280228, 42.286472>,  <34.333706, 33.575806, 42.442310>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453609, 34.280228, 42.286472> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.784691, 34.125122, 42.124218>,  <34.983341, 34.032059, 42.026863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.784691, 34.125122, 42.124218>,  <34.453609, 34.280228, 42.286472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784691, 34.125122, 42.124218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169609, 0.516180, -0.839518,
		0.534918, 0.763674, 0.361477,
		0.827705, -0.387763, -0.405640,
		35.033001, 34.008793, 42.002525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816818, 34.855637, 41.999699>,  <34.453609, 34.280228, 42.286472>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816818, 34.855637, 41.999699> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.926991, 34.517792, 41.816063>,  <34.993092, 34.315083, 41.705883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.926991, 34.517792, 41.816063>,  <34.816818, 34.855637, 41.999699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926991, 34.517792, 41.816063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110547, 0.446566, -0.887896,
		0.954944, 0.295303, 0.029628,
		0.275429, -0.844615, -0.459091,
		35.009621, 34.264408, 41.678337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203049, 35.143936, 41.475056>,  <34.816818, 34.855637, 41.999699>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203049, 35.143936, 41.475056> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.150585, 34.755684, 41.394386>,  <35.119106, 34.522732, 41.345985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.150585, 34.755684, 41.394386>,  <35.203049, 35.143936, 41.475056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150585, 34.755684, 41.394386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224252, 0.227204, -0.947676,
		0.965665, -0.079068, -0.247465,
		-0.131156, -0.970632, -0.201672,
		35.111237, 34.464493, 41.333885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651215, 34.983788, 40.933922>,  <35.203049, 35.143936, 41.475056>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651215, 34.983788, 40.933922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.378857, 34.694168, 40.889877>,  <35.215443, 34.520397, 40.863449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.378857, 34.694168, 40.889877>,  <35.651215, 34.983788, 40.933922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378857, 34.694168, 40.889877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066860, 0.088273, -0.993850,
		0.729320, -0.684072, -0.011695,
		-0.680898, -0.724053, -0.110116,
		35.174587, 34.476952, 40.856842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373402, 34.740688, 40.949703>,  <35.651215, 34.983788, 40.933922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373402, 34.740688, 40.949703> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.586296, 35.079147, 40.938675>,  <36.714035, 35.282223, 40.932056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.586296, 35.079147, 40.938675>,  <36.373402, 34.740688, 40.949703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586296, 35.079147, 40.938675> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039549, 0.057380, 0.997569,
		0.845670, -0.529854, 0.064004,
		0.532238, 0.846145, -0.027569,
		36.745968, 35.332993, 40.930405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789288, 34.716324, 41.553532>,  <36.373402, 34.740688, 40.949703>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789288, 34.716324, 41.553532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.822464, 35.102570, 41.454971>,  <36.842369, 35.334316, 41.395836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.822464, 35.102570, 41.454971>,  <36.789288, 34.716324, 41.553532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822464, 35.102570, 41.454971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031700, 0.244573, 0.969113,
		0.996051, -0.088186, -0.010326,
		0.082936, 0.965612, -0.246403,
		36.847343, 35.392254, 41.381050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384785, 34.971500, 42.017998>,  <36.789288, 34.716324, 41.553532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384785, 34.971500, 42.017998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.200649, 35.295460, 41.872581>,  <37.090168, 35.489834, 41.785332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.200649, 35.295460, 41.872581>,  <37.384785, 34.971500, 42.017998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200649, 35.295460, 41.872581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153057, 0.475783, 0.866143,
		0.874450, 0.343076, -0.342981,
		-0.460337, 0.809895, -0.363538,
		37.062550, 35.538429, 41.763519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803120, 35.557671, 41.962372>,  <37.384785, 34.971500, 42.017998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803120, 35.557671, 41.962372> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.427654, 35.692627, 41.990871>,  <37.202374, 35.773602, 42.007973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.427654, 35.692627, 41.990871>,  <37.803120, 35.557671, 41.962372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427654, 35.692627, 41.990871> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253386, 0.534704, 0.806156,
		0.233894, 0.774762, -0.587398,
		-0.938663, 0.337394, 0.071250,
		37.146057, 35.793846, 42.012245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879341, 36.289265, 42.242962>,  <37.803120, 35.557671, 41.962372>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879341, 36.289265, 42.242962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.516109, 36.136093, 42.310802>,  <37.298172, 36.044189, 42.351509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.516109, 36.136093, 42.310802>,  <37.879341, 36.289265, 42.242962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516109, 36.136093, 42.310802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108414, 0.176234, 0.978360,
		-0.404531, 0.906812, -0.118519,
		-0.908075, -0.382928, 0.169603,
		37.243687, 36.021214, 42.361683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610672, 36.723267, 42.815426>,  <37.879341, 36.289265, 42.242962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610672, 36.723267, 42.815426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.421608, 36.370789, 42.811699>,  <37.308170, 36.159302, 42.809464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.421608, 36.370789, 42.811699>,  <37.610672, 36.723267, 42.815426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421608, 36.370789, 42.811699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023016, 0.001775, 0.999734,
		-0.880942, 0.472752, -0.021120,
		-0.472664, -0.881194, -0.009317,
		37.279808, 36.106430, 42.808903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312176, 36.799850, 43.334679>,  <37.610672, 36.723267, 42.815426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312176, 36.799850, 43.334679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.287853, 36.402332, 43.297443>,  <37.273258, 36.163822, 43.275101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.287853, 36.402332, 43.297443>,  <37.312176, 36.799850, 43.334679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287853, 36.402332, 43.297443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134814, -0.084230, 0.987284,
		-0.989003, 0.072587, -0.128856,
		-0.060811, -0.993799, -0.093090,
		37.269611, 36.104191, 43.269516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834988, 36.624817, 43.818451>,  <37.312176, 36.799850, 43.334679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834988, 36.624817, 43.818451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.060516, 36.310135, 43.717896>,  <37.195835, 36.121326, 43.657562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.060516, 36.310135, 43.717896>,  <36.834988, 36.624817, 43.818451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060516, 36.310135, 43.717896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134657, -0.212749, 0.967784,
		-0.814846, -0.579509, -0.014016,
		0.563821, -0.786707, -0.251392,
		37.229664, 36.074123, 43.642479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572517, 36.004486, 44.256435>,  <36.834988, 36.624817, 43.818451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572517, 36.004486, 44.256435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.942627, 35.925171, 44.127102>,  <37.164692, 35.877583, 44.049503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.942627, 35.925171, 44.127102>,  <36.572517, 36.004486, 44.256435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942627, 35.925171, 44.127102> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234817, -0.369987, 0.898872,
		-0.297866, -0.907629, -0.295779,
		0.925277, -0.198289, -0.323333,
		37.220211, 35.865685, 44.030102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628063, 35.272892, 44.502617>,  <36.572517, 36.004486, 44.256435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628063, 35.272892, 44.502617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.964024, 35.478374, 44.432560>,  <37.165600, 35.601665, 44.390526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.964024, 35.478374, 44.432560>,  <36.628063, 35.272892, 44.502617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964024, 35.478374, 44.432560> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216362, -0.020958, 0.976088,
		0.497753, -0.857709, -0.128749,
		0.839899, 0.513708, -0.175144,
		37.215992, 35.632488, 44.380016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110096, 35.006821, 44.904499>,  <36.628063, 35.272892, 44.502617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110096, 35.006821, 44.904499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.313755, 35.338825, 44.813423>,  <37.435951, 35.538029, 44.758778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.313755, 35.338825, 44.813423>,  <37.110096, 35.006821, 44.904499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313755, 35.338825, 44.813423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372023, 0.026325, 0.927850,
		0.776125, -0.557118, -0.295381,
		0.509146, 0.830016, -0.227693,
		37.466499, 35.587830, 44.745117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776501, 34.809845, 45.066597>,  <37.110096, 35.006821, 44.904499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776501, 34.809845, 45.066597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.742271, 35.207912, 45.085815>,  <37.721733, 35.446754, 45.097347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.742271, 35.207912, 45.085815>,  <37.776501, 34.809845, 45.066597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742271, 35.207912, 45.085815> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457336, -0.003605, 0.889287,
		0.885167, 0.098068, -0.454820,
		-0.085571, 0.995173, 0.048041,
		37.716599, 35.506466, 45.100227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452904, 35.087189, 45.292702>,  <37.776501, 34.809845, 45.066597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452904, 35.087189, 45.292702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.168739, 35.356178, 45.375740>,  <37.998241, 35.517570, 45.425564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.168739, 35.356178, 45.375740>,  <38.452904, 35.087189, 45.292702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168739, 35.356178, 45.375740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315270, 0.040365, 0.948143,
		0.629218, 0.739023, -0.240685,
		-0.710415, 0.672470, 0.207593,
		37.955616, 35.557919, 45.438019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742886, 35.428715, 45.722973>,  <38.452904, 35.087189, 45.292702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742886, 35.428715, 45.722973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.370426, 35.564556, 45.776085>,  <38.146950, 35.646061, 45.807953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.370426, 35.564556, 45.776085>,  <38.742886, 35.428715, 45.722973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370426, 35.564556, 45.776085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143588, 0.006780, 0.989614,
		0.335174, 0.940545, -0.055075,
		-0.931150, 0.339601, 0.132778,
		38.091080, 35.666435, 45.815918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.697773, 38.654545, 45.706146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.908695, 38.316380, 45.740131>,  <35.035248, 38.113480, 45.760521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.908695, 38.316380, 45.740131>,  <34.697773, 38.654545, 45.706146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908695, 38.316380, 45.740131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271033, 0.072594, -0.959829,
		0.805287, 0.529151, 0.267415,
		0.527308, -0.845416, 0.084958,
		35.066887, 38.062756, 45.765617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347759, 38.796917, 45.453732>,  <34.697773, 38.654545, 45.706146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347759, 38.796917, 45.453732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.313377, 38.398800, 45.435795>,  <35.292747, 38.159931, 45.425034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.313377, 38.398800, 45.435795>,  <35.347759, 38.796917, 45.453732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313377, 38.398800, 45.435795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156443, 0.030963, -0.987202,
		0.983940, -0.091866, 0.153044,
		-0.085952, -0.995290, -0.044837,
		35.287590, 38.100212, 45.422344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981812, 38.588940, 45.022190>,  <35.347759, 38.796917, 45.453732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981812, 38.588940, 45.022190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.687496, 38.318096, 45.026798>,  <35.510906, 38.155590, 45.029564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.687496, 38.318096, 45.026798>,  <35.981812, 38.588940, 45.022190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687496, 38.318096, 45.026798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202176, -0.235877, -0.950519,
		0.646323, -0.697055, 0.310451,
		-0.735793, -0.677109, 0.011525,
		35.466759, 38.114964, 45.030254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163132, 37.967976, 44.644287>,  <35.981812, 38.588940, 45.022190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163132, 37.967976, 44.644287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.763268, 37.966640, 44.634026>,  <35.523346, 37.965839, 44.627869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.763268, 37.966640, 44.634026>,  <36.163132, 37.967976, 44.644287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763268, 37.966640, 44.634026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025836, -0.180736, -0.983192,
		-0.001350, -0.983526, 0.180762,
		-0.999665, -0.003342, -0.025655,
		35.463367, 37.965637, 44.626328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053097, 37.596039, 44.060894>,  <36.163132, 37.967976, 44.644287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053097, 37.596039, 44.060894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.681293, 37.734467, 44.111897>,  <35.458214, 37.817524, 44.142498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.681293, 37.734467, 44.111897>,  <36.053097, 37.596039, 44.060894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681293, 37.734467, 44.111897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180846, -0.126373, -0.975359,
		-0.321429, -0.929659, 0.180049,
		-0.929504, 0.346070, 0.127505,
		35.402443, 37.838287, 44.150146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527294, 37.249851, 43.646275>,  <36.053097, 37.596039, 44.060894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527294, 37.249851, 43.646275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.304058, 37.572403, 43.724552>,  <35.170116, 37.765934, 43.771519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.304058, 37.572403, 43.724552>,  <35.527294, 37.249851, 43.646275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304058, 37.572403, 43.724552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192621, 0.103496, -0.975800,
		-0.807115, -0.582277, 0.097565,
		-0.558089, 0.806376, 0.195692,
		35.136631, 37.814316, 43.783260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928940, 37.149509, 43.333401>,  <35.527294, 37.249851, 43.646275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928940, 37.149509, 43.333401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.951534, 37.548103, 43.358147>,  <34.965092, 37.787258, 43.372993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.951534, 37.548103, 43.358147>,  <34.928940, 37.149509, 43.333401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951534, 37.548103, 43.358147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117264, 0.068152, -0.990759,
		-0.991493, 0.048714, 0.120702,
		0.056490, 0.996485, 0.061860,
		34.968483, 37.847050, 43.376705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502888, 37.319214, 42.815380>,  <34.928940, 37.149509, 43.333401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502888, 37.319214, 42.815380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.683628, 37.670967, 42.875401>,  <34.792072, 37.882019, 42.911411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.683628, 37.670967, 42.875401>,  <34.502888, 37.319214, 42.815380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683628, 37.670967, 42.875401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179351, 0.254316, -0.950345,
		-0.873878, 0.402503, 0.272632,
		0.451851, 0.879383, 0.150052,
		34.819183, 37.934784, 42.920418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052986, 37.790508, 42.644554>,  <34.502888, 37.319214, 42.815380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052986, 37.790508, 42.644554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.415585, 37.954716, 42.605068>,  <34.633144, 38.053242, 42.581379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.415585, 37.954716, 42.605068>,  <34.052986, 37.790508, 42.644554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415585, 37.954716, 42.605068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320480, 0.516775, -0.793874,
		-0.274892, 0.751275, 0.600017,
		0.906492, 0.410523, -0.098712,
		34.687531, 38.077873, 42.575455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950562, 38.537659, 42.592903>,  <34.052986, 37.790508, 42.644554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950562, 38.537659, 42.592903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.316612, 38.489914, 42.438866>,  <34.536243, 38.461266, 42.346443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.316612, 38.489914, 42.438866>,  <33.950562, 38.537659, 42.592903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316612, 38.489914, 42.438866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252187, 0.575752, -0.777760,
		0.314553, 0.808864, 0.496785,
		0.915127, -0.119364, -0.385090,
		34.591152, 38.454105, 42.323338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303478, 39.164139, 42.436234>,  <33.950562, 38.537659, 42.592903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303478, 39.164139, 42.436234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.523396, 38.913177, 42.215656>,  <34.655346, 38.762600, 42.083309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.523396, 38.913177, 42.215656>,  <34.303478, 39.164139, 42.436234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523396, 38.913177, 42.215656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238934, 0.514469, -0.823549,
		0.800396, 0.584544, 0.132946,
		0.549797, -0.627400, -0.551446,
		34.688335, 38.724957, 42.050224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831055, 39.592457, 41.977440>,  <34.303478, 39.164139, 42.436234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831055, 39.592457, 41.977440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.778717, 39.241871, 41.792103>,  <34.747314, 39.031521, 41.680901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.778717, 39.241871, 41.792103>,  <34.831055, 39.592457, 41.977440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778717, 39.241871, 41.792103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156678, 0.479770, -0.863292,
		0.978944, -0.040361, -0.200098,
		-0.130844, -0.876465, -0.463345,
		34.739464, 38.978931, 41.653099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178024, 39.660267, 41.257572>,  <34.831055, 39.592457, 41.977440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178024, 39.660267, 41.257572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.950356, 39.332813, 41.226887>,  <34.813755, 39.136341, 41.208477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.950356, 39.332813, 41.226887>,  <35.178024, 39.660267, 41.257572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950356, 39.332813, 41.226887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195835, 0.225586, -0.954337,
		0.798554, -0.528162, -0.288714,
		-0.569174, -0.818631, -0.076710,
		34.779602, 39.087223, 41.203873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254154, 39.474041, 40.572403>,  <35.178024, 39.660267, 41.257572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254154, 39.474041, 40.572403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.910648, 39.287258, 40.656761>,  <34.704544, 39.175190, 40.707378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.910648, 39.287258, 40.656761>,  <35.254154, 39.474041, 40.572403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910648, 39.287258, 40.656761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319524, 0.166304, -0.932870,
		0.400534, -0.868503, -0.292019,
		-0.858765, -0.466953, 0.210897,
		34.653019, 39.147171, 40.720032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021107, 39.647541, 40.619610>,  <35.254154, 39.474041, 40.572403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021107, 39.647541, 40.619610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.035637, 40.046684, 40.597847>,  <36.044357, 40.286171, 40.584789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.035637, 40.046684, 40.597847>,  <36.021107, 39.647541, 40.619610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035637, 40.046684, 40.597847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180676, 0.060103, 0.981705,
		0.982872, -0.025834, 0.182472,
		0.036328, 0.997858, -0.054406,
		36.046535, 40.346043, 40.581524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387474, 39.831100, 41.210884>,  <36.021107, 39.647541, 40.619610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387474, 39.831100, 41.210884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.181992, 40.158199, 41.107040>,  <36.058704, 40.354458, 41.044735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.181992, 40.158199, 41.107040>,  <36.387474, 39.831100, 41.210884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181992, 40.158199, 41.107040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078786, 0.256345, 0.963369,
		0.854343, 0.515340, -0.067258,
		-0.513704, 0.817748, -0.259608,
		36.027882, 40.403522, 41.029160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713818, 40.429565, 41.522312>,  <36.387474, 39.831100, 41.210884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713818, 40.429565, 41.522312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.352051, 40.586689, 41.455704>,  <36.134991, 40.680962, 41.415741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.352051, 40.586689, 41.455704>,  <36.713818, 40.429565, 41.522312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352051, 40.586689, 41.455704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052331, 0.285211, 0.957035,
		0.423423, 0.874275, -0.237394,
		-0.904419, 0.392808, -0.166517,
		36.080727, 40.704533, 41.405750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659473, 41.172585, 41.713039>,  <36.713818, 40.429565, 41.522312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659473, 41.172585, 41.713039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.298695, 41.006229, 41.759567>,  <36.082226, 40.906418, 41.787483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.298695, 41.006229, 41.759567>,  <36.659473, 41.172585, 41.713039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298695, 41.006229, 41.759567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045547, 0.176234, 0.983294,
		-0.429439, 0.892177, -0.140011,
		-0.901947, -0.415887, 0.116317,
		36.028111, 40.881462, 41.794464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540630, 41.470898, 42.295803>,  <36.659473, 41.172585, 41.713039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540630, 41.470898, 42.295803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.215122, 41.238586, 42.287022>,  <36.019817, 41.099201, 42.281754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.215122, 41.238586, 42.287022>,  <36.540630, 41.470898, 42.295803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215122, 41.238586, 42.287022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061822, 0.048943, 0.996887,
		-0.577891, 0.812592, -0.075733,
		-0.813769, -0.580774, -0.021953,
		35.970993, 41.064354, 42.280437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162071, 41.803349, 42.770443>,  <36.540630, 41.470898, 42.295803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162071, 41.803349, 42.770443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.033482, 41.428875, 42.713570>,  <35.956329, 41.204189, 42.679447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.033482, 41.428875, 42.713570>,  <36.162071, 41.803349, 42.770443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033482, 41.428875, 42.713570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099064, -0.116075, 0.988288,
		-0.941723, 0.331791, -0.055427,
		-0.321471, -0.936185, -0.142179,
		35.937042, 41.148018, 42.670918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722488, 41.761848, 43.302826>,  <36.162071, 41.803349, 42.770443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722488, 41.761848, 43.302826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.733524, 41.371456, 43.216389>,  <35.740147, 41.137218, 43.164528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.733524, 41.371456, 43.216389>,  <35.722488, 41.761848, 43.302826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733524, 41.371456, 43.216389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268755, -0.215459, 0.938801,
		-0.962813, 0.032170, -0.268246,
		0.027595, -0.975983, -0.216093,
		35.741802, 41.078663, 43.151562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221149, 41.540833, 43.763779>,  <35.722488, 41.761848, 43.302826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221149, 41.540833, 43.763779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.453938, 41.234238, 43.655109>,  <35.593613, 41.050282, 43.589909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.453938, 41.234238, 43.655109>,  <35.221149, 41.540833, 43.763779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453938, 41.234238, 43.655109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014079, -0.324526, 0.945772,
		-0.813087, -0.554238, -0.178074,
		0.581972, -0.766488, -0.271671,
		35.628529, 41.004292, 43.573608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971146, 40.984650, 44.104767>,  <35.221149, 41.540833, 43.763779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971146, 40.984650, 44.104767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.349846, 40.889069, 44.018459>,  <35.577068, 40.831722, 43.966675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.349846, 40.889069, 44.018459>,  <34.971146, 40.984650, 44.104767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349846, 40.889069, 44.018459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138938, -0.301341, 0.943340,
		-0.290421, -0.923094, -0.252099,
		0.946758, -0.238939, -0.215768,
		35.633873, 40.817383, 43.953728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051544, 40.224792, 44.301350>,  <34.971146, 40.984650, 44.104767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051544, 40.224792, 44.301350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.408157, 40.405949, 44.298344>,  <35.622124, 40.514645, 44.296539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.408157, 40.405949, 44.298344>,  <35.051544, 40.224792, 44.301350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408157, 40.405949, 44.298344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225141, -0.428672, 0.874959,
		0.393039, -0.781748, -0.484139,
		0.891534, 0.452892, -0.007518,
		35.675617, 40.541817, 44.296089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584827, 39.753784, 44.450691>,  <35.051544, 40.224792, 44.301350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584827, 39.753784, 44.450691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.733906, 40.112297, 44.546837>,  <35.823353, 40.327404, 44.604523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.733906, 40.112297, 44.546837>,  <35.584827, 39.753784, 44.450691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733906, 40.112297, 44.546837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261086, -0.349843, 0.899691,
		0.890467, -0.272557, -0.364392,
		0.372697, 0.896283, 0.240363,
		35.845715, 40.381184, 44.618946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206203, 39.596706, 44.751171>,  <35.584827, 39.753784, 44.450691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206203, 39.596706, 44.751171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.125877, 39.970524, 44.868683>,  <36.077682, 40.194813, 44.939190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.125877, 39.970524, 44.868683>,  <36.206203, 39.596706, 44.751171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125877, 39.970524, 44.868683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404375, -0.194070, 0.893766,
		0.892275, 0.298275, -0.338934,
		-0.200811, 0.934542, 0.293779,
		36.065636, 40.250885, 44.956818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725773, 39.638870, 45.184769>,  <36.206203, 39.596706, 44.751171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725773, 39.638870, 45.184769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.466808, 39.926395, 45.286091>,  <36.311432, 40.098911, 45.346886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.466808, 39.926395, 45.286091>,  <36.725773, 39.638870, 45.184769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466808, 39.926395, 45.286091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133432, -0.220325, 0.966257,
		0.750371, 0.659363, 0.046727,
		-0.647410, 0.718817, 0.253305,
		36.272587, 40.142040, 45.362083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034187, 39.948524, 45.699520>,  <36.725773, 39.638870, 45.184769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034187, 39.948524, 45.699520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.656311, 40.074692, 45.735466>,  <36.429585, 40.150391, 45.757034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.656311, 40.074692, 45.735466>,  <37.034187, 39.948524, 45.699520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656311, 40.074692, 45.735466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003778, -0.263513, 0.964648,
		0.327944, 0.911633, 0.247746,
		-0.944689, 0.315415, 0.089862,
		36.372906, 40.169315, 45.762424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771904, 39.959824, 45.574009>,  <37.034187, 39.948524, 45.699520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771904, 39.959824, 45.574009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.001419, 39.633320, 45.600842>,  <38.139126, 39.437420, 45.616943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.001419, 39.633320, 45.600842>,  <37.771904, 39.959824, 45.574009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001419, 39.633320, 45.600842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272092, 0.112727, -0.955646,
		0.772488, 0.566587, 0.286778,
		0.573784, -0.816255, 0.067084,
		38.173553, 39.388443, 45.620968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450718, 40.163982, 45.310299>,  <37.771904, 39.959824, 45.574009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450718, 40.163982, 45.310299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.403328, 39.769226, 45.266468>,  <38.374893, 39.532372, 45.240170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.403328, 39.769226, 45.266468>,  <38.450718, 40.163982, 45.310299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403328, 39.769226, 45.266468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239672, 0.078672, -0.967661,
		0.963598, -0.140910, 0.227209,
		-0.118478, -0.986892, -0.109581,
		38.367783, 39.473160, 45.233593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963383, 39.958031, 44.935020>,  <38.450718, 40.163982, 45.310299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963383, 39.958031, 44.935020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.721291, 39.643242, 44.887058>,  <38.576035, 39.454369, 44.858280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.721291, 39.643242, 44.887058>,  <38.963383, 39.958031, 44.935020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721291, 39.643242, 44.887058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310778, -0.094916, -0.945732,
		0.732883, -0.609645, 0.302019,
		-0.605228, -0.786971, -0.119901,
		38.539722, 39.407150, 44.851089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359638, 39.456860, 44.652958>,  <38.963383, 39.958031, 44.935020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359638, 39.456860, 44.652958> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.986156, 39.350098, 44.557495>,  <38.762066, 39.286041, 44.500217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.986156, 39.350098, 44.557495>,  <39.359638, 39.456860, 44.652958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986156, 39.350098, 44.557495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311276, -0.275766, -0.909428,
		0.176915, -0.923426, 0.340565,
		-0.933707, -0.266901, -0.238653,
		38.706043, 39.270027, 44.485901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349884, 38.801788, 44.298397>,  <39.359638, 39.456860, 44.652958>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349884, 38.801788, 44.298397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.001030, 38.966156, 44.192165>,  <38.791718, 39.064777, 44.128426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.001030, 38.966156, 44.192165>,  <39.349884, 38.801788, 44.298397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001030, 38.966156, 44.192165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135227, -0.319223, -0.937982,
		-0.470215, -0.853957, 0.222837,
		-0.872130, 0.410920, -0.265581,
		38.739391, 39.089432, 44.112492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045841, 38.329227, 43.851654>,  <39.349884, 38.801788, 44.298397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045841, 38.329227, 43.851654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.856903, 38.675495, 43.785324>,  <38.743538, 38.883255, 43.745525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.856903, 38.675495, 43.785324>,  <39.045841, 38.329227, 43.851654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856903, 38.675495, 43.785324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051792, -0.215074, -0.975223,
		-0.879890, -0.452055, 0.146425,
		-0.472347, 0.865673, -0.165829,
		38.715199, 38.935196, 43.735577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641518, 38.161449, 43.342949>,  <39.045841, 38.329227, 43.851654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641518, 38.161449, 43.342949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.662930, 38.560856, 43.338779>,  <38.675777, 38.800499, 43.336277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.662930, 38.560856, 43.338779>,  <38.641518, 38.161449, 43.342949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662930, 38.560856, 43.338779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170187, -0.019413, -0.985221,
		-0.983957, 0.050964, -0.170973,
		0.053530, 0.998512, -0.010428,
		38.678989, 38.860409, 43.335651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167080, 38.358440, 42.917038>,  <38.641518, 38.161449, 43.342949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167080, 38.358440, 42.917038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.376572, 38.698742, 42.934643>,  <38.502266, 38.902924, 42.945206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.376572, 38.698742, 42.934643>,  <38.167080, 38.358440, 42.917038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376572, 38.698742, 42.934643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099402, 0.112338, -0.988686,
		-0.846068, 0.513425, 0.143400,
		0.523725, 0.850750, 0.044010,
		38.533688, 38.953968, 42.947845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858078, 38.790562, 42.324543>,  <38.167080, 38.358440, 42.917038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858078, 38.790562, 42.324543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.235390, 38.901516, 42.397518>,  <38.461777, 38.968090, 42.441303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.235390, 38.901516, 42.397518>,  <37.858078, 38.790562, 42.324543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235390, 38.901516, 42.397518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164171, 0.087901, -0.982507,
		-0.288574, 0.956728, 0.037376,
		0.943277, 0.277390, 0.182433,
		38.518372, 38.984734, 42.452248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095585, 39.460270, 41.786083>,  <37.858078, 38.790562, 42.324543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095585, 39.460270, 41.786083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.442200, 39.307098, 41.914127>,  <38.650169, 39.215195, 41.990955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.442200, 39.307098, 41.914127>,  <38.095585, 39.460270, 41.786083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442200, 39.307098, 41.914127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400219, 0.149903, -0.904076,
		0.298213, 0.911534, 0.283153,
		0.866542, -0.382930, 0.320110,
		38.702164, 39.192219, 42.010159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574203, 39.911625, 41.534168>,  <38.095585, 39.460270, 41.786083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574203, 39.911625, 41.534168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.814602, 39.606663, 41.630116>,  <38.958843, 39.423687, 41.687683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.814602, 39.606663, 41.630116>,  <38.574203, 39.911625, 41.534168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814602, 39.606663, 41.630116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536534, 0.162413, -0.828102,
		0.592393, 0.626385, 0.506668,
		0.601000, -0.762406, 0.239865,
		38.994904, 39.377941, 41.702076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187881, 40.145355, 41.266907>,  <38.574203, 39.911625, 41.534168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187881, 40.145355, 41.266907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.217014, 39.748596, 41.308548>,  <39.234493, 39.510540, 41.333534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.217014, 39.748596, 41.308548>,  <39.187881, 40.145355, 41.266907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217014, 39.748596, 41.308548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494876, -0.054683, -0.867241,
		0.865906, 0.114681, 0.486883,
		0.072832, -0.991896, 0.104104,
		39.238865, 39.451027, 41.339779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851505, 40.059521, 41.090912>,  <39.187881, 40.145355, 41.266907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851505, 40.059521, 41.090912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.666645, 39.711151, 41.024078>,  <39.555729, 39.502129, 40.983978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.666645, 39.711151, 41.024078>,  <39.851505, 40.059521, 41.090912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666645, 39.711151, 41.024078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493995, -0.096356, -0.864109,
		0.736470, -0.481886, 0.474760,
		-0.462148, -0.870920, -0.167086,
		39.528000, 39.449875, 40.973953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427811, 39.459438, 41.035763>,  <39.851505, 40.059521, 41.090912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427811, 39.459438, 41.035763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.072296, 39.392952, 40.864914>,  <39.858990, 39.353058, 40.762405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.072296, 39.392952, 40.864914>,  <40.427811, 39.459438, 41.035763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.072296, 39.392952, 40.864914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452353, -0.168160, -0.875842,
		0.073755, -0.971645, 0.224647,
		-0.888784, -0.166218, -0.427124,
		39.805660, 39.343086, 40.736778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.479267, 33.815701, 42.077934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.130180, 33.926266, 41.916958>,  <25.920729, 33.992603, 41.820370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.130180, 33.926266, 41.916958>,  <26.479267, 33.815701, 42.077934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.130180, 33.926266, 41.916958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463503, 0.210102, -0.860826,
		-0.153386, -0.937793, -0.311477,
		-0.872719, 0.276409, -0.402443,
		25.868364, 34.009190, 41.796227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.421526, 33.432365, 41.407120>,  <26.479267, 33.815701, 42.077934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.421526, 33.432365, 41.407120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.154156, 33.729225, 41.387455>,  <25.993732, 33.907341, 41.375656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.154156, 33.729225, 41.387455>,  <26.421526, 33.432365, 41.407120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.154156, 33.729225, 41.387455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297836, 0.206506, -0.932013,
		-0.681542, -0.637626, -0.359074,
		-0.668427, 0.742151, -0.049165,
		25.953627, 33.951870, 41.372704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.248831, 33.386494, 40.729053>,  <26.421526, 33.432365, 41.407120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.248831, 33.386494, 40.729053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.074169, 33.730148, 40.835804>,  <25.969372, 33.936340, 40.899857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.074169, 33.730148, 40.835804>,  <26.248831, 33.386494, 40.729053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.074169, 33.730148, 40.835804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238364, 0.396539, -0.886532,
		-0.867477, -0.323493, -0.377937,
		-0.436654, 0.859133, 0.266879,
		25.943172, 33.987888, 40.915867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.582483, 33.469635, 40.327724>,  <26.248831, 33.386494, 40.729053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.582483, 33.469635, 40.327724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.738197, 33.822578, 40.433483>,  <25.831627, 34.034344, 40.496937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.738197, 33.822578, 40.433483>,  <25.582483, 33.469635, 40.327724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.738197, 33.822578, 40.433483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048483, 0.267012, -0.962473,
		-0.919840, 0.387497, 0.061165,
		0.389287, 0.882355, 0.264396,
		25.854984, 34.087284, 40.512802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.120884, 33.988865, 39.961174>,  <25.582483, 33.469635, 40.327724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.120884, 33.988865, 39.961174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.471615, 34.154976, 40.058105>,  <25.682053, 34.254642, 40.116264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.471615, 34.154976, 40.058105>,  <25.120884, 33.988865, 39.961174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.471615, 34.154976, 40.058105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094206, 0.345843, -0.933551,
		-0.471489, 0.841390, 0.264123,
		0.876826, 0.415277, 0.242325,
		25.734663, 34.279560, 40.130802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.088644, 34.613235, 39.574738>,  <25.120884, 33.988865, 39.961174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.088644, 34.613235, 39.574738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.472378, 34.562271, 39.675491>,  <25.702618, 34.531693, 39.735943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.472378, 34.562271, 39.675491>,  <25.088644, 34.613235, 39.574738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.472378, 34.562271, 39.675491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281767, 0.378584, -0.881635,
		0.016974, 0.916755, 0.399090,
		0.959333, -0.127415, 0.251886,
		25.760178, 34.524048, 39.751057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.333574, 35.219410, 39.531242>,  <25.088644, 34.613235, 39.574738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.333574, 35.219410, 39.531242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.639265, 34.962940, 39.503387>,  <25.822680, 34.809059, 39.486675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.639265, 34.962940, 39.503387>,  <25.333574, 35.219410, 39.531242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.639265, 34.962940, 39.503387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191600, 0.328812, -0.924755,
		0.615832, 0.693379, 0.374136,
		0.764226, -0.641178, -0.069642,
		25.868532, 34.770588, 39.482494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.860096, 35.616238, 39.111790>,  <25.333574, 35.219410, 39.531242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.860096, 35.616238, 39.111790> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.993906, 35.239639, 39.095417>,  <26.074192, 35.013680, 39.085594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.993906, 35.239639, 39.095417>,  <25.860096, 35.616238, 39.111790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.993906, 35.239639, 39.095417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358734, 0.167386, -0.918309,
		0.871437, 0.292514, 0.393742,
		0.334526, -0.941497, -0.040932,
		26.094263, 34.957191, 39.083138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.522467, 35.619202, 39.005238>,  <25.860096, 35.616238, 39.111790>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.522467, 35.619202, 39.005238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.402788, 35.267925, 38.855965>,  <26.330980, 35.057159, 38.766399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.402788, 35.267925, 38.855965>,  <26.522467, 35.619202, 39.005238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.402788, 35.267925, 38.855965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504019, 0.186633, -0.843287,
		0.810214, -0.440400, 0.386784,
		-0.299197, -0.878189, -0.373183,
		26.313028, 35.004467, 38.744011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.095051, 35.276970, 38.624191>,  <26.522467, 35.619202, 39.005238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.095051, 35.276970, 38.624191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.811125, 35.041965, 38.468758>,  <26.640768, 34.900963, 38.375500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.811125, 35.041965, 38.468758>,  <27.095051, 35.276970, 38.624191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.811125, 35.041965, 38.468758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257008, 0.297613, -0.919442,
		0.655825, -0.752504, -0.060257,
		-0.709817, -0.587507, -0.388582,
		26.598179, 34.865715, 38.352184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.426601, 35.012844, 37.997925>,  <27.095051, 35.276970, 38.624191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.426601, 35.012844, 37.997925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.033236, 34.960106, 37.948105>,  <26.797216, 34.928463, 37.918213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.033236, 34.960106, 37.948105>,  <27.426601, 35.012844, 37.997925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.033236, 34.960106, 37.948105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052186, 0.451977, -0.890502,
		0.173702, -0.882232, -0.437600,
		-0.983414, -0.131846, -0.124550,
		26.738211, 34.920551, 37.910740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.422564, 34.612564, 37.439613>,  <27.426601, 35.012844, 37.997925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.422564, 34.612564, 37.439613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.060637, 34.779106, 37.475300>,  <26.843481, 34.879032, 37.496712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.060637, 34.779106, 37.475300>,  <27.422564, 34.612564, 37.439613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.060637, 34.779106, 37.475300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072435, 0.356967, -0.931304,
		-0.419598, -0.836196, -0.353148,
		-0.904815, 0.416354, 0.089212,
		26.789192, 34.904011, 37.502064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.230003, 34.512260, 36.746944>,  <27.422564, 34.612564, 37.439613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.230003, 34.512260, 36.746944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.988056, 34.792934, 36.897556>,  <26.842888, 34.961338, 36.987923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.988056, 34.792934, 36.897556>,  <27.230003, 34.512260, 36.746944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.988056, 34.792934, 36.897556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128755, 0.552785, -0.823317,
		-0.785847, -0.449519, -0.424708,
		-0.604869, 0.701685, 0.376526,
		26.806595, 35.003441, 37.010513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.727703, 34.620056, 36.138428>,  <27.230003, 34.512260, 36.746944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.727703, 34.620056, 36.138428> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.721558, 34.947899, 36.367519>,  <26.717871, 35.144604, 36.504974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.721558, 34.947899, 36.367519>,  <26.727703, 34.620056, 36.138428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.721558, 34.947899, 36.367519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017236, 0.572493, -0.819729,
		-0.999733, -0.022463, 0.005332,
		-0.015361, 0.819602, 0.572727,
		26.716949, 35.193779, 36.539337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.490238, 35.067078, 35.740036>,  <26.727703, 34.620056, 36.138428>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.490238, 35.067078, 35.740036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.592558, 35.338966, 36.015003>,  <26.653950, 35.502098, 36.179985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.592558, 35.338966, 36.015003>,  <26.490238, 35.067078, 35.740036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.592558, 35.338966, 36.015003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002486, 0.711539, -0.702642,
		-0.966726, 0.178028, 0.183702,
		0.255801, 0.679719, 0.687421,
		26.669298, 35.542881, 36.221230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.022520, 35.646759, 35.638870>,  <26.490238, 35.067078, 35.740036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.022520, 35.646759, 35.638870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.340799, 35.806763, 35.820797>,  <26.531767, 35.902763, 35.929955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.340799, 35.806763, 35.820797>,  <26.022520, 35.646759, 35.638870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.340799, 35.806763, 35.820797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066416, 0.688753, -0.721948,
		-0.602042, 0.604659, 0.521472,
		0.795697, 0.400009, 0.454817,
		26.579508, 35.926765, 35.957241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.917593, 36.390640, 35.691181>,  <26.022520, 35.646759, 35.638870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.917593, 36.390640, 35.691181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.308672, 36.307358, 35.702179>,  <26.543320, 36.257389, 35.708778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.308672, 36.307358, 35.702179>,  <25.917593, 36.390640, 35.691181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.308672, 36.307358, 35.702179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161002, 0.659039, -0.734674,
		0.134844, 0.722716, 0.677863,
		0.977699, -0.208203, 0.027492,
		26.601982, 36.244896, 35.710426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.362703, 37.095978, 35.504181>,  <25.917593, 36.390640, 35.691181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.362703, 37.095978, 35.504181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.591995, 36.770332, 35.467030>,  <26.729570, 36.574944, 35.444740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.591995, 36.770332, 35.467030>,  <26.362703, 37.095978, 35.504181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.591995, 36.770332, 35.467030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509269, 0.442772, -0.737969,
		0.641915, 0.375725, 0.668413,
		0.573228, -0.814115, -0.092877,
		26.763964, 36.526096, 35.439167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.989408, 37.392467, 35.499630>,  <26.362703, 37.095978, 35.504181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.989408, 37.392467, 35.499630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.013159, 37.026760, 35.339336>,  <27.027409, 36.807335, 35.243160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.013159, 37.026760, 35.339336>,  <26.989408, 37.392467, 35.499630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.013159, 37.026760, 35.339336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522592, 0.370504, -0.767870,
		0.850513, -0.163827, 0.499788,
		0.059376, -0.914269, -0.400733,
		27.030972, 36.752480, 35.219116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.657442, 37.467682, 35.275047>,  <26.989408, 37.392467, 35.499630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.657442, 37.467682, 35.275047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.502630, 37.161705, 35.069107>,  <27.409742, 36.978119, 34.945545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.502630, 37.161705, 35.069107>,  <27.657442, 37.467682, 35.275047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.502630, 37.161705, 35.069107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408616, 0.358254, -0.839456,
		0.826583, -0.535271, 0.173912,
		-0.387032, -0.764944, -0.514847,
		27.386520, 36.932220, 34.914654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.045008, 37.552361, 35.985977>,  <27.657442, 37.467682, 35.275047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.045008, 37.552361, 35.985977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.221104, 37.883354, 36.125385>,  <28.326761, 38.081951, 36.209030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.221104, 37.883354, 36.125385>,  <28.045008, 37.552361, 35.985977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.221104, 37.883354, 36.125385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149486, -0.450284, 0.880283,
		0.885349, -0.335436, -0.321930,
		0.440239, 0.827482, 0.348516,
		28.353176, 38.131599, 36.229939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.599220, 37.344345, 36.350372>,  <28.045008, 37.552361, 35.985977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.599220, 37.344345, 36.350372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.530502, 37.711468, 36.493546>,  <28.489271, 37.931740, 36.579449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.530502, 37.711468, 36.493546>,  <28.599220, 37.344345, 36.350372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.530502, 37.711468, 36.493546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186564, -0.326449, 0.926620,
		0.967306, 0.225964, -0.115148,
		-0.171793, 0.917808, 0.357933,
		28.478964, 37.986809, 36.600925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.163536, 37.462055, 36.879158>,  <28.599220, 37.344345, 36.350372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.163536, 37.462055, 36.879158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.846088, 37.695995, 36.946239>,  <28.655621, 37.836357, 36.986488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.846088, 37.695995, 36.946239>,  <29.163536, 37.462055, 36.879158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.846088, 37.695995, 36.946239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011767, -0.290337, 0.956852,
		0.608303, 0.757401, 0.237298,
		-0.793618, 0.584848, 0.167700,
		28.608004, 37.871449, 36.996548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.280052, 37.574505, 37.617722>,  <29.163536, 37.462055, 36.879158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.280052, 37.574505, 37.617722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.919771, 37.725334, 37.531422>,  <28.703602, 37.815830, 37.479641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.919771, 37.725334, 37.531422>,  <29.280052, 37.574505, 37.617722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.919771, 37.725334, 37.531422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299958, -0.180553, 0.936710,
		0.314256, 0.908414, 0.275731,
		-0.900704, 0.377075, -0.215746,
		28.649559, 37.838455, 37.466698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.139458, 38.221222, 38.105091>,  <29.280052, 37.574505, 37.617722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.139458, 38.221222, 38.105091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.808237, 38.023476, 37.999310>,  <28.609505, 37.904827, 37.935841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.808237, 38.023476, 37.999310>,  <29.139458, 38.221222, 38.105091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.808237, 38.023476, 37.999310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245034, -0.105144, 0.963796,
		-0.504270, 0.862873, -0.034071,
		-0.828052, -0.494362, -0.264454,
		28.559822, 37.875168, 37.919975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.580086, 38.574207, 38.486115>,  <29.139458, 38.221222, 38.105091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.580086, 38.574207, 38.486115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.468876, 38.203915, 38.383564>,  <28.402149, 37.981739, 38.322033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.468876, 38.203915, 38.383564>,  <28.580086, 38.574207, 38.486115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.468876, 38.203915, 38.383564> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313517, -0.164836, 0.935166,
		-0.907970, 0.340380, -0.244403,
		-0.278025, -0.925727, -0.256381,
		28.385468, 37.926197, 38.306648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.076759, 38.445946, 38.970871>,  <28.580086, 38.574207, 38.486115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.076759, 38.445946, 38.970871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.130533, 38.082672, 38.812313>,  <28.162798, 37.864708, 38.717178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.130533, 38.082672, 38.812313>,  <28.076759, 38.445946, 38.970871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.130533, 38.082672, 38.812313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339708, -0.418023, 0.842529,
		-0.930874, 0.021393, -0.364715,
		0.134435, -0.908185, -0.396394,
		28.170864, 37.810215, 38.693394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.471731, 38.082317, 38.975204>,  <28.076759, 38.445946, 38.970871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.471731, 38.082317, 38.975204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.770647, 37.816517, 38.975163>,  <27.949997, 37.657036, 38.975136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.770647, 37.816517, 38.975163>,  <27.471731, 38.082317, 38.975204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.770647, 37.816517, 38.975163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357574, -0.402259, 0.842810,
		-0.560092, -0.629782, -0.538211,
		0.747287, -0.664501, -0.000109,
		27.994833, 37.617168, 38.975132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.124512, 37.464966, 39.026836>,  <27.471731, 38.082317, 38.975204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.124512, 37.464966, 39.026836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.499691, 37.402332, 39.150597>,  <27.724798, 37.364750, 39.224854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.499691, 37.402332, 39.150597>,  <27.124512, 37.464966, 39.026836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.499691, 37.402332, 39.150597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346071, -0.479346, 0.806513,
		0.022021, -0.863544, -0.503793,
		0.937950, -0.156588, 0.309403,
		27.781076, 37.355354, 39.243416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.121618, 36.741192, 39.101257>,  <27.124512, 37.464966, 39.026836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.121618, 36.741192, 39.101257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.430834, 36.870785, 39.319412>,  <27.616364, 36.948540, 39.450306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.430834, 36.870785, 39.319412>,  <27.121618, 36.741192, 39.101257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.430834, 36.870785, 39.319412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332355, -0.525445, 0.783229,
		0.540323, -0.786729, -0.298511,
		0.773040, 0.323985, 0.545383,
		27.662746, 36.967979, 39.483028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.394037, 36.094543, 39.460373>,  <27.121618, 36.741192, 39.101257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.394037, 36.094543, 39.460373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.574129, 36.400768, 39.644207>,  <27.682184, 36.584503, 39.754505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.574129, 36.400768, 39.644207>,  <27.394037, 36.094543, 39.460373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.574129, 36.400768, 39.644207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149052, -0.443042, 0.884023,
		0.880386, -0.466513, -0.085361,
		0.450227, 0.765558, 0.459583,
		27.709198, 36.630436, 39.782082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.770882, 35.686951, 40.020359>,  <27.394037, 36.094543, 39.460373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.770882, 35.686951, 40.020359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.761925, 36.076477, 40.110847>,  <27.756550, 36.310192, 40.165138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.761925, 36.076477, 40.110847>,  <27.770882, 35.686951, 40.020359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.761925, 36.076477, 40.110847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041861, -0.226989, 0.972997,
		0.998873, 0.012319, 0.045848,
		-0.022394, 0.973820, 0.226217,
		27.755207, 36.368622, 40.178711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.270189, 35.818649, 40.623642>,  <27.770882, 35.686951, 40.020359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.270189, 35.818649, 40.623642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.989431, 36.103558, 40.625473>,  <27.820976, 36.274502, 40.626572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.989431, 36.103558, 40.625473>,  <28.270189, 35.818649, 40.623642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.989431, 36.103558, 40.625473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141160, -0.145401, 0.979251,
		0.698154, 0.686684, 0.202600,
		-0.701894, 0.712267, 0.004580,
		27.778864, 36.317238, 40.626846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.430655, 36.075626, 41.231789>,  <28.270189, 35.818649, 40.623642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.430655, 36.075626, 41.231789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.062881, 36.206467, 41.144474>,  <27.842218, 36.284969, 41.092087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.062881, 36.206467, 41.144474>,  <28.430655, 36.075626, 41.231789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.062881, 36.206467, 41.144474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284727, -0.170861, 0.943259,
		0.271243, 0.929415, 0.250229,
		-0.919433, 0.327100, -0.218284,
		27.787052, 36.304596, 41.078987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.249960, 36.515083, 41.781155>,  <28.430655, 36.075626, 41.231789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.249960, 36.515083, 41.781155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.903595, 36.403309, 41.615208>,  <27.695776, 36.336246, 41.515640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.903595, 36.403309, 41.615208>,  <28.249960, 36.515083, 41.781155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.903595, 36.403309, 41.615208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406556, -0.089987, 0.909183,
		-0.291389, 0.955939, -0.035685,
		-0.865913, -0.279434, -0.414864,
		27.643822, 36.319477, 41.490749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.738499, 36.896248, 42.176590>,  <28.249960, 36.515083, 41.781155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.738499, 36.896248, 42.176590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.543825, 36.601570, 41.988792>,  <27.427021, 36.424763, 41.876114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.543825, 36.601570, 41.988792>,  <27.738499, 36.896248, 42.176590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.543825, 36.601570, 41.988792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363512, -0.317912, 0.875666,
		-0.794353, 0.596840, -0.113073,
		-0.486685, -0.736691, -0.469493,
		27.397820, 36.380562, 41.847946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.117451, 36.890556, 42.538288>,  <27.738499, 36.896248, 42.176590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.117451, 36.890556, 42.538288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.140223, 36.541267, 42.344696>,  <27.153885, 36.331692, 42.228542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.140223, 36.541267, 42.344696>,  <27.117451, 36.890556, 42.538288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.140223, 36.541267, 42.344696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511083, -0.441923, 0.737223,
		-0.857644, 0.205384, -0.471449,
		0.056930, -0.873225, -0.483981,
		27.157301, 36.279301, 42.199501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.481352, 36.602867, 42.516148>,  <27.117451, 36.890556, 42.538288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.481352, 36.602867, 42.516148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.716074, 36.282360, 42.469437>,  <26.856907, 36.090057, 42.441410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.716074, 36.282360, 42.469437>,  <26.481352, 36.602867, 42.516148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.716074, 36.282360, 42.469437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460002, -0.448558, 0.766286,
		-0.666378, -0.395944, -0.631799,
		0.586804, -0.801264, -0.116774,
		26.892115, 36.041981, 42.434406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.019506, 35.982128, 42.617794>,  <26.481352, 36.602867, 42.516148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.019506, 35.982128, 42.617794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.389124, 35.851688, 42.697594>,  <26.610895, 35.773426, 42.745472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.389124, 35.851688, 42.697594>,  <26.019506, 35.982128, 42.617794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.389124, 35.851688, 42.697594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324327, -0.392492, 0.860675,
		-0.202364, -0.860005, -0.468444,
		0.924046, -0.326099, 0.199497,
		26.666338, 35.753857, 42.757442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.948492, 35.344627, 42.876526>,  <26.019506, 35.982128, 42.617794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.948492, 35.344627, 42.876526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.317219, 35.441254, 42.997787>,  <26.538454, 35.499229, 43.070545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.317219, 35.441254, 42.997787>,  <25.948492, 35.344627, 42.876526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.317219, 35.441254, 42.997787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145402, -0.509486, 0.848105,
		0.359327, -0.825875, -0.434527,
		0.921815, 0.241566, 0.303156,
		26.593763, 35.513725, 43.088734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.170315, 34.739792, 43.137951>,  <25.948492, 35.344627, 42.876526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.170315, 34.739792, 43.137951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.410648, 35.017231, 43.296906>,  <26.554850, 35.183693, 43.392277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.410648, 35.017231, 43.296906>,  <26.170315, 34.739792, 43.137951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.410648, 35.017231, 43.296906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159920, -0.382778, 0.909894,
		0.783213, -0.610247, -0.119066,
		0.600836, 0.693599, 0.397387,
		26.590899, 35.225311, 43.416122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.578815, 34.360062, 43.511097>,  <26.170315, 34.739792, 43.137951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.578815, 34.360062, 43.511097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.582857, 34.724838, 43.675175>,  <26.585281, 34.943703, 43.773621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.582857, 34.724838, 43.675175>,  <26.578815, 34.360062, 43.511097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.582857, 34.724838, 43.675175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259438, -0.393780, 0.881833,
		0.965707, -0.115329, 0.232614,
		0.010102, 0.911941, 0.410197,
		26.585888, 34.998421, 43.798233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.791679, 36.113308, 46.042339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.424526, 35.980068, 46.128635>,  <38.204235, 35.900124, 46.180412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.424526, 35.980068, 46.128635>,  <38.791679, 36.113308, 46.042339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424526, 35.980068, 46.128635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170754, 0.159251, 0.972359,
		-0.358247, 0.929347, -0.089296,
		-0.917879, -0.333097, 0.215741,
		38.149162, 35.880138, 46.193359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401466, 36.694702, 46.410568>,  <38.791679, 36.113308, 46.042339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401466, 36.694702, 46.410568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.247993, 36.338146, 46.507080>,  <38.155910, 36.124214, 46.564987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.247993, 36.338146, 46.507080>,  <38.401466, 36.694702, 46.410568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247993, 36.338146, 46.507080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044180, 0.243259, 0.968955,
		-0.922406, 0.382433, -0.053954,
		-0.383685, -0.891386, 0.241280,
		38.132889, 36.070732, 46.579464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023232, 36.834316, 47.076172>,  <38.401466, 36.694702, 46.410568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023232, 36.834316, 47.076172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.081055, 36.438774, 47.061909>,  <38.115749, 36.201450, 47.053352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.081055, 36.438774, 47.061909>,  <38.023232, 36.834316, 47.076172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081055, 36.438774, 47.061909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153618, -0.013169, 0.988043,
		-0.977499, -0.148304, 0.150002,
		0.144556, -0.988854, -0.035655,
		38.124420, 36.142117, 47.051212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615520, 36.651081, 47.636768>,  <38.023232, 36.834316, 47.076172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615520, 36.651081, 47.636768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.855511, 36.341557, 47.555531>,  <37.999504, 36.155842, 47.506786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.855511, 36.341557, 47.555531>,  <37.615520, 36.651081, 47.636768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855511, 36.341557, 47.555531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173749, -0.121772, 0.977232,
		-0.780922, -0.621605, 0.061388,
		0.599977, -0.773808, -0.203098,
		38.035503, 36.109413, 47.494602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398029, 36.048298, 47.988552>,  <37.615520, 36.651081, 47.636768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398029, 36.048298, 47.988552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.790886, 35.994690, 47.935741>,  <38.026600, 35.962524, 47.904057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.790886, 35.994690, 47.935741>,  <37.398029, 36.048298, 47.988552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790886, 35.994690, 47.935741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111330, -0.151649, 0.982145,
		-0.151649, -0.979307, -0.134020,
		-0.982145, 0.134020, 0.132023,
		38.085529, 35.954483, 47.896133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492542, 35.571045, 48.520668>,  <37.398029, 36.048298, 47.988552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492542, 35.571045, 48.520668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.867641, 35.675415, 48.428974>,  <38.092701, 35.738037, 48.373959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.867641, 35.675415, 48.428974>,  <37.492542, 35.571045, 48.520668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867641, 35.675415, 48.428974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279983, -0.177373, 0.943477,
		0.205514, -0.948925, -0.239385,
		0.937749, 0.260921, -0.229230,
		38.148968, 35.753693, 48.360207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929817, 35.012886, 48.728916>,  <37.492542, 35.571045, 48.520668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929817, 35.012886, 48.728916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.164135, 35.336887, 48.718010>,  <38.304726, 35.531288, 48.711468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.164135, 35.336887, 48.718010>,  <37.929817, 35.012886, 48.728916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164135, 35.336887, 48.718010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308584, -0.191813, 0.931656,
		0.749413, -0.554172, -0.362317,
		0.585795, 0.810001, -0.027261,
		38.339874, 35.579887, 48.709831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646965, 34.823750, 48.860706>,  <37.929817, 35.012886, 48.728916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646965, 34.823750, 48.860706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.631035, 35.209511, 48.965275>,  <38.621479, 35.440968, 49.028015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.631035, 35.209511, 48.965275>,  <38.646965, 34.823750, 48.860706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631035, 35.209511, 48.965275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397840, -0.224696, 0.889514,
		0.916590, 0.139428, -0.374729,
		-0.039824, 0.964402, 0.261424,
		38.619087, 35.498833, 49.043701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179386, 34.854836, 49.363686>,  <38.646965, 34.823750, 48.860706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179386, 34.854836, 49.363686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.016979, 35.220142, 49.376877>,  <38.919537, 35.439327, 49.384792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.016979, 35.220142, 49.376877>,  <39.179386, 34.854836, 49.363686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016979, 35.220142, 49.376877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315426, 0.106177, 0.942991,
		0.857704, 0.393274, -0.331179,
		-0.406018, 0.913270, 0.032980,
		38.895172, 35.494122, 49.386772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687973, 35.300911, 49.650951>,  <39.179386, 34.854836, 49.363686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687973, 35.300911, 49.650951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.301968, 35.391487, 49.703819>,  <39.070362, 35.445831, 49.735542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.301968, 35.391487, 49.703819>,  <39.687973, 35.300911, 49.650951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301968, 35.391487, 49.703819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151002, 0.067878, 0.986200,
		0.214344, 0.971657, -0.099696,
		-0.965016, 0.226440, 0.132173,
		39.012463, 35.459419, 49.743473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796543, 35.769936, 50.093491>,  <39.687973, 35.300911, 49.650951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796543, 35.769936, 50.093491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.409985, 35.670025, 50.117779>,  <39.178047, 35.610077, 50.132351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.409985, 35.670025, 50.117779>,  <39.796543, 35.769936, 50.093491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409985, 35.670025, 50.117779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035940, 0.102608, 0.994072,
		-0.254526, 0.962852, -0.090183,
		-0.966398, -0.249776, 0.060722,
		39.120064, 35.595093, 50.135994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446491, 36.309307, 50.449688>,  <39.796543, 35.769936, 50.093491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446491, 36.309307, 50.449688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.226261, 35.978046, 50.491711>,  <39.094124, 35.779289, 50.516922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.226261, 35.978046, 50.491711>,  <39.446491, 36.309307, 50.449688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226261, 35.978046, 50.491711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077165, 0.175793, 0.981398,
		-0.831213, 0.532225, -0.160692,
		-0.550573, -0.828151, 0.105052,
		39.061089, 35.729603, 50.523228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825256, 36.497742, 50.731617>,  <39.446491, 36.309307, 50.449688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825256, 36.497742, 50.731617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.956913, 36.129761, 50.816807>,  <39.035908, 35.908974, 50.867920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.956913, 36.129761, 50.816807>,  <38.825256, 36.497742, 50.731617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956913, 36.129761, 50.816807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432902, 0.053438, 0.899856,
		-0.839204, -0.388374, -0.380660,
		0.329139, -0.919951, 0.212974,
		39.055656, 35.853775, 50.880699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180561, 36.654751, 50.771156>,  <38.825256, 36.497742, 50.731617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180561, 36.654751, 50.771156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.963959, 36.924442, 50.972031>,  <37.833996, 37.086258, 51.092556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.963959, 36.924442, 50.972031>,  <38.180561, 36.654751, 50.771156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963959, 36.924442, 50.972031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031028, 0.580910, -0.813376,
		-0.840124, -0.456031, -0.293646,
		-0.541507, 0.674226, 0.502186,
		37.801506, 37.126709, 51.122688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456036, 36.699646, 50.463078>,  <38.180561, 36.654751, 50.771156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456036, 36.699646, 50.463078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.614269, 37.022564, 50.638248>,  <37.709209, 37.216316, 50.743351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.614269, 37.022564, 50.638248>,  <37.456036, 36.699646, 50.463078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614269, 37.022564, 50.638248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074672, 0.446974, -0.891425,
		-0.915390, 0.385333, 0.116533,
		0.395582, 0.807300, 0.437929,
		37.732944, 37.264755, 50.769627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309677, 37.158649, 50.014946>,  <37.456036, 36.699646, 50.463078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309677, 37.158649, 50.014946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.570793, 37.383308, 50.218288>,  <37.727463, 37.518105, 50.340294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.570793, 37.383308, 50.218288>,  <37.309677, 37.158649, 50.014946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570793, 37.383308, 50.218288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072313, 0.621791, -0.779838,
		-0.754081, 0.545829, 0.365283,
		0.652788, 0.561646, 0.508352,
		37.766628, 37.551804, 50.370792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026070, 37.822353, 50.018196>,  <37.309677, 37.158649, 50.014946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026070, 37.822353, 50.018196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.422791, 37.855446, 50.057129>,  <37.660824, 37.875301, 50.080490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.422791, 37.855446, 50.057129>,  <37.026070, 37.822353, 50.018196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422791, 37.855446, 50.057129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042993, 0.501319, -0.864194,
		-0.120295, 0.861298, 0.493654,
		0.991807, 0.082735, 0.097336,
		37.720333, 37.880268, 50.086330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189930, 38.646675, 49.904617>,  <37.026070, 37.822353, 50.018196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189930, 38.646675, 49.904617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.550701, 38.480202, 49.858459>,  <37.767166, 38.380318, 49.830765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.550701, 38.480202, 49.858459>,  <37.189930, 38.646675, 49.904617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550701, 38.480202, 49.858459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242239, 0.708694, -0.662626,
		0.357551, 0.569689, 0.740008,
		0.901930, -0.416181, -0.115393,
		37.821281, 38.355347, 49.823841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545147, 39.153755, 49.688000>,  <37.189930, 38.646675, 49.904617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545147, 39.153755, 49.688000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.779102, 38.841309, 49.600574>,  <37.919476, 38.653843, 49.548119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.779102, 38.841309, 49.600574>,  <37.545147, 39.153755, 49.688000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779102, 38.841309, 49.600574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239090, 0.423512, -0.873770,
		0.775076, 0.458802, 0.434463,
		0.584887, -0.781114, -0.218559,
		37.954567, 38.606976, 49.535007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999649, 39.407768, 49.278358>,  <37.545147, 39.153755, 49.688000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999649, 39.407768, 49.278358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.071751, 39.024113, 49.191124>,  <38.115009, 38.793919, 49.138783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.071751, 39.024113, 49.191124>,  <37.999649, 39.407768, 49.278358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071751, 39.024113, 49.191124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424399, 0.275858, -0.862432,
		0.887353, 0.062898, 0.456781,
		0.180252, -0.959139, -0.218089,
		38.125828, 38.736370, 49.125698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766178, 39.335918, 49.077240>,  <37.999649, 39.407768, 49.278358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766178, 39.335918, 49.077240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.569637, 39.031757, 48.907368>,  <38.451714, 38.849258, 48.805443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.569637, 39.031757, 48.907368>,  <38.766178, 39.335918, 49.077240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569637, 39.031757, 48.907368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271260, 0.329745, -0.904260,
		0.827642, -0.559509, 0.044248,
		-0.491351, -0.760406, -0.424683,
		38.422234, 38.803635, 48.779964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228806, 39.031174, 48.537415>,  <38.766178, 39.335918, 49.077240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228806, 39.031174, 48.537415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.861862, 38.909340, 48.434898>,  <38.641697, 38.836239, 48.373386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.861862, 38.909340, 48.434898>,  <39.228806, 39.031174, 48.537415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861862, 38.909340, 48.434898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203637, 0.194139, -0.959605,
		0.342040, -0.932489, -0.116069,
		-0.917355, -0.304587, -0.256292,
		38.586655, 38.817963, 48.358009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289879, 38.533207, 48.100662>,  <39.228806, 39.031174, 48.537415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289879, 38.533207, 48.100662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.917206, 38.665619, 48.040817>,  <38.693600, 38.745064, 48.004910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.917206, 38.665619, 48.040817>,  <39.289879, 38.533207, 48.100662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917206, 38.665619, 48.040817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136531, -0.062576, -0.988657,
		-0.336636, -0.941544, 0.013105,
		-0.931684, 0.331028, -0.149615,
		38.637699, 38.764927, 47.995934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065945, 38.190086, 47.501129>,  <39.289879, 38.533207, 48.100662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065945, 38.190086, 47.501129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.791592, 38.480145, 47.525555>,  <38.626980, 38.654179, 47.540211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.791592, 38.480145, 47.525555>,  <39.065945, 38.190086, 47.501129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791592, 38.480145, 47.525555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005064, 0.079155, -0.996849,
		-0.727691, -0.684034, -0.050619,
		-0.685886, 0.725142, 0.061064,
		38.585827, 38.697689, 47.543873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575493, 38.083607, 47.035446>,  <39.065945, 38.190086, 47.501129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575493, 38.083607, 47.035446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.499741, 38.472794, 47.088314>,  <38.454288, 38.706306, 47.120033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.499741, 38.472794, 47.088314>,  <38.575493, 38.083607, 47.035446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499741, 38.472794, 47.088314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087885, 0.117266, -0.989204,
		-0.977962, -0.198953, 0.063301,
		-0.189382, 0.972968, 0.132167,
		38.442924, 38.764683, 47.127964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838139, 38.225590, 46.662262>,  <38.575493, 38.083607, 47.035446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838139, 38.225590, 46.662262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.043320, 38.566547, 46.702869>,  <38.166428, 38.771122, 46.727234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.043320, 38.566547, 46.702869>,  <37.838139, 38.225590, 46.662262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043320, 38.566547, 46.702869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088859, 0.170355, -0.981368,
		-0.853807, 0.494372, 0.163126,
		0.512950, 0.852394, 0.101521,
		38.197205, 38.822266, 46.733326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352547, 38.718830, 46.337162>,  <37.838139, 38.225590, 46.662262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352547, 38.718830, 46.337162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.737621, 38.820984, 46.372971>,  <37.968666, 38.882275, 46.394455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.737621, 38.820984, 46.372971>,  <37.352547, 38.718830, 46.337162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737621, 38.820984, 46.372971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045618, 0.479195, -0.876522,
		-0.266748, 0.839733, 0.472964,
		0.962686, 0.255386, 0.089517,
		38.026428, 38.897598, 46.399826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396324, 39.456043, 46.275894>,  <37.352547, 38.718830, 46.337162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396324, 39.456043, 46.275894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.746674, 39.285248, 46.185982>,  <37.956882, 39.182770, 46.132034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.746674, 39.285248, 46.185982>,  <37.396324, 39.456043, 46.275894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746674, 39.285248, 46.185982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020444, 0.432570, -0.901369,
		0.482104, 0.794082, 0.370148,
		0.875875, -0.426986, -0.224778,
		38.009438, 39.157150, 46.118549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007812, 40.097763, 46.392738>,  <37.396324, 39.456043, 46.275894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007812, 40.097763, 46.392738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.623623, 40.086708, 46.281937>,  <36.393108, 40.080074, 46.215454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.623623, 40.086708, 46.281937>,  <37.007812, 40.097763, 46.392738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623623, 40.086708, 46.281937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257613, -0.288874, 0.922056,
		-0.105503, 0.956968, 0.270335,
		-0.960471, -0.027638, -0.277005,
		36.335480, 40.078415, 46.198833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632561, 40.557636, 46.767681>,  <37.007812, 40.097763, 46.392738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632561, 40.557636, 46.767681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.356483, 40.287628, 46.663387>,  <36.190838, 40.125622, 46.600811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.356483, 40.287628, 46.663387>,  <36.632561, 40.557636, 46.767681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356483, 40.287628, 46.663387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191190, -0.177408, 0.965388,
		-0.697914, 0.716151, -0.006612,
		-0.690190, -0.675022, -0.260736,
		36.149426, 40.085121, 46.585167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001152, 40.692673, 47.220749>,  <36.632561, 40.557636, 46.767681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001152, 40.692673, 47.220749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.984768, 40.304520, 47.125519>,  <35.974937, 40.071629, 47.068382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.984768, 40.304520, 47.125519>,  <36.001152, 40.692673, 47.220749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984768, 40.304520, 47.125519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352548, -0.208915, 0.912176,
		-0.934897, 0.121296, -0.333549,
		-0.040960, -0.970382, -0.238076,
		35.972481, 40.013405, 47.054096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428745, 40.441010, 47.604027>,  <36.001152, 40.692673, 47.220749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428745, 40.441010, 47.604027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.632435, 40.120670, 47.477962>,  <35.754650, 39.928467, 47.402325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.632435, 40.120670, 47.477962>,  <35.428745, 40.441010, 47.604027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632435, 40.120670, 47.477962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276094, -0.498856, 0.821532,
		-0.815146, -0.331329, -0.475140,
		0.509223, -0.800852, -0.315163,
		35.785202, 39.880413, 47.383415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904755, 39.960461, 47.669956>,  <35.428745, 40.441010, 47.604027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904755, 39.960461, 47.669956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.261478, 39.779797, 47.659569>,  <35.475513, 39.671398, 47.653336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.261478, 39.779797, 47.659569>,  <34.904755, 39.960461, 47.669956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261478, 39.779797, 47.659569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236864, -0.515061, 0.823776,
		-0.385447, -0.728500, -0.566319,
		0.891810, -0.451663, -0.025973,
		35.529022, 39.644299, 47.651775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762665, 39.332199, 47.880661>,  <34.904755, 39.960461, 47.669956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762665, 39.332199, 47.880661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.160000, 39.361881, 47.915924>,  <35.398399, 39.379688, 47.937080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.160000, 39.361881, 47.915924>,  <34.762665, 39.332199, 47.880661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160000, 39.361881, 47.915924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035954, -0.527267, 0.848939,
		0.109476, -0.846453, -0.521087,
		0.993339, 0.074203, 0.088156,
		35.458000, 39.384144, 47.942371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059479, 38.667290, 48.017269>,  <34.762665, 39.332199, 47.880661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059479, 38.667290, 48.017269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.342167, 38.905602, 48.169895>,  <35.511780, 39.048588, 48.261471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.342167, 38.905602, 48.169895>,  <35.059479, 38.667290, 48.017269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342167, 38.905602, 48.169895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034069, -0.510040, 0.859476,
		0.706672, -0.620409, -0.340158,
		0.706721, 0.595778, 0.381568,
		35.554184, 39.084335, 48.284367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540237, 38.227131, 48.209820>,  <35.059479, 38.667290, 48.017269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540237, 38.227131, 48.209820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.473076, 38.572998, 48.399197>,  <35.432781, 38.780518, 48.512825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.473076, 38.572998, 48.399197>,  <35.540237, 38.227131, 48.209820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473076, 38.572998, 48.399197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244710, -0.501789, 0.829654,
		0.954948, 0.023444, 0.295845,
		-0.167902, 0.864672, 0.473445,
		35.422707, 38.832401, 48.541229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185352, 37.660168, 48.315220>,  <35.540237, 38.227131, 48.209820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185352, 37.660168, 48.315220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.837643, 37.812981, 48.189732>,  <34.629017, 37.904667, 48.114437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.837643, 37.812981, 48.189732>,  <35.185352, 37.660168, 48.315220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837643, 37.812981, 48.189732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253886, -0.199512, -0.946434,
		-0.424157, -0.902357, 0.076439,
		-0.869272, 0.382030, -0.313720,
		34.576862, 37.927589, 48.095615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821201, 37.096943, 48.029602>,  <35.185352, 37.660168, 48.315220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821201, 37.096943, 48.029602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.679604, 37.430264, 47.859753>,  <34.594646, 37.630257, 47.757843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.679604, 37.430264, 47.859753>,  <34.821201, 37.096943, 48.029602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679604, 37.430264, 47.859753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153289, -0.396187, -0.905284,
		-0.922600, -0.385554, 0.012513,
		-0.353993, 0.833297, -0.424623,
		34.573406, 37.680252, 47.732365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483196, 36.886242, 47.423332>,  <34.821201, 37.096943, 48.029602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483196, 36.886242, 47.423332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.547070, 37.276608, 47.363873>,  <34.585396, 37.510826, 47.328197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.547070, 37.276608, 47.363873>,  <34.483196, 36.886242, 47.423332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547070, 37.276608, 47.363873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321852, -0.193827, -0.926737,
		-0.933226, 0.100142, -0.345051,
		0.159686, 0.975911, -0.148654,
		34.594975, 37.569382, 47.319275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214794, 36.984978, 46.789688>,  <34.483196, 36.886242, 47.423332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214794, 36.984978, 46.789688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.444599, 37.305592, 46.855988>,  <34.582481, 37.497959, 46.895767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.444599, 37.305592, 46.855988>,  <34.214794, 36.984978, 46.789688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444599, 37.305592, 46.855988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170195, 0.081094, -0.982068,
		-0.800605, 0.592420, -0.089829,
		0.574513, 0.801537, 0.165751,
		34.616951, 37.546051, 46.905712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007839, 37.520187, 46.335087>,  <34.214794, 36.984978, 46.789688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007839, 37.520187, 46.335087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.375469, 37.626385, 46.451580>,  <34.596046, 37.690102, 46.521477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.375469, 37.626385, 46.451580>,  <34.007839, 37.520187, 46.335087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375469, 37.626385, 46.451580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282774, 0.070451, -0.956596,
		-0.274488, 0.961535, -0.010325,
		0.919073, 0.265494, 0.291235,
		34.651192, 37.706032, 46.538952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218880, 38.145554, 45.871845>,  <34.007839, 37.520187, 46.335087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218880, 38.145554, 45.871845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.571621, 37.999729, 45.991467>,  <34.783264, 37.912235, 46.063240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.571621, 37.999729, 45.991467>,  <34.218880, 38.145554, 45.871845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571621, 37.999729, 45.991467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399568, 0.241014, -0.884453,
		0.250357, 0.899450, 0.358204,
		0.881854, -0.364556, 0.299052,
		34.836178, 37.890362, 46.081181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.179337, 33.366104, 50.897915> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.501171, 33.576012, 50.786728>,  <36.694271, 33.701954, 50.720016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.501171, 33.576012, 50.786728>,  <36.179337, 33.366104, 50.897915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501171, 33.576012, 50.786728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365224, 0.068192, -0.928419,
		-0.468247, 0.848511, 0.246524,
		0.804585, 0.524765, -0.277966,
		36.742546, 33.733440, 50.703339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031643, 33.919155, 50.539444>,  <36.179337, 33.366104, 50.897915>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031643, 33.919155, 50.539444> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.409649, 33.862885, 50.421360>,  <36.636452, 33.829121, 50.350510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.409649, 33.862885, 50.421360>,  <36.031643, 33.919155, 50.539444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409649, 33.862885, 50.421360> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274657, 0.148513, -0.950004,
		0.177486, 0.978853, 0.101710,
		0.945020, -0.140677, -0.295208,
		36.693153, 33.820683, 50.332798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155418, 34.439373, 49.946396>,  <36.031643, 33.919155, 50.539444>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155418, 34.439373, 49.946396> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.453823, 34.177711, 49.896519>,  <36.632866, 34.020714, 49.866592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.453823, 34.177711, 49.896519>,  <36.155418, 34.439373, 49.946396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453823, 34.177711, 49.896519> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039279, 0.143701, -0.988841,
		0.664769, 0.742589, 0.081510,
		0.746016, -0.654149, -0.124696,
		36.677628, 33.981468, 49.859108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674484, 34.801147, 49.480259>,  <36.155418, 34.439373, 49.946396>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674484, 34.801147, 49.480259> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.712887, 34.403797, 49.454990>,  <36.735928, 34.165386, 49.439831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.712887, 34.403797, 49.454990>,  <36.674484, 34.801147, 49.480259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712887, 34.403797, 49.454990> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123836, 0.051050, -0.990989,
		0.987647, 0.102967, -0.118114,
		0.096010, -0.993374, -0.063170,
		36.741692, 34.105785, 49.436039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124653, 34.597187, 48.796402>,  <36.674484, 34.801147, 49.480259>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124653, 34.597187, 48.796402> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.951935, 34.246490, 48.881145>,  <36.848305, 34.036072, 48.931992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.951935, 34.246490, 48.881145>,  <37.124653, 34.597187, 48.796402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951935, 34.246490, 48.881145> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088873, -0.275094, -0.957301,
		0.897582, -0.394531, 0.196703,
		-0.431797, -0.876737, 0.211856,
		36.822395, 33.983471, 48.944702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556374, 34.065590, 48.594326>,  <37.124653, 34.597187, 48.796402>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556374, 34.065590, 48.594326> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.205330, 33.875648, 48.620598>,  <36.994701, 33.761684, 48.636360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.205330, 33.875648, 48.620598>,  <37.556374, 34.065590, 48.594326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205330, 33.875648, 48.620598> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104589, -0.323376, -0.940473,
		0.467824, -0.818501, 0.333463,
		-0.877611, -0.474853, 0.065676,
		36.942047, 33.733192, 48.640301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614037, 33.537788, 48.178051>,  <37.556374, 34.065590, 48.594326>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614037, 33.537788, 48.178051> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.215096, 33.566124, 48.171478>,  <36.975731, 33.583126, 48.167534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.215096, 33.566124, 48.171478>,  <37.614037, 33.537788, 48.178051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215096, 33.566124, 48.171478> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003492, -0.179065, -0.983831,
		-0.072634, -0.981284, 0.178344,
		-0.997353, 0.070837, -0.016433,
		36.915890, 33.587376, 48.166550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410622, 33.010860, 47.728462>,  <37.614037, 33.537788, 48.178051>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410622, 33.010860, 47.728462> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.088146, 33.245407, 47.760029>,  <36.894661, 33.386135, 47.778969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.088146, 33.245407, 47.760029>,  <37.410622, 33.010860, 47.728462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088146, 33.245407, 47.760029> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196262, -0.139201, -0.970621,
		-0.558152, -0.797997, 0.227304,
		-0.806193, 0.586365, 0.078921,
		36.846287, 33.421318, 47.783707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783634, 32.644836, 47.441208>,  <37.410622, 33.010860, 47.728462>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783634, 32.644836, 47.441208> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.723995, 33.038097, 47.398926>,  <36.688210, 33.274055, 47.373558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.723995, 33.038097, 47.398926>,  <36.783634, 32.644836, 47.441208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723995, 33.038097, 47.398926> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130271, -0.125494, -0.983504,
		-0.980203, -0.132870, 0.146788,
		-0.149099, 0.983157, -0.105701,
		36.679264, 33.333046, 47.367214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269760, 32.619595, 46.939445>,  <36.783634, 32.644836, 47.441208>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269760, 32.619595, 46.939445> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.371773, 33.006363, 46.937618>,  <36.432980, 33.238422, 46.936523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.371773, 33.006363, 46.937618>,  <36.269760, 32.619595, 46.939445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371773, 33.006363, 46.937618> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378468, 0.095474, -0.920677,
		-0.889787, 0.236531, 0.390298,
		0.255032, 0.966922, -0.004568,
		36.448284, 33.296440, 46.936249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689983, 32.976692, 46.768444>,  <36.269760, 32.619595, 46.939445>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689983, 32.976692, 46.768444> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.985935, 33.234001, 46.689674>,  <36.163506, 33.388386, 46.642414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.985935, 33.234001, 46.689674>,  <35.689983, 32.976692, 46.768444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985935, 33.234001, 46.689674> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412326, 0.202320, -0.888287,
		-0.531573, 0.738419, 0.414931,
		0.739877, 0.643276, -0.196921,
		36.207897, 33.426983, 46.630596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344631, 33.544483, 46.511581>,  <35.689983, 32.976692, 46.768444>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344631, 33.544483, 46.511581> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.721249, 33.587772, 46.383972>,  <35.947220, 33.613747, 46.307407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.721249, 33.587772, 46.383972>,  <35.344631, 33.544483, 46.511581>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721249, 33.587772, 46.383972> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334377, 0.184984, -0.924107,
		-0.040991, 0.976765, 0.210357,
		0.941547, 0.108219, -0.319025,
		36.003712, 33.620239, 46.288265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653278, 33.223331, 46.744091>,  <35.344631, 33.544483, 46.511581>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653278, 33.223331, 46.744091> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.323757, 33.449619, 46.758518>,  <34.126045, 33.585392, 46.767174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.323757, 33.449619, 46.758518>,  <34.653278, 33.223331, 46.744091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323757, 33.449619, 46.758518> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250204, 0.305780, 0.918638,
		0.508666, 0.765805, -0.393450,
		-0.823807, 0.565723, 0.036068,
		34.076614, 33.619335, 46.769341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778332, 33.708675, 47.222332>,  <34.653278, 33.223331, 46.744091>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778332, 33.708675, 47.222332> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.379162, 33.721111, 47.199791>,  <34.139660, 33.728573, 47.186268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.379162, 33.721111, 47.199791>,  <34.778332, 33.708675, 47.222332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379162, 33.721111, 47.199791> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043719, 0.315049, 0.948068,
		0.047227, 0.948566, -0.313037,
		-0.997927, 0.031089, -0.056349,
		34.079784, 33.730438, 47.182888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612686, 34.278275, 47.425560>,  <34.778332, 33.708675, 47.222332>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612686, 34.278275, 47.425560> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.283066, 34.060345, 47.487659>,  <34.085293, 33.929585, 47.524918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.283066, 34.060345, 47.487659>,  <34.612686, 34.278275, 47.425560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283066, 34.060345, 47.487659> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009967, 0.287943, 0.957595,
		-0.566429, 0.787559, -0.242710,
		-0.824050, -0.544829, 0.155250,
		34.035851, 33.896896, 47.534233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083561, 34.711971, 47.728252>,  <34.612686, 34.278275, 47.425560>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083561, 34.711971, 47.728252> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.985889, 34.339127, 47.835243>,  <33.927288, 34.115421, 47.899437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.985889, 34.339127, 47.835243>,  <34.083561, 34.711971, 47.728252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985889, 34.339127, 47.835243> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120392, 0.302834, 0.945409,
		-0.962229, 0.198643, -0.186164,
		-0.244175, -0.932112, 0.267480,
		33.912636, 34.059494, 47.915485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440811, 34.718113, 48.087914>,  <34.083561, 34.711971, 47.728252>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440811, 34.718113, 48.087914> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.637962, 34.394157, 48.215130>,  <33.756252, 34.199783, 48.291462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.637962, 34.394157, 48.215130>,  <33.440811, 34.718113, 48.087914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637962, 34.394157, 48.215130> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139857, 0.287032, 0.947656,
		-0.858784, -0.511562, 0.028204,
		0.492880, -0.809887, 0.318044,
		33.785828, 34.151192, 48.310543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167698, 34.738823, 48.679661>,  <33.440811, 34.718113, 48.087914>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167698, 34.738823, 48.679661> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.423763, 34.434574, 48.722828>,  <33.577404, 34.252026, 48.748730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.423763, 34.434574, 48.722828>,  <33.167698, 34.738823, 48.679661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423763, 34.434574, 48.722828> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216011, -0.043403, 0.975426,
		-0.737245, -0.647744, -0.192088,
		0.640163, -0.760621, 0.107922,
		33.615814, 34.206387, 48.755203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922535, 34.094208, 48.942142>,  <33.167698, 34.738823, 48.679661>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922535, 34.094208, 48.942142> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.307770, 34.116169, 49.047554>,  <33.538910, 34.129345, 49.110802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.307770, 34.116169, 49.047554>,  <32.922535, 34.094208, 48.942142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307770, 34.116169, 49.047554> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269092, 0.170679, 0.947870,
		0.007062, -0.983796, 0.179153,
		0.963089, 0.054903, 0.263526,
		33.596695, 34.132641, 49.126614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.848816, 33.796787, 49.542244>,  <32.922535, 34.094208, 48.942142>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.848816, 33.796787, 49.542244> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.202961, 33.982513, 49.532925>,  <33.415447, 34.093948, 49.527332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.202961, 33.982513, 49.532925>,  <32.848816, 33.796787, 49.542244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202961, 33.982513, 49.532925> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166235, 0.362976, 0.916850,
		0.434169, -0.807870, 0.398551,
		0.885361, 0.464321, -0.023297,
		33.468571, 34.121807, 49.525936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158649, 33.693752, 50.322079>,  <32.848816, 33.796787, 49.542244>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158649, 33.693752, 50.322079> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.314972, 34.018623, 50.148811>,  <33.408768, 34.213547, 50.044849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.314972, 34.018623, 50.148811>,  <33.158649, 33.693752, 50.322079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314972, 34.018623, 50.148811> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086387, 0.500884, 0.861193,
		0.916409, -0.299141, 0.265911,
		0.390809, 0.812176, -0.433173,
		33.432217, 34.262276, 50.018860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585472, 33.949123, 50.872070>,  <33.158649, 33.693752, 50.322079>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585472, 33.949123, 50.872070> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.556320, 34.257969, 50.619553>,  <33.538830, 34.443275, 50.468040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.556320, 34.257969, 50.619553>,  <33.585472, 33.949123, 50.872070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556320, 34.257969, 50.619553> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037746, 0.630391, 0.775359,
		0.996626, 0.080334, -0.016797,
		-0.072877, 0.772109, -0.631297,
		33.534458, 34.489601, 50.430164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.974606, 34.455730, 51.174263>,  <33.585472, 33.949123, 50.872070>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.974606, 34.455730, 51.174263> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.759583, 34.669689, 50.913521>,  <33.630569, 34.798065, 50.757076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.759583, 34.669689, 50.913521>,  <33.974606, 34.455730, 51.174263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759583, 34.669689, 50.913521> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121785, 0.715696, 0.687712,
		0.834388, 0.449069, -0.319583,
		-0.537554, 0.534899, -0.651858,
		33.598316, 34.830158, 50.717964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316475, 35.107616, 51.078201>,  <33.974606, 34.455730, 51.174263>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316475, 35.107616, 51.078201> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.933395, 35.152599, 50.972248>,  <33.703548, 35.179588, 50.908676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.933395, 35.152599, 50.972248>,  <34.316475, 35.107616, 51.078201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933395, 35.152599, 50.972248> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100412, 0.732025, 0.673837,
		0.269681, 0.671931, -0.689768,
		-0.957700, 0.112461, -0.264883,
		33.646084, 35.186337, 50.892784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203499, 35.815563, 50.885948>,  <34.316475, 35.107616, 51.078201>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203499, 35.815563, 50.885948> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.859741, 35.654724, 51.012287>,  <33.653488, 35.558220, 51.088093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.859741, 35.654724, 51.012287>,  <34.203499, 35.815563, 50.885948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859741, 35.654724, 51.012287> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191029, 0.825483, 0.531116,
		-0.474288, 0.396102, -0.786228,
		-0.859394, -0.402095, 0.315850,
		33.601921, 35.534096, 51.107040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757629, 36.474194, 50.878460>,  <34.203499, 35.815563, 50.885948>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757629, 36.474194, 50.878460> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.611988, 36.191578, 51.121189>,  <33.524605, 36.022007, 51.266827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.611988, 36.191578, 51.121189>,  <33.757629, 36.474194, 50.878460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611988, 36.191578, 51.121189> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094478, 0.676201, 0.730634,
		-0.926554, 0.208695, -0.312959,
		-0.364103, -0.706540, 0.606820,
		33.502758, 35.979614, 51.303234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.066078, 36.750488, 50.817463>,  <33.757629, 36.474194, 50.878460>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.066078, 36.750488, 50.817463> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.875408, 37.096413, 50.754375>,  <32.761005, 37.303967, 50.716522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.875408, 37.096413, 50.754375>,  <33.066078, 36.750488, 50.817463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875408, 37.096413, 50.754375> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467326, 0.097336, -0.878710,
		-0.744569, -0.492568, -0.450548,
		-0.476680, 0.864814, -0.157716,
		32.732403, 37.355858, 50.707062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724277, 36.757320, 50.070457>,  <33.066078, 36.750488, 50.817463>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724277, 36.757320, 50.070457> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.778114, 37.136318, 50.186485>,  <32.810417, 37.363716, 50.256104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.778114, 37.136318, 50.186485>,  <32.724277, 36.757320, 50.070457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778114, 37.136318, 50.186485> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339237, 0.230989, -0.911900,
		-0.931023, 0.221136, -0.290337,
		0.134589, 0.947493, 0.290074,
		32.818489, 37.420567, 50.273506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526577, 37.183674, 49.520691>,  <32.724277, 36.757320, 50.070457>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526577, 37.183674, 49.520691> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.740128, 37.452347, 49.726143>,  <32.868259, 37.613552, 49.849415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.740128, 37.452347, 49.726143>,  <32.526577, 37.183674, 49.520691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740128, 37.452347, 49.726143> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281715, 0.431440, -0.857028,
		-0.797253, 0.602244, 0.041113,
		0.533877, 0.671685, 0.513628,
		32.900291, 37.653854, 49.880230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269432, 37.895493, 49.388107>,  <32.526577, 37.183674, 49.520691>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269432, 37.895493, 49.388107> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.657864, 37.883270, 49.482822>,  <32.890923, 37.875935, 49.539654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.657864, 37.883270, 49.482822>,  <32.269432, 37.895493, 49.388107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657864, 37.883270, 49.482822> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234708, 0.304007, -0.923305,
		-0.043772, 0.952180, 0.302387,
		0.971080, -0.030558, 0.236792,
		32.949188, 37.874104, 49.553860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602879, 38.579441, 49.089909>,  <32.269432, 37.895493, 49.388107>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602879, 38.579441, 49.089909> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.936028, 38.384743, 49.195286>,  <33.135918, 38.267925, 49.258511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.936028, 38.384743, 49.195286>,  <32.602879, 38.579441, 49.089909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936028, 38.384743, 49.195286> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512383, 0.498141, -0.699513,
		0.209255, 0.717588, 0.664289,
		0.832872, -0.486747, 0.263442,
		33.185890, 38.238720, 49.274319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079899, 39.050434, 49.159721>,  <32.602879, 38.579441, 49.089909>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079899, 39.050434, 49.159721> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.263035, 38.701725, 49.089981>,  <33.372917, 38.492500, 49.048138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.263035, 38.701725, 49.089981>,  <33.079899, 39.050434, 49.159721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263035, 38.701725, 49.089981> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591987, 0.445253, -0.671790,
		0.663276, 0.204360, 0.719932,
		0.457839, -0.871772, -0.174348,
		33.400387, 38.440193, 49.037678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732483, 39.146519, 49.117451>,  <33.079899, 39.050434, 49.159721>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732483, 39.146519, 49.117451> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.665867, 38.814541, 48.904491>,  <33.625896, 38.615353, 48.776714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.665867, 38.814541, 48.904491>,  <33.732483, 39.146519, 49.117451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665867, 38.814541, 48.904491> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623165, 0.329852, -0.709128,
		0.764153, -0.449872, 0.462261,
		-0.166539, -0.829948, -0.532402,
		33.615906, 38.565556, 48.744770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356853, 39.063438, 48.892853>,  <33.732483, 39.146519, 49.117451>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356853, 39.063438, 48.892853> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.144817, 38.832008, 48.644897>,  <34.017597, 38.693150, 48.496124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.144817, 38.832008, 48.644897>,  <34.356853, 39.063438, 48.892853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144817, 38.832008, 48.644897> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584392, 0.280432, -0.761475,
		0.614405, -0.765905, 0.189459,
		-0.530087, -0.578573, -0.619888,
		33.985790, 38.658436, 48.458931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606594, 39.474178, 49.532604>,  <34.356853, 39.063438, 48.892853>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606594, 39.474178, 49.532604> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.817574, 39.761269, 49.350758>,  <34.944160, 39.933521, 49.241650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.817574, 39.761269, 49.350758>,  <34.606594, 39.474178, 49.532604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817574, 39.761269, 49.350758> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663947, -0.014359, 0.747642,
		0.530072, -0.696180, -0.484104,
		0.527444, 0.717724, -0.454616,
		34.975807, 39.976585, 49.214375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227470, 39.296394, 49.691616>,  <34.606594, 39.474178, 49.532604>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227470, 39.296394, 49.691616> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.276741, 39.675476, 49.573841>,  <35.306301, 39.902924, 49.503178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.276741, 39.675476, 49.573841>,  <35.227470, 39.296394, 49.691616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276741, 39.675476, 49.573841> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623382, 0.156963, 0.766001,
		0.772155, -0.277897, -0.571446,
		0.123174, 0.947700, -0.294436,
		35.313694, 39.959785, 49.485512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945580, 39.428371, 49.635368>,  <35.227470, 39.296394, 49.691616>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945580, 39.428371, 49.635368> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.754616, 39.775558, 49.690098>,  <35.640038, 39.983871, 49.722935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.754616, 39.775558, 49.690098>,  <35.945580, 39.428371, 49.635368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754616, 39.775558, 49.690098> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576793, 0.192093, 0.793984,
		0.662866, 0.457974, -0.592342,
		-0.477409, 0.867963, 0.136825,
		35.611393, 40.035946, 49.731144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493412, 39.900402, 49.667282>,  <35.945580, 39.428371, 49.635368>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493412, 39.900402, 49.667282> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.182873, 40.079041, 49.845200>,  <35.996548, 40.186222, 49.951950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.182873, 40.079041, 49.845200>,  <36.493412, 39.900402, 49.667282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182873, 40.079041, 49.845200> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536342, 0.097389, 0.838363,
		0.331090, 0.889421, -0.315135,
		-0.776348, 0.446594, 0.444789,
		35.949970, 40.213020, 49.978638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620903, 40.578167, 49.886860>,  <36.493412, 39.900402, 49.667282>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620903, 40.578167, 49.886860> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.321957, 40.484993, 50.135754>,  <36.142590, 40.429089, 50.285091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.321957, 40.484993, 50.135754>,  <36.620903, 40.578167, 49.886860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321957, 40.484993, 50.135754> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556930, 0.291062, 0.777889,
		-0.362309, 0.927913, -0.087801,
		-0.747369, -0.232937, 0.622237,
		36.097744, 40.415112, 50.322426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593224, 41.117641, 50.421692>,  <36.620903, 40.578167, 49.886860>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593224, 41.117641, 50.421692> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.393856, 40.828690, 50.613419>,  <36.274235, 40.655319, 50.728455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.393856, 40.828690, 50.613419>,  <36.593224, 41.117641, 50.421692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393856, 40.828690, 50.613419> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348114, 0.339590, 0.873782,
		-0.793972, 0.602371, 0.082210,
		-0.498423, -0.722377, 0.479319,
		36.244328, 40.611977, 50.757214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196686, 41.445824, 51.008732>,  <36.593224, 41.117641, 50.421692>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196686, 41.445824, 51.008732> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.267101, 41.056973, 51.070663>,  <36.309353, 40.823662, 51.107822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.267101, 41.056973, 51.070663>,  <36.196686, 41.445824, 51.008732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267101, 41.056973, 51.070663> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304645, 0.203370, 0.930501,
		-0.936056, -0.116638, 0.331956,
		0.176042, -0.972130, 0.154832,
		36.319912, 40.765335, 51.117111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172810, 41.375896, 51.747177>,  <36.196686, 41.445824, 51.008732>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172810, 41.375896, 51.747177> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.321354, 41.005371, 51.721760>,  <36.410480, 40.783054, 51.706509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.321354, 41.005371, 51.721760>,  <36.172810, 41.375896, 51.747177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321354, 41.005371, 51.721760> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467122, 0.127243, 0.874989,
		-0.802427, -0.354620, 0.479953,
		0.371359, -0.926312, -0.063548,
		36.432762, 40.727478, 51.702694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.319340, 39.013618, 35.964584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628056, 39.239838, 36.080856>,  <37.813286, 39.375568, 36.150620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628056, 39.239838, 36.080856>,  <37.319340, 39.013618, 35.964584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628056, 39.239838, 36.080856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346643, -0.009036, 0.937954,
		0.533083, -0.824667, 0.189068,
		0.771791, 0.565546, 0.290682,
		37.859592, 39.409500, 36.168060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536781, 38.783615, 36.686512>,  <37.319340, 39.013618, 35.964584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536781, 38.783615, 36.686512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644844, 39.160511, 36.607323>,  <37.709682, 39.386650, 36.559807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644844, 39.160511, 36.607323>,  <37.536781, 38.783615, 36.686512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644844, 39.160511, 36.607323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182135, 0.251922, 0.950454,
		0.945432, -0.220715, 0.239674,
		0.270159, 0.942242, -0.197975,
		37.725891, 39.443184, 36.547932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871956, 38.938892, 37.196125>,  <37.536781, 38.783615, 36.686512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871956, 38.938892, 37.196125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816341, 39.316666, 37.076981>,  <37.782974, 39.543327, 37.005493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816341, 39.316666, 37.076981>,  <37.871956, 38.938892, 37.196125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816341, 39.316666, 37.076981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075480, 0.289805, 0.954105,
		0.987407, 0.155136, 0.030993,
		-0.139034, 0.944429, -0.297865,
		37.774632, 39.599995, 36.987621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331093, 39.447384, 37.565987>,  <37.871956, 38.938892, 37.196125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331093, 39.447384, 37.565987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997620, 39.629013, 37.440254>,  <37.797535, 39.737991, 37.364815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997620, 39.629013, 37.440254>,  <38.331093, 39.447384, 37.565987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997620, 39.629013, 37.440254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228514, 0.234529, 0.944869,
		0.502754, 0.859545, -0.091760,
		-0.833678, 0.454068, -0.314328,
		37.747517, 39.765232, 37.345955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247532, 39.974236, 38.051304>,  <38.331093, 39.447384, 37.565987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247532, 39.974236, 38.051304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892273, 40.017082, 37.872543>,  <37.679119, 40.042789, 37.765285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892273, 40.017082, 37.872543>,  <38.247532, 39.974236, 38.051304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892273, 40.017082, 37.872543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350109, 0.472220, 0.808970,
		0.297693, 0.874947, -0.381897,
		-0.888146, 0.107119, -0.446903,
		37.625828, 40.049217, 37.738472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057617, 40.638119, 38.172092>,  <38.247532, 39.974236, 38.051304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057617, 40.638119, 38.172092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714882, 40.440262, 38.113899>,  <37.509243, 40.321548, 38.078983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714882, 40.440262, 38.113899>,  <38.057617, 40.638119, 38.172092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714882, 40.440262, 38.113899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407402, 0.476597, 0.779024,
		-0.316001, 0.726764, -0.609882,
		-0.856836, -0.494640, -0.145480,
		37.457832, 40.291870, 38.070255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576351, 41.073605, 38.301254>,  <38.057617, 40.638119, 38.172092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576351, 41.073605, 38.301254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359627, 40.741093, 38.350903>,  <37.229591, 40.541584, 38.380692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359627, 40.741093, 38.350903>,  <37.576351, 41.073605, 38.301254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359627, 40.741093, 38.350903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443150, 0.408016, 0.798211,
		-0.714183, 0.377478, -0.589452,
		-0.541813, -0.831284, 0.124119,
		37.197083, 40.491707, 38.388138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913284, 41.331207, 38.537701>,  <37.576351, 41.073605, 38.301254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913284, 41.331207, 38.537701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.897209, 40.940826, 38.623398>,  <36.887566, 40.706596, 38.674816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.897209, 40.940826, 38.623398>,  <36.913284, 41.331207, 38.537701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897209, 40.940826, 38.623398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494847, 0.205718, 0.844279,
		-0.868050, -0.072091, -0.491214,
		-0.040186, -0.975952, 0.214247,
		36.885155, 40.648041, 38.687672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220184, 41.192890, 38.666916>,  <36.913284, 41.331207, 38.537701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220184, 41.192890, 38.666916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.423340, 40.884476, 38.820560>,  <36.545235, 40.699425, 38.912746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.423340, 40.884476, 38.820560>,  <36.220184, 41.192890, 38.666916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423340, 40.884476, 38.820560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591462, 0.012048, 0.806243,
		-0.626273, -0.636673, -0.449922,
		0.507892, -0.771040, 0.384113,
		36.575706, 40.653164, 38.935795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795757, 40.843349, 38.919308>,  <36.220184, 41.192890, 38.666916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795757, 40.843349, 38.919308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.107922, 40.698917, 39.123497>,  <36.295219, 40.612259, 39.246010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.107922, 40.698917, 39.123497>,  <35.795757, 40.843349, 38.919308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107922, 40.698917, 39.123497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544589, 0.008616, 0.838659,
		-0.307222, -0.932495, -0.189916,
		0.780409, -0.361081, 0.510473,
		36.342045, 40.590595, 39.276638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515965, 40.264984, 39.335339>,  <35.795757, 40.843349, 38.919308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515965, 40.264984, 39.335339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863541, 40.380547, 39.496078>,  <36.072086, 40.449886, 39.592522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863541, 40.380547, 39.496078>,  <35.515965, 40.264984, 39.335339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863541, 40.380547, 39.496078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404375, -0.053711, 0.913015,
		0.285363, -0.955848, 0.070157,
		0.868936, 0.288911, 0.401848,
		36.124222, 40.467220, 39.616634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487179, 39.880329, 39.938377>,  <35.515965, 40.264984, 39.335339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487179, 39.880329, 39.938377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762890, 40.152805, 40.037067>,  <35.928318, 40.316292, 40.096283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762890, 40.152805, 40.037067>,  <35.487179, 39.880329, 39.938377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762890, 40.152805, 40.037067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231328, -0.115792, 0.965960,
		0.686571, -0.722892, 0.077765,
		0.689280, 0.681190, 0.246725,
		35.969673, 40.357162, 40.111084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089874, 39.112312, 39.935085>,  <35.487179, 39.880329, 39.938377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089874, 39.112312, 39.935085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758621, 39.125126, 40.158928>,  <34.559868, 39.132812, 40.293236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758621, 39.125126, 40.158928>,  <35.089874, 39.112312, 39.935085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758621, 39.125126, 40.158928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541141, 0.214592, -0.813091,
		-0.146135, -0.976178, -0.160376,
		-0.828137, 0.032035, 0.559610,
		34.510181, 39.134735, 40.326813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562542, 38.701580, 39.589294>,  <35.089874, 39.112312, 39.935085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562542, 38.701580, 39.589294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.357464, 38.942471, 39.834068>,  <34.234417, 39.087006, 39.980934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.357464, 38.942471, 39.834068>,  <34.562542, 38.701580, 39.589294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357464, 38.942471, 39.834068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613728, 0.241353, -0.751722,
		-0.600403, -0.760964, 0.245866,
		-0.512693, 0.602231, 0.611934,
		34.203655, 39.123138, 40.017647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850330, 38.561775, 39.470943>,  <34.562542, 38.701580, 39.589294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850330, 38.561775, 39.470943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861813, 38.914730, 39.658798>,  <33.868702, 39.126503, 39.771511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861813, 38.914730, 39.658798>,  <33.850330, 38.561775, 39.470943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861813, 38.914730, 39.658798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826165, 0.285423, -0.485783,
		-0.562696, -0.374057, 0.737193,
		0.028702, 0.882392, 0.469639,
		33.870422, 39.179447, 39.799690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206024, 38.713287, 39.805180>,  <33.850330, 38.561775, 39.470943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206024, 38.713287, 39.805180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.396523, 39.057186, 39.731400>,  <33.510822, 39.263527, 39.687130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.396523, 39.057186, 39.731400>,  <33.206024, 38.713287, 39.805180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396523, 39.057186, 39.731400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788420, 0.324636, -0.522499,
		-0.389337, 0.394266, 0.832449,
		0.476246, 0.859748, -0.184454,
		33.539398, 39.315109, 39.676064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694466, 39.183853, 39.749859>,  <33.206024, 38.713287, 39.805180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694466, 39.183853, 39.749859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005081, 39.375114, 39.585732>,  <33.191452, 39.489872, 39.487255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005081, 39.375114, 39.585732>,  <32.694466, 39.183853, 39.749859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005081, 39.375114, 39.585732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615145, 0.434439, -0.657920,
		-0.136332, 0.763302, 0.631492,
		0.776537, 0.478155, -0.410314,
		33.238041, 39.518562, 39.462639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487827, 39.873417, 39.722141>,  <32.694466, 39.183853, 39.749859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487827, 39.873417, 39.722141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790188, 39.846596, 39.461647>,  <32.971603, 39.830502, 39.305351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790188, 39.846596, 39.461647>,  <32.487827, 39.873417, 39.722141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790188, 39.846596, 39.461647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568314, 0.426612, -0.703578,
		0.325002, 0.901946, 0.284372,
		0.755906, -0.067051, -0.651238,
		33.016960, 39.826481, 39.266277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527367, 40.572788, 39.362881>,  <32.487827, 39.873417, 39.722141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527367, 40.572788, 39.362881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708111, 40.295994, 39.137680>,  <32.816559, 40.129917, 39.002560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708111, 40.295994, 39.137680>,  <32.527367, 40.572788, 39.362881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708111, 40.295994, 39.137680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496277, 0.329445, -0.803228,
		0.741301, 0.642357, -0.194553,
		0.451865, -0.691986, -0.563005,
		32.843670, 40.088398, 38.968781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.383835, 40.773998, 38.683201>,  <32.527367, 40.572788, 39.362881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.383835, 40.773998, 38.683201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499332, 40.402157, 38.591576>,  <32.568630, 40.179054, 38.536602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499332, 40.402157, 38.591576>,  <32.383835, 40.773998, 38.683201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.499332, 40.402157, 38.591576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441334, 0.083083, -0.893489,
		0.849620, 0.359079, -0.386276,
		0.288740, -0.929602, -0.229062,
		32.585953, 40.123276, 38.522858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522064, 40.714050, 37.921089>,  <32.383835, 40.773998, 38.683201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522064, 40.714050, 37.921089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439739, 40.348629, 38.061413>,  <32.390343, 40.129375, 38.145607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439739, 40.348629, 38.061413>,  <32.522064, 40.714050, 37.921089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439739, 40.348629, 38.061413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569528, -0.179695, -0.802089,
		0.795787, -0.364878, -0.483308,
		-0.205817, -0.913550, 0.350807,
		32.377995, 40.074562, 38.166656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663525, 40.307114, 37.324879>,  <32.522064, 40.714050, 37.921089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663525, 40.307114, 37.324879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431118, 40.078259, 37.556423>,  <32.291676, 39.940945, 37.695351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431118, 40.078259, 37.556423>,  <32.663525, 40.307114, 37.324879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431118, 40.078259, 37.556423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489371, -0.322723, -0.810164,
		0.650339, -0.753993, -0.092483,
		-0.581012, -0.572140, 0.578862,
		32.256813, 39.906616, 37.730083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563110, 39.664787, 36.998825>,  <32.663525, 40.307114, 37.324879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563110, 39.664787, 36.998825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231865, 39.701408, 37.220036>,  <32.033115, 39.723381, 37.352760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231865, 39.701408, 37.220036>,  <32.563110, 39.664787, 36.998825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231865, 39.701408, 37.220036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557643, -0.234991, -0.796124,
		0.057066, -0.967676, 0.245655,
		-0.828117, 0.091556, 0.553027,
		31.983429, 39.728874, 37.385944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.145748, 39.191433, 36.750027>,  <32.563110, 39.664787, 36.998825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.145748, 39.191433, 36.750027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875557, 39.386818, 36.970982>,  <31.713442, 39.504047, 37.103554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875557, 39.386818, 36.970982>,  <32.145748, 39.191433, 36.750027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875557, 39.386818, 36.970982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716953, -0.259968, -0.646835,
		-0.172348, -0.832962, 0.525805,
		-0.675481, 0.488458, 0.552389,
		31.672913, 39.533356, 37.136700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587965, 38.720627, 36.951385>,  <32.145748, 39.191433, 36.750027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587965, 38.720627, 36.951385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461784, 39.100201, 36.952827>,  <31.386076, 39.327946, 36.953693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461784, 39.100201, 36.952827>,  <31.587965, 38.720627, 36.951385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461784, 39.100201, 36.952827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765379, -0.252186, -0.592113,
		-0.560969, -0.189539, 0.805847,
		-0.315452, 0.948935, 0.003600,
		31.367149, 39.384880, 36.953907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.947439, 38.641232, 37.019543>,  <31.587965, 38.720627, 36.951385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.947439, 38.641232, 37.019543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.994339, 38.993092, 36.835167>,  <31.022478, 39.204208, 36.724541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.994339, 38.993092, 36.835167>,  <30.947439, 38.641232, 37.019543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.994339, 38.993092, 36.835167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748652, -0.226670, -0.623009,
		-0.652512, 0.418131, 0.631976,
		0.117249, 0.879652, -0.460940,
		31.029514, 39.256989, 36.696884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.740326, 37.906097, 37.220062>,  <30.947439, 38.641232, 37.019543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.740326, 37.906097, 37.220062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.764072, 37.522018, 37.110882>,  <30.778320, 37.291573, 37.045372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.764072, 37.522018, 37.110882>,  <30.740326, 37.906097, 37.220062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.764072, 37.522018, 37.110882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010237, -0.272835, 0.962007,
		-0.998184, -0.059906, -0.006368,
		0.059368, -0.960194, -0.272952,
		30.781883, 37.233959, 37.028996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.541813, 37.528786, 37.751160>,  <30.740326, 37.906097, 37.220062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.541813, 37.528786, 37.751160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666553, 37.214642, 37.537258>,  <30.741398, 37.026157, 37.408916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666553, 37.214642, 37.537258>,  <30.541813, 37.528786, 37.751160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.666553, 37.214642, 37.537258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125962, -0.592030, 0.796012,
		-0.941744, -0.180879, -0.283551,
		0.311853, -0.785356, -0.534756,
		30.760109, 36.979034, 37.376831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020142, 36.936020, 37.769417>,  <30.541813, 37.528786, 37.751160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.020142, 36.936020, 37.769417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394312, 36.802639, 37.722446>,  <30.618814, 36.722610, 37.694263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394312, 36.802639, 37.722446>,  <30.020142, 36.936020, 37.769417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394312, 36.802639, 37.722446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163084, -0.701725, 0.693531,
		-0.313660, -0.629596, -0.710793,
		0.935426, -0.333452, -0.117426,
		30.674940, 36.702602, 37.687218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.005424, 36.237564, 37.715748>,  <30.020142, 36.936020, 37.769417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.005424, 36.237564, 37.715748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.385202, 36.307331, 37.820160>,  <30.613070, 36.349190, 37.882809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.385202, 36.307331, 37.820160>,  <30.005424, 36.237564, 37.715748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.385202, 36.307331, 37.820160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038809, -0.759883, 0.648900,
		0.311530, -0.626224, -0.714697,
		0.949444, 0.174416, 0.261029,
		30.670036, 36.359657, 37.898468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341249, 35.586113, 37.716640>,  <30.005424, 36.237564, 37.715748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.341249, 35.586113, 37.716640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.550968, 35.828651, 37.955788>,  <30.676800, 35.974174, 38.099277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.550968, 35.828651, 37.955788>,  <30.341249, 35.586113, 37.716640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.550968, 35.828651, 37.955788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050715, -0.678630, 0.732728,
		0.850023, -0.414489, -0.325053,
		0.524298, 0.606350, 0.597872,
		30.708258, 36.010555, 38.135151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944084, 35.262222, 37.976707>,  <30.341249, 35.586113, 37.716640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944084, 35.262222, 37.976707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856157, 35.546387, 38.244137>,  <30.803402, 35.716885, 38.404594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856157, 35.546387, 38.244137>,  <30.944084, 35.262222, 37.976707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856157, 35.546387, 38.244137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104392, -0.664272, 0.740166,
		0.969940, 0.232493, 0.071856,
		-0.219815, 0.710415, 0.668574,
		30.790213, 35.759510, 38.444710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440481, 35.207638, 38.467110>,  <30.944084, 35.262222, 37.976707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440481, 35.207638, 38.467110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.153179, 35.418152, 38.649158>,  <30.980799, 35.544460, 38.758389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.153179, 35.418152, 38.649158>,  <31.440481, 35.207638, 38.467110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.153179, 35.418152, 38.649158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189621, -0.481294, 0.855803,
		0.669443, 0.700985, 0.245897,
		-0.718255, 0.526284, 0.455121,
		30.937702, 35.576038, 38.785694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721060, 35.330708, 39.055092>,  <31.440481, 35.207638, 38.467110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721060, 35.330708, 39.055092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.344732, 35.441265, 39.133549>,  <31.118937, 35.507599, 39.180622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.344732, 35.441265, 39.133549>,  <31.721060, 35.330708, 39.055092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.344732, 35.441265, 39.133549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102160, -0.320534, 0.941712,
		0.323149, 0.906017, 0.273328,
		-0.940818, 0.276390, 0.196139,
		31.062487, 35.524181, 39.192390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870676, 35.614239, 39.625553>,  <31.721060, 35.330708, 39.055092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870676, 35.614239, 39.625553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.484215, 35.511787, 39.637848>,  <31.252338, 35.450317, 39.645226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.484215, 35.511787, 39.637848>,  <31.870676, 35.614239, 39.625553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484215, 35.511787, 39.637848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115366, -0.322439, 0.939534,
		-0.230731, 0.911280, 0.341074,
		-0.966154, -0.256128, 0.030734,
		31.194368, 35.434948, 39.647068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602221, 36.003342, 40.270412>,  <31.870676, 35.614239, 39.625553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602221, 36.003342, 40.270412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.355114, 35.698811, 40.191673>,  <31.206850, 35.516094, 40.144432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.355114, 35.698811, 40.191673>,  <31.602221, 36.003342, 40.270412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355114, 35.698811, 40.191673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114832, -0.334982, 0.935201,
		-0.777931, 0.555132, 0.294366,
		-0.617767, -0.761325, -0.196846,
		31.169785, 35.470413, 40.132618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.060736, 36.039745, 40.786457>,  <31.602221, 36.003342, 40.270412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.060736, 36.039745, 40.786457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.024813, 35.662640, 40.658005>,  <31.003260, 35.436375, 40.580933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.024813, 35.662640, 40.658005>,  <31.060736, 36.039745, 40.786457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.024813, 35.662640, 40.658005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021914, -0.324230, 0.945724,
		-0.995718, 0.077895, 0.049778,
		-0.089807, -0.942765, -0.321135,
		30.997871, 35.379810, 40.561665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.512678, 35.730320, 41.184464>,  <31.060736, 36.039745, 40.786457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.512678, 35.730320, 41.184464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.753521, 35.446449, 41.038136>,  <30.898027, 35.276127, 40.950336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.753521, 35.446449, 41.038136>,  <30.512678, 35.730320, 41.184464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.753521, 35.446449, 41.038136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263542, -0.255853, 0.930099,
		-0.753666, -0.656430, 0.032978,
		0.602108, -0.709675, -0.365825,
		30.934153, 35.233547, 40.928387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.319445, 35.144943, 41.586208>,  <30.512678, 35.730320, 41.184464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.319445, 35.144943, 41.586208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.668461, 35.061298, 41.409599>,  <30.877871, 35.011112, 41.303635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.668461, 35.061298, 41.409599>,  <30.319445, 35.144943, 41.586208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.668461, 35.061298, 41.409599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309215, -0.463311, 0.830499,
		-0.378226, -0.861172, -0.339600,
		0.872543, -0.209107, -0.441524,
		30.930223, 34.998566, 41.277142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.548332, 34.491966, 41.763977>,  <30.319445, 35.144943, 41.586208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.548332, 34.491966, 41.763977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899349, 34.658531, 41.668884>,  <31.109961, 34.758469, 41.611828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899349, 34.658531, 41.668884>,  <30.548332, 34.491966, 41.763977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899349, 34.658531, 41.668884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403661, -0.373964, 0.834991,
		0.258797, -0.828705, -0.496259,
		0.877544, 0.416413, -0.237735,
		31.162613, 34.783455, 41.597565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130238, 34.027668, 41.978195>,  <30.548332, 34.491966, 41.763977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130238, 34.027668, 41.978195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308136, 34.382427, 41.928211>,  <31.414875, 34.595284, 41.898220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308136, 34.382427, 41.928211>,  <31.130238, 34.027668, 41.978195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308136, 34.382427, 41.928211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586620, -0.183015, 0.788912,
		0.676815, -0.424168, -0.601667,
		0.444745, 0.886898, -0.124958,
		31.441559, 34.648495, 41.890724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.775293, 33.939468, 42.205669>,  <31.130238, 34.027668, 41.978195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.775293, 33.939468, 42.205669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.757944, 34.339088, 42.207676>,  <31.747534, 34.578861, 42.208881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.757944, 34.339088, 42.207676>,  <31.775293, 33.939468, 42.205669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.757944, 34.339088, 42.207676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632263, 0.023560, 0.774396,
		0.773539, 0.036759, -0.632681,
		-0.043372, 0.999046, 0.005017,
		31.744932, 34.638802, 42.209183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438694, 34.071941, 42.154793>,  <31.775293, 33.939468, 42.205669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438694, 34.071941, 42.154793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251701, 34.381435, 42.325809>,  <32.139503, 34.567131, 42.428421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251701, 34.381435, 42.325809>,  <32.438694, 34.071941, 42.154793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251701, 34.381435, 42.325809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710046, 0.040556, 0.702986,
		0.526585, 0.632210, -0.568347,
		-0.467485, 0.773735, 0.427542,
		32.111458, 34.613556, 42.454071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024773, 34.542450, 42.375107>,  <32.438694, 34.071941, 42.154793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024773, 34.542450, 42.375107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719429, 34.673176, 42.597988>,  <32.536224, 34.751614, 42.731716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719429, 34.673176, 42.597988>,  <33.024773, 34.542450, 42.375107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719429, 34.673176, 42.597988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614702, 0.102374, 0.782088,
		0.198557, 0.939527, -0.279043,
		-0.763359, 0.326817, 0.557202,
		32.490421, 34.771221, 42.765148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285225, 35.000256, 42.832081>,  <33.024773, 34.542450, 42.375107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285225, 35.000256, 42.832081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938648, 34.930817, 43.019329>,  <32.730701, 34.889153, 43.131680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938648, 34.930817, 43.019329>,  <33.285225, 35.000256, 42.832081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938648, 34.930817, 43.019329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463438, 0.069162, 0.883426,
		-0.185739, 0.982385, 0.020528,
		-0.866445, -0.173600, 0.468120,
		32.678715, 34.878738, 43.159763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253956, 35.453121, 43.371616>,  <33.285225, 35.000256, 42.832081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253956, 35.453121, 43.371616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977974, 35.181190, 43.471050>,  <32.812386, 35.018032, 43.530712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977974, 35.181190, 43.471050>,  <33.253956, 35.453121, 43.371616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977974, 35.181190, 43.471050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421669, -0.098342, 0.901401,
		-0.588353, 0.726746, 0.354515,
		-0.689953, -0.679830, 0.248586,
		32.770988, 34.977242, 43.545628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931839, 35.616955, 44.033794>,  <33.253956, 35.453121, 43.371616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931839, 35.616955, 44.033794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839470, 35.228775, 44.005764>,  <32.784050, 34.995869, 43.988945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839470, 35.228775, 44.005764>,  <32.931839, 35.616955, 44.033794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839470, 35.228775, 44.005764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501083, -0.180353, 0.846398,
		-0.834021, 0.160340, 0.527921,
		-0.230924, -0.970445, -0.070074,
		32.770191, 34.937641, 43.984741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681438, 35.405025, 44.656445>,  <32.931839, 35.616955, 44.033794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681438, 35.405025, 44.656445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811443, 35.056763, 44.508751>,  <32.889446, 34.847805, 44.420135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811443, 35.056763, 44.508751>,  <32.681438, 35.405025, 44.656445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811443, 35.056763, 44.508751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434672, -0.209216, 0.875950,
		-0.839898, -0.445187, 0.310451,
		0.325010, -0.870653, -0.369231,
		32.908947, 34.795567, 44.397984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612438, 34.971008, 45.298641>,  <32.681438, 35.405025, 44.656445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.612438, 34.971008, 45.298641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.808189, 34.725967, 45.050373>,  <32.925640, 34.578945, 44.901413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.808189, 34.725967, 45.050373>,  <32.612438, 34.971008, 45.298641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.808189, 34.725967, 45.050373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521079, -0.365290, 0.771388,
		-0.699278, -0.700916, 0.140450,
		0.489373, -0.612600, -0.620673,
		32.955002, 34.542187, 44.864170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593410, 34.108189, 45.519253>,  <32.612438, 34.971008, 45.298641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593410, 34.108189, 45.519253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906967, 34.255188, 45.319073>,  <33.095100, 34.343388, 45.198963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906967, 34.255188, 45.319073>,  <32.593410, 34.108189, 45.519253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906967, 34.255188, 45.319073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610874, -0.312283, 0.727539,
		0.111091, -0.876025, -0.469295,
		0.783895, 0.367503, -0.500449,
		33.142136, 34.365440, 45.168938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052700, 33.650124, 45.554897>,  <32.593410, 34.108189, 45.519253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052700, 33.650124, 45.554897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266232, 33.979950, 45.479935>,  <33.394348, 34.177845, 45.434956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266232, 33.979950, 45.479935>,  <33.052700, 33.650124, 45.554897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266232, 33.979950, 45.479935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569832, -0.187046, 0.800190,
		0.624756, -0.533953, -0.569714,
		0.533827, 0.824565, -0.187406,
		33.426380, 34.227318, 45.423714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661007, 33.428535, 45.720432>,  <33.052700, 33.650124, 45.554897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661007, 33.428535, 45.720432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753620, 33.815132, 45.676090>,  <33.809189, 34.047089, 45.649487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753620, 33.815132, 45.676090>,  <33.661007, 33.428535, 45.720432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753620, 33.815132, 45.676090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729279, -0.097019, 0.677303,
		0.643852, -0.237662, -0.727305,
		0.231531, 0.966491, -0.110856,
		33.823078, 34.105080, 45.642834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397430, 33.442997, 45.608326>,  <33.661007, 33.428535, 45.720432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397430, 33.442997, 45.608326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301273, 33.806683, 45.744289>,  <34.243580, 34.024895, 45.825867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301273, 33.806683, 45.744289>,  <34.397430, 33.442997, 45.608326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301273, 33.806683, 45.744289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662225, -0.102412, 0.742273,
		0.709696, 0.403537, -0.577485,
		-0.240393, 0.909214, 0.339913,
		34.229156, 34.079445, 45.846264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967064, 33.805782, 45.795502>,  <34.397430, 33.442997, 45.608326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967064, 33.805782, 45.795502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711029, 34.026920, 46.008911>,  <34.557407, 34.159603, 46.136955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711029, 34.026920, 46.008911>,  <34.967064, 33.805782, 45.795502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711029, 34.026920, 46.008911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633716, -0.012709, 0.773462,
		0.434386, 0.833187, -0.342212,
		-0.640089, 0.552846, 0.533524,
		34.519001, 34.192776, 46.168968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478794, 34.209587, 46.100456>,  <34.967064, 33.805782, 45.795502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478794, 34.209587, 46.100456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.768452, 33.965111, 45.972668>,  <35.942245, 33.818424, 45.895996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.768452, 33.965111, 45.972668>,  <35.478794, 34.209587, 46.100456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768452, 33.965111, 45.972668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205832, 0.250584, -0.945960,
		0.658216, 0.750769, 0.055656,
		0.724145, -0.611190, -0.319471,
		35.985695, 33.781754, 45.876827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789490, 34.624794, 45.625446>,  <35.478794, 34.209587, 46.100456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789490, 34.624794, 45.625446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915340, 34.256851, 45.531742>,  <35.990849, 34.036087, 45.475521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915340, 34.256851, 45.531742>,  <35.789490, 34.624794, 45.625446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915340, 34.256851, 45.531742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258773, 0.154328, -0.953530,
		0.913263, 0.360623, -0.189478,
		0.314623, -0.919855, -0.234261,
		36.009727, 33.980896, 45.461464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363609, 34.738811, 45.056534>,  <35.789490, 34.624794, 45.625446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363609, 34.738811, 45.056534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260841, 34.353104, 45.030655>,  <36.199181, 34.121681, 45.015129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260841, 34.353104, 45.030655>,  <36.363609, 34.738811, 45.056534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260841, 34.353104, 45.030655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015009, 0.070913, -0.997370,
		0.966317, -0.255269, -0.032692,
		-0.256916, -0.964266, -0.064693,
		36.183765, 34.063824, 45.011246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801975, 34.432491, 44.499207>,  <36.363609, 34.738811, 45.056534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801975, 34.432491, 44.499207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470909, 34.212761, 44.545174>,  <36.272270, 34.080925, 44.572754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470909, 34.212761, 44.545174>,  <36.801975, 34.432491, 44.499207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470909, 34.212761, 44.545174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089009, -0.073692, -0.993301,
		0.554113, -0.832354, 0.012098,
		-0.827669, -0.549324, 0.114921,
		36.222607, 34.047962, 44.579651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882748, 33.755360, 44.292484>,  <36.801975, 34.432491, 44.499207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882748, 33.755360, 44.292484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494919, 33.841595, 44.246105>,  <36.262222, 33.893333, 44.218277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494919, 33.841595, 44.246105>,  <36.882748, 33.755360, 44.292484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494919, 33.841595, 44.246105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060893, -0.246367, -0.967262,
		-0.237094, -0.944895, 0.225744,
		-0.969577, 0.215586, -0.115950,
		36.204044, 33.906269, 44.211319>
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
