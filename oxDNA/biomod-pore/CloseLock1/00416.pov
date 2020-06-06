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
	<24.154222, 35.242149, 34.949722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.533922, 35.119225, 34.976532>,  <24.761742, 35.045471, 34.992619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.533922, 35.119225, 34.976532>,  <24.154222, 35.242149, 34.949722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.533922, 35.119225, 34.976532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017366, -0.161560, -0.986710,
		0.314052, 0.937795, -0.148024,
		0.949247, -0.307308, 0.067024,
		24.818697, 35.027031, 34.996639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.531990, 35.585724, 34.395782>,  <24.154222, 35.242149, 34.949722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.531990, 35.585724, 34.395782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.699324, 35.234486, 34.488689>,  <24.799723, 35.023743, 34.544434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.699324, 35.234486, 34.488689>,  <24.531990, 35.585724, 34.395782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.699324, 35.234486, 34.488689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160778, -0.180095, -0.970421,
		0.893951, 0.443303, 0.065838,
		0.418333, -0.878094, 0.232269,
		24.824823, 34.971058, 34.558369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.756086, 36.289822, 34.094296>,  <24.531990, 35.585724, 34.395782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.756086, 36.289822, 34.094296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.936310, 36.374508, 34.441208>,  <25.044445, 36.425320, 34.649353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.936310, 36.374508, 34.441208>,  <24.756086, 36.289822, 34.094296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.936310, 36.374508, 34.441208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848156, 0.201671, -0.489857,
		-0.278614, 0.956298, -0.088701,
		0.450561, 0.211713, 0.867279,
		25.071478, 36.438023, 34.701393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.982098, 36.948242, 34.028786>,  <24.756086, 36.289822, 34.094296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.982098, 36.948242, 34.028786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.169756, 36.671562, 34.248405>,  <25.282351, 36.505554, 34.380177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.169756, 36.671562, 34.248405>,  <24.982098, 36.948242, 34.028786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.169756, 36.671562, 34.248405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839139, 0.155401, -0.521245,
		0.275223, 0.705266, 0.653339,
		0.469146, -0.691701, 0.549046,
		25.310499, 36.464050, 34.413120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.550463, 37.188286, 34.292835>,  <24.982098, 36.948242, 34.028786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.550463, 37.188286, 34.292835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.626631, 36.796009, 34.275051>,  <25.672333, 36.560642, 34.264381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.626631, 36.796009, 34.275051>,  <25.550463, 37.188286, 34.292835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.626631, 36.796009, 34.275051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772949, 0.177694, -0.609076,
		0.605218, 0.081619, 0.791865,
		0.190422, -0.980695, -0.044457,
		25.683758, 36.501801, 34.261715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.109293, 36.736084, 34.367695>,  <25.550463, 37.188286, 34.292835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.109293, 36.736084, 34.367695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.398508, 36.625385, 34.114513>,  <26.572037, 36.558968, 33.962605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.398508, 36.625385, 34.114513>,  <26.109293, 36.736084, 34.367695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.398508, 36.625385, 34.114513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319536, 0.946319, -0.048747,
		0.612464, -0.167005, 0.772656,
		0.723038, -0.276747, -0.632951,
		26.615419, 36.542362, 33.924629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.772161, 36.934700, 34.611813>,  <26.109293, 36.736084, 34.367695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.772161, 36.934700, 34.611813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.856428, 36.906807, 34.221786>,  <26.906988, 36.890072, 33.987770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.856428, 36.906807, 34.221786>,  <26.772161, 36.934700, 34.611813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.856428, 36.906807, 34.221786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433633, 0.900614, 0.029280,
		0.876117, -0.428990, 0.219968,
		0.210667, -0.069733, -0.975067,
		26.919628, 36.885887, 33.929268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.376322, 37.204453, 34.563362>,  <26.772161, 36.934700, 34.611813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.376322, 37.204453, 34.563362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.249292, 37.230167, 34.184940>,  <27.173075, 37.245598, 33.957890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.249292, 37.230167, 34.184940>,  <27.376322, 37.204453, 34.563362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.249292, 37.230167, 34.184940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266743, 0.963467, -0.024069,
		0.909942, -0.259996, -0.323123,
		-0.317576, 0.064290, -0.946051,
		27.154020, 37.249454, 33.901127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.871040, 37.727512, 34.206596>,  <27.376322, 37.204453, 34.563362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.871040, 37.727512, 34.206596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.570482, 37.706379, 33.943504>,  <27.390146, 37.693699, 33.785648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.570482, 37.706379, 33.943504>,  <27.871040, 37.727512, 34.206596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.570482, 37.706379, 33.943504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100742, 0.975919, -0.193479,
		0.652114, -0.211640, -0.727980,
		-0.751398, -0.052832, -0.657731,
		27.345062, 37.690529, 33.746185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.135778, 37.940697, 33.541290>,  <27.871040, 37.727512, 34.206596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.135778, 37.940697, 33.541290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.743029, 37.999512, 33.589119>,  <27.507378, 38.034801, 33.617817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.743029, 37.999512, 33.589119>,  <28.135778, 37.940697, 33.541290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.743029, 37.999512, 33.589119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122027, 0.973228, -0.194774,
		-0.145013, -0.176652, -0.973532,
		-0.981876, 0.147042, 0.119575,
		27.448465, 38.043625, 33.624992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.943588, 38.565792, 33.119213>,  <28.135778, 37.940697, 33.541290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.943588, 38.565792, 33.119213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608078, 38.515255, 33.331059>,  <27.406773, 38.484932, 33.458168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608078, 38.515255, 33.331059>,  <27.943588, 38.565792, 33.119213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.608078, 38.515255, 33.331059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282585, 0.932456, -0.225102,
		-0.465405, -0.338472, -0.817823,
		-0.838775, -0.126341, 0.529617,
		27.356445, 38.477352, 33.489944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.414333, 38.703987, 32.693962>,  <27.943588, 38.565792, 33.119213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.414333, 38.703987, 32.693962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.293783, 38.771202, 33.069393>,  <27.221453, 38.811531, 33.294651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.293783, 38.771202, 33.069393>,  <27.414333, 38.703987, 32.693962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.293783, 38.771202, 33.069393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352246, 0.895097, -0.273358,
		-0.886057, -0.412994, -0.210568,
		-0.301374, 0.168039, 0.938582,
		27.203371, 38.821613, 33.350967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.789616, 38.945900, 32.676640>,  <27.414333, 38.703987, 32.693962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.789616, 38.945900, 32.676640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.886448, 39.064518, 33.046169>,  <26.944548, 39.135689, 33.267887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.886448, 39.064518, 33.046169>,  <26.789616, 38.945900, 32.676640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.886448, 39.064518, 33.046169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321993, 0.922742, -0.211818,
		-0.915268, -0.246189, 0.318865,
		0.242083, 0.296542, 0.923828,
		26.959072, 39.153481, 33.323318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.216745, 39.429237, 32.892879>,  <26.789616, 38.945900, 32.676640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.216745, 39.429237, 32.892879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.494545, 39.537678, 33.159466>,  <26.661224, 39.602741, 33.319416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.494545, 39.537678, 33.159466>,  <26.216745, 39.429237, 32.892879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.494545, 39.537678, 33.159466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234120, 0.961038, -0.146951,
		-0.680337, -0.053975, 0.730909,
		0.694499, 0.271096, 0.666466,
		26.702894, 39.619007, 33.359406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.912329, 39.968170, 33.369843>,  <26.216745, 39.429237, 32.892879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.912329, 39.968170, 33.369843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.308489, 40.023094, 33.363510>,  <26.546185, 40.056049, 33.359711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.308489, 40.023094, 33.363510>,  <25.912329, 39.968170, 33.369843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.308489, 40.023094, 33.363510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138190, 0.986143, -0.091789,
		0.003008, 0.093096, 0.995653,
		0.990401, 0.137314, -0.015832,
		26.605610, 40.064289, 33.358761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.019339, 40.544308, 33.768829>,  <25.912329, 39.968170, 33.369843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.019339, 40.544308, 33.768829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.348471, 40.495106, 33.546906>,  <26.545950, 40.465584, 33.413750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.348471, 40.495106, 33.546906>,  <26.019339, 40.544308, 33.768829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.348471, 40.495106, 33.546906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091141, 0.992220, -0.084808,
		0.560928, 0.019217, 0.827641,
		0.822832, -0.123004, -0.554813,
		26.595320, 40.458206, 33.380463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.480181, 41.053696, 33.958740>,  <26.019339, 40.544308, 33.768829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.480181, 41.053696, 33.958740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.610617, 40.950569, 33.594940>,  <26.688877, 40.888695, 33.376659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.610617, 40.950569, 33.594940>,  <26.480181, 41.053696, 33.958740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.610617, 40.950569, 33.594940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250483, 0.951269, -0.179848,
		0.911551, -0.169169, 0.374775,
		0.326088, -0.257815, -0.909504,
		26.708443, 40.873226, 33.322090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.037783, 41.589771, 33.876427>,  <26.480181, 41.053696, 33.958740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.037783, 41.589771, 33.876427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963091, 41.446419, 33.510544>,  <26.918276, 41.360409, 33.291012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963091, 41.446419, 33.510544>,  <27.037783, 41.589771, 33.876427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.963091, 41.446419, 33.510544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255376, 0.881372, -0.397451,
		0.948639, -0.307811, -0.073055,
		-0.186729, -0.358381, -0.914711,
		26.907072, 41.338905, 33.236130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.472452, 41.993763, 33.524754>,  <27.037783, 41.589771, 33.876427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.472452, 41.993763, 33.524754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233278, 41.831524, 33.248215>,  <27.089775, 41.734180, 33.082291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233278, 41.831524, 33.248215>,  <27.472452, 41.993763, 33.524754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.233278, 41.831524, 33.248215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075658, 0.830109, -0.552445,
		0.797964, -0.382633, -0.465666,
		-0.597937, -0.405600, -0.691346,
		27.053898, 41.709843, 33.040810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.754667, 41.984688, 32.756229>,  <27.472452, 41.993763, 33.524754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.754667, 41.984688, 32.756229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.355827, 41.969318, 32.729961>,  <27.116524, 41.960094, 32.714199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.355827, 41.969318, 32.729961>,  <27.754667, 41.984688, 32.756229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.355827, 41.969318, 32.729961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014768, 0.748929, -0.662486,
		0.074639, -0.661535, -0.746191,
		-0.997101, -0.038427, -0.065668,
		27.056698, 41.957790, 32.710262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.473608, 42.024460, 32.109776>,  <27.754667, 41.984688, 32.756229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.473608, 42.024460, 32.109776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.163841, 42.177490, 32.311333>,  <26.977982, 42.269310, 32.432266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.163841, 42.177490, 32.311333>,  <27.473608, 42.024460, 32.109776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.163841, 42.177490, 32.311333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012607, 0.786964, -0.616869,
		-0.632550, -0.484067, -0.604616,
		-0.774417, 0.382578, 0.503897,
		26.931517, 42.292263, 32.462502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.151846, 42.407139, 31.614395>,  <27.473608, 42.024460, 32.109776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.151846, 42.407139, 31.614395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945326, 42.533195, 31.932920>,  <26.821413, 42.608829, 32.124035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945326, 42.533195, 31.932920>,  <27.151846, 42.407139, 31.614395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.945326, 42.533195, 31.932920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258511, 0.829109, -0.495733,
		-0.816458, -0.461804, -0.346602,
		-0.516302, 0.315145, 0.796314,
		26.790436, 42.627739, 32.171814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.492685, 42.633209, 31.356930>,  <27.151846, 42.407139, 31.614395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.492685, 42.633209, 31.356930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.559896, 42.803017, 31.712807>,  <26.600224, 42.904900, 31.926332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.559896, 42.803017, 31.712807>,  <26.492685, 42.633209, 31.356930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.559896, 42.803017, 31.712807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092080, 0.905336, -0.414593,
		-0.981472, -0.012259, 0.191213,
		0.168030, 0.424519, 0.889691,
		26.610306, 42.930374, 31.979713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.910221, 43.163483, 31.429729>,  <26.492685, 42.633209, 31.356930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.910221, 43.163483, 31.429729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.225079, 43.263195, 31.655388>,  <26.413994, 43.323021, 31.790783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.225079, 43.263195, 31.655388>,  <25.910221, 43.163483, 31.429729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.225079, 43.263195, 31.655388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110512, 0.956885, -0.268624,
		-0.606786, 0.149101, 0.780756,
		0.787145, 0.249280, 0.564147,
		26.461222, 43.337978, 31.824633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.747334, 43.762177, 31.833244>,  <25.910221, 43.163483, 31.429729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.747334, 43.762177, 31.833244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.143627, 43.737984, 31.784595>,  <26.381403, 43.723469, 31.755405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.143627, 43.737984, 31.784595>,  <25.747334, 43.762177, 31.833244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.143627, 43.737984, 31.784595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035927, 0.980187, -0.194789,
		0.130994, 0.188614, 0.973276,
		0.990732, -0.060483, -0.121622,
		26.440847, 43.719837, 31.748108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.102777, 44.258293, 32.406986>,  <25.747334, 43.762177, 31.833244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.102777, 44.258293, 32.406986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.284946, 44.156483, 32.065739>,  <26.394247, 44.095394, 31.860991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.284946, 44.156483, 32.065739>,  <26.102777, 44.258293, 32.406986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.284946, 44.156483, 32.065739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012454, 0.959987, -0.279767,
		0.890189, 0.116787, 0.440368,
		0.455421, -0.254530, -0.853116,
		26.421574, 44.080124, 31.809803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.715267, 44.663151, 32.434116>,  <26.102777, 44.258293, 32.406986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.715267, 44.663151, 32.434116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561768, 44.578484, 32.074574>,  <26.469667, 44.527683, 31.858849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561768, 44.578484, 32.074574>,  <26.715267, 44.663151, 32.434116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.561768, 44.578484, 32.074574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013461, 0.971991, -0.234633,
		0.923340, -0.102139, -0.370151,
		-0.383748, -0.211664, -0.898852,
		26.446644, 44.514984, 31.804918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.230446, 44.909851, 33.026131>,  <26.715267, 44.663151, 32.434116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.230446, 44.909851, 33.026131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.579554, 44.774990, 32.884930>,  <27.789019, 44.694073, 32.800209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.579554, 44.774990, 32.884930>,  <27.230446, 44.909851, 33.026131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.579554, 44.774990, 32.884930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287302, 0.939427, -0.186908,
		0.394633, 0.061710, 0.916764,
		0.872767, -0.337149, -0.352999,
		27.841383, 44.673847, 32.779030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.771523, 45.465645, 33.076454>,  <27.230446, 44.909851, 33.026131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.771523, 45.465645, 33.076454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.951645, 45.256336, 32.787064>,  <28.059719, 45.130753, 32.613430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.951645, 45.256336, 32.787064>,  <27.771523, 45.465645, 33.076454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.951645, 45.256336, 32.787064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452846, 0.832174, -0.320026,
		0.769516, -0.183513, 0.611693,
		0.450306, -0.523268, -0.723475,
		28.086737, 45.099358, 32.570023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.572971, 45.560932, 33.025463>,  <27.771523, 45.465645, 33.076454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.572971, 45.560932, 33.025463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.402214, 45.498486, 32.669174>,  <28.299759, 45.461018, 32.455399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.402214, 45.498486, 32.669174>,  <28.572971, 45.560932, 33.025463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.402214, 45.498486, 32.669174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346390, 0.881630, -0.320533,
		0.835328, -0.445372, -0.322288,
		-0.426896, -0.156113, -0.890724,
		28.274145, 45.451653, 32.401958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.072617, 45.450172, 32.473854>,  <28.572971, 45.560932, 33.025463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.072617, 45.450172, 32.473854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.727381, 45.619934, 32.364342>,  <28.520239, 45.721790, 32.298634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.727381, 45.619934, 32.364342>,  <29.072617, 45.450172, 32.473854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.727381, 45.619934, 32.364342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497122, 0.809570, -0.312194,
		0.089146, -0.405553, -0.909714,
		-0.863089, 0.424408, -0.273780,
		28.468454, 45.747257, 32.282207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.058725, 44.860413, 32.019981>,  <29.072617, 45.450172, 32.473854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.058725, 44.860413, 32.019981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.328270, 44.920494, 31.730610>,  <29.489998, 44.956543, 31.556988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.328270, 44.920494, 31.730610>,  <29.058725, 44.860413, 32.019981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.328270, 44.920494, 31.730610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431591, -0.874729, 0.220403,
		-0.599698, -0.460746, -0.654274,
		0.673863, 0.150204, -0.723428,
		29.530428, 44.965557, 31.513582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.012396, 44.395710, 31.401592>,  <29.058725, 44.860413, 32.019981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.012396, 44.395710, 31.401592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.375305, 44.525730, 31.508324>,  <29.593052, 44.603741, 31.572363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.375305, 44.525730, 31.508324>,  <29.012396, 44.395710, 31.401592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.375305, 44.525730, 31.508324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283799, -0.941471, 0.181907,
		0.310341, -0.089313, -0.946421,
		0.907275, 0.325046, 0.266830,
		29.647488, 44.623245, 31.588373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.707447, 44.154686, 30.959682>,  <29.012396, 44.395710, 31.401592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.707447, 44.154686, 30.959682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.766886, 44.206429, 31.351843>,  <29.802549, 44.237476, 31.587139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.766886, 44.206429, 31.351843>,  <29.707447, 44.154686, 30.959682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.766886, 44.206429, 31.351843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314651, -0.946068, 0.077137,
		0.937504, 0.297022, -0.181285,
		0.148597, 0.129358, 0.980401,
		29.811464, 44.245235, 31.645964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.316160, 43.859402, 31.093588>,  <29.707447, 44.154686, 30.959682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.316160, 43.859402, 31.093588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.097836, 43.858215, 31.428749>,  <29.966841, 43.857502, 31.629847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.097836, 43.858215, 31.428749>,  <30.316160, 43.859402, 31.093588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.097836, 43.858215, 31.428749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305324, -0.931945, 0.195590,
		0.780300, 0.362588, 0.509571,
		-0.545811, -0.002965, 0.837903,
		29.934092, 43.857327, 31.680120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631634, 43.660572, 31.726107>,  <30.316160, 43.859402, 31.093588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631634, 43.660572, 31.726107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248390, 43.571960, 31.798716>,  <30.018444, 43.518791, 31.842281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248390, 43.571960, 31.798716>,  <30.631634, 43.660572, 31.726107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.248390, 43.571960, 31.798716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250404, -0.955576, 0.155476,
		0.139014, 0.194416, 0.971019,
		-0.958109, -0.221534, 0.181521,
		29.960957, 43.505501, 31.853172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.557522, 43.265873, 32.379871>,  <30.631634, 43.660572, 31.726107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.557522, 43.265873, 32.379871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.207729, 43.206535, 32.195145>,  <29.997854, 43.170933, 32.084309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.207729, 43.206535, 32.195145>,  <30.557522, 43.265873, 32.379871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.207729, 43.206535, 32.195145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019771, -0.962196, 0.271638,
		-0.484657, 0.228411, 0.844355,
		-0.874481, -0.148345, -0.461819,
		29.945385, 43.162033, 32.056599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.133253, 42.965099, 32.888821>,  <30.557522, 43.265873, 32.379871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.133253, 42.965099, 32.888821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.976633, 42.882408, 32.530167>,  <29.882662, 42.832794, 32.314976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.976633, 42.882408, 32.530167>,  <30.133253, 42.965099, 32.888821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.976633, 42.882408, 32.530167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091364, -0.978356, 0.185668,
		-0.915610, -0.009222, 0.401961,
		-0.391549, -0.206724, -0.896635,
		29.859169, 42.820393, 32.261177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.729593, 42.386711, 32.939861>,  <30.133253, 42.965099, 32.888821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.729593, 42.386711, 32.939861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.761116, 42.369553, 32.541473>,  <29.780029, 42.359257, 32.302441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.761116, 42.369553, 32.541473>,  <29.729593, 42.386711, 32.939861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.761116, 42.369553, 32.541473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013160, -0.999032, 0.041983,
		-0.996803, 0.009799, -0.079294,
		0.078806, -0.042892, -0.995967,
		29.784758, 42.356686, 32.242683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.290325, 41.879528, 32.736378>,  <29.729593, 42.386711, 32.939861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.290325, 41.879528, 32.736378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.551718, 41.899868, 32.434284>,  <29.708553, 41.912071, 32.253029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.551718, 41.899868, 32.434284>,  <29.290325, 41.879528, 32.736378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.551718, 41.899868, 32.434284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002036, -0.997620, -0.068926,
		-0.756939, 0.046579, -0.651823,
		0.653482, 0.050845, -0.755232,
		29.747763, 41.915123, 32.207714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.063593, 41.364479, 32.358719>,  <29.290325, 41.879528, 32.736378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.063593, 41.364479, 32.358719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.446087, 41.431328, 32.262650>,  <29.675583, 41.471436, 32.205009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.446087, 41.431328, 32.262650>,  <29.063593, 41.364479, 32.358719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.446087, 41.431328, 32.262650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188722, -0.979548, 0.069787,
		-0.223595, -0.112059, -0.968219,
		0.956237, 0.167120, -0.240169,
		29.732958, 41.481464, 32.190598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.176025, 40.929100, 31.836332>,  <29.063593, 41.364479, 32.358719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.176025, 40.929100, 31.836332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.535805, 40.993652, 31.998789>,  <29.751673, 41.032383, 32.096264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.535805, 40.993652, 31.998789>,  <29.176025, 40.929100, 31.836332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.535805, 40.993652, 31.998789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117725, -0.984440, 0.130454,
		0.420874, -0.069524, -0.904451,
		0.899447, 0.161381, 0.406141,
		29.805639, 41.042068, 32.120632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.521139, 40.361263, 31.533651>,  <29.176025, 40.929100, 31.836332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.521139, 40.361263, 31.533651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.763041, 40.494953, 31.822807>,  <29.908182, 40.575165, 31.996302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.763041, 40.494953, 31.822807>,  <29.521139, 40.361263, 31.533651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.763041, 40.494953, 31.822807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210250, -0.942481, 0.259856,
		0.768158, -0.005161, -0.640239,
		0.604754, 0.334221, 0.722889,
		29.944468, 40.595219, 32.039673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.162647, 40.035431, 31.372965>,  <29.521139, 40.361263, 31.533651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.162647, 40.035431, 31.372965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.185200, 40.122757, 31.762665>,  <30.198730, 40.175152, 31.996485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.185200, 40.122757, 31.762665>,  <30.162647, 40.035431, 31.372965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.185200, 40.122757, 31.762665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100701, -0.972069, 0.211995,
		0.993318, 0.086156, -0.076790,
		0.056381, 0.218311, 0.974249,
		30.202114, 40.188251, 32.054939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670801, 39.530766, 31.704323>,  <30.162647, 40.035431, 31.372965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670801, 39.530766, 31.704323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.465405, 39.686749, 32.010071>,  <30.342167, 39.780338, 32.193520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.465405, 39.686749, 32.010071>,  <30.670801, 39.530766, 31.704323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.465405, 39.686749, 32.010071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007970, -0.892901, 0.450182,
		0.858059, 0.225072, 0.461603,
		-0.513489, 0.389962, 0.764368,
		30.311357, 39.803738, 32.239380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.986698, 39.306126, 32.281544>,  <30.670801, 39.530766, 31.704323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.986698, 39.306126, 32.281544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.599401, 39.378777, 32.350266>,  <30.367023, 39.422367, 32.391499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.599401, 39.378777, 32.350266>,  <30.986698, 39.306126, 32.281544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.599401, 39.378777, 32.350266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094246, -0.901657, 0.422058,
		0.231562, 0.392463, 0.890141,
		-0.968244, 0.181625, 0.171802,
		30.308928, 39.433266, 32.401806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.996323, 39.050724, 32.866760>,  <30.986698, 39.306126, 32.281544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.996323, 39.050724, 32.866760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.614340, 39.066624, 32.749130>,  <30.385151, 39.076164, 32.678551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.614340, 39.066624, 32.749130>,  <30.996323, 39.050724, 32.866760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614340, 39.066624, 32.749130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148821, -0.921510, 0.358709,
		-0.256733, 0.386315, 0.885917,
		-0.954956, 0.039751, -0.294074,
		30.327852, 39.078548, 32.660908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.575203, 38.897343, 33.385788>,  <30.996323, 39.050724, 32.866760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.575203, 38.897343, 33.385788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.373198, 38.805954, 33.052860>,  <30.251993, 38.751122, 32.853104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.373198, 38.805954, 33.052860>,  <30.575203, 38.897343, 33.385788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.373198, 38.805954, 33.052860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253793, -0.882390, 0.396203,
		-0.824954, 0.411326, 0.387636,
		-0.505015, -0.228469, -0.832323,
		30.221693, 38.737411, 32.803162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.930967, 38.700226, 33.663120>,  <30.575203, 38.897343, 33.385788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.930967, 38.700226, 33.663120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.939791, 38.548336, 33.293186>,  <29.945084, 38.457203, 33.071224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.939791, 38.548336, 33.293186>,  <29.930967, 38.700226, 33.663120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.939791, 38.548336, 33.293186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429396, -0.838992, 0.334232,
		-0.902847, 0.389750, -0.181556,
		0.022057, -0.379720, -0.924838,
		29.946407, 38.434422, 33.015736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.322903, 38.359745, 33.577629>,  <29.930967, 38.700226, 33.663120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.322903, 38.359745, 33.577629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.542347, 38.202541, 33.282448>,  <29.674013, 38.108219, 33.105339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.542347, 38.202541, 33.282448>,  <29.322903, 38.359745, 33.577629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.542347, 38.202541, 33.282448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353437, -0.908904, 0.221305,
		-0.757701, 0.139409, -0.637538,
		0.548609, -0.393012, -0.737949,
		29.706930, 38.084637, 33.061062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.905458, 37.887085, 33.203823>,  <29.322903, 38.359745, 33.577629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.905458, 37.887085, 33.203823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.256315, 37.753235, 33.066044>,  <29.466829, 37.672924, 32.983376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.256315, 37.753235, 33.066044>,  <28.905458, 37.887085, 33.203823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.256315, 37.753235, 33.066044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231304, -0.922963, 0.307632,
		-0.420858, -0.190164, -0.886970,
		0.877141, -0.334629, -0.344451,
		29.519457, 37.652847, 32.962708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.722712, 37.277119, 32.722980>,  <28.905458, 37.887085, 33.203823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.722712, 37.277119, 32.722980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.090714, 37.253479, 32.877949>,  <29.311516, 37.239296, 32.970928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.090714, 37.253479, 32.877949>,  <28.722712, 37.277119, 32.722980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.090714, 37.253479, 32.877949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159363, -0.959559, 0.232058,
		0.358039, -0.275235, -0.892218,
		0.920006, -0.059100, 0.387422,
		29.366714, 37.235748, 32.994175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.083244, 36.724682, 32.294548>,  <28.722712, 37.277119, 32.722980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.083244, 36.724682, 32.294548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.299826, 36.754593, 32.629509>,  <29.429775, 36.772541, 32.830486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.299826, 36.754593, 32.629509>,  <29.083244, 36.724682, 32.294548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.299826, 36.754593, 32.629509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091773, -0.984827, 0.147288,
		0.835707, -0.156600, -0.526375,
		0.541453, 0.074782, 0.837398,
		29.462261, 36.777027, 32.880730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611115, 36.125713, 32.302074>,  <29.083244, 36.724682, 32.294548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.611115, 36.125713, 32.302074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.529379, 36.240726, 32.676361>,  <29.480337, 36.309734, 32.900932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.529379, 36.240726, 32.676361>,  <29.611115, 36.125713, 32.302074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.529379, 36.240726, 32.676361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233525, -0.942608, 0.238657,
		0.950637, -0.169747, 0.259759,
		-0.204339, 0.287536, 0.935718,
		29.468077, 36.326988, 32.957077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.797401, 35.529671, 32.747639>,  <29.611115, 36.125713, 32.302074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.797401, 35.529671, 32.747639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.573833, 35.740681, 33.003551>,  <29.439693, 35.867287, 33.157101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.573833, 35.740681, 33.003551>,  <29.797401, 35.529671, 32.747639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.573833, 35.740681, 33.003551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392214, -0.847965, 0.356542,
		0.730601, -0.051654, 0.680848,
		-0.558919, 0.527529, 0.639783,
		29.406158, 35.898941, 33.195488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907171, 35.225155, 33.363235>,  <29.797401, 35.529671, 32.747639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.907171, 35.225155, 33.363235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.569399, 35.437393, 33.392639>,  <29.366735, 35.564735, 33.410282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.569399, 35.437393, 33.392639>,  <29.907171, 35.225155, 33.363235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.569399, 35.437393, 33.392639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436232, -0.760823, 0.480469,
		0.310862, 0.373656, 0.873925,
		-0.844433, 0.530594, 0.073510,
		29.316069, 35.596573, 33.414692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.729666, 35.308498, 34.091137>,  <29.907171, 35.225155, 33.363235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.729666, 35.308498, 34.091137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.391899, 35.353043, 33.881546>,  <29.189240, 35.379768, 33.755791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.391899, 35.353043, 33.881546>,  <29.729666, 35.308498, 34.091137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.391899, 35.353043, 33.881546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446442, -0.686884, 0.573481,
		-0.296051, 0.718185, 0.629733,
		-0.844419, 0.111359, -0.523981,
		29.138573, 35.386452, 33.724350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.229065, 35.351494, 34.598732>,  <29.729666, 35.308498, 34.091137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.229065, 35.351494, 34.598732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.019632, 35.287113, 34.264080>,  <28.893972, 35.248486, 34.063290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.019632, 35.287113, 34.264080>,  <29.229065, 35.351494, 34.598732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.019632, 35.287113, 34.264080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622859, -0.597696, 0.504783,
		-0.581299, 0.785400, 0.212691,
		-0.523581, -0.160953, -0.836634,
		28.862558, 35.238827, 34.013088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.702089, 35.424366, 35.245346>,  <29.229065, 35.351494, 34.598732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.702089, 35.424366, 35.245346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.733292, 35.025902, 35.229473>,  <29.752014, 34.786823, 35.219948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.733292, 35.025902, 35.229473>,  <29.702089, 35.424366, 35.245346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.733292, 35.025902, 35.229473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854966, 0.046370, 0.516606,
		-0.512784, -0.074228, 0.855303,
		0.078007, -0.996163, -0.039685,
		29.756693, 34.727055, 35.217567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.926970, 35.176922, 35.920906>,  <29.702089, 35.424366, 35.245346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.926970, 35.176922, 35.920906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.071383, 34.902279, 35.668488>,  <30.158031, 34.737492, 35.517036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.071383, 34.902279, 35.668488>,  <29.926970, 35.176922, 35.920906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.071383, 34.902279, 35.668488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911674, 0.117480, 0.393763,
		-0.196227, -0.717470, 0.668380,
		0.361035, -0.686611, -0.631046,
		30.179693, 34.696297, 35.479176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.315304, 34.769760, 36.339737>,  <29.926970, 35.176922, 35.920906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.315304, 34.769760, 36.339737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.447250, 34.716526, 35.965897>,  <30.526419, 34.684586, 35.741592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.447250, 34.716526, 35.965897>,  <30.315304, 34.769760, 36.339737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.447250, 34.716526, 35.965897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942150, 0.108816, 0.317036,
		0.059506, -0.985113, 0.161283,
		0.329866, -0.133087, -0.934599,
		30.546209, 34.676601, 35.685516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.938799, 35.236515, 36.583023>,  <30.315304, 34.769760, 36.339737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.938799, 35.236515, 36.583023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.728077, 35.130684, 36.906128>,  <30.601643, 35.067184, 37.099991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.728077, 35.130684, 36.906128>,  <30.938799, 35.236515, 36.583023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.728077, 35.130684, 36.906128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849959, -0.171399, 0.498189,
		0.006640, 0.949011, 0.315173,
		-0.526807, -0.264576, 0.807758,
		30.570034, 35.051311, 37.148457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.046894, 35.686455, 37.207882>,  <30.938799, 35.236515, 36.583023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.046894, 35.686455, 37.207882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.926638, 35.315090, 37.295216>,  <30.854483, 35.092274, 37.347618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.926638, 35.315090, 37.295216>,  <31.046894, 35.686455, 37.207882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.926638, 35.315090, 37.295216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826803, -0.139596, 0.544895,
		-0.475406, 0.344340, 0.809579,
		-0.300643, -0.928409, 0.218337,
		30.836445, 35.036568, 37.360718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.114540, 35.554054, 37.996563>,  <31.046894, 35.686455, 37.207882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.114540, 35.554054, 37.996563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.093260, 35.194416, 37.822762>,  <31.080492, 34.978634, 37.718479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.093260, 35.194416, 37.822762>,  <31.114540, 35.554054, 37.996563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.093260, 35.194416, 37.822762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676200, -0.352615, 0.646851,
		-0.734795, -0.259402, 0.626727,
		-0.053199, -0.899096, -0.434508,
		31.077301, 34.924686, 37.692410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.908966, 35.084396, 38.472939>,  <31.114540, 35.554054, 37.996563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.908966, 35.084396, 38.472939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.128357, 34.922131, 38.180470>,  <31.259991, 34.824772, 38.004990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.128357, 34.922131, 38.180470>,  <30.908966, 35.084396, 38.472939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.128357, 34.922131, 38.180470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677753, -0.296453, 0.672879,
		-0.489719, -0.864613, 0.112341,
		0.548476, -0.405661, -0.731172,
		31.292900, 34.800434, 37.961117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104408, 34.521015, 38.799301>,  <30.908966, 35.084396, 38.472939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.104408, 34.521015, 38.799301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347322, 34.544060, 38.482346>,  <31.493071, 34.557888, 38.292171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347322, 34.544060, 38.482346>,  <31.104408, 34.521015, 38.799301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347322, 34.544060, 38.482346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756308, -0.347378, 0.554370,
		-0.243320, -0.935953, -0.254533,
		0.607283, 0.057616, -0.792393,
		31.529507, 34.561344, 38.244629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399385, 33.927803, 38.685902>,  <31.104408, 34.521015, 38.799301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.399385, 33.927803, 38.685902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666534, 34.152321, 38.490395>,  <31.826824, 34.287029, 38.373089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666534, 34.152321, 38.490395>,  <31.399385, 33.927803, 38.685902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.666534, 34.152321, 38.490395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743915, -0.483050, 0.461793,
		0.023099, -0.672024, -0.740169,
		0.667875, 0.561290, -0.488771,
		31.866898, 34.320709, 38.343761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910650, 33.472385, 38.493160>,  <31.399385, 33.927803, 38.685902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910650, 33.472385, 38.493160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083981, 33.832855, 38.488956>,  <32.187977, 34.049137, 38.486435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083981, 33.832855, 38.488956>,  <31.910650, 33.472385, 38.493160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083981, 33.832855, 38.488956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795893, -0.377174, 0.473598,
		0.422831, -0.213587, -0.880679,
		0.433324, 0.901177, -0.010512,
		32.213978, 34.103207, 38.485802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623951, 33.311932, 38.420437>,  <31.910650, 33.472385, 38.493160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623951, 33.311932, 38.420437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605648, 33.687813, 38.556000>,  <32.594666, 33.913342, 38.637337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605648, 33.687813, 38.556000>,  <32.623951, 33.311932, 38.420437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605648, 33.687813, 38.556000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878576, -0.123603, 0.461332,
		0.475407, 0.318866, -0.819947,
		-0.045755, 0.939706, 0.338909,
		32.591923, 33.969723, 38.657673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365513, 33.597366, 38.406078>,  <32.623951, 33.311932, 38.420437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365513, 33.597366, 38.406078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153896, 33.847172, 38.635895>,  <33.026928, 33.997055, 38.773785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153896, 33.847172, 38.635895>,  <33.365513, 33.597366, 38.406078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153896, 33.847172, 38.635895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819346, 0.199681, 0.537401,
		0.220889, 0.755056, -0.617332,
		-0.529037, 0.624515, 0.574545,
		32.995186, 34.034527, 38.808258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747566, 34.163849, 38.454781>,  <33.365513, 33.597366, 38.406078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747566, 34.163849, 38.454781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501263, 34.207096, 38.766972>,  <33.353481, 34.233044, 38.954288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501263, 34.207096, 38.766972>,  <33.747566, 34.163849, 38.454781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501263, 34.207096, 38.766972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784138, -0.013020, 0.620450,
		0.077245, 0.994053, -0.076764,
		-0.615760, 0.108120, 0.780480,
		33.316536, 34.239532, 39.001114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134041, 34.618923, 38.894527>,  <33.747566, 34.163849, 38.454781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134041, 34.618923, 38.894527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853764, 34.435947, 39.113537>,  <33.685596, 34.326164, 39.244942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853764, 34.435947, 39.113537>,  <34.134041, 34.618923, 38.894527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853764, 34.435947, 39.113537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620801, -0.012680, 0.783866,
		-0.351626, 0.889152, 0.292862,
		-0.700689, -0.457437, 0.547527,
		33.643559, 34.298717, 39.277794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057350, 34.972221, 39.661392>,  <34.134041, 34.618923, 38.894527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057350, 34.972221, 39.661392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903358, 34.605148, 39.700680>,  <33.810963, 34.384903, 39.724251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903358, 34.605148, 39.700680>,  <34.057350, 34.972221, 39.661392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903358, 34.605148, 39.700680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565350, -0.150370, 0.811029,
		-0.729498, 0.367761, 0.576702,
		-0.384984, -0.917682, 0.098219,
		33.787865, 34.329845, 39.730145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769314, 34.939533, 40.388161>,  <34.057350, 34.972221, 39.661392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769314, 34.939533, 40.388161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842632, 34.564152, 40.271053>,  <33.886623, 34.338924, 40.200790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842632, 34.564152, 40.271053>,  <33.769314, 34.939533, 40.388161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842632, 34.564152, 40.271053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312496, -0.226740, 0.922461,
		-0.932068, -0.260568, 0.251703,
		0.183293, -0.938452, -0.292764,
		33.897621, 34.282616, 40.183224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729691, 34.552975, 40.977375>,  <33.769314, 34.939533, 40.388161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729691, 34.552975, 40.977375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910690, 34.282394, 40.744942>,  <34.019291, 34.120045, 40.605484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910690, 34.282394, 40.744942>,  <33.729691, 34.552975, 40.977375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910690, 34.282394, 40.744942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458145, -0.382696, 0.802276,
		-0.765078, -0.629251, 0.136741,
		0.452503, -0.676451, -0.581081,
		34.046440, 34.079460, 40.570618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608162, 33.971428, 41.248936>,  <33.729691, 34.552975, 40.977375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608162, 33.971428, 41.248936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915039, 33.875145, 41.011124>,  <34.099167, 33.817375, 40.868435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915039, 33.875145, 41.011124>,  <33.608162, 33.971428, 41.248936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915039, 33.875145, 41.011124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431828, -0.491536, 0.756252,
		-0.474261, -0.836933, -0.273167,
		0.767204, -0.240700, -0.594527,
		34.145199, 33.802933, 40.832764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672909, 33.262020, 41.315876>,  <33.608162, 33.971428, 41.248936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672909, 33.262020, 41.315876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011280, 33.427162, 41.180851>,  <34.214302, 33.526249, 41.099834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011280, 33.427162, 41.180851>,  <33.672909, 33.262020, 41.315876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011280, 33.427162, 41.180851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508730, -0.434830, 0.743045,
		0.159989, -0.800294, -0.577870,
		0.845930, 0.412859, -0.337565,
		34.265060, 33.551022, 41.079582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136654, 32.653057, 41.363075>,  <33.672909, 33.262020, 41.315876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136654, 32.653057, 41.363075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342648, 32.995934, 41.361496>,  <34.466244, 33.201660, 41.360550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342648, 32.995934, 41.361496>,  <34.136654, 32.653057, 41.363075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342648, 32.995934, 41.361496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573960, -0.341400, 0.744322,
		0.636680, -0.385578, -0.667809,
		0.514985, 0.857190, -0.003944,
		34.497143, 33.253090, 41.360313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881699, 32.487099, 41.301174>,  <34.136654, 32.653057, 41.363075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881699, 32.487099, 41.301174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893749, 32.845795, 41.477787>,  <34.900978, 33.061012, 41.583755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893749, 32.845795, 41.477787>,  <34.881699, 32.487099, 41.301174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893749, 32.845795, 41.477787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530928, -0.388616, 0.753056,
		0.846881, 0.211736, -0.487811,
		0.030123, 0.896742, 0.441528,
		34.902786, 33.114819, 41.610245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534847, 32.559742, 41.468819>,  <34.881699, 32.487099, 41.301174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534847, 32.559742, 41.468819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358845, 32.841694, 41.691360>,  <35.253242, 33.010864, 41.824886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358845, 32.841694, 41.691360>,  <35.534847, 32.559742, 41.468819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358845, 32.841694, 41.691360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671140, -0.153502, 0.725264,
		0.596628, 0.692516, -0.405532,
		-0.440007, 0.704882, 0.556359,
		35.226841, 33.053158, 41.858269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027554, 33.042507, 41.772057>,  <35.534847, 32.559742, 41.468819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027554, 33.042507, 41.772057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695969, 33.092068, 41.990219>,  <35.497017, 33.121803, 42.121117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695969, 33.092068, 41.990219>,  <36.027554, 33.042507, 41.772057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695969, 33.092068, 41.990219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546676, -0.026585, 0.836922,
		0.118195, 0.991938, -0.045696,
		-0.828961, 0.123901, 0.545411,
		35.447281, 33.129238, 42.153843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262913, 33.343456, 42.345497>,  <36.027554, 33.042507, 41.772057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262913, 33.343456, 42.345497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894608, 33.239815, 42.462162>,  <35.673626, 33.177631, 42.532162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894608, 33.239815, 42.462162>,  <36.262913, 33.343456, 42.345497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894608, 33.239815, 42.462162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299012, 0.011515, 0.954180,
		-0.250589, 0.965781, 0.066872,
		-0.920759, -0.259102, 0.291665,
		35.618382, 33.162083, 42.549660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016624, 33.884850, 42.887829>,  <36.262913, 33.343456, 42.345497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016624, 33.884850, 42.887829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.811230, 33.545166, 42.937103>,  <35.687992, 33.341354, 42.966667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.811230, 33.545166, 42.937103>,  <36.016624, 33.884850, 42.887829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811230, 33.545166, 42.937103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256528, -0.014928, 0.966422,
		-0.818859, 0.527840, 0.225512,
		-0.513482, -0.849213, 0.123182,
		35.657185, 33.290401, 42.974056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699718, 34.041134, 43.526585>,  <36.016624, 33.884850, 42.887829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699718, 34.041134, 43.526585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698948, 33.643074, 43.487244>,  <35.698486, 33.404240, 43.463638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698948, 33.643074, 43.487244>,  <35.699718, 34.041134, 43.526585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698948, 33.643074, 43.487244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205214, -0.096648, 0.973934,
		-0.978715, -0.018308, 0.204405,
		-0.001924, -0.995150, -0.098348,
		35.698372, 33.344528, 43.457741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411942, 33.821629, 44.227562>,  <35.699718, 34.041134, 43.526585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411942, 33.821629, 44.227562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570618, 33.491879, 44.066051>,  <35.665821, 33.294029, 43.969143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570618, 33.491879, 44.066051>,  <35.411942, 33.821629, 44.227562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570618, 33.491879, 44.066051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512704, -0.165889, 0.842386,
		-0.761428, -0.541184, 0.356857,
		0.396688, -0.824379, -0.403780,
		35.689625, 33.244564, 43.944916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264458, 33.275391, 44.702263>,  <35.411942, 33.821629, 44.227562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264458, 33.275391, 44.702263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580338, 33.159527, 44.485939>,  <35.769863, 33.090008, 44.356144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580338, 33.159527, 44.485939>,  <35.264458, 33.275391, 44.702263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580338, 33.159527, 44.485939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501361, -0.203347, 0.841003,
		-0.353576, -0.935280, -0.015359,
		0.789697, -0.289658, -0.540812,
		35.817245, 33.072628, 44.323696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448845, 32.583275, 44.934940>,  <35.264458, 33.275391, 44.702263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448845, 32.583275, 44.934940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787430, 32.711300, 44.764736>,  <35.990582, 32.788116, 44.662613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787430, 32.711300, 44.764736>,  <35.448845, 32.583275, 44.934940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787430, 32.711300, 44.764736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464023, -0.051532, 0.884323,
		0.261115, -0.945992, -0.192139,
		0.846464, 0.320067, -0.425506,
		36.041370, 32.807320, 44.637085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024807, 32.076366, 45.156696>,  <35.448845, 32.583275, 44.934940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024807, 32.076366, 45.156696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.198196, 32.414909, 45.032902>,  <36.302231, 32.618034, 44.958626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.198196, 32.414909, 45.032902>,  <36.024807, 32.076366, 45.156696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198196, 32.414909, 45.032902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550756, 0.023011, 0.834349,
		0.713277, -0.532121, -0.456161,
		0.433478, 0.846356, -0.309482,
		36.328239, 32.668816, 44.940056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637814, 32.004406, 45.505833>,  <36.024807, 32.076366, 45.156696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637814, 32.004406, 45.505833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651997, 32.385708, 45.385803>,  <36.660507, 32.614491, 45.313786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651997, 32.385708, 45.385803>,  <36.637814, 32.004406, 45.505833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651997, 32.385708, 45.385803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560832, 0.229543, 0.795473,
		0.827170, -0.196498, -0.526478,
		0.035460, 0.953257, -0.300073,
		36.662636, 32.671684, 45.295780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364243, 32.190964, 45.445873>,  <36.637814, 32.004406, 45.505833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364243, 32.190964, 45.445873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131962, 32.508797, 45.516792>,  <36.992596, 32.699497, 45.559341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131962, 32.508797, 45.516792>,  <37.364243, 32.190964, 45.445873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131962, 32.508797, 45.516792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509510, 0.184852, 0.840375,
		0.634971, 0.578337, -0.512189,
		-0.580699, 0.794579, 0.177293,
		36.957752, 32.747169, 45.569981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779751, 32.592274, 45.690491>,  <37.364243, 32.190964, 45.445873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779751, 32.592274, 45.690491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431705, 32.757633, 45.797821>,  <37.222878, 32.856850, 45.862221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431705, 32.757633, 45.797821>,  <37.779751, 32.592274, 45.690491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431705, 32.757633, 45.797821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394991, 0.259329, 0.881323,
		0.294750, 0.872841, -0.388935,
		-0.870117, 0.413396, 0.268327,
		37.170670, 32.881653, 45.878319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975658, 33.227051, 45.927429>,  <37.779751, 32.592274, 45.690491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975658, 33.227051, 45.927429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628952, 33.126728, 46.099850>,  <37.420929, 33.066532, 46.203304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628952, 33.126728, 46.099850>,  <37.975658, 33.227051, 45.927429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628952, 33.126728, 46.099850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356855, 0.291870, 0.887393,
		-0.348378, 0.922988, -0.163482,
		-0.866768, -0.250809, 0.431054,
		37.368923, 33.051487, 46.229164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855995, 33.655540, 46.378307>,  <37.975658, 33.227051, 45.927429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855995, 33.655540, 46.378307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.623539, 33.378323, 46.548939>,  <37.484066, 33.211994, 46.651318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.623539, 33.378323, 46.548939>,  <37.855995, 33.655540, 46.378307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623539, 33.378323, 46.548939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296356, 0.307966, 0.904063,
		-0.757926, 0.651805, 0.026417,
		-0.581137, -0.693042, 0.426582,
		37.449196, 33.170410, 46.676914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671219, 33.840149, 47.084755>,  <37.855995, 33.655540, 46.378307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671219, 33.840149, 47.084755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557831, 33.456558, 47.085033>,  <37.489799, 33.226402, 47.085201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557831, 33.456558, 47.085033>,  <37.671219, 33.840149, 47.084755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557831, 33.456558, 47.085033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368510, -0.108261, 0.923298,
		-0.885350, 0.261985, 0.384083,
		-0.283471, -0.958981, 0.000696,
		37.472790, 33.168865, 47.085243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437092, 33.764347, 47.704243>,  <37.671219, 33.840149, 47.084755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437092, 33.764347, 47.704243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520935, 33.385696, 47.606293>,  <37.571239, 33.158504, 47.547523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520935, 33.385696, 47.606293>,  <37.437092, 33.764347, 47.704243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520935, 33.385696, 47.606293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518615, -0.104679, 0.848576,
		-0.828917, -0.304864, 0.468993,
		0.209606, -0.946626, -0.244877,
		37.583817, 33.101707, 47.532829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317604, 33.333130, 48.383034>,  <37.437092, 33.764347, 47.704243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317604, 33.333130, 48.383034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540154, 33.124470, 48.124317>,  <37.673683, 32.999275, 47.969090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540154, 33.124470, 48.124317>,  <37.317604, 33.333130, 48.383034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540154, 33.124470, 48.124317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628123, -0.245547, 0.738355,
		-0.543977, -0.817062, 0.191042,
		0.556372, -0.521646, -0.646788,
		37.707066, 32.967976, 47.930283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368671, 32.669720, 48.686935>,  <37.317604, 33.333130, 48.383034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368671, 32.669720, 48.686935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659935, 32.699963, 48.414444>,  <37.834694, 32.718109, 48.250950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659935, 32.699963, 48.414444>,  <37.368671, 32.669720, 48.686935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659935, 32.699963, 48.414444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678153, -0.223712, 0.700044,
		-0.099472, -0.971718, -0.214168,
		0.728158, 0.075604, -0.681227,
		37.878384, 32.722645, 48.210075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721336, 32.011951, 48.678902>,  <37.368671, 32.669720, 48.686935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721336, 32.011951, 48.678902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977783, 32.266182, 48.506847>,  <38.131649, 32.418720, 48.403614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977783, 32.266182, 48.506847>,  <37.721336, 32.011951, 48.678902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977783, 32.266182, 48.506847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722364, -0.310498, 0.617884,
		0.259159, -0.706846, -0.658183,
		0.641114, 0.635578, -0.430132,
		38.170116, 32.456856, 48.377808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182507, 31.690908, 48.364719>,  <37.721336, 32.011951, 48.678902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182507, 31.690908, 48.364719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317486, 32.048630, 48.482258>,  <38.398476, 32.263264, 48.552780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317486, 32.048630, 48.482258>,  <38.182507, 31.690908, 48.364719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317486, 32.048630, 48.482258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530582, -0.438547, 0.725368,
		0.777566, -0.088865, -0.622490,
		0.337451, 0.894304, 0.293849,
		38.418720, 32.316921, 48.570412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966610, 31.642239, 48.457890>,  <38.182507, 31.690908, 48.364719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966610, 31.642239, 48.457890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837238, 31.958843, 48.665314>,  <38.759617, 32.148808, 48.789768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837238, 31.958843, 48.665314>,  <38.966610, 31.642239, 48.457890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837238, 31.958843, 48.665314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480643, -0.334637, 0.810556,
		0.815093, 0.511399, -0.272203,
		-0.323428, 0.791511, 0.518561,
		38.740211, 32.196297, 48.820881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515587, 31.802229, 48.798237>,  <38.966610, 31.642239, 48.457890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515587, 31.802229, 48.798237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219875, 31.974354, 49.005428>,  <39.042450, 32.077629, 49.129742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219875, 31.974354, 49.005428>,  <39.515587, 31.802229, 48.798237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219875, 31.974354, 49.005428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391710, -0.350880, 0.850557,
		0.547751, 0.831695, 0.090841,
		-0.739278, 0.430310, 0.517978,
		38.998093, 32.103447, 49.160820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849785, 32.087574, 49.248463>,  <39.515587, 31.802229, 48.798237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.849785, 32.087574, 49.248463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477707, 32.077259, 49.394928>,  <39.254459, 32.071068, 49.482807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477707, 32.077259, 49.394928>,  <39.849785, 32.087574, 49.248463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477707, 32.077259, 49.394928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364018, -0.193229, 0.911127,
		0.047254, 0.980815, 0.189129,
		-0.930192, -0.025792, 0.366165,
		39.198650, 32.069523, 49.504776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800449, 32.454735, 49.884789>,  <39.849785, 32.087574, 49.248463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.800449, 32.454735, 49.884789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501019, 32.190300, 49.905170>,  <39.321362, 32.031639, 49.917400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501019, 32.190300, 49.905170>,  <39.800449, 32.454735, 49.884789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501019, 32.190300, 49.905170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230659, -0.187591, 0.954781,
		-0.621637, 0.726478, 0.292912,
		-0.748575, -0.661089, 0.050955,
		39.276447, 31.991974, 49.920456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344536, 32.716721, 50.402443>,  <39.800449, 32.454735, 49.884789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344536, 32.716721, 50.402443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279560, 32.324177, 50.361374>,  <39.240574, 32.088650, 50.336735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279560, 32.324177, 50.361374>,  <39.344536, 32.716721, 50.402443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279560, 32.324177, 50.361374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182451, -0.132130, 0.974297,
		-0.969705, 0.139528, 0.200513,
		-0.162435, -0.981363, -0.102670,
		39.230831, 32.029766, 50.330574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058758, 32.511032, 50.991169>,  <39.344536, 32.716721, 50.402443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058758, 32.511032, 50.991169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186836, 32.163303, 50.840572>,  <39.263683, 31.954664, 50.750214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186836, 32.163303, 50.840572>,  <39.058758, 32.511032, 50.991169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186836, 32.163303, 50.840572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293631, -0.286778, 0.911888,
		-0.900699, -0.402530, 0.163438,
		0.320192, -0.869326, -0.376496,
		39.282894, 31.902506, 50.727623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782967, 31.890886, 51.294773>,  <39.058758, 32.511032, 50.991169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782967, 31.890886, 51.294773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155972, 31.808653, 51.176003>,  <39.379772, 31.759312, 51.104740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155972, 31.808653, 51.176003>,  <38.782967, 31.890886, 51.294773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155972, 31.808653, 51.176003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236808, -0.272672, 0.932508,
		-0.272672, -0.939885, -0.205585,
		-0.932508, 0.205585, 0.296923,
		39.435722, 31.746977, 51.086926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981407, 31.229700, 51.520393>,  <38.782967, 31.890886, 51.294773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981407, 31.229700, 51.520393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322601, 31.437103, 51.496506>,  <39.527317, 31.561544, 51.482174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322601, 31.437103, 51.496506>,  <38.981407, 31.229700, 51.520393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322601, 31.437103, 51.496506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227177, -0.265819, 0.936873,
		0.469900, -0.812707, -0.344532,
		0.852986, 0.518506, -0.059720,
		39.578499, 31.592655, 51.478588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495369, 30.765913, 51.610649>,  <38.981407, 31.229700, 51.520393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495369, 30.765913, 51.610649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888924, 30.720087, 51.555733>,  <40.125057, 30.692593, 51.522781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888924, 30.720087, 51.555733>,  <39.495369, 30.765913, 51.610649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888924, 30.720087, 51.555733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170982, -0.827503, -0.534793,
		-0.052345, 0.549649, -0.833754,
		0.983883, -0.114563, -0.137296,
		40.184090, 30.685719, 51.514545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815945, 30.701426, 50.832993>,  <39.495369, 30.765913, 51.610649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815945, 30.701426, 50.832993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.061161, 30.485523, 51.063763>,  <40.208290, 30.355982, 51.202225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.061161, 30.485523, 51.063763>,  <39.815945, 30.701426, 50.832993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061161, 30.485523, 51.063763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159157, -0.799641, -0.579002,
		0.773854, 0.263130, -0.576119,
		0.613041, -0.539756, 0.576926,
		40.245075, 30.323597, 51.236839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346653, 30.267515, 50.397762>,  <39.815945, 30.701426, 50.832993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.346653, 30.267515, 50.397762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313034, 30.105360, 50.761871>,  <40.292862, 30.008066, 50.980335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313034, 30.105360, 50.761871>,  <40.346653, 30.267515, 50.397762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313034, 30.105360, 50.761871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069002, -0.913679, -0.400535,
		0.994070, 0.029147, 0.104764,
		-0.084046, -0.405389, 0.910272,
		40.287819, 29.983744, 51.034954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934639, 29.901321, 50.696037>,  <40.346653, 30.267515, 50.397762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.934639, 29.901321, 50.696037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608746, 29.704414, 50.818604>,  <40.413212, 29.586271, 50.892143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608746, 29.704414, 50.818604>,  <40.934639, 29.901321, 50.696037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608746, 29.704414, 50.818604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326145, -0.825978, -0.459772,
		0.479423, -0.274654, 0.833498,
		-0.814729, -0.492267, 0.306416,
		40.364326, 29.556734, 50.910530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034969, 29.212584, 50.955620>,  <40.934639, 29.901321, 50.696037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034969, 29.212584, 50.955620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.369171, 29.125889, 51.157589>,  <41.569695, 29.073872, 51.278770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.369171, 29.125889, 51.157589>,  <41.034969, 29.212584, 50.955620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369171, 29.125889, 51.157589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042953, -0.890347, -0.453252,
		0.547796, 0.400384, -0.734583,
		0.835509, -0.216737, 0.504926,
		41.619823, 29.060867, 51.309067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612762, 28.750269, 50.546909>,  <41.034969, 29.212584, 50.955620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612762, 28.750269, 50.546909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478893, 28.415314, 50.374039>,  <40.398571, 28.214340, 50.270317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478893, 28.415314, 50.374039>,  <40.612762, 28.750269, 50.546909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478893, 28.415314, 50.374039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787373, 0.500466, -0.359969,
		0.517723, 0.219811, -0.826829,
		-0.334675, -0.837387, -0.432176,
		40.378490, 28.164097, 50.244385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.720158, 28.793203, 49.725784>,  <40.612762, 28.750269, 50.546909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.720158, 28.793203, 49.725784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.387257, 28.653088, 49.897675>,  <40.187515, 28.569019, 50.000809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.387257, 28.653088, 49.897675>,  <40.720158, 28.793203, 49.725784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387257, 28.653088, 49.897675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551019, 0.608129, -0.571453,
		-0.061153, -0.712376, -0.699129,
		-0.832249, -0.350287, 0.429721,
		40.137581, 28.548002, 50.026592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176830, 28.526455, 49.252296>,  <40.720158, 28.793203, 49.725784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176830, 28.526455, 49.252296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004032, 28.678148, 49.579605>,  <39.900352, 28.769165, 49.775990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004032, 28.678148, 49.579605>,  <40.176830, 28.526455, 49.252296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004032, 28.678148, 49.579605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612723, 0.542345, -0.574832,
		-0.661779, -0.749696, -0.001925,
		-0.431993, 0.379233, 0.818269,
		39.874435, 28.791918, 49.825085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438576, 28.515955, 49.240070>,  <40.176830, 28.526455, 49.252296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438576, 28.515955, 49.240070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.514896, 28.850863, 49.445038>,  <39.560688, 29.051807, 49.568020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.514896, 28.850863, 49.445038>,  <39.438576, 28.515955, 49.240070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514896, 28.850863, 49.445038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448059, 0.538742, -0.713443,
		-0.873406, -0.093469, 0.477939,
		0.190801, 0.837270, 0.512420,
		39.572136, 29.102043, 49.598763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745888, 28.783861, 49.445766>,  <39.438576, 28.515955, 49.240070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745888, 28.783861, 49.445766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975163, 29.110439, 49.473694>,  <39.112728, 29.306387, 49.490452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975163, 29.110439, 49.473694>,  <38.745888, 28.783861, 49.445766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975163, 29.110439, 49.473694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586376, 0.468192, -0.661029,
		-0.572384, 0.337950, 0.747105,
		0.573183, 0.816447, 0.069820,
		39.147118, 29.355373, 49.494640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245686, 29.236364, 49.481827>,  <38.745888, 28.783861, 49.445766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245686, 29.236364, 49.481827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584190, 29.409885, 49.358109>,  <38.787292, 29.513998, 49.283878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584190, 29.409885, 49.358109>,  <38.245686, 29.236364, 49.481827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584190, 29.409885, 49.358109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482054, 0.376237, -0.791245,
		-0.226873, 0.818696, 0.527509,
		0.846258, 0.433801, -0.309298,
		38.838066, 29.540026, 49.265320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975147, 29.841106, 49.068268>,  <38.245686, 29.236364, 49.481827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975147, 29.841106, 49.068268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355972, 29.783840, 48.960136>,  <38.584469, 29.749481, 48.895256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355972, 29.783840, 48.960136>,  <37.975147, 29.841106, 49.068268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355972, 29.783840, 48.960136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229413, 0.250393, -0.940570,
		0.202346, 0.957500, 0.205546,
		0.952064, -0.143165, -0.270329,
		38.641590, 29.740891, 48.879036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072567, 30.288557, 48.535236>,  <37.975147, 29.841106, 49.068268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072567, 30.288557, 48.535236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404636, 30.072441, 48.480240>,  <38.603878, 29.942772, 48.447243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404636, 30.072441, 48.480240>,  <38.072567, 30.288557, 48.535236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404636, 30.072441, 48.480240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090909, 0.374498, -0.922760,
		0.550046, 0.753551, 0.360015,
		0.830172, -0.540289, -0.137487,
		38.653687, 29.910355, 48.438995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621742, 30.716227, 48.266769>,  <38.072567, 30.288557, 48.535236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621742, 30.716227, 48.266769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709290, 30.346876, 48.140610>,  <38.761818, 30.125267, 48.064915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709290, 30.346876, 48.140610>,  <38.621742, 30.716227, 48.266769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709290, 30.346876, 48.140610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058951, 0.335157, -0.940316,
		0.973972, 0.187212, 0.127789,
		0.218868, -0.923375, -0.315397,
		38.774948, 30.069864, 48.045990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006020, 30.939142, 47.699368>,  <38.621742, 30.716227, 48.266769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006020, 30.939142, 47.699368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927437, 30.547567, 47.677162>,  <38.880287, 30.312622, 47.663837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927437, 30.547567, 47.677162>,  <39.006020, 30.939142, 47.699368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927437, 30.547567, 47.677162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156719, 0.024540, -0.987338,
		0.967906, -0.202673, 0.148597,
		-0.196460, -0.978939, -0.055515,
		38.868500, 30.253885, 47.660507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509796, 30.707680, 47.243286>,  <39.006020, 30.939142, 47.699368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509796, 30.707680, 47.243286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206863, 30.447229, 47.223320>,  <39.025105, 30.290960, 47.211342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206863, 30.447229, 47.223320>,  <39.509796, 30.707680, 47.243286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206863, 30.447229, 47.223320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063325, 0.149296, -0.986763,
		0.649957, -0.744143, -0.154298,
		-0.757329, -0.651124, -0.049913,
		38.979664, 30.251892, 47.208347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642990, 30.441444, 46.590389>,  <39.509796, 30.707680, 47.243286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642990, 30.441444, 46.590389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.281639, 30.290321, 46.671543>,  <39.064827, 30.199648, 46.720238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.281639, 30.290321, 46.671543>,  <39.642990, 30.441444, 46.590389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281639, 30.290321, 46.671543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291167, 0.193038, -0.936994,
		0.314836, -0.905538, -0.284391,
		-0.903383, -0.377805, 0.202888,
		39.010624, 30.176979, 46.732410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518509, 29.923794, 46.081493>,  <39.642990, 30.441444, 46.590389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518509, 29.923794, 46.081493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.166695, 30.051064, 46.223022>,  <38.955608, 30.127424, 46.307941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.166695, 30.051064, 46.223022>,  <39.518509, 29.923794, 46.081493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166695, 30.051064, 46.223022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351369, 0.067156, -0.933825,
		-0.320879, -0.945651, 0.052730,
		-0.879532, 0.318172, 0.353821,
		38.902836, 30.146515, 46.329170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969128, 29.663841, 45.630257>,  <39.518509, 29.923794, 46.081493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969128, 29.663841, 45.630257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757774, 29.934191, 45.835781>,  <38.630962, 30.096401, 45.959095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757774, 29.934191, 45.835781>,  <38.969128, 29.663841, 45.630257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757774, 29.934191, 45.835781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485832, 0.255609, -0.835842,
		-0.696260, -0.691272, 0.193302,
		-0.528384, 0.675875, 0.513812,
		38.599258, 30.136953, 45.989925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178467, 29.605709, 45.390045>,  <38.969128, 29.663841, 45.630257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178467, 29.605709, 45.390045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.288876, 29.967960, 45.518826>,  <38.355122, 30.185310, 45.596096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.288876, 29.967960, 45.518826>,  <38.178467, 29.605709, 45.390045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288876, 29.967960, 45.518826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378877, 0.410363, -0.829491,
		-0.883326, 0.106975, 0.456389,
		0.276020, 0.905626, 0.321954,
		38.371681, 30.239649, 45.615414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622749, 29.965837, 45.194813>,  <38.178467, 29.605709, 45.390045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622749, 29.965837, 45.194813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875008, 30.262543, 45.286091>,  <38.026363, 30.440565, 45.340858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875008, 30.262543, 45.286091>,  <37.622749, 29.965837, 45.194813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875008, 30.262543, 45.286091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177504, 0.424107, -0.888046,
		-0.755498, 0.519538, 0.399128,
		0.630647, 0.741763, 0.228192,
		38.064201, 30.485071, 45.354549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335037, 30.606565, 44.995274>,  <37.622749, 29.965837, 45.194813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335037, 30.606565, 44.995274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726822, 30.687210, 44.996586>,  <37.961891, 30.735598, 44.997372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726822, 30.687210, 44.996586>,  <37.335037, 30.606565, 44.995274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726822, 30.687210, 44.996586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071460, 0.362276, -0.929327,
		-0.188552, 0.910004, 0.369242,
		0.979460, 0.201613, 0.003279,
		38.020660, 30.747694, 44.997570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509274, 31.369974, 45.028427>,  <37.335037, 30.606565, 44.995274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509274, 31.369974, 45.028427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734985, 31.126272, 44.805576>,  <37.870415, 30.980051, 44.671864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734985, 31.126272, 44.805576>,  <37.509274, 31.369974, 45.028427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734985, 31.126272, 44.805576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387664, 0.400270, -0.830362,
		0.728904, 0.684538, -0.010320,
		0.564284, -0.609255, -0.557129,
		37.904270, 30.943495, 44.638439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607944, 31.788147, 44.447464>,  <37.509274, 31.369974, 45.028427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607944, 31.788147, 44.447464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.690891, 31.407749, 44.355721>,  <37.740658, 31.179510, 44.300674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.690891, 31.407749, 44.355721>,  <37.607944, 31.788147, 44.447464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690891, 31.407749, 44.355721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407834, 0.129067, -0.903888,
		0.889197, 0.280975, -0.361085,
		0.207365, -0.950997, -0.229358,
		37.753101, 31.122450, 44.286915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937874, 31.761774, 43.800884>,  <37.607944, 31.788147, 44.447464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937874, 31.761774, 43.800884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.761600, 31.407677, 43.860401>,  <37.655834, 31.195217, 43.896111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.761600, 31.407677, 43.860401>,  <37.937874, 31.761774, 43.800884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761600, 31.407677, 43.860401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465985, 0.083932, -0.880803,
		0.767238, -0.457490, -0.449499,
		-0.440685, -0.885245, 0.148788,
		37.629395, 31.142103, 43.905037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711102, 31.700703, 43.162701>,  <37.937874, 31.761774, 43.800884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711102, 31.700703, 43.162701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545746, 31.376537, 43.328754>,  <37.446533, 31.182037, 43.428387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545746, 31.376537, 43.328754>,  <37.711102, 31.700703, 43.162701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545746, 31.376537, 43.328754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448523, -0.215533, -0.867394,
		0.792424, -0.544769, -0.274391,
		-0.413389, -0.810415, 0.415135,
		37.421730, 31.133413, 43.453297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831264, 31.168983, 42.667534>,  <37.711102, 31.700703, 43.162701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831264, 31.168983, 42.667534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515373, 31.053949, 42.884281>,  <37.325836, 30.984928, 43.014328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515373, 31.053949, 42.884281>,  <37.831264, 31.168983, 42.667534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515373, 31.053949, 42.884281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512221, -0.176940, -0.840430,
		0.337575, -0.941268, -0.007573,
		-0.789730, -0.287587, 0.541868,
		37.278454, 30.967674, 43.046841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568069, 30.479792, 42.418182>,  <37.831264, 31.168983, 42.667534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568069, 30.479792, 42.418182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255718, 30.642117, 42.608150>,  <37.068310, 30.739511, 42.722130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255718, 30.642117, 42.608150>,  <37.568069, 30.479792, 42.418182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255718, 30.642117, 42.608150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594812, -0.250728, -0.763763,
		-0.190863, -0.878895, 0.437166,
		-0.780878, 0.405806, 0.474923,
		37.021454, 30.763861, 42.750626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020390, 30.105927, 42.173630>,  <37.568069, 30.479792, 42.418182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020390, 30.105927, 42.173630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812614, 30.394501, 42.356812>,  <36.687950, 30.567646, 42.466721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812614, 30.394501, 42.356812>,  <37.020390, 30.105927, 42.173630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812614, 30.394501, 42.356812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772003, -0.166443, -0.613440,
		-0.366334, -0.672181, 0.643406,
		-0.519433, 0.721435, 0.457952,
		36.656784, 30.610931, 42.494198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341148, 29.835901, 42.367771>,  <37.020390, 30.105927, 42.173630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341148, 29.835901, 42.367771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363785, 30.230257, 42.304756>,  <36.377365, 30.466871, 42.266945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363785, 30.230257, 42.304756>,  <36.341148, 29.835901, 42.367771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363785, 30.230257, 42.304756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552258, -0.100543, -0.827588,
		-0.831750, 0.133837, 0.538776,
		0.056591, 0.985890, -0.157539,
		36.380764, 30.526024, 42.257496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720467, 29.946888, 42.110352>,  <36.341148, 29.835901, 42.367771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720467, 29.946888, 42.110352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887405, 30.295841, 42.008553>,  <35.987568, 30.505213, 41.947472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887405, 30.295841, 42.008553>,  <35.720467, 29.946888, 42.110352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887405, 30.295841, 42.008553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546457, 0.017156, -0.837311,
		-0.726089, 0.488525, 0.483879,
		0.417349, 0.872381, -0.254501,
		36.012611, 30.557556, 41.932201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195660, 30.306391, 41.764172>,  <35.720467, 29.946888, 42.110352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195660, 30.306391, 41.764172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.535023, 30.482845, 41.647144>,  <35.738640, 30.588718, 41.576927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.535023, 30.482845, 41.647144>,  <35.195660, 30.306391, 41.764172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535023, 30.482845, 41.647144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373678, 0.107655, -0.921290,
		-0.374919, 0.890959, 0.256179,
		0.848411, 0.441138, -0.292569,
		35.789547, 30.615187, 41.559372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044891, 30.972250, 41.477863>,  <35.195660, 30.306391, 41.764172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044891, 30.972250, 41.477863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400532, 30.879635, 41.319931>,  <35.613914, 30.824066, 41.225174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400532, 30.879635, 41.319931>,  <35.044891, 30.972250, 41.477863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400532, 30.879635, 41.319931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349921, 0.212219, -0.912424,
		0.295049, 0.949397, 0.107664,
		0.889101, -0.231536, -0.394829,
		35.667263, 30.810173, 41.201481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249676, 31.558777, 41.083778>,  <35.044891, 30.972250, 41.477863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249676, 31.558777, 41.083778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497101, 31.273354, 40.952190>,  <35.645554, 31.102100, 40.873238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497101, 31.273354, 40.952190>,  <35.249676, 31.558777, 41.083778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497101, 31.273354, 40.952190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279813, 0.191183, -0.940826,
		0.734227, 0.674006, -0.081405,
		0.618559, -0.713558, -0.328968,
		35.682667, 31.059286, 40.853500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735664, 31.948217, 40.562424>,  <35.249676, 31.558777, 41.083778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735664, 31.948217, 40.562424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705387, 31.560957, 40.466965>,  <35.687222, 31.328600, 40.409691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705387, 31.560957, 40.466965>,  <35.735664, 31.948217, 40.562424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705387, 31.560957, 40.466965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148938, 0.247627, -0.957339,
		0.985945, -0.036922, -0.162939,
		-0.075695, -0.968152, -0.238648,
		35.682678, 31.270512, 40.395370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154503, 31.878866, 40.058060>,  <35.735664, 31.948217, 40.562424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154503, 31.878866, 40.058060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907196, 31.568144, 40.010193>,  <35.758812, 31.381710, 39.981472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907196, 31.568144, 40.010193>,  <36.154503, 31.878866, 40.058060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907196, 31.568144, 40.010193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085093, 0.217512, -0.972341,
		0.781348, -0.590984, -0.200581,
		-0.618267, -0.776805, -0.119664,
		35.721714, 31.335102, 39.974293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392635, 31.597414, 39.452507>,  <36.154503, 31.878866, 40.058060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392635, 31.597414, 39.452507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.030067, 31.433908, 39.495049>,  <35.812527, 31.335806, 39.520573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.030067, 31.433908, 39.495049>,  <36.392635, 31.597414, 39.452507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030067, 31.433908, 39.495049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245115, 0.304020, -0.920593,
		0.343978, -0.860512, -0.375765,
		-0.906420, -0.408769, 0.106348,
		35.758141, 31.311279, 39.526955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281048, 31.228460, 38.882267>,  <36.392635, 31.597414, 39.452507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281048, 31.228460, 38.882267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910416, 31.281878, 39.022900>,  <35.688034, 31.313927, 39.107281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910416, 31.281878, 39.022900>,  <36.281048, 31.228460, 38.882267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910416, 31.281878, 39.022900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291534, 0.335541, -0.895779,
		-0.237594, -0.932512, -0.271975,
		-0.926583, 0.133542, 0.351582,
		35.632442, 31.321939, 39.128376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805817, 30.758101, 38.512890>,  <36.281048, 31.228460, 38.882267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805817, 30.758101, 38.512890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594742, 31.070171, 38.647274>,  <35.468098, 31.257414, 38.727905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594742, 31.070171, 38.647274>,  <35.805817, 30.758101, 38.512890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594742, 31.070171, 38.647274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273890, 0.218110, -0.936703,
		-0.804068, -0.586306, 0.098588,
		-0.527691, 0.780175, 0.335959,
		35.436436, 31.304224, 38.748062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108612, 30.714882, 38.186760>,  <35.805817, 30.758101, 38.512890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108612, 30.714882, 38.186760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114162, 31.087948, 38.330952>,  <35.117493, 31.311787, 38.417465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114162, 31.087948, 38.330952>,  <35.108612, 30.714882, 38.186760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114162, 31.087948, 38.330952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537340, 0.310984, -0.783935,
		-0.843252, -0.182824, 0.505472,
		0.013872, 0.932665, 0.360476,
		35.118324, 31.367748, 38.439095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405670, 30.862400, 38.091351>,  <35.108612, 30.714882, 38.186760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405670, 30.862400, 38.091351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566063, 31.222853, 38.157291>,  <34.662300, 31.439123, 38.196857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566063, 31.222853, 38.157291>,  <34.405670, 30.862400, 38.091351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566063, 31.222853, 38.157291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550868, 0.380972, -0.742567,
		-0.731953, 0.206945, 0.649167,
		0.400985, 0.901130, 0.164855,
		34.686359, 31.493191, 38.206749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873085, 31.386396, 38.297623>,  <34.405670, 30.862400, 38.091351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873085, 31.386396, 38.297623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198433, 31.544790, 38.127155>,  <34.393642, 31.639826, 38.024876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198433, 31.544790, 38.127155>,  <33.873085, 31.386396, 38.297623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198433, 31.544790, 38.127155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547832, 0.274906, -0.790131,
		-0.195723, 0.876141, 0.440534,
		0.813371, 0.395985, -0.426172,
		34.442444, 31.663586, 37.999302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641533, 31.965937, 38.011497>,  <33.873085, 31.386396, 38.297623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641533, 31.965937, 38.011497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996269, 31.930309, 37.830132>,  <34.209110, 31.908934, 37.721313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996269, 31.930309, 37.830132>,  <33.641533, 31.965937, 38.011497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996269, 31.930309, 37.830132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423237, 0.237229, -0.874410,
		0.185444, 0.967362, 0.172687,
		0.886838, -0.089067, -0.453416,
		34.262321, 31.903589, 37.694107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699860, 32.587543, 37.728767>,  <33.641533, 31.965937, 38.011497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699860, 32.587543, 37.728767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938705, 32.335918, 37.529678>,  <34.082012, 32.184944, 37.410225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938705, 32.335918, 37.529678>,  <33.699860, 32.587543, 37.728767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938705, 32.335918, 37.529678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276731, 0.420841, -0.863894,
		0.752908, 0.653581, 0.077209,
		0.597117, -0.629067, -0.497721,
		34.117840, 32.147198, 37.380363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079430, 32.963215, 37.221539>,  <33.699860, 32.587543, 37.728767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079430, 32.963215, 37.221539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121643, 32.595200, 37.070595>,  <34.146969, 32.374390, 36.980030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121643, 32.595200, 37.070595>,  <34.079430, 32.963215, 37.221539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121643, 32.595200, 37.070595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152710, 0.359985, -0.920376,
		0.982621, 0.154754, -0.102509,
		0.105530, -0.920034, -0.377361,
		34.153301, 32.319191, 36.957386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510921, 33.085697, 36.709309>,  <34.079430, 32.963215, 37.221539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510921, 33.085697, 36.709309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354404, 32.729107, 36.617947>,  <34.260494, 32.515152, 36.563129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354404, 32.729107, 36.617947>,  <34.510921, 33.085697, 36.709309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354404, 32.729107, 36.617947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263339, 0.346280, -0.900412,
		0.881783, -0.292178, -0.370256,
		-0.391294, -0.891472, -0.228402,
		34.237015, 32.461666, 36.549427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709915, 32.857681, 36.000275>,  <34.510921, 33.085697, 36.709309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709915, 32.857681, 36.000275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373730, 32.644638, 36.040192>,  <34.172020, 32.516811, 36.064144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373730, 32.644638, 36.040192>,  <34.709915, 32.857681, 36.000275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373730, 32.644638, 36.040192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318314, 0.336224, -0.886357,
		0.438526, -0.776713, -0.452119,
		-0.840458, -0.532607, 0.099796,
		34.121593, 32.484856, 36.070129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946583, 32.260944, 35.665291>,  <34.709915, 32.857681, 36.000275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946583, 32.260944, 35.665291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048183, 32.055950, 35.337181>,  <35.109142, 31.932955, 35.140316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048183, 32.055950, 35.337181>,  <34.946583, 32.260944, 35.665291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048183, 32.055950, 35.337181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566500, -0.608566, 0.555632,
		-0.783941, -0.605813, 0.135746,
		0.253998, -0.512482, -0.820272,
		35.124382, 31.902206, 35.091099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820847, 31.486679, 35.740398>,  <34.946583, 32.260944, 35.665291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820847, 31.486679, 35.740398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103004, 31.525669, 35.459568>,  <35.272301, 31.549063, 35.291069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103004, 31.525669, 35.459568>,  <34.820847, 31.486679, 35.740398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103004, 31.525669, 35.459568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652651, -0.475724, 0.589689,
		-0.276516, -0.874177, -0.399190,
		0.705397, 0.097473, -0.702078,
		35.314625, 31.554911, 35.248943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120907, 30.857330, 35.625179>,  <34.820847, 31.486679, 35.740398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120907, 30.857330, 35.625179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394577, 31.123182, 35.505066>,  <35.558781, 31.282694, 35.432999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394577, 31.123182, 35.505066>,  <35.120907, 30.857330, 35.625179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394577, 31.123182, 35.505066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713791, -0.525709, 0.462745,
		0.149689, -0.530942, -0.834083,
		0.684176, 0.664628, -0.300288,
		35.599831, 31.322571, 35.414978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655369, 30.430851, 35.403271>,  <35.120907, 30.857330, 35.625179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655369, 30.430851, 35.403271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831146, 30.786293, 35.455830>,  <35.936615, 30.999559, 35.487366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831146, 30.786293, 35.455830>,  <35.655369, 30.430851, 35.403271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831146, 30.786293, 35.455830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725072, -0.437247, 0.532058,
		0.530245, -0.138537, -0.836450,
		0.439445, 0.888607, 0.131398,
		35.962978, 31.052876, 35.495251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369118, 30.280575, 35.475243>,  <35.655369, 30.430851, 35.403271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369118, 30.280575, 35.475243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353481, 30.664248, 35.587269>,  <36.344097, 30.894451, 35.654484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353481, 30.664248, 35.587269>,  <36.369118, 30.280575, 35.475243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353481, 30.664248, 35.587269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800856, -0.137542, 0.582848,
		0.597580, 0.247080, -0.762791,
		-0.039094, 0.959184, 0.280067,
		36.341751, 30.952003, 35.671288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109818, 30.489164, 35.477493>,  <36.369118, 30.280575, 35.475243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109818, 30.489164, 35.477493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912434, 30.744438, 35.713875>,  <36.794003, 30.897602, 35.855701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912434, 30.744438, 35.713875>,  <37.109818, 30.489164, 35.477493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912434, 30.744438, 35.713875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706301, -0.102487, 0.700454,
		0.507582, 0.763033, -0.400176,
		-0.493457, 0.638182, 0.590951,
		36.764397, 30.935892, 35.891159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547153, 30.946768, 35.681957>,  <37.109818, 30.489164, 35.477493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547153, 30.946768, 35.681957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.293564, 30.996185, 35.987324>,  <37.141411, 31.025837, 36.170544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.293564, 30.996185, 35.987324>,  <37.547153, 30.946768, 35.681957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293564, 30.996185, 35.987324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772942, 0.133363, 0.620302,
		-0.025177, 0.983337, -0.180042,
		-0.633977, 0.123545, 0.763420,
		37.103371, 31.033249, 36.216351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911942, 31.337326, 36.144199>,  <37.547153, 30.946768, 35.681957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911942, 31.337326, 36.144199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628819, 31.176535, 36.376549>,  <37.458942, 31.080059, 36.515961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628819, 31.176535, 36.376549>,  <37.911942, 31.337326, 36.144199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628819, 31.176535, 36.376549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594166, 0.105965, 0.797332,
		-0.382062, 0.909497, 0.163839,
		-0.707810, -0.401978, 0.580877,
		37.416477, 31.055941, 36.550812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806316, 31.808104, 36.764900>,  <37.911942, 31.337326, 36.144199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806316, 31.808104, 36.764900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654888, 31.453955, 36.872822>,  <37.564030, 31.241465, 36.937576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654888, 31.453955, 36.872822>,  <37.806316, 31.808104, 36.764900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654888, 31.453955, 36.872822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407021, 0.102557, 0.907643,
		-0.831274, 0.453425, 0.321541,
		-0.378572, -0.885374, 0.269807,
		37.541317, 31.188343, 36.953762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881863, 31.804037, 37.545040>,  <37.806316, 31.808104, 36.764900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881863, 31.804037, 37.545040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747131, 31.430834, 37.494373>,  <37.666294, 31.206911, 37.463974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747131, 31.430834, 37.494373>,  <37.881863, 31.804037, 37.545040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747131, 31.430834, 37.494373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484255, -0.287025, 0.826507,
		-0.807494, 0.217051, 0.548491,
		-0.336825, -0.933009, -0.126663,
		37.646084, 31.150930, 37.456375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397030, 31.622906, 38.017357>,  <37.881863, 31.804037, 37.545040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397030, 31.622906, 38.017357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600918, 31.306324, 37.882427>,  <37.723251, 31.116375, 37.801472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600918, 31.306324, 37.882427>,  <37.397030, 31.622906, 38.017357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600918, 31.306324, 37.882427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252969, -0.236874, 0.938029,
		-0.822310, -0.563464, 0.079474,
		0.509719, -0.791454, -0.337322,
		37.753834, 31.068888, 37.781231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175392, 31.095205, 38.455112>,  <37.397030, 31.622906, 38.017357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175392, 31.095205, 38.455112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522453, 30.969202, 38.301258>,  <37.730690, 30.893600, 38.208946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522453, 30.969202, 38.301258>,  <37.175392, 31.095205, 38.455112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522453, 30.969202, 38.301258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330662, -0.212087, 0.919609,
		-0.371261, -0.925088, -0.079857,
		0.867656, -0.315010, -0.384631,
		37.782749, 30.874699, 38.185867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292370, 30.507542, 38.736572>,  <37.175392, 31.095205, 38.455112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292370, 30.507542, 38.736572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.662209, 30.615505, 38.629036>,  <37.884109, 30.680283, 38.564514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.662209, 30.615505, 38.629036>,  <37.292370, 30.507542, 38.736572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662209, 30.615505, 38.629036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344922, -0.293518, 0.891558,
		0.161727, -0.917059, -0.364482,
		0.924593, 0.269907, -0.268844,
		37.939587, 30.696478, 38.548382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639122, 30.163448, 39.133427>,  <37.292370, 30.507542, 38.736572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639122, 30.163448, 39.133427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959946, 30.382589, 39.038296>,  <38.152439, 30.514074, 38.981216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959946, 30.382589, 39.038296>,  <37.639122, 30.163448, 39.133427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959946, 30.382589, 39.038296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453275, -0.299070, 0.839702,
		0.388907, -0.781289, -0.488199,
		0.802056, 0.547854, -0.237828,
		38.200562, 30.546946, 38.966946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188694, 29.727127, 39.452782>,  <37.639122, 30.163448, 39.133427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188694, 29.727127, 39.452782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332417, 30.094759, 39.388054>,  <38.418652, 30.315338, 39.349216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332417, 30.094759, 39.388054>,  <38.188694, 29.727127, 39.452782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332417, 30.094759, 39.388054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474226, -0.030478, 0.879875,
		0.803746, -0.392886, -0.446803,
		0.359309, 0.919082, -0.161820,
		38.440208, 30.370483, 39.339508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896873, 29.741285, 39.506718>,  <38.188694, 29.727127, 39.452782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896873, 29.741285, 39.506718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810421, 30.125824, 39.574951>,  <38.758549, 30.356548, 39.615891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810421, 30.125824, 39.574951>,  <38.896873, 29.741285, 39.506718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810421, 30.125824, 39.574951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610177, -0.003400, 0.792258,
		0.762216, 0.275315, -0.585858,
		-0.216128, 0.961348, 0.170582,
		38.745583, 30.414228, 39.626125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559254, 30.052845, 39.635269>,  <38.896873, 29.741285, 39.506718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559254, 30.052845, 39.635269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270653, 30.281158, 39.792057>,  <39.097492, 30.418146, 39.886127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270653, 30.281158, 39.792057>,  <39.559254, 30.052845, 39.635269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270653, 30.281158, 39.792057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507551, 0.050918, 0.860116,
		0.470982, 0.819520, -0.326440,
		-0.721504, 0.570784, 0.391967,
		39.054203, 30.452394, 39.909645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833809, 30.585073, 39.978695>,  <39.559254, 30.052845, 39.635269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833809, 30.585073, 39.978695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471371, 30.573601, 40.147537>,  <39.253910, 30.566717, 40.248844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471371, 30.573601, 40.147537>,  <39.833809, 30.585073, 39.978695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471371, 30.573601, 40.147537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416377, 0.116485, 0.901699,
		-0.075030, 0.992778, -0.093604,
		-0.906091, -0.028680, 0.422110,
		39.199543, 30.564997, 40.274170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926109, 30.970528, 40.557674>,  <39.833809, 30.585073, 39.978695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926109, 30.970528, 40.557674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568382, 30.811951, 40.640656>,  <39.353748, 30.716805, 40.690445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568382, 30.811951, 40.640656>,  <39.926109, 30.970528, 40.557674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568382, 30.811951, 40.640656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189540, 0.084332, 0.978245,
		-0.405311, 0.914179, -0.000278,
		-0.894314, -0.396440, 0.207454,
		39.300087, 30.693018, 40.702892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688843, 31.332037, 41.100094>,  <39.926109, 30.970528, 40.557674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.688843, 31.332037, 41.100094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.474140, 30.996128, 41.132767>,  <39.345318, 30.794582, 41.152370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.474140, 30.996128, 41.132767>,  <39.688843, 31.332037, 41.100094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474140, 30.996128, 41.132767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100825, 0.032280, 0.994380,
		-0.837690, 0.541978, 0.067343,
		-0.536759, -0.839772, 0.081686,
		39.313114, 30.744196, 41.157272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322529, 31.347387, 41.773224>,  <39.688843, 31.332037, 41.100094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322529, 31.347387, 41.773224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.342823, 30.964975, 41.657684>,  <39.355000, 30.735529, 41.588360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.342823, 30.964975, 41.657684>,  <39.322529, 31.347387, 41.773224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342823, 30.964975, 41.657684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057711, -0.285935, 0.956510,
		-0.997043, -0.065201, 0.040666,
		0.050737, -0.956028, -0.288852,
		39.358044, 30.678167, 41.571030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814751, 31.006546, 42.070251>,  <39.322529, 31.347387, 41.773224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814751, 31.006546, 42.070251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.109180, 30.747877, 41.990242>,  <39.285839, 30.592676, 41.942238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.109180, 30.747877, 41.990242>,  <38.814751, 31.006546, 42.070251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109180, 30.747877, 41.990242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152182, -0.129839, 0.979787,
		-0.659571, -0.751637, 0.002840,
		0.736075, -0.646671, -0.200024,
		39.330002, 30.553875, 41.930233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744991, 30.455908, 42.565235>,  <38.814751, 31.006546, 42.070251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744991, 30.455908, 42.565235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.128918, 30.433884, 42.455166>,  <39.359272, 30.420670, 42.389126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.128918, 30.433884, 42.455166>,  <38.744991, 30.455908, 42.565235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128918, 30.433884, 42.455166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273418, -0.037350, 0.961170,
		-0.063200, -0.997784, -0.020794,
		0.959817, -0.055060, -0.275172,
		39.416862, 30.417366, 42.372616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107880, 29.830498, 42.949661>,  <38.744991, 30.455908, 42.565235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107880, 29.830498, 42.949661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.392155, 30.084391, 42.828308>,  <39.562717, 30.236727, 42.755497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.392155, 30.084391, 42.828308>,  <39.107880, 29.830498, 42.949661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392155, 30.084391, 42.828308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361044, 0.041047, 0.931645,
		0.603800, -0.771639, -0.199995,
		0.710685, 0.634734, -0.303380,
		39.605362, 30.274811, 42.737293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876194, 29.550753, 43.135578>,  <39.107880, 29.830498, 42.949661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876194, 29.550753, 43.135578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873604, 29.949383, 43.102596>,  <39.872051, 30.188560, 43.082806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873604, 29.949383, 43.102596>,  <39.876194, 29.550753, 43.135578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873604, 29.949383, 43.102596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257329, 0.081344, 0.962894,
		0.966302, -0.014982, -0.256975,
		-0.006477, 0.996573, -0.082458,
		39.871662, 30.248354, 43.077858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527699, 29.735731, 43.319904>,  <39.876194, 29.550753, 43.135578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527699, 29.735731, 43.319904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.290428, 30.054514, 43.365517>,  <40.148067, 30.245783, 43.392883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.290428, 30.054514, 43.365517>,  <40.527699, 29.735731, 43.319904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290428, 30.054514, 43.365517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479134, 0.235637, 0.845521,
		0.646972, 0.556181, -0.521623,
		-0.593176, 0.796956, 0.114034,
		40.112476, 30.293600, 43.399727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849491, 30.131683, 43.713226>,  <40.527699, 29.735731, 43.319904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.849491, 30.131683, 43.713226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525459, 30.362450, 43.755074>,  <40.331039, 30.500910, 43.780182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525459, 30.362450, 43.755074>,  <40.849491, 30.131683, 43.713226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525459, 30.362450, 43.755074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398259, 0.410456, 0.820314,
		0.430310, 0.706183, -0.562262,
		-0.810076, 0.576915, 0.104620,
		40.282436, 30.535524, 43.786461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081028, 30.808233, 43.682789>,  <40.849491, 30.131683, 43.713226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081028, 30.808233, 43.682789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.735481, 30.835403, 43.882435>,  <40.528152, 30.851706, 44.002224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.735481, 30.835403, 43.882435>,  <41.081028, 30.808233, 43.682789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.735481, 30.835403, 43.882435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468646, 0.471631, 0.746950,
		-0.184663, 0.879176, -0.439260,
		-0.863870, 0.067924, 0.499115,
		40.476322, 30.855780, 44.032169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115108, 31.468832, 43.994255>,  <41.081028, 30.808233, 43.682789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.115108, 31.468832, 43.994255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.844139, 31.237600, 44.176212>,  <40.681557, 31.098862, 44.285385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.844139, 31.237600, 44.176212>,  <41.115108, 31.468832, 43.994255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844139, 31.237600, 44.176212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278944, 0.370332, 0.886027,
		-0.680656, 0.727101, -0.089618,
		-0.677420, -0.578081, 0.454889,
		40.640915, 31.064177, 44.312679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145210, 31.762432, 44.638630>,  <41.115108, 31.468832, 43.994255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.145210, 31.762432, 44.638630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.936939, 31.432096, 44.725243>,  <40.811977, 31.233896, 44.777210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.936939, 31.432096, 44.725243>,  <41.145210, 31.762432, 44.638630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.936939, 31.432096, 44.725243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280460, 0.074098, 0.957001,
		-0.806372, 0.559019, 0.193034,
		-0.520679, -0.825837, 0.216533,
		40.780735, 31.184345, 44.790203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612751, 31.931051, 45.062664>,  <41.145210, 31.762432, 44.638630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612751, 31.931051, 45.062664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692604, 31.545355, 45.132389>,  <40.740517, 31.313936, 45.174225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692604, 31.545355, 45.132389>,  <40.612751, 31.931051, 45.062664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.692604, 31.545355, 45.132389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266403, 0.224600, 0.937328,
		-0.942962, -0.140681, 0.301714,
		0.199629, -0.964243, 0.174311,
		40.752491, 31.256083, 45.184681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381275, 31.763124, 45.791702>,  <40.612751, 31.931051, 45.062664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381275, 31.763124, 45.791702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639668, 31.466927, 45.717545>,  <40.794704, 31.289207, 45.673050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639668, 31.466927, 45.717545>,  <40.381275, 31.763124, 45.791702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639668, 31.466927, 45.717545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323207, 0.045297, 0.945244,
		-0.691550, -0.670534, 0.268594,
		0.645985, -0.740494, -0.185396,
		40.833462, 31.244778, 45.661926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303986, 31.248194, 46.254112>,  <40.381275, 31.763124, 45.791702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303986, 31.248194, 46.254112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676632, 31.201357, 46.116486>,  <40.900219, 31.173254, 46.033909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676632, 31.201357, 46.116486>,  <40.303986, 31.248194, 46.254112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676632, 31.201357, 46.116486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354432, 0.083212, 0.931372,
		-0.080429, -0.989628, 0.119024,
		0.931617, -0.117095, -0.344064,
		40.956116, 31.166229, 46.013268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.618031, 30.645359, 46.649391>,  <40.303986, 31.248194, 46.254112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.618031, 30.645359, 46.649391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.928627, 30.848629, 46.500355>,  <41.114983, 30.970591, 46.410931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.928627, 30.848629, 46.500355>,  <40.618031, 30.645359, 46.649391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.928627, 30.848629, 46.500355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361484, 0.125094, 0.923949,
		0.516137, -0.852121, -0.086563,
		0.776487, 0.508175, -0.372593,
		41.161572, 31.001081, 46.388577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093090, 30.461252, 47.036007>,  <40.618031, 30.645359, 46.649391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.093090, 30.461252, 47.036007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.271130, 30.770035, 46.854473>,  <41.377953, 30.955305, 46.745552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.271130, 30.770035, 46.854473>,  <41.093090, 30.461252, 47.036007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.271130, 30.770035, 46.854473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508544, 0.199245, 0.837666,
		0.737066, -0.603643, -0.303890,
		0.445103, 0.771956, -0.453836,
		41.404659, 31.001621, 46.718323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.726677, 30.347986, 47.187790>,  <41.093090, 30.461252, 47.036007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.726677, 30.347986, 47.187790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.729301, 30.737476, 47.096737>,  <41.730877, 30.971170, 47.042107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.729301, 30.737476, 47.096737>,  <41.726677, 30.347986, 47.187790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.729301, 30.737476, 47.096737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573973, 0.182736, 0.798224,
		0.818848, -0.135886, -0.557695,
		0.006557, 0.973726, -0.227628,
		41.731270, 31.029594, 47.028450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.413593, 30.544188, 47.109760>,  <41.726677, 30.347986, 47.187790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.413593, 30.544188, 47.109760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.202950, 30.870909, 47.204010>,  <42.076565, 31.066942, 47.260559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.202950, 30.870909, 47.204010>,  <42.413593, 30.544188, 47.109760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.202950, 30.870909, 47.204010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654023, 0.212199, 0.726103,
		0.543085, 0.536473, -0.645954,
		-0.526605, 0.816804, 0.235623,
		42.044968, 31.115950, 47.274696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.911900, 31.043774, 47.235966>,  <42.413593, 30.544188, 47.109760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.911900, 31.043774, 47.235966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.590931, 31.223495, 47.393059>,  <42.398350, 31.331329, 47.487316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.590931, 31.223495, 47.393059>,  <42.911900, 31.043774, 47.235966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.590931, 31.223495, 47.393059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580392, 0.434553, 0.688701,
		0.138774, 0.780569, -0.609470,
		-0.802426, 0.449305, 0.392732,
		42.350204, 31.358288, 47.510880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.667870, 31.744572, 47.510761>,  <42.911900, 31.043774, 47.235966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.667870, 31.744572, 47.510761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.881828, 32.048996, 47.657551>,  <43.010204, 32.231651, 47.745625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.881828, 32.048996, 47.657551>,  <42.667870, 31.744572, 47.510761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.881828, 32.048996, 47.657551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066697, 0.471009, -0.879604,
		-0.842279, 0.446024, 0.302703,
		0.534901, 0.761061, 0.366972,
		43.042297, 32.277313, 47.767643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.426830, 32.337242, 47.250702>,  <42.667870, 31.744572, 47.510761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.426830, 32.337242, 47.250702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.796978, 32.438335, 47.363705>,  <43.019066, 32.498993, 47.431507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.796978, 32.438335, 47.363705>,  <42.426830, 32.337242, 47.250702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.796978, 32.438335, 47.363705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121690, 0.507764, -0.852858,
		-0.358991, 0.823591, 0.439116,
		0.925374, 0.252733, 0.282506,
		43.074589, 32.514156, 47.448456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.418381, 33.026268, 47.128750>,  <42.426830, 32.337242, 47.250702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.418381, 33.026268, 47.128750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.804634, 32.922882, 47.117870>,  <43.036388, 32.860851, 47.111343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.804634, 32.922882, 47.117870>,  <42.418381, 33.026268, 47.128750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.804634, 32.922882, 47.117870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099794, 0.465402, -0.879456,
		0.239967, 0.846521, 0.475203,
		0.965638, -0.258463, -0.027203,
		43.094326, 32.845345, 47.109711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.673687, 33.590641, 47.008675>,  <42.418381, 33.026268, 47.128750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.673687, 33.590641, 47.008675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.947033, 33.323898, 46.889805>,  <43.111042, 33.163853, 46.818481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.947033, 33.323898, 46.889805>,  <42.673687, 33.590641, 47.008675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.947033, 33.323898, 46.889805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089450, 0.327501, -0.940607,
		0.724575, 0.669362, 0.164153,
		0.683367, -0.666857, -0.297173,
		43.152042, 33.123840, 46.800652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.801147, 33.893555, 46.355072>,  <42.673687, 33.590641, 47.008675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.801147, 33.893555, 46.355072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.047146, 33.578217, 46.361877>,  <43.194744, 33.389015, 46.365959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.047146, 33.578217, 46.361877>,  <42.801147, 33.893555, 46.355072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.047146, 33.578217, 46.361877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272974, 0.192608, -0.942543,
		0.739774, 0.584304, 0.333652,
		0.614996, -0.788347, 0.017013,
		43.231644, 33.341713, 46.366982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.534763, 34.103466, 46.042278>,  <42.801147, 33.893555, 46.355072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.534763, 34.103466, 46.042278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.442387, 33.715881, 46.006996>,  <43.386959, 33.483330, 45.985828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.442387, 33.715881, 46.006996>,  <43.534763, 34.103466, 46.042278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.442387, 33.715881, 46.006996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019555, 0.086017, -0.996102,
		0.972771, -0.231765, -0.000916,
		-0.230940, -0.968961, -0.088207,
		43.373104, 33.425194, 45.980534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.814953, 33.917976, 45.531303>,  <43.534763, 34.103466, 46.042278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.814953, 33.917976, 45.531303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.566402, 33.604630, 45.537445>,  <43.417274, 33.416622, 45.541130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.566402, 33.604630, 45.537445>,  <43.814953, 33.917976, 45.531303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.566402, 33.604630, 45.537445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059858, 0.027917, -0.997816,
		0.781225, -0.620936, -0.064238,
		-0.621373, -0.783364, 0.015358,
		43.379990, 33.369621, 45.542053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.051674, 33.456211, 45.017975>,  <43.814953, 33.917976, 45.531303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.051674, 33.456211, 45.017975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.666595, 33.365704, 45.077320>,  <43.435547, 33.311398, 45.112926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.666595, 33.365704, 45.077320>,  <44.051674, 33.456211, 45.017975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.666595, 33.365704, 45.077320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165690, 0.059499, -0.984381,
		0.213909, -0.972246, -0.094771,
		-0.962699, -0.226270, 0.148364,
		43.377785, 33.297821, 45.121830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.895958, 32.992558, 44.496532>,  <44.051674, 33.456211, 45.017975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.895958, 32.992558, 44.496532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.515152, 33.071529, 44.590076>,  <43.286671, 33.118912, 44.646202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.515152, 33.071529, 44.590076>,  <43.895958, 32.992558, 44.496532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.515152, 33.071529, 44.590076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272828, -0.201178, -0.940794,
		-0.138690, -0.959453, 0.245387,
		-0.952014, 0.197427, 0.233864,
		43.229549, 33.130760, 44.660236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.559666, 32.511181, 44.155228>,  <43.895958, 32.992558, 44.496532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.559666, 32.511181, 44.155228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.305492, 32.812458, 44.223263>,  <43.152988, 32.993225, 44.264084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.305492, 32.812458, 44.223263>,  <43.559666, 32.511181, 44.155228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.305492, 32.812458, 44.223263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298856, -0.036793, -0.953589,
		-0.711976, -0.656773, 0.248475,
		-0.635433, 0.753191, 0.170084,
		43.114861, 33.038414, 44.274288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.823093, 32.318356, 43.968895>,  <43.559666, 32.511181, 44.155228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.823093, 32.318356, 43.968895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.838657, 32.717812, 43.954975>,  <42.847996, 32.957485, 43.946621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.838657, 32.717812, 43.954975>,  <42.823093, 32.318356, 43.968895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.838657, 32.717812, 43.954975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572128, -0.006290, -0.820140,
		-0.819241, 0.051824, 0.571103,
		0.038910, 0.998636, -0.034803,
		42.850330, 33.017403, 43.944534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.069103, 32.582596, 43.789043>,  <42.823093, 32.318356, 43.968895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.069103, 32.582596, 43.789043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.314739, 32.884518, 43.696808>,  <42.462120, 33.065670, 43.641464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.314739, 32.884518, 43.696808>,  <42.069103, 32.582596, 43.789043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.314739, 32.884518, 43.696808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581239, 0.234864, -0.779102,
		-0.533911, 0.612464, 0.582947,
		0.614085, 0.754802, -0.230592,
		42.498966, 33.110958, 43.627632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.639145, 33.198452, 43.663933>,  <42.069103, 32.582596, 43.789043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.639145, 33.198452, 43.663933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.980892, 33.251621, 43.462982>,  <42.185940, 33.283524, 43.342411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.980892, 33.251621, 43.462982>,  <41.639145, 33.198452, 43.663933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.980892, 33.251621, 43.462982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519606, 0.203601, -0.829793,
		-0.008013, 0.969989, 0.243018,
		0.854369, 0.132922, -0.502380,
		42.237202, 33.291496, 43.312267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483639, 33.659454, 43.256256>,  <41.639145, 33.198452, 43.663933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.483639, 33.659454, 43.256256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.831692, 33.576866, 43.077263>,  <42.040524, 33.527313, 42.969868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.831692, 33.576866, 43.077263>,  <41.483639, 33.659454, 43.256256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.831692, 33.576866, 43.077263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454283, 0.015966, -0.890714,
		0.191052, 0.978322, -0.079905,
		0.870130, -0.206472, -0.447485,
		42.092731, 33.514923, 42.943016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.595261, 34.190983, 42.750511>,  <41.483639, 33.659454, 43.256256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.595261, 34.190983, 42.750511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.798996, 33.860237, 42.655117>,  <41.921238, 33.661789, 42.597881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.798996, 33.860237, 42.655117>,  <41.595261, 34.190983, 42.750511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.798996, 33.860237, 42.655117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340365, 0.060971, -0.938315,
		0.790399, 0.559088, -0.250381,
		0.509334, -0.826864, -0.238485,
		41.951797, 33.612179, 42.583572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914242, 34.330101, 42.127026>,  <41.595261, 34.190983, 42.750511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.914242, 34.330101, 42.127026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.947845, 33.931767, 42.141216>,  <41.968010, 33.692768, 42.149731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.947845, 33.931767, 42.141216>,  <41.914242, 34.330101, 42.127026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.947845, 33.931767, 42.141216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315975, -0.060385, -0.946844,
		0.945041, 0.068337, -0.319732,
		0.084011, -0.995833, 0.035474,
		41.973049, 33.633015, 42.151859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.294323, 34.073353, 41.463276>,  <41.914242, 34.330101, 42.127026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.294323, 34.073353, 41.463276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060196, 33.785057, 41.611835>,  <41.919720, 33.612080, 41.700970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060196, 33.785057, 41.611835>,  <42.294323, 34.073353, 41.463276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.060196, 33.785057, 41.611835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328545, -0.207940, -0.921314,
		0.741255, -0.661285, -0.115083,
		-0.585320, -0.720738, 0.371398,
		41.884602, 33.568836, 41.723255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.066322, 33.827557, 40.870117>,  <42.294323, 34.073353, 41.463276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.066322, 33.827557, 40.870117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.836765, 33.610481, 41.115437>,  <41.699032, 33.480236, 41.262627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.836765, 33.610481, 41.115437>,  <42.066322, 33.827557, 40.870117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.836765, 33.610481, 41.115437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464486, -0.401077, -0.789551,
		0.674462, -0.737985, -0.021897,
		-0.573894, -0.542693, 0.613294,
		41.664597, 33.447674, 41.299423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.078030, 33.155304, 40.727859>,  <42.066322, 33.827557, 40.870117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.078030, 33.155304, 40.727859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.733353, 33.185135, 40.928627>,  <41.526546, 33.203033, 41.049088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.733353, 33.185135, 40.928627>,  <42.078030, 33.155304, 40.727859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.733353, 33.185135, 40.928627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490811, -0.373593, -0.787104,
		0.128816, -0.924590, 0.358525,
		-0.861691, 0.074577, 0.501924,
		41.474846, 33.207508, 41.079205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763256, 32.571472, 40.591488>,  <42.078030, 33.155304, 40.727859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.763256, 32.571472, 40.591488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.451855, 32.791100, 40.713120>,  <41.265015, 32.922874, 40.786098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.451855, 32.791100, 40.713120>,  <41.763256, 32.571472, 40.591488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.451855, 32.791100, 40.713120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535255, -0.327777, -0.778502,
		-0.327777, -0.768825, 0.549064,
		0.778502, -0.549064, -0.304079,
		41.218304, 32.955818, 40.804344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.129574, 32.108707, 40.594784>,  <41.763256, 32.571472, 40.591488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.129574, 32.108707, 40.594784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.010742, 32.490646, 40.593933>,  <40.939445, 32.719810, 40.593422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.010742, 32.490646, 40.593933>,  <41.129574, 32.108707, 40.594784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.010742, 32.490646, 40.593933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529691, -0.166650, -0.831658,
		-0.794464, -0.245942, 0.555284,
		-0.297077, 0.954851, -0.002124,
		40.921619, 32.777103, 40.593296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487225, 32.036186, 40.586910>,  <41.129574, 32.108707, 40.594784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487225, 32.036186, 40.586910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.523014, 32.411697, 40.453827>,  <40.544487, 32.637005, 40.373978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.523014, 32.411697, 40.453827>,  <40.487225, 32.036186, 40.586910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.523014, 32.411697, 40.453827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655192, -0.196115, -0.729563,
		-0.750145, 0.283268, 0.597530,
		0.089478, 0.938775, -0.332710,
		40.549858, 32.693329, 40.354015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851498, 32.304779, 40.428360>,  <40.487225, 32.036186, 40.586910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851498, 32.304779, 40.428360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083241, 32.547161, 40.210312>,  <40.222286, 32.692593, 40.079483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083241, 32.547161, 40.210312>,  <39.851498, 32.304779, 40.428360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083241, 32.547161, 40.210312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454462, -0.315035, -0.833197,
		-0.676615, 0.730458, 0.092866,
		0.579359, 0.605958, -0.545122,
		40.257050, 32.728947, 40.046776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399673, 32.572399, 39.871227>,  <39.851498, 32.304779, 40.428360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399673, 32.572399, 39.871227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754894, 32.668320, 39.714333>,  <39.968029, 32.725872, 39.620193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754894, 32.668320, 39.714333>,  <39.399673, 32.572399, 39.871227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754894, 32.668320, 39.714333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365459, -0.149397, -0.918760,
		-0.278923, 0.959257, -0.045033,
		0.888055, 0.239806, -0.392239,
		40.021309, 32.740261, 39.596661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250759, 33.114349, 39.287548>,  <39.399673, 32.572399, 39.871227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250759, 33.114349, 39.287548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.615124, 32.959988, 39.229149>,  <39.833744, 32.867371, 39.194111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.615124, 32.959988, 39.229149>,  <39.250759, 33.114349, 39.287548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615124, 32.959988, 39.229149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258401, -0.257722, -0.931026,
		0.321658, 0.885810, -0.334479,
		0.910914, -0.385901, -0.145996,
		39.888397, 32.844215, 39.185349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517803, 33.343903, 38.629829>,  <39.250759, 33.114349, 39.287548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.517803, 33.343903, 38.629829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.747417, 33.022392, 38.692341>,  <39.885185, 32.829487, 38.729847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.747417, 33.022392, 38.692341>,  <39.517803, 33.343903, 38.629829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747417, 33.022392, 38.692341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077387, -0.243261, -0.966869,
		0.815165, 0.542923, -0.201843,
		0.574036, -0.803778, 0.156282,
		39.919628, 32.781258, 38.739227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.197285, 33.420532, 38.146442>,  <39.517803, 33.343903, 38.629829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.197285, 33.420532, 38.146442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.097073, 33.048412, 38.253613>,  <40.036945, 32.825142, 38.317913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.097073, 33.048412, 38.253613>,  <40.197285, 33.420532, 38.146442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097073, 33.048412, 38.253613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186238, -0.317891, -0.929656,
		0.950026, -0.183012, 0.252899,
		-0.250532, -0.930297, 0.267921,
		40.021912, 32.769321, 38.333988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752438, 33.059616, 37.987270>,  <40.197285, 33.420532, 38.146442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.752438, 33.059616, 37.987270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444660, 32.804817, 38.005951>,  <40.259995, 32.651936, 38.017159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444660, 32.804817, 38.005951>,  <40.752438, 33.059616, 37.987270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444660, 32.804817, 38.005951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101232, -0.193814, -0.975801,
		0.630638, -0.746100, 0.213615,
		-0.769447, -0.637002, 0.046697,
		40.213825, 32.613716, 38.019958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024788, 32.373260, 37.703552>,  <40.752438, 33.059616, 37.987270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.024788, 32.373260, 37.703552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.624897, 32.375549, 37.694416>,  <40.384964, 32.376923, 37.688934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.624897, 32.375549, 37.694416>,  <41.024788, 32.373260, 37.703552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624897, 32.375549, 37.694416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020463, -0.268353, -0.963103,
		-0.011639, -0.963304, 0.268161,
		-0.999723, 0.005723, -0.022836,
		40.324982, 32.377266, 37.687565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890427, 31.773476, 37.390450>,  <41.024788, 32.373260, 37.703552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.890427, 31.773476, 37.390450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.577038, 32.018101, 37.346336>,  <40.389004, 32.164875, 37.319870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.577038, 32.018101, 37.346336>,  <40.890427, 31.773476, 37.390450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.577038, 32.018101, 37.346336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009519, -0.189256, -0.981881,
		-0.621356, -0.768226, 0.154098,
		-0.783471, 0.611564, -0.110283,
		40.341995, 32.201569, 37.313251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434105, 31.363522, 36.939575>,  <40.890427, 31.773476, 37.390450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.434105, 31.363522, 36.939575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282303, 31.732780, 36.915005>,  <40.191219, 31.954336, 36.900261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282303, 31.732780, 36.915005>,  <40.434105, 31.363522, 36.939575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.282303, 31.732780, 36.915005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073265, -0.096170, -0.992665,
		-0.922282, -0.372225, 0.104132,
		-0.379509, 0.923146, -0.061425,
		40.168449, 32.009724, 36.896576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872791, 31.266243, 36.491852>,  <40.434105, 31.363522, 36.939575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872791, 31.266243, 36.491852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.971832, 31.653589, 36.504250>,  <40.031258, 31.885998, 36.511688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.971832, 31.653589, 36.504250>,  <39.872791, 31.266243, 36.491852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.971832, 31.653589, 36.504250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119206, 0.001296, -0.992869,
		-0.961501, 0.249530, -0.115115,
		0.247601, 0.968366, 0.030992,
		40.046112, 31.944099, 36.513546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434204, 31.625999, 36.017952>,  <39.872791, 31.266243, 36.491852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434204, 31.625999, 36.017952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.735268, 31.882032, 36.079666>,  <39.915905, 32.035652, 36.116695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.735268, 31.882032, 36.079666>,  <39.434204, 31.625999, 36.017952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735268, 31.882032, 36.079666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047560, 0.180862, -0.982358,
		-0.656694, 0.746715, 0.105685,
		0.752656, 0.640082, 0.154285,
		39.961063, 32.074059, 36.125950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297657, 32.169666, 35.622925>,  <39.434204, 31.625999, 36.017952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297657, 32.169666, 35.622925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.689068, 32.218613, 35.689278>,  <39.923912, 32.247978, 35.729092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.689068, 32.218613, 35.689278>,  <39.297657, 32.169666, 35.622925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689068, 32.218613, 35.689278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092093, 0.460464, -0.882888,
		-0.184416, 0.879204, 0.439306,
		0.978524, 0.122362, 0.165885,
		39.982624, 32.255322, 35.739044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560795, 32.852757, 35.380795>,  <39.297657, 32.169666, 35.622925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560795, 32.852757, 35.380795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905178, 32.649654, 35.393063>,  <40.111809, 32.527794, 35.400421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905178, 32.649654, 35.393063>,  <39.560795, 32.852757, 35.380795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905178, 32.649654, 35.393063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322738, 0.498657, -0.804476,
		0.393182, 0.702516, 0.593194,
		0.860958, -0.507752, 0.030666,
		40.163464, 32.497330, 35.402264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114918, 33.328899, 35.152969>,  <39.560795, 32.852757, 35.380795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.114918, 33.328899, 35.152969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.287998, 32.973476, 35.091988>,  <40.391846, 32.760223, 35.055397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.287998, 32.973476, 35.091988>,  <40.114918, 33.328899, 35.152969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287998, 32.973476, 35.091988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468035, 0.365935, -0.804385,
		0.770529, 0.276702, 0.574214,
		0.432699, -0.888554, -0.152457,
		40.417809, 32.706909, 35.046249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811672, 33.393837, 35.261318>,  <40.114918, 33.328899, 35.152969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811672, 33.393837, 35.261318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718330, 33.097057, 35.009907>,  <40.662327, 32.918987, 34.859058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718330, 33.097057, 35.009907>,  <40.811672, 33.393837, 35.261318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718330, 33.097057, 35.009907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389716, 0.520831, -0.759510,
		0.890880, -0.422185, 0.167612,
		-0.233356, -0.741953, -0.628530,
		40.648323, 32.874470, 34.821346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.379944, 33.374245, 34.938660>,  <40.811672, 33.393837, 35.261318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.379944, 33.374245, 34.938660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131100, 33.165817, 34.704918>,  <40.981792, 33.040760, 34.564674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131100, 33.165817, 34.704918>,  <41.379944, 33.374245, 34.938660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131100, 33.165817, 34.704918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401639, 0.428277, -0.809484,
		0.672061, -0.738287, -0.057155,
		-0.622110, -0.521067, -0.584353,
		40.944466, 33.009499, 34.529613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.731808, 33.210121, 34.356613>,  <41.379944, 33.374245, 34.938660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.731808, 33.210121, 34.356613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.354076, 33.174690, 34.229866>,  <41.127438, 33.153431, 34.153816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.354076, 33.174690, 34.229866>,  <41.731808, 33.210121, 34.356613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.354076, 33.174690, 34.229866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228384, 0.516792, -0.825086,
		0.236835, -0.851517, -0.467791,
		-0.944325, -0.088573, -0.316867,
		41.070778, 33.148117, 34.134808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.726639, 32.952641, 33.740963>,  <41.731808, 33.210121, 34.356613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.726639, 32.952641, 33.740963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.367317, 33.128384, 33.741947>,  <41.151722, 33.233829, 33.742538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.367317, 33.128384, 33.741947>,  <41.726639, 32.952641, 33.740963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.367317, 33.128384, 33.741947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244916, 0.505386, -0.827406,
		-0.364771, -0.742663, -0.561599,
		-0.898308, 0.439359, 0.002460,
		41.097824, 33.260193, 33.742683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.468418, 32.954739, 33.088539>,  <41.726639, 32.952641, 33.740963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.468418, 32.954739, 33.088539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.262718, 33.255932, 33.252762>,  <41.139297, 33.436649, 33.351295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.262718, 33.255932, 33.252762>,  <41.468418, 32.954739, 33.088539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262718, 33.255932, 33.252762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261271, 0.593495, -0.761249,
		-0.816873, -0.284209, -0.501940,
		-0.514253, 0.752986, 0.410554,
		41.108440, 33.481827, 33.375927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097645, 33.210995, 32.524231>,  <41.468418, 32.954739, 33.088539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.097645, 33.210995, 32.524231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.097221, 33.500233, 32.800529>,  <41.096966, 33.673775, 32.966309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.097221, 33.500233, 32.800529>,  <41.097645, 33.210995, 32.524231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.097221, 33.500233, 32.800529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035470, 0.690343, -0.722612,
		-0.999370, 0.023736, -0.026379,
		-0.001059, 0.723093, 0.690750,
		41.096905, 33.717159, 33.007755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.598797, 33.708572, 32.608753>,  <41.097645, 33.210995, 32.524231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.598797, 33.708572, 32.608753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.663826, 34.086536, 32.495113>,  <41.702843, 34.313316, 32.426929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.663826, 34.086536, 32.495113>,  <41.598797, 33.708572, 32.608753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.663826, 34.086536, 32.495113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972517, -0.104810, 0.207909,
		0.166679, -0.310090, -0.935982,
		0.162571, 0.944912, -0.284098,
		41.712597, 34.370010, 32.409885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039986, 33.742081, 31.997835>,  <41.598797, 33.708572, 32.608753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039986, 33.742081, 31.997835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.087158, 34.065956, 32.227791>,  <42.115459, 34.260281, 32.365765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.087158, 34.065956, 32.227791>,  <42.039986, 33.742081, 31.997835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.087158, 34.065956, 32.227791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972643, -0.210867, 0.097472,
		0.200147, 0.547666, -0.812406,
		0.117927, 0.809690, 0.574888,
		42.122536, 34.308865, 32.400257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.586163, 34.197502, 31.739820>,  <42.039986, 33.742081, 31.997835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.586163, 34.197502, 31.739820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.547047, 34.228477, 32.136696>,  <42.523575, 34.247063, 32.374821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.547047, 34.228477, 32.136696>,  <42.586163, 34.197502, 31.739820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.547047, 34.228477, 32.136696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942265, -0.313633, 0.117349,
		0.320271, 0.946382, -0.042294,
		-0.097792, 0.077435, 0.992190,
		42.517708, 34.251709, 32.434353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.056877, 34.627037, 32.019871>,  <42.586163, 34.197502, 31.739820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.056877, 34.627037, 32.019871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.941883, 34.340446, 32.274120>,  <42.872887, 34.168491, 32.426670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.941883, 34.340446, 32.274120>,  <43.056877, 34.627037, 32.019871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.941883, 34.340446, 32.274120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944120, -0.323687, 0.062157,
		0.161210, 0.617975, 0.769492,
		-0.287486, -0.716473, 0.635624,
		42.855637, 34.125504, 32.464809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.589912, 34.562645, 32.485622>,  <43.056877, 34.627037, 32.019871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.589912, 34.562645, 32.485622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.398247, 34.212513, 32.459686>,  <43.283249, 34.002434, 32.444126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.398247, 34.212513, 32.459686>,  <43.589912, 34.562645, 32.485622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.398247, 34.212513, 32.459686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839488, -0.478602, 0.257295,
		-0.256249, 0.068857, 0.964155,
		-0.479163, -0.875328, -0.064836,
		43.254498, 33.949913, 32.440235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.730904, 34.313595, 33.094372>,  <43.589912, 34.562645, 32.485622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.730904, 34.313595, 33.094372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.705673, 33.983807, 32.869419>,  <43.690536, 33.785934, 32.734447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.705673, 33.983807, 32.869419>,  <43.730904, 34.313595, 33.094372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.705673, 33.983807, 32.869419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787541, -0.387251, 0.479391,
		-0.613025, -0.412661, 0.673730,
		-0.063077, -0.824468, -0.562382,
		43.686749, 33.736465, 32.700703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.645851, 34.332314, 33.812469>,  <43.730904, 34.313595, 33.094372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.645851, 34.332314, 33.812469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.893967, 34.626251, 33.922188>,  <44.042835, 34.802616, 33.988018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.893967, 34.626251, 33.922188>,  <43.645851, 34.332314, 33.812469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.893967, 34.626251, 33.922188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773412, 0.631261, 0.057815,
		-0.130666, -0.248005, 0.959906,
		0.620290, 0.734849, 0.274294,
		44.080055, 34.846706, 34.004475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.183289, 34.773422, 34.091404>,  <43.645851, 34.332314, 33.812469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.183289, 34.773422, 34.091404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.509113, 35.004494, 34.070332>,  <43.704609, 35.143135, 34.057686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.509113, 35.004494, 34.070332>,  <43.183289, 34.773422, 34.091404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.509113, 35.004494, 34.070332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578237, 0.815851, 0.005405,
		0.046105, 0.026061, 0.998597,
		0.814565, 0.577674, -0.052684,
		43.753483, 35.177795, 34.054527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.163670, 35.295944, 34.580402>,  <43.183289, 34.773422, 34.091404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.163670, 35.295944, 34.580402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.402367, 35.426083, 34.286999>,  <43.545586, 35.504166, 34.110954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.402367, 35.426083, 34.286999>,  <43.163670, 35.295944, 34.580402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.402367, 35.426083, 34.286999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471140, 0.882023, 0.007926,
		0.649553, 0.340858, 0.679630,
		0.596747, 0.325349, -0.733513,
		43.581390, 35.523685, 34.066944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.455116, 35.935818, 34.830776>,  <43.163670, 35.295944, 34.580402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.455116, 35.935818, 34.830776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.474964, 35.946331, 34.431408>,  <43.486874, 35.952641, 34.191788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.474964, 35.946331, 34.431408>,  <43.455116, 35.935818, 34.830776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.474964, 35.946331, 34.431408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691903, 0.721827, -0.015382,
		0.720284, 0.691575, 0.054001,
		0.049617, 0.026284, -0.998422,
		43.489849, 35.954216, 34.131882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.339081, 36.619957, 34.633358>,  <43.455116, 35.935818, 34.830776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.339081, 36.619957, 34.633358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.266674, 36.452507, 34.277386>,  <43.223228, 36.352036, 34.063801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.266674, 36.452507, 34.277386>,  <43.339081, 36.619957, 34.633358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.266674, 36.452507, 34.277386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766076, 0.627466, -0.139334,
		0.616732, 0.656534, -0.434286,
		-0.181022, -0.418628, -0.889933,
		43.212368, 36.326920, 34.010406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.228130, 37.171894, 34.260822>,  <43.339081, 36.619957, 34.633358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.228130, 37.171894, 34.260822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.051559, 36.863503, 34.077198>,  <42.945618, 36.678467, 33.967022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.051559, 36.863503, 34.077198>,  <43.228130, 37.171894, 34.260822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.051559, 36.863503, 34.077198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793395, 0.574333, -0.201658,
		0.419129, 0.275203, -0.865213,
		-0.441423, -0.770977, -0.459064,
		42.919132, 36.632210, 33.939480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.963467, 37.447559, 33.612034>,  <43.228130, 37.171894, 34.260822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.963467, 37.447559, 33.612034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746681, 37.114311, 33.656178>,  <42.616608, 36.914360, 33.682663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746681, 37.114311, 33.656178>,  <42.963467, 37.447559, 33.612034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.746681, 37.114311, 33.656178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840396, 0.537710, -0.067838,
		-0.002824, -0.129511, -0.991574,
		-0.541965, -0.833124, 0.110359,
		42.584091, 36.864376, 33.689285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.382195, 37.616829, 33.178734>,  <42.963467, 37.447559, 33.612034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.382195, 37.616829, 33.178734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.271618, 37.319550, 33.422451>,  <42.205273, 37.141182, 33.568684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.271618, 37.319550, 33.422451>,  <42.382195, 37.616829, 33.178734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.271618, 37.319550, 33.422451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892235, 0.434038, 0.124614,
		-0.357070, -0.509187, -0.783090,
		-0.276438, -0.743196, 0.609297,
		42.188686, 37.096592, 33.605240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.702305, 37.472500, 32.927952>,  <42.382195, 37.616829, 33.178734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.702305, 37.472500, 32.927952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.734257, 37.348866, 33.307022>,  <41.753429, 37.274685, 33.534462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.734257, 37.348866, 33.307022>,  <41.702305, 37.472500, 32.927952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.734257, 37.348866, 33.307022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808998, 0.535325, 0.242794,
		-0.582358, -0.786060, -0.207290,
		0.079883, -0.309090, 0.947672,
		41.758221, 37.256138, 33.591324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084045, 37.169254, 33.157700>,  <41.702305, 37.472500, 32.927952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.084045, 37.169254, 33.157700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256493, 37.281628, 33.500679>,  <41.359962, 37.349052, 33.706467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256493, 37.281628, 33.500679>,  <41.084045, 37.169254, 33.157700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256493, 37.281628, 33.500679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786274, 0.583134, 0.204274,
		-0.442618, -0.762253, 0.472291,
		0.431118, 0.280935, 0.857446,
		41.385826, 37.365910, 33.757912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.593712, 37.175453, 33.652039>,  <41.084045, 37.169254, 33.157700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.593712, 37.175453, 33.652039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.876827, 37.399250, 33.824551>,  <41.046696, 37.533527, 33.928059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.876827, 37.399250, 33.824551>,  <40.593712, 37.175453, 33.652039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.876827, 37.399250, 33.824551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681287, 0.702040, 0.207334,
		-0.186771, -0.440572, 0.878073,
		0.707788, 0.559496, 0.431278,
		41.089165, 37.567101, 33.953934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267879, 37.402409, 34.284103>,  <40.593712, 37.175453, 33.652039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267879, 37.402409, 34.284103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.591534, 37.632885, 34.237976>,  <40.785725, 37.771172, 34.210300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.591534, 37.632885, 34.237976>,  <40.267879, 37.402409, 34.284103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.591534, 37.632885, 34.237976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557981, 0.814923, 0.156710,
		0.184269, -0.062455, 0.980889,
		0.809137, 0.576194, -0.115316,
		40.834274, 37.805744, 34.203381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272263, 37.880566, 34.856915>,  <40.267879, 37.402409, 34.284103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272263, 37.880566, 34.856915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516228, 38.048626, 34.588146>,  <40.662605, 38.149464, 34.426884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516228, 38.048626, 34.588146>,  <40.272263, 37.880566, 34.856915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516228, 38.048626, 34.588146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475157, 0.872454, 0.114238,
		0.634221, 0.249595, 0.731755,
		0.609910, 0.420151, -0.671925,
		40.699200, 38.174671, 34.386570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637192, 38.458282, 35.235317>,  <40.272263, 37.880566, 34.856915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.637192, 38.458282, 35.235317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669132, 38.525173, 34.842247>,  <40.688297, 38.565308, 34.606403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669132, 38.525173, 34.842247>,  <40.637192, 38.458282, 35.235317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669132, 38.525173, 34.842247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271795, 0.952126, 0.139939,
		0.959036, 0.255912, 0.121485,
		0.079857, 0.167226, -0.982679,
		40.693089, 38.575340, 34.547443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127972, 39.008743, 35.130295>,  <40.637192, 38.458282, 35.235317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127972, 39.008743, 35.130295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.894150, 39.025066, 34.806164>,  <40.753857, 39.034859, 34.611687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.894150, 39.025066, 34.806164>,  <41.127972, 39.008743, 35.130295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.894150, 39.025066, 34.806164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275919, 0.929211, 0.245837,
		0.762999, 0.367290, -0.531913,
		-0.584552, 0.040808, -0.810329,
		40.718784, 39.037308, 34.563065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.299164, 39.696384, 34.966660>,  <41.127972, 39.008743, 35.130295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.299164, 39.696384, 34.966660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980919, 39.574799, 34.757050>,  <40.789970, 39.501846, 34.631283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980919, 39.574799, 34.757050>,  <41.299164, 39.696384, 34.966660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.980919, 39.574799, 34.757050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472742, 0.852444, 0.223283,
		0.378834, 0.425376, -0.821913,
		-0.795613, -0.303965, -0.524028,
		40.742233, 39.483608, 34.599842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121742, 40.224438, 34.525036>,  <41.299164, 39.696384, 34.966660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121742, 40.224438, 34.525036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.789436, 40.004726, 34.561066>,  <40.590054, 39.872898, 34.582684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.789436, 40.004726, 34.561066>,  <41.121742, 40.224438, 34.525036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.789436, 40.004726, 34.561066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551258, 0.834328, 0.003492,
		-0.077070, -0.046753, -0.995929,
		-0.830768, -0.549283, 0.090075,
		40.540207, 39.839943, 34.588089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638721, 40.465099, 33.992252>,  <41.121742, 40.224438, 34.525036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.638721, 40.465099, 33.992252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418503, 40.288616, 34.275726>,  <40.286373, 40.182724, 34.445812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418503, 40.288616, 34.275726>,  <40.638721, 40.465099, 33.992252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418503, 40.288616, 34.275726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524705, 0.843161, 0.117317,
		-0.649298, -0.307263, -0.695703,
		-0.550542, -0.441213, 0.708685,
		40.253342, 40.156254, 34.488331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086525, 40.742039, 33.825035>,  <40.638721, 40.465099, 33.992252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086525, 40.742039, 33.825035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002747, 40.575283, 34.178833>,  <39.952480, 40.475231, 34.391113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002747, 40.575283, 34.178833>,  <40.086525, 40.742039, 33.825035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002747, 40.575283, 34.178833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572258, 0.785732, 0.234829,
		-0.792876, -0.456976, -0.403139,
		-0.209448, -0.416890, 0.884497,
		39.939911, 40.450214, 34.444183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370480, 40.742977, 33.882488>,  <40.086525, 40.742039, 33.825035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370480, 40.742977, 33.882488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521126, 40.742996, 34.253036>,  <39.611515, 40.743008, 34.475365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521126, 40.742996, 34.253036>,  <39.370480, 40.742977, 33.882488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521126, 40.742996, 34.253036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631372, 0.731778, 0.256652,
		-0.677885, -0.681543, 0.275629,
		0.376619, 0.000044, 0.926368,
		39.634113, 40.743008, 34.530949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746788, 40.727001, 34.383995>,  <39.370480, 40.742977, 33.882488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746788, 40.727001, 34.383995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062778, 40.869591, 34.583538>,  <39.252373, 40.955143, 34.703266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062778, 40.869591, 34.583538>,  <38.746788, 40.727001, 34.383995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062778, 40.869591, 34.583538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554930, 0.761693, 0.334480,
		-0.260744, -0.541064, 0.799538,
		0.789978, 0.356474, 0.498860,
		39.299770, 40.976532, 34.733196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740337, 40.653076, 35.205017>,  <38.746788, 40.727001, 34.383995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740337, 40.653076, 35.205017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.923592, 40.980907, 35.067383>,  <39.033546, 41.177608, 34.984802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.923592, 40.980907, 35.067383>,  <38.740337, 40.653076, 35.205017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923592, 40.980907, 35.067383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571541, 0.568081, 0.592135,
		0.680772, -0.074621, 0.728685,
		0.458138, 0.819582, -0.344084,
		39.061031, 41.226784, 34.964157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915657, 41.136326, 35.796173>,  <38.740337, 40.653076, 35.205017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915657, 41.136326, 35.796173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.864368, 41.350750, 35.462421>,  <38.833595, 41.479404, 35.262169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.864368, 41.350750, 35.462421>,  <38.915657, 41.136326, 35.796173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864368, 41.350750, 35.462421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590611, 0.634595, 0.498465,
		0.796705, 0.556708, 0.235238,
		-0.128218, 0.536064, -0.834383,
		38.825901, 41.511570, 35.212105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018154, 41.871178, 36.084606>,  <38.915657, 41.136326, 35.796173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018154, 41.871178, 36.084606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958801, 42.265842, 36.111378>,  <38.923191, 42.502640, 36.127441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958801, 42.265842, 36.111378>,  <39.018154, 41.871178, 36.084606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958801, 42.265842, 36.111378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931756, 0.116806, 0.343783,
		0.331380, 0.113374, -0.936661,
		-0.148383, 0.986662, 0.066930,
		38.914288, 42.561840, 36.131458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496727, 42.146233, 35.579674>,  <39.018154, 41.871178, 36.084606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496727, 42.146233, 35.579674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425495, 42.358265, 35.911289>,  <39.382755, 42.485485, 36.110256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425495, 42.358265, 35.911289>,  <39.496727, 42.146233, 35.579674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425495, 42.358265, 35.911289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967125, -0.061152, 0.246838,
		0.181542, 0.845737, -0.501769,
		-0.178076, 0.530085, 0.829035,
		39.372074, 42.517292, 36.160000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032520, 42.598587, 35.513786>,  <39.496727, 42.146233, 35.579674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.032520, 42.598587, 35.513786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.903572, 42.577545, 35.891846>,  <39.826202, 42.564919, 36.118683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.903572, 42.577545, 35.891846>,  <40.032520, 42.598587, 35.513786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903572, 42.577545, 35.891846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946226, -0.046444, 0.320154,
		0.027054, 0.997535, 0.064752,
		-0.322372, -0.052609, 0.945150,
		39.806862, 42.561764, 36.175392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407257, 43.079174, 35.946465>,  <40.032520, 42.598587, 35.513786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407257, 43.079174, 35.946465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282600, 42.772762, 36.171345>,  <40.207806, 42.588913, 36.306274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282600, 42.772762, 36.171345>,  <40.407257, 43.079174, 35.946465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.282600, 42.772762, 36.171345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901496, -0.051366, 0.429729,
		-0.300308, 0.640747, 0.706582,
		-0.311642, -0.766032, 0.562205,
		40.189106, 42.542953, 36.340008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557152, 43.315277, 36.670139>,  <40.407257, 43.079174, 35.946465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.557152, 43.315277, 36.670139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.553703, 42.919758, 36.610535>,  <40.551636, 42.682446, 36.574772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.553703, 42.919758, 36.610535>,  <40.557152, 43.315277, 36.670139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553703, 42.919758, 36.610535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880666, -0.078095, 0.467255,
		-0.473658, -0.127201, 0.871475,
		-0.008622, -0.988798, -0.149012,
		40.551117, 42.623119, 36.565830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938572, 43.177109, 37.130184>,  <40.557152, 43.315277, 36.670139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938572, 43.177109, 37.130184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.686584, 42.892231, 37.006298>,  <39.535393, 42.721306, 36.931965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.686584, 42.892231, 37.006298>,  <39.938572, 43.177109, 37.130184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686584, 42.892231, 37.006298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191455, -0.244078, 0.950669,
		-0.752655, 0.658185, 0.017408,
		-0.629964, -0.712193, -0.309719,
		39.497597, 42.678574, 36.913383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212997, 43.016224, 37.869289>,  <39.938572, 43.177109, 37.130184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212997, 43.016224, 37.869289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412735, 42.983780, 38.214329>,  <40.532578, 42.964314, 38.421352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412735, 42.983780, 38.214329>,  <40.212997, 43.016224, 37.869289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412735, 42.983780, 38.214329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281195, -0.926541, -0.249901,
		0.819503, 0.367345, -0.439856,
		0.499344, -0.081109, 0.862599,
		40.562538, 42.959446, 38.473110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.900822, 42.908188, 37.770107>,  <40.212997, 43.016224, 37.869289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.900822, 42.908188, 37.770107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.753876, 42.760902, 38.111740>,  <40.665710, 42.672531, 38.316719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.753876, 42.760902, 38.111740>,  <40.900822, 42.908188, 37.770107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.753876, 42.760902, 38.111740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298489, -0.916395, -0.266691,
		0.880881, 0.156964, 0.446555,
		-0.367360, -0.368215, 0.854087,
		40.643669, 42.650436, 38.367966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426212, 42.445065, 38.204025>,  <40.900822, 42.908188, 37.770107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.426212, 42.445065, 38.204025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.053646, 42.328171, 38.290802>,  <40.830105, 42.258034, 38.342869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.053646, 42.328171, 38.290802>,  <41.426212, 42.445065, 38.204025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.053646, 42.328171, 38.290802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249076, -0.946426, -0.205520,
		0.265378, -0.137390, 0.954305,
		-0.931416, -0.292235, 0.216941,
		40.774220, 42.240501, 38.355885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.452858, 41.815578, 38.671093>,  <41.426212, 42.445065, 38.204025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.452858, 41.815578, 38.671093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105858, 41.799774, 38.472748>,  <40.897659, 41.790291, 38.353741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105858, 41.799774, 38.472748>,  <41.452858, 41.815578, 38.671093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.105858, 41.799774, 38.472748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238892, -0.907452, -0.345631,
		-0.436319, -0.418294, 0.796653,
		-0.867500, -0.039509, -0.495866,
		40.845608, 41.787922, 38.323990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143353, 41.212749, 38.834629>,  <41.452858, 41.815578, 38.671093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.143353, 41.212749, 38.834629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997311, 41.322632, 38.478825>,  <40.909687, 41.388561, 38.265343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997311, 41.322632, 38.478825>,  <41.143353, 41.212749, 38.834629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997311, 41.322632, 38.478825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449166, -0.784932, -0.426769,
		-0.815445, -0.555354, 0.163192,
		-0.365103, 0.274707, -0.889515,
		40.887779, 41.405045, 38.211971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910763, 40.648445, 38.547684>,  <41.143353, 41.212749, 38.834629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910763, 40.648445, 38.547684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.930065, 40.872349, 38.216785>,  <40.941647, 41.006691, 38.018246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.930065, 40.872349, 38.216785>,  <40.910763, 40.648445, 38.547684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.930065, 40.872349, 38.216785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271432, -0.804395, -0.528464,
		-0.961247, -0.199039, -0.190755,
		0.048257, 0.559762, -0.827247,
		40.944542, 41.040276, 37.968613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.744396, 40.199448, 37.992760>,  <40.910763, 40.648445, 38.547684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.744396, 40.199448, 37.992760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.916294, 40.523361, 37.832977>,  <41.019432, 40.717709, 37.737106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.916294, 40.523361, 37.832977>,  <40.744396, 40.199448, 37.992760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.916294, 40.523361, 37.832977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330796, -0.552829, -0.764823,
		-0.840176, 0.196537, -0.505447,
		0.429742, 0.809786, -0.399460,
		41.045216, 40.766296, 37.713139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722958, 40.116898, 37.241322>,  <40.744396, 40.199448, 37.992760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.722958, 40.116898, 37.241322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.021061, 40.382538, 37.265182>,  <41.199921, 40.541924, 37.279499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.021061, 40.382538, 37.265182>,  <40.722958, 40.116898, 37.241322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.021061, 40.382538, 37.265182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498705, -0.495782, -0.710981,
		-0.442591, 0.559612, -0.700676,
		0.745256, 0.664104, 0.059653,
		41.244637, 40.581768, 37.283077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.016361, 40.317360, 36.502205>,  <40.722958, 40.116898, 37.241322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.016361, 40.317360, 36.502205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.280590, 40.406273, 36.789047>,  <41.439125, 40.459621, 36.961151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.280590, 40.406273, 36.789047>,  <41.016361, 40.317360, 36.502205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.280590, 40.406273, 36.789047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730233, -0.412081, -0.544930,
		0.174374, 0.883616, -0.434529,
		0.660570, 0.222287, 0.717102,
		41.478760, 40.472958, 37.004177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.556850, 40.422020, 36.099003>,  <41.016361, 40.317360, 36.502205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.556850, 40.422020, 36.099003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.703651, 40.364849, 36.466671>,  <41.791733, 40.330547, 36.687271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.703651, 40.364849, 36.466671>,  <41.556850, 40.422020, 36.099003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.703651, 40.364849, 36.466671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794136, -0.466429, -0.389606,
		0.484413, 0.872936, -0.057682,
		0.367005, -0.142923, 0.919174,
		41.813751, 40.321972, 36.742424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.118038, 40.741402, 36.090569>,  <41.556850, 40.422020, 36.099003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.118038, 40.741402, 36.090569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.146187, 40.452480, 36.365761>,  <42.163074, 40.279125, 36.530876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.146187, 40.452480, 36.365761>,  <42.118038, 40.741402, 36.090569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.146187, 40.452480, 36.365761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598935, -0.520942, -0.608191,
		0.797700, 0.454857, 0.395955,
		0.070370, -0.722305, 0.687985,
		42.167297, 40.235790, 36.572155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.787239, 40.488155, 36.034054>,  <42.118038, 40.741402, 36.090569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.787239, 40.488155, 36.034054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.660591, 40.213371, 36.295692>,  <42.584602, 40.048500, 36.452675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.660591, 40.213371, 36.295692>,  <42.787239, 40.488155, 36.034054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.660591, 40.213371, 36.295692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709459, -0.629221, -0.317411,
		0.629619, 0.363556, 0.686591,
		-0.316620, -0.686956, 0.654097,
		42.565605, 40.007286, 36.491920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.404896, 40.279583, 36.461578>,  <42.787239, 40.488155, 36.034054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.404896, 40.279583, 36.461578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.139435, 39.980366, 36.461903>,  <42.980160, 39.800835, 36.462097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.139435, 39.980366, 36.461903>,  <43.404896, 40.279583, 36.461578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.139435, 39.980366, 36.461903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696736, -0.618530, -0.363291,
		0.272260, -0.240533, 0.931675,
		-0.663652, -0.748041, 0.000813,
		42.940338, 39.755955, 36.462147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.719265, 39.662270, 36.871231>,  <43.404896, 40.279583, 36.461578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.719265, 39.662270, 36.871231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.438366, 39.520973, 36.623985>,  <43.269825, 39.436195, 36.475636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.438366, 39.520973, 36.623985>,  <43.719265, 39.662270, 36.871231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.438366, 39.520973, 36.623985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641354, -0.690791, -0.333876,
		-0.309051, -0.630895, 0.711659,
		-0.702248, -0.353241, -0.618117,
		43.227692, 39.415001, 36.438549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.689285, 38.956917, 36.956810>,  <43.719265, 39.662270, 36.871231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.689285, 38.956917, 36.956810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.481014, 38.987228, 36.616657>,  <43.356052, 39.005413, 36.412567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.481014, 38.987228, 36.616657>,  <43.689285, 38.956917, 36.956810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.481014, 38.987228, 36.616657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594125, -0.683146, -0.424649,
		-0.613113, -0.726340, 0.310682,
		-0.520680, 0.075774, -0.850382,
		43.324810, 39.009960, 36.361542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.624115, 38.332062, 36.760612>,  <43.689285, 38.956917, 36.956810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.624115, 38.332062, 36.760612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.580212, 38.529404, 36.415462>,  <43.553867, 38.647808, 36.208374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.580212, 38.529404, 36.415462>,  <43.624115, 38.332062, 36.760612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.580212, 38.529404, 36.415462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563305, -0.684373, -0.462948,
		-0.818926, -0.536877, -0.202789,
		-0.109763, 0.493352, -0.862876,
		43.547283, 38.677410, 36.156601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.426643, 37.829163, 36.237453>,  <43.624115, 38.332062, 36.760612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.426643, 37.829163, 36.237453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.588345, 38.144154, 36.051357>,  <43.685364, 38.333149, 35.939697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.588345, 38.144154, 36.051357>,  <43.426643, 37.829163, 36.237453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.588345, 38.144154, 36.051357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568112, -0.614824, -0.547029,
		-0.716818, -0.043172, -0.695923,
		0.404253, 0.787482, -0.465243,
		43.709621, 38.380398, 35.911785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.485683, 37.621265, 35.550560>,  <43.426643, 37.829163, 36.237453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.485683, 37.621265, 35.550560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.753071, 37.915379, 35.595306>,  <43.913502, 38.091846, 35.622154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.753071, 37.915379, 35.595306>,  <43.485683, 37.621265, 35.550560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.753071, 37.915379, 35.595306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690509, -0.557683, -0.460638,
		-0.276313, 0.385165, -0.880511,
		0.668467, 0.735281, 0.111865,
		43.953609, 38.135963, 35.628864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.828285, 37.629299, 34.862991>,  <43.485683, 37.621265, 35.550560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.828285, 37.629299, 34.862991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.062069, 37.840984, 35.109028>,  <44.202339, 37.967995, 35.256649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.062069, 37.840984, 35.109028>,  <43.828285, 37.629299, 34.862991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.062069, 37.840984, 35.109028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808489, -0.444198, -0.386049,
		0.068922, 0.722928, -0.687477,
		0.584462, 0.529210, 0.615095,
		44.237408, 37.999748, 35.293556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.269886, 37.926807, 34.424274>,  <43.828285, 37.629299, 34.862991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.269886, 37.926807, 34.424274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.458977, 37.946167, 34.776226>,  <44.572430, 37.957783, 34.987396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.458977, 37.946167, 34.776226>,  <44.269886, 37.926807, 34.424274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.458977, 37.946167, 34.776226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733942, -0.574246, -0.362727,
		0.487711, 0.817251, -0.306985,
		0.472724, 0.048403, 0.879880,
		44.600796, 37.960690, 35.040192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.072586, 38.062687, 34.335327>,  <44.269886, 37.926807, 34.424274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.072586, 38.062687, 34.335327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.079777, 37.923653, 34.710316>,  <45.084091, 37.840233, 34.935310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.079777, 37.923653, 34.710316>,  <45.072586, 38.062687, 34.335327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.079777, 37.923653, 34.710316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685079, -0.678652, -0.264760,
		0.728247, 0.647004, 0.225926,
		0.017976, -0.347588, 0.937475,
		45.085171, 37.819378, 34.991558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.835533, 38.051075, 34.623367>,  <45.072586, 38.062687, 34.335327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.835533, 38.051075, 34.623367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.620258, 37.765007, 34.801754>,  <45.491093, 37.593365, 34.908787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.620258, 37.765007, 34.801754>,  <45.835533, 38.051075, 34.623367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.620258, 37.765007, 34.801754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751299, -0.646886, -0.130723,
		0.381978, 0.264700, 0.885453,
		-0.538184, -0.715173, 0.445965,
		45.458801, 37.550453, 34.935543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.324459, 37.686028, 35.138046>,  <45.835533, 38.051075, 34.623367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.324459, 37.686028, 35.138046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.016590, 37.452759, 35.034119>,  <45.831867, 37.312798, 34.971760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.016590, 37.452759, 35.034119>,  <46.324459, 37.686028, 35.138046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.016590, 37.452759, 35.034119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636242, -0.734346, -0.236501,
		-0.052877, -0.347337, 0.936248,
		-0.769675, -0.583175, -0.259821,
		45.785686, 37.277805, 34.956173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.550697, 37.046059, 35.371986>,  <46.324459, 37.686028, 35.138046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.550697, 37.046059, 35.371986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.240776, 37.001507, 35.123062>,  <46.054821, 36.974773, 34.973709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.240776, 37.001507, 35.123062>,  <46.550697, 37.046059, 35.371986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.240776, 37.001507, 35.123062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457652, -0.777927, -0.430562,
		-0.436155, -0.618404, 0.653716,
		-0.774805, -0.111383, -0.622311,
		46.008335, 36.968094, 34.936367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.543781, 36.338558, 35.297321>,  <46.550697, 37.046059, 35.371986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.543781, 36.338558, 35.297321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.402653, 36.550404, 34.988770>,  <46.317978, 36.677509, 34.803638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.402653, 36.550404, 34.988770>,  <46.543781, 36.338558, 35.297321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.402653, 36.550404, 34.988770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678217, -0.423204, -0.600765,
		-0.644625, -0.735126, -0.209878,
		-0.352817, 0.529611, -0.771383,
		46.296806, 36.709286, 34.757355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.488098, 35.880493, 34.682026>,  <46.543781, 36.338558, 35.297321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.488098, 35.880493, 34.682026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.532848, 36.255875, 34.551315>,  <46.559700, 36.481106, 34.472889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.532848, 36.255875, 34.551315>,  <46.488098, 35.880493, 34.682026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.532848, 36.255875, 34.551315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582044, -0.328413, -0.743888,
		-0.805425, -0.106974, -0.582965,
		0.111876, 0.938457, -0.326775,
		46.566410, 36.537411, 34.453281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.202629, 35.508450, 34.781864>,  <46.488098, 35.880493, 34.682026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.202629, 35.508450, 34.781864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.563145, 35.337780, 34.811855>,  <47.779453, 35.235378, 34.829849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.563145, 35.337780, 34.811855>,  <47.202629, 35.508450, 34.781864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.563145, 35.337780, 34.811855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153618, 0.476609, 0.865590,
		-0.405063, -0.768629, 0.495109,
		0.901291, -0.426676, 0.074981,
		47.833530, 35.209778, 34.834351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.788738, 35.856750, 43.650959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.470650, 35.776981, 43.879993>,  <38.279797, 35.729118, 44.017414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.470650, 35.776981, 43.879993>,  <38.788738, 35.856750, 43.650959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470650, 35.776981, 43.879993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589088, 0.030562, -0.807491,
		0.143536, -0.979436, -0.141783,
		-0.795219, -0.199426, 0.572587,
		38.232082, 35.717155, 44.051769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396702, 35.511845, 43.207008>,  <38.788738, 35.856750, 43.650959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396702, 35.511845, 43.207008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.149456, 35.616425, 43.503544>,  <38.001110, 35.679173, 43.681465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.149456, 35.616425, 43.503544>,  <38.396702, 35.511845, 43.207008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149456, 35.616425, 43.503544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783927, -0.135152, -0.605964,
		-0.058236, -0.955708, 0.288497,
		-0.618116, 0.261450, 0.741335,
		37.964020, 35.694859, 43.725945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908215, 34.963028, 43.319347>,  <38.396702, 35.511845, 43.207008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908215, 34.963028, 43.319347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.707741, 35.282352, 43.452919>,  <37.587456, 35.473949, 43.533062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.707741, 35.282352, 43.452919>,  <37.908215, 34.963028, 43.319347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707741, 35.282352, 43.452919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587265, -0.030364, -0.808825,
		-0.635557, -0.601476, 0.484039,
		-0.501186, 0.798313, 0.333928,
		37.557384, 35.521847, 43.553097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178951, 34.726040, 43.384708>,  <37.908215, 34.963028, 43.319347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178951, 34.726040, 43.384708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.202011, 35.122467, 43.336609>,  <37.215847, 35.360325, 43.307747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.202011, 35.122467, 43.336609>,  <37.178951, 34.726040, 43.384708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202011, 35.122467, 43.336609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641238, -0.055559, -0.765328,
		-0.765173, 0.121233, 0.632307,
		0.057653, 0.991068, -0.120252,
		37.219307, 35.419788, 43.300533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442398, 35.039116, 43.390282>,  <37.178951, 34.726040, 43.384708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442398, 35.039116, 43.390282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.691574, 35.299755, 43.217140>,  <36.841080, 35.456139, 43.113255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.691574, 35.299755, 43.217140>,  <36.442398, 35.039116, 43.390282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691574, 35.299755, 43.217140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578277, 0.010930, -0.815768,
		-0.526822, 0.758485, 0.383613,
		0.622941, 0.651598, -0.432856,
		36.878456, 35.495235, 43.087284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951275, 35.350132, 42.995777>,  <36.442398, 35.039116, 43.390282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951275, 35.350132, 42.995777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.287338, 35.505844, 42.844730>,  <36.488976, 35.599270, 42.754105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.287338, 35.505844, 42.844730>,  <35.951275, 35.350132, 42.995777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287338, 35.505844, 42.844730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398615, -0.028888, -0.916663,
		-0.367746, 0.920667, 0.130902,
		0.840160, 0.389279, -0.377615,
		36.539387, 35.622627, 42.731445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789532, 35.736118, 42.376999>,  <35.951275, 35.350132, 42.995777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789532, 35.736118, 42.376999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.174114, 35.645828, 42.314201>,  <36.404865, 35.591656, 42.276524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.174114, 35.645828, 42.314201>,  <35.789532, 35.736118, 42.376999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174114, 35.645828, 42.314201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198335, -0.173938, -0.964577,
		0.190418, 0.958538, -0.212003,
		0.961459, -0.225721, -0.156991,
		36.462551, 35.578114, 42.267105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926697, 36.145584, 41.800797>,  <35.789532, 35.736118, 42.376999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926697, 36.145584, 41.800797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.168720, 35.827209, 41.792877>,  <36.313934, 35.636185, 41.788128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.168720, 35.827209, 41.792877>,  <35.926697, 36.145584, 41.800797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168720, 35.827209, 41.792877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105414, -0.055443, -0.992882,
		0.789170, 0.602840, -0.117449,
		0.605060, -0.795933, -0.019794,
		36.350239, 35.588428, 41.786938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432907, 36.330196, 41.272778>,  <35.926697, 36.145584, 41.800797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432907, 36.330196, 41.272778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.442101, 35.937038, 41.345875>,  <36.447617, 35.701145, 41.389732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.442101, 35.937038, 41.345875>,  <36.432907, 36.330196, 41.272778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442101, 35.937038, 41.345875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029419, -0.183379, -0.982602,
		0.999303, 0.017204, -0.033130,
		0.022980, -0.982892, 0.182745,
		36.448994, 35.642170, 41.400700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865849, 36.098541, 40.840939>,  <36.432907, 36.330196, 41.272778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865849, 36.098541, 40.840939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.659065, 35.772495, 40.945515>,  <36.534996, 35.576870, 41.008259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.659065, 35.772495, 40.945515>,  <36.865849, 36.098541, 40.840939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659065, 35.772495, 40.945515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000961, -0.304859, -0.952397,
		0.856012, -0.492597, 0.156815,
		-0.516955, -0.815113, 0.261436,
		36.503979, 35.527962, 41.023945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219868, 35.519478, 40.472343>,  <36.865849, 36.098541, 40.840939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219868, 35.519478, 40.472343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.857361, 35.375401, 40.560837>,  <36.639858, 35.288952, 40.613934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.857361, 35.375401, 40.560837>,  <37.219868, 35.519478, 40.472343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857361, 35.375401, 40.560837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012631, -0.546215, -0.837550,
		0.422525, -0.756246, 0.499564,
		-0.906263, -0.360196, 0.221237,
		36.585484, 35.267342, 40.627209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264248, 34.739971, 40.319458>,  <37.219868, 35.519478, 40.472343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264248, 34.739971, 40.319458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.873764, 34.824795, 40.301334>,  <36.639473, 34.875690, 40.290462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.873764, 34.824795, 40.301334>,  <37.264248, 34.739971, 40.319458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873764, 34.824795, 40.301334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047873, -0.414540, -0.908771,
		-0.211495, -0.884979, 0.414829,
		-0.976206, 0.212060, -0.045307,
		36.580902, 34.888412, 40.287743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898781, 34.141266, 40.079994>,  <37.264248, 34.739971, 40.319458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898781, 34.141266, 40.079994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.658218, 34.451694, 40.004074>,  <36.513882, 34.637951, 39.958523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.658218, 34.451694, 40.004074>,  <36.898781, 34.141266, 40.079994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658218, 34.451694, 40.004074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143389, -0.338557, -0.929956,
		-0.785971, -0.532066, 0.314890,
		-0.601407, 0.776070, -0.189803,
		36.477795, 34.684517, 39.947132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293606, 33.840946, 39.762569>,  <36.898781, 34.141266, 40.079994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293606, 33.840946, 39.762569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.283936, 34.225628, 39.653366>,  <36.278133, 34.456436, 39.587845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.283936, 34.225628, 39.653366>,  <36.293606, 33.840946, 39.762569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283936, 34.225628, 39.653366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253942, -0.270042, -0.928758,
		-0.966917, 0.046871, 0.250747,
		-0.024180, 0.961707, -0.273011,
		36.276680, 34.514141, 39.571465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763004, 33.863102, 39.303101>,  <36.293606, 33.840946, 39.762569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763004, 33.863102, 39.303101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.953854, 34.204258, 39.218315>,  <36.068363, 34.408951, 39.167446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.953854, 34.204258, 39.218315>,  <35.763004, 33.863102, 39.303101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953854, 34.204258, 39.218315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041158, -0.262602, -0.964026,
		-0.877872, 0.451236, -0.160397,
		0.477123, 0.852893, -0.211959,
		36.096992, 34.460125, 39.154728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452015, 34.199009, 38.611431>,  <35.763004, 33.863102, 39.303101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452015, 34.199009, 38.611431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.830334, 34.316380, 38.667103>,  <36.057323, 34.386803, 38.700508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.830334, 34.316380, 38.667103>,  <35.452015, 34.199009, 38.611431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830334, 34.316380, 38.667103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184893, -0.134170, -0.973557,
		-0.266992, 0.946520, -0.181149,
		0.945796, 0.293425, 0.139182,
		36.114071, 34.404408, 38.708858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568760, 34.457703, 37.951458>,  <35.452015, 34.199009, 38.611431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568760, 34.457703, 37.951458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.937485, 34.465328, 38.106327>,  <36.158718, 34.469902, 38.199249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.937485, 34.465328, 38.106327>,  <35.568760, 34.457703, 37.951458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937485, 34.465328, 38.106327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385569, -0.148244, -0.910692,
		0.040035, 0.988767, -0.144002,
		0.921810, 0.019063, 0.387173,
		36.214027, 34.471046, 38.222481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940903, 35.025051, 37.653751>,  <35.568760, 34.457703, 37.951458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940903, 35.025051, 37.653751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.207531, 34.752201, 37.774010>,  <36.367508, 34.588493, 37.846165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.207531, 34.752201, 37.774010>,  <35.940903, 35.025051, 37.653751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207531, 34.752201, 37.774010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277686, -0.147072, -0.949347,
		0.691787, 0.716296, 0.091381,
		0.666574, -0.682122, 0.300648,
		36.407505, 34.547565, 37.864204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613514, 35.203773, 37.398235>,  <35.940903, 35.025051, 37.653751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613514, 35.203773, 37.398235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.631908, 34.809307, 37.461929>,  <36.642944, 34.572628, 37.500145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.631908, 34.809307, 37.461929>,  <36.613514, 35.203773, 37.398235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631908, 34.809307, 37.461929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339689, -0.134469, -0.930875,
		0.939413, 0.096898, 0.328807,
		0.045985, -0.986169, 0.159238,
		36.645702, 34.513458, 37.509701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259262, 35.058914, 37.309349>,  <36.613514, 35.203773, 37.398235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259262, 35.058914, 37.309349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.075367, 34.704605, 37.283886>,  <36.965031, 34.492020, 37.268608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.075367, 34.704605, 37.283886>,  <37.259262, 35.058914, 37.309349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075367, 34.704605, 37.283886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471576, -0.182765, -0.862678,
		0.752502, -0.426621, 0.501732,
		-0.459736, -0.885772, -0.063653,
		36.937447, 34.438873, 37.264790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800442, 34.573238, 36.923595>,  <37.259262, 35.058914, 37.309349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800442, 34.573238, 36.923595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.438641, 34.407925, 36.881508>,  <37.221561, 34.308735, 36.856255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.438641, 34.407925, 36.881508>,  <37.800442, 34.573238, 36.923595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438641, 34.407925, 36.881508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226246, -0.255866, -0.939865,
		0.361509, -0.873915, 0.324935,
		-0.904502, -0.413285, -0.105222,
		37.167290, 34.283939, 36.849941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911022, 33.938938, 36.472408>,  <37.800442, 34.573238, 36.923595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911022, 33.938938, 36.472408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.523144, 34.020832, 36.419071>,  <37.290417, 34.069969, 36.387070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.523144, 34.020832, 36.419071>,  <37.911022, 33.938938, 36.472408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523144, 34.020832, 36.419071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082710, -0.238475, -0.967620,
		-0.229874, -0.949329, 0.214318,
		-0.969700, 0.204705, -0.133338,
		37.232235, 34.082253, 36.379066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199978, 34.221867, 35.856617>,  <37.911022, 33.938938, 36.472408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199978, 34.221867, 35.856617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.438263, 34.475758, 35.659740>,  <38.581234, 34.628094, 35.541615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.438263, 34.475758, 35.659740>,  <38.199978, 34.221867, 35.856617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438263, 34.475758, 35.659740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432406, 0.262971, 0.862480,
		0.676871, -0.726614, -0.117805,
		0.595711, 0.634727, -0.492190,
		38.616978, 34.666176, 35.512085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908661, 34.143192, 36.179573>,  <38.199978, 34.221867, 35.856617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908661, 34.143192, 36.179573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.883167, 34.507412, 36.016193>,  <38.867870, 34.725945, 35.918167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.883167, 34.507412, 36.016193>,  <38.908661, 34.143192, 36.179573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883167, 34.507412, 36.016193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399737, 0.398308, 0.825567,
		0.914411, -0.110653, -0.389369,
		-0.063737, 0.910553, -0.408449,
		38.864044, 34.780579, 35.893658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541168, 34.530800, 36.334087>,  <38.908661, 34.143192, 36.179573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541168, 34.530800, 36.334087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.289192, 34.828583, 36.245579>,  <39.138008, 35.007252, 36.192474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.289192, 34.828583, 36.245579>,  <39.541168, 34.530800, 36.334087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289192, 34.828583, 36.245579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326719, 0.512496, 0.794105,
		0.704578, 0.427944, -0.566069,
		-0.629941, 0.744454, -0.221275,
		39.100208, 35.051918, 36.179195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938519, 35.173481, 36.455948>,  <39.541168, 34.530800, 36.334087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938519, 35.173481, 36.455948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.558346, 35.296787, 36.472252>,  <39.330242, 35.370770, 36.482033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.558346, 35.296787, 36.472252>,  <39.938519, 35.173481, 36.455948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558346, 35.296787, 36.472252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242968, 0.654440, 0.716013,
		0.194045, 0.690422, -0.696896,
		-0.950428, 0.308262, 0.040759,
		39.273216, 35.389267, 36.484478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152534, 35.765324, 36.619080>,  <39.938519, 35.173481, 36.455948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152534, 35.765324, 36.619080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.759003, 35.736179, 36.684536>,  <39.522884, 35.718693, 36.723808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.759003, 35.736179, 36.684536>,  <40.152534, 35.765324, 36.619080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759003, 35.736179, 36.684536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087380, 0.602248, 0.793512,
		-0.156367, 0.794977, -0.586141,
		-0.983826, -0.072862, 0.163637,
		39.463856, 35.714321, 36.733627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907837, 36.447384, 36.840431>,  <40.152534, 35.765324, 36.619080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907837, 36.447384, 36.840431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.644100, 36.182583, 36.982994>,  <39.485859, 36.023705, 37.068531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.644100, 36.182583, 36.982994>,  <39.907837, 36.447384, 36.840431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644100, 36.182583, 36.982994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092245, 0.399234, 0.912197,
		-0.746165, 0.634324, -0.202164,
		-0.659339, -0.662001, 0.356408,
		39.446297, 35.983982, 37.089916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495625, 36.911434, 37.327114>,  <39.907837, 36.447384, 36.840431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495625, 36.911434, 37.327114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.423832, 36.529572, 37.422119>,  <39.380756, 36.300453, 37.479122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.423832, 36.529572, 37.422119>,  <39.495625, 36.911434, 37.327114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423832, 36.529572, 37.422119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041911, 0.233798, 0.971381,
		-0.982869, 0.184296, -0.001951,
		-0.179478, -0.954659, 0.237516,
		39.369987, 36.243176, 37.493374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050282, 37.011230, 37.808861>,  <39.495625, 36.911434, 37.327114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050282, 37.011230, 37.808861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.220901, 36.655533, 37.874947>,  <39.323273, 36.442112, 37.914600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.220901, 36.655533, 37.874947>,  <39.050282, 37.011230, 37.808861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220901, 36.655533, 37.874947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113901, 0.234027, 0.965535,
		-0.897265, -0.393026, 0.201110,
		0.426546, -0.889248, 0.165218,
		39.348866, 36.388760, 37.924511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703640, 36.647331, 38.320126>,  <39.050282, 37.011230, 37.808861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703640, 36.647331, 38.320126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.052975, 36.453602, 38.340950>,  <39.262577, 36.337364, 38.353443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.052975, 36.453602, 38.340950>,  <38.703640, 36.647331, 38.320126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052975, 36.453602, 38.340950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050124, 0.016958, 0.998599,
		-0.484530, -0.874723, -0.009466,
		0.873337, -0.484326, 0.052061,
		39.314976, 36.308304, 38.356567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577541, 36.386826, 38.929672>,  <38.703640, 36.647331, 38.320126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577541, 36.386826, 38.929672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.971684, 36.343323, 38.877136>,  <39.208168, 36.317223, 38.845615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.971684, 36.343323, 38.877136>,  <38.577541, 36.386826, 38.929672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971684, 36.343323, 38.877136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119288, -0.110785, 0.986660,
		-0.121862, -0.987875, -0.096188,
		0.985353, -0.108762, -0.131343,
		39.267288, 36.310696, 38.837734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737713, 35.785053, 39.268047>,  <38.577541, 36.386826, 38.929672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737713, 35.785053, 39.268047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.070171, 36.006721, 39.249748>,  <39.269646, 36.139721, 39.238770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.070171, 36.006721, 39.249748>,  <38.737713, 35.785053, 39.268047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070171, 36.006721, 39.249748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116864, -0.093647, 0.988723,
		0.543636, -0.827119, -0.142597,
		0.831146, 0.554170, -0.045751,
		39.319515, 36.172974, 39.236023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190231, 35.460236, 39.650997>,  <38.737713, 35.785053, 39.268047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190231, 35.460236, 39.650997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.310844, 35.841492, 39.641232>,  <39.383213, 36.070248, 39.635372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.310844, 35.841492, 39.641232>,  <39.190231, 35.460236, 39.650997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310844, 35.841492, 39.641232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302760, -0.071435, 0.950386,
		0.904109, -0.293966, -0.310114,
		0.301534, 0.953143, -0.024416,
		39.401306, 36.127434, 39.633907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797321, 35.388008, 40.075531>,  <39.190231, 35.460236, 39.650997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797321, 35.388008, 40.075531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.670586, 35.767387, 40.072285>,  <39.594543, 35.995014, 40.070335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.670586, 35.767387, 40.072285>,  <39.797321, 35.388008, 40.075531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670586, 35.767387, 40.072285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438422, 0.154037, 0.885471,
		0.841069, 0.276998, -0.464623,
		-0.316843, 0.948443, -0.008114,
		39.575531, 36.051922, 40.069851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.464935, 35.826870, 40.061256>,  <39.797321, 35.388008, 40.075531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.464935, 35.826870, 40.061256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.148010, 36.010780, 40.221676>,  <39.957855, 36.121124, 40.317928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.148010, 36.010780, 40.221676>,  <40.464935, 35.826870, 40.061256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148010, 36.010780, 40.221676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486052, 0.078362, 0.870410,
		0.368764, 0.884572, -0.285562,
		-0.792317, 0.459774, 0.401051,
		39.910316, 36.148712, 40.341991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728638, 36.319382, 40.454403>,  <40.464935, 35.826870, 40.061256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.728638, 36.319382, 40.454403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.353050, 36.328743, 40.591686>,  <40.127697, 36.334362, 40.674057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.353050, 36.328743, 40.591686>,  <40.728638, 36.319382, 40.454403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353050, 36.328743, 40.591686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339998, 0.214917, 0.915539,
		-0.052331, 0.976352, -0.209758,
		-0.938969, 0.023406, 0.343204,
		40.071358, 36.335766, 40.694649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752567, 36.902756, 40.902306>,  <40.728638, 36.319382, 40.454403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.752567, 36.902756, 40.902306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.432232, 36.685966, 41.004223>,  <40.240028, 36.555893, 41.065372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.432232, 36.685966, 41.004223>,  <40.752567, 36.902756, 40.902306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.432232, 36.685966, 41.004223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122980, 0.267557, 0.955662,
		-0.586112, 0.796669, -0.147619,
		-0.800842, -0.541971, 0.254793,
		40.191978, 36.523376, 41.080662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310040, 37.315620, 41.166290>,  <40.752567, 36.902756, 40.902306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.310040, 37.315620, 41.166290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.215412, 36.951283, 41.301579>,  <40.158638, 36.732677, 41.382751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.215412, 36.951283, 41.301579>,  <40.310040, 37.315620, 41.166290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.215412, 36.951283, 41.301579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018310, 0.352220, 0.935738,
		-0.971443, 0.215170, -0.100000,
		-0.236564, -0.910847, 0.338222,
		40.144444, 36.678028, 41.403046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946609, 37.511326, 41.851856>,  <40.310040, 37.315620, 41.166290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946609, 37.511326, 41.851856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.043198, 37.124348, 41.882191>,  <40.101151, 36.892162, 41.900391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.043198, 37.124348, 41.882191>,  <39.946609, 37.511326, 41.851856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043198, 37.124348, 41.882191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108373, 0.050775, 0.992813,
		-0.964339, -0.247950, -0.092584,
		0.241467, -0.967441, 0.075835,
		40.115639, 36.834114, 41.904942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.256176, 36.969151, 42.458115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.588833, 36.753490, 42.404915>,  <39.788425, 36.624096, 42.372993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.588833, 36.753490, 42.404915>,  <39.256176, 36.969151, 42.458115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588833, 36.753490, 42.404915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199649, 0.066797, 0.977588,
		-0.518181, -0.839557, 0.163192,
		0.831642, -0.539149, -0.133004,
		39.838326, 36.591747, 42.365013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228226, 36.321819, 42.822220>,  <39.256176, 36.969151, 42.458115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228226, 36.321819, 42.822220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.617496, 36.396812, 42.768894>,  <39.851059, 36.441807, 42.736897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.617496, 36.396812, 42.768894>,  <39.228226, 36.321819, 42.822220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617496, 36.396812, 42.768894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158840, -0.128405, 0.978919,
		0.166412, -0.973839, -0.154741,
		0.973178, 0.187483, -0.133316,
		39.909451, 36.453056, 42.728901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530724, 35.844448, 43.181686>,  <39.228226, 36.321819, 42.822220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530724, 35.844448, 43.181686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.827652, 36.111267, 43.156376>,  <40.005810, 36.271358, 43.141190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.827652, 36.111267, 43.156376>,  <39.530724, 35.844448, 43.181686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827652, 36.111267, 43.156376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172592, -0.099112, 0.979994,
		0.647431, -0.738394, -0.188701,
		0.742324, 0.667047, -0.063272,
		40.050350, 36.311382, 43.137394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076622, 35.504349, 43.419899>,  <39.530724, 35.844448, 43.181686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076622, 35.504349, 43.419899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.174919, 35.889980, 43.460239>,  <40.233898, 36.121357, 43.484444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.174919, 35.889980, 43.460239>,  <40.076622, 35.504349, 43.419899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174919, 35.889980, 43.460239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353729, -0.186053, 0.916657,
		0.902489, -0.189589, -0.386742,
		0.245743, 0.964075, 0.100848,
		40.248642, 36.179203, 43.490494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791904, 35.529343, 43.605770>,  <40.076622, 35.504349, 43.419899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.791904, 35.529343, 43.605770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.654728, 35.885181, 43.726444>,  <40.572422, 36.098682, 43.798851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.654728, 35.885181, 43.726444>,  <40.791904, 35.529343, 43.605770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.654728, 35.885181, 43.726444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361949, -0.171226, 0.916337,
		0.866825, 0.423445, -0.263267,
		-0.342940, 0.889593, 0.301689,
		40.551846, 36.152058, 43.816952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.335728, 35.815632, 43.893906>,  <40.791904, 35.529343, 43.605770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.335728, 35.815632, 43.893906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.053715, 36.064259, 44.030483>,  <40.884506, 36.213436, 44.112431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.053715, 36.064259, 44.030483>,  <41.335728, 35.815632, 43.893906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.053715, 36.064259, 44.030483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263714, -0.217156, 0.939840,
		0.658321, 0.752660, -0.010814,
		-0.705031, 0.621568, 0.341445,
		40.842205, 36.250729, 44.132915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.646912, 36.082783, 44.419090>,  <41.335728, 35.815632, 43.893906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.646912, 36.082783, 44.419090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.269760, 36.191631, 44.495956>,  <41.043468, 36.256943, 44.542076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.269760, 36.191631, 44.495956>,  <41.646912, 36.082783, 44.419090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.269760, 36.191631, 44.495956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138666, -0.203891, 0.969123,
		0.302902, 0.940413, 0.154510,
		-0.942880, 0.272124, 0.192162,
		40.986897, 36.273270, 44.553604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677319, 36.553013, 44.945347>,  <41.646912, 36.082783, 44.419090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.677319, 36.553013, 44.945347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.314648, 36.384296, 44.947414>,  <41.097046, 36.283066, 44.948654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.314648, 36.384296, 44.947414>,  <41.677319, 36.553013, 44.945347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.314648, 36.384296, 44.947414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105868, -0.215673, 0.970710,
		-0.408321, 0.880669, 0.240200,
		-0.906678, -0.421791, 0.005170,
		41.042645, 36.257759, 44.948967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254539, 36.954964, 45.454918>,  <41.677319, 36.553013, 44.945347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.254539, 36.954964, 45.454918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.127121, 36.582737, 45.382732>,  <41.050671, 36.359402, 45.339420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.127121, 36.582737, 45.382732>,  <41.254539, 36.954964, 45.454918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.127121, 36.582737, 45.382732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009969, -0.187085, 0.982293,
		-0.947856, 0.314703, 0.050318,
		-0.318544, -0.930570, -0.180466,
		41.031559, 36.303566, 45.328594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794640, 36.842701, 46.031811>,  <41.254539, 36.954964, 45.454918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.794640, 36.842701, 46.031811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.893021, 36.489891, 45.871040>,  <40.952049, 36.278206, 45.774578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.893021, 36.489891, 45.871040>,  <40.794640, 36.842701, 46.031811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.893021, 36.489891, 45.871040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021888, -0.409502, 0.912047,
		-0.969034, -0.233122, -0.081414,
		0.245957, -0.882022, -0.401924,
		40.966808, 36.225285, 45.750462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456718, 36.420959, 46.435497>,  <40.794640, 36.842701, 46.031811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456718, 36.420959, 46.435497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.743008, 36.195332, 46.270786>,  <40.914783, 36.059956, 46.171959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.743008, 36.195332, 46.270786>,  <40.456718, 36.420959, 46.435497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.743008, 36.195332, 46.270786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100926, -0.499886, 0.860191,
		-0.691049, -0.657221, -0.300852,
		0.715727, -0.564070, -0.411776,
		40.957726, 36.026112, 46.147255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404057, 35.828613, 46.817364>,  <40.456718, 36.420959, 46.435497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.404057, 35.828613, 46.817364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.762276, 35.772144, 46.648571>,  <40.977207, 35.738262, 46.547295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.762276, 35.772144, 46.648571>,  <40.404057, 35.828613, 46.817364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762276, 35.772144, 46.648571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300867, -0.506585, 0.807992,
		-0.327832, -0.850555, -0.411197,
		0.895547, -0.141170, -0.421979,
		41.030941, 35.729794, 46.521976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490211, 35.157513, 46.714008>,  <40.404057, 35.828613, 46.817364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.490211, 35.157513, 46.714008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.856453, 35.317570, 46.729820>,  <41.076199, 35.413605, 46.739307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.856453, 35.317570, 46.729820>,  <40.490211, 35.157513, 46.714008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.856453, 35.317570, 46.729820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184026, -0.504432, 0.843613,
		0.357509, -0.765136, -0.535495,
		0.915599, 0.400144, 0.039534,
		41.131134, 35.437614, 46.741680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955250, 34.556877, 46.724506>,  <40.490211, 35.157513, 46.714008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955250, 34.556877, 46.724506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.219372, 34.836224, 46.834980>,  <41.377846, 35.003834, 46.901264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.219372, 34.836224, 46.834980>,  <40.955250, 34.556877, 46.724506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.219372, 34.836224, 46.834980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397369, -0.636952, 0.660598,
		0.637255, -0.326451, -0.698094,
		0.660306, 0.698371, 0.276180,
		41.417465, 35.045734, 46.917835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.617901, 34.152489, 46.861763>,  <40.955250, 34.556877, 46.724506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.617901, 34.152489, 46.861763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.640739, 34.500492, 47.057652>,  <41.654442, 34.709293, 47.175186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.640739, 34.500492, 47.057652>,  <41.617901, 34.152489, 46.861763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.640739, 34.500492, 47.057652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188497, -0.491093, 0.850469,
		0.980413, 0.043756, -0.192032,
		0.057092, 0.870008, 0.489721,
		41.657867, 34.761494, 47.204567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.218243, 34.170937, 47.103706>,  <41.617901, 34.152489, 46.861763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.218243, 34.170937, 47.103706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.068436, 34.438683, 47.360359>,  <41.978550, 34.599331, 47.514351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.068436, 34.438683, 47.360359>,  <42.218243, 34.170937, 47.103706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.068436, 34.438683, 47.360359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454488, -0.470637, 0.756268,
		0.808193, 0.574849, -0.127955,
		-0.374519, 0.669365, 0.641628,
		41.956081, 34.639492, 47.552849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.795013, 34.261333, 47.575321>,  <42.218243, 34.170937, 47.103706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.795013, 34.261333, 47.575321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.468800, 34.399818, 47.760811>,  <42.273071, 34.482910, 47.872105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.468800, 34.399818, 47.760811>,  <42.795013, 34.261333, 47.575321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.468800, 34.399818, 47.760811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273923, -0.474921, 0.836311,
		0.509769, 0.809067, 0.292481,
		-0.815537, 0.346209, 0.463722,
		42.224140, 34.503681, 47.899929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.028339, 34.416714, 48.259617>,  <42.795013, 34.261333, 47.575321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.028339, 34.416714, 48.259617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.634121, 34.349098, 48.263954>,  <42.397591, 34.308529, 48.266556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.634121, 34.349098, 48.263954>,  <43.028339, 34.416714, 48.259617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.634121, 34.349098, 48.263954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105855, -0.564656, 0.818510,
		-0.132239, 0.807830, 0.574390,
		-0.985550, -0.169041, 0.010843,
		42.338455, 34.298386, 48.267208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.982014, 34.639473, 48.841080>,  <43.028339, 34.416714, 48.259617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.982014, 34.639473, 48.841080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.642521, 34.431953, 48.800098>,  <42.438824, 34.307442, 48.775509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.642521, 34.431953, 48.800098>,  <42.982014, 34.639473, 48.841080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.642521, 34.431953, 48.800098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146336, -0.416588, 0.897240,
		-0.508168, 0.746527, 0.429492,
		-0.848735, -0.518799, -0.102453,
		42.387901, 34.276314, 48.769363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.507790, 34.797607, 49.387321>,  <42.982014, 34.639473, 48.841080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.507790, 34.797607, 49.387321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.419968, 34.425407, 49.270050>,  <42.367275, 34.202087, 49.199688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.419968, 34.425407, 49.270050>,  <42.507790, 34.797607, 49.387321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.419968, 34.425407, 49.270050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018802, -0.296424, 0.954872,
		-0.975419, 0.215160, 0.047586,
		-0.219556, -0.930505, -0.293183,
		42.354099, 34.146255, 49.182095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.399281, 34.516426, 49.976490>,  <42.507790, 34.797607, 49.387321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.399281, 34.516426, 49.976490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.369629, 34.187176, 49.751289>,  <42.351837, 33.989624, 49.616169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.369629, 34.187176, 49.751289>,  <42.399281, 34.516426, 49.976490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.369629, 34.187176, 49.751289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183678, -0.566165, 0.803566,
		-0.980188, -0.043846, 0.193157,
		-0.074126, -0.823125, -0.563002,
		42.347393, 33.940239, 49.582390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.837303, 34.116463, 50.216614>,  <42.399281, 34.516426, 49.976490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.837303, 34.116463, 50.216614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.096149, 33.868340, 50.039322>,  <42.251457, 33.719463, 49.932945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.096149, 33.868340, 50.039322>,  <41.837303, 34.116463, 50.216614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.096149, 33.868340, 50.039322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073084, -0.528217, 0.845958,
		-0.758880, -0.579826, -0.296483,
		0.647116, -0.620313, -0.443230,
		42.290283, 33.682247, 49.906353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186302, 34.582195, 50.530769>,  <41.837303, 34.116463, 50.216614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.186302, 34.582195, 50.530769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.316242, 34.935364, 50.666370>,  <41.394207, 35.147266, 50.747730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.316242, 34.935364, 50.666370>,  <41.186302, 34.582195, 50.530769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.316242, 34.935364, 50.666370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940393, 0.263397, 0.215137,
		0.100657, -0.388682, 0.915857,
		0.324854, 0.882921, 0.339001,
		41.413700, 35.200241, 50.768070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180920, 33.957039, 51.048206>,  <41.186302, 34.582195, 50.530769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180920, 33.957039, 51.048206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.815697, 33.860870, 50.916431>,  <40.596565, 33.803169, 50.837368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.815697, 33.860870, 50.916431>,  <41.180920, 33.957039, 51.048206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.815697, 33.860870, 50.916431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287205, 0.952547, 0.100834,
		0.289557, 0.186682, -0.938779,
		-0.913055, -0.240425, -0.329433,
		40.541779, 33.788742, 50.817600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041088, 33.974937, 51.761101>,  <41.180920, 33.957039, 51.048206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.041088, 33.974937, 51.761101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.643078, 34.003971, 51.788372>,  <40.404270, 34.021393, 51.804733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.643078, 34.003971, 51.788372>,  <41.041088, 33.974937, 51.761101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.643078, 34.003971, 51.788372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078960, -0.157879, -0.984296,
		-0.060679, -0.984787, 0.162825,
		-0.995029, 0.072583, 0.068179,
		40.344570, 34.025745, 51.808826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.632812, 33.364834, 51.275898>,  <41.041088, 33.974937, 51.761101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.632812, 33.364834, 51.275898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.388027, 33.668015, 51.366245>,  <40.241158, 33.849922, 51.420452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.388027, 33.668015, 51.366245>,  <40.632812, 33.364834, 51.275898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388027, 33.668015, 51.366245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386982, -0.037897, -0.921308,
		-0.689744, -0.651213, 0.316504,
		-0.611963, 0.757948, 0.225868,
		40.204437, 33.895397, 51.434006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959110, 33.209316, 50.979630>,  <40.632812, 33.364834, 51.275898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959110, 33.209316, 50.979630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.954102, 33.603722, 51.046101>,  <39.951096, 33.840366, 51.085983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.954102, 33.603722, 51.046101>,  <39.959110, 33.209316, 50.979630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954102, 33.603722, 51.046101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421318, 0.145518, -0.895162,
		-0.906826, -0.081228, 0.413604,
		-0.012525, 0.986016, 0.166182,
		39.950344, 33.899525, 51.095955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502953, 33.384541, 50.563320>,  <39.959110, 33.209316, 50.979630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502953, 33.384541, 50.563320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.629509, 33.755314, 50.644012>,  <39.705444, 33.977776, 50.692429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.629509, 33.755314, 50.644012>,  <39.502953, 33.384541, 50.563320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629509, 33.755314, 50.644012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151872, 0.259404, -0.953753,
		-0.936392, 0.271124, 0.222849,
		0.316393, 0.926931, 0.201728,
		39.724426, 34.033394, 50.704533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973972, 33.743362, 50.249458>,  <39.502953, 33.384541, 50.563320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973972, 33.743362, 50.249458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.279255, 33.998547, 50.290501>,  <39.462425, 34.151657, 50.315125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.279255, 33.998547, 50.290501>,  <38.973972, 33.743362, 50.249458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279255, 33.998547, 50.290501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195584, 0.379424, -0.904314,
		-0.615844, 0.670110, 0.414353,
		0.763206, 0.637958, 0.102603,
		39.508217, 34.189934, 50.321281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686222, 34.281136, 49.924316>,  <38.973972, 33.743362, 50.249458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686222, 34.281136, 49.924316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.078831, 34.356628, 49.936939>,  <39.314396, 34.401924, 49.944515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.078831, 34.356628, 49.936939>,  <38.686222, 34.281136, 49.924316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078831, 34.356628, 49.936939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031945, 0.324236, -0.945437,
		-0.188669, 0.926958, 0.324274,
		0.981521, 0.188733, 0.031561,
		39.373287, 34.413250, 49.946407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796272, 35.039524, 49.527512>,  <38.686222, 34.281136, 49.924316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796272, 35.039524, 49.527512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.158596, 34.870075, 49.524700>,  <39.375992, 34.768406, 49.523014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.158596, 34.870075, 49.524700>,  <38.796272, 35.039524, 49.527512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158596, 34.870075, 49.524700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067884, 0.161479, -0.984539,
		0.418206, 0.891330, 0.175027,
		0.905812, -0.423621, -0.007025,
		39.430340, 34.742989, 49.522594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284416, 35.441845, 49.179535>,  <38.796272, 35.039524, 49.527512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284416, 35.441845, 49.179535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.414715, 35.063976, 49.164146>,  <39.492893, 34.837254, 49.154911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.414715, 35.063976, 49.164146>,  <39.284416, 35.441845, 49.179535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414715, 35.063976, 49.164146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036179, 0.028209, -0.998947,
		0.944763, 0.326799, -0.024989,
		0.325750, -0.944673, -0.038474,
		39.512440, 34.780575, 49.152603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698788, 35.506645, 48.688316>,  <39.284416, 35.441845, 49.179535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698788, 35.506645, 48.688316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.621609, 35.114197, 48.693592>,  <39.575302, 34.878727, 48.696758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.621609, 35.114197, 48.693592>,  <39.698788, 35.506645, 48.688316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621609, 35.114197, 48.693592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052124, -0.003170, -0.998636,
		0.979824, -0.193368, -0.050529,
		-0.192944, -0.981121, 0.013185,
		39.563725, 34.819859, 48.697548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185371, 35.218105, 48.317650>,  <39.698788, 35.506645, 48.688316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185371, 35.218105, 48.317650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.864521, 34.979767, 48.301903>,  <39.672009, 34.836761, 48.292454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.864521, 34.979767, 48.301903>,  <40.185371, 35.218105, 48.317650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864521, 34.979767, 48.301903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061932, 0.148589, -0.986958,
		0.593929, -0.789230, -0.156090,
		-0.802130, -0.595850, -0.039372,
		39.623882, 34.801010, 48.290092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269905, 34.878551, 47.737465>,  <40.185371, 35.218105, 48.317650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.269905, 34.878551, 47.737465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.881786, 34.806995, 47.802597>,  <39.648914, 34.764061, 47.841679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.881786, 34.806995, 47.802597>,  <40.269905, 34.878551, 47.737465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881786, 34.806995, 47.802597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189102, 0.141153, -0.971759,
		0.150884, -0.973685, -0.170795,
		-0.970296, -0.178920, 0.162828,
		39.590694, 34.753326, 47.851448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075310, 34.347061, 47.232544>,  <40.269905, 34.878551, 47.737465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075310, 34.347061, 47.232544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.741817, 34.536758, 47.345673>,  <39.541721, 34.650578, 47.413551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.741817, 34.536758, 47.345673>,  <40.075310, 34.347061, 47.232544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741817, 34.536758, 47.345673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316379, 0.009499, -0.948585,
		-0.452543, -0.880345, 0.142120,
		-0.833732, 0.474239, 0.282822,
		39.491699, 34.679031, 47.430519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574512, 33.972683, 46.927162>,  <40.075310, 34.347061, 47.232544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574512, 33.972683, 46.927162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.381618, 34.313263, 47.009617>,  <39.265884, 34.517609, 47.059090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.381618, 34.313263, 47.009617>,  <39.574512, 33.972683, 46.927162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381618, 34.313263, 47.009617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278702, 0.073975, -0.957524,
		-0.830529, -0.519200, 0.201627,
		-0.482231, 0.851445, 0.206141,
		39.236950, 34.568695, 47.071461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920662, 34.024273, 46.558552>,  <39.574512, 33.972683, 46.927162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920662, 34.024273, 46.558552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.947395, 34.417648, 46.625950>,  <38.963436, 34.653671, 46.666389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.947395, 34.417648, 46.625950>,  <38.920662, 34.024273, 46.558552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947395, 34.417648, 46.625950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322779, 0.181102, -0.928987,
		-0.944112, 0.007703, 0.329536,
		0.066836, 0.983434, 0.168494,
		38.967445, 34.712677, 46.676498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263954, 34.294456, 46.454231>,  <38.920662, 34.024273, 46.558552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263954, 34.294456, 46.454231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.563980, 34.548698, 46.381115>,  <38.743996, 34.701244, 46.337246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.563980, 34.548698, 46.381115>,  <38.263954, 34.294456, 46.454231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563980, 34.548698, 46.381115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404330, 0.221967, -0.887270,
		-0.523381, 0.739415, 0.423483,
		0.750060, 0.635607, -0.182795,
		38.788998, 34.739380, 46.326275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959709, 34.847992, 46.265579>,  <38.263954, 34.294456, 46.454231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959709, 34.847992, 46.265579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.324539, 34.950771, 46.137772>,  <38.543438, 35.012440, 46.061089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.324539, 34.950771, 46.137772>,  <37.959709, 34.847992, 46.265579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324539, 34.950771, 46.137772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394660, 0.338895, -0.854045,
		-0.111161, 0.905057, 0.410506,
		0.912078, 0.256947, -0.319518,
		38.598164, 35.027855, 46.041916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030907, 35.463581, 46.105209>,  <37.959709, 34.847992, 46.265579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030907, 35.463581, 46.105209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.356850, 35.380760, 45.888641>,  <38.552414, 35.331066, 45.758701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.356850, 35.380760, 45.888641>,  <38.030907, 35.463581, 46.105209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356850, 35.380760, 45.888641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416320, 0.440875, -0.795178,
		0.403346, 0.873360, 0.273047,
		0.814856, -0.207057, -0.541422,
		38.601307, 35.318642, 45.726215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146992, 36.115578, 45.684837>,  <38.030907, 35.463581, 46.105209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146992, 36.115578, 45.684837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.303997, 35.793312, 45.507374>,  <38.398201, 35.599953, 45.400894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.303997, 35.793312, 45.507374>,  <38.146992, 36.115578, 45.684837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303997, 35.793312, 45.507374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519676, 0.203724, -0.829719,
		0.758861, 0.556235, -0.338721,
		0.392513, -0.805667, -0.443660,
		38.421749, 35.551613, 45.374275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538067, 36.419556, 45.161366>,  <38.146992, 36.115578, 45.684837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538067, 36.419556, 45.161366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.512524, 36.035072, 45.054031>,  <38.497196, 35.804382, 44.989632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.512524, 36.035072, 45.054031>,  <38.538067, 36.419556, 45.161366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512524, 36.035072, 45.054031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492595, 0.264204, -0.829184,
		0.867913, 0.079232, -0.490357,
		-0.063857, -0.961207, -0.268335,
		38.493366, 35.746712, 44.973530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743122, 36.402641, 44.337818>,  <38.538067, 36.419556, 45.161366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743122, 36.402641, 44.337818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.533825, 36.077160, 44.439098>,  <38.408245, 35.881870, 44.499866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.533825, 36.077160, 44.439098>,  <38.743122, 36.402641, 44.337818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533825, 36.077160, 44.439098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526035, 0.074641, -0.847181,
		0.670452, -0.576473, -0.467090,
		-0.523241, -0.813700, 0.253202,
		38.376854, 35.833050, 44.515060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.354794, 41.256432, 35.443047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.019341, 41.194775, 35.234074>,  <39.818069, 41.157780, 35.108688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.019341, 41.194775, 35.234074>,  <40.354794, 41.256432, 35.443047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019341, 41.194775, 35.234074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300694, -0.930745, -0.208079,
		-0.454180, -0.331594, 0.826901,
		-0.838632, -0.154139, -0.522434,
		39.767750, 41.148533, 35.077343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041733, 40.686623, 35.800823>,  <40.354794, 41.256432, 35.443047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041733, 40.686623, 35.800823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.936821, 40.697353, 35.414974>,  <39.873875, 40.703793, 35.183464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.936821, 40.697353, 35.414974>,  <40.041733, 40.686623, 35.800823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936821, 40.697353, 35.414974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187358, -0.979176, -0.078175,
		-0.946630, -0.201232, 0.251788,
		-0.262276, 0.026829, -0.964620,
		39.858139, 40.705402, 35.125587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779041, 40.049141, 35.673065>,  <40.041733, 40.686623, 35.800823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779041, 40.049141, 35.673065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.827400, 40.172466, 35.295635>,  <39.856415, 40.246460, 35.069180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.827400, 40.172466, 35.295635>,  <39.779041, 40.049141, 35.673065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827400, 40.172466, 35.295635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161434, -0.943996, -0.287768,
		-0.979450, -0.117533, -0.163901,
		0.120900, 0.308313, -0.943571,
		39.863670, 40.264961, 35.012566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511620, 39.551250, 35.325790>,  <39.779041, 40.049141, 35.673065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511620, 39.551250, 35.325790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.753704, 39.738766, 35.068432>,  <39.898956, 39.851273, 34.914017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.753704, 39.738766, 35.068432>,  <39.511620, 39.551250, 35.325790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753704, 39.738766, 35.068432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317252, -0.883298, -0.345159,
		-0.730117, 0.004775, -0.683306,
		0.605211, 0.468786, -0.643397,
		39.935268, 39.879402, 34.875412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433239, 39.182739, 34.736980>,  <39.511620, 39.551250, 35.325790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433239, 39.182739, 34.736980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.784359, 39.366745, 34.683521>,  <39.995029, 39.477146, 34.651443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.784359, 39.366745, 34.683521>,  <39.433239, 39.182739, 34.736980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784359, 39.366745, 34.683521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398265, -0.855851, -0.330007,
		-0.266191, 0.236451, -0.934469,
		0.877797, 0.460011, -0.133650,
		40.047699, 39.504749, 34.643425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596043, 39.079548, 34.148666>,  <39.433239, 39.182739, 34.736980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596043, 39.079548, 34.148666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.955013, 39.194298, 34.282730>,  <40.170395, 39.263149, 34.363167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.955013, 39.194298, 34.282730>,  <39.596043, 39.079548, 34.148666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955013, 39.194298, 34.282730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411357, -0.818657, -0.400731,
		0.159416, 0.497495, -0.852693,
		0.897425, 0.286879, 0.335155,
		40.224239, 39.280361, 34.383278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093704, 39.051056, 33.499893>,  <39.596043, 39.079548, 34.148666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.093704, 39.051056, 33.499893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.271210, 39.018787, 33.856895>,  <40.377712, 38.999428, 34.071098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.271210, 39.018787, 33.856895>,  <40.093704, 39.051056, 33.499893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271210, 39.018787, 33.856895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406096, -0.869707, -0.280528,
		0.798848, 0.486932, -0.353186,
		0.443766, -0.080672, 0.892504,
		40.404339, 38.994587, 34.124645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760590, 39.021622, 33.336208>,  <40.093704, 39.051056, 33.499893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760590, 39.021622, 33.336208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.711510, 38.864269, 33.700668>,  <40.682060, 38.769859, 33.919346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.711510, 38.864269, 33.700668>,  <40.760590, 39.021622, 33.336208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.711510, 38.864269, 33.700668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606224, -0.756610, -0.245018,
		0.785771, 0.522299, 0.331311,
		-0.122701, -0.393377, 0.911153,
		40.674698, 38.746258, 33.974014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.487167, 38.665371, 33.499424>,  <40.760590, 39.021622, 33.336208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.487167, 38.665371, 33.499424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.240456, 38.523121, 33.780312>,  <41.092426, 38.437771, 33.948845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.240456, 38.523121, 33.780312>,  <41.487167, 38.665371, 33.499424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240456, 38.523121, 33.780312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524659, -0.850785, 0.029961,
		0.586782, 0.386904, 0.711331,
		-0.616782, -0.355626, 0.702218,
		41.055420, 38.416431, 33.990978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.864033, 38.631721, 34.076504>,  <41.487167, 38.665371, 33.499424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.864033, 38.631721, 34.076504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.564793, 38.369457, 34.117416>,  <41.385250, 38.212101, 34.141964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.564793, 38.369457, 34.117416>,  <41.864033, 38.631721, 34.076504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.564793, 38.369457, 34.117416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661333, -0.749341, 0.033568,
		0.054631, 0.092751, 0.994189,
		-0.748101, -0.655656, 0.102277,
		41.340363, 38.172760, 34.148098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.151485, 38.106113, 34.463039>,  <41.864033, 38.631721, 34.076504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.151485, 38.106113, 34.463039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.796478, 37.965500, 34.343880>,  <41.583473, 37.881130, 34.272385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.796478, 37.965500, 34.343880>,  <42.151485, 38.106113, 34.463039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.796478, 37.965500, 34.343880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403365, -0.905250, -0.133489,
		-0.222744, -0.238635, 0.945219,
		-0.887514, -0.351535, -0.297895,
		41.530224, 37.860039, 34.254513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.954697, 37.630081, 34.878796>,  <42.151485, 38.106113, 34.463039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.954697, 37.630081, 34.878796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.793385, 37.560997, 34.519344>,  <41.696598, 37.519547, 34.303673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.793385, 37.560997, 34.519344>,  <41.954697, 37.630081, 34.878796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.793385, 37.560997, 34.519344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640097, -0.755030, -0.142145,
		-0.653941, -0.632534, 0.415044,
		-0.403282, -0.172714, -0.898629,
		41.672401, 37.509182, 34.249756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.878239, 36.970127, 34.845852>,  <41.954697, 37.630081, 34.878796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.878239, 36.970127, 34.845852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.875702, 37.061531, 34.456444>,  <41.874180, 37.116375, 34.222797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.875702, 37.061531, 34.456444>,  <41.878239, 36.970127, 34.845852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.875702, 37.061531, 34.456444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571289, -0.798197, -0.191079,
		-0.820725, -0.557372, -0.125486,
		-0.006339, 0.228512, -0.973521,
		41.873798, 37.130085, 34.164387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.785664, 36.304550, 34.503082>,  <41.878239, 36.970127, 34.845852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.785664, 36.304550, 34.503082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.937157, 36.550930, 34.226772>,  <42.028053, 36.698757, 34.060986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.937157, 36.550930, 34.226772>,  <41.785664, 36.304550, 34.503082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.937157, 36.550930, 34.226772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616222, -0.724703, -0.308343,
		-0.690529, -0.308889, -0.654031,
		0.378735, 0.615949, -0.690773,
		42.050777, 36.735714, 34.019539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.813015, 35.893269, 33.895420>,  <41.785664, 36.304550, 34.503082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.813015, 35.893269, 33.895420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.081169, 36.184708, 33.839245>,  <42.242062, 36.359573, 33.805538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.081169, 36.184708, 33.839245>,  <41.813015, 35.893269, 33.895420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.081169, 36.184708, 33.839245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698831, -0.683584, -0.210588,
		-0.249439, 0.043030, -0.967434,
		0.670384, 0.728602, -0.140442,
		42.282284, 36.403290, 33.797112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292587, 35.778645, 33.187771>,  <41.813015, 35.893269, 33.895420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.292587, 35.778645, 33.187771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.491455, 36.028271, 33.428890>,  <42.610775, 36.178047, 33.573563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.491455, 36.028271, 33.428890>,  <42.292587, 35.778645, 33.187771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.491455, 36.028271, 33.428890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848583, -0.494598, -0.187830,
		0.180926, 0.604910, -0.775468,
		0.497165, 0.624065, 0.602801,
		42.640606, 36.215488, 33.609730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.970860, 35.754917, 32.879585>,  <42.292587, 35.778645, 33.187771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.970860, 35.754917, 32.879585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.038933, 35.936951, 33.229198>,  <43.079777, 36.046169, 33.438969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.038933, 35.936951, 33.229198>,  <42.970860, 35.754917, 32.879585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.038933, 35.936951, 33.229198> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869294, -0.487049, 0.084327,
		0.464074, 0.745443, -0.478488,
		0.170186, 0.455081, 0.874036,
		43.089989, 36.073475, 33.491409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.660179, 36.034294, 32.834515>,  <42.970860, 35.754917, 32.879585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.660179, 36.034294, 32.834515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.600353, 36.003544, 33.228817>,  <43.564457, 35.985092, 33.465401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.600353, 36.003544, 33.228817>,  <43.660179, 36.034294, 32.834515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.600353, 36.003544, 33.228817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897262, -0.429401, 0.102647,
		0.415395, 0.899836, 0.133199,
		-0.149562, -0.076876, 0.985759,
		43.555485, 35.980480, 33.524544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.297169, 35.994644, 33.158028>,  <43.660179, 36.034294, 32.834515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.297169, 35.994644, 33.158028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.072330, 35.839367, 33.450150>,  <43.937428, 35.746201, 33.625423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.072330, 35.839367, 33.450150>,  <44.297169, 35.994644, 33.158028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.072330, 35.839367, 33.450150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784406, -0.530160, 0.321929,
		0.262207, 0.753812, 0.602507,
		-0.562099, -0.388197, 0.730306,
		43.903702, 35.722908, 33.669243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.689297, 35.935749, 33.789082>,  <44.297169, 35.994644, 33.158028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.689297, 35.935749, 33.789082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.392929, 35.703728, 33.924477>,  <44.215111, 35.564514, 34.005714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.392929, 35.703728, 33.924477>,  <44.689297, 35.935749, 33.789082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.392929, 35.703728, 33.924477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669724, -0.675759, 0.307926,
		0.050124, 0.454844, 0.889159,
		-0.740916, -0.580057, 0.338492,
		44.170654, 35.529709, 34.026024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.868614, 35.802620, 34.504425>,  <44.689297, 35.935749, 33.789082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.868614, 35.802620, 34.504425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.639675, 35.519257, 34.339222>,  <44.502312, 35.349239, 34.240101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.639675, 35.519257, 34.339222>,  <44.868614, 35.802620, 34.504425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.639675, 35.519257, 34.339222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625409, -0.702867, 0.338883,
		-0.530357, -0.064340, 0.845329,
		-0.572350, -0.708406, -0.413009,
		44.467972, 35.306736, 34.215321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.766155, 36.409008, 35.000256>,  <44.868614, 35.802620, 34.504425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.766155, 36.409008, 35.000256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.077072, 36.658234, 35.035152>,  <45.263622, 36.807770, 35.056091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.077072, 36.658234, 35.035152>,  <44.766155, 36.409008, 35.000256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.077072, 36.658234, 35.035152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608602, 0.709498, 0.355269,
		0.159455, -0.329245, 0.930684,
		0.777289, 0.623065, 0.087246,
		45.310257, 36.845154, 35.061325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.717525, 36.830059, 35.679363>,  <44.766155, 36.409008, 35.000256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.717525, 36.830059, 35.679363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.975159, 37.043892, 35.460503>,  <45.129738, 37.172192, 35.329185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.975159, 37.043892, 35.460503>,  <44.717525, 36.830059, 35.679363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.975159, 37.043892, 35.460503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350193, 0.841981, 0.410405,
		0.680090, -0.072726, 0.729513,
		0.644083, 0.534583, -0.547155,
		45.168385, 37.204266, 35.296356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.983345, 37.274185, 36.137959>,  <44.717525, 36.830059, 35.679363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.983345, 37.274185, 36.137959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.041962, 37.453083, 35.785030>,  <45.077133, 37.560421, 35.573273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.041962, 37.453083, 35.785030>,  <44.983345, 37.274185, 36.137959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.041962, 37.453083, 35.785030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464988, 0.818412, 0.337621,
		0.873104, 0.360793, 0.327900,
		0.146546, 0.447248, -0.882323,
		45.085926, 37.587257, 35.520332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.282238, 37.942577, 36.221691>,  <44.983345, 37.274185, 36.137959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.282238, 37.942577, 36.221691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.086926, 37.957973, 35.872955>,  <44.969738, 37.967209, 35.663715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.086926, 37.957973, 35.872955>,  <45.282238, 37.942577, 36.221691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.086926, 37.957973, 35.872955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506755, 0.800834, 0.319162,
		0.710482, 0.597649, -0.371526,
		-0.488277, 0.038486, -0.871840,
		44.940441, 37.969521, 35.611404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.085030, 38.643536, 36.124645>,  <45.282238, 37.942577, 36.221691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.085030, 38.643536, 36.124645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.851074, 38.459190, 35.857658>,  <44.710701, 38.348583, 35.697464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.851074, 38.459190, 35.857658>,  <45.085030, 38.643536, 36.124645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.851074, 38.459190, 35.857658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717987, 0.677014, 0.161701,
		0.377366, 0.573812, -0.726867,
		-0.584885, -0.460860, -0.667472,
		44.675610, 38.320930, 35.657417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.764465, 39.102833, 35.693481>,  <45.085030, 38.643536, 36.124645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.764465, 39.102833, 35.693481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.505543, 38.799458, 35.663101>,  <44.350189, 38.617432, 35.644871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.505543, 38.799458, 35.663101>,  <44.764465, 39.102833, 35.693481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.505543, 38.799458, 35.663101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754853, 0.624011, 0.202009,
		-0.105815, 0.188096, -0.976434,
		-0.647303, -0.758439, -0.075955,
		44.311352, 38.571926, 35.640316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.149677, 39.412613, 35.308681>,  <44.764465, 39.102833, 35.693481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.149677, 39.412613, 35.308681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.007198, 39.084572, 35.487816>,  <43.921711, 38.887749, 35.595299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.007198, 39.084572, 35.487816>,  <44.149677, 39.412613, 35.308681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.007198, 39.084572, 35.487816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842354, 0.489261, 0.225973,
		-0.404430, -0.296748, -0.865088,
		-0.356197, -0.820100, 0.447839,
		43.900341, 38.838543, 35.622166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.489586, 39.305191, 35.038300>,  <44.149677, 39.412613, 35.308681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.489586, 39.305191, 35.038300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.485523, 39.099758, 35.381493>,  <43.483086, 38.976498, 35.587410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.485523, 39.099758, 35.381493>,  <43.489586, 39.305191, 35.038300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.485523, 39.099758, 35.381493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871591, 0.425110, 0.244152,
		-0.490128, -0.745330, -0.451949,
		-0.010154, -0.513580, 0.857982,
		43.482475, 38.945683, 35.638885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.807053, 39.183559, 35.193943>,  <43.489586, 39.305191, 35.038300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.807053, 39.183559, 35.193943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.953102, 39.115788, 35.560108>,  <43.040733, 39.075127, 35.779808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.953102, 39.115788, 35.560108>,  <42.807053, 39.183559, 35.193943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.953102, 39.115788, 35.560108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769583, 0.498379, 0.399200,
		-0.523858, -0.850242, 0.051581,
		0.365123, -0.169428, 0.915412,
		43.062637, 39.064960, 35.834732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.297024, 38.891155, 35.694229>,  <42.807053, 39.183559, 35.193943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.297024, 38.891155, 35.694229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.577770, 39.051331, 35.929867>,  <42.746220, 39.147434, 36.071251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.577770, 39.051331, 35.929867>,  <42.297024, 38.891155, 35.694229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.577770, 39.051331, 35.929867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710045, 0.459162, 0.533859,
		-0.056715, -0.792983, 0.606598,
		0.701868, 0.400434, 0.589096,
		42.788330, 39.171459, 36.106594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.127308, 38.802113, 36.408482>,  <42.297024, 38.891155, 35.694229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.127308, 38.802113, 36.408482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.381840, 39.110081, 36.427719>,  <42.534557, 39.294861, 36.439262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.381840, 39.110081, 36.427719>,  <42.127308, 38.802113, 36.408482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.381840, 39.110081, 36.427719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653491, 0.504875, 0.563959,
		0.409920, -0.390293, 0.824401,
		0.636329, 0.769917, 0.048095,
		42.572739, 39.341057, 36.442146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.112053, 38.976845, 37.132610>,  <42.127308, 38.802113, 36.408482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.112053, 38.976845, 37.132610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.257042, 39.299358, 36.945625>,  <42.344036, 39.492867, 36.833435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.257042, 39.299358, 36.945625>,  <42.112053, 38.976845, 37.132610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257042, 39.299358, 36.945625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573651, 0.588317, 0.569919,
		0.734532, 0.061579, 0.675775,
		0.362475, 0.806282, -0.467463,
		42.365784, 39.541245, 36.805386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.447556, 39.419430, 37.601990>,  <42.112053, 38.976845, 37.132610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.447556, 39.419430, 37.601990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.315742, 39.628338, 37.287376>,  <42.236652, 39.753681, 37.098606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.315742, 39.628338, 37.287376>,  <42.447556, 39.419430, 37.601990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.315742, 39.628338, 37.287376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497324, 0.612109, 0.614811,
		0.802543, 0.593766, 0.058026,
		-0.329535, 0.522269, -0.786537,
		42.216881, 39.785019, 37.051414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396751, 40.080139, 37.863251>,  <42.447556, 39.419430, 37.601990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.396751, 40.080139, 37.863251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.190228, 40.132057, 37.524647>,  <42.066311, 40.163208, 37.321484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.190228, 40.132057, 37.524647>,  <42.396751, 40.080139, 37.863251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.190228, 40.132057, 37.524647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475757, 0.778421, 0.409532,
		0.712093, 0.614178, -0.340159,
		-0.516312, 0.129792, -0.846508,
		42.035336, 40.170994, 37.270695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.510262, 40.786915, 37.686283>,  <42.396751, 40.080139, 37.863251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.510262, 40.786915, 37.686283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.164101, 40.675507, 37.519669>,  <41.956402, 40.608662, 37.419701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.164101, 40.675507, 37.519669>,  <42.510262, 40.786915, 37.686283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.164101, 40.675507, 37.519669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445946, 0.807174, 0.386785,
		0.228489, 0.520477, -0.822737,
		-0.865405, -0.278520, -0.416535,
		41.904480, 40.591949, 37.394707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.167896, 41.378883, 37.558266>,  <42.510262, 40.786915, 37.686283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.167896, 41.378883, 37.558266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.874226, 41.127155, 37.456337>,  <41.698021, 40.976116, 37.395180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.874226, 41.127155, 37.456337>,  <42.167896, 41.378883, 37.558266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.874226, 41.127155, 37.456337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676760, 0.708475, 0.200148,
		0.054578, 0.319399, -0.946048,
		-0.734178, -0.629323, -0.254823,
		41.653973, 40.938358, 37.379890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688297, 41.657433, 37.094013>,  <42.167896, 41.378883, 37.558266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.688297, 41.657433, 37.094013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.454067, 41.383717, 37.267845>,  <41.313530, 41.219486, 37.372143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.454067, 41.383717, 37.267845>,  <41.688297, 41.657433, 37.094013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.454067, 41.383717, 37.267845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619168, 0.723583, 0.305055,
		-0.523197, -0.090443, -0.847399,
		-0.585574, -0.684286, 0.434576,
		41.278397, 41.178432, 37.398216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.991890, 41.793068, 36.943478>,  <41.688297, 41.657433, 37.094013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.991890, 41.793068, 36.943478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.989525, 41.561440, 37.269581>,  <40.988106, 41.422462, 37.465244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.989525, 41.561440, 37.269581>,  <40.991890, 41.793068, 36.943478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.989525, 41.561440, 37.269581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703336, 0.581941, 0.408244,
		-0.710833, -0.570988, -0.410719,
		-0.005911, -0.579067, 0.815259,
		40.987751, 41.387718, 37.514160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252693, 41.648426, 37.086475>,  <40.991890, 41.793068, 36.943478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252693, 41.648426, 37.086475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.466919, 41.604698, 37.421429>,  <40.595455, 41.578461, 37.622402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.466919, 41.604698, 37.421429>,  <40.252693, 41.648426, 37.086475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466919, 41.604698, 37.421429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633537, 0.603637, 0.483998,
		-0.558389, -0.789728, 0.254028,
		0.535567, -0.109323, 0.837386,
		40.627590, 41.571899, 37.672646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.784424, 41.665257, 37.620598>,  <40.252693, 41.648426, 37.086475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.784424, 41.665257, 37.620598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.114357, 41.726307, 37.838356>,  <40.312317, 41.762936, 37.969009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.114357, 41.726307, 37.838356>,  <39.784424, 41.665257, 37.620598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114357, 41.726307, 37.838356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474416, 0.710608, 0.519582,
		-0.307548, -0.686834, 0.658538,
		0.824829, 0.152625, 0.544392,
		40.361805, 41.772095, 38.001675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533035, 41.880638, 38.329857>,  <39.784424, 41.665257, 37.620598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533035, 41.880638, 38.329857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.906891, 42.020046, 38.301594>,  <40.131203, 42.103691, 38.284637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.906891, 42.020046, 38.301594>,  <39.533035, 41.880638, 38.329857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906891, 42.020046, 38.301594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252362, 0.790037, 0.558709,
		0.250539, -0.504358, 0.826349,
		0.934636, 0.348518, -0.070654,
		40.187283, 42.124603, 38.280399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.954773, 37.285069, 39.535625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774673, 36.930138, 39.575470>,  <39.666615, 36.717178, 39.599377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774673, 36.930138, 39.575470>,  <39.954773, 37.285069, 39.535625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774673, 36.930138, 39.575470> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022959, -0.123023, -0.992138,
		0.892610, -0.444419, 0.075763,
		-0.450245, -0.887332, 0.099608,
		39.639599, 36.663937, 39.605354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402443, 36.846199, 39.169533>,  <39.954773, 37.285069, 39.535625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402443, 36.846199, 39.169533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043945, 36.670563, 39.194649>,  <39.828846, 36.565182, 39.209717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043945, 36.670563, 39.194649>,  <40.402443, 36.846199, 39.169533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043945, 36.670563, 39.194649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001743, -0.138071, -0.990421,
		0.443553, -0.887771, 0.122980,
		-0.896247, -0.439090, 0.062789,
		39.775070, 36.538837, 39.213486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.567974, 36.235126, 38.674541>,  <40.402443, 36.846199, 39.169533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.567974, 36.235126, 38.674541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171326, 36.236935, 38.726170>,  <39.933334, 36.238018, 38.757149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171326, 36.236935, 38.726170>,  <40.567974, 36.235126, 38.674541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.171326, 36.236935, 38.726170> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127969, -0.169358, -0.977211,
		0.017446, -0.985544, 0.168518,
		-0.991625, 0.004517, 0.129074,
		39.873837, 36.238289, 38.764893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387852, 35.635635, 38.366982>,  <40.567974, 36.235126, 38.674541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387852, 35.635635, 38.366982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031193, 35.816162, 38.381287>,  <39.817196, 35.924480, 38.389870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031193, 35.816162, 38.381287>,  <40.387852, 35.635635, 38.366982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031193, 35.816162, 38.381287> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124405, -0.168300, -0.977854,
		-0.435306, -0.876348, 0.206210,
		-0.891646, 0.451319, 0.035760,
		39.763699, 35.951557, 38.392014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886536, 35.243118, 38.081203>,  <40.387852, 35.635635, 38.366982>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886536, 35.243118, 38.081203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708858, 35.598297, 38.033478>,  <39.602253, 35.811405, 38.004841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708858, 35.598297, 38.033478>,  <39.886536, 35.243118, 38.081203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708858, 35.598297, 38.033478> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457199, -0.339185, -0.822146,
		-0.770493, -0.310643, 0.556634,
		-0.444196, 0.887950, -0.119314,
		39.575600, 35.864681, 37.997684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206081, 35.033878, 37.862423>,  <39.886536, 35.243118, 38.081203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206081, 35.033878, 37.862423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237495, 35.416069, 37.748650>,  <39.256344, 35.645382, 37.680386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237495, 35.416069, 37.748650>,  <39.206081, 35.033878, 37.862423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237495, 35.416069, 37.748650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462547, -0.217818, -0.859421,
		-0.883110, 0.199054, 0.424846,
		0.078532, 0.955475, -0.284429,
		39.261055, 35.702713, 37.663322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526577, 35.178749, 37.521286>,  <39.206081, 35.033878, 37.862423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526577, 35.178749, 37.521286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797523, 35.437160, 37.380539>,  <38.960091, 35.592209, 37.296089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797523, 35.437160, 37.380539>,  <38.526577, 35.178749, 37.521286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797523, 35.437160, 37.380539> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380199, -0.102043, -0.919258,
		-0.629776, 0.756458, 0.176500,
		0.677370, 0.646032, -0.351868,
		39.000736, 35.630970, 37.274979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200260, 35.505623, 37.102276>,  <38.526577, 35.178749, 37.521286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200260, 35.505623, 37.102276> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571671, 35.582150, 36.975006>,  <38.794518, 35.628063, 36.898643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571671, 35.582150, 36.975006>,  <38.200260, 35.505623, 37.102276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571671, 35.582150, 36.975006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268791, -0.244758, -0.931582,
		-0.256099, 0.950523, -0.175841,
		0.928528, 0.191312, -0.318174,
		38.850227, 35.639542, 36.879555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107201, 35.857090, 36.450260>,  <38.200260, 35.505623, 37.102276>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107201, 35.857090, 36.450260> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482677, 35.719479, 36.441349>,  <38.707966, 35.636913, 36.436001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482677, 35.719479, 36.441349>,  <38.107201, 35.857090, 36.450260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482677, 35.719479, 36.441349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176418, -0.423825, -0.888397,
		0.296191, 0.837864, -0.458535,
		0.938695, -0.344029, -0.022281,
		38.764286, 35.616268, 36.434666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398979, 36.119637, 35.900387>,  <38.107201, 35.857090, 36.450260>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398979, 36.119637, 35.900387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616817, 35.796577, 35.990826>,  <38.747520, 35.602741, 36.045090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616817, 35.796577, 35.990826>,  <38.398979, 36.119637, 35.900387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616817, 35.796577, 35.990826> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147082, -0.357367, -0.922310,
		0.825703, 0.469029, -0.313410,
		0.544593, -0.807651, 0.226094,
		38.780197, 35.554283, 36.058655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950806, 35.933823, 35.355549>,  <38.398979, 36.119637, 35.900387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950806, 35.933823, 35.355549> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885273, 35.582680, 35.535564>,  <38.845955, 35.371994, 35.643574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885273, 35.582680, 35.535564>,  <38.950806, 35.933823, 35.355549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885273, 35.582680, 35.535564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083679, -0.442190, -0.893009,
		0.982933, -0.183959, -0.001015,
		-0.163829, -0.877854, 0.450037,
		38.836124, 35.319324, 35.670574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355587, 35.579914, 34.934361>,  <38.950806, 35.933823, 35.355549>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355587, 35.579914, 34.934361> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121029, 35.298790, 35.095451>,  <38.980293, 35.130116, 35.192108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121029, 35.298790, 35.095451>,  <39.355587, 35.579914, 34.934361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121029, 35.298790, 35.095451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199589, -0.356489, -0.912732,
		0.785049, -0.615604, 0.068770,
		-0.586397, -0.702814, 0.402729,
		38.945110, 35.087944, 35.216270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830109, 35.032963, 34.926914>,  <39.355587, 35.579914, 34.934361>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.830109, 35.032963, 34.926914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432011, 35.001011, 34.904594>,  <39.193153, 34.981838, 34.891201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432011, 35.001011, 34.904594>,  <39.830109, 35.032963, 34.926914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432011, 35.001011, 34.904594> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069407, -0.179181, -0.981365,
		0.068396, -0.980568, 0.183872,
		-0.995241, -0.079883, -0.055803,
		39.133438, 34.977047, 34.887852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878796, 34.754997, 34.271416>,  <39.830109, 35.032963, 34.926914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.878796, 34.754997, 34.271416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494820, 34.829643, 34.355019>,  <39.264435, 34.874432, 34.405182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494820, 34.829643, 34.355019>,  <39.878796, 34.754997, 34.271416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494820, 34.829643, 34.355019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136791, 0.338883, -0.930831,
		-0.244534, -0.922135, -0.299782,
		-0.959943, 0.186613, 0.209009,
		39.206837, 34.885628, 34.417721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389000, 34.404026, 33.894295>,  <39.878796, 34.754997, 34.271416>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389000, 34.404026, 33.894295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617348, 34.116058, 33.736397>,  <40.754356, 33.943279, 33.641659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617348, 34.116058, 33.736397>,  <40.389000, 34.404026, 33.894295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.617348, 34.116058, 33.736397> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341525, -0.645434, 0.683210,
		-0.746640, -0.255206, -0.614328,
		0.570867, -0.719920, -0.394747,
		40.788609, 33.900082, 33.617973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921494, 33.750401, 33.762321>,  <40.389000, 34.404026, 33.894295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921494, 33.750401, 33.762321> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297318, 33.616947, 33.793098>,  <40.522812, 33.536877, 33.811565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297318, 33.616947, 33.793098>,  <39.921494, 33.750401, 33.762321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297318, 33.616947, 33.793098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307588, -0.723756, 0.617711,
		-0.150400, -0.604042, -0.782632,
		0.939558, -0.333632, 0.076944,
		40.579185, 33.516857, 33.816181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840118, 33.041103, 33.784748>,  <39.921494, 33.750401, 33.762321>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840118, 33.041103, 33.784748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224274, 33.073704, 33.891335>,  <40.454769, 33.093266, 33.955284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224274, 33.073704, 33.891335>,  <39.840118, 33.041103, 33.784748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.224274, 33.073704, 33.891335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099588, -0.792713, 0.601405,
		0.260247, -0.604122, -0.753199,
		0.960393, 0.081504, 0.266464,
		40.512390, 33.098156, 33.971275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218449, 32.309887, 33.693329>,  <39.840118, 33.041103, 33.784748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218449, 32.309887, 33.693329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426426, 32.523136, 33.960293>,  <40.551212, 32.651085, 34.120472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426426, 32.523136, 33.960293>,  <40.218449, 32.309887, 33.693329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426426, 32.523136, 33.960293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123666, -0.726114, 0.676362,
		0.845199, -0.434208, -0.311611,
		0.519947, 0.533125, 0.667408,
		40.582409, 32.683075, 34.160515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604351, 31.853804, 34.056087>,  <40.218449, 32.309887, 33.693329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.604351, 31.853804, 34.056087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595238, 32.172272, 34.297947>,  <40.589771, 32.363354, 34.443062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595238, 32.172272, 34.297947>,  <40.604351, 31.853804, 34.056087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595238, 32.172272, 34.297947> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235011, -0.592121, 0.770820,
		0.971726, -0.124536, 0.200599,
		-0.022785, 0.796168, 0.604646,
		40.588402, 32.411121, 34.479340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791172, 31.498402, 34.778774>,  <40.604351, 31.853804, 34.056087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.791172, 31.498402, 34.778774> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685051, 31.876598, 34.854313>,  <40.621380, 32.103516, 34.899635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685051, 31.876598, 34.854313>,  <40.791172, 31.498402, 34.778774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.685051, 31.876598, 34.854313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077358, -0.216104, 0.973301,
		0.961057, 0.243609, 0.130474,
		-0.265300, 0.945491, 0.188843,
		40.605461, 32.160244, 34.910965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.239429, 31.847328, 35.317703>,  <40.791172, 31.498402, 34.778774>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.239429, 31.847328, 35.317703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.896759, 32.052959, 35.334789>,  <40.691154, 32.176338, 35.345039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.896759, 32.052959, 35.334789>,  <41.239429, 31.847328, 35.317703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.896759, 32.052959, 35.334789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068205, -0.194955, 0.978438,
		0.511318, 0.835295, 0.202077,
		-0.856681, 0.514076, 0.042713,
		40.639755, 32.207184, 35.347603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.280422, 32.325600, 35.923943>,  <41.239429, 31.847328, 35.317703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.280422, 32.325600, 35.923943> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885864, 32.294365, 35.866066>,  <40.649132, 32.275623, 35.831341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885864, 32.294365, 35.866066>,  <41.280422, 32.325600, 35.923943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.885864, 32.294365, 35.866066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147629, 0.033246, 0.988484,
		-0.072374, 0.996392, -0.044321,
		-0.986391, -0.078084, -0.144691,
		40.589947, 32.270939, 35.822659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937183, 32.857536, 36.290276>,  <41.280422, 32.325600, 35.923943>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937183, 32.857536, 36.290276> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.635750, 32.603241, 36.223408>,  <40.454887, 32.450665, 36.183289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.635750, 32.603241, 36.223408>,  <40.937183, 32.857536, 36.290276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.635750, 32.603241, 36.223408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233295, 0.020907, 0.972181,
		-0.614555, 0.771624, -0.164069,
		-0.753588, -0.635736, -0.167168,
		40.409672, 32.412521, 36.173256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341770, 33.259834, 36.545097>,  <40.937183, 32.857536, 36.290276>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341770, 33.259834, 36.545097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.258022, 32.868732, 36.540001>,  <40.207775, 32.634071, 36.536945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.258022, 32.868732, 36.540001>,  <40.341770, 33.259834, 36.545097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.258022, 32.868732, 36.540001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289375, 0.049512, 0.955934,
		-0.934038, 0.203829, -0.293304,
		-0.209370, -0.977754, -0.012737,
		40.195213, 32.575405, 36.536179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756199, 33.218838, 36.791012>,  <40.341770, 33.259834, 36.545097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756199, 33.218838, 36.791012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885983, 32.844933, 36.848892>,  <39.963852, 32.620590, 36.883621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885983, 32.844933, 36.848892>,  <39.756199, 33.218838, 36.791012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885983, 32.844933, 36.848892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152972, 0.099106, 0.983248,
		-0.933449, -0.341156, -0.110838,
		0.324457, -0.934768, 0.144698,
		39.983318, 32.564503, 36.892303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176010, 32.835644, 37.212677>,  <39.756199, 33.218838, 36.791012>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176010, 32.835644, 37.212677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522762, 32.641743, 37.259205>,  <39.730816, 32.525402, 37.287121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522762, 32.641743, 37.259205>,  <39.176010, 32.835644, 37.212677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.522762, 32.641743, 37.259205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163486, -0.056013, 0.984954,
		-0.470943, -0.872856, -0.127806,
		0.866883, -0.484752, 0.116321,
		39.782825, 32.496319, 37.294102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082924, 32.219799, 37.639198>,  <39.176010, 32.835644, 37.212677>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082924, 32.219799, 37.639198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470264, 32.318863, 37.651585>,  <39.702667, 32.378304, 37.659016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470264, 32.318863, 37.651585>,  <39.082924, 32.219799, 37.639198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470264, 32.318863, 37.651585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005356, -0.144648, 0.989469,
		0.249535, -0.957987, -0.141397,
		0.968351, 0.247664, 0.030964,
		39.760769, 32.393162, 37.660873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270554, 31.719019, 38.111629>,  <39.082924, 32.219799, 37.639198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270554, 31.719019, 38.111629> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562790, 31.991013, 38.086758>,  <39.738132, 32.154209, 38.071835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562790, 31.991013, 38.086758>,  <39.270554, 31.719019, 38.111629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562790, 31.991013, 38.086758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086302, -0.001618, 0.996268,
		0.677344, -0.733226, -0.059866,
		0.730587, 0.679983, -0.062183,
		39.781967, 32.195007, 38.068104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131161, 30.989620, 38.065258>,  <39.270554, 31.719019, 38.111629>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131161, 30.989620, 38.065258> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773479, 30.899231, 38.219830>,  <38.558868, 30.844997, 38.312572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773479, 30.899231, 38.219830>,  <39.131161, 30.989620, 38.065258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773479, 30.899231, 38.219830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378887, -0.077691, -0.922176,
		0.238411, -0.971030, -0.016146,
		-0.894206, -0.225974, 0.386433,
		38.505219, 30.831440, 38.335758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837090, 30.294373, 37.729836>,  <39.131161, 30.989620, 38.065258>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837090, 30.294373, 37.729836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513271, 30.486155, 37.865337>,  <38.318981, 30.601225, 37.946636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513271, 30.486155, 37.865337>,  <38.837090, 30.294373, 37.729836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513271, 30.486155, 37.865337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433967, -0.100147, -0.895346,
		-0.395355, -0.871832, 0.289142,
		-0.809548, 0.479457, 0.338753,
		38.270409, 30.629992, 37.966965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317440, 29.950054, 37.380569>,  <38.837090, 30.294373, 37.729836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317440, 29.950054, 37.380569> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122925, 30.276423, 37.505661>,  <38.006218, 30.472244, 37.580715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122925, 30.276423, 37.505661>,  <38.317440, 29.950054, 37.380569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122925, 30.276423, 37.505661> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566969, -0.022301, -0.823437,
		-0.664886, -0.577732, 0.473447,
		-0.486284, 0.815922, 0.312728,
		37.977039, 30.521198, 37.599480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609348, 29.864222, 37.170547>,  <38.317440, 29.950054, 37.380569>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609348, 29.864222, 37.170547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618942, 30.254591, 37.257267>,  <37.624699, 30.488811, 37.309299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618942, 30.254591, 37.257267>,  <37.609348, 29.864222, 37.170547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618942, 30.254591, 37.257267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605730, 0.186705, -0.773455,
		-0.795308, -0.112771, 0.595623,
		0.023982, 0.975922, 0.216797,
		37.626137, 30.547367, 37.322308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910366, 30.077906, 37.283501>,  <37.609348, 29.864222, 37.170547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910366, 30.077906, 37.283501> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117062, 30.400177, 37.167664>,  <37.241077, 30.593540, 37.098160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117062, 30.400177, 37.167664>,  <36.910366, 30.077906, 37.283501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117062, 30.400177, 37.167664> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765424, 0.283214, -0.577855,
		-0.383548, 0.520262, 0.763032,
		0.516738, 0.805678, -0.289595,
		37.272083, 30.641880, 37.080784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467667, 30.584190, 37.342915>,  <36.910366, 30.077906, 37.283501>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467667, 30.584190, 37.342915> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748924, 30.708965, 37.087326>,  <36.917679, 30.783831, 36.933971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748924, 30.708965, 37.087326>,  <36.467667, 30.584190, 37.342915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748924, 30.708965, 37.087326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706416, 0.408889, -0.577742,
		0.081052, 0.857617, 0.507863,
		0.703141, 0.311936, -0.638976,
		36.959866, 30.802546, 36.895634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076244, 31.083717, 37.031773>,  <36.467667, 30.584190, 37.342915>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076244, 31.083717, 37.031773> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397839, 31.093969, 36.794136>,  <36.590797, 31.100121, 36.651554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397839, 31.093969, 36.794136>,  <36.076244, 31.083717, 37.031773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397839, 31.093969, 36.794136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569675, 0.319676, -0.757151,
		0.170512, 0.947180, 0.271617,
		0.803988, 0.025630, -0.594093,
		36.639034, 31.101658, 36.615910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144573, 31.724768, 36.750031>,  <36.076244, 31.083717, 37.031773>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144573, 31.724768, 36.750031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339169, 31.503635, 36.479412>,  <36.455925, 31.370956, 36.317043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339169, 31.503635, 36.479412>,  <36.144573, 31.724768, 36.750031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339169, 31.503635, 36.479412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544792, 0.413427, -0.729575,
		0.683033, 0.723502, -0.100053,
		0.486485, -0.552832, -0.676542,
		36.485115, 31.337786, 36.276451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457031, 32.092163, 36.263401>,  <36.144573, 31.724768, 36.750031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457031, 32.092163, 36.263401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428795, 31.747864, 36.061756>,  <36.411854, 31.541285, 35.940769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428795, 31.747864, 36.061756>,  <36.457031, 32.092163, 36.263401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428795, 31.747864, 36.061756> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472659, 0.473902, -0.742974,
		0.878414, 0.185831, -0.440291,
		-0.070587, -0.860746, -0.504117,
		36.407619, 31.489639, 35.910522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510647, 32.214764, 35.640888>,  <36.457031, 32.092163, 36.263401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510647, 32.214764, 35.640888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350922, 31.850994, 35.594421>,  <36.255089, 31.632732, 35.566544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350922, 31.850994, 35.594421>,  <36.510647, 32.214764, 35.640888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350922, 31.850994, 35.594421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471891, 0.312501, -0.824417,
		0.786048, -0.274380, -0.553935,
		-0.399309, -0.909428, -0.116164,
		36.231129, 31.578165, 35.559574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353851, 32.234524, 34.956509>,  <36.510647, 32.214764, 35.640888>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353851, 32.234524, 34.956509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159836, 31.910042, 35.087158>,  <36.043427, 31.715353, 35.165550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159836, 31.910042, 35.087158>,  <36.353851, 32.234524, 34.956509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159836, 31.910042, 35.087158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671542, 0.106266, -0.733306,
		0.560152, -0.575025, -0.596301,
		-0.485037, -0.811205, 0.326629,
		36.014324, 31.666681, 35.185146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226093, 31.910601, 34.396721>,  <36.353851, 32.234524, 34.956509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226093, 31.910601, 34.396721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955566, 31.814571, 34.675274>,  <35.793251, 31.756954, 34.842407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955566, 31.814571, 34.675274>,  <36.226093, 31.910601, 34.396721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955566, 31.814571, 34.675274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734704, 0.151946, -0.661152,
		0.052911, -0.958790, -0.279146,
		-0.676321, -0.240072, 0.696388,
		35.752670, 31.742550, 34.884190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.776237, 29.384068, 41.647141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.635239, 29.747814, 41.735504>,  <39.550640, 29.966063, 41.788521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.635239, 29.747814, 41.735504>,  <39.776237, 29.384068, 41.647141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635239, 29.747814, 41.735504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310222, 0.109164, -0.944376,
		-0.882899, -0.401417, 0.243626,
		-0.352494, 0.909366, 0.220909,
		39.529491, 30.020624, 41.801777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315468, 29.433706, 41.114758>,  <39.776237, 29.384068, 41.647141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315468, 29.433706, 41.114758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.324833, 29.801523, 41.271675>,  <39.330452, 30.022213, 41.365826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.324833, 29.801523, 41.271675>,  <39.315468, 29.433706, 41.114758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324833, 29.801523, 41.271675> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253557, 0.385032, -0.887389,
		-0.967037, -0.078689, 0.242172,
		0.023416, 0.919543, 0.392292,
		39.331860, 30.077387, 41.389362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653946, 29.656212, 41.130978>,  <39.315468, 29.433706, 41.114758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653946, 29.656212, 41.130978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.884125, 29.983177, 41.120457>,  <39.022232, 30.179356, 41.114143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.884125, 29.983177, 41.120457>,  <38.653946, 29.656212, 41.130978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884125, 29.983177, 41.120457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466423, 0.301605, -0.831555,
		-0.671792, 0.490786, 0.554819,
		0.575452, 0.817413, -0.026298,
		39.056759, 30.228401, 41.112568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216419, 30.320246, 41.205956>,  <38.653946, 29.656212, 41.130978>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216419, 30.320246, 41.205956> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.556732, 30.387165, 41.006687>,  <38.760921, 30.427317, 40.887127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.556732, 30.387165, 41.006687>,  <38.216419, 30.320246, 41.205956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556732, 30.387165, 41.006687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524664, 0.324247, -0.787142,
		0.029842, 0.931061, 0.363641,
		0.850786, 0.167300, -0.498170,
		38.811970, 30.437355, 40.857235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952103, 30.690260, 40.704109>,  <38.216419, 30.320246, 41.205956>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952103, 30.690260, 40.704109> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.334885, 30.688662, 40.588024>,  <38.564552, 30.687702, 40.518375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.334885, 30.688662, 40.588024>,  <37.952103, 30.690260, 40.704109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334885, 30.688662, 40.588024> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265946, 0.388369, -0.882293,
		0.116234, 0.921495, 0.370589,
		0.956955, -0.003996, -0.290210,
		38.621971, 30.687462, 40.500961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137356, 31.354128, 40.394753>,  <37.952103, 30.690260, 40.704109>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137356, 31.354128, 40.394753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.391804, 31.074032, 40.265125>,  <38.544472, 30.905975, 40.187347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.391804, 31.074032, 40.265125>,  <38.137356, 31.354128, 40.394753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391804, 31.074032, 40.265125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204645, 0.251846, -0.945883,
		0.743959, 0.668011, 0.016903,
		0.636117, -0.700239, -0.324069,
		38.582638, 30.863960, 40.167904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358982, 31.665434, 39.841167>,  <38.137356, 31.354128, 40.394753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358982, 31.665434, 39.841167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.495258, 31.294384, 39.779922>,  <38.577023, 31.071754, 39.743176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.495258, 31.294384, 39.779922>,  <38.358982, 31.665434, 39.841167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495258, 31.294384, 39.779922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480822, -0.031960, -0.876236,
		0.807925, 0.372143, -0.456911,
		0.340688, -0.927625, -0.153113,
		38.597466, 31.016096, 39.733990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939568, 31.582132, 39.314026>,  <38.358982, 31.665434, 39.841167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939568, 31.582132, 39.314026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.769379, 31.220278, 39.304180>,  <38.667267, 31.003164, 39.298271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.769379, 31.220278, 39.304180>,  <38.939568, 31.582132, 39.314026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769379, 31.220278, 39.304180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121382, 0.083998, -0.989045,
		0.896795, -0.417821, -0.145546,
		-0.425469, -0.904638, -0.024613,
		38.641739, 30.948887, 39.296795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162663, 31.335680, 38.715099>,  <38.939568, 31.582132, 39.314026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162663, 31.335680, 38.715099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.856415, 31.086437, 38.779053>,  <38.672665, 30.936892, 38.817425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.856415, 31.086437, 38.779053>,  <39.162663, 31.335680, 38.715099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856415, 31.086437, 38.779053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196766, -0.009797, -0.980402,
		0.612460, -0.782076, -0.115106,
		-0.765621, -0.623106, 0.159886,
		38.626728, 30.899506, 38.827019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.891613, 31.516699, 38.777782>,  <39.162663, 31.335680, 38.715099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.891613, 31.516699, 38.777782> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.971153, 31.872437, 38.613091>,  <40.018879, 32.085880, 38.514275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.971153, 31.872437, 38.613091>,  <39.891613, 31.516699, 38.777782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.971153, 31.872437, 38.613091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371440, 0.320384, 0.871428,
		0.906912, -0.326219, -0.266630,
		0.198853, 0.889346, -0.411731,
		40.030807, 32.139240, 38.489571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.534069, 31.666687, 38.895046>,  <39.891613, 31.516699, 38.777782>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.534069, 31.666687, 38.895046> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.366898, 32.027122, 38.848778>,  <40.266594, 32.243382, 38.821018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.366898, 32.027122, 38.848778>,  <40.534069, 31.666687, 38.895046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366898, 32.027122, 38.848778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240495, 0.232514, 0.942390,
		0.876070, 0.366033, -0.313881,
		-0.417928, 0.901087, -0.115670,
		40.241520, 32.297447, 38.814075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976898, 32.216213, 38.911629>,  <40.534069, 31.666687, 38.895046>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976898, 32.216213, 38.911629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.648865, 32.429058, 38.995838>,  <40.452045, 32.556767, 39.046364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.648865, 32.429058, 38.995838>,  <40.976898, 32.216213, 38.911629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648865, 32.429058, 38.995838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431199, 0.332747, 0.838658,
		0.376207, 0.778548, -0.502326,
		-0.820082, 0.532112, 0.210528,
		40.402840, 32.588692, 39.058998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139530, 32.976196, 38.982323>,  <40.976898, 32.216213, 38.911629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139530, 32.976196, 38.982323> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.799309, 32.916046, 39.183891>,  <40.595177, 32.879955, 39.304832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.799309, 32.916046, 39.183891>,  <41.139530, 32.976196, 38.982323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799309, 32.916046, 39.183891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406542, 0.419820, 0.811465,
		-0.333584, 0.895063, -0.295945,
		-0.850556, -0.150378, 0.503926,
		40.544144, 32.870934, 39.335068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939114, 33.635880, 39.419949>,  <41.139530, 32.976196, 38.982323>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939114, 33.635880, 39.419949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.729496, 33.358170, 39.617275>,  <40.603725, 33.191544, 39.735672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.729496, 33.358170, 39.617275>,  <40.939114, 33.635880, 39.419949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.729496, 33.358170, 39.617275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556948, 0.158865, 0.815212,
		-0.644350, 0.701962, 0.303420,
		-0.524045, -0.694271, 0.493321,
		40.572281, 33.149887, 39.765270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828392, 33.910515, 39.993690>,  <40.939114, 33.635880, 39.419949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828392, 33.910515, 39.993690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.743767, 33.528633, 40.077389>,  <40.692993, 33.299503, 40.127609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.743767, 33.528633, 40.077389>,  <40.828392, 33.910515, 39.993690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.743767, 33.528633, 40.077389> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319618, 0.134743, 0.937917,
		-0.923627, 0.265305, 0.276634,
		-0.211560, -0.954703, 0.209249,
		40.680298, 33.242222, 40.140163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602367, 34.009056, 40.684879>,  <40.828392, 33.910515, 39.993690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602367, 34.009056, 40.684879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.694889, 33.620819, 40.658207>,  <40.750401, 33.387875, 40.642204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.694889, 33.620819, 40.658207>,  <40.602367, 34.009056, 40.684879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.694889, 33.620819, 40.658207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365897, 0.023277, 0.930364,
		-0.901454, -0.239593, 0.360522,
		0.231301, -0.970594, -0.066683,
		40.764278, 33.329639, 40.638203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235710, 33.703449, 41.157692>,  <40.602367, 34.009056, 40.684879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.235710, 33.703449, 41.157692> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.531330, 33.449776, 41.066811>,  <40.708702, 33.297569, 41.012283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.531330, 33.449776, 41.066811>,  <40.235710, 33.703449, 41.157692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531330, 33.449776, 41.066811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389462, 0.127045, 0.912239,
		-0.549665, -0.762671, 0.340883,
		0.739045, -0.634187, -0.227199,
		40.753044, 33.259521, 40.998650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326599, 33.368484, 41.747047>,  <40.235710, 33.703449, 41.157692>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326599, 33.368484, 41.747047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.666916, 33.310413, 41.545025>,  <40.871105, 33.275570, 41.423813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.666916, 33.310413, 41.545025>,  <40.326599, 33.368484, 41.747047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.666916, 33.310413, 41.545025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520942, 0.106593, 0.846911,
		-0.069115, -0.983647, 0.166316,
		0.850790, -0.145175, -0.505056,
		40.922153, 33.266861, 41.393509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858334, 32.961021, 42.242100>,  <40.326599, 33.368484, 41.747047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858334, 32.961021, 42.242100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.085056, 33.080116, 41.934834>,  <41.221088, 33.151573, 41.750473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.085056, 33.080116, 41.934834>,  <40.858334, 32.961021, 42.242100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.085056, 33.080116, 41.934834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731505, 0.247044, 0.635507,
		0.378986, -0.922129, -0.077771,
		0.566807, 0.297738, -0.768168,
		41.255100, 33.169437, 41.704384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369190, 32.450737, 42.244194>,  <40.858334, 32.961021, 42.242100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.369190, 32.450737, 42.244194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.501991, 32.794312, 42.088242>,  <41.581673, 33.000454, 41.994671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.501991, 32.794312, 42.088242>,  <41.369190, 32.450737, 42.244194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.501991, 32.794312, 42.088242> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665317, 0.079767, 0.742287,
		0.668675, -0.505836, -0.544980,
		0.332004, 0.858934, -0.389880,
		41.601593, 33.051991, 41.971279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.118336, 32.346439, 42.168308>,  <41.369190, 32.450737, 42.244194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.118336, 32.346439, 42.168308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.051006, 32.740734, 42.168285>,  <42.010609, 32.977310, 42.168274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.051006, 32.740734, 42.168285>,  <42.118336, 32.346439, 42.168308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.051006, 32.740734, 42.168285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597607, 0.102088, 0.795263,
		0.783923, 0.133826, -0.606264,
		-0.168319, 0.985733, -0.000054,
		42.000511, 33.036453, 42.168270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.727306, 32.581345, 42.262791>,  <42.118336, 32.346439, 42.168308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.727306, 32.581345, 42.262791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.502048, 32.896580, 42.362213>,  <42.366894, 33.085720, 42.421867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.502048, 32.896580, 42.362213>,  <42.727306, 32.581345, 42.262791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.502048, 32.896580, 42.362213> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654676, 0.241945, 0.716144,
		0.504249, 0.566017, -0.652194,
		-0.563145, 0.788091, 0.248557,
		42.333107, 33.133007, 42.436779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.254433, 33.241463, 42.349060>,  <42.727306, 32.581345, 42.262791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.254433, 33.241463, 42.349060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.911499, 33.304558, 42.545055>,  <42.705738, 33.342415, 42.662651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.911499, 33.304558, 42.545055>,  <43.254433, 33.241463, 42.349060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.911499, 33.304558, 42.545055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509590, 0.125596, 0.851201,
		0.072729, 0.979461, -0.188062,
		-0.857338, 0.157742, 0.489989,
		42.654297, 33.351879, 42.692051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.080048, 33.611969, 46.163658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.396778, 33.380455, 46.085659>,  <36.586815, 33.241547, 46.038860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.396778, 33.380455, 46.085659>,  <36.080048, 33.611969, 46.163658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396778, 33.380455, 46.085659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151163, 0.123621, -0.980749,
		0.591749, 0.806055, 0.010395,
		0.791823, -0.578785, -0.194998,
		36.634323, 33.206818, 46.027161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262337, 33.816280, 45.444805>,  <36.080048, 33.611969, 46.163658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262337, 33.816280, 45.444805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.505512, 33.502346, 45.492874>,  <36.651417, 33.313984, 45.521713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.505512, 33.502346, 45.492874>,  <36.262337, 33.816280, 45.444805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505512, 33.502346, 45.492874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058897, -0.106357, -0.992582,
		0.791799, 0.610504, -0.018433,
		0.607936, -0.784840, 0.120170,
		36.687893, 33.266895, 45.528927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781235, 33.928112, 45.052902>,  <36.262337, 33.816280, 45.444805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781235, 33.928112, 45.052902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.745483, 33.534264, 45.112946>,  <36.724033, 33.297955, 45.148972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.745483, 33.534264, 45.112946>,  <36.781235, 33.928112, 45.052902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745483, 33.534264, 45.112946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063258, -0.144797, -0.987437,
		0.993987, -0.097750, -0.049344,
		-0.089377, -0.984621, 0.150110,
		36.718670, 33.238876, 45.157978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958836, 33.689682, 44.449787>,  <36.781235, 33.928112, 45.052902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958836, 33.689682, 44.449787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.787411, 33.366844, 44.612236>,  <36.684555, 33.173141, 44.709705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.787411, 33.366844, 44.612236>,  <36.958836, 33.689682, 44.449787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787411, 33.366844, 44.612236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328857, -0.279319, -0.902127,
		0.841536, -0.520178, -0.145711,
		-0.428567, -0.807091, 0.406121,
		36.658840, 33.124718, 44.734074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113960, 33.176849, 43.945290>,  <36.958836, 33.689682, 44.449787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113960, 33.176849, 43.945290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.795589, 33.070190, 44.162693>,  <36.604568, 33.006195, 44.293133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.795589, 33.070190, 44.162693>,  <37.113960, 33.176849, 43.945290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795589, 33.070190, 44.162693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451463, -0.336704, -0.826324,
		0.403335, -0.903068, 0.147612,
		-0.795928, -0.266644, 0.543506,
		36.556812, 32.990196, 44.325745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820946, 32.663681, 43.524654>,  <37.113960, 33.176849, 43.945290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820946, 32.663681, 43.524654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.533661, 32.776463, 43.779110>,  <36.361290, 32.844131, 43.931782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.533661, 32.776463, 43.779110>,  <36.820946, 32.663681, 43.524654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533661, 32.776463, 43.779110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691094, -0.182662, -0.699303,
		-0.080971, -0.941880, 0.326046,
		-0.718216, 0.281951, 0.636137,
		36.318195, 32.861050, 43.969952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291710, 32.193775, 43.417820>,  <36.820946, 32.663681, 43.524654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291710, 32.193775, 43.417820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.133175, 32.523121, 43.580292>,  <36.038052, 32.720730, 43.677773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.133175, 32.523121, 43.580292>,  <36.291710, 32.193775, 43.417820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133175, 32.523121, 43.580292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711235, 0.004406, -0.702940,
		-0.580568, -0.567490, 0.583862,
		-0.396339, 0.823368, 0.406177,
		36.014275, 32.770130, 43.702145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638771, 32.038757, 43.453384>,  <36.291710, 32.193775, 43.417820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638771, 32.038757, 43.453384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.656429, 32.437233, 43.423313>,  <35.667023, 32.676319, 43.405270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.656429, 32.437233, 43.423313>,  <35.638771, 32.038757, 43.453384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656429, 32.437233, 43.423313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571694, -0.036521, -0.819654,
		-0.819279, 0.079161, 0.567905,
		0.044144, 0.996193, -0.075177,
		35.669674, 32.736092, 43.400761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954121, 32.230640, 43.177956>,  <35.638771, 32.038757, 43.453384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954121, 32.230640, 43.177956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.171207, 32.559185, 43.107727>,  <35.301460, 32.756313, 43.065590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.171207, 32.559185, 43.107727>,  <34.954121, 32.230640, 43.177956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171207, 32.559185, 43.107727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559837, 0.197926, -0.804617,
		-0.626132, 0.534967, 0.567246,
		0.542716, 0.821362, -0.175567,
		35.334023, 32.805595, 43.055058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463947, 32.697067, 43.038521>,  <34.954121, 32.230640, 43.177956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463947, 32.697067, 43.038521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.805939, 32.846783, 42.894897>,  <35.011135, 32.936611, 42.808723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.805939, 32.846783, 42.894897>,  <34.463947, 32.697067, 43.038521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805939, 32.846783, 42.894897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498602, 0.402466, -0.767735,
		-0.142845, 0.835423, 0.530720,
		0.854980, 0.374285, -0.359054,
		35.062431, 32.959068, 42.787182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321953, 33.308155, 42.781670>,  <34.463947, 32.697067, 43.038521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321953, 33.308155, 42.781670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.667542, 33.241756, 42.591511>,  <34.874893, 33.201920, 42.477413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.667542, 33.241756, 42.591511>,  <34.321953, 33.308155, 42.781670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667542, 33.241756, 42.591511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392060, 0.370698, -0.841945,
		0.315987, 0.913799, 0.255192,
		0.863968, -0.165993, -0.475400,
		34.926731, 33.191959, 42.448891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572418, 33.962078, 42.584904>,  <34.321953, 33.308155, 42.781670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572418, 33.962078, 42.584904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.762913, 33.694881, 42.356174>,  <34.877209, 33.534561, 42.218937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.762913, 33.694881, 42.356174>,  <34.572418, 33.962078, 42.584904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762913, 33.694881, 42.356174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537602, 0.293410, -0.790503,
		0.695830, 0.683880, -0.219382,
		0.476240, -0.667996, -0.571819,
		34.905785, 33.494484, 42.184628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746162, 34.364849, 41.965965>,  <34.572418, 33.962078, 42.584904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746162, 34.364849, 41.965965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.778831, 33.977955, 41.869816>,  <34.798431, 33.745819, 41.812126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.778831, 33.977955, 41.869816>,  <34.746162, 34.364849, 41.965965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778831, 33.977955, 41.869816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352324, 0.197591, -0.914782,
		0.932308, 0.159401, -0.324643,
		0.081671, -0.967238, -0.240376,
		34.803333, 33.687782, 41.797703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267475, 34.315784, 41.468014>,  <34.746162, 34.364849, 41.965965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267475, 34.315784, 41.468014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.016209, 34.006660, 41.431843>,  <34.865448, 33.821186, 41.410141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.016209, 34.006660, 41.431843>,  <35.267475, 34.315784, 41.468014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016209, 34.006660, 41.431843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254486, 0.313884, -0.914720,
		0.735289, -0.551580, -0.393839,
		-0.628161, -0.772810, -0.090426,
		34.827759, 33.774818, 41.404716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960926, 34.356632, 41.298645>,  <35.267475, 34.315784, 41.468014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960926, 34.356632, 41.298645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.132435, 34.707485, 41.212120>,  <36.235340, 34.917995, 41.160206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.132435, 34.707485, 41.212120>,  <35.960926, 34.356632, 41.298645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132435, 34.707485, 41.212120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406203, 0.026689, 0.913393,
		0.806938, -0.479509, -0.344850,
		0.428776, 0.877131, -0.216314,
		36.261066, 34.970623, 41.147224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629093, 34.328346, 41.620037>,  <35.960926, 34.356632, 41.298645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629093, 34.328346, 41.620037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.582287, 34.719200, 41.549038>,  <36.554203, 34.953712, 41.506439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.582287, 34.719200, 41.549038>,  <36.629093, 34.328346, 41.620037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582287, 34.719200, 41.549038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556124, 0.212551, 0.803461,
		0.822820, -0.004692, -0.568282,
		-0.117019, 0.977139, -0.177501,
		36.547180, 35.012341, 41.495789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262150, 34.621799, 41.806564>,  <36.629093, 34.328346, 41.620037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262150, 34.621799, 41.806564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.034283, 34.950375, 41.795826>,  <36.897560, 35.147518, 41.789383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.034283, 34.950375, 41.795826>,  <37.262150, 34.621799, 41.806564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034283, 34.950375, 41.795826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380972, 0.292873, 0.876975,
		0.728240, 0.489360, -0.479785,
		-0.569672, 0.821433, -0.026849,
		36.863380, 35.196804, 41.787769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657383, 35.307255, 41.918255>,  <37.262150, 34.621799, 41.806564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657383, 35.307255, 41.918255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.293098, 35.397625, 42.056564>,  <37.074528, 35.451847, 42.139549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.293098, 35.397625, 42.056564>,  <37.657383, 35.307255, 41.918255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293098, 35.397625, 42.056564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406351, 0.340028, 0.848092,
		0.074030, 0.912875, -0.401472,
		-0.910713, 0.225922, 0.345775,
		37.019886, 35.465401, 42.160297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689606, 36.064770, 42.059883>,  <37.657383, 35.307255, 41.918255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689606, 36.064770, 42.059883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.394493, 35.923847, 42.290207>,  <37.217426, 35.839294, 42.428402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.394493, 35.923847, 42.290207>,  <37.689606, 36.064770, 42.059883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394493, 35.923847, 42.290207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450711, 0.377928, 0.808721,
		-0.502531, 0.856185, -0.120042,
		-0.737782, -0.352303, 0.575812,
		37.173157, 35.818157, 42.462952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508862, 36.534340, 42.621239>,  <37.689606, 36.064770, 42.059883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508862, 36.534340, 42.621239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.311810, 36.218193, 42.766918>,  <37.193577, 36.028507, 42.854324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.311810, 36.218193, 42.766918>,  <37.508862, 36.534340, 42.621239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311810, 36.218193, 42.766918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379349, 0.181609, 0.907255,
		-0.783203, 0.585100, 0.210358,
		-0.492632, -0.790364, 0.364194,
		37.164021, 35.981083, 42.876175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166752, 36.716644, 43.302448>,  <37.508862, 36.534340, 42.621239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166752, 36.716644, 43.302448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.188320, 36.317234, 43.304688>,  <37.201263, 36.077587, 43.306030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.188320, 36.317234, 43.304688>,  <37.166752, 36.716644, 43.302448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188320, 36.317234, 43.304688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377952, 0.025595, 0.925472,
		-0.924254, -0.047791, 0.378777,
		0.053924, -0.998530, 0.005594,
		37.204498, 36.017673, 43.306366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897812, 36.558399, 43.946835>,  <37.166752, 36.716644, 43.302448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897812, 36.558399, 43.946835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.120083, 36.247253, 43.829430>,  <37.253445, 36.060566, 43.758987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.120083, 36.247253, 43.829430>,  <36.897812, 36.558399, 43.946835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120083, 36.247253, 43.829430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364741, -0.089162, 0.926830,
		-0.747119, -0.622073, 0.234174,
		0.555677, -0.777866, -0.293510,
		37.286785, 36.013893, 43.741375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072029, 36.226231, 44.582905>,  <36.897812, 36.558399, 43.946835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072029, 36.226231, 44.582905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.309795, 36.006104, 44.348358>,  <37.452454, 35.874027, 44.207630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.309795, 36.006104, 44.348358>,  <37.072029, 36.226231, 44.582905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309795, 36.006104, 44.348358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542437, -0.263907, 0.797568,
		-0.593661, -0.792151, 0.141643,
		0.594414, -0.550318, -0.586363,
		37.488121, 35.841007, 44.172447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167934, 35.460758, 44.759659>,  <37.072029, 36.226231, 44.582905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167934, 35.460758, 44.759659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.490578, 35.544621, 44.538593>,  <37.684162, 35.594936, 44.405956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.490578, 35.544621, 44.538593>,  <37.167934, 35.460758, 44.759659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490578, 35.544621, 44.538593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588388, -0.374087, 0.716839,
		-0.056454, -0.903385, -0.425099,
		0.806606, 0.209655, -0.552659,
		37.732559, 35.607517, 44.372795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608307, 34.874413, 44.831654>,  <37.167934, 35.460758, 44.759659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608307, 34.874413, 44.831654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.869549, 35.150917, 44.707970>,  <38.026295, 35.316818, 44.633759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.869549, 35.150917, 44.707970>,  <37.608307, 34.874413, 44.831654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869549, 35.150917, 44.707970> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652126, -0.305842, 0.693681,
		0.384943, -0.654693, -0.650535,
		0.653109, 0.691258, -0.309210,
		38.065483, 35.358295, 44.615208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165077, 34.484035, 44.595669>,  <37.608307, 34.874413, 44.831654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165077, 34.484035, 44.595669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.262428, 34.851902, 44.718948>,  <38.320839, 35.072620, 44.792915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.262428, 34.851902, 44.718948>,  <38.165077, 34.484035, 44.595669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262428, 34.851902, 44.718948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639541, -0.391055, 0.661864,
		0.729215, 0.036026, -0.683336,
		0.243378, 0.919662, 0.308203,
		38.335442, 35.127800, 44.811409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905571, 34.496765, 44.735001>,  <38.165077, 34.484035, 44.595669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905571, 34.496765, 44.735001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.748192, 34.806118, 44.933830>,  <38.653763, 34.991730, 45.053127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.748192, 34.806118, 44.933830>,  <38.905571, 34.496765, 44.735001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748192, 34.806118, 44.933830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710796, -0.087017, 0.697995,
		0.583068, 0.627945, -0.515478,
		-0.393447, 0.773378, 0.497078,
		38.630157, 35.038132, 45.082954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573727, 35.014236, 44.969685>,  <38.905571, 34.496765, 44.735001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573727, 35.014236, 44.969685> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.261642, 35.070732, 45.213428>,  <39.074390, 35.104630, 45.359673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.261642, 35.070732, 45.213428>,  <39.573727, 35.014236, 44.969685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261642, 35.070732, 45.213428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611089, -0.035870, 0.790749,
		0.133546, 0.989325, -0.058326,
		-0.780215, 0.141244, 0.609356,
		39.027576, 35.113106, 45.396236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813828, 35.712814, 45.004421>,  <39.573727, 35.014236, 44.969685>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813828, 35.712814, 45.004421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.181606, 35.869671, 44.992847>,  <40.402275, 35.963783, 44.985901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.181606, 35.869671, 44.992847>,  <39.813828, 35.712814, 45.004421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181606, 35.869671, 44.992847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250630, 0.527763, -0.811573,
		-0.302978, 0.753454, 0.583534,
		0.919450, 0.392140, -0.028937,
		40.457443, 35.987312, 44.984165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717648, 36.411274, 44.762192>,  <39.813828, 35.712814, 45.004421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717648, 36.411274, 44.762192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.108669, 36.376225, 44.685562>,  <40.343285, 36.355194, 44.639584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.108669, 36.376225, 44.685562>,  <39.717648, 36.411274, 44.762192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108669, 36.376225, 44.685562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108073, 0.572005, -0.813099,
		0.180831, 0.815556, 0.549699,
		0.977558, -0.087626, -0.191576,
		40.401936, 36.349937, 44.628090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952675, 37.122139, 44.541473>,  <39.717648, 36.411274, 44.762192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952675, 37.122139, 44.541473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.198112, 36.830791, 44.419506>,  <40.345375, 36.655983, 44.346325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.198112, 36.830791, 44.419506>,  <39.952675, 37.122139, 44.541473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198112, 36.830791, 44.419506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139341, 0.280218, -0.949769,
		0.777229, 0.625262, 0.070449,
		0.613595, -0.728372, -0.304918,
		40.382191, 36.612282, 44.328030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190453, 37.411758, 43.990311>,  <39.952675, 37.122139, 44.541473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190453, 37.411758, 43.990311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.289589, 37.027225, 43.942291>,  <40.349072, 36.796505, 43.913479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.289589, 37.027225, 43.942291>,  <40.190453, 37.411758, 43.990311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.289589, 37.027225, 43.942291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024615, 0.117627, -0.992753,
		0.968489, 0.248996, 0.005490,
		0.247837, -0.961335, -0.120050,
		40.363941, 36.738827, 43.906277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565517, 37.467651, 43.353512>,  <40.190453, 37.411758, 43.990311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565517, 37.467651, 43.353512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.500412, 37.078304, 43.418076>,  <40.461349, 36.844696, 43.456814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.500412, 37.078304, 43.418076>,  <40.565517, 37.467651, 43.353512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.500412, 37.078304, 43.418076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009371, -0.162060, -0.986737,
		0.986620, -0.162122, 0.017256,
		-0.162768, -0.973372, 0.161411,
		40.451580, 36.786293, 43.466499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081326, 37.024940, 42.979553>,  <40.565517, 37.467651, 43.353512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081326, 37.024940, 42.979553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.746918, 36.813526, 43.038502>,  <40.546272, 36.686676, 43.073872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.746918, 36.813526, 43.038502>,  <41.081326, 37.024940, 42.979553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.746918, 36.813526, 43.038502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000000, -0.268575, -0.963259,
		0.548698, -0.805304, 0.224535,
		-0.836021, -0.528539, 0.147367,
		40.496113, 36.654964, 43.082710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.191345, 36.421093, 42.608685>,  <41.081326, 37.024940, 42.979553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.191345, 36.421093, 42.608685> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.793629, 36.454243, 42.635571>,  <40.555000, 36.474133, 42.651703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.793629, 36.454243, 42.635571>,  <41.191345, 36.421093, 42.608685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793629, 36.454243, 42.635571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083546, -0.212805, -0.973516,
		-0.066374, -0.973574, 0.218514,
		-0.994291, 0.082872, 0.067214,
		40.495342, 36.479103, 42.655735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.924423, 35.858959, 42.222862>,  <41.191345, 36.421093, 42.608685>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.924423, 35.858959, 42.222862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.605637, 36.099796, 42.242130>,  <40.414364, 36.244301, 42.253689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.605637, 36.099796, 42.242130>,  <40.924423, 35.858959, 42.222862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605637, 36.099796, 42.242130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188805, -0.172575, -0.966732,
		-0.573754, -0.779549, 0.251216,
		-0.796968, 0.602098, 0.048168,
		40.366547, 36.280426, 42.256580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402985, 35.524746, 41.989857>,  <40.924423, 35.858959, 42.222862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402985, 35.524746, 41.989857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.287468, 35.906410, 41.958435>,  <40.218159, 36.135410, 41.939583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.287468, 35.906410, 41.958435>,  <40.402985, 35.524746, 41.989857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287468, 35.906410, 41.958435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250957, -0.154621, -0.955569,
		-0.923917, -0.256243, 0.284107,
		-0.288787, 0.954165, -0.078551,
		40.200832, 36.192661, 41.934868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623470, 35.535343, 41.828903>,  <40.402985, 35.524746, 41.989857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623470, 35.535343, 41.828903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.785332, 35.883278, 41.716026>,  <39.882450, 36.092041, 41.648300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.785332, 35.883278, 41.716026>,  <39.623470, 35.535343, 41.828903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785332, 35.883278, 41.716026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438942, -0.085961, -0.894394,
		-0.802238, 0.485785, 0.347025,
		0.404653, 0.869841, -0.282192,
		39.906727, 36.144230, 41.631367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145405, 35.763321, 41.283474>,  <39.623470, 35.535343, 41.828903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145405, 35.763321, 41.283474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.457924, 36.005688, 41.223553>,  <39.645435, 36.151108, 41.187599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.457924, 36.005688, 41.223553>,  <39.145405, 35.763321, 41.283474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457924, 36.005688, 41.223553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301983, 0.156912, -0.940311,
		-0.546247, 0.779898, 0.305572,
		0.781295, 0.605919, -0.149803,
		39.692314, 36.187462, 41.178612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888470, 36.551910, 41.153755>,  <39.145405, 35.763321, 41.283474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888470, 36.551910, 41.153755> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.257900, 36.486153, 41.015202>,  <39.479557, 36.446697, 40.932068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.257900, 36.486153, 41.015202>,  <38.888470, 36.551910, 41.153755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257900, 36.486153, 41.015202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308881, 0.216219, -0.926197,
		0.227159, 0.962405, 0.148916,
		0.923575, -0.164397, -0.346385,
		39.534973, 36.436832, 40.911285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864445, 36.960804, 40.614895>,  <38.888470, 36.551910, 41.153755>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864445, 36.960804, 40.614895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.176750, 36.724133, 40.534569>,  <39.364132, 36.582130, 40.486374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.176750, 36.724133, 40.534569>,  <38.864445, 36.960804, 40.614895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176750, 36.724133, 40.534569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227475, 0.030178, -0.973316,
		0.581951, 0.805609, -0.111031,
		0.780761, -0.591679, -0.200818,
		39.410980, 36.546627, 40.474323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295532, 37.305676, 40.034782>,  <38.864445, 36.960804, 40.614895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295532, 37.305676, 40.034782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.400791, 36.919777, 40.036613>,  <39.463947, 36.688240, 40.037712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.400791, 36.919777, 40.036613>,  <39.295532, 37.305676, 40.034782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400791, 36.919777, 40.036613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171846, -0.051540, -0.983775,
		0.949327, 0.258093, -0.179350,
		0.263149, -0.964744, 0.004576,
		39.479736, 36.630352, 40.037987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.577202, 43.791653, 31.861683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.183132, 43.830391, 31.918325>,  <26.946690, 43.853634, 31.952311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.183132, 43.830391, 31.918325>,  <27.577202, 43.791653, 31.861683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.183132, 43.830391, 31.918325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008348, -0.851495, 0.524296,
		0.171354, 0.515341, 0.839679,
		-0.985174, 0.096850, 0.141605,
		26.887581, 43.859447, 31.960808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.364206, 43.780964, 32.675171>,  <27.577202, 43.791653, 31.861683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.364206, 43.780964, 32.675171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.081039, 43.648251, 32.425766>,  <26.911139, 43.568623, 32.276123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.081039, 43.648251, 32.425766>,  <27.364206, 43.780964, 32.675171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.081039, 43.648251, 32.425766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146914, -0.794316, 0.589473,
		-0.690848, 0.508901, 0.513566,
		-0.707916, -0.331786, -0.623516,
		26.868664, 43.548714, 32.238712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.698788, 43.555283, 33.109035>,  <27.364206, 43.780964, 32.675171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.698788, 43.555283, 33.109035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.684765, 43.379757, 32.749878>,  <26.676352, 43.274441, 32.534382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.684765, 43.379757, 32.749878>,  <26.698788, 43.555283, 33.109035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.684765, 43.379757, 32.749878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242920, -0.867759, 0.433571,
		-0.969413, 0.233317, -0.076174,
		-0.035059, -0.438813, -0.897894,
		26.674248, 43.248112, 32.480511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.139078, 43.114628, 33.199192>,  <26.698788, 43.555283, 33.109035>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.139078, 43.114628, 33.199192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.353952, 42.959435, 32.899620>,  <26.482878, 42.866318, 32.719875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.353952, 42.959435, 32.899620>,  <26.139078, 43.114628, 33.199192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.353952, 42.959435, 32.899620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144171, -0.917094, 0.371689,
		-0.831049, -0.091693, -0.548589,
		0.537189, -0.387983, -0.748931,
		26.515108, 42.843040, 32.674942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.758751, 42.600132, 32.932201>,  <26.139078, 43.114628, 33.199192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.758751, 42.600132, 32.932201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.119890, 42.506939, 32.787655>,  <26.336573, 42.451023, 32.700928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.119890, 42.506939, 32.787655>,  <25.758751, 42.600132, 32.932201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.119890, 42.506939, 32.787655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119400, -0.943260, 0.309845,
		-0.413053, -0.236595, -0.879437,
		0.902846, -0.232987, -0.361367,
		26.390743, 42.437042, 32.679245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.776892, 41.945103, 32.624561>,  <25.758751, 42.600132, 32.932201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.776892, 41.945103, 32.624561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.175055, 41.967972, 32.655273>,  <26.413952, 41.981693, 32.673702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.175055, 41.967972, 32.655273>,  <25.776892, 41.945103, 32.624561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.175055, 41.967972, 32.655273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036150, -0.967187, 0.251479,
		0.088641, -0.247549, -0.964812,
		0.995407, 0.057170, 0.076784,
		26.473677, 41.985123, 32.678310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.058266, 41.300030, 32.255642>,  <25.776892, 41.945103, 32.624561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.058266, 41.300030, 32.255642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.357580, 41.432961, 32.485294>,  <26.537170, 41.512718, 32.623085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.357580, 41.432961, 32.485294>,  <26.058266, 41.300030, 32.255642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.357580, 41.432961, 32.485294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224244, -0.941240, 0.252552,
		0.624323, -0.060236, -0.778841,
		0.748289, 0.332324, 0.574130,
		26.582067, 41.532658, 32.657532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.547611, 40.817104, 32.095146>,  <26.058266, 41.300030, 32.255642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.547611, 40.817104, 32.095146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.654320, 40.973953, 32.447300>,  <26.718346, 41.068062, 32.658592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.654320, 40.973953, 32.447300>,  <26.547611, 40.817104, 32.095146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.654320, 40.973953, 32.447300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293338, -0.903183, 0.313390,
		0.918034, 0.174646, -0.355968,
		0.266772, 0.392121, 0.880383,
		26.734352, 41.091591, 32.711414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.178289, 40.519901, 32.165440>,  <26.547611, 40.817104, 32.095146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.178289, 40.519901, 32.165440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.024935, 40.624023, 32.519897>,  <26.932922, 40.686497, 32.732574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.024935, 40.624023, 32.519897>,  <27.178289, 40.519901, 32.165440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.024935, 40.624023, 32.519897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255208, -0.892248, 0.372509,
		0.887627, 0.368967, 0.275646,
		-0.383388, 0.260302, 0.886147,
		26.909918, 40.702114, 32.785740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.696644, 40.344105, 32.679409>,  <27.178289, 40.519901, 32.165440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.696644, 40.344105, 32.679409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.381342, 40.384884, 32.922146>,  <27.192162, 40.409351, 33.067787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.381342, 40.384884, 32.922146>,  <27.696644, 40.344105, 32.679409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.381342, 40.384884, 32.922146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245627, -0.852079, 0.462200,
		0.564200, 0.513389, 0.646614,
		-0.788255, 0.101948, 0.606846,
		27.144865, 40.415466, 33.104198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.947323, 40.154835, 33.356514>,  <27.696644, 40.344105, 32.679409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.947323, 40.154835, 33.356514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.548388, 40.148331, 33.384949>,  <27.309027, 40.144428, 33.402008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.548388, 40.148331, 33.384949>,  <27.947323, 40.154835, 33.356514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.548388, 40.148331, 33.384949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046126, -0.895688, 0.442284,
		0.056480, 0.444385, 0.894054,
		-0.997338, -0.016259, 0.071086,
		27.249186, 40.143452, 33.406273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.654457, 40.097969, 34.056789>,  <27.947323, 40.154835, 33.356514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.654457, 40.097969, 34.056789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.381227, 39.924870, 33.821457>,  <27.217289, 39.821011, 33.680256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.381227, 39.924870, 33.821457>,  <27.654457, 40.097969, 34.056789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.381227, 39.924870, 33.821457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055438, -0.833950, 0.549049,
		-0.728242, 0.342426, 0.593641,
		-0.683075, -0.432750, -0.588333,
		27.176306, 39.795044, 33.644958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.302429, 39.585690, 34.472870>,  <27.654457, 40.097969, 34.056789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.302429, 39.585690, 34.472870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.192080, 39.451817, 34.112453>,  <27.125870, 39.371494, 33.896202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.192080, 39.451817, 34.112453>,  <27.302429, 39.585690, 34.472870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.192080, 39.451817, 34.112453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051653, -0.941231, 0.333790,
		-0.959805, 0.045543, 0.276949,
		-0.275875, -0.334679, -0.901046,
		27.109318, 39.351414, 33.842140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.808983, 38.970608, 34.577057>,  <27.302429, 39.585690, 34.472870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.808983, 38.970608, 34.577057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.925501, 38.942730, 34.195419>,  <26.995413, 38.926003, 33.966438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.925501, 38.942730, 34.195419>,  <26.808983, 38.970608, 34.577057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.925501, 38.942730, 34.195419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002725, -0.997399, 0.072024,
		-0.956629, -0.018380, -0.290728,
		0.291296, -0.069693, -0.954091,
		27.012890, 38.921822, 33.909191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.504539, 38.318630, 34.335224>,  <26.808983, 38.970608, 34.577057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.504539, 38.318630, 34.335224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.722038, 38.398834, 34.009247>,  <26.852537, 38.446957, 33.813660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.722038, 38.398834, 34.009247>,  <26.504539, 38.318630, 34.335224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.722038, 38.398834, 34.009247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056467, -0.960098, -0.273904,
		-0.837348, 0.194952, -0.510726,
		0.543745, 0.200514, -0.814945,
		26.885162, 38.458988, 33.764763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.176777, 38.217281, 33.663815>,  <26.504539, 38.318630, 34.335224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.176777, 38.217281, 33.663815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.569855, 38.152264, 33.628292>,  <26.805702, 38.113255, 33.606979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.569855, 38.152264, 33.628292>,  <26.176777, 38.217281, 33.663815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.569855, 38.152264, 33.628292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177393, -0.963845, -0.198831,
		-0.053281, 0.211145, -0.976001,
		0.982697, -0.162542, -0.088810,
		26.864664, 38.103500, 33.601650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.221918, 37.737362, 33.185291>,  <26.176777, 38.217281, 33.663815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.221918, 37.737362, 33.185291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.596491, 37.720081, 33.324562>,  <26.821234, 37.709713, 33.408123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.596491, 37.720081, 33.324562>,  <26.221918, 37.737362, 33.185291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.596491, 37.720081, 33.324562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093300, -0.987322, 0.128413,
		0.338216, -0.152735, -0.928591,
		0.936432, -0.043206, 0.348178,
		26.877420, 37.707119, 33.429016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.546345, 37.252251, 32.750008>,  <26.221918, 37.737362, 33.185291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.546345, 37.252251, 32.750008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.736593, 37.270584, 33.101391>,  <26.850742, 37.281586, 33.312222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.736593, 37.270584, 33.101391>,  <26.546345, 37.252251, 32.750008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.736593, 37.270584, 33.101391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041962, -0.998687, 0.029390,
		0.878648, 0.022884, -0.476922,
		0.475623, 0.045836, 0.878454,
		26.879280, 37.284336, 33.364925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.018171, 36.738594, 32.659351>,  <26.546345, 37.252251, 32.750008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.018171, 36.738594, 32.659351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.981642, 36.793064, 33.053940>,  <26.959724, 36.825745, 33.290691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.981642, 36.793064, 33.053940>,  <27.018171, 36.738594, 32.659351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.981642, 36.793064, 33.053940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120193, -0.984872, 0.124826,
		0.988541, -0.107167, 0.106308,
		-0.091322, 0.136174, 0.986467,
		26.954245, 36.833916, 33.349880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.477650, 36.235226, 32.979397>,  <27.018171, 36.738594, 32.659351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.477650, 36.235226, 32.979397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.191710, 36.318382, 33.246460>,  <27.020145, 36.368275, 33.406696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.191710, 36.318382, 33.246460>,  <27.477650, 36.235226, 32.979397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.191710, 36.318382, 33.246460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089764, -0.974167, 0.207221,
		0.693490, 0.088201, 0.715047,
		-0.714853, 0.207891, 0.667658,
		26.977253, 36.380749, 33.446758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.016922, 35.722919, 33.119846>,  <27.477650, 36.235226, 32.979397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.016922, 35.722919, 33.119846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.360106, 35.610584, 33.291908>,  <28.566015, 35.543182, 33.395145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.360106, 35.610584, 33.291908>,  <28.016922, 35.722919, 33.119846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.360106, 35.610584, 33.291908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373571, 0.915856, -0.147151,
		-0.352635, 0.286944, 0.890680,
		0.857959, -0.280842, 0.430157,
		28.617493, 35.526333, 33.420956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.225023, 36.254852, 33.618439>,  <28.016922, 35.722919, 33.119846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.225023, 36.254852, 33.618439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.551674, 36.039562, 33.535072>,  <28.747663, 35.910389, 33.485054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.551674, 36.039562, 33.535072>,  <28.225023, 36.254852, 33.618439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.551674, 36.039562, 33.535072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494754, 0.838742, -0.227442,
		0.297220, 0.082622, 0.951227,
		0.816627, -0.538224, -0.208413,
		28.796661, 35.878094, 33.472549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.686951, 36.719116, 33.908253>,  <28.225023, 36.254852, 33.618439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.686951, 36.719116, 33.908253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.904718, 36.456970, 33.698833>,  <29.035379, 36.299683, 33.573181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.904718, 36.456970, 33.698833>,  <28.686951, 36.719116, 33.908253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.904718, 36.456970, 33.698833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623909, 0.733565, -0.269481,
		0.560663, -0.179933, 0.808258,
		0.544421, -0.655368, -0.523545,
		29.068045, 36.260361, 33.541771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.381596, 36.711952, 34.212456>,  <28.686951, 36.719116, 33.908253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.381596, 36.711952, 34.212456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.386253, 36.617371, 33.823826>,  <29.389048, 36.560619, 33.590649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.386253, 36.617371, 33.823826>,  <29.381596, 36.711952, 34.212456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.386253, 36.617371, 33.823826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596251, 0.781642, -0.183085,
		0.802713, -0.577169, 0.150092,
		0.011647, -0.236457, -0.971572,
		29.389748, 36.546432, 33.532352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104752, 36.908150, 33.999413>,  <29.381596, 36.711952, 34.212456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.104752, 36.908150, 33.999413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.891459, 36.880013, 33.662197>,  <29.763483, 36.863129, 33.459869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.891459, 36.880013, 33.662197>,  <30.104752, 36.908150, 33.999413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.891459, 36.880013, 33.662197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339037, 0.895236, -0.289148,
		0.775058, -0.440004, -0.453521,
		-0.533235, -0.070346, -0.843037,
		29.731487, 36.858910, 33.409286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.548965, 37.167023, 33.471096>,  <30.104752, 36.908150, 33.999413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.548965, 37.167023, 33.471096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.184578, 37.187523, 33.307384>,  <29.965944, 37.199821, 33.209160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.184578, 37.187523, 33.307384>,  <30.548965, 37.167023, 33.471096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.184578, 37.187523, 33.307384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261078, 0.839823, -0.475957,
		0.319327, -0.540436, -0.778434,
		-0.910971, 0.051246, -0.409274,
		29.911287, 37.202896, 33.184601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.693020, 37.287449, 32.679459>,  <30.548965, 37.167023, 33.471096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.693020, 37.287449, 32.679459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.320902, 37.400192, 32.773354>,  <30.097631, 37.467838, 32.829693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.320902, 37.400192, 32.773354>,  <30.693020, 37.287449, 32.679459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320902, 37.400192, 32.773354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172402, 0.900850, -0.398431,
		-0.323767, -0.330189, -0.886651,
		-0.930297, 0.281860, 0.234740,
		30.041813, 37.484749, 32.843777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.447048, 37.630054, 32.048786>,  <30.693020, 37.287449, 32.679459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.447048, 37.630054, 32.048786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.217190, 37.759258, 32.349571>,  <30.079275, 37.836781, 32.530041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.217190, 37.759258, 32.349571>,  <30.447048, 37.630054, 32.048786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.217190, 37.759258, 32.349571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064674, 0.933866, -0.351725,
		-0.815842, -0.153485, -0.557534,
		-0.574647, 0.323010, 0.751961,
		30.044796, 37.856163, 32.575161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.830256, 38.046043, 31.785650>,  <30.447048, 37.630054, 32.048786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.830256, 38.046043, 31.785650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.868103, 38.162334, 32.166496>,  <29.890812, 38.232109, 32.395004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.868103, 38.162334, 32.166496>,  <29.830256, 38.046043, 31.785650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.868103, 38.162334, 32.166496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042277, 0.954369, -0.295622,
		-0.994615, 0.068224, 0.078011,
		0.094620, 0.290732, 0.952115,
		29.896488, 38.249554, 32.452129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.374130, 38.641327, 31.885300>,  <29.830256, 38.046043, 31.785650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.374130, 38.641327, 31.885300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.613083, 38.664543, 32.205242>,  <29.756454, 38.678471, 32.397205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.613083, 38.664543, 32.205242>,  <29.374130, 38.641327, 31.885300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.613083, 38.664543, 32.205242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083669, 0.987424, -0.134138,
		-0.797581, 0.147054, 0.585013,
		0.597382, 0.058039, 0.799854,
		29.792297, 38.681953, 32.445198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.068977, 39.135132, 32.312630>,  <29.374130, 38.641327, 31.885300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.068977, 39.135132, 32.312630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.460812, 39.108295, 32.388428>,  <29.695913, 39.092194, 32.433907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.460812, 39.108295, 32.388428>,  <29.068977, 39.135132, 32.312630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.460812, 39.108295, 32.388428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095137, 0.985134, -0.143040,
		-0.177078, 0.158148, 0.971408,
		0.979588, -0.067088, 0.189491,
		29.754688, 39.088169, 32.445274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124289, 39.716248, 32.827183>,  <29.068977, 39.135132, 32.312630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.124289, 39.716248, 32.827183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.487898, 39.642246, 32.677811>,  <29.706064, 39.597847, 32.588188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.487898, 39.642246, 32.677811>,  <29.124289, 39.716248, 32.827183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.487898, 39.642246, 32.677811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184709, 0.982100, -0.036918,
		0.373578, -0.035417, 0.926922,
		0.909023, -0.185003, -0.373432,
		29.760605, 39.586746, 32.565781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.570312, 40.192791, 33.181496>,  <29.124289, 39.716248, 32.827183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.570312, 40.192791, 33.181496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.837158, 40.087189, 32.902855>,  <29.997267, 40.023827, 32.735672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.837158, 40.087189, 32.902855>,  <29.570312, 40.192791, 33.181496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.837158, 40.087189, 32.902855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114753, 0.960354, -0.254071,
		0.736062, 0.089558, 0.670963,
		0.667116, -0.264007, -0.696603,
		30.037292, 40.007988, 32.693874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.173370, 40.610096, 33.306206>,  <29.570312, 40.192791, 33.181496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.173370, 40.610096, 33.306206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.201338, 40.491261, 32.925289>,  <30.218119, 40.419960, 32.696739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.201338, 40.491261, 32.925289>,  <30.173370, 40.610096, 33.306206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.201338, 40.491261, 32.925289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042342, 0.954647, -0.294714,
		0.996654, -0.019717, 0.079325,
		0.069917, -0.297086, -0.952288,
		30.222313, 40.402134, 32.639603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811251, 40.897491, 32.923630>,  <30.173370, 40.610096, 33.306206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.811251, 40.897491, 32.923630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.548447, 40.807121, 32.635937>,  <30.390764, 40.752899, 32.463322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.548447, 40.807121, 32.635937>,  <30.811251, 40.897491, 32.923630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.548447, 40.807121, 32.635937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014993, 0.949935, -0.312089,
		0.753734, -0.215828, -0.620728,
		-0.657009, -0.225925, -0.719234,
		30.351343, 40.739342, 32.420166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097551, 41.316601, 32.481354>,  <30.811251, 40.897491, 32.923630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097551, 41.316601, 32.481354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.724787, 41.231018, 32.364212>,  <30.501127, 41.179668, 32.293926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.724787, 41.231018, 32.364212>,  <31.097551, 41.316601, 32.481354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.724787, 41.231018, 32.364212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087721, 0.916454, -0.390406,
		0.351918, -0.338134, -0.872822,
		-0.931911, -0.213956, -0.292855,
		30.445213, 41.166832, 32.276356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.001587, 41.698372, 31.853153>,  <31.097551, 41.316601, 32.481354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.001587, 41.698372, 31.853153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.616287, 41.631210, 31.937019>,  <30.385107, 41.590912, 31.987339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.616287, 41.631210, 31.937019>,  <31.001587, 41.698372, 31.853153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.616287, 41.631210, 31.937019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240784, 0.885704, -0.396927,
		-0.119057, -0.432824, -0.893582,
		-0.963249, -0.167903, 0.209666,
		30.327312, 41.580841, 31.999920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.580309, 42.033787, 31.248997>,  <31.001587, 41.698372, 31.853153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.580309, 42.033787, 31.248997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.310389, 41.985073, 31.540150>,  <30.148436, 41.955845, 31.714842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.310389, 41.985073, 31.540150>,  <30.580309, 42.033787, 31.248997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.310389, 41.985073, 31.540150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480630, 0.820971, -0.308225,
		-0.560032, -0.557832, -0.612525,
		-0.674803, -0.121781, 0.727881,
		30.107948, 41.948540, 31.758514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.928715, 42.195045, 30.967079>,  <30.580309, 42.033787, 31.248997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.928715, 42.195045, 30.967079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.909035, 42.282097, 31.356995>,  <29.897226, 42.334328, 31.590944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.909035, 42.282097, 31.356995>,  <29.928715, 42.195045, 30.967079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.909035, 42.282097, 31.356995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527232, 0.823258, -0.210411,
		-0.848296, -0.524293, 0.074237,
		-0.049201, 0.217631, 0.974790,
		29.894274, 42.347385, 31.649431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.325298, 42.574738, 31.058283>,  <29.928715, 42.195045, 30.967079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.325298, 42.574738, 31.058283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.493870, 42.628506, 31.417021>,  <29.595013, 42.660767, 31.632263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.493870, 42.628506, 31.417021>,  <29.325298, 42.574738, 31.058283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.493870, 42.628506, 31.417021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302157, 0.953258, -0.000894,
		-0.855043, -0.270610, 0.442348,
		0.421429, 0.134423, 0.896843,
		29.620298, 42.668831, 31.686073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.812140, 43.001411, 31.482924>,  <29.325298, 42.574738, 31.058283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.812140, 43.001411, 31.482924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.172729, 43.019344, 31.655125>,  <29.389084, 43.030106, 31.758446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.172729, 43.019344, 31.655125>,  <28.812140, 43.001411, 31.482924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.172729, 43.019344, 31.655125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122195, 0.980523, 0.153760,
		-0.415226, -0.191216, 0.889395,
		0.901474, 0.044834, 0.430505,
		29.443172, 43.032795, 31.784277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.728434, 43.279667, 32.182549>,  <28.812140, 43.001411, 31.482924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.728434, 43.279667, 32.182549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.107038, 43.348896, 32.073620>,  <29.334202, 43.390434, 32.008263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.107038, 43.348896, 32.073620>,  <28.728434, 43.279667, 32.182549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.107038, 43.348896, 32.073620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146910, 0.982576, 0.113851,
		0.287286, -0.067754, 0.955446,
		0.946512, 0.173072, -0.272327,
		29.390991, 43.400818, 31.991922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<43.438633, 33.692993, 42.888977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.077160, 33.573040, 43.011246>,  <42.860275, 33.501068, 43.084606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.077160, 33.573040, 43.011246>,  <43.438633, 33.692993, 42.888977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.077160, 33.573040, 43.011246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286424, 0.107319, 0.952074,
		-0.318313, 0.947921, -0.011089,
		-0.903680, -0.299881, 0.305668,
		42.806057, 33.483074, 43.102947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.313576, 34.114990, 43.398994>,  <43.438633, 33.692993, 42.888977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.313576, 34.114990, 43.398994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.053753, 33.820072, 43.473248>,  <42.897858, 33.643120, 43.517799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.053753, 33.820072, 43.473248>,  <43.313576, 34.114990, 43.398994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.053753, 33.820072, 43.473248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213634, 0.057326, 0.975230,
		-0.729678, 0.673129, 0.120276,
		-0.649561, -0.737299, 0.185633,
		42.858883, 33.598881, 43.528938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.756935, 34.347134, 43.908863>,  <43.313576, 34.114990, 43.398994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.756935, 34.347134, 43.908863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.784378, 33.948315, 43.922695>,  <42.800846, 33.709023, 43.930992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.784378, 33.948315, 43.922695>,  <42.756935, 34.347134, 43.908863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.784378, 33.948315, 43.922695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050676, 0.038097, 0.997988,
		-0.996356, -0.066721, 0.053140,
		0.068611, -0.997044, 0.034577,
		42.804962, 33.649200, 43.933067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.430855, 34.125149, 44.597023>,  <42.756935, 34.347134, 43.908863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.430855, 34.125149, 44.597023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.630486, 33.797398, 44.484211>,  <42.750263, 33.600746, 44.416523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.630486, 33.797398, 44.484211>,  <42.430855, 34.125149, 44.597023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.630486, 33.797398, 44.484211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165943, -0.229071, 0.959161,
		-0.850523, -0.525492, 0.021648,
		0.499072, -0.819381, -0.282032,
		42.780209, 33.551582, 44.399601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.100952, 33.496548, 44.879726>,  <42.430855, 34.125149, 44.597023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.100952, 33.496548, 44.879726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.493717, 33.467457, 44.809803>,  <42.729378, 33.450001, 44.767849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.493717, 33.467457, 44.809803>,  <42.100952, 33.496548, 44.879726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.493717, 33.467457, 44.809803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134969, -0.378658, 0.915643,
		-0.132785, -0.922675, -0.361993,
		0.981912, -0.072726, -0.174812,
		42.788292, 33.445641, 44.757359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.177326, 32.962074, 45.285294>,  <42.100952, 33.496548, 44.879726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.177326, 32.962074, 45.285294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.566654, 33.036427, 45.231487>,  <42.800251, 33.081039, 45.199203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.566654, 33.036427, 45.231487>,  <42.177326, 32.962074, 45.285294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.566654, 33.036427, 45.231487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183774, -0.280542, 0.942085,
		0.137384, -0.941670, -0.307218,
		0.973320, 0.185886, -0.134512,
		42.858650, 33.092194, 45.191135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.585476, 32.383583, 45.377110>,  <42.177326, 32.962074, 45.285294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.585476, 32.383583, 45.377110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.820827, 32.698826, 45.449432>,  <42.962040, 32.887974, 45.492825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.820827, 32.698826, 45.449432>,  <42.585476, 32.383583, 45.377110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.820827, 32.698826, 45.449432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175268, -0.342595, 0.922989,
		0.789361, -0.511379, -0.339707,
		0.588380, 0.788112, 0.180802,
		42.997341, 32.935261, 45.503674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.219978, 32.131088, 45.760876>,  <42.585476, 32.383583, 45.377110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.219978, 32.131088, 45.760876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.261757, 32.523361, 45.827034>,  <43.286823, 32.758724, 45.866730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.261757, 32.523361, 45.827034>,  <43.219978, 32.131088, 45.760876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.261757, 32.523361, 45.827034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332341, -0.191164, 0.923583,
		0.937359, -0.041492, -0.345885,
		0.104442, 0.980681, 0.165399,
		43.293091, 32.817566, 45.876656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.971210, 32.240387, 45.969090>,  <43.219978, 32.131088, 45.760876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.971210, 32.240387, 45.969090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.708389, 32.506794, 46.110344>,  <43.550697, 32.666637, 46.195099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.708389, 32.506794, 46.110344>,  <43.971210, 32.240387, 45.969090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.708389, 32.506794, 46.110344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462108, -0.014269, 0.886709,
		0.595599, 0.745803, -0.298395,
		-0.657052, 0.666014, 0.353140,
		43.511272, 32.706596, 46.216286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.075840, 32.139374, 46.603603>,  <43.971210, 32.240387, 45.969090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.075840, 32.139374, 46.603603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.842697, 32.460636, 46.652939>,  <43.702812, 32.653393, 46.682541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.842697, 32.460636, 46.652939>,  <44.075840, 32.139374, 46.603603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.842697, 32.460636, 46.652939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067403, -0.103476, 0.992345,
		0.809771, 0.586713, 0.006177,
		-0.582861, 0.803156, 0.123338,
		43.667839, 32.701584, 46.689941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.329494, 32.609463, 47.114433>,  <44.075840, 32.139374, 46.603603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.329494, 32.609463, 47.114433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.932640, 32.659069, 47.107727>,  <43.694527, 32.688835, 47.103703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.932640, 32.659069, 47.107727>,  <44.329494, 32.609463, 47.114433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.932640, 32.659069, 47.107727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028506, -0.093540, 0.995207,
		0.121857, 0.987861, 0.096340,
		-0.992138, 0.124020, -0.016761,
		43.634998, 32.696274, 47.102699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.318859, 32.841980, 47.759102>,  <44.329494, 32.609463, 47.114433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.318859, 32.841980, 47.759102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.946228, 32.735840, 47.659698>,  <43.722649, 32.672153, 47.600056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.946228, 32.735840, 47.659698>,  <44.318859, 32.841980, 47.759102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.946228, 32.735840, 47.659698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198941, -0.200045, 0.959377,
		-0.304288, 0.943170, 0.133567,
		-0.931575, -0.265355, -0.248506,
		43.666756, 32.656235, 47.585148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.866188, 33.066895, 48.315411>,  <44.318859, 32.841980, 47.759102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.866188, 33.066895, 48.315411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.676926, 32.762444, 48.137959>,  <43.563366, 32.579773, 48.031487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.676926, 32.762444, 48.137959>,  <43.866188, 33.066895, 48.315411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.676926, 32.762444, 48.137959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207457, -0.393142, 0.895769,
		-0.856202, 0.515876, 0.028118,
		-0.473160, -0.761125, -0.443631,
		43.534977, 32.534107, 48.004868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.157413, 33.016155, 48.563675>,  <43.866188, 33.066895, 48.315411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.157413, 33.016155, 48.563675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.245224, 32.649712, 48.429482>,  <43.297909, 32.429844, 48.348965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.245224, 32.649712, 48.429482>,  <43.157413, 33.016155, 48.563675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.245224, 32.649712, 48.429482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352801, -0.395143, 0.848170,
		-0.909582, -0.067837, -0.409950,
		0.219526, -0.916111, -0.335482,
		43.311081, 32.374878, 48.328838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.083141, 32.849979, 49.366093>,  <43.157413, 33.016155, 48.563675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.083141, 32.849979, 49.366093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.829590, 33.116898, 49.522503>,  <42.677460, 33.277050, 49.616348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.829590, 33.116898, 49.522503>,  <43.083141, 32.849979, 49.366093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.829590, 33.116898, 49.522503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356463, 0.196620, -0.913387,
		-0.686387, -0.718367, 0.113234,
		-0.633883, 0.667300, 0.391029,
		42.639423, 33.317089, 49.639812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.465809, 32.844322, 48.928463>,  <43.083141, 32.849979, 49.366093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.465809, 32.844322, 48.928463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.422012, 33.193199, 49.119167>,  <42.395737, 33.402523, 49.233589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.422012, 33.193199, 49.119167>,  <42.465809, 32.844322, 48.928463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.422012, 33.193199, 49.119167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312045, 0.425233, -0.849591,
		-0.943737, -0.241790, 0.225604,
		-0.109489, 0.872190, 0.476758,
		42.389164, 33.454857, 49.262196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873577, 33.048573, 48.818226>,  <42.465809, 32.844322, 48.928463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.873577, 33.048573, 48.818226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.042759, 33.397758, 48.915417>,  <42.144268, 33.607269, 48.973732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.042759, 33.397758, 48.915417>,  <41.873577, 33.048573, 48.818226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.042759, 33.397758, 48.915417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487279, 0.445184, -0.751246,
		-0.763983, 0.199343, 0.613671,
		0.422952, 0.872968, 0.242977,
		42.169643, 33.659649, 48.988312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.332962, 33.545036, 48.622952>,  <41.873577, 33.048573, 48.818226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.332962, 33.545036, 48.622952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.651237, 33.784393, 48.660488>,  <41.842205, 33.928005, 48.683010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.651237, 33.784393, 48.660488>,  <41.332962, 33.545036, 48.622952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.651237, 33.784393, 48.660488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362123, 0.594156, -0.718224,
		-0.485534, 0.537503, 0.689455,
		0.795691, 0.598389, 0.093841,
		41.889946, 33.963909, 48.688641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031891, 34.116249, 48.351173>,  <41.332962, 33.545036, 48.622952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031891, 34.116249, 48.351173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.426502, 34.168003, 48.311119>,  <41.663269, 34.199055, 48.287086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.426502, 34.168003, 48.311119>,  <41.031891, 34.116249, 48.351173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.426502, 34.168003, 48.311119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160428, 0.644963, -0.747185,
		-0.032095, 0.753181, 0.657030,
		0.986526, 0.129387, -0.100131,
		41.722462, 34.206818, 48.281078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.106129, 34.831158, 48.413830>,  <41.031891, 34.116249, 48.351173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.106129, 34.831158, 48.413830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.432503, 34.700638, 48.222927>,  <41.628326, 34.622326, 48.108383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.432503, 34.700638, 48.222927>,  <41.106129, 34.831158, 48.413830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.432503, 34.700638, 48.222927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141234, 0.688002, -0.711833,
		0.560625, 0.648216, 0.515281,
		0.815936, -0.326297, -0.477261,
		41.677284, 34.602749, 48.079750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.307392, 35.483849, 48.223198>,  <41.106129, 34.831158, 48.413830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.307392, 35.483849, 48.223198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.499325, 35.209011, 48.004967>,  <41.614487, 35.044109, 47.874027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.499325, 35.209011, 48.004967>,  <41.307392, 35.483849, 48.223198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.499325, 35.209011, 48.004967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105585, 0.572104, -0.813357,
		0.870983, 0.447882, 0.201969,
		0.479835, -0.687095, -0.545582,
		41.643276, 35.002884, 47.841293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861935, 35.836227, 47.917942>,  <41.307392, 35.483849, 48.223198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.861935, 35.836227, 47.917942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.769608, 35.513802, 47.699959>,  <41.714211, 35.320347, 47.569168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.769608, 35.513802, 47.699959>,  <41.861935, 35.836227, 47.917942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.769608, 35.513802, 47.699959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092598, 0.575736, -0.812375,
		0.968582, -0.137044, -0.207528,
		-0.230813, -0.806069, -0.544958,
		41.700363, 35.271980, 47.536472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.219330, 35.952633, 47.282021>,  <41.861935, 35.836227, 47.917942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.219330, 35.952633, 47.282021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.932995, 35.686581, 47.196995>,  <41.761196, 35.526951, 47.145977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.932995, 35.686581, 47.196995>,  <42.219330, 35.952633, 47.282021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.932995, 35.686581, 47.196995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160787, 0.453248, -0.876764,
		0.679507, -0.593439, -0.431394,
		-0.715834, -0.665129, -0.212568,
		41.718243, 35.487041, 47.133224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.328102, 35.875454, 46.629734>,  <42.219330, 35.952633, 47.282021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.328102, 35.875454, 46.629734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.954391, 35.742237, 46.680645>,  <41.730164, 35.662308, 46.711193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.954391, 35.742237, 46.680645>,  <42.328102, 35.875454, 46.629734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.954391, 35.742237, 46.680645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261003, 0.395682, -0.880519,
		0.242890, -0.855872, -0.456604,
		-0.934281, -0.333044, 0.127278,
		41.674107, 35.642323, 46.718826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.240925, 35.544086, 45.995445>,  <42.328102, 35.875454, 46.629734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.240925, 35.544086, 45.995445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.876366, 35.597610, 46.151112>,  <41.657631, 35.629723, 46.244511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.876366, 35.597610, 46.151112>,  <42.240925, 35.544086, 45.995445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.876366, 35.597610, 46.151112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333060, 0.315598, -0.888521,
		-0.241708, -0.939412, -0.243070,
		-0.911399, 0.133806, 0.389163,
		41.602947, 35.637753, 46.267860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757374, 35.299992, 45.551075>,  <42.240925, 35.544086, 45.995445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.757374, 35.299992, 45.551075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.471569, 35.506344, 45.740108>,  <41.300087, 35.630154, 45.853527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.471569, 35.506344, 45.740108>,  <41.757374, 35.299992, 45.551075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.471569, 35.506344, 45.740108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419106, 0.225251, -0.879552,
		-0.560195, -0.826515, 0.055264,
		-0.714516, 0.515882, 0.472581,
		41.257214, 35.661110, 45.881882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.117798, 35.033638, 45.213840>,  <41.757374, 35.299992, 45.551075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.117798, 35.033638, 45.213840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.078255, 35.394238, 45.382378>,  <41.054527, 35.610596, 45.483501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.078255, 35.394238, 45.382378>,  <41.117798, 35.033638, 45.213840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078255, 35.394238, 45.382378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529689, 0.310777, -0.789207,
		-0.842411, -0.301203, 0.446789,
		-0.098859, 0.901496, 0.421346,
		41.048595, 35.664688, 45.508781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424656, 35.219494, 45.189415>,  <41.117798, 35.033638, 45.213840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.424656, 35.219494, 45.189415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.646000, 35.550491, 45.227448>,  <40.778809, 35.749088, 45.250267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.646000, 35.550491, 45.227448>,  <40.424656, 35.219494, 45.189415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.646000, 35.550491, 45.227448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441409, 0.388137, -0.809016,
		-0.706361, 0.405712, 0.580045,
		0.553364, 0.827495, 0.095080,
		40.812008, 35.798740, 45.255970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829468, 35.313961, 45.672264>,  <40.424656, 35.219494, 45.189415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829468, 35.313961, 45.672264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.455612, 35.215519, 45.774937>,  <39.231300, 35.156452, 45.836540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.455612, 35.215519, 45.774937>,  <39.829468, 35.313961, 45.672264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455612, 35.215519, 45.774937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297423, -0.145357, 0.943616,
		-0.194918, 0.958281, 0.209054,
		-0.934637, -0.246105, 0.256682,
		39.175220, 35.141689, 45.851940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744469, 35.690758, 46.306644>,  <39.829468, 35.313961, 45.672264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744469, 35.690758, 46.306644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.452839, 35.416985, 46.305389>,  <39.277863, 35.252720, 46.304638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.452839, 35.416985, 46.305389>,  <39.744469, 35.690758, 46.306644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452839, 35.416985, 46.305389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058397, -0.066766, 0.996058,
		-0.681940, 0.726016, 0.088646,
		-0.729073, -0.684429, -0.003133,
		39.234116, 35.211655, 46.304451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115044, 35.926506, 46.796242>,  <39.744469, 35.690758, 46.306644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115044, 35.926506, 46.796242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.121494, 35.526684, 46.786274>,  <39.125362, 35.286789, 46.780293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.121494, 35.526684, 46.786274>,  <39.115044, 35.926506, 46.796242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121494, 35.526684, 46.786274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135692, -0.026880, 0.990387,
		-0.990620, -0.012588, -0.136065,
		0.016124, -0.999560, -0.024919,
		39.126331, 35.226814, 46.778797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690708, 35.721600, 47.360432>,  <39.115044, 35.926506, 46.796242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690708, 35.721600, 47.360432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.857410, 35.373177, 47.256458>,  <38.957432, 35.164124, 47.194077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.857410, 35.373177, 47.256458>,  <38.690708, 35.721600, 47.360432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857410, 35.373177, 47.256458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025988, -0.297248, 0.954446,
		-0.908645, -0.391020, -0.146518,
		0.416760, -0.871061, -0.259932,
		38.982437, 35.111858, 47.178478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402439, 35.230026, 47.812351>,  <38.690708, 35.721600, 47.360432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402439, 35.230026, 47.812351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.737919, 35.046093, 47.695641>,  <38.939205, 34.935734, 47.625614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.737919, 35.046093, 47.695641>,  <38.402439, 35.230026, 47.812351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737919, 35.046093, 47.695641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099937, -0.396713, 0.912486,
		-0.535345, -0.794461, -0.286769,
		0.838700, -0.459836, -0.291775,
		38.989529, 34.908142, 47.608109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312038, 34.644291, 48.039066>,  <38.402439, 35.230026, 47.812351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312038, 34.644291, 48.039066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.705906, 34.675217, 47.976513>,  <38.942226, 34.693771, 47.938980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.705906, 34.675217, 47.976513>,  <38.312038, 34.644291, 48.039066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705906, 34.675217, 47.976513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174405, -0.415088, 0.892908,
		0.004119, -0.906490, -0.422207,
		0.984665, 0.077313, -0.156387,
		39.001305, 34.698410, 47.929596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621861, 33.982033, 48.257603>,  <38.312038, 34.644291, 48.039066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621861, 33.982033, 48.257603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.938271, 34.226475, 48.269180>,  <39.128117, 34.373138, 48.276127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.938271, 34.226475, 48.269180>,  <38.621861, 33.982033, 48.257603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938271, 34.226475, 48.269180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320392, -0.454098, 0.831351,
		0.521182, -0.648345, -0.554994,
		0.791023, 0.611101, 0.028943,
		39.175579, 34.409805, 48.277863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744720, 33.479202, 47.855602>,  <38.621861, 33.982033, 48.257603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744720, 33.479202, 47.855602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.599678, 33.151062, 48.032478>,  <38.512653, 32.954178, 48.138603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.599678, 33.151062, 48.032478>,  <38.744720, 33.479202, 47.855602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599678, 33.151062, 48.032478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578137, -0.174135, -0.797141,
		0.730939, -0.544699, -0.411134,
		-0.362609, -0.820354, 0.442193,
		38.490894, 32.904957, 48.165134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851810, 32.890011, 47.388187>,  <38.744720, 33.479202, 47.855602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851810, 32.890011, 47.388187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.554825, 32.806808, 47.642895>,  <38.376633, 32.756886, 47.795719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.554825, 32.806808, 47.642895>,  <38.851810, 32.890011, 47.388187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554825, 32.806808, 47.642895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627611, -0.116321, -0.769788,
		0.234192, -0.971186, -0.044184,
		-0.742468, -0.208009, 0.636769,
		38.332085, 32.744408, 47.833927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456638, 32.215065, 47.136066>,  <38.851810, 32.890011, 47.388187>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456638, 32.215065, 47.136066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.230766, 32.450150, 47.367836>,  <38.095245, 32.591202, 47.506897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.230766, 32.450150, 47.367836>,  <38.456638, 32.215065, 47.136066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230766, 32.450150, 47.367836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784085, -0.162901, -0.598894,
		-0.257588, -0.792501, 0.552803,
		-0.564676, 0.587712, 0.579427,
		38.061363, 32.626465, 47.541664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823635, 31.890676, 47.112122>,  <38.456638, 32.215065, 47.136066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823635, 31.890676, 47.112122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.744438, 32.262993, 47.235039>,  <37.696922, 32.486382, 47.308788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.744438, 32.262993, 47.235039>,  <37.823635, 31.890676, 47.112122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744438, 32.262993, 47.235039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759868, 0.052290, -0.647971,
		-0.619193, -0.361793, 0.696925,
		-0.197989, 0.930790, 0.307293,
		37.685040, 32.542229, 47.327225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125706, 31.954327, 47.199745>,  <37.823635, 31.890676, 47.112122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125706, 31.954327, 47.199745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.247360, 32.330582, 47.139477>,  <37.320354, 32.556335, 47.103317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.247360, 32.330582, 47.139477>,  <37.125706, 31.954327, 47.199745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247360, 32.330582, 47.139477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695503, 0.111175, -0.709870,
		-0.650980, 0.320689, 0.688029,
		0.304139, 0.940637, -0.150667,
		37.338600, 32.612774, 47.094276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481071, 32.427074, 47.069359>,  <37.125706, 31.954327, 47.199745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481071, 32.427074, 47.069359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.804096, 32.628448, 46.946465>,  <36.997913, 32.749275, 46.872730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.804096, 32.628448, 46.946465>,  <36.481071, 32.427074, 47.069359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804096, 32.628448, 46.946465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398829, 0.082395, -0.913316,
		-0.434484, 0.860094, 0.267324,
		0.807564, 0.503438, -0.307231,
		37.046364, 32.779480, 46.854294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167439, 32.843220, 46.581207>,  <36.481071, 32.427074, 47.069359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167439, 32.843220, 46.581207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.546513, 32.916710, 46.476795>,  <36.773956, 32.960804, 46.414150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.546513, 32.916710, 46.476795>,  <36.167439, 32.843220, 46.581207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546513, 32.916710, 46.476795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291096, 0.161908, -0.942894,
		-0.130975, 0.969551, 0.206920,
		0.947686, 0.183729, -0.261027,
		36.830818, 32.971828, 46.398487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<41.838608, 31.264046, 48.610954> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.038071, 31.485086, 48.343830>,  <42.157749, 31.617712, 48.183556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.038071, 31.485086, 48.343830>,  <41.838608, 31.264046, 48.610954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.038071, 31.485086, 48.343830> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665852, -0.249064, -0.703284,
		-0.554965, 0.795360, 0.243755,
		0.498653, 0.552603, -0.667813,
		42.187668, 31.650867, 48.143486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.251614, 31.689054, 48.136707>,  <41.838608, 31.264046, 48.610954>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.251614, 31.689054, 48.136707> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.599236, 31.621191, 47.950821>,  <41.807808, 31.580473, 47.839291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.599236, 31.621191, 47.950821>,  <41.251614, 31.689054, 48.136707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.599236, 31.621191, 47.950821> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485326, -0.110213, -0.867359,
		0.095936, 0.979321, -0.178120,
		0.869054, -0.169657, -0.464717,
		41.859951, 31.570293, 47.811405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.329029, 32.203762, 47.567753>,  <41.251614, 31.689054, 48.136707>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.329029, 32.203762, 47.567753> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.559021, 31.886696, 47.486675>,  <41.697014, 31.696457, 47.438030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.559021, 31.886696, 47.486675>,  <41.329029, 32.203762, 47.567753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.559021, 31.886696, 47.486675> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422622, -0.075616, -0.903146,
		0.700565, 0.604951, -0.378475,
		0.574978, -0.792664, -0.202691,
		41.731514, 31.648897, 47.425869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510540, 32.267998, 46.715466>,  <41.329029, 32.203762, 47.567753>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.510540, 32.267998, 46.715466> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.590496, 31.887955, 46.811241>,  <41.638470, 31.659927, 46.868706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.590496, 31.887955, 46.811241>,  <41.510540, 32.267998, 46.715466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.590496, 31.887955, 46.811241> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216994, -0.281234, -0.934784,
		0.955488, 0.134898, -0.262385,
		0.199892, -0.950110, 0.239444,
		41.650463, 31.602922, 46.883076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.016502, 32.049282, 46.178326>,  <41.510540, 32.267998, 46.715466>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.016502, 32.049282, 46.178326> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.858440, 31.727915, 46.356483>,  <41.763603, 31.535095, 46.463379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.858440, 31.727915, 46.356483>,  <42.016502, 32.049282, 46.178326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.858440, 31.727915, 46.356483> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367794, -0.305925, -0.878144,
		0.841771, -0.510819, -0.174601,
		-0.395158, -0.803414, 0.445395,
		41.739895, 31.486891, 46.490101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.208611, 31.486586, 45.766487>,  <42.016502, 32.049282, 46.178326>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.208611, 31.486586, 45.766487> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.895290, 31.333101, 45.962120>,  <41.707298, 31.241011, 46.079498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.895290, 31.333101, 45.962120>,  <42.208611, 31.486586, 45.766487>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.895290, 31.333101, 45.962120> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317043, -0.430155, -0.845252,
		0.534712, -0.817149, 0.215290,
		-0.783305, -0.383710, 0.489081,
		41.660297, 31.217989, 46.108845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.176640, 30.838066, 45.578442>,  <42.208611, 31.486586, 45.766487>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.176640, 30.838066, 45.578442> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.815273, 30.950562, 45.707897>,  <41.598454, 31.018059, 45.785572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.815273, 30.950562, 45.707897>,  <42.176640, 30.838066, 45.578442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.815273, 30.950562, 45.707897> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423216, -0.463864, -0.778279,
		-0.068757, -0.840080, 0.538087,
		-0.903417, 0.281239, 0.323642,
		41.544247, 31.034933, 45.804989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.690613, 30.264160, 45.492825>,  <42.176640, 30.838066, 45.578442>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.690613, 30.264160, 45.492825> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.418629, 30.555260, 45.528664>,  <41.255436, 30.729919, 45.550167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.418629, 30.555260, 45.528664>,  <41.690613, 30.264160, 45.492825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.418629, 30.555260, 45.528664> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598702, -0.480493, -0.640845,
		-0.423323, -0.489394, 0.762424,
		-0.679966, 0.727749, 0.089597,
		41.214638, 30.773584, 45.555542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112747, 29.991682, 45.233829>,  <41.690613, 30.264160, 45.492825>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.112747, 29.991682, 45.233829> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.995518, 30.373781, 45.249901>,  <40.925182, 30.603041, 45.259544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.995518, 30.373781, 45.249901>,  <41.112747, 29.991682, 45.233829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.995518, 30.373781, 45.249901> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722823, -0.193864, -0.663282,
		-0.625808, -0.223432, 0.747290,
		-0.293071, 0.955246, 0.040180,
		40.907597, 30.660355, 45.261955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.352371, 30.015734, 45.067135>,  <41.112747, 29.991682, 45.233829>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.352371, 30.015734, 45.067135> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.462978, 30.387787, 44.970482>,  <40.529343, 30.611019, 44.912491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.462978, 30.387787, 44.970482>,  <40.352371, 30.015734, 45.067135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462978, 30.387787, 44.970482> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588674, -0.034797, -0.807621,
		-0.759604, 0.365567, 0.537924,
		0.276521, 0.930135, -0.241632,
		40.545937, 30.666828, 44.897991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762543, 30.377813, 44.893860>,  <40.352371, 30.015734, 45.067135>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762543, 30.377813, 44.893860> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.040070, 30.583454, 44.692139>,  <40.206585, 30.706839, 44.571106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.040070, 30.583454, 44.692139>,  <39.762543, 30.377813, 44.893860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.040070, 30.583454, 44.692139> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559774, -0.055561, -0.826780,
		-0.453068, 0.855928, 0.249231,
		0.693817, 0.514101, -0.504300,
		40.248215, 30.737684, 44.540848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274559, 30.668137, 44.519089>,  <39.762543, 30.377813, 44.893860>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274559, 30.668137, 44.519089> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.643951, 30.729353, 44.378372>,  <39.865585, 30.766083, 44.293941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.643951, 30.729353, 44.378372>,  <39.274559, 30.668137, 44.519089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643951, 30.729353, 44.378372> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361802, 0.042445, -0.931288,
		-0.127593, 0.987308, 0.094568,
		0.923482, 0.153040, -0.351794,
		39.920998, 30.775265, 44.272835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297596, 30.958784, 45.168842>,  <39.274559, 30.668137, 44.519089>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297596, 30.958784, 45.168842> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.907040, 30.892147, 45.113834>,  <38.672707, 30.852165, 45.080830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.907040, 30.892147, 45.113834>,  <39.297596, 30.958784, 45.168842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907040, 30.892147, 45.113834> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095806, -0.236626, 0.966866,
		-0.193616, 0.957212, 0.215078,
		-0.976388, -0.166594, -0.137521,
		38.614124, 30.842169, 45.072578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971714, 31.385489, 45.611759>,  <39.297596, 30.958784, 45.168842>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971714, 31.385489, 45.611759> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.708324, 31.101532, 45.511787>,  <38.550289, 30.931158, 45.451805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.708324, 31.101532, 45.511787>,  <38.971714, 31.385489, 45.611759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708324, 31.101532, 45.511787> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004294, -0.328539, 0.944481,
		-0.752592, 0.622988, 0.213286,
		-0.658473, -0.709893, -0.249931,
		38.510784, 30.888563, 45.436810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556526, 31.451834, 46.139198>,  <38.971714, 31.385489, 45.611759>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556526, 31.451834, 46.139198> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.502586, 31.096136, 45.964355>,  <38.470222, 30.882717, 45.859451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.502586, 31.096136, 45.964355>,  <38.556526, 31.451834, 46.139198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502586, 31.096136, 45.964355> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107458, -0.425407, 0.898600,
		-0.985022, 0.168149, -0.038189,
		-0.134853, -0.889244, -0.437104,
		38.462132, 30.829363, 45.833225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985382, 31.179941, 46.472546>,  <38.556526, 31.451834, 46.139198>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985382, 31.179941, 46.472546> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.180840, 30.855501, 46.343952>,  <38.298115, 30.660837, 46.266796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.180840, 30.855501, 46.343952>,  <37.985382, 31.179941, 46.472546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180840, 30.855501, 46.343952> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156280, -0.281139, 0.946856,
		-0.858376, -0.512912, -0.010617,
		0.488639, -0.811099, -0.321481,
		38.327431, 30.612171, 46.247509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740379, 30.536104, 46.852119>,  <37.985382, 31.179941, 46.472546>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740379, 30.536104, 46.852119> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.093166, 30.421886, 46.702133>,  <38.304840, 30.353355, 46.612141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.093166, 30.421886, 46.702133>,  <37.740379, 30.536104, 46.852119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093166, 30.421886, 46.702133> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210245, -0.473665, 0.855242,
		-0.421815, -0.833130, -0.357724,
		0.881969, -0.285545, -0.374960,
		38.357758, 30.336222, 46.589645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774742, 29.863398, 46.997242>,  <37.740379, 30.536104, 46.852119>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774742, 29.863398, 46.997242> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.159256, 29.952534, 46.932407>,  <38.389965, 30.006016, 46.893505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.159256, 29.952534, 46.932407>,  <37.774742, 29.863398, 46.997242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159256, 29.952534, 46.932407> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248978, -0.450364, 0.857428,
		0.118071, -0.864589, -0.488411,
		0.961285, 0.222840, -0.162088,
		38.447643, 30.019386, 46.883781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089939, 29.318190, 47.287403>,  <37.774742, 29.863398, 46.997242>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089939, 29.318190, 47.287403> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.361141, 29.609682, 47.248913>,  <38.523861, 29.784578, 47.225819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.361141, 29.609682, 47.248913>,  <38.089939, 29.318190, 47.287403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361141, 29.609682, 47.248913> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467821, -0.326829, 0.821174,
		0.566968, -0.601774, -0.562508,
		0.678005, 0.728732, -0.096221,
		38.564545, 29.828302, 47.220047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642147, 28.993168, 47.398479>,  <38.089939, 29.318190, 47.287403>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642147, 28.993168, 47.398479> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.741055, 29.371002, 47.484840>,  <38.800400, 29.597704, 47.536659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.741055, 29.371002, 47.484840>,  <38.642147, 28.993168, 47.398479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741055, 29.371002, 47.484840> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182159, -0.264168, 0.947119,
		0.951671, -0.194863, -0.237385,
		0.247267, 0.944587, 0.215905,
		38.815235, 29.654379, 47.549610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052628, 28.834599, 47.789467>,  <38.642147, 28.993168, 47.398479>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052628, 28.834599, 47.789467> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.987930, 29.219664, 47.876297>,  <38.949112, 29.450703, 47.928394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.987930, 29.219664, 47.876297>,  <39.052628, 28.834599, 47.789467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987930, 29.219664, 47.876297> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232979, -0.176500, 0.956331,
		0.958937, 0.205251, -0.195733,
		-0.161740, 0.962663, 0.217072,
		38.939407, 29.508463, 47.941418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693199, 29.073059, 48.192875>,  <39.052628, 28.834599, 47.789467>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693199, 29.073059, 48.192875> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.396992, 29.328209, 48.277493>,  <39.219269, 29.481298, 48.328262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.396992, 29.328209, 48.277493>,  <39.693199, 29.073059, 48.192875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396992, 29.328209, 48.277493> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183386, -0.111033, 0.976750,
		0.646533, 0.762094, -0.034756,
		-0.740517, 0.637875, 0.211544,
		39.174835, 29.519571, 48.340954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944103, 29.669809, 48.542580>,  <39.693199, 29.073059, 48.192875>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944103, 29.669809, 48.542580> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.556122, 29.683037, 48.638996>,  <39.323334, 29.690973, 48.696846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.556122, 29.683037, 48.638996>,  <39.944103, 29.669809, 48.542580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556122, 29.683037, 48.638996> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242770, 0.066372, 0.967811,
		0.016008, 0.997247, -0.072406,
		-0.969952, 0.033071, 0.241040,
		39.265137, 29.692959, 48.711308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780819, 30.259623, 48.834797>,  <39.944103, 29.669809, 48.542580>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.780819, 30.259623, 48.834797> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.516365, 30.006767, 48.996441>,  <39.357693, 29.855055, 49.093426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.516365, 30.006767, 48.996441>,  <39.780819, 30.259623, 48.834797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516365, 30.006767, 48.996441> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435203, 0.115624, 0.892877,
		-0.611146, 0.766180, 0.198665,
		-0.661134, -0.632138, 0.404107,
		39.318024, 29.817125, 49.117672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831039, 30.430378, 49.554638>,  <39.780819, 30.259623, 48.834797>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831039, 30.430378, 49.554638> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.602398, 30.102619, 49.537388>,  <39.465214, 29.905964, 49.527039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.602398, 30.102619, 49.537388>,  <39.831039, 30.430378, 49.554638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602398, 30.102619, 49.537388> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377317, -0.309159, 0.872956,
		-0.728629, 0.482713, 0.485888,
		-0.571604, -0.819395, -0.043126,
		39.430916, 29.856800, 49.524448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653164, 30.163992, 50.293243>,  <39.831039, 30.430378, 49.554638>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653164, 30.163992, 50.293243> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.650566, 29.845079, 50.051815>,  <39.649006, 29.653732, 49.906956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.650566, 29.845079, 50.051815>,  <39.653164, 30.163992, 50.293243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650566, 29.845079, 50.051815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435427, -0.545616, 0.716035,
		-0.900200, -0.258160, 0.350703,
		-0.006498, -0.797281, -0.603573,
		39.648617, 29.605896, 49.870743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609028, 30.842758, 50.140488>,  <39.653164, 30.163992, 50.293243>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609028, 30.842758, 50.140488> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.454731, 31.146469, 50.350136>,  <39.362152, 31.328695, 50.475925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.454731, 31.146469, 50.350136>,  <39.609028, 30.842758, 50.140488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454731, 31.146469, 50.350136> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472994, 0.325003, -0.818932,
		-0.792138, -0.563799, 0.233768,
		-0.385738, 0.759278, 0.524121,
		39.339008, 31.374252, 50.507374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785530, 30.796141, 50.118328>,  <39.609028, 30.842758, 50.140488>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785530, 30.796141, 50.118328> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.929001, 31.164768, 50.177742>,  <39.015083, 31.385944, 50.213390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.929001, 31.164768, 50.177742>,  <38.785530, 30.796141, 50.118328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929001, 31.164768, 50.177742> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415375, 0.300075, -0.858731,
		-0.835950, 0.246312, 0.490427,
		0.358681, 0.921567, 0.148536,
		39.036606, 31.441238, 50.222301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226753, 31.237564, 49.959118>,  <38.785530, 30.796141, 50.118328>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226753, 31.237564, 49.959118> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.525600, 31.502016, 49.986599>,  <38.704910, 31.660688, 50.003086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.525600, 31.502016, 49.986599>,  <38.226753, 31.237564, 49.959118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525600, 31.502016, 49.986599> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419962, 0.549628, -0.722178,
		-0.515216, 0.510700, 0.688287,
		0.747118, 0.661132, 0.068702,
		38.749737, 31.700356, 50.007210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951244, 31.939459, 49.974495>,  <38.226753, 31.237564, 49.959118>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951244, 31.939459, 49.974495> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.328861, 31.983818, 49.850246>,  <38.555431, 32.010433, 49.775696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.328861, 31.983818, 49.850246>,  <37.951244, 31.939459, 49.974495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328861, 31.983818, 49.850246> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312215, 0.604098, -0.733203,
		0.106334, 0.789156, 0.604919,
		0.944042, 0.110900, -0.310622,
		38.612072, 32.017090, 49.757061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178772, 32.680359, 49.935310>,  <37.951244, 31.939459, 49.974495>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178772, 32.680359, 49.935310> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.410900, 32.481930, 49.676964>,  <38.550179, 32.362873, 49.521957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.410900, 32.481930, 49.676964>,  <38.178772, 32.680359, 49.935310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410900, 32.481930, 49.676964> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289492, 0.615611, -0.732951,
		0.761196, 0.612321, 0.213645,
		0.580324, -0.496071, -0.645862,
		38.584999, 32.333107, 49.483204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332657, 33.187737, 49.550327>,  <38.178772, 32.680359, 49.935310>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332657, 33.187737, 49.550327> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.476265, 32.893757, 49.320213>,  <38.562431, 32.717369, 49.182144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.476265, 32.893757, 49.320213>,  <38.332657, 33.187737, 49.550327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476265, 32.893757, 49.320213> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236001, 0.524863, -0.817816,
		0.902999, 0.429382, 0.014989,
		0.359023, -0.734949, -0.575284,
		38.583973, 32.673271, 49.147629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674572, 33.501698, 48.857357>,  <38.332657, 33.187737, 49.550327>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674572, 33.501698, 48.857357> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.618607, 33.111294, 48.790623>,  <38.585026, 32.877052, 48.750584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.618607, 33.111294, 48.790623>,  <38.674572, 33.501698, 48.857357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618607, 33.111294, 48.790623> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231522, 0.196068, -0.952867,
		0.962715, -0.094696, -0.253401,
		-0.139916, -0.976007, -0.166833,
		38.576633, 32.818493, 48.740574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363499, 33.493179, 48.738647>,  <38.674572, 33.501698, 48.857357>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363499, 33.493179, 48.738647> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.430779, 33.886589, 48.712147>,  <39.471146, 34.122635, 48.696247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.430779, 33.886589, 48.712147>,  <39.363499, 33.493179, 48.738647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430779, 33.886589, 48.712147> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271833, 0.018330, 0.962170,
		0.947532, -0.179843, -0.264271,
		0.168195, 0.983525, -0.066255,
		39.481236, 34.181648, 48.692268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047741, 33.617851, 48.985451>,  <39.363499, 33.493179, 48.738647>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047741, 33.617851, 48.985451> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.849319, 33.961750, 49.034069>,  <39.730267, 34.168087, 49.063240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.849319, 33.961750, 49.034069>,  <40.047741, 33.617851, 48.985451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.849319, 33.961750, 49.034069> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299030, 0.037731, 0.953498,
		0.815177, 0.509330, -0.275806,
		-0.496051, 0.859744, 0.121548,
		39.700504, 34.219673, 49.070534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409496, 33.939224, 49.417431>,  <40.047741, 33.617851, 48.985451>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.409496, 33.939224, 49.417431> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.094128, 34.182121, 49.456711>,  <39.904907, 34.327862, 49.480278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.094128, 34.182121, 49.456711>,  <40.409496, 33.939224, 49.417431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.094128, 34.182121, 49.456711> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201155, 0.103650, 0.974060,
		0.581315, 0.787725, -0.203870,
		-0.788423, 0.607245, 0.098201,
		39.857601, 34.364296, 49.486172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700531, 34.556938, 49.858887>,  <40.409496, 33.939224, 49.417431>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.700531, 34.556938, 49.858887> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.302109, 34.529537, 49.881447>,  <40.063057, 34.513096, 49.894981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.302109, 34.529537, 49.881447>,  <40.700531, 34.556938, 49.858887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302109, 34.529537, 49.881447> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065637, -0.141080, 0.987820,
		-0.059712, 0.987625, 0.145020,
		-0.996055, -0.068504, 0.056401,
		40.003292, 34.508987, 49.898369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570869, 34.939159, 50.364681>,  <40.700531, 34.556938, 49.858887>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570869, 34.939159, 50.364681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.236767, 34.719223, 50.362854>,  <40.036304, 34.587261, 50.361759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.236767, 34.719223, 50.362854>,  <40.570869, 34.939159, 50.364681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236767, 34.719223, 50.362854> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129762, -0.205180, 0.970084,
		-0.534331, 0.809675, 0.242726,
		-0.835256, -0.549843, -0.004569,
		39.986191, 34.554272, 50.361485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.197754, 35.222389, 50.933369>,  <40.570869, 34.939159, 50.364681>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.197754, 35.222389, 50.933369> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.060474, 34.855053, 50.854511>,  <39.978107, 34.634651, 50.807198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.060474, 34.855053, 50.854511>,  <40.197754, 35.222389, 50.933369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060474, 34.855053, 50.854511> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133078, -0.255318, 0.957655,
		-0.929787, 0.302432, 0.209836,
		-0.343200, -0.918340, -0.197145,
		39.957516, 34.579552, 50.795368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682468, 35.179203, 51.384136>,  <40.197754, 35.222389, 50.933369>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682468, 35.179203, 51.384136> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.780045, 34.802567, 51.291275>,  <39.838589, 34.576584, 51.235558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.780045, 34.802567, 51.291275>,  <39.682468, 35.179203, 51.384136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780045, 34.802567, 51.291275> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165937, -0.195332, 0.966597,
		-0.955489, -0.274313, 0.108596,
		0.243938, -0.941593, -0.232156,
		39.853226, 34.520088, 51.221626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347145, 34.773182, 51.817169>,  <39.682468, 35.179203, 51.384136>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347145, 34.773182, 51.817169> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.601971, 34.496841, 51.680424>,  <39.754868, 34.331036, 51.598377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.601971, 34.496841, 51.680424>,  <39.347145, 34.773182, 51.817169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601971, 34.496841, 51.680424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146571, -0.326849, 0.933642,
		-0.756746, -0.644898, -0.106965,
		0.637065, -0.690852, -0.341865,
		39.793091, 34.289585, 51.577866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054539, 34.098415, 51.917866>,  <39.347145, 34.773182, 51.817169>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054539, 34.098415, 51.917866> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.452705, 34.071785, 51.890408>,  <39.691605, 34.055809, 51.873932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.452705, 34.071785, 51.890408>,  <39.054539, 34.098415, 51.917866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452705, 34.071785, 51.890408> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044737, -0.310258, 0.949599,
		-0.084515, -0.948319, -0.305858,
		0.995417, -0.066572, -0.068647,
		39.751331, 34.051815, 51.869812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.958565, 34.354256, 36.310154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324657, 34.198856, 36.352901>,  <36.544312, 34.105618, 36.378548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324657, 34.198856, 36.352901>,  <35.958565, 34.354256, 36.310154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324657, 34.198856, 36.352901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038445, 0.179815, 0.982949,
		-0.401091, -0.903734, 0.149637,
		0.915231, -0.388500, 0.106866,
		36.599228, 34.082306, 36.384960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970707, 33.733891, 36.617771>,  <35.958565, 34.354256, 36.310154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970707, 33.733891, 36.617771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317066, 33.915218, 36.702362>,  <36.524883, 34.024014, 36.753117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317066, 33.915218, 36.702362>,  <35.970707, 33.733891, 36.617771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317066, 33.915218, 36.702362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128525, -0.206946, 0.969874,
		0.483425, -0.866992, -0.120932,
		0.865899, 0.453319, 0.211473,
		36.576836, 34.051212, 36.765804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219990, 33.344063, 37.163750>,  <35.970707, 33.733891, 36.617771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219990, 33.344063, 37.163750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456387, 33.666580, 37.173756>,  <36.598225, 33.860092, 37.179760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456387, 33.666580, 37.173756>,  <36.219990, 33.344063, 37.163750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456387, 33.666580, 37.173756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057171, -0.072796, 0.995707,
		0.804652, -0.587021, -0.089118,
		0.590988, 0.806292, 0.025015,
		36.633682, 33.908466, 37.181259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854656, 33.254524, 37.697727>,  <36.219990, 33.344063, 37.163750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854656, 33.254524, 37.697727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.773537, 33.642899, 37.646896>,  <36.724865, 33.875923, 37.616398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.773537, 33.642899, 37.646896>,  <36.854656, 33.254524, 37.697727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773537, 33.642899, 37.646896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009049, 0.131623, 0.991259,
		0.979179, 0.199875, -0.035479,
		-0.202798, 0.970940, -0.127074,
		36.712696, 33.934181, 37.608776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194305, 33.616955, 38.318832>,  <36.854656, 33.254524, 37.697727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194305, 33.616955, 38.318832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.967266, 33.916245, 38.181431>,  <36.831043, 34.095818, 38.098988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.967266, 33.916245, 38.181431>,  <37.194305, 33.616955, 38.318832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967266, 33.916245, 38.181431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063550, 0.376169, 0.924369,
		0.820850, 0.546499, -0.165963,
		-0.567597, 0.748222, -0.343508,
		36.796986, 34.140713, 38.078377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450012, 34.340027, 38.611866>,  <37.194305, 33.616955, 38.318832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450012, 34.340027, 38.611866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062710, 34.357685, 38.513454>,  <36.830330, 34.368279, 38.454407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062710, 34.357685, 38.513454>,  <37.450012, 34.340027, 38.611866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062710, 34.357685, 38.513454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192303, 0.497232, 0.846038,
		0.159678, 0.866494, -0.472960,
		-0.968258, 0.044142, -0.246026,
		36.772232, 34.370926, 38.439648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254295, 35.019222, 38.735310>,  <37.450012, 34.340027, 38.611866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254295, 35.019222, 38.735310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.905300, 34.823769, 38.735123>,  <36.695904, 34.706497, 38.735008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.905300, 34.823769, 38.735123>,  <37.254295, 35.019222, 38.735310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.905300, 34.823769, 38.735123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261957, 0.466929, 0.844604,
		-0.412483, 0.737031, -0.535392,
		-0.872489, -0.488634, -0.000470,
		36.643555, 34.677177, 38.734982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695442, 35.564548, 38.777328>,  <37.254295, 35.019222, 38.735310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695442, 35.564548, 38.777328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574883, 35.218750, 38.938229>,  <36.502548, 35.011269, 39.034767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574883, 35.218750, 38.938229>,  <36.695442, 35.564548, 38.777328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574883, 35.218750, 38.938229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355167, 0.493293, 0.794052,
		-0.884883, 0.096459, -0.455718,
		-0.301396, -0.864498, 0.402247,
		36.484463, 34.959400, 39.058903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142372, 35.809937, 39.254051>,  <36.695442, 35.564548, 38.777328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142372, 35.809937, 39.254051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.204941, 35.426071, 39.347496>,  <36.242481, 35.195751, 39.403561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.204941, 35.426071, 39.347496>,  <36.142372, 35.809937, 39.254051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204941, 35.426071, 39.347496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228642, 0.194914, 0.953798,
		-0.960862, -0.202604, -0.188932,
		0.156418, -0.959667, 0.233609,
		36.251865, 35.138172, 39.417580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616600, 35.625755, 39.668369>,  <36.142372, 35.809937, 39.254051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616600, 35.625755, 39.668369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887333, 35.344856, 39.756687>,  <36.049774, 35.176319, 39.809677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887333, 35.344856, 39.756687>,  <35.616600, 35.625755, 39.668369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887333, 35.344856, 39.756687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089570, 0.219151, 0.971571,
		-0.730667, -0.677368, 0.085429,
		0.676833, -0.702243, 0.220798,
		36.090382, 35.134182, 39.822926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324787, 35.257675, 40.269161>,  <35.616600, 35.625755, 39.668369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324787, 35.257675, 40.269161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715038, 35.170040, 40.264256>,  <35.949188, 35.117458, 40.261314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715038, 35.170040, 40.264256>,  <35.324787, 35.257675, 40.269161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715038, 35.170040, 40.264256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076134, 0.285561, 0.955332,
		-0.205804, -0.932981, 0.295282,
		0.975627, -0.219092, -0.012262,
		36.007725, 35.104313, 40.260578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453533, 34.715908, 40.869389>,  <35.324787, 35.257675, 40.269161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453533, 34.715908, 40.869389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821709, 34.857918, 40.803963>,  <36.042614, 34.943123, 40.764709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821709, 34.857918, 40.803963>,  <35.453533, 34.715908, 40.869389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821709, 34.857918, 40.803963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077016, 0.245522, 0.966327,
		0.383227, -0.902041, 0.198645,
		0.920438, 0.355023, -0.163562,
		36.097839, 34.964424, 40.754894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419800, 33.921669, 40.704506>,  <35.453533, 34.715908, 40.869389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419800, 33.921669, 40.704506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057201, 33.802105, 40.823784>,  <34.839642, 33.730366, 40.895351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057201, 33.802105, 40.823784>,  <35.419800, 33.921669, 40.704506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057201, 33.802105, 40.823784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374466, 0.242916, -0.894856,
		0.195040, -0.922847, -0.332133,
		-0.906496, -0.298905, 0.298197,
		34.785252, 33.712429, 40.913242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196453, 33.490326, 40.168339>,  <35.419800, 33.921669, 40.704506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196453, 33.490326, 40.168339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869640, 33.597965, 40.372318>,  <34.673553, 33.662548, 40.494705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869640, 33.597965, 40.372318>,  <35.196453, 33.490326, 40.168339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869640, 33.597965, 40.372318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475813, 0.184884, -0.859895,
		-0.325675, -0.945201, -0.023017,
		-0.817030, 0.269095, 0.509951,
		34.624531, 33.678692, 40.525303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677471, 33.177784, 39.817974>,  <35.196453, 33.490326, 40.168339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677471, 33.177784, 39.817974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479137, 33.439011, 40.046936>,  <34.360138, 33.595749, 40.184315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479137, 33.439011, 40.046936>,  <34.677471, 33.177784, 39.817974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479137, 33.439011, 40.046936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555799, 0.267812, -0.786997,
		-0.667261, -0.708362, 0.230186,
		-0.495833, 0.653070, 0.572407,
		34.330387, 33.634930, 40.218658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013618, 33.019371, 39.680592>,  <34.677471, 33.177784, 39.817974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013618, 33.019371, 39.680592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.977558, 33.388378, 39.830708>,  <33.955921, 33.609783, 39.920776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.977558, 33.388378, 39.830708>,  <34.013618, 33.019371, 39.680592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977558, 33.388378, 39.830708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757890, 0.180923, -0.626793,
		-0.646124, -0.340933, 0.682853,
		-0.090151, 0.922514, 0.375288,
		33.950512, 33.665131, 39.943295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306183, 33.156204, 39.801834>,  <34.013618, 33.019371, 39.680592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306183, 33.156204, 39.801834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.468704, 33.520767, 39.775768>,  <33.566219, 33.739506, 39.760128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.468704, 33.520767, 39.775768>,  <33.306183, 33.156204, 39.801834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468704, 33.520767, 39.775768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794704, 0.317280, -0.517474,
		-0.450957, 0.262036, 0.853215,
		0.406305, 0.911411, -0.065161,
		33.590595, 33.794189, 39.756222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764523, 33.624271, 39.965443>,  <33.306183, 33.156204, 39.801834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764523, 33.624271, 39.965443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017353, 33.839600, 39.742485>,  <33.169052, 33.968796, 39.608711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017353, 33.839600, 39.742485>,  <32.764523, 33.624271, 39.965443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017353, 33.839600, 39.742485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771941, 0.374566, -0.513622,
		-0.067711, 0.754925, 0.652306,
		0.632078, 0.538320, -0.557395,
		33.206978, 34.001095, 39.575268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451447, 34.297165, 40.003700>,  <32.764523, 33.624271, 39.965443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451447, 34.297165, 40.003700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714119, 34.283646, 39.702335>,  <32.871723, 34.275532, 39.521519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714119, 34.283646, 39.702335>,  <32.451447, 34.297165, 40.003700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714119, 34.283646, 39.702335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747704, 0.101310, -0.656258,
		0.098510, 0.994280, 0.041256,
		0.656684, -0.033800, -0.753408,
		32.911125, 34.273506, 39.476315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362267, 34.911453, 39.612339>,  <32.451447, 34.297165, 40.003700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362267, 34.911453, 39.612339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.557045, 34.653946, 39.376221>,  <32.673912, 34.499443, 39.234550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.557045, 34.653946, 39.376221>,  <32.362267, 34.911453, 39.612339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557045, 34.653946, 39.376221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569684, 0.278200, -0.773347,
		0.662075, 0.712859, -0.231276,
		0.486946, -0.643768, -0.590293,
		32.703129, 34.460815, 39.199131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565228, 35.211330, 39.077770>,  <32.362267, 34.911453, 39.612339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565228, 35.211330, 39.077770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599941, 34.839149, 38.935375>,  <32.620770, 34.615841, 38.849937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599941, 34.839149, 38.935375>,  <32.565228, 35.211330, 39.077770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599941, 34.839149, 38.935375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655612, 0.215710, -0.723631,
		0.750094, 0.296185, -0.591298,
		0.086780, -0.930453, -0.355985,
		32.625977, 34.560013, 38.828579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739922, 35.263988, 38.465889>,  <32.565228, 35.211330, 39.077770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739922, 35.263988, 38.465889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599739, 34.889420, 38.459148>,  <32.515629, 34.664677, 38.455105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599739, 34.889420, 38.459148>,  <32.739922, 35.263988, 38.465889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599739, 34.889420, 38.459148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569269, 0.227266, -0.790116,
		0.743714, -0.267313, -0.612726,
		-0.350459, -0.936427, -0.016848,
		32.494602, 34.608490, 38.454094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644501, 35.211555, 37.761898>,  <32.739922, 35.263988, 38.465889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644501, 35.211555, 37.761898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427052, 34.940880, 37.960522>,  <32.296581, 34.778473, 38.079697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427052, 34.940880, 37.960522>,  <32.644501, 35.211555, 37.761898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427052, 34.940880, 37.960522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763721, 0.153404, -0.627054,
		0.348149, -0.720108, -0.600198,
		-0.543619, -0.676692, 0.496554,
		32.263966, 34.737873, 38.109489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413570, 34.680092, 37.312599>,  <32.644501, 35.211555, 37.761898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413570, 34.680092, 37.312599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.135761, 34.696159, 37.599937>,  <31.969074, 34.705799, 37.772339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.135761, 34.696159, 37.599937>,  <32.413570, 34.680092, 37.312599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.135761, 34.696159, 37.599937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717928, 0.026594, -0.695610,
		-0.047052, -0.998839, 0.010375,
		-0.694526, 0.040178, 0.718345,
		31.927404, 34.708210, 37.815441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960743, 34.173004, 37.055019>,  <32.413570, 34.680092, 37.312599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.960743, 34.173004, 37.055019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746204, 34.351868, 37.341343>,  <31.617481, 34.459187, 37.513138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746204, 34.351868, 37.341343>,  <31.960743, 34.173004, 37.055019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746204, 34.351868, 37.341343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810008, -0.034453, -0.585406,
		-0.237108, -0.893790, 0.380682,
		-0.536346, 0.447160, 0.715808,
		31.585300, 34.486015, 37.556087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346022, 33.854805, 37.111797>,  <31.960743, 34.173004, 37.055019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346022, 33.854805, 37.111797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261353, 34.220680, 37.249519>,  <31.210552, 34.440205, 37.332153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261353, 34.220680, 37.249519>,  <31.346022, 33.854805, 37.111797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.261353, 34.220680, 37.249519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804084, 0.037273, -0.593346,
		-0.555558, -0.402447, 0.727593,
		-0.211670, 0.914684, 0.344308,
		31.197851, 34.495087, 37.352814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586950, 33.130943, 37.061321>,  <31.346022, 33.854805, 37.111797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.586950, 33.130943, 37.061321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.511641, 32.845417, 36.791500>,  <31.466455, 32.674103, 36.629608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.511641, 32.845417, 36.791500>,  <31.586950, 33.130943, 37.061321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.511641, 32.845417, 36.791500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462650, 0.541395, -0.702030,
		0.866318, -0.444258, 0.228314,
		-0.188274, -0.713811, -0.674556,
		31.455158, 32.631275, 36.589134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298836, 32.861389, 36.630558>,  <31.586950, 33.130943, 37.061321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298836, 32.861389, 36.630558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928465, 32.902824, 36.485275>,  <31.706242, 32.927685, 36.398106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928465, 32.902824, 36.485275>,  <32.298836, 32.861389, 36.630558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.928465, 32.902824, 36.485275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335352, 0.667893, -0.664423,
		0.173757, -0.737013, -0.653161,
		-0.925931, 0.103591, -0.363210,
		31.650686, 32.933903, 36.376312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966190, 32.433296, 36.403824>,  <32.298836, 32.861389, 36.630558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966190, 32.433296, 36.403824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269135, 32.387421, 36.146687>,  <33.450901, 32.359894, 35.992405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269135, 32.387421, 36.146687>,  <32.966190, 32.433296, 36.403824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269135, 32.387421, 36.146687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544163, -0.433322, 0.718414,
		-0.360951, -0.893912, -0.265774,
		0.757365, -0.114689, -0.642842,
		33.496346, 32.353012, 35.953835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138691, 31.777748, 36.517288>,  <32.966190, 32.433296, 36.403824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138691, 31.777748, 36.517288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449852, 31.975019, 36.361526>,  <33.636551, 32.093384, 36.268070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449852, 31.975019, 36.361526>,  <33.138691, 31.777748, 36.517288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449852, 31.975019, 36.361526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578334, -0.319553, 0.750610,
		0.245749, -0.809111, -0.533804,
		0.777906, 0.493179, -0.389407,
		33.683224, 32.122974, 36.244705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653248, 31.263483, 36.391441>,  <33.138691, 31.777748, 36.517288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653248, 31.263483, 36.391441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803806, 31.630711, 36.441200>,  <33.894142, 31.851048, 36.471054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803806, 31.630711, 36.441200>,  <33.653248, 31.263483, 36.391441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803806, 31.630711, 36.441200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564613, -0.333762, 0.754861,
		0.734533, -0.213892, -0.643981,
		0.376395, 0.918070, 0.124394,
		33.916725, 31.906132, 36.478519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355389, 31.201963, 36.392368>,  <33.653248, 31.263483, 36.391441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355389, 31.201963, 36.392368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261238, 31.540760, 36.583031>,  <34.204746, 31.744038, 36.697430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261238, 31.540760, 36.583031>,  <34.355389, 31.201963, 36.392368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261238, 31.540760, 36.583031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716954, -0.179802, 0.673533,
		0.656182, 0.500275, -0.564934,
		-0.235375, 0.846992, 0.476657,
		34.190624, 31.794857, 36.726028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909527, 31.320770, 36.741924>,  <34.355389, 31.201963, 36.392368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909527, 31.320770, 36.741924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681114, 31.588192, 36.932487>,  <34.544067, 31.748644, 37.046825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681114, 31.588192, 36.932487>,  <34.909527, 31.320770, 36.741924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681114, 31.588192, 36.932487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597845, -0.059031, 0.799435,
		0.562586, 0.741319, -0.365982,
		-0.571032, 0.668552, 0.476404,
		34.509804, 31.788757, 37.075409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382141, 31.784128, 37.046066>,  <34.909527, 31.320770, 36.741924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382141, 31.784128, 37.046066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.040318, 31.808172, 37.252411>,  <34.835224, 31.822599, 37.376217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.040318, 31.808172, 37.252411>,  <35.382141, 31.784128, 37.046066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040318, 31.808172, 37.252411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506631, -0.122007, 0.853486,
		0.114243, 0.990707, 0.073808,
		-0.854560, 0.060111, 0.515862,
		34.783951, 31.826206, 37.407169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503391, 32.294079, 37.583988>,  <35.382141, 31.784128, 37.046066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503391, 32.294079, 37.583988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176422, 32.099236, 37.706982>,  <34.980240, 31.982328, 37.780777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176422, 32.099236, 37.706982>,  <35.503391, 32.294079, 37.583988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176422, 32.099236, 37.706982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412930, -0.123328, 0.902374,
		-0.401637, 0.864588, 0.301954,
		-0.817421, -0.487113, 0.307481,
		34.931194, 31.953102, 37.799225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448193, 32.553665, 38.208851>,  <35.503391, 32.294079, 37.583988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448193, 32.553665, 38.208851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173485, 32.262928, 38.211636>,  <35.008659, 32.088486, 38.213306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173485, 32.262928, 38.211636>,  <35.448193, 32.553665, 38.208851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173485, 32.262928, 38.211636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288037, -0.263336, 0.920700,
		-0.667366, 0.634319, 0.390208,
		-0.686773, -0.726838, 0.006966,
		34.967453, 32.044876, 38.213726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071693, 32.556927, 38.869633>,  <35.448193, 32.553665, 38.208851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071693, 32.556927, 38.869633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070583, 32.179813, 38.736279>,  <35.069920, 31.953545, 38.656265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070583, 32.179813, 38.736279>,  <35.071693, 32.556927, 38.869633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070583, 32.179813, 38.736279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280384, -0.320745, 0.904714,
		-0.959884, -0.090968, 0.265232,
		-0.002772, -0.942787, -0.333384,
		35.069752, 31.896976, 38.636265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640675, 32.199368, 39.318829>,  <35.071693, 32.556927, 38.869633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640675, 32.199368, 39.318829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895149, 31.933722, 39.161739>,  <35.047832, 31.774336, 39.067486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895149, 31.933722, 39.161739>,  <34.640675, 32.199368, 39.318829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895149, 31.933722, 39.161739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009926, -0.501921, 0.864856,
		-0.771475, -0.554105, -0.312721,
		0.636182, -0.664111, -0.392720,
		35.086002, 31.734488, 39.043922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404575, 31.431677, 39.523685>,  <34.640675, 32.199368, 39.318829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404575, 31.431677, 39.523685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792168, 31.414648, 39.426315>,  <35.024723, 31.404430, 39.367893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792168, 31.414648, 39.426315>,  <34.404575, 31.431677, 39.523685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792168, 31.414648, 39.426315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176042, -0.572380, 0.800868,
		-0.173427, -0.818883, -0.547133,
		0.968985, -0.042574, -0.243424,
		35.082863, 31.401876, 39.353287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622005, 30.745138, 39.679111>,  <34.404575, 31.431677, 39.523685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622005, 30.745138, 39.679111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982376, 30.914865, 39.642700>,  <35.198597, 31.016703, 39.620853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982376, 30.914865, 39.642700>,  <34.622005, 30.745138, 39.679111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982376, 30.914865, 39.642700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323004, -0.515544, 0.793652,
		0.289833, -0.744424, -0.601523,
		0.900925, 0.424320, -0.091030,
		35.252655, 31.042162, 39.615391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983852, 30.284382, 40.001259>,  <34.622005, 30.745138, 39.679111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983852, 30.284382, 40.001259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220306, 30.604483, 39.960945>,  <35.362179, 30.796543, 39.936756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220306, 30.604483, 39.960945>,  <34.983852, 30.284382, 40.001259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220306, 30.604483, 39.960945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572058, -0.327886, 0.751824,
		0.568601, -0.502086, -0.651615,
		0.591136, 0.800250, -0.100786,
		35.397648, 30.844557, 39.930710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655060, 29.982712, 40.237064>,  <34.983852, 30.284382, 40.001259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655060, 29.982712, 40.237064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685318, 30.380869, 40.260632>,  <35.703472, 30.619762, 40.274773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685318, 30.380869, 40.260632>,  <35.655060, 29.982712, 40.237064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685318, 30.380869, 40.260632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506240, -0.089245, 0.857762,
		0.859069, -0.035055, -0.510658,
		0.075642, 0.995393, 0.058921,
		35.708012, 30.679487, 40.278309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369671, 30.150690, 40.314915>,  <35.655060, 29.982712, 40.237064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369671, 30.150690, 40.314915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.139008, 30.431896, 40.481403>,  <36.000610, 30.600620, 40.581295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.139008, 30.431896, 40.481403>,  <36.369671, 30.150690, 40.314915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139008, 30.431896, 40.481403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551666, -0.040706, 0.833071,
		0.602603, 0.710011, -0.364355,
		-0.576658, 0.703013, 0.416219,
		35.966011, 30.642799, 40.606270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865353, 30.577002, 40.686703>,  <36.369671, 30.150690, 40.314915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865353, 30.577002, 40.686703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501747, 30.632570, 40.843872>,  <36.283585, 30.665913, 40.938171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501747, 30.632570, 40.843872>,  <36.865353, 30.577002, 40.686703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501747, 30.632570, 40.843872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408423, 0.109361, 0.906218,
		0.082925, 0.984246, -0.156151,
		-0.909018, 0.138923, 0.392920,
		36.229042, 30.674248, 40.961746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925831, 31.125410, 41.203354>,  <36.865353, 30.577002, 40.686703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925831, 31.125410, 41.203354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565166, 30.986643, 41.306625>,  <36.348766, 30.903383, 41.368587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565166, 30.986643, 41.306625>,  <36.925831, 31.125410, 41.203354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565166, 30.986643, 41.306625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198508, 0.198359, 0.959817,
		-0.384188, 0.916680, -0.109987,
		-0.901662, -0.346917, 0.258175,
		36.294666, 30.882568, 41.384079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666100, 31.597767, 41.607639>,  <36.925831, 31.125410, 41.203354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666100, 31.597767, 41.607639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444527, 31.284697, 41.721188>,  <36.311584, 31.096855, 41.789314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444527, 31.284697, 41.721188>,  <36.666100, 31.597767, 41.607639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444527, 31.284697, 41.721188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252853, 0.166702, 0.953035,
		-0.793238, 0.599692, 0.105560,
		-0.553931, -0.782675, 0.283868,
		36.278347, 31.049894, 41.806347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425060, 31.853399, 42.154816>,  <36.666100, 31.597767, 41.607639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425060, 31.853399, 42.154816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408573, 31.454945, 42.185822>,  <36.398682, 31.215872, 42.204426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408573, 31.454945, 42.185822>,  <36.425060, 31.853399, 42.154816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408573, 31.454945, 42.185822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306298, 0.061245, 0.949963,
		-0.951043, 0.062898, 0.302591,
		-0.041219, -0.996139, 0.077512,
		36.396206, 31.156103, 42.209076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228748, 31.792801, 42.823605>,  <36.425060, 31.853399, 42.154816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228748, 31.792801, 42.823605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359161, 31.429008, 42.720421>,  <36.437408, 31.210733, 42.658512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359161, 31.429008, 42.720421>,  <36.228748, 31.792801, 42.823605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359161, 31.429008, 42.720421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473653, -0.078995, 0.877162,
		-0.818140, -0.408170, 0.405024,
		0.326036, -0.909482, -0.257959,
		36.456974, 31.156164, 42.643032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074287, 31.310104, 43.397076>,  <36.228748, 31.792801, 42.823605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074287, 31.310104, 43.397076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363338, 31.122736, 43.193745>,  <36.536770, 31.010315, 43.071747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363338, 31.122736, 43.193745>,  <36.074287, 31.310104, 43.397076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363338, 31.122736, 43.193745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533960, -0.088750, 0.840839,
		-0.438980, -0.879038, 0.185984,
		0.722623, -0.468419, -0.508330,
		36.580124, 30.982210, 43.041245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206604, 30.595938, 43.642941>,  <36.074287, 31.310104, 43.397076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206604, 30.595938, 43.642941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547577, 30.722851, 43.476711>,  <36.752159, 30.798998, 43.376976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547577, 30.722851, 43.476711>,  <36.206604, 30.595938, 43.642941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547577, 30.722851, 43.476711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506811, -0.306103, 0.805880,
		0.128484, -0.897570, -0.421733,
		0.852428, 0.317282, -0.415569,
		36.803307, 30.818035, 43.352039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693394, 30.184591, 43.860367>,  <36.206604, 30.595938, 43.642941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693394, 30.184591, 43.860367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954247, 30.456970, 43.727077>,  <37.110760, 30.620398, 43.647102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954247, 30.456970, 43.727077>,  <36.693394, 30.184591, 43.860367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954247, 30.456970, 43.727077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580982, -0.166531, 0.796698,
		0.487015, -0.713149, -0.504217,
		0.652132, 0.680945, -0.333223,
		37.149887, 30.661253, 43.627110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334408, 29.837709, 43.792755>,  <36.693394, 30.184591, 43.860367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334408, 29.837709, 43.792755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398441, 30.229033, 43.845348>,  <37.436859, 30.463827, 43.876904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398441, 30.229033, 43.845348>,  <37.334408, 29.837709, 43.792755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398441, 30.229033, 43.845348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660451, -0.205147, 0.722301,
		0.733606, -0.028789, -0.678965,
		0.160082, 0.978308, 0.131483,
		37.446465, 30.522526, 43.884792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066025, 29.893156, 43.840912>,  <37.334408, 29.837709, 43.792755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066025, 29.893156, 43.840912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960365, 30.249798, 43.988029>,  <37.896969, 30.463783, 44.076302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960365, 30.249798, 43.988029>,  <38.066025, 29.893156, 43.840912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960365, 30.249798, 43.988029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740896, -0.056567, 0.669233,
		0.617495, 0.449272, -0.645643,
		-0.264145, 0.891602, 0.367794,
		37.881123, 30.517279, 44.098366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702282, 30.272404, 43.918415>,  <38.066025, 29.893156, 43.840912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702282, 30.272404, 43.918415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.432175, 30.435661, 44.164154>,  <38.270111, 30.533615, 44.311600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.432175, 30.435661, 44.164154>,  <38.702282, 30.272404, 43.918415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432175, 30.435661, 44.164154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676899, 0.012110, 0.735977,
		0.292945, 0.912837, -0.284450,
		-0.675271, 0.408144, 0.614351,
		38.229591, 30.558105, 44.348457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071995, 31.025303, 43.922421>,  <38.702282, 30.272404, 43.918415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071995, 31.025303, 43.922421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455612, 30.922449, 43.874905>,  <39.685783, 30.860737, 43.846394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455612, 30.922449, 43.874905>,  <39.071995, 31.025303, 43.922421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455612, 30.922449, 43.874905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128054, -0.019512, -0.991575,
		0.252649, 0.966179, -0.051640,
		0.959047, -0.257133, -0.118793,
		39.743324, 30.845308, 43.839268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476280, 31.523418, 43.433483>,  <39.071995, 31.025303, 43.922421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476280, 31.523418, 43.433483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646572, 31.161842, 43.449696>,  <39.748749, 30.944897, 43.459423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646572, 31.161842, 43.449696>,  <39.476280, 31.523418, 43.433483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646572, 31.161842, 43.449696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043232, -0.024424, -0.998767,
		0.903816, 0.426960, 0.028681,
		0.425732, -0.903941, 0.040533,
		39.774292, 30.890659, 43.461857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124901, 31.499924, 42.941734>,  <39.476280, 31.523418, 43.433483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124901, 31.499924, 42.941734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038658, 31.110228, 42.968170>,  <39.986912, 30.876410, 42.984032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038658, 31.110228, 42.968170>,  <40.124901, 31.499924, 42.941734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038658, 31.110228, 42.968170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074921, -0.083984, -0.993647,
		0.973602, -0.209287, 0.091098,
		-0.215608, -0.974241, 0.066087,
		39.973976, 30.817955, 42.987995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487480, 31.182060, 42.436993>,  <40.124901, 31.499924, 42.941734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487480, 31.182060, 42.436993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191399, 30.927244, 42.523041>,  <40.013748, 30.774355, 42.574669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191399, 30.927244, 42.523041>,  <40.487480, 31.182060, 42.436993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191399, 30.927244, 42.523041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238073, -0.050893, -0.969913,
		0.628820, -0.769150, -0.113990,
		-0.740207, -0.637039, 0.215116,
		39.969337, 30.736132, 42.587574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556751, 30.601217, 42.011070>,  <40.487480, 31.182060, 42.436993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556751, 30.601217, 42.011070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.164909, 30.613247, 42.090546>,  <39.929806, 30.620464, 42.138229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.164909, 30.613247, 42.090546>,  <40.556751, 30.601217, 42.011070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.164909, 30.613247, 42.090546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200934, -0.158783, -0.966651,
		0.002479, -0.986855, 0.161587,
		-0.979601, 0.030072, 0.198687,
		39.871029, 30.622269, 42.150150>
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
