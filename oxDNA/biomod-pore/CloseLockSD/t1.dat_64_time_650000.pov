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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.704270, 14.788448, 15.064847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.403802, 15.052168, 15.077921>,  <4.223521, 15.210400, 15.085765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.403802, 15.052168, 15.077921>,  <4.704270, 14.788448, 15.064847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.403802, 15.052168, 15.077921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483628, 0.515969, 0.707022,
		0.449275, 0.546900, -0.706436,
		-0.751170, 0.659300, 0.032684,
		4.178451, 15.249958, 15.087726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.931141, 15.487746, 14.886437>,  <4.704270, 14.788448, 15.064847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.931141, 15.487746, 14.886437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.634429, 15.484133, 15.154672>,  <4.456403, 15.481965, 15.315612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.634429, 15.484133, 15.154672>,  <4.931141, 15.487746, 14.886437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.634429, 15.484133, 15.154672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488644, 0.677579, 0.549648,
		-0.459339, 0.735394, -0.498200,
		-0.741778, -0.009033, 0.670584,
		4.411896, 15.481423, 15.355847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.542089, 16.119507, 14.916118>,  <4.931141, 15.487746, 14.886437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.542089, 16.119507, 14.916118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.558233, 15.926988, 15.266369>,  <4.567920, 15.811477, 15.476520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.558233, 15.926988, 15.266369>,  <4.542089, 16.119507, 14.916118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.558233, 15.926988, 15.266369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579370, 0.725255, 0.371936,
		-0.814065, 0.492301, 0.308122,
		0.040362, -0.481296, 0.875628,
		4.570342, 15.782598, 15.529058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.377502, 16.612070, 15.485235>,  <4.542089, 16.119507, 14.916118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.377502, 16.612070, 15.485235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.594909, 16.308870, 15.629474>,  <4.725353, 16.126951, 15.716017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.594909, 16.308870, 15.629474>,  <4.377502, 16.612070, 15.485235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.594909, 16.308870, 15.629474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600277, 0.651271, 0.464235,
		-0.586735, -0.035862, 0.808985,
		0.543516, -0.757998, 0.360596,
		4.757964, 16.081470, 15.737653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.593147, 16.703989, 16.192835>,  <4.377502, 16.612070, 15.485235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.593147, 16.703989, 16.192835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.861816, 16.471142, 16.009535>,  <5.023018, 16.331432, 15.899555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.861816, 16.471142, 16.009535>,  <4.593147, 16.703989, 16.192835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.861816, 16.471142, 16.009535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730776, 0.622238, 0.280689,
		0.121747, -0.523409, 0.843339,
		0.671673, -0.582119, -0.458250,
		5.063318, 16.296507, 15.872060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.129776, 16.605991, 16.688959>,  <4.593147, 16.703989, 16.192835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.129776, 16.605991, 16.688959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.277843, 16.567635, 16.319357>,  <5.366682, 16.544621, 16.097595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.277843, 16.567635, 16.319357>,  <5.129776, 16.605991, 16.688959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.277843, 16.567635, 16.319357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770019, 0.588082, 0.247447,
		0.519661, -0.803097, 0.291526,
		0.370165, -0.095892, -0.924003,
		5.388892, 16.538868, 16.042156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.808017, 16.507137, 16.768166>,  <5.129776, 16.605991, 16.688959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.808017, 16.507137, 16.768166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.772217, 16.648590, 16.395729>,  <5.750737, 16.733461, 16.172266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.772217, 16.648590, 16.395729>,  <5.808017, 16.507137, 16.768166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.772217, 16.648590, 16.395729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847276, 0.518450, 0.115466,
		0.523558, -0.778558, -0.346026,
		-0.089501, 0.353633, -0.931093,
		5.745367, 16.754681, 16.116402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.425037, 16.345753, 16.500937>,  <5.808017, 16.507137, 16.768166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.425037, 16.345753, 16.500937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.270226, 16.634115, 16.270979>,  <6.177339, 16.807133, 16.133005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.270226, 16.634115, 16.270979>,  <6.425037, 16.345753, 16.500937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.270226, 16.634115, 16.270979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882829, 0.469664, -0.005384,
		0.266126, -0.509615, -0.818211,
		-0.387028, 0.720907, -0.574893,
		6.154117, 16.850388, 16.098511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.054689, 16.622402, 16.214378>,  <6.425037, 16.345753, 16.500937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.054689, 16.622402, 16.214378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.782977, 16.886002, 16.085196>,  <6.619949, 17.044161, 16.007687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.782977, 16.886002, 16.085196>,  <7.054689, 16.622402, 16.214378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.782977, 16.886002, 16.085196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711619, 0.483903, -0.509349,
		-0.179379, -0.575814, -0.797660,
		-0.679281, 0.658996, -0.322958,
		6.579193, 17.083700, 15.988308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.093222, 16.655399, 15.432525>,  <7.054689, 16.622402, 16.214378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.093222, 16.655399, 15.432525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.934569, 16.999634, 15.560323>,  <6.839377, 17.206175, 15.637002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.934569, 16.999634, 15.560323>,  <7.093222, 16.655399, 15.432525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.934569, 16.999634, 15.560323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711912, 0.508092, -0.484792,
		-0.579538, 0.035169, -0.814186,
		-0.396632, 0.860584, 0.319496,
		6.815579, 17.257809, 15.656172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.241983, 17.216608, 14.918157>,  <7.093222, 16.655399, 15.432525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.241983, 17.216608, 14.918157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.154796, 17.424200, 15.248768>,  <7.102484, 17.548756, 15.447134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.154796, 17.424200, 15.248768>,  <7.241983, 17.216608, 14.918157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.154796, 17.424200, 15.248768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671079, 0.694609, -0.259176,
		-0.708621, 0.498173, -0.499680,
		-0.217967, 0.518982, 0.826528,
		7.089406, 17.579895, 15.496726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.086672, 17.993063, 14.789327>,  <7.241983, 17.216608, 14.918157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.086672, 17.993063, 14.789327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.199414, 17.946102, 15.170225>,  <7.267059, 17.917927, 15.398765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.199414, 17.946102, 15.170225>,  <7.086672, 17.993063, 14.789327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.199414, 17.946102, 15.170225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772062, 0.616991, -0.152454,
		-0.569630, 0.778164, 0.264543,
		0.281855, -0.117401, 0.952247,
		7.283970, 17.910881, 15.455899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.129395, 18.612715, 14.972358>,  <7.086672, 17.993063, 14.789327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.129395, 18.612715, 14.972358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.341602, 18.434883, 15.261050>,  <7.468927, 18.328184, 15.434266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.341602, 18.434883, 15.261050>,  <7.129395, 18.612715, 14.972358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.341602, 18.434883, 15.261050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707436, 0.701273, -0.088033,
		-0.466993, 0.557283, 0.686552,
		0.530520, -0.444581, 0.721732,
		7.500758, 18.301510, 15.477570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.378629, 19.063576, 15.378303>,  <7.129395, 18.612715, 14.972358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.378629, 19.063576, 15.378303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.629659, 18.757149, 15.433856>,  <7.780277, 18.573292, 15.467188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.629659, 18.757149, 15.433856>,  <7.378629, 19.063576, 15.378303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.629659, 18.757149, 15.433856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774850, 0.597182, -0.207320,
		0.075882, 0.237724, 0.968364,
		0.627575, -0.766069, 0.138884,
		7.817932, 18.527328, 15.475521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.809345, 19.350677, 15.747300>,  <7.378629, 19.063576, 15.378303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.809345, 19.350677, 15.747300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.015111, 19.027344, 15.632778>,  <8.138571, 18.833344, 15.564065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.015111, 19.027344, 15.632778>,  <7.809345, 19.350677, 15.747300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.015111, 19.027344, 15.632778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795296, 0.574579, -0.193298,
		0.320754, -0.128262, 0.938438,
		0.514414, -0.808337, -0.286304,
		8.169436, 18.784843, 15.546886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.470608, 19.373737, 16.098186>,  <7.809345, 19.350677, 15.747300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.470608, 19.373737, 16.098186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.536421, 19.156574, 15.768781>,  <8.575909, 19.026276, 15.571136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.536421, 19.156574, 15.768781>,  <8.470608, 19.373737, 16.098186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.536421, 19.156574, 15.768781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876480, 0.463439, -0.130410,
		0.452450, -0.700339, 0.552100,
		0.164533, -0.542909, -0.823516,
		8.585781, 18.993702, 15.521726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.170830, 19.155073, 16.224920>,  <8.470608, 19.373737, 16.098186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.170830, 19.155073, 16.224920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.066724, 19.141893, 15.838931>,  <9.004260, 19.133986, 15.607337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.066724, 19.141893, 15.838931>,  <9.170830, 19.155073, 16.224920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.066724, 19.141893, 15.838931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875585, 0.413180, -0.250264,
		0.406955, -0.910053, -0.078686,
		-0.260265, -0.032949, -0.964975,
		8.988645, 19.132008, 15.549438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.823895, 19.038237, 15.955409>,  <9.170830, 19.155073, 16.224920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.823895, 19.038237, 15.955409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.595999, 19.157633, 15.649128>,  <9.459261, 19.229271, 15.465360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.595999, 19.157633, 15.649128>,  <9.823895, 19.038237, 15.955409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.595999, 19.157633, 15.649128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693210, 0.674994, -0.252670,
		0.441425, -0.674749, -0.591488,
		-0.569740, 0.298491, -0.765702,
		9.425076, 19.247181, 15.419417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.315928, 19.120087, 15.314939>,  <9.823895, 19.038237, 15.955409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.315928, 19.120087, 15.314939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.980085, 19.327604, 15.250551>,  <9.778580, 19.452114, 15.211918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.980085, 19.327604, 15.250551>,  <10.315928, 19.120087, 15.314939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.980085, 19.327604, 15.250551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542974, 0.809979, -0.221615,
		0.015411, -0.273473, -0.961756,
		-0.839608, 0.518793, -0.160971,
		9.728203, 19.483242, 15.202260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.318632, 19.359772, 14.604629>,  <10.315928, 19.120087, 15.314939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.318632, 19.359772, 14.604629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.086945, 19.609838, 14.813883>,  <9.947932, 19.759878, 14.939436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.086945, 19.609838, 14.813883>,  <10.318632, 19.359772, 14.604629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.086945, 19.609838, 14.813883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575969, 0.767997, -0.280070,
		-0.576859, 0.139089, -0.804915,
		-0.579218, 0.625168, 0.523137,
		9.913179, 19.797388, 14.970824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.231768, 19.924637, 14.142949>,  <10.318632, 19.359772, 14.604629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.231768, 19.924637, 14.142949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.101900, 20.039911, 14.503291>,  <10.023980, 20.109076, 14.719497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.101900, 20.039911, 14.503291>,  <10.231768, 19.924637, 14.142949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.101900, 20.039911, 14.503291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395039, 0.906715, -0.147688,
		-0.859380, 0.307923, -0.408226,
		-0.324668, 0.288186, 0.900855,
		10.004499, 20.126368, 14.773548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.948707, 20.536510, 14.062190>,  <10.231768, 19.924637, 14.142949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.948707, 20.536510, 14.062190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.069496, 20.540529, 14.443496>,  <10.141970, 20.542940, 14.672279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.069496, 20.540529, 14.443496>,  <9.948707, 20.536510, 14.062190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.069496, 20.540529, 14.443496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524120, 0.833510, -0.174814,
		-0.796310, 0.552414, 0.246433,
		0.301974, 0.010046, 0.953263,
		10.160089, 20.543543, 14.729475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.928988, 21.258192, 14.340259>,  <9.948707, 20.536510, 14.062190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.928988, 21.258192, 14.340259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.192034, 21.058847, 14.566242>,  <10.349861, 20.939241, 14.701833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.192034, 21.058847, 14.566242>,  <9.928988, 21.258192, 14.340259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.192034, 21.058847, 14.566242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628471, 0.776434, -0.046635,
		-0.415412, 0.385729, 0.823800,
		0.657615, -0.498361, 0.564959,
		10.389318, 20.909340, 14.735730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.180052, 21.779211, 14.667708>,  <9.928988, 21.258192, 14.340259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.180052, 21.779211, 14.667708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.446160, 21.488699, 14.736910>,  <10.605825, 21.314392, 14.778431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.446160, 21.488699, 14.736910>,  <10.180052, 21.779211, 14.667708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.446160, 21.488699, 14.736910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737395, 0.675462, 0.000042,
		-0.116887, 0.127544, 0.984921,
		0.665271, -0.726281, 0.173003,
		10.645741, 21.270815, 14.788811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.561199, 22.152584, 15.143172>,  <10.180052, 21.779211, 14.667708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.561199, 22.152584, 15.143172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.748117, 21.858143, 14.947299>,  <10.860269, 21.681479, 14.829775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.748117, 21.858143, 14.947299>,  <10.561199, 22.152584, 15.143172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.748117, 21.858143, 14.947299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763629, 0.615177, -0.196027,
		0.445537, -0.282333, 0.849579,
		0.467297, -0.736101, -0.489683,
		10.888307, 21.637312, 14.800394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.305950, 21.960665, 15.439981>,  <10.561199, 22.152584, 15.143172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.305950, 21.960665, 15.439981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.286014, 21.869125, 15.051106>,  <11.274052, 21.814201, 14.817782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.286014, 21.869125, 15.051106>,  <11.305950, 21.960665, 15.439981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.286014, 21.869125, 15.051106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787441, 0.589766, -0.179200,
		0.614372, -0.774470, 0.150811,
		-0.049841, -0.228850, -0.972185,
		11.271061, 21.800470, 14.759451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.969760, 21.555435, 15.063389>,  <11.305950, 21.960665, 15.439981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.969760, 21.555435, 15.063389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.754724, 21.792719, 14.823689>,  <11.625702, 21.935089, 14.679870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.754724, 21.792719, 14.823689>,  <11.969760, 21.555435, 15.063389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.754724, 21.792719, 14.823689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803456, 0.576007, -0.150583,
		0.255843, -0.562420, -0.786274,
		-0.537590, 0.593211, -0.599247,
		11.593447, 21.970682, 14.643915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.287869, 21.678576, 14.366314>,  <11.969760, 21.555435, 15.063389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.287869, 21.678576, 14.366314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.068670, 22.011492, 14.399754>,  <11.937151, 22.211243, 14.419817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.068670, 22.011492, 14.399754>,  <12.287869, 21.678576, 14.366314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.068670, 22.011492, 14.399754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785409, 0.546351, -0.290919,
		-0.287803, -0.093764, -0.953089,
		-0.547998, 0.832291, 0.083599,
		11.904271, 22.261179, 14.424833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.828477, 22.187838, 14.125140>,  <12.287869, 21.678576, 14.366314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.828477, 22.187838, 14.125140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.209451, 22.076948, 14.074518>,  <13.438035, 22.010414, 14.044145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.209451, 22.076948, 14.074518>,  <12.828477, 22.187838, 14.125140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.209451, 22.076948, 14.074518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291649, -0.708763, -0.642336,
		0.088373, 0.648692, -0.755902,
		0.952434, -0.277223, -0.126555,
		13.495181, 21.993782, 14.036551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.837800, 22.124321, 13.395157>,  <12.828477, 22.187838, 14.125140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.837800, 22.124321, 13.395157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.147109, 21.927813, 13.555506>,  <13.332695, 21.809908, 13.651715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.147109, 21.927813, 13.555506>,  <12.837800, 22.124321, 13.395157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.147109, 21.927813, 13.555506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069863, -0.694382, -0.716207,
		0.630212, 0.525818, -0.571269,
		0.773273, -0.491273, 0.400873,
		13.379091, 21.780430, 13.675768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.317557, 21.820389, 12.892330>,  <12.837800, 22.124321, 13.395157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.317557, 21.820389, 12.892330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.404524, 21.593323, 13.209943>,  <13.456703, 21.457083, 13.400511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.404524, 21.593323, 13.209943>,  <13.317557, 21.820389, 12.892330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.404524, 21.593323, 13.209943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187940, -0.773922, -0.604750,
		0.957815, 0.280713, -0.061576,
		0.217416, -0.567666, 0.794031,
		13.469748, 21.423023, 13.448153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.749907, 22.077692, 12.416284>,  <13.317557, 21.820389, 12.892330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.749907, 22.077692, 12.416284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.938285, 21.737711, 12.321805>,  <13.051311, 21.533722, 12.265118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.938285, 21.737711, 12.321805>,  <12.749907, 22.077692, 12.416284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.938285, 21.737711, 12.321805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867160, -0.396864, -0.300885,
		0.162001, 0.346520, -0.923948,
		0.470944, -0.849955, -0.236196,
		13.079568, 21.482725, 12.250946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.333531, 21.960041, 11.847487>,  <12.749907, 22.077692, 12.416284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.333531, 21.960041, 11.847487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.541535, 21.638750, 11.963704>,  <12.666338, 21.445976, 12.033434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.541535, 21.638750, 11.963704>,  <12.333531, 21.960041, 11.847487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.541535, 21.638750, 11.963704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764318, -0.589422, -0.261533,
		0.381322, -0.086066, -0.920427,
		0.520011, -0.803228, 0.290542,
		12.697538, 21.397781, 12.050867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.042907, 21.575270, 11.384970>,  <12.333531, 21.960041, 11.847487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.042907, 21.575270, 11.384970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.219687, 21.347017, 11.661826>,  <12.325756, 21.210066, 11.827940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.219687, 21.347017, 11.661826>,  <12.042907, 21.575270, 11.384970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.219687, 21.347017, 11.661826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679954, -0.716373, -0.156437,
		0.585099, -0.401486, -0.704605,
		0.441953, -0.570630, 0.692141,
		12.352273, 21.175829, 11.869469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.956136, 20.911165, 11.119003>,  <12.042907, 21.575270, 11.384970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.956136, 20.911165, 11.119003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.999505, 20.901085, 11.516518>,  <12.025527, 20.895037, 11.755026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.999505, 20.901085, 11.516518>,  <11.956136, 20.911165, 11.119003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.999505, 20.901085, 11.516518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670887, -0.739558, 0.054440,
		0.733590, -0.672621, -0.097092,
		0.108423, -0.025201, 0.993785,
		12.032032, 20.893524, 11.814653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.104511, 20.247444, 11.431656>,  <11.956136, 20.911165, 11.119003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.104511, 20.247444, 11.431656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.901693, 20.467999, 11.696648>,  <11.780003, 20.600330, 11.855643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.901693, 20.467999, 11.696648>,  <12.104511, 20.247444, 11.431656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.901693, 20.467999, 11.696648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618677, -0.767979, 0.165671,
		0.600120, -0.325858, 0.730529,
		-0.507046, 0.551384, 0.662480,
		11.749579, 20.633413, 11.895391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.096735, 19.831572, 12.002433>,  <12.104511, 20.247444, 11.431656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.096735, 19.831572, 12.002433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.793711, 20.090761, 12.034013>,  <11.611897, 20.246275, 12.052961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.793711, 20.090761, 12.034013>,  <12.096735, 19.831572, 12.002433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.793711, 20.090761, 12.034013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605183, -0.742514, 0.287101,
		0.244656, 0.169716, 0.954641,
		-0.757560, 0.647973, 0.078951,
		11.566442, 20.285152, 12.057698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.726311, 19.689713, 12.587440>,  <12.096735, 19.831572, 12.002433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.726311, 19.689713, 12.587440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.449411, 19.900290, 12.389997>,  <11.283272, 20.026636, 12.271530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.449411, 19.900290, 12.389997>,  <11.726311, 19.689713, 12.587440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.449411, 19.900290, 12.389997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698522, -0.660605, 0.275077,
		-0.181268, 0.535218, 0.825036,
		-0.692249, 0.526443, -0.493608,
		11.241736, 20.058222, 12.241914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.204042, 19.872652, 13.081939>,  <11.726311, 19.689713, 12.587440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.204042, 19.872652, 13.081939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.038352, 19.890198, 12.718292>,  <10.938937, 19.900726, 12.500104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.038352, 19.890198, 12.718292>,  <11.204042, 19.872652, 13.081939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.038352, 19.890198, 12.718292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788190, -0.516790, 0.334193,
		-0.455162, 0.854988, 0.248644,
		-0.414227, 0.043867, -0.909116,
		10.914083, 19.903358, 12.445558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.538586, 19.943804, 13.230343>,  <11.204042, 19.872652, 13.081939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.538586, 19.943804, 13.230343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.531488, 19.823376, 12.848969>,  <10.527230, 19.751120, 12.620144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.531488, 19.823376, 12.848969>,  <10.538586, 19.943804, 13.230343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.531488, 19.823376, 12.848969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689997, -0.686432, 0.229598,
		-0.723595, 0.661943, -0.195558,
		-0.017743, -0.301070, -0.953437,
		10.526166, 19.733055, 12.562938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.799397, 19.830435, 12.984787>,  <10.538586, 19.943804, 13.230343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.799397, 19.830435, 12.984787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.030621, 19.602028, 12.751620>,  <10.169354, 19.464985, 12.611721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.030621, 19.602028, 12.751620>,  <9.799397, 19.830435, 12.984787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.030621, 19.602028, 12.751620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619604, -0.771999, 0.141800,
		-0.530981, 0.279208, -0.800064,
		0.578057, -0.571016, -0.582916,
		10.204038, 19.430723, 12.576746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.324055, 19.382641, 12.616870>,  <9.799397, 19.830435, 12.984787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.324055, 19.382641, 12.616870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.672879, 19.190222, 12.580862>,  <9.882174, 19.074770, 12.559258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.672879, 19.190222, 12.580862>,  <9.324055, 19.382641, 12.616870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.672879, 19.190222, 12.580862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486005, -0.872860, -0.043750,
		-0.057528, 0.081903, -0.994978,
		0.872060, -0.481048, -0.090019,
		9.934498, 19.045908, 12.553856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.246550, 18.987648, 12.022836>,  <9.324055, 19.382641, 12.616870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.246550, 18.987648, 12.022836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.545185, 18.824217, 12.232853>,  <9.724366, 18.726158, 12.358863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.545185, 18.824217, 12.232853>,  <9.246550, 18.987648, 12.022836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.545185, 18.824217, 12.232853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470326, -0.882313, -0.017816,
		0.470531, -0.233641, -0.850889,
		0.746588, -0.408578, 0.525043,
		9.769161, 18.701643, 12.390366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.403221, 18.397417, 11.635225>,  <9.246550, 18.987648, 12.022836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.403221, 18.397417, 11.635225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.510967, 18.361336, 12.018747>,  <9.575615, 18.339687, 12.248860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.510967, 18.361336, 12.018747>,  <9.403221, 18.397417, 11.635225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.510967, 18.361336, 12.018747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520490, -0.851303, 0.066137,
		0.810267, -0.516863, -0.276261,
		0.269366, -0.090203, 0.958804,
		9.591777, 18.334274, 12.306389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.521099, 17.675293, 11.753288>,  <9.403221, 18.397417, 11.635225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.521099, 17.675293, 11.753288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.499546, 17.796141, 12.133986>,  <9.486614, 17.868649, 12.362406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.499546, 17.796141, 12.133986>,  <9.521099, 17.675293, 11.753288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.499546, 17.796141, 12.133986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562791, -0.796514, 0.220979,
		0.824841, -0.523728, 0.212948,
		-0.053883, 0.302118, 0.951746,
		9.483381, 17.886776, 12.419511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.567181, 16.993614, 12.077465>,  <9.521099, 17.675293, 11.753288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.567181, 16.993614, 12.077465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.447476, 17.242125, 12.367145>,  <9.375654, 17.391230, 12.540952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.447476, 17.242125, 12.367145>,  <9.567181, 16.993614, 12.077465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.447476, 17.242125, 12.367145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602848, -0.711416, 0.361195,
		0.739607, -0.328490, 0.587432,
		-0.299260, 0.621274, 0.724198,
		9.357698, 17.428507, 12.584404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.564280, 16.570316, 12.668500>,  <9.567181, 16.993614, 12.077465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.564280, 16.570316, 12.668500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.346394, 16.894676, 12.754036>,  <9.215662, 17.089293, 12.805357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.346394, 16.894676, 12.754036>,  <9.564280, 16.570316, 12.668500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.346394, 16.894676, 12.754036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655459, -0.570732, 0.494610,
		0.523124, 0.129260, 0.842397,
		-0.544716, 0.810899, 0.213839,
		9.182979, 17.137945, 12.818188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.523699, 16.522058, 13.384764>,  <9.564280, 16.570316, 12.668500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.523699, 16.522058, 13.384764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.222249, 16.730051, 13.223930>,  <9.041379, 16.854847, 13.127430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.222249, 16.730051, 13.223930>,  <9.523699, 16.522058, 13.384764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.222249, 16.730051, 13.223930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654494, -0.537102, 0.532127,
		0.060736, 0.664185, 0.745097,
		-0.753624, 0.519980, -0.402084,
		8.996161, 16.886045, 13.103305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.029058, 16.746859, 13.978879>,  <9.523699, 16.522058, 13.384764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.029058, 16.746859, 13.978879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.846769, 16.732092, 13.623137>,  <8.737396, 16.723232, 13.409691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.846769, 16.732092, 13.623137>,  <9.029058, 16.746859, 13.978879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.846769, 16.732092, 13.623137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718997, -0.573750, 0.392242,
		-0.524748, 0.818198, 0.234928,
		-0.455722, -0.036915, -0.889357,
		8.710052, 16.721018, 13.356330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.369069, 16.915529, 14.201979>,  <9.029058, 16.746859, 13.978879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.369069, 16.915529, 14.201979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.300324, 16.812065, 13.821755>,  <8.259078, 16.749987, 13.593621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.300324, 16.812065, 13.821755>,  <8.369069, 16.915529, 14.201979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.300324, 16.812065, 13.821755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700679, -0.646168, 0.302515,
		-0.692468, 0.718027, -0.070186,
		-0.171862, -0.258659, -0.950557,
		8.248766, 16.734467, 13.536589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.667870, 17.039486, 14.089824>,  <8.369069, 16.915529, 14.201979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.667870, 17.039486, 14.089824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.798591, 16.771231, 13.823457>,  <7.877023, 16.610277, 13.663636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.798591, 16.771231, 13.823457>,  <7.667870, 17.039486, 14.089824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.798591, 16.771231, 13.823457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753143, -0.610461, 0.245179,
		-0.570943, 0.421406, -0.704586,
		0.326802, -0.670637, -0.665917,
		7.896631, 16.570040, 13.623681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.091000, 16.898401, 13.769305>,  <7.667870, 17.039486, 14.089824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.091000, 16.898401, 13.769305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.332185, 16.597523, 13.662993>,  <7.476897, 16.416996, 13.599207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.332185, 16.597523, 13.662993>,  <7.091000, 16.898401, 13.769305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.332185, 16.597523, 13.662993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732307, -0.654033, 0.189650,
		-0.316482, 0.080279, -0.945196,
		0.602965, -0.752194, -0.265778,
		7.513074, 16.371864, 13.583260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.754001, 16.484648, 13.333369>,  <7.091000, 16.898401, 13.769305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.754001, 16.484648, 13.333369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.046002, 16.236212, 13.447453>,  <7.221202, 16.087151, 13.515904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.046002, 16.236212, 13.447453>,  <6.754001, 16.484648, 13.333369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.046002, 16.236212, 13.447453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662766, -0.745203, 0.073570,
		0.166847, -0.242734, -0.955637,
		0.730002, -0.621089, 0.285211,
		7.265003, 16.049885, 13.533017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.615750, 15.867415, 12.959970>,  <6.754001, 16.484648, 13.333369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.615750, 15.867415, 12.959970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.844115, 15.777772, 13.275904>,  <6.981133, 15.723986, 13.465464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.844115, 15.777772, 13.275904>,  <6.615750, 15.867415, 12.959970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.844115, 15.777772, 13.275904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624427, -0.743139, 0.240492,
		0.533059, -0.630492, -0.564206,
		0.570911, -0.224109, 0.789833,
		7.015388, 15.710539, 13.512854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.762101, 15.084539, 13.023236>,  <6.615750, 15.867415, 12.959970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.762101, 15.084539, 13.023236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.818470, 15.199362, 13.402233>,  <6.852292, 15.268255, 13.629631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.818470, 15.199362, 13.402233>,  <6.762101, 15.084539, 13.023236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.818470, 15.199362, 13.402233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607088, -0.730932, 0.311740,
		0.782038, -0.619143, 0.071263,
		0.140924, 0.287056, 0.947491,
		6.860747, 15.285479, 13.686481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.911458, 14.510345, 13.372001>,  <6.762101, 15.084539, 13.023236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.911458, 14.510345, 13.372001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.782127, 14.757049, 13.659074>,  <6.704529, 14.905071, 13.831318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.782127, 14.757049, 13.659074>,  <6.911458, 14.510345, 13.372001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.782127, 14.757049, 13.659074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607172, -0.716928, 0.342572,
		0.725812, -0.324994, 0.606281,
		-0.323326, 0.616760, 0.717682,
		6.685130, 14.942077, 13.874378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.078010, 14.017894, 13.894810>,  <6.911458, 14.510345, 13.372001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.078010, 14.017894, 13.894810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.879417, 13.766511, 13.655294>,  <6.760261, 13.615682, 13.511585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.879417, 13.766511, 13.655294>,  <7.078010, 14.017894, 13.894810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.879417, 13.766511, 13.655294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764864, -0.009471, 0.644122,
		-0.410473, 0.777787, -0.475981,
		-0.496482, -0.628456, -0.598789,
		6.730472, 13.577974, 13.475657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.408064, 13.893288, 13.229270>,  <7.078010, 14.017894, 13.894810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.408064, 13.893288, 13.229270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.419521, 13.946420, 12.832980>,  <7.426395, 13.978299, 12.595206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.419521, 13.946420, 12.832980>,  <7.408064, 13.893288, 13.229270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.419521, 13.946420, 12.832980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999394, -0.015797, -0.031011,
		-0.019770, 0.991013, 0.132298,
		0.028643, 0.132831, -0.990725,
		7.428114, 13.986269, 12.535763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.160823, 13.893059, 13.636989>,  <7.408064, 13.893288, 13.229270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.160823, 13.893059, 13.636989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.513397, 14.069200, 13.705296>,  <8.724942, 14.174884, 13.746280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.513397, 14.069200, 13.705296>,  <8.160823, 13.893059, 13.636989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.513397, 14.069200, 13.705296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469524, -0.856141, -0.215802,
		0.051171, 0.270394, -0.961389,
		0.881436, 0.440352, 0.170766,
		8.777828, 14.201305, 13.756525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.661513, 13.983326, 13.041595>,  <8.160823, 13.893059, 13.636989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.661513, 13.983326, 13.041595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.835380, 13.951809, 13.400450>,  <8.939699, 13.932899, 13.615763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.835380, 13.951809, 13.400450>,  <8.661513, 13.983326, 13.041595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.835380, 13.951809, 13.400450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455733, -0.839961, -0.294574,
		0.776771, 0.536897, -0.329193,
		0.434665, -0.078792, 0.897139,
		8.965779, 13.928171, 13.669592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.369532, 14.080067, 12.999025>,  <8.661513, 13.983326, 13.041595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.369532, 14.080067, 12.999025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.226994, 13.829747, 13.276556>,  <9.141471, 13.679556, 13.443074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.226994, 13.829747, 13.276556>,  <9.369532, 14.080067, 12.999025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.226994, 13.829747, 13.276556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510728, -0.752279, -0.416213,
		0.782417, 0.206042, 0.587683,
		-0.356344, -0.625797, 0.693827,
		9.120090, 13.642008, 13.484704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.530263, 13.406535, 12.837397>,  <9.369532, 14.080067, 12.999025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.530263, 13.406535, 12.837397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.415609, 13.332300, 13.213354>,  <9.346817, 13.287759, 13.438929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.415609, 13.332300, 13.213354>,  <9.530263, 13.406535, 12.837397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.415609, 13.332300, 13.213354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499406, -0.866165, -0.018730,
		0.817578, 0.464020, 0.340956,
		-0.286633, -0.185589, 0.939893,
		9.329619, 13.276624, 13.495322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.046028, 13.338472, 13.349463>,  <9.530263, 13.406535, 12.837397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.046028, 13.338472, 13.349463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.735134, 13.120173, 13.474724>,  <9.548598, 12.989193, 13.549880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.735134, 13.120173, 13.474724>,  <10.046028, 13.338472, 13.349463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.735134, 13.120173, 13.474724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612162, -0.770944, 0.175795,
		0.145483, 0.328334, 0.933291,
		-0.777234, -0.545750, 0.313152,
		9.501964, 12.956448, 13.568669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.336307, 12.754982, 13.552626>,  <10.046028, 13.338472, 13.349463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.336307, 12.754982, 13.552626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.962687, 12.622621, 13.606373>,  <9.738515, 12.543203, 13.638621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.962687, 12.622621, 13.606373>,  <10.336307, 12.754982, 13.552626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.962687, 12.622621, 13.606373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354780, -0.902912, 0.242654,
		0.041028, 0.274322, 0.960762,
		-0.934049, -0.330904, 0.134368,
		9.682472, 12.523350, 13.646684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.296661, 13.224655, 14.100343>,  <10.336307, 12.754982, 13.552626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.296661, 13.224655, 14.100343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.564260, 12.993244, 14.286997>,  <10.724820, 12.854398, 14.398989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.564260, 12.993244, 14.286997>,  <10.296661, 13.224655, 14.100343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.564260, 12.993244, 14.286997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098151, 0.553557, 0.827008,
		-0.736755, -0.599067, 0.313545,
		0.668998, -0.578527, 0.466635,
		10.764960, 12.819686, 14.426988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.053786, 13.154227, 14.854307>,  <10.296661, 13.224655, 14.100343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.053786, 13.154227, 14.854307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.449091, 13.131493, 14.797587>,  <10.686274, 13.117851, 14.763556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.449091, 13.131493, 14.797587>,  <10.053786, 13.154227, 14.854307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.449091, 13.131493, 14.797587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143252, 0.667243, 0.730935,
		0.053070, -0.742669, 0.667553,
		0.988262, -0.056838, -0.141800,
		10.745569, 13.114441, 14.755048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.260276, 12.989997, 15.467070>,  <10.053786, 13.154227, 14.854307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.260276, 12.989997, 15.467070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.577363, 13.143363, 15.277506>,  <10.767615, 13.235382, 15.163768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.577363, 13.143363, 15.277506>,  <10.260276, 12.989997, 15.467070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.577363, 13.143363, 15.277506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238896, 0.519839, 0.820180,
		0.560830, -0.763386, 0.320488,
		0.792716, 0.383418, -0.473911,
		10.815179, 13.258388, 15.135333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.732456, 12.809945, 15.922565>,  <10.260276, 12.989997, 15.467070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.732456, 12.809945, 15.922565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.877930, 13.111611, 15.703852>,  <10.965214, 13.292611, 15.572624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.877930, 13.111611, 15.703852>,  <10.732456, 12.809945, 15.922565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.877930, 13.111611, 15.703852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201700, 0.509297, 0.836621,
		0.909424, -0.414550, 0.033107,
		0.363683, 0.754166, -0.546781,
		10.987035, 13.337861, 15.539818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.343922, 12.951262, 16.282581>,  <10.732456, 12.809945, 15.922565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.343922, 12.951262, 16.282581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.254745, 13.282391, 16.076668>,  <11.201239, 13.481069, 15.953119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.254745, 13.282391, 16.076668>,  <11.343922, 12.951262, 16.282581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.254745, 13.282391, 16.076668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182033, 0.554141, 0.812275,
		0.957685, 0.087382, -0.274233,
		-0.222943, 0.827824, -0.514786,
		11.187861, 13.530738, 15.922232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.927938, 13.499776, 16.368876>,  <11.343922, 12.951262, 16.282581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.927938, 13.499776, 16.368876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.582010, 13.672329, 16.266117>,  <11.374454, 13.775861, 16.204462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.582010, 13.672329, 16.266117>,  <11.927938, 13.499776, 16.368876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.582010, 13.672329, 16.266117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089696, 0.636174, 0.766314,
		0.494007, 0.639680, -0.588869,
		-0.864819, 0.431384, -0.256898,
		11.322565, 13.801744, 16.189047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.046724, 14.176305, 16.531393>,  <11.927938, 13.499776, 16.368876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.046724, 14.176305, 16.531393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.648955, 14.194308, 16.493235>,  <11.410295, 14.205111, 16.470339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.648955, 14.194308, 16.493235>,  <12.046724, 14.176305, 16.531393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.648955, 14.194308, 16.493235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043711, 0.647239, 0.761033,
		0.095997, 0.760957, -0.641661,
		-0.994421, 0.045010, -0.095395,
		11.350629, 14.207811, 16.464617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.836710, 14.750471, 16.843832>,  <12.046724, 14.176305, 16.531393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.836710, 14.750471, 16.843832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.460967, 14.614711, 16.824169>,  <11.235521, 14.533255, 16.812370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.460967, 14.614711, 16.824169>,  <11.836710, 14.750471, 16.843832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.460967, 14.614711, 16.824169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187698, 0.388846, 0.901980,
		-0.287017, 0.856508, -0.428970,
		-0.939357, -0.339400, -0.049159,
		11.179160, 14.512891, 16.809422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.334718, 15.391180, 16.784761>,  <11.836710, 14.750471, 16.843832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.334718, 15.391180, 16.784761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.150187, 15.061624, 16.916447>,  <11.039469, 14.863890, 16.995457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.150187, 15.061624, 16.916447>,  <11.334718, 15.391180, 16.784761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.150187, 15.061624, 16.916447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289522, 0.490538, 0.821919,
		-0.838663, 0.283859, -0.464833,
		-0.461327, -0.823891, 0.329212,
		11.011789, 14.814456, 17.015211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.651505, 15.638672, 17.037693>,  <11.334718, 15.391180, 16.784761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.651505, 15.638672, 17.037693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.681948, 15.280249, 17.212639>,  <10.700213, 15.065194, 17.317606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.681948, 15.280249, 17.212639>,  <10.651505, 15.638672, 17.037693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.681948, 15.280249, 17.212639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342390, 0.388477, 0.855485,
		-0.936470, -0.214858, -0.277236,
		0.076108, -0.896059, 0.437363,
		10.704781, 15.011431, 17.343847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.110003, 15.680781, 17.483374>,  <10.651505, 15.638672, 17.037693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.110003, 15.680781, 17.483374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.329180, 15.381887, 17.633785>,  <10.460686, 15.202551, 17.724031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.329180, 15.381887, 17.633785>,  <10.110003, 15.680781, 17.483374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.329180, 15.381887, 17.633785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282004, 0.258198, 0.924017,
		-0.787548, -0.612350, -0.069245,
		0.547943, -0.747236, 0.376029,
		10.493563, 15.157717, 17.746593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.750460, 15.352626, 17.970215>,  <10.110003, 15.680781, 17.483374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.750460, 15.352626, 17.970215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.114014, 15.230165, 18.083494>,  <10.332146, 15.156690, 18.151463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.114014, 15.230165, 18.083494>,  <9.750460, 15.352626, 17.970215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.114014, 15.230165, 18.083494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201316, 0.272631, 0.940821,
		-0.365241, -0.912110, 0.186158,
		0.908884, -0.306150, 0.283198,
		10.386679, 15.138320, 18.168453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.762312, 14.867136, 18.598032>,  <9.750460, 15.352626, 17.970215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.762312, 14.867136, 18.598032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.119199, 15.047732, 18.593916>,  <10.333331, 15.156090, 18.591446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.119199, 15.047732, 18.593916>,  <9.762312, 14.867136, 18.598032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.119199, 15.047732, 18.593916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156462, 0.330412, 0.930778,
		0.423639, -0.828845, 0.365440,
		0.892216, 0.451491, -0.010293,
		10.386864, 15.183179, 18.590828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.062969, 14.592308, 19.205023>,  <9.762312, 14.867136, 18.598032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.062969, 14.592308, 19.205023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.254500, 14.928451, 19.103416>,  <10.369419, 15.130136, 19.042452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.254500, 14.928451, 19.103416>,  <10.062969, 14.592308, 19.205023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.254500, 14.928451, 19.103416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115047, 0.346913, 0.930815,
		0.870337, -0.416477, 0.262792,
		0.478828, 0.840356, -0.254016,
		10.398149, 15.180557, 19.027212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.525295, 14.673120, 19.724850>,  <10.062969, 14.592308, 19.205023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.525295, 14.673120, 19.724850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.490839, 15.041136, 19.571953>,  <10.470165, 15.261945, 19.480215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.490839, 15.041136, 19.571953>,  <10.525295, 14.673120, 19.724850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.490839, 15.041136, 19.571953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136365, 0.369171, 0.919303,
		0.986907, 0.131314, 0.093660,
		-0.086141, 0.920038, -0.382244,
		10.464996, 15.317147, 19.457279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.852605, 15.038687, 20.224710>,  <10.525295, 14.673120, 19.724850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.852605, 15.038687, 20.224710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.647620, 15.326864, 20.037802>,  <10.524630, 15.499771, 19.925657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.647620, 15.326864, 20.037802>,  <10.852605, 15.038687, 20.224710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.647620, 15.326864, 20.037802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038386, 0.524391, 0.850612,
		0.857852, 0.453843, -0.241076,
		-0.512462, 0.720445, -0.467271,
		10.493881, 15.542997, 19.897621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.193051, 15.646381, 20.213581>,  <10.852605, 15.038687, 20.224710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.193051, 15.646381, 20.213581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.802590, 15.726840, 20.180920>,  <10.568314, 15.775115, 20.161322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.802590, 15.726840, 20.180920>,  <11.193051, 15.646381, 20.213581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.802590, 15.726840, 20.180920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029908, 0.497159, 0.867144,
		0.215019, 0.844021, -0.491319,
		-0.976152, 0.201147, -0.081656,
		10.509745, 15.787184, 20.156424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.131298, 16.165030, 20.660299>,  <11.193051, 15.646381, 20.213581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.131298, 16.165030, 20.660299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.756336, 16.036549, 20.606482>,  <10.531359, 15.959460, 20.574190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.756336, 16.036549, 20.606482>,  <11.131298, 16.165030, 20.660299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.756336, 16.036549, 20.606482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253520, 0.364566, 0.896002,
		-0.238746, 0.874026, -0.423177,
		-0.937405, -0.321201, -0.134545,
		10.475115, 15.940188, 20.566118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.705284, 16.711689, 20.833012>,  <11.131298, 16.165030, 20.660299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.705284, 16.711689, 20.833012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.419855, 16.433960, 20.870380>,  <10.248598, 16.267323, 20.892801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.419855, 16.433960, 20.870380>,  <10.705284, 16.711689, 20.833012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.419855, 16.433960, 20.870380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408292, 0.520512, 0.749909,
		-0.569308, 0.496971, -0.654911,
		-0.713572, -0.694325, 0.093423,
		10.205784, 16.225662, 20.898407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.091420, 17.073208, 21.068022>,  <10.705284, 16.711689, 20.833012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.091420, 17.073208, 21.068022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.035781, 16.692356, 21.176905>,  <10.002398, 16.463844, 21.242235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.035781, 16.692356, 21.176905>,  <10.091420, 17.073208, 21.068022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.035781, 16.692356, 21.176905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509900, 0.304505, 0.804536,
		-0.848913, -0.026889, -0.527848,
		-0.139099, -0.952131, 0.272209,
		9.994051, 16.406717, 21.258568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.318124, 16.935455, 21.241337>,  <10.091420, 17.073208, 21.068022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.318124, 16.935455, 21.241337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.523795, 16.639755, 21.415293>,  <9.647198, 16.462336, 21.519667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.523795, 16.639755, 21.415293>,  <9.318124, 16.935455, 21.241337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.523795, 16.639755, 21.415293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539268, 0.115641, 0.834156,
		-0.666942, -0.663427, -0.339195,
		0.514177, -0.739251, 0.434891,
		9.678048, 16.417980, 21.545759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.777491, 16.493519, 21.565758>,  <9.318124, 16.935455, 21.241337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.777491, 16.493519, 21.565758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.127866, 16.380695, 21.722309>,  <9.338091, 16.313002, 21.816240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.127866, 16.380695, 21.722309>,  <8.777491, 16.493519, 21.565758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.127866, 16.380695, 21.722309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400723, 0.026321, 0.915821,
		-0.268616, -0.959036, -0.089971,
		0.875938, -0.282058, 0.391378,
		9.390647, 16.296078, 21.839722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.551619, 16.010977, 22.004513>,  <8.777491, 16.493519, 21.565758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.551619, 16.010977, 22.004513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.905664, 16.159615, 22.116579>,  <9.118092, 16.248796, 22.183819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.905664, 16.159615, 22.116579>,  <8.551619, 16.010977, 22.004513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.905664, 16.159615, 22.116579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380165, 0.230102, 0.895839,
		0.268428, -0.899425, 0.344936,
		0.885111, 0.371601, 0.280164,
		9.171199, 16.271091, 22.200628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.661201, 15.674244, 22.635048>,  <8.551619, 16.010977, 22.004513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.661201, 15.674244, 22.635048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.899493, 15.995450, 22.628473>,  <9.042469, 16.188173, 22.624529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.899493, 15.995450, 22.628473>,  <8.661201, 15.674244, 22.635048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.899493, 15.995450, 22.628473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201518, 0.169245, 0.964752,
		0.777492, -0.571422, 0.262647,
		0.595732, 0.803015, -0.016435,
		9.078213, 16.236355, 22.623543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.019900, 15.573792, 23.258303>,  <8.661201, 15.674244, 22.635048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.019900, 15.573792, 23.258303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.091743, 15.957142, 23.169529>,  <9.134848, 16.187153, 23.116264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.091743, 15.957142, 23.169529>,  <9.019900, 15.573792, 23.258303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.091743, 15.957142, 23.169529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347146, 0.272836, 0.897246,
		0.920452, -0.084107, 0.381700,
		0.179606, 0.958377, -0.221935,
		9.145624, 16.244656, 23.102949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.483045, 15.825786, 23.706600>,  <9.019900, 15.573792, 23.258303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.483045, 15.825786, 23.706600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.309718, 16.167122, 23.590635>,  <9.205723, 16.371923, 23.521055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.309718, 16.167122, 23.590635>,  <9.483045, 15.825786, 23.706600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.309718, 16.167122, 23.590635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379855, 0.118787, 0.917387,
		0.817281, 0.507643, 0.272673,
		-0.433315, 0.853339, -0.289913,
		9.179724, 16.423124, 23.503662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.685901, 16.289829, 24.182064>,  <9.483045, 15.825786, 23.706600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.685901, 16.289829, 24.182064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.363761, 16.453911, 24.010881>,  <9.170477, 16.552359, 23.908173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.363761, 16.453911, 24.010881>,  <9.685901, 16.289829, 24.182064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.363761, 16.453911, 24.010881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276222, 0.379091, 0.883171,
		0.524513, 0.829472, -0.191994,
		-0.805349, 0.410202, -0.427957,
		9.122156, 16.576971, 23.882494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.608529, 16.946419, 24.392000>,  <9.685901, 16.289829, 24.182064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.608529, 16.946419, 24.392000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.232807, 16.876863, 24.273701>,  <9.007374, 16.835131, 24.202721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.232807, 16.876863, 24.273701>,  <9.608529, 16.946419, 24.392000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.232807, 16.876863, 24.273701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341728, 0.397739, 0.851484,
		-0.030433, 0.900870, -0.433022,
		-0.939306, -0.173889, -0.295748,
		8.951015, 16.824697, 24.184977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.207380, 17.583990, 24.547243>,  <9.608529, 16.946419, 24.392000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.207380, 17.583990, 24.547243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.988701, 17.249077, 24.550797>,  <8.857493, 17.048130, 24.552929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.988701, 17.249077, 24.550797>,  <9.207380, 17.583990, 24.547243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.988701, 17.249077, 24.550797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259869, 0.179747, 0.948767,
		-0.795983, 0.516382, -0.315851,
		-0.546699, -0.837282, 0.008884,
		8.824691, 16.997892, 24.553461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.561124, 17.792175, 25.026814>,  <9.207380, 17.583990, 24.547243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.561124, 17.792175, 25.026814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.567551, 17.393583, 24.993896>,  <8.571406, 17.154428, 24.974146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.567551, 17.393583, 24.993896>,  <8.561124, 17.792175, 25.026814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.567551, 17.393583, 24.993896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224747, -0.083795, 0.970807,
		-0.974285, 0.002897, -0.225301,
		0.016067, -0.996479, -0.082292,
		8.572371, 17.094639, 24.969210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.084069, 17.644279, 25.507467>,  <8.561124, 17.792175, 25.026814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.084069, 17.644279, 25.507467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.320723, 17.321991, 25.496290>,  <8.462714, 17.128618, 25.489584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.320723, 17.321991, 25.496290>,  <8.084069, 17.644279, 25.507467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.320723, 17.321991, 25.496290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093620, -0.103086, 0.990257,
		-0.800753, -0.583253, -0.136421,
		0.591633, -0.805723, -0.027943,
		8.498213, 17.080275, 25.487907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.780563, 17.117201, 26.019081>,  <8.084069, 17.644279, 25.507467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.780563, 17.117201, 26.019081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.158899, 16.994177, 25.977526>,  <8.385901, 16.920362, 25.952593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.158899, 16.994177, 25.977526>,  <7.780563, 17.117201, 26.019081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.158899, 16.994177, 25.977526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056867, -0.158100, 0.985784,
		-0.319612, -0.938303, -0.132047,
		0.945841, -0.307559, -0.103889,
		8.442652, 16.901909, 25.946360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.784945, 16.636003, 26.565924>,  <7.780563, 17.117201, 26.019081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.784945, 16.636003, 26.565924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.175908, 16.652235, 26.482950>,  <8.410486, 16.661974, 26.433167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.175908, 16.652235, 26.482950>,  <7.784945, 16.636003, 26.565924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.175908, 16.652235, 26.482950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210806, -0.258520, 0.942724,
		-0.015372, -0.965153, -0.261233,
		0.977407, 0.040578, -0.207434,
		8.469131, 16.664408, 26.420719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.030459, 16.035080, 26.829964>,  <7.784945, 16.636003, 26.565924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.030459, 16.035080, 26.829964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.302170, 16.327486, 26.804043>,  <8.465196, 16.502930, 26.788490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.302170, 16.327486, 26.804043>,  <8.030459, 16.035080, 26.829964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.302170, 16.327486, 26.804043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324220, -0.219706, 0.920115,
		0.658381, -0.646022, -0.386251,
		0.679276, 0.731017, -0.064803,
		8.505953, 16.546791, 26.784601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.622655, 15.732291, 27.062620>,  <8.030459, 16.035080, 26.829964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.622655, 15.732291, 27.062620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.672311, 16.127623, 27.097939>,  <8.702105, 16.364822, 27.119129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.672311, 16.127623, 27.097939>,  <8.622655, 15.732291, 27.062620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.672311, 16.127623, 27.097939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269014, -0.119174, 0.955735,
		0.955102, -0.094892, -0.280669,
		0.124140, 0.988328, 0.088296,
		8.709553, 16.424122, 27.124428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.294678, 15.748237, 27.296476>,  <8.622655, 15.732291, 27.062620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.294678, 15.748237, 27.296476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.145374, 16.106607, 27.392803>,  <9.055793, 16.321630, 27.450600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.145374, 16.106607, 27.392803>,  <9.294678, 15.748237, 27.296476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.145374, 16.106607, 27.392803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266109, -0.145275, 0.952933,
		0.888743, 0.419773, -0.184190,
		-0.373258, 0.895927, 0.240818,
		9.033397, 16.375385, 27.465048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.744691, 16.014542, 27.592768>,  <9.294678, 15.748237, 27.296476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.744691, 16.014542, 27.592768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.452091, 16.252865, 27.725384>,  <9.276531, 16.395859, 27.804955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.452091, 16.252865, 27.725384>,  <9.744691, 16.014542, 27.592768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.452091, 16.252865, 27.725384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412156, -0.000972, 0.911113,
		0.543171, 0.803126, -0.244855,
		-0.731500, 0.595809, 0.331541,
		9.232641, 16.431608, 27.824846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.158701, 16.487051, 27.983236>,  <9.744691, 16.014542, 27.592768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.158701, 16.487051, 27.983236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.770438, 16.481123, 28.079239>,  <9.537480, 16.477566, 28.136841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.770438, 16.481123, 28.079239>,  <10.158701, 16.487051, 27.983236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.770438, 16.481123, 28.079239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239393, 0.034607, 0.970306,
		-0.022686, 0.999291, -0.030044,
		-0.970658, -0.014820, 0.240009,
		9.479240, 16.476677, 28.151241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.092451, 16.937000, 28.598337>,  <10.158701, 16.487051, 27.983236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.092451, 16.937000, 28.598337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.767857, 16.703293, 28.593884>,  <9.573100, 16.563068, 28.591211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.767857, 16.703293, 28.593884>,  <10.092451, 16.937000, 28.598337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.767857, 16.703293, 28.593884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110137, -0.171625, 0.978987,
		-0.573900, 0.793207, 0.203621,
		-0.811485, -0.584267, -0.011134,
		9.524411, 16.528013, 28.590544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.590222, 17.176884, 29.123377>,  <10.092451, 16.937000, 28.598337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.590222, 17.176884, 29.123377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.545539, 16.783651, 29.065306>,  <9.518729, 16.547712, 29.030464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.545539, 16.783651, 29.065306>,  <9.590222, 17.176884, 29.123377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.545539, 16.783651, 29.065306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148271, -0.160944, 0.975762,
		-0.982617, 0.087476, 0.163741,
		-0.111709, -0.983079, -0.145176,
		9.512027, 16.488728, 29.021753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.986836, 16.799660, 29.478849>,  <9.590222, 17.176884, 29.123377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.986836, 16.799660, 29.478849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.247632, 16.502094, 29.420191>,  <9.404109, 16.323555, 29.384995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.247632, 16.502094, 29.420191>,  <8.986836, 16.799660, 29.478849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.247632, 16.502094, 29.420191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017413, -0.178667, 0.983756,
		-0.758030, -0.643950, -0.103535,
		0.651987, -0.743913, -0.146648,
		9.443229, 16.278921, 29.376196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.721034, 16.104721, 29.716516>,  <8.986836, 16.799660, 29.478849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.721034, 16.104721, 29.716516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.110849, 16.188269, 29.749130>,  <9.344739, 16.238398, 29.768698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.110849, 16.188269, 29.749130>,  <8.721034, 16.104721, 29.716516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.110849, 16.188269, 29.749130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076542, -0.031892, 0.996556,
		0.210749, -0.977423, -0.015092,
		0.974539, 0.208868, 0.081535,
		9.403212, 16.250929, 29.773590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.203556, 15.514855, 30.043829>,  <8.721034, 16.104721, 29.716516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.203556, 15.514855, 30.043829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.330520, 15.885345, 30.125179>,  <9.406698, 16.107637, 30.173990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.330520, 15.885345, 30.125179>,  <9.203556, 15.514855, 30.043829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.330520, 15.885345, 30.125179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173003, -0.154308, 0.972759,
		0.932374, -0.343947, 0.111260,
		0.317409, 0.926223, 0.203377,
		9.425742, 16.163212, 30.186192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.603756, 15.504428, 30.640856>,  <9.203556, 15.514855, 30.043829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.603756, 15.504428, 30.640856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.475139, 15.882683, 30.621346>,  <9.397968, 16.109636, 30.609638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.475139, 15.882683, 30.621346>,  <9.603756, 15.504428, 30.640856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.475139, 15.882683, 30.621346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111051, 0.013497, 0.993723,
		0.940360, 0.324943, 0.100674,
		-0.321544, 0.945637, -0.048778,
		9.378675, 16.166374, 30.606712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.115967, 15.901262, 30.923067>,  <9.603756, 15.504428, 30.640856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.115967, 15.901262, 30.923067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.754306, 16.071871, 30.932745>,  <9.537309, 16.174236, 30.938551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.754306, 16.071871, 30.932745>,  <10.115967, 15.901262, 30.923067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.754306, 16.071871, 30.932745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054480, -0.171290, 0.983713,
		0.423720, 0.888109, 0.178110,
		-0.904153, 0.426522, 0.024195,
		9.483060, 16.199827, 30.940004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.149904, 16.714214, 30.780848>,  <10.115967, 15.901262, 30.923067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.149904, 16.714214, 30.780848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.528842, 16.627619, 30.686470>,  <10.756205, 16.575661, 30.629843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.528842, 16.627619, 30.686470>,  <10.149904, 16.714214, 30.780848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.528842, 16.627619, 30.686470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268196, -0.939006, -0.215263,
		-0.174950, 0.267207, -0.947625,
		0.947345, -0.216489, -0.235943,
		10.813046, 16.562672, 30.615686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.144754, 16.477757, 30.158533>,  <10.149904, 16.714214, 30.780848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.144754, 16.477757, 30.158533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.451851, 16.310234, 30.352514>,  <10.636108, 16.209721, 30.468903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.451851, 16.310234, 30.352514>,  <10.144754, 16.477757, 30.158533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.451851, 16.310234, 30.352514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272417, -0.898368, -0.344562,
		0.579969, 0.132426, -0.803803,
		0.767740, -0.418805, 0.484951,
		10.682173, 16.184593, 30.497999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.473996, 16.131029, 29.653557>,  <10.144754, 16.477757, 30.158533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.473996, 16.131029, 29.653557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.548072, 15.973252, 30.013584>,  <10.592517, 15.878587, 30.229601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.548072, 15.973252, 30.013584>,  <10.473996, 16.131029, 29.653557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.548072, 15.973252, 30.013584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138556, -0.917241, -0.373458,
		0.972886, -0.055550, -0.224515,
		0.185189, -0.394440, 0.900068,
		10.603628, 15.854920, 30.283604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.811231, 15.581097, 29.441673>,  <10.473996, 16.131029, 29.653557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.811231, 15.581097, 29.441673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.696472, 15.488192, 29.813425>,  <10.627617, 15.432448, 30.036476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.696472, 15.488192, 29.813425>,  <10.811231, 15.581097, 29.441673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.696472, 15.488192, 29.813425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058768, -0.964068, -0.259074,
		0.956158, -0.128945, 0.262937,
		-0.286895, -0.232264, 0.929379,
		10.610404, 15.418512, 30.092239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.289401, 15.222830, 29.724239>,  <10.811231, 15.581097, 29.441673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.289401, 15.222830, 29.724239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.944534, 15.109290, 29.892096>,  <10.737615, 15.041166, 29.992809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.944534, 15.109290, 29.892096>,  <11.289401, 15.222830, 29.724239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.944534, 15.109290, 29.892096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005814, -0.833797, -0.552041,
		0.506592, -0.473511, 0.720522,
		-0.862166, -0.283849, 0.419642,
		10.685884, 15.024136, 30.017988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.330153, 14.484873, 29.819998>,  <11.289401, 15.222830, 29.724239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.330153, 14.484873, 29.819998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.944028, 14.578147, 29.866983>,  <10.712353, 14.634111, 29.895176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.944028, 14.578147, 29.866983>,  <11.330153, 14.484873, 29.819998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.944028, 14.578147, 29.866983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260569, -0.831649, -0.490371,
		-0.016658, -0.503969, 0.863561,
		-0.965311, 0.233186, 0.117465,
		10.654434, 14.648103, 29.902224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.939341, 13.901290, 30.113016>,  <11.330153, 14.484873, 29.819998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.939341, 13.901290, 30.113016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.684290, 14.110773, 29.887039>,  <10.531260, 14.236463, 29.751453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.684290, 14.110773, 29.887039>,  <10.939341, 13.901290, 30.113016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.684290, 14.110773, 29.887039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248381, -0.833965, -0.492757,
		-0.729203, -0.173875, 0.661839,
		-0.637629, 0.523707, -0.564943,
		10.493002, 14.267885, 29.717556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.264758, 13.460570, 30.047621>,  <10.939341, 13.901290, 30.113016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.264758, 13.460570, 30.047621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.309777, 13.720004, 29.746510>,  <10.336788, 13.875665, 29.565844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.309777, 13.720004, 29.746510>,  <10.264758, 13.460570, 30.047621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.309777, 13.720004, 29.746510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118326, -0.743451, -0.658240,
		-0.986576, 0.163156, -0.006929,
		0.112547, 0.648584, -0.752776,
		10.343541, 13.914579, 29.520678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.785780, 13.220516, 29.495544>,  <10.264758, 13.460570, 30.047621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.785780, 13.220516, 29.495544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.073318, 13.448436, 29.336248>,  <10.245840, 13.585187, 29.240671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.073318, 13.448436, 29.336248>,  <9.785780, 13.220516, 29.495544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.073318, 13.448436, 29.336248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037651, -0.603935, -0.796144,
		-0.694152, 0.557309, -0.455588,
		0.718843, 0.569798, -0.398239,
		10.288971, 13.619375, 29.216776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.581634, 13.069438, 28.808405>,  <9.785780, 13.220516, 29.495544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.581634, 13.069438, 28.808405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.954820, 13.212822, 28.821564>,  <10.178731, 13.298853, 28.829458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.954820, 13.212822, 28.821564>,  <9.581634, 13.069438, 28.808405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.954820, 13.212822, 28.821564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231204, -0.526685, -0.818015,
		-0.275901, 0.770784, -0.574256,
		0.932965, 0.358461, 0.032896,
		10.234709, 13.320360, 28.831432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.737154, 13.366880, 28.142834>,  <9.581634, 13.069438, 28.808405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.737154, 13.366880, 28.142834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.103235, 13.276413, 28.276251>,  <10.322884, 13.222133, 28.356300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.103235, 13.276413, 28.276251>,  <9.737154, 13.366880, 28.142834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.103235, 13.276413, 28.276251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227942, -0.392022, -0.891270,
		0.332333, 0.891721, -0.307226,
		0.915203, -0.226169, 0.333543,
		10.377796, 13.208562, 28.376314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.176300, 13.413979, 27.571388>,  <9.737154, 13.366880, 28.142834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.176300, 13.413979, 27.571388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.438415, 13.226722, 27.808517>,  <10.595683, 13.114367, 27.950796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.438415, 13.226722, 27.808517>,  <10.176300, 13.413979, 27.571388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.438415, 13.226722, 27.808517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354738, -0.502165, -0.788664,
		0.666903, 0.727099, -0.162994,
		0.655287, -0.468142, 0.592825,
		10.635001, 13.086279, 27.986364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.822428, 13.526249, 27.319410>,  <10.176300, 13.413979, 27.571388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.822428, 13.526249, 27.319410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.881113, 13.217135, 27.566402>,  <10.916325, 13.031668, 27.714598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.881113, 13.217135, 27.566402>,  <10.822428, 13.526249, 27.319410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.881113, 13.217135, 27.566402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713892, -0.349379, -0.606871,
		0.684714, 0.529850, 0.500425,
		0.146713, -0.772783, 0.617480,
		10.925127, 12.985301, 27.751646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.547676, 13.385615, 27.267036>,  <10.822428, 13.526249, 27.319410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.547676, 13.385615, 27.267036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.405010, 13.052426, 27.436245>,  <11.319411, 12.852513, 27.537771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.405010, 13.052426, 27.436245>,  <11.547676, 13.385615, 27.267036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.405010, 13.052426, 27.436245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622167, -0.549564, -0.557574,
		0.696921, 0.064325, 0.714257,
		-0.356664, -0.832972, 0.423023,
		11.298011, 12.802535, 27.563152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.106754, 12.989078, 27.584135>,  <11.547676, 13.385615, 27.267036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.106754, 12.989078, 27.584135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.799834, 12.742323, 27.514050>,  <11.615682, 12.594271, 27.471998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.799834, 12.742323, 27.514050>,  <12.106754, 12.989078, 27.584135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.799834, 12.742323, 27.514050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517900, -0.434959, -0.736607,
		0.378191, -0.655943, 0.653231,
		-0.767301, -0.616886, -0.175216,
		11.569644, 12.557257, 27.461485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.459500, 12.492383, 27.361496>,  <12.106754, 12.989078, 27.584135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.459500, 12.492383, 27.361496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.094869, 12.380589, 27.240891>,  <11.876089, 12.313512, 27.168528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.094869, 12.380589, 27.240891>,  <12.459500, 12.492383, 27.361496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.094869, 12.380589, 27.240891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397791, -0.414351, -0.818581,
		0.103850, -0.866141, 0.488891,
		-0.911579, -0.279486, -0.301513,
		11.821395, 12.296742, 27.150436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.567229, 11.794590, 27.124702>,  <12.459500, 12.492383, 27.361496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.567229, 11.794590, 27.124702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.219610, 11.923050, 26.974174>,  <12.011039, 12.000126, 26.883858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.219610, 11.923050, 26.974174>,  <12.567229, 11.794590, 27.124702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.219610, 11.923050, 26.974174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260782, -0.349033, -0.900094,
		-0.420416, -0.880362, 0.219575,
		-0.869047, 0.321153, -0.376322,
		11.958896, 12.019395, 26.861279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.307384, 11.207869, 26.663805>,  <12.567229, 11.794590, 27.124702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.307384, 11.207869, 26.663805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.156961, 11.558402, 26.543392>,  <12.066708, 11.768723, 26.471144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.156961, 11.558402, 26.543392>,  <12.307384, 11.207869, 26.663805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.156961, 11.558402, 26.543392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209339, -0.236129, -0.948905,
		-0.902640, -0.419860, -0.094653,
		-0.376057, 0.876334, -0.301033,
		12.044145, 11.821302, 26.453083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.881020, 10.975668, 26.152040>,  <12.307384, 11.207869, 26.663805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.881020, 10.975668, 26.152040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.977864, 11.357795, 26.084215>,  <12.035971, 11.587070, 26.043520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.977864, 11.357795, 26.084215>,  <11.881020, 10.975668, 26.152040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.977864, 11.357795, 26.084215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060802, -0.189356, -0.980024,
		-0.968341, 0.226966, -0.103931,
		0.242112, 0.955317, -0.169561,
		12.050498, 11.644390, 26.033346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.691648, 11.143057, 25.523258>,  <11.881020, 10.975668, 26.152040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.691648, 11.143057, 25.523258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.914627, 11.469883, 25.582127>,  <12.048414, 11.665978, 25.617449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.914627, 11.469883, 25.582127>,  <11.691648, 11.143057, 25.523258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.914627, 11.469883, 25.582127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192761, 0.045047, -0.980211,
		-0.807525, 0.574784, -0.132387,
		0.557446, 0.817064, 0.147172,
		12.081861, 11.715002, 25.626278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.447553, 11.728709, 25.115145>,  <11.691648, 11.143057, 25.523258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.447553, 11.728709, 25.115145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.836972, 11.788178, 25.184540>,  <12.070624, 11.823860, 25.226177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.836972, 11.788178, 25.184540>,  <11.447553, 11.728709, 25.115145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.836972, 11.788178, 25.184540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187242, -0.084024, -0.978714,
		-0.130930, 0.985310, -0.109640,
		0.973549, 0.148672, 0.173490,
		12.129037, 11.832780, 25.236588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.607913, 12.233286, 24.705256>,  <11.447553, 11.728709, 25.115145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.607913, 12.233286, 24.705256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.927982, 12.004782, 24.778341>,  <12.120024, 11.867680, 24.822193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.927982, 12.004782, 24.778341>,  <11.607913, 12.233286, 24.705256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.927982, 12.004782, 24.778341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129909, -0.132328, -0.982656,
		0.585531, 0.810031, -0.031673,
		0.800174, -0.571260, 0.182712,
		12.168035, 11.833404, 24.833155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.047517, 12.348240, 24.160789>,  <11.607913, 12.233286, 24.705256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.047517, 12.348240, 24.160789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.263861, 12.034762, 24.282967>,  <12.393667, 11.846676, 24.356272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.263861, 12.034762, 24.282967>,  <12.047517, 12.348240, 24.160789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.263861, 12.034762, 24.282967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341328, -0.127395, -0.931271,
		0.768743, 0.607943, 0.198594,
		0.540860, -0.783694, 0.305442,
		12.426119, 11.799654, 24.374599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.716460, 12.275506, 23.660849>,  <12.047517, 12.348240, 24.160789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.716460, 12.275506, 23.660849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.661085, 11.931690, 23.857634>,  <12.627860, 11.725401, 23.975704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.661085, 11.931690, 23.857634>,  <12.716460, 12.275506, 23.660849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.661085, 11.931690, 23.857634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345605, -0.507447, -0.789338,
		0.928112, 0.060752, 0.367310,
		-0.138437, -0.859539, 0.491964,
		12.619554, 11.673828, 24.005222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.289999, 11.986383, 23.556608>,  <12.716460, 12.275506, 23.660849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.289999, 11.986383, 23.556608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.047027, 11.681704, 23.646801>,  <12.901243, 11.498896, 23.700916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.047027, 11.681704, 23.646801>,  <13.289999, 11.986383, 23.556608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.047027, 11.681704, 23.646801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325247, -0.497443, -0.804217,
		0.724735, -0.415169, 0.549903,
		-0.607431, -0.761699, 0.225482,
		12.864798, 11.453194, 23.714445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.701524, 11.448684, 23.369837>,  <13.289999, 11.986383, 23.556608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.701524, 11.448684, 23.369837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.324980, 11.315687, 23.392780>,  <13.099053, 11.235889, 23.406548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.324980, 11.315687, 23.392780>,  <13.701524, 11.448684, 23.369837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.324980, 11.315687, 23.392780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164858, -0.601595, -0.781604,
		0.294384, -0.726315, 0.621132,
		-0.941361, -0.332490, 0.057361,
		13.042572, 11.215940, 23.409988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.697608, 10.742981, 23.265291>,  <13.701524, 11.448684, 23.369837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.697608, 10.742981, 23.265291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.316525, 10.823612, 23.174326>,  <13.087876, 10.871991, 23.119747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.316525, 10.823612, 23.174326>,  <13.697608, 10.742981, 23.265291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.316525, 10.823612, 23.174326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023810, -0.696520, -0.717142,
		-0.302958, -0.688641, 0.658780,
		-0.952707, 0.201579, -0.227412,
		13.030713, 10.884086, 23.106102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.440624, 10.110004, 23.056070>,  <13.697608, 10.742981, 23.265291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.440624, 10.110004, 23.056070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.210509, 10.375942, 22.865480>,  <13.072440, 10.535505, 22.751127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.210509, 10.375942, 22.865480>,  <13.440624, 10.110004, 23.056070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.210509, 10.375942, 22.865480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011050, -0.588784, -0.808215,
		-0.817877, -0.459691, 0.346066,
		-0.575287, 0.664844, -0.476474,
		13.037923, 10.575396, 22.722538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.167113, 9.654338, 22.551414>,  <13.440624, 10.110004, 23.056070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.167113, 9.654338, 22.551414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.064404, 10.020573, 22.427628>,  <13.002778, 10.240314, 22.353355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.064404, 10.020573, 22.427628>,  <13.167113, 9.654338, 22.551414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.064404, 10.020573, 22.427628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161661, -0.356381, -0.920249,
		-0.952855, -0.186267, 0.239524,
		-0.256773, 0.915586, -0.309467,
		12.987371, 10.295248, 22.334787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.495566, 9.635159, 22.174726>,  <13.167113, 9.654338, 22.551414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.495566, 9.635159, 22.174726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.700953, 9.956058, 22.052904>,  <12.824184, 10.148597, 21.979811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.700953, 9.956058, 22.052904>,  <12.495566, 9.635159, 22.174726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.700953, 9.956058, 22.052904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117679, -0.285730, -0.951057,
		-0.850003, 0.524175, -0.052305,
		0.513465, 0.802246, -0.304556,
		12.854992, 10.196732, 21.961538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.120295, 9.939090, 21.678911>,  <12.495566, 9.635159, 22.174726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.120295, 9.939090, 21.678911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.465190, 10.127248, 21.603788>,  <12.672128, 10.240143, 21.558714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.465190, 10.127248, 21.603788>,  <12.120295, 9.939090, 21.678911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.465190, 10.127248, 21.603788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137773, -0.138998, -0.980662,
		-0.487404, 0.871440, -0.055042,
		0.862239, 0.470395, -0.187809,
		12.723862, 10.268367, 21.547445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.916995, 10.489278, 21.186691>,  <12.120295, 9.939090, 21.678911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.916995, 10.489278, 21.186691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.314945, 10.463263, 21.155727>,  <12.553716, 10.447654, 21.137150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.314945, 10.463263, 21.155727>,  <11.916995, 10.489278, 21.186691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.314945, 10.463263, 21.155727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069069, 0.121906, -0.990135,
		0.073833, 0.990408, 0.116789,
		0.994876, -0.065038, -0.077408,
		12.613408, 10.443751, 21.132505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.140012, 10.993978, 20.755650>,  <11.916995, 10.489278, 21.186691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.140012, 10.993978, 20.755650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.452067, 10.744287, 20.739027>,  <12.639300, 10.594474, 20.729053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.452067, 10.744287, 20.739027>,  <12.140012, 10.993978, 20.755650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.452067, 10.744287, 20.739027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013614, 0.049469, -0.998683,
		0.625459, 0.779677, 0.030094,
		0.780139, -0.624225, -0.041555,
		12.686109, 10.557020, 20.726561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.740761, 11.394412, 20.491943>,  <12.140012, 10.993978, 20.755650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.740761, 11.394412, 20.491943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.834400, 11.011129, 20.426172>,  <12.890584, 10.781159, 20.386709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.834400, 11.011129, 20.426172>,  <12.740761, 11.394412, 20.491943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.834400, 11.011129, 20.426172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005756, 0.170492, -0.985343,
		0.972196, 0.229721, 0.045427,
		0.234099, -0.958207, -0.164429,
		12.904630, 10.723667, 20.376844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.160216, 11.486695, 19.947311>,  <12.740761, 11.394412, 20.491943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.160216, 11.486695, 19.947311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.068447, 11.097984, 19.925352>,  <13.013386, 10.864758, 19.912176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.068447, 11.097984, 19.925352>,  <13.160216, 11.486695, 19.947311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.068447, 11.097984, 19.925352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122735, 0.084836, -0.988807,
		0.965557, -0.220118, -0.138734,
		-0.229424, -0.971777, -0.054898,
		12.999620, 10.806451, 19.908882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.699971, 11.233381, 19.465315>,  <13.160216, 11.486695, 19.947311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.699971, 11.233381, 19.465315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.371495, 11.005123, 19.463972>,  <13.174410, 10.868168, 19.463165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.371495, 11.005123, 19.463972>,  <13.699971, 11.233381, 19.465315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.371495, 11.005123, 19.463972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043086, 0.067869, -0.996763,
		0.569027, -0.818387, -0.080320,
		-0.821190, -0.570646, -0.003358,
		13.125138, 10.833929, 19.462965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.722737, 10.808613, 18.815014>,  <13.699971, 11.233381, 19.465315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.722737, 10.808613, 18.815014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.340075, 10.771195, 18.925331>,  <13.110478, 10.748745, 18.991522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.340075, 10.771195, 18.925331>,  <13.722737, 10.808613, 18.815014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.340075, 10.771195, 18.925331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263120, -0.128277, -0.956197,
		0.124825, -0.987317, 0.098104,
		-0.956654, -0.093544, 0.275795,
		13.053080, 10.743132, 19.008070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.444273, 10.250679, 18.464840>,  <13.722737, 10.808613, 18.815014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.444273, 10.250679, 18.464840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.133344, 10.488984, 18.545671>,  <12.946786, 10.631968, 18.594170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.133344, 10.488984, 18.545671>,  <13.444273, 10.250679, 18.464840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.133344, 10.488984, 18.545671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249044, 0.003563, -0.968486,
		-0.577708, -0.803152, 0.145602,
		-0.777322, 0.595763, 0.202079,
		12.900146, 10.667713, 18.606295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.878113, 9.857656, 18.232189>,  <13.444273, 10.250679, 18.464840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.878113, 9.857656, 18.232189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.780966, 10.245466, 18.245062>,  <12.722678, 10.478152, 18.252785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.780966, 10.245466, 18.245062>,  <12.878113, 9.857656, 18.232189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.780966, 10.245466, 18.245062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247981, -0.029980, -0.968301,
		-0.937828, -0.243148, 0.247705,
		-0.242867, 0.969526, 0.032179,
		12.708106, 10.536324, 18.254715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.298389, 9.898787, 17.853006>,  <12.878113, 9.857656, 18.232189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.298389, 9.898787, 17.853006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.417292, 10.279486, 17.883514>,  <12.488633, 10.507905, 17.901819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.417292, 10.279486, 17.883514>,  <12.298389, 9.898787, 17.853006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.417292, 10.279486, 17.883514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227715, 0.148242, -0.962377,
		-0.927246, 0.268704, 0.260792,
		0.297255, 0.951747, 0.076269,
		12.506468, 10.565010, 17.906395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.820699, 10.236799, 17.505510>,  <12.298389, 9.898787, 17.853006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.820699, 10.236799, 17.505510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.105383, 10.515274, 17.543018>,  <12.276194, 10.682359, 17.565523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.105383, 10.515274, 17.543018>,  <11.820699, 10.236799, 17.505510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.105383, 10.515274, 17.543018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226898, 0.354154, -0.907244,
		-0.664821, 0.624418, 0.410018,
		0.711710, 0.696187, 0.093770,
		12.318896, 10.724131, 17.571150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.588803, 10.799318, 17.073174>,  <11.820699, 10.236799, 17.505510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.588803, 10.799318, 17.073174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.984219, 10.853892, 17.099031>,  <12.221468, 10.886637, 17.114546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.984219, 10.853892, 17.099031>,  <11.588803, 10.799318, 17.073174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.984219, 10.853892, 17.099031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006106, 0.391711, -0.920068,
		-0.150851, 0.909917, 0.386388,
		0.988538, 0.136434, 0.064646,
		12.280780, 10.894823, 17.118425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.776208, 11.545665, 16.821487>,  <11.588803, 10.799318, 17.073174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.776208, 11.545665, 16.821487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.093117, 11.304823, 16.781942>,  <12.283262, 11.160317, 16.758215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.093117, 11.304823, 16.781942>,  <11.776208, 11.545665, 16.821487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.093117, 11.304823, 16.781942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236898, 0.452851, -0.859538,
		0.562303, 0.657567, 0.501419,
		0.792272, -0.602106, -0.098863,
		12.330798, 11.124191, 16.752283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.290248, 11.944977, 16.367220>,  <11.776208, 11.545665, 16.821487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.290248, 11.944977, 16.367220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.424419, 11.568999, 16.341938>,  <12.504922, 11.343413, 16.326769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.424419, 11.568999, 16.341938>,  <12.290248, 11.944977, 16.367220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.424419, 11.568999, 16.341938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173399, 0.127544, -0.976558,
		0.925970, 0.316606, 0.205767,
		0.335428, -0.939943, -0.063203,
		12.525048, 11.287016, 16.322977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.073254, 11.923207, 16.010443>,  <12.290248, 11.944977, 16.367220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.073254, 11.923207, 16.010443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.863005, 11.584123, 15.981858>,  <12.736856, 11.380672, 15.964707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.863005, 11.584123, 15.981858>,  <13.073254, 11.923207, 16.010443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.863005, 11.584123, 15.981858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001371, 0.083156, -0.996536,
		0.850717, -0.523900, -0.042546,
		-0.525623, -0.847711, -0.071460,
		12.705317, 11.329809, 15.960421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.579437, 11.485109, 15.645838>,  <13.073254, 11.923207, 16.010443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.579437, 11.485109, 15.645838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.211588, 11.348152, 15.568833>,  <12.990878, 11.265978, 15.522631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.211588, 11.348152, 15.568833>,  <13.579437, 11.485109, 15.645838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.211588, 11.348152, 15.568833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191281, 0.037704, -0.980811,
		0.343082, -0.938800, 0.030820,
		-0.919623, -0.342394, -0.192510,
		12.935701, 11.245434, 15.511080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.090717, 11.927035, 16.028248>,  <13.579437, 11.485109, 15.645838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.090717, 11.927035, 16.028248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.418804, 12.151030, 15.981496>,  <14.615656, 12.285426, 15.953444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.418804, 12.151030, 15.981496>,  <14.090717, 11.927035, 16.028248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.418804, 12.151030, 15.981496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269653, -0.198281, 0.942322,
		0.504512, -0.804425, -0.313636,
		0.820216, 0.559986, -0.116880,
		14.664869, 12.319025, 15.946432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.547596, 11.564603, 16.339359>,  <14.090717, 11.927035, 16.028248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.547596, 11.564603, 16.339359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.742040, 11.913735, 16.356632>,  <14.858706, 12.123215, 16.366997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.742040, 11.913735, 16.356632>,  <14.547596, 11.564603, 16.339359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.742040, 11.913735, 16.356632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321503, -0.224566, 0.919894,
		0.812609, -0.433285, -0.389782,
		0.486109, 0.872831, 0.043182,
		14.887873, 12.175585, 16.369587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.197453, 11.409375, 16.560432>,  <14.547596, 11.564603, 16.339359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.197453, 11.409375, 16.560432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.153673, 11.797295, 16.647623>,  <15.127406, 12.030046, 16.699938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.153673, 11.797295, 16.647623>,  <15.197453, 11.409375, 16.560432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.153673, 11.797295, 16.647623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449787, -0.147238, 0.880916,
		0.886404, 0.194457, -0.420088,
		-0.109448, 0.969798, 0.217977,
		15.120839, 12.088234, 16.713017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.755883, 11.582392, 16.804798>,  <15.197453, 11.409375, 16.560432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.755883, 11.582392, 16.804798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.542235, 11.895645, 16.932182>,  <15.414046, 12.083597, 17.008614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.542235, 11.895645, 16.932182>,  <15.755883, 11.582392, 16.804798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.542235, 11.895645, 16.932182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471996, -0.036282, 0.880854,
		0.701381, 0.620794, -0.350256,
		-0.534121, 0.783134, 0.318460,
		15.381999, 12.130586, 17.027719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.185144, 12.072892, 17.151049>,  <15.755883, 11.582392, 16.804798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.185144, 12.072892, 17.151049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.816111, 12.155560, 17.281355>,  <15.594690, 12.205162, 17.359539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.816111, 12.155560, 17.281355>,  <16.185144, 12.072892, 17.151049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.816111, 12.155560, 17.281355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335027, 0.010500, 0.942150,
		0.191295, 0.978354, -0.078928,
		-0.922585, 0.206672, 0.325767,
		15.539335, 12.217562, 17.379086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.345615, 12.435844, 17.696716>,  <16.185144, 12.072892, 17.151049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.345615, 12.435844, 17.696716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.961766, 12.349225, 17.768532>,  <15.731457, 12.297254, 17.811621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.961766, 12.349225, 17.768532>,  <16.345615, 12.435844, 17.696716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.961766, 12.349225, 17.768532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182137, 0.008071, 0.983240,
		-0.214368, 0.976238, 0.031696,
		-0.959621, -0.216548, 0.179539,
		15.673880, 12.284261, 17.822393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.117348, 12.949463, 18.266590>,  <16.345615, 12.435844, 17.696716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.117348, 12.949463, 18.266590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.868076, 12.636728, 18.258781>,  <15.718513, 12.449088, 18.254095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.868076, 12.636728, 18.258781>,  <16.117348, 12.949463, 18.266590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.868076, 12.636728, 18.258781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032142, -0.050545, 0.998204,
		-0.781419, 0.621432, 0.056629,
		-0.623178, -0.781836, -0.019523,
		15.681123, 12.402178, 18.252924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.644706, 13.164185, 18.782179>,  <16.117348, 12.949463, 18.266590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.644706, 13.164185, 18.782179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.609461, 12.767059, 18.749788>,  <15.588314, 12.528784, 18.730354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.609461, 12.767059, 18.749788>,  <15.644706, 13.164185, 18.782179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.609461, 12.767059, 18.749788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219680, -0.059923, 0.973730,
		-0.971585, 0.103586, -0.212821,
		-0.088112, -0.992814, -0.080976,
		15.583028, 12.469215, 18.725496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.017744, 12.977417, 19.197819>,  <15.644706, 13.164185, 18.782179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.017744, 12.977417, 19.197819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.228018, 12.643279, 19.133501>,  <15.354182, 12.442797, 19.094910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.228018, 12.643279, 19.133501>,  <15.017744, 12.977417, 19.197819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.228018, 12.643279, 19.133501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010113, -0.195144, 0.980722,
		-0.850619, -0.513925, -0.111032,
		0.525685, -0.835344, -0.160795,
		15.385723, 12.392675, 19.085262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.789393, 12.577405, 19.761171>,  <15.017744, 12.977417, 19.197819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.789393, 12.577405, 19.761171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.132786, 12.420893, 19.628561>,  <15.338821, 12.326985, 19.548994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.132786, 12.420893, 19.628561>,  <14.789393, 12.577405, 19.761171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.132786, 12.420893, 19.628561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264601, -0.215822, 0.939898,
		-0.439314, -0.894606, -0.081746,
		0.858481, -0.391281, -0.331527,
		15.390330, 12.303509, 19.529102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.773700, 11.947688, 20.018404>,  <14.789393, 12.577405, 19.761171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.773700, 11.947688, 20.018404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.156725, 12.038068, 19.946827>,  <15.386540, 12.092296, 19.903881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.156725, 12.038068, 19.946827>,  <14.773700, 11.947688, 20.018404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.156725, 12.038068, 19.946827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224297, -0.194278, 0.954959,
		0.181009, -0.954569, -0.236713,
		0.957563, 0.225951, -0.178941,
		15.443994, 12.105853, 19.893145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.219239, 11.460610, 20.503527>,  <14.773700, 11.947688, 20.018404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.219239, 11.460610, 20.503527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.444893, 11.766315, 20.378529>,  <15.580285, 11.949739, 20.303530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.444893, 11.766315, 20.378529>,  <15.219239, 11.460610, 20.503527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.444893, 11.766315, 20.378529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510479, -0.025364, 0.859516,
		0.648971, -0.644405, -0.404449,
		0.564135, 0.764264, -0.312495,
		15.614134, 11.995594, 20.284781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.883190, 11.323948, 20.794191>,  <15.219239, 11.460610, 20.503527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.883190, 11.323948, 20.794191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.857775, 11.711395, 20.698074>,  <15.842525, 11.943864, 20.640404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.857775, 11.711395, 20.698074>,  <15.883190, 11.323948, 20.794191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.857775, 11.711395, 20.698074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127378, 0.246682, 0.960689,
		0.989817, 0.030433, -0.139054,
		-0.063538, 0.968619, -0.240294,
		15.838714, 12.001981, 20.625986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.227884, 11.675093, 21.424847>,  <15.883190, 11.323948, 20.794191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.227884, 11.675093, 21.424847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.023924, 11.976964, 21.259697>,  <15.901548, 12.158087, 21.160606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.023924, 11.976964, 21.259697>,  <16.227884, 11.675093, 21.424847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.023924, 11.976964, 21.259697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143862, 0.398387, 0.905865,
		0.848119, 0.521297, -0.094568,
		-0.509899, 0.754677, -0.412874,
		15.870955, 12.203367, 21.135834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.475615, 12.239835, 21.753662>,  <16.227884, 11.675093, 21.424847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.475615, 12.239835, 21.753662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.107277, 12.315466, 21.617252>,  <15.886274, 12.360845, 21.535406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.107277, 12.315466, 21.617252>,  <16.475615, 12.239835, 21.753662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.107277, 12.315466, 21.617252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231726, 0.438037, 0.868577,
		0.313611, 0.878847, -0.359549,
		-0.920843, 0.189079, -0.341025,
		15.831024, 12.372190, 21.514944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.266701, 12.868052, 22.113335>,  <16.475615, 12.239835, 21.753662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.266701, 12.868052, 22.113335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.904819, 12.765335, 21.977354>,  <15.687690, 12.703706, 21.895765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.904819, 12.765335, 21.977354>,  <16.266701, 12.868052, 22.113335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.904819, 12.765335, 21.977354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425991, 0.533384, 0.730776,
		-0.006332, 0.805953, -0.591945,
		-0.904705, -0.256791, -0.339952,
		15.633407, 12.688298, 21.875368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.836981, 13.440030, 22.119091>,  <16.266701, 12.868052, 22.113335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.836981, 13.440030, 22.119091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.579597, 13.134603, 22.097456>,  <15.425168, 12.951346, 22.084475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.579597, 13.134603, 22.097456>,  <15.836981, 13.440030, 22.119091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.579597, 13.134603, 22.097456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558679, 0.420142, 0.715094,
		-0.523298, 0.490351, -0.696933,
		-0.643458, -0.763568, -0.054090,
		15.386560, 12.905532, 22.081228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.071318, 13.706182, 22.013218>,  <15.836981, 13.440030, 22.119091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.071318, 13.706182, 22.013218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.072464, 13.350594, 22.196400>,  <15.073152, 13.137240, 22.306309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.072464, 13.350594, 22.196400>,  <15.071318, 13.706182, 22.013218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.072464, 13.350594, 22.196400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606870, 0.362437, 0.707353,
		-0.794796, -0.279946, -0.538451,
		0.002866, -0.888971, 0.457954,
		15.073324, 13.083902, 22.333786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.456232, 13.669731, 22.245317>,  <15.071318, 13.706182, 22.013218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.456232, 13.669731, 22.245317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.658664, 13.409879, 22.472250>,  <14.780123, 13.253967, 22.608410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.658664, 13.409879, 22.472250>,  <14.456232, 13.669731, 22.245317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.658664, 13.409879, 22.472250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545065, 0.268882, 0.794107,
		-0.668422, -0.711112, -0.218016,
		0.506079, -0.649632, 0.567329,
		14.810488, 13.214989, 22.642448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.928666, 13.403060, 22.627533>,  <14.456232, 13.669731, 22.245317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.928666, 13.403060, 22.627533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.242872, 13.255630, 22.826378>,  <14.431396, 13.167172, 22.945684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.242872, 13.255630, 22.826378>,  <13.928666, 13.403060, 22.627533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.242872, 13.255630, 22.826378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499750, 0.095965, 0.860837,
		-0.364987, -0.924632, -0.108813,
		0.785515, -0.368574, 0.497111,
		14.478527, 13.145059, 22.975512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.655044, 12.884521, 23.123571>,  <13.928666, 13.403060, 22.627533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.655044, 12.884521, 23.123571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.998837, 12.998028, 23.293636>,  <14.205113, 13.066132, 23.395676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.998837, 12.998028, 23.293636>,  <13.655044, 12.884521, 23.123571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.998837, 12.998028, 23.293636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481664, 0.171133, 0.859484,
		0.171133, -0.943499, 0.283766,
		-0.859484, -0.283766, -0.425163,
		14.256682, 13.083158, 23.421185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.684824, 12.597351, 23.830645>,  <13.655044, 12.884521, 23.123571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.684824, 12.597351, 23.830645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.960382, 12.887268, 23.826696>,  <14.125718, 13.061218, 23.824327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.960382, 12.887268, 23.826696>,  <13.684824, 12.597351, 23.830645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.960382, 12.887268, 23.826696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131320, 0.138184, 0.981662,
		0.712865, -0.674968, 0.190374,
		0.688897, 0.724792, -0.009870,
		14.167051, 13.104706, 23.823736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.035579, 12.589590, 24.521595>,  <13.684824, 12.597351, 23.830645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.035579, 12.589590, 24.521595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.074111, 12.953078, 24.359140>,  <14.097230, 13.171171, 24.261667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.074111, 12.953078, 24.359140>,  <14.035579, 12.589590, 24.521595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.074111, 12.953078, 24.359140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276209, 0.416415, 0.866202,
		0.956258, 0.028737, 0.291110,
		0.096331, 0.908720, -0.406138,
		14.103010, 13.225695, 24.237299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.351801, 12.941118, 25.036953>,  <14.035579, 12.589590, 24.521595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.351801, 12.941118, 25.036953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.227620, 13.238859, 24.800459>,  <14.153111, 13.417504, 24.658562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.227620, 13.238859, 24.800459>,  <14.351801, 12.941118, 25.036953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.227620, 13.238859, 24.800459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180628, 0.564443, 0.805468,
		0.933270, 0.356852, -0.040781,
		-0.310451, 0.744353, -0.591235,
		14.134485, 13.462165, 24.623089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.710372, 13.510751, 25.213255>,  <14.351801, 12.941118, 25.036953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.710372, 13.510751, 25.213255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.375770, 13.649207, 25.043341>,  <14.175008, 13.732281, 24.941393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.375770, 13.649207, 25.043341>,  <14.710372, 13.510751, 25.213255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.375770, 13.649207, 25.043341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174589, 0.566451, 0.805389,
		0.519399, 0.747877, -0.413408,
		-0.836507, 0.346142, -0.424785,
		14.124818, 13.753050, 24.915905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.675303, 14.139624, 25.540056>,  <14.710372, 13.510751, 25.213255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.675303, 14.139624, 25.540056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.308916, 14.057454, 25.402184>,  <14.089084, 14.008152, 25.319460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.308916, 14.057454, 25.402184>,  <14.675303, 14.139624, 25.540056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.308916, 14.057454, 25.402184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391185, 0.648399, 0.653110,
		0.089327, 0.733062, -0.674271,
		-0.915967, -0.205424, -0.344683,
		14.034126, 13.995827, 25.298779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.450304, 14.785445, 25.354578>,  <14.675303, 14.139624, 25.540056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.450304, 14.785445, 25.354578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.124809, 14.556118, 25.392813>,  <13.929512, 14.418522, 25.415754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.124809, 14.556118, 25.392813>,  <14.450304, 14.785445, 25.354578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.124809, 14.556118, 25.392813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390376, 0.660934, 0.640916,
		-0.430625, 0.484223, -0.761637,
		-0.813738, -0.573319, 0.095586,
		13.880688, 14.384122, 25.421488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.891871, 15.213317, 25.401369>,  <14.450304, 14.785445, 25.354578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.891871, 15.213317, 25.401369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.708926, 14.890821, 25.551460>,  <13.599159, 14.697323, 25.641514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.708926, 14.890821, 25.551460>,  <13.891871, 15.213317, 25.401369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.708926, 14.890821, 25.551460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458044, 0.575245, 0.677709,
		-0.762244, 0.138088, -0.632390,
		-0.457363, -0.806241, 0.375226,
		13.571717, 14.648948, 25.664028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.150434, 15.346331, 25.369358>,  <13.891871, 15.213317, 25.401369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.150434, 15.346331, 25.369358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.200001, 15.059986, 25.644222>,  <13.229741, 14.888180, 25.809141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.200001, 15.059986, 25.644222>,  <13.150434, 15.346331, 25.369358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.200001, 15.059986, 25.644222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566153, 0.517717, 0.641436,
		-0.814933, -0.468522, -0.341132,
		0.123917, -0.715860, 0.687159,
		13.237176, 14.845228, 25.850370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.475075, 15.020573, 25.601719>,  <13.150434, 15.346331, 25.369358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.475075, 15.020573, 25.601719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.747381, 14.963328, 25.889072>,  <12.910765, 14.928982, 26.061485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.747381, 14.963328, 25.889072>,  <12.475075, 15.020573, 25.601719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.747381, 14.963328, 25.889072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656044, 0.317124, 0.684864,
		-0.325828, -0.937524, 0.122001,
		0.680766, -0.143110, 0.718386,
		12.951611, 14.920396, 26.104588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.101559, 14.764888, 26.195349>,  <12.475075, 15.020573, 25.601719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.101559, 14.764888, 26.195349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.450122, 14.868396, 26.362053>,  <12.659260, 14.930500, 26.462074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.450122, 14.868396, 26.362053>,  <12.101559, 14.764888, 26.195349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.450122, 14.868396, 26.362053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469219, 0.191811, 0.861999,
		0.143115, -0.946705, 0.288562,
		0.871408, 0.258764, 0.416761,
		12.711544, 14.946027, 26.487082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.025553, 14.508619, 26.860968>,  <12.101559, 14.764888, 26.195349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.025553, 14.508619, 26.860968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.296051, 14.802805, 26.877872>,  <12.458350, 14.979316, 26.888016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.296051, 14.802805, 26.877872>,  <12.025553, 14.508619, 26.860968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.296051, 14.802805, 26.877872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433632, 0.351029, 0.829904,
		0.595530, -0.579544, 0.556303,
		0.676245, 0.735464, 0.042261,
		12.498924, 15.023444, 26.890551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.998172, 14.580617, 27.643810>,  <12.025553, 14.508619, 26.860968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.998172, 14.580617, 27.643810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.165725, 14.904744, 27.479897>,  <12.266256, 15.099220, 27.381548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.165725, 14.904744, 27.479897>,  <11.998172, 14.580617, 27.643810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.165725, 14.904744, 27.479897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409706, 0.571396, 0.711089,
		0.810358, -0.129971, 0.571339,
		0.418881, 0.810317, -0.409785,
		12.291389, 15.147840, 27.356960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.421334, 14.951289, 28.170452>,  <11.998172, 14.580617, 27.643810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.421334, 14.951289, 28.170452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.314214, 15.218954, 27.893179>,  <12.249942, 15.379553, 27.726814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.314214, 15.218954, 27.893179>,  <12.421334, 14.951289, 28.170452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.314214, 15.218954, 27.893179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514203, 0.509168, 0.690177,
		0.814787, 0.541268, 0.207729,
		-0.267802, 0.669162, -0.693184,
		12.233873, 15.419703, 27.685225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.494200, 15.557673, 28.468342>,  <12.421334, 14.951289, 28.170452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.494200, 15.557673, 28.468342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.289961, 15.679294, 28.146635>,  <12.167418, 15.752266, 27.953611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.289961, 15.679294, 28.146635>,  <12.494200, 15.557673, 28.468342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.289961, 15.679294, 28.146635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703157, 0.390664, 0.594098,
		0.494834, 0.868869, 0.014324,
		-0.510598, 0.304052, -0.804265,
		12.136782, 15.770509, 27.905355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.576360, 16.264778, 28.159943>,  <12.494200, 15.557673, 28.468342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.576360, 16.264778, 28.159943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.791623, 16.540649, 27.966148>,  <12.920781, 16.706173, 27.849871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.791623, 16.540649, 27.966148>,  <12.576360, 16.264778, 28.159943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.791623, 16.540649, 27.966148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612455, 0.714898, 0.337372,
		0.579038, 0.115168, 0.807126,
		0.538158, 0.689679, -0.484488,
		12.953071, 16.747553, 27.820803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.518629, 16.979259, 28.141161>,  <12.576360, 16.264778, 28.159943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.518629, 16.979259, 28.141161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.724981, 17.130941, 28.448425>,  <12.848792, 17.221951, 28.632784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.724981, 17.130941, 28.448425>,  <12.518629, 16.979259, 28.141161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.724981, 17.130941, 28.448425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327887, 0.915814, -0.231892,
		-0.791428, -0.132242, 0.596786,
		0.515879, 0.379204, 0.768162,
		12.879745, 17.244703, 28.678873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.138496, 17.467329, 28.519098>,  <12.518629, 16.979259, 28.141161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.138496, 17.467329, 28.519098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.516852, 17.565676, 28.603800>,  <12.743866, 17.624683, 28.654621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.516852, 17.565676, 28.603800>,  <12.138496, 17.467329, 28.519098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.516852, 17.565676, 28.603800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180927, 0.941354, -0.284813,
		-0.269362, 0.231090, 0.934902,
		0.945891, 0.245867, 0.211755,
		12.800619, 17.639437, 28.667326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.380179, 18.033148, 28.675901>,  <12.138496, 17.467329, 28.519098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.380179, 18.033148, 28.675901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.640580, 18.336763, 28.678972>,  <12.796821, 18.518932, 28.680815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.640580, 18.336763, 28.678972>,  <12.380179, 18.033148, 28.675901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.640580, 18.336763, 28.678972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463300, -0.389304, -0.796113,
		-0.601290, 0.521828, -0.605100,
		0.651002, 0.759037, 0.007678,
		12.835880, 18.564474, 28.681276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.279257, 18.355101, 28.008837>,  <12.380179, 18.033148, 28.675901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.279257, 18.355101, 28.008837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.646261, 18.433672, 28.147161>,  <12.866464, 18.480816, 28.230156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.646261, 18.433672, 28.147161>,  <12.279257, 18.355101, 28.008837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.646261, 18.433672, 28.147161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392125, -0.301618, -0.869059,
		-0.066406, 0.932975, -0.353764,
		0.917512, 0.196430, 0.345814,
		12.921515, 18.492601, 28.250906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.647799, 18.711500, 27.506319>,  <12.279257, 18.355101, 28.008837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.647799, 18.711500, 27.506319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.934692, 18.529091, 27.717077>,  <13.106829, 18.419645, 27.843533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.934692, 18.529091, 27.717077>,  <12.647799, 18.711500, 27.506319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.934692, 18.529091, 27.717077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410022, -0.335195, -0.848249,
		0.563434, 0.824432, -0.053433,
		0.717234, -0.456023, 0.526895,
		13.149862, 18.392284, 27.875145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.187057, 18.672514, 26.980585>,  <12.647799, 18.711500, 27.506319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.187057, 18.672514, 26.980585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.327568, 18.461996, 27.290325>,  <13.411875, 18.335686, 27.476170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.327568, 18.461996, 27.290325>,  <13.187057, 18.672514, 26.980585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.327568, 18.461996, 27.290325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794397, -0.270175, -0.544002,
		0.495515, 0.806238, 0.323180,
		0.351280, -0.526295, 0.774349,
		13.432952, 18.304108, 27.522631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.923459, 18.890715, 27.066885>,  <13.187057, 18.672514, 26.980585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.923459, 18.890715, 27.066885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.908721, 18.534439, 27.248131>,  <13.899879, 18.320673, 27.356878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.908721, 18.534439, 27.248131>,  <13.923459, 18.890715, 27.066885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.908721, 18.534439, 27.248131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767799, -0.315451, -0.557652,
		0.639631, 0.327354, 0.695493,
		-0.036844, -0.890691, 0.453114,
		13.897668, 18.267231, 27.384066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.604706, 18.840218, 27.331312>,  <13.923459, 18.890715, 27.066885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.604706, 18.840218, 27.331312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.434353, 18.480293, 27.293438>,  <14.332141, 18.264339, 27.270714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.434353, 18.480293, 27.293438>,  <14.604706, 18.840218, 27.331312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.434353, 18.480293, 27.293438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780922, -0.312714, -0.540714,
		0.456930, -0.304223, 0.835861,
		-0.425883, -0.899810, -0.094686,
		14.306588, 18.210350, 27.265032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.139220, 18.284548, 27.449080>,  <14.604706, 18.840218, 27.331312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.139220, 18.284548, 27.449080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.854648, 18.085230, 27.250860>,  <14.683905, 17.965639, 27.131929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.854648, 18.085230, 27.250860>,  <15.139220, 18.284548, 27.449080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.854648, 18.085230, 27.250860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695330, -0.396876, -0.599170,
		0.101892, -0.770838, 0.628829,
		-0.711431, -0.498295, -0.495549,
		14.641218, 17.935741, 27.102196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.456173, 17.615555, 27.408531>,  <15.139220, 18.284548, 27.449080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.456173, 17.615555, 27.408531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.170099, 17.604776, 27.129164>,  <14.998455, 17.598310, 26.961544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.170099, 17.604776, 27.129164>,  <15.456173, 17.615555, 27.408531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.170099, 17.604776, 27.129164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610752, -0.509962, -0.605740,
		-0.339844, -0.859775, 0.381173,
		-0.715184, -0.026945, -0.698417,
		14.955544, 17.596693, 26.919640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.361112, 16.920444, 27.194286>,  <15.456173, 17.615555, 27.408531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.361112, 16.920444, 27.194286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.239751, 17.156906, 26.895359>,  <15.166934, 17.298782, 26.716003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.239751, 17.156906, 26.895359>,  <15.361112, 16.920444, 27.194286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.239751, 17.156906, 26.895359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652010, -0.443129, -0.615240,
		-0.694860, -0.673924, -0.250992,
		-0.303403, 0.591154, -0.747318,
		15.148730, 17.334251, 26.671164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.190262, 16.532478, 26.575338>,  <15.361112, 16.920444, 27.194286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.190262, 16.532478, 26.575338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.241038, 16.892643, 26.408897>,  <15.271504, 17.108742, 26.309032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.241038, 16.892643, 26.408897>,  <15.190262, 16.532478, 26.575338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.241038, 16.892643, 26.408897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490538, -0.421594, -0.762647,
		-0.862124, -0.107302, -0.495205,
		0.126942, 0.900414, -0.416102,
		15.279120, 17.162767, 26.284067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.985086, 16.385349, 25.841101>,  <15.190262, 16.532478, 26.575338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.985086, 16.385349, 25.841101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.174108, 16.737789, 25.833544>,  <15.287520, 16.949253, 25.829010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.174108, 16.737789, 25.833544>,  <14.985086, 16.385349, 25.841101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.174108, 16.737789, 25.833544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382301, -0.224255, -0.896413,
		-0.794066, 0.416380, -0.442818,
		0.472552, 0.881100, -0.018891,
		15.315873, 17.002119, 25.827877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.845378, 16.759315, 25.236483>,  <14.985086, 16.385349, 25.841101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.845378, 16.759315, 25.236483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.192942, 16.916140, 25.357336>,  <15.401480, 17.010235, 25.429848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.192942, 16.916140, 25.357336>,  <14.845378, 16.759315, 25.236483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.192942, 16.916140, 25.357336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353366, -0.063918, -0.933299,
		-0.346597, 0.917717, -0.194080,
		0.868909, 0.392060, 0.302136,
		15.453614, 17.033758, 25.447977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.143821, 17.238525, 24.659668>,  <14.845378, 16.759315, 25.236483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.143821, 17.238525, 24.659668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.416442, 17.073902, 24.901695>,  <15.580014, 16.975128, 25.046911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.416442, 17.073902, 24.901695>,  <15.143821, 17.238525, 24.659668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.416442, 17.073902, 24.901695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547531, -0.261761, -0.794790,
		0.485486, 0.872983, 0.046937,
		0.681552, -0.411559, 0.605067,
		15.620908, 16.950434, 25.083216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.910877, 17.397278, 24.476452>,  <15.143821, 17.238525, 24.659668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.910877, 17.397278, 24.476452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.889103, 17.038885, 24.652748>,  <15.876039, 16.823849, 24.758526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.889103, 17.038885, 24.652748>,  <15.910877, 17.397278, 24.476452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.889103, 17.038885, 24.652748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416949, -0.421469, -0.805306,
		0.907298, 0.139929, 0.396522,
		-0.054436, -0.895982, 0.440741,
		15.872772, 16.770090, 24.784971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.458603, 17.191868, 24.271416>,  <15.910877, 17.397278, 24.476452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.458603, 17.191868, 24.271416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.211334, 16.887335, 24.349634>,  <16.062973, 16.704615, 24.396566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.211334, 16.887335, 24.349634>,  <16.458603, 17.191868, 24.271416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.211334, 16.887335, 24.349634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211697, -0.400833, -0.891357,
		0.757001, -0.509613, 0.408955,
		-0.618169, -0.761333, 0.195548,
		16.025883, 16.658936, 24.408298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.799414, 16.723843, 23.993742>,  <16.458603, 17.191868, 24.271416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.799414, 16.723843, 23.993742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.439102, 16.552280, 24.020977>,  <16.222916, 16.449343, 24.037319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.439102, 16.552280, 24.020977>,  <16.799414, 16.723843, 23.993742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.439102, 16.552280, 24.020977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203816, -0.555972, -0.805825,
		0.383480, -0.711993, 0.588226,
		-0.900779, -0.428908, 0.068089,
		16.168869, 16.423609, 24.041403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.911535, 15.985930, 24.018156>,  <16.799414, 16.723843, 23.993742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.911535, 15.985930, 24.018156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.528862, 15.997195, 23.902248>,  <16.299259, 16.003954, 23.832703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.528862, 15.997195, 23.902248>,  <16.911535, 15.985930, 24.018156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.528862, 15.997195, 23.902248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209940, -0.622844, -0.753652,
		-0.201706, -0.781839, 0.589951,
		-0.956682, 0.028162, -0.289770,
		16.241858, 16.005644, 23.815317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.667524, 15.284548, 23.901949>,  <16.911535, 15.985930, 24.018156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.667524, 15.284548, 23.901949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.425787, 15.505966, 23.672739>,  <16.280745, 15.638818, 23.535213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.425787, 15.505966, 23.672739>,  <16.667524, 15.284548, 23.901949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.425787, 15.505966, 23.672739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236542, -0.562135, -0.792498,
		-0.760802, -0.614484, 0.208784,
		-0.604341, 0.553547, -0.573024,
		16.244484, 15.672030, 23.500832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.235321, 14.690777, 23.628939>,  <16.667524, 15.284548, 23.901949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.235321, 14.690777, 23.628939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.198877, 15.007832, 23.387800>,  <16.177011, 15.198065, 23.243116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.198877, 15.007832, 23.387800>,  <16.235321, 14.690777, 23.628939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.198877, 15.007832, 23.387800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060543, -0.599837, -0.797829,
		-0.993999, -0.109189, 0.006663,
		-0.091111, 0.792637, -0.602848,
		16.171543, 15.245623, 23.206945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.980519, 14.370786, 23.003902>,  <16.235321, 14.690777, 23.628939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.980519, 14.370786, 23.003902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.083153, 14.742762, 22.898546>,  <16.144733, 14.965947, 22.835333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.083153, 14.742762, 22.898546>,  <15.980519, 14.370786, 23.003902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.083153, 14.742762, 22.898546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002142, -0.271968, -0.962304,
		-0.966519, 0.247477, -0.067791,
		0.256585, 0.929940, -0.263392,
		16.160128, 15.021744, 22.819529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.510920, 14.515475, 22.439175>,  <15.980519, 14.370786, 23.003902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.510920, 14.515475, 22.439175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.830048, 14.756062, 22.422579>,  <16.021524, 14.900414, 22.412621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.830048, 14.756062, 22.422579>,  <15.510920, 14.515475, 22.439175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.830048, 14.756062, 22.422579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179017, -0.302048, -0.936333,
		-0.575704, 0.739599, -0.348652,
		0.797821, 0.601465, -0.041490,
		16.069393, 14.936502, 22.410131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.508808, 14.706977, 21.668152>,  <15.510920, 14.515475, 22.439175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.508808, 14.706977, 21.668152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.870549, 14.815760, 21.799719>,  <16.087593, 14.881029, 21.878658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.870549, 14.815760, 21.799719>,  <15.508808, 14.706977, 21.668152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.870549, 14.815760, 21.799719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396668, -0.251227, -0.882915,
		-0.157482, 0.928937, -0.335074,
		0.904353, 0.271956, 0.328916,
		16.141855, 14.897346, 21.898394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.864858, 15.248344, 21.183453>,  <15.508808, 14.706977, 21.668152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.864858, 15.248344, 21.183453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.148663, 15.066249, 21.398617>,  <16.318945, 14.956992, 21.527716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.148663, 15.066249, 21.398617>,  <15.864858, 15.248344, 21.183453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.148663, 15.066249, 21.398617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473841, -0.256801, -0.842335,
		0.521599, 0.852533, 0.033507,
		0.709513, -0.455238, 0.537912,
		16.361517, 14.929677, 21.559990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.473995, 15.416195, 20.886934>,  <15.864858, 15.248344, 21.183453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.473995, 15.416195, 20.886934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.572054, 15.086366, 21.090887>,  <16.630890, 14.888468, 21.213259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.572054, 15.086366, 21.090887>,  <16.473995, 15.416195, 20.886934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.572054, 15.086366, 21.090887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556685, -0.310862, -0.770368,
		0.793728, 0.472699, 0.382821,
		0.245148, -0.824573, 0.509884,
		16.645597, 14.838994, 21.243853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.172663, 15.366153, 20.812712>,  <16.473995, 15.416195, 20.886934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.172663, 15.366153, 20.812712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.045265, 15.003450, 20.923243>,  <16.968826, 14.785829, 20.989561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.045265, 15.003450, 20.923243>,  <17.172663, 15.366153, 20.812712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.045265, 15.003450, 20.923243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598974, -0.418446, -0.682740,
		0.734706, -0.051934, 0.676394,
		-0.318492, -0.906756, 0.276328,
		16.949718, 14.731423, 21.006142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.723022, 14.908405, 20.866985>,  <17.172663, 15.366153, 20.812712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.723022, 14.908405, 20.866985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.456245, 14.611540, 20.840517>,  <17.296179, 14.433420, 20.824636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.456245, 14.611540, 20.840517>,  <17.723022, 14.908405, 20.866985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.456245, 14.611540, 20.840517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566772, -0.447659, -0.691644,
		0.483691, -0.498792, 0.719201,
		-0.666943, -0.742164, -0.066172,
		17.256163, 14.388890, 20.820665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.129076, 14.425561, 20.773413>,  <17.723022, 14.908405, 20.866985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.129076, 14.425561, 20.773413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.776962, 14.281992, 20.649300>,  <17.565695, 14.195850, 20.574831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.776962, 14.281992, 20.649300>,  <18.129076, 14.425561, 20.773413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.776962, 14.281992, 20.649300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463746, -0.512802, -0.722477,
		0.100199, -0.779878, 0.617860,
		-0.880284, -0.358922, -0.310283,
		17.512877, 14.174315, 20.556215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.172358, 13.722354, 20.636480>,  <18.129076, 14.425561, 20.773413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.172358, 13.722354, 20.636480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.869091, 13.843855, 20.405684>,  <17.687130, 13.916756, 20.267206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.869091, 13.843855, 20.405684>,  <18.172358, 13.722354, 20.636480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.869091, 13.843855, 20.405684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425360, -0.440282, -0.790709,
		-0.494219, -0.844918, 0.204603,
		-0.758167, 0.303753, -0.576990,
		17.641642, 13.934980, 20.232586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.082029, 13.159709, 20.236973>,  <18.172358, 13.722354, 20.636480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.082029, 13.159709, 20.236973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.900677, 13.456301, 20.039122>,  <17.791866, 13.634255, 19.920412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.900677, 13.456301, 20.039122>,  <18.082029, 13.159709, 20.236973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.900677, 13.456301, 20.039122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304622, -0.392622, -0.867787,
		-0.837647, -0.544111, -0.047864,
		-0.453380, 0.741479, -0.494627,
		17.764662, 13.678744, 19.890734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.860729, 12.800671, 19.599716>,  <18.082029, 13.159709, 20.236973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.860729, 12.800671, 19.599716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.832077, 13.196387, 19.548845>,  <17.814886, 13.433817, 19.518324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.832077, 13.196387, 19.548845>,  <17.860729, 12.800671, 19.599716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.832077, 13.196387, 19.548845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279211, -0.102518, -0.954742,
		-0.957555, -0.103896, -0.268878,
		-0.071629, 0.989291, -0.127176,
		17.810589, 13.493175, 19.510693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.588917, 12.802662, 18.975492>,  <17.860729, 12.800671, 19.599716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.588917, 12.802662, 18.975492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.737225, 13.168963, 19.037365>,  <17.826210, 13.388744, 19.074490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.737225, 13.168963, 19.037365>,  <17.588917, 12.802662, 18.975492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.737225, 13.168963, 19.037365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397561, -0.005976, -0.917556,
		-0.839330, 0.401698, -0.366283,
		0.370770, 0.915753, 0.154683,
		17.848455, 13.443689, 19.083771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.446115, 13.182446, 18.414284>,  <17.588917, 12.802662, 18.975492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.446115, 13.182446, 18.414284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.745012, 13.396605, 18.571754>,  <17.924351, 13.525102, 18.666237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.745012, 13.396605, 18.571754>,  <17.446115, 13.182446, 18.414284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.745012, 13.396605, 18.571754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402976, 0.106000, -0.909051,
		-0.528435, 0.837921, -0.136545,
		0.747240, 0.535399, 0.393676,
		17.969185, 13.557225, 18.689857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.479477, 13.829424, 18.038155>,  <17.446115, 13.182446, 18.414284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.479477, 13.829424, 18.038155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.836950, 13.756692, 18.202234>,  <18.051435, 13.713053, 18.300682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.836950, 13.756692, 18.202234>,  <17.479477, 13.829424, 18.038155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.836950, 13.756692, 18.202234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430478, 0.089604, -0.898142,
		0.126554, 0.979239, 0.158352,
		0.893685, -0.181830, 0.410201,
		18.105057, 13.702143, 18.325294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.941093, 14.376232, 17.717171>,  <17.479477, 13.829424, 18.038155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.941093, 14.376232, 17.717171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.208511, 14.121417, 17.870653>,  <18.368961, 13.968528, 17.962744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.208511, 14.121417, 17.870653>,  <17.941093, 14.376232, 17.717171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.208511, 14.121417, 17.870653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556789, 0.086732, -0.826113,
		0.492985, 0.765938, 0.412680,
		0.668544, -0.637038, 0.383708,
		18.409075, 13.930305, 17.985765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.533499, 14.742883, 17.506737>,  <17.941093, 14.376232, 17.717171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.533499, 14.742883, 17.506737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.647480, 14.382441, 17.637465>,  <18.715868, 14.166176, 17.715902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.647480, 14.382441, 17.637465>,  <18.533499, 14.742883, 17.506737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.647480, 14.382441, 17.637465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721562, -0.022795, -0.691974,
		0.630991, 0.433002, 0.643708,
		0.284953, -0.901105, 0.326822,
		18.732965, 14.112109, 17.735512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.177111, 14.710683, 17.810421>,  <18.533499, 14.742883, 17.506737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.177111, 14.710683, 17.810421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.108522, 14.341730, 17.671967>,  <19.067369, 14.120358, 17.588894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.108522, 14.341730, 17.671967>,  <19.177111, 14.710683, 17.810421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.108522, 14.341730, 17.671967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776879, 0.089463, -0.623262,
		0.605852, -0.375776, 0.701239,
		-0.171472, -0.922382, -0.346134,
		19.057081, 14.065016, 17.568127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.850443, 14.457019, 17.813936>,  <19.177111, 14.710683, 17.810421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.850443, 14.457019, 17.813936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.629005, 14.247307, 17.555119>,  <19.496143, 14.121480, 17.399828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.629005, 14.247307, 17.555119>,  <19.850443, 14.457019, 17.813936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.629005, 14.247307, 17.555119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751805, 0.019588, -0.659094,
		0.358224, -0.851321, 0.383313,
		-0.553593, -0.524280, -0.647044,
		19.462927, 14.090023, 17.361006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.288568, 13.979029, 17.445349>,  <19.850443, 14.457019, 17.813936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.288568, 13.979029, 17.445349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.957914, 14.026608, 17.225340>,  <19.759521, 14.055157, 17.093334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.957914, 14.026608, 17.225340>,  <20.288568, 13.979029, 17.445349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.957914, 14.026608, 17.225340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554804, 0.335813, -0.761198,
		0.094160, -0.934388, -0.343589,
		-0.826635, 0.118951, -0.550022,
		19.709925, 14.062293, 17.060333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.584742, 14.055765, 16.809149>,  <20.288568, 13.979029, 17.445349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.584742, 14.055765, 16.809149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.204830, 14.161083, 16.741512>,  <19.976883, 14.224274, 16.700930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.204830, 14.161083, 16.741512>,  <20.584742, 14.055765, 16.809149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.204830, 14.161083, 16.741512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283471, 0.495126, -0.821276,
		-0.132517, -0.827965, -0.544898,
		-0.949780, 0.263295, -0.169092,
		19.919895, 14.240072, 16.690784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.520288, 13.896093, 16.137327>,  <20.584742, 14.055765, 16.809149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.520288, 13.896093, 16.137327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.274473, 14.198542, 16.227327>,  <20.126984, 14.380011, 16.281326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.274473, 14.198542, 16.227327>,  <20.520288, 13.896093, 16.137327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.274473, 14.198542, 16.227327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377102, 0.532074, -0.758084,
		-0.692918, -0.381025, -0.612115,
		-0.614539, 0.756120, 0.224999,
		20.090111, 14.425378, 16.294827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.063782, 14.008421, 15.537436>,  <20.520288, 13.896093, 16.137327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.063782, 14.008421, 15.537436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.111513, 14.343102, 15.751234>,  <20.140152, 14.543911, 15.879514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.111513, 14.343102, 15.751234>,  <20.063782, 14.008421, 15.537436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.111513, 14.343102, 15.751234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416647, 0.446449, -0.791889,
		-0.901202, 0.317192, -0.295337,
		0.119328, 0.836704, 0.534498,
		20.147312, 14.594113, 15.911583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.695293, 14.699269, 15.278041>,  <20.063782, 14.008421, 15.537436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.695293, 14.699269, 15.278041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.045155, 14.695333, 15.471900>,  <20.255072, 14.692970, 15.588216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.045155, 14.695333, 15.471900>,  <19.695293, 14.699269, 15.278041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.045155, 14.695333, 15.471900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468220, 0.275996, -0.839402,
		-0.125499, 0.961108, 0.246009,
		0.874654, -0.009842, 0.484647,
		20.307550, 14.692380, 15.617294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.158112, 15.338455, 15.143600>,  <19.695293, 14.699269, 15.278041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.158112, 15.338455, 15.143600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.379980, 15.016770, 15.228998>,  <20.513102, 14.823759, 15.280237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.379980, 15.016770, 15.228998>,  <20.158112, 15.338455, 15.143600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.379980, 15.016770, 15.228998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505562, 0.121942, -0.854129,
		0.660868, 0.581697, 0.474218,
		0.554672, -0.804213, 0.213496,
		20.546381, 14.775506, 15.293047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.841005, 15.595446, 15.106926>,  <20.158112, 15.338455, 15.143600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.841005, 15.595446, 15.106926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.858109, 15.203407, 15.029379>,  <20.868370, 14.968184, 14.982850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.858109, 15.203407, 15.029379>,  <20.841005, 15.595446, 15.106926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.858109, 15.203407, 15.029379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378448, 0.195474, -0.904747,
		0.924634, -0.034685, 0.379273,
		0.042757, -0.980095, -0.193868,
		20.870935, 14.909379, 14.971218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.396906, 16.044418, 14.651777>,  <20.841005, 15.595446, 15.106926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.396906, 16.044418, 14.651777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.614086, 15.839313, 14.385762>,  <21.744394, 15.716249, 14.226153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.614086, 15.839313, 14.385762>,  <21.396906, 16.044418, 14.651777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.614086, 15.839313, 14.385762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424258, 0.850928, -0.309720,
		0.724714, -0.113985, 0.679557,
		0.542951, -0.512766, -0.665038,
		21.776972, 15.685483, 14.186251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.117176, 16.195818, 14.728168>,  <21.396906, 16.044418, 14.651777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.117176, 16.195818, 14.728168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.032988, 16.098009, 14.349558>,  <21.982473, 16.039324, 14.122392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.032988, 16.098009, 14.349558>,  <22.117176, 16.195818, 14.728168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.032988, 16.098009, 14.349558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314845, 0.899673, -0.302427,
		0.925513, -0.361661, -0.112371,
		-0.210473, -0.244521, -0.946526,
		21.969845, 16.024652, 14.065600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.750210, 16.098738, 14.280703>,  <22.117176, 16.195818, 14.728168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.750210, 16.098738, 14.280703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.420942, 16.228626, 14.094393>,  <22.223381, 16.306561, 13.982607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.420942, 16.228626, 14.094393>,  <22.750210, 16.098738, 14.280703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.420942, 16.228626, 14.094393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462368, 0.859486, -0.217943,
		0.329556, -0.394764, -0.857645,
		-0.823170, 0.324723, -0.465775,
		22.173992, 16.326042, 13.954660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.908340, 16.515095, 13.711644>,  <22.750210, 16.098738, 14.280703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.908340, 16.515095, 13.711644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.526726, 16.630831, 13.742883>,  <22.297758, 16.700272, 13.761625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.526726, 16.630831, 13.742883>,  <22.908340, 16.515095, 13.711644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.526726, 16.630831, 13.742883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284477, 0.956286, -0.067742,
		-0.094282, -0.042412, -0.994642,
		-0.954035, 0.289339, 0.078096,
		22.240515, 16.717632, 13.766312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.852875, 16.980730, 13.191512>,  <22.908340, 16.515095, 13.711644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.852875, 16.980730, 13.191512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.539898, 17.064503, 13.426093>,  <22.352112, 17.114767, 13.566841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.539898, 17.064503, 13.426093>,  <22.852875, 16.980730, 13.191512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.539898, 17.064503, 13.426093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042322, 0.957455, -0.285461,
		-0.621286, -0.198536, -0.758015,
		-0.782440, 0.209433, 0.586452,
		22.305166, 17.127333, 13.602029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.297169, 17.280781, 12.772606>,  <22.852875, 16.980730, 13.191512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.297169, 17.280781, 12.772606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.230139, 17.389790, 13.151584>,  <22.189920, 17.455194, 13.378970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.230139, 17.389790, 13.151584>,  <22.297169, 17.280781, 12.772606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.230139, 17.389790, 13.151584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134187, 0.958395, -0.251938,
		-0.976685, 0.084916, -0.197171,
		-0.167574, 0.272522, 0.947444,
		22.179867, 17.471546, 13.435817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.813112, 17.844961, 12.710981>,  <22.297169, 17.280781, 12.772606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.813112, 17.844961, 12.710981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.965967, 17.874481, 13.079443>,  <22.057680, 17.892193, 13.300520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.965967, 17.874481, 13.079443>,  <21.813112, 17.844961, 12.710981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.965967, 17.874481, 13.079443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184063, 0.970754, -0.154134,
		-0.905590, 0.228450, 0.357375,
		0.382136, 0.073802, 0.921154,
		22.080608, 17.896622, 13.355789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.562710, 18.535915, 13.096859>,  <21.813112, 17.844961, 12.710981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.562710, 18.535915, 13.096859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.897142, 18.441839, 13.295112>,  <22.097803, 18.385393, 13.414063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.897142, 18.441839, 13.295112>,  <21.562710, 18.535915, 13.096859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.897142, 18.441839, 13.295112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283631, 0.958644, -0.023551,
		-0.469595, 0.160267, 0.868214,
		0.836083, -0.235193, 0.495632,
		22.147966, 18.371281, 13.443801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.632998, 19.081381, 13.674741>,  <21.562710, 18.535915, 13.096859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.632998, 19.081381, 13.674741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.000933, 18.933508, 13.622224>,  <22.221693, 18.844784, 13.590714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.000933, 18.933508, 13.622224>,  <21.632998, 19.081381, 13.674741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.000933, 18.933508, 13.622224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351263, 0.925142, -0.143968,
		0.174685, 0.086310, 0.980834,
		0.919837, -0.369680, -0.131291,
		22.276884, 18.822603, 13.582836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.050846, 19.490757, 14.094634>,  <21.632998, 19.081381, 13.674741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.050846, 19.490757, 14.094634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.301838, 19.324991, 13.830957>,  <22.452433, 19.225533, 13.672751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.301838, 19.324991, 13.830957>,  <22.050846, 19.490757, 14.094634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.301838, 19.324991, 13.830957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443647, 0.886020, -0.134709,
		0.639882, -0.207921, 0.739811,
		0.627478, -0.414412, -0.659192,
		22.490082, 19.200668, 13.633200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.591581, 19.541107, 14.435843>,  <22.050846, 19.490757, 14.094634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.591581, 19.541107, 14.435843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.729933, 19.497620, 14.063059>,  <22.812943, 19.471527, 13.839389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.729933, 19.497620, 14.063059>,  <22.591581, 19.541107, 14.435843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.729933, 19.497620, 14.063059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604636, 0.785356, 0.132781,
		0.717485, -0.609423, 0.337371,
		0.345877, -0.108719, -0.931960,
		22.833696, 19.465004, 13.783471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.355545, 19.623194, 14.506208>,  <22.591581, 19.541107, 14.435843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.355545, 19.623194, 14.506208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.264542, 19.675797, 14.120266>,  <23.209940, 19.707357, 13.888700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.264542, 19.675797, 14.120266>,  <23.355545, 19.623194, 14.506208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.264542, 19.675797, 14.120266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752551, 0.652559, -0.088509,
		0.617985, -0.746239, -0.247429,
		-0.227511, 0.131506, -0.964855,
		23.196289, 19.715248, 13.830810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.991592, 19.626886, 14.095812>,  <23.355545, 19.623194, 14.506208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.991592, 19.626886, 14.095812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.740261, 19.822643, 13.853920>,  <23.589462, 19.940098, 13.708785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.740261, 19.822643, 13.853920>,  <23.991592, 19.626886, 14.095812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.740261, 19.822643, 13.853920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755490, 0.569285, -0.324267,
		0.185571, -0.660614, -0.727428,
		-0.628330, 0.489391, -0.604730,
		23.551762, 19.969460, 13.672501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.365026, 19.718788, 13.511354>,  <23.991592, 19.626886, 14.095812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.365026, 19.718788, 13.511354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.060102, 19.976910, 13.491465>,  <23.877148, 20.131783, 13.479531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.060102, 19.976910, 13.491465>,  <24.365026, 19.718788, 13.511354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.060102, 19.976910, 13.491465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598630, 0.673796, -0.433175,
		-0.246025, -0.359979, -0.899937,
		-0.762308, 0.645302, -0.049724,
		23.831409, 20.170500, 13.476547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.412331, 20.057375, 12.823640>,  <24.365026, 19.718788, 13.511354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.412331, 20.057375, 12.823640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.176456, 20.316868, 13.016065>,  <24.034933, 20.472563, 13.131519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.176456, 20.316868, 13.016065>,  <24.412331, 20.057375, 12.823640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.176456, 20.316868, 13.016065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500855, 0.761014, -0.412313,
		-0.633575, -0.002192, -0.773678,
		-0.589684, 0.648732, 0.481061,
		23.999552, 20.511488, 13.160383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.131981, 20.635435, 12.340306>,  <24.412331, 20.057375, 12.823640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.131981, 20.635435, 12.340306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.091812, 20.796743, 12.704128>,  <24.067711, 20.893528, 12.922421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.091812, 20.796743, 12.704128>,  <24.131981, 20.635435, 12.340306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.091812, 20.796743, 12.704128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402251, 0.852587, -0.333601,
		-0.910005, 0.332368, -0.247834,
		-0.100421, 0.403270, 0.909554,
		24.061686, 20.917725, 12.976995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.881193, 21.281946, 12.159463>,  <24.131981, 20.635435, 12.340306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.881193, 21.281946, 12.159463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.041300, 21.303970, 12.525360>,  <24.137363, 21.317184, 12.744899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.041300, 21.303970, 12.525360>,  <23.881193, 21.281946, 12.159463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.041300, 21.303970, 12.525360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630041, 0.708319, -0.318326,
		-0.665458, 0.703741, 0.248826,
		0.400267, 0.055062, 0.914743,
		24.161381, 21.320488, 12.799783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.975737, 22.049395, 12.289061>,  <23.881193, 21.281946, 12.159463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.975737, 22.049395, 12.289061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.212847, 21.845215, 12.538239>,  <24.355112, 21.722708, 12.687745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.212847, 21.845215, 12.538239>,  <23.975737, 22.049395, 12.289061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.212847, 21.845215, 12.538239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733507, 0.661564, -0.155886,
		-0.332546, 0.549340, 0.766576,
		0.592773, -0.510450, 0.622945,
		24.390678, 21.692080, 12.725122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.250740, 22.500002, 12.721579>,  <23.975737, 22.049395, 12.289061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.250740, 22.500002, 12.721579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.504246, 22.194912, 12.773095>,  <24.656349, 22.011858, 12.804005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.504246, 22.194912, 12.773095>,  <24.250740, 22.500002, 12.721579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.504246, 22.194912, 12.773095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773504, 0.626127, -0.098270,
		-0.005687, 0.161901, 0.986791,
		0.633766, -0.762727, 0.128791,
		24.694376, 21.966093, 12.811732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.764385, 22.824892, 13.171730>,  <24.250740, 22.500002, 12.721579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.764385, 22.824892, 13.171730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.930447, 22.498617, 13.010581>,  <25.030083, 22.302853, 12.913892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.930447, 22.498617, 13.010581>,  <24.764385, 22.824892, 13.171730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.930447, 22.498617, 13.010581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841270, 0.512767, -0.171272,
		0.346283, -0.267820, 0.899089,
		0.415153, -0.815685, -0.402872,
		25.054993, 22.253912, 12.889719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.371941, 22.792952, 13.516392>,  <24.764385, 22.824892, 13.171730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.371941, 22.792952, 13.516392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.447468, 22.582603, 13.184654>,  <25.492785, 22.456394, 12.985612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.447468, 22.582603, 13.184654>,  <25.371941, 22.792952, 13.516392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.447468, 22.582603, 13.184654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867204, 0.485551, -0.110442,
		0.460767, -0.698357, 0.547715,
		0.188816, -0.525868, -0.829344,
		25.504112, 22.424843, 12.935851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.037302, 22.515148, 13.598765>,  <25.371941, 22.792952, 13.516392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.037302, 22.515148, 13.598765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.960943, 22.495134, 13.206632>,  <25.915129, 22.483126, 12.971352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.960943, 22.495134, 13.206632>,  <26.037302, 22.515148, 13.598765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.960943, 22.495134, 13.206632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901936, 0.385193, -0.195290,
		0.387390, -0.921479, -0.028403,
		-0.190896, -0.050036, -0.980334,
		25.903673, 22.480124, 12.912532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.569319, 22.259842, 13.311760>,  <26.037302, 22.515148, 13.598765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.569319, 22.259842, 13.311760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.433649, 22.407339, 12.965583>,  <26.352247, 22.495838, 12.757876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.433649, 22.407339, 12.965583>,  <26.569319, 22.259842, 13.311760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.433649, 22.407339, 12.965583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893528, 0.414016, -0.173777,
		0.294228, -0.832237, -0.469906,
		-0.339172, 0.368744, -0.865442,
		26.331898, 22.517962, 12.705950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.048456, 22.076473, 12.724741>,  <26.569319, 22.259842, 13.311760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.048456, 22.076473, 12.724741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.841808, 22.395296, 12.599648>,  <26.717819, 22.586590, 12.524591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.841808, 22.395296, 12.599648>,  <27.048456, 22.076473, 12.724741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.841808, 22.395296, 12.599648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851023, 0.437841, -0.289921,
		-0.094156, -0.415923, -0.904512,
		-0.516618, 0.797059, -0.312735,
		26.686823, 22.634415, 12.505827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.266870, 22.151346, 12.084375>,  <27.048456, 22.076473, 12.724741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.266870, 22.151346, 12.084375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.136189, 22.508606, 12.208016>,  <27.057779, 22.722961, 12.282201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.136189, 22.508606, 12.208016>,  <27.266870, 22.151346, 12.084375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.136189, 22.508606, 12.208016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855517, 0.418466, -0.304922,
		-0.401691, 0.164823, -0.900821,
		-0.326705, 0.893151, 0.309103,
		27.038177, 22.776552, 12.300747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.406607, 22.621428, 11.518739>,  <27.266870, 22.151346, 12.084375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.406607, 22.621428, 11.518739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.394609, 22.855968, 11.842540>,  <27.387411, 22.996693, 12.036820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.394609, 22.855968, 11.842540>,  <27.406607, 22.621428, 11.518739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.394609, 22.855968, 11.842540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836839, 0.457624, -0.300467,
		-0.546627, 0.668411, -0.504407,
		-0.029993, 0.586351, 0.809502,
		27.385611, 23.031874, 12.085390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.636122, 21.945639, 11.150887>,  <27.406607, 22.621428, 11.518739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.636122, 21.945639, 11.150887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.869452, 22.265959, 11.096557>,  <28.009449, 22.458151, 11.063958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.869452, 22.265959, 11.096557>,  <27.636122, 21.945639, 11.150887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.869452, 22.265959, 11.096557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589384, 0.302252, -0.749180,
		-0.558889, 0.517071, 0.648290,
		0.583326, 0.800800, -0.135828,
		28.044449, 22.506199, 11.055808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.060846, 21.734510, 10.748980>,  <27.636122, 21.945639, 11.150887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.060846, 21.734510, 10.748980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.929749, 21.544432, 10.422355>,  <26.851089, 21.430386, 10.226380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.929749, 21.544432, 10.422355>,  <27.060846, 21.734510, 10.748980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.929749, 21.544432, 10.422355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625911, -0.756624, 0.189090,
		-0.707685, -0.449121, 0.545410,
		-0.327746, -0.475195, -0.816561,
		26.831425, 21.401873, 10.177386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.686787, 21.093857, 10.805037>,  <27.060846, 21.734510, 10.748980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.686787, 21.093857, 10.805037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.893665, 21.081400, 10.462917>,  <27.017792, 21.073925, 10.257645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.893665, 21.081400, 10.462917>,  <26.686787, 21.093857, 10.805037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.893665, 21.081400, 10.462917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458633, -0.833657, 0.307689,
		-0.722610, -0.551404, -0.416879,
		0.517195, -0.031144, -0.855301,
		27.048824, 21.072056, 10.206327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.576454, 20.453548, 10.383804>,  <26.686787, 21.093857, 10.805037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.576454, 20.453548, 10.383804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.936890, 20.607611, 10.304108>,  <27.153151, 20.700048, 10.256289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.936890, 20.607611, 10.304108>,  <26.576454, 20.453548, 10.383804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.936890, 20.607611, 10.304108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431882, -0.838426, 0.332445,
		-0.039006, -0.385610, -0.921837,
		0.901086, 0.385157, -0.199241,
		27.207216, 20.723158, 10.244335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.160862, 20.013023, 9.918612>,  <26.576454, 20.453548, 10.383804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.160862, 20.013023, 9.918612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.344826, 20.237551, 10.193829>,  <27.455204, 20.372267, 10.358959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.344826, 20.237551, 10.193829>,  <27.160862, 20.013023, 9.918612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.344826, 20.237551, 10.193829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590650, -0.771960, 0.234969,
		0.663034, 0.298328, -0.686576,
		0.459911, 0.561318, 0.688043,
		27.482800, 20.405947, 10.400242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.990973, 20.021650, 9.942488>,  <27.160862, 20.013023, 9.918612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.990973, 20.021650, 9.942488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.874500, 20.075651, 10.321325>,  <27.804617, 20.108051, 10.548628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.874500, 20.075651, 10.321325>,  <27.990973, 20.021650, 9.942488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.874500, 20.075651, 10.321325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577285, -0.764638, 0.286480,
		0.762860, 0.630161, 0.144713,
		-0.291181, 0.135003, 0.947094,
		27.787146, 20.116152, 10.605453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.224417, 19.635351, 9.313959>,  <27.990973, 20.021650, 9.942488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.224417, 19.635351, 9.313959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.263794, 19.238071, 9.289087>,  <28.287420, 18.999704, 9.274164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.263794, 19.238071, 9.289087>,  <28.224417, 19.635351, 9.313959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.263794, 19.238071, 9.289087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889062, -0.115847, 0.442886,
		-0.447077, 0.011684, -0.894419,
		0.098441, -0.993198, -0.062180,
		28.293325, 18.940111, 9.270433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.610865, 19.427996, 9.526651>,  <28.224417, 19.635351, 9.313959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.610865, 19.427996, 9.526651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.792978, 19.072062, 9.538734>,  <27.902246, 18.858501, 9.545984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.792978, 19.072062, 9.538734>,  <27.610865, 19.427996, 9.526651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.792978, 19.072062, 9.538734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751864, -0.366075, 0.548351,
		-0.476884, -0.272365, -0.835702,
		0.455282, -0.889835, 0.030206,
		27.929564, 18.805111, 9.547796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.099756, 18.859240, 9.550301>,  <27.610865, 19.427996, 9.526651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.099756, 18.859240, 9.550301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.426340, 18.678059, 9.693537>,  <27.622290, 18.569349, 9.779478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.426340, 18.678059, 9.693537>,  <27.099756, 18.859240, 9.550301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.426340, 18.678059, 9.693537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577359, -0.632808, 0.515956,
		-0.007101, -0.628004, -0.778178,
		0.816460, -0.452952, 0.358090,
		27.671278, 18.542173, 9.800963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.099920, 18.077785, 9.346208>,  <27.099756, 18.859240, 9.550301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.099920, 18.077785, 9.346208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.319122, 18.131786, 9.676411>,  <27.450644, 18.164186, 9.874533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.319122, 18.131786, 9.676411>,  <27.099920, 18.077785, 9.346208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.319122, 18.131786, 9.676411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571185, -0.660588, 0.487207,
		0.611096, -0.738510, -0.284894,
		0.548005, 0.135003, 0.825509,
		27.483524, 18.172287, 9.924064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.867685, 17.474903, 9.689609>,  <27.099920, 18.077785, 9.346208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.867685, 17.474903, 9.689609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.088131, 17.665525, 9.963593>,  <27.220398, 17.779900, 10.127983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.088131, 17.665525, 9.963593>,  <26.867685, 17.474903, 9.689609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.088131, 17.665525, 9.963593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557517, -0.400461, 0.727190,
		0.620846, -0.782640, 0.044989,
		0.551112, 0.476556, 0.684960,
		27.253464, 17.808493, 10.169081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.192389, 16.985718, 10.190529>,  <26.867685, 17.474903, 9.689609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.192389, 16.985718, 10.190529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.200069, 17.337748, 10.380309>,  <27.204678, 17.548965, 10.494178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.200069, 17.337748, 10.380309>,  <27.192389, 16.985718, 10.190529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.200069, 17.337748, 10.380309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400098, -0.428124, 0.810328,
		0.916271, -0.205386, 0.343895,
		0.019200, 0.880072, 0.474452,
		27.205830, 17.601768, 10.522645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.445036, 16.736860, 10.789622>,  <27.192389, 16.985718, 10.190529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.445036, 16.736860, 10.789622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.261309, 17.085995, 10.855577>,  <27.151073, 17.295475, 10.895150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.261309, 17.085995, 10.855577>,  <27.445036, 16.736860, 10.789622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.261309, 17.085995, 10.855577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570826, -0.432261, 0.698075,
		0.680578, 0.226515, 0.696781,
		-0.459316, 0.872835, 0.164887,
		27.123514, 17.347845, 10.905044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.483767, 17.050627, 11.495429>,  <27.445036, 16.736860, 10.789622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.483767, 17.050627, 11.495429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.143847, 17.194054, 11.340886>,  <26.939896, 17.280109, 11.248160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.143847, 17.194054, 11.340886>,  <27.483767, 17.050627, 11.495429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.143847, 17.194054, 11.340886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520411, -0.454276, 0.723052,
		0.083749, 0.815514, 0.572645,
		-0.849799, 0.358566, -0.386358,
		26.888906, 17.301624, 11.224978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.083912, 16.880106, 11.946796>,  <27.483767, 17.050627, 11.495429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.083912, 16.880106, 11.946796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.807489, 16.984688, 11.677254>,  <26.641636, 17.047436, 11.515528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.807489, 16.984688, 11.677254>,  <27.083912, 16.880106, 11.946796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.807489, 16.984688, 11.677254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700394, -0.472556, 0.534921,
		-0.178578, 0.841625, 0.509683,
		-0.691056, 0.261453, -0.673857,
		26.600172, 17.063124, 11.475097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.556028, 17.232719, 12.331541>,  <27.083912, 16.880106, 11.946796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.556028, 17.232719, 12.331541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.378466, 17.117205, 11.992235>,  <26.271929, 17.047895, 11.788651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.378466, 17.117205, 11.992235>,  <26.556028, 17.232719, 12.331541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.378466, 17.117205, 11.992235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789598, -0.321501, 0.522658,
		-0.423654, 0.901798, -0.085308,
		-0.443905, -0.288785, -0.848264,
		26.245295, 17.030569, 11.737756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.848167, 17.456242, 12.415771>,  <26.556028, 17.232719, 12.331541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.848167, 17.456242, 12.415771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.824116, 17.166981, 12.140546>,  <25.809685, 16.993423, 11.975410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.824116, 17.166981, 12.140546>,  <25.848167, 17.456242, 12.415771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.824116, 17.166981, 12.140546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793479, -0.383589, 0.472493,
		-0.605620, 0.574377, -0.550741,
		-0.060130, -0.723153, -0.688065,
		25.806076, 16.950035, 11.934126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.101301, 17.438997, 12.199143>,  <25.848167, 17.456242, 12.415771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.101301, 17.438997, 12.199143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.269537, 17.084682, 12.120670>,  <25.370478, 16.872093, 12.073586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.269537, 17.084682, 12.120670>,  <25.101301, 17.438997, 12.199143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.269537, 17.084682, 12.120670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711582, -0.456217, 0.534338,
		-0.562811, -0.085137, -0.822190,
		0.420589, -0.885786, -0.196182,
		25.395714, 16.818947, 12.061815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.532446, 16.971247, 12.096836>,  <25.101301, 17.438997, 12.199143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.532446, 16.971247, 12.096836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.808838, 16.687042, 12.150087>,  <24.974672, 16.516520, 12.182038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.808838, 16.687042, 12.150087>,  <24.532446, 16.971247, 12.096836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.808838, 16.687042, 12.150087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698066, -0.608022, 0.378171,
		-0.187749, -0.354241, -0.916114,
		0.690981, -0.710509, 0.133128,
		25.016132, 16.473890, 12.190025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.138430, 16.418104, 12.037089>,  <24.532446, 16.971247, 12.096836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.138430, 16.418104, 12.037089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.480419, 16.292604, 12.202296>,  <24.685612, 16.217304, 12.301420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.480419, 16.292604, 12.202296>,  <24.138430, 16.418104, 12.037089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.480419, 16.292604, 12.202296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518401, -0.542705, 0.660857,
		0.016803, -0.779123, -0.626645,
		0.854973, -0.313749, 0.413018,
		24.736912, 16.198481, 12.326201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.025730, 15.723221, 12.173538>,  <24.138430, 16.418104, 12.037089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.025730, 15.723221, 12.173538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.312124, 15.836092, 12.428956>,  <24.483961, 15.903815, 12.582207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.312124, 15.836092, 12.428956>,  <24.025730, 15.723221, 12.173538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.312124, 15.836092, 12.428956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404294, -0.578075, 0.708784,
		0.569130, -0.765640, -0.299811,
		0.715987, 0.282179, 0.638544,
		24.526920, 15.920746, 12.620520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.262428, 15.025490, 12.402548>,  <24.025730, 15.723221, 12.173538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.262428, 15.025490, 12.402548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.351992, 15.335186, 12.639332>,  <24.405729, 15.521004, 12.781403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.351992, 15.335186, 12.639332>,  <24.262428, 15.025490, 12.402548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.351992, 15.335186, 12.639332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331662, -0.510599, 0.793277,
		0.916442, -0.373951, 0.142460,
		0.223907, 0.774241, 0.591960,
		24.419163, 15.567458, 12.816919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.698057, 14.679630, 12.901713>,  <24.262428, 15.025490, 12.402548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.698057, 14.679630, 12.901713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.542231, 15.016233, 13.051435>,  <24.448734, 15.218195, 13.141268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.542231, 15.016233, 13.051435>,  <24.698057, 14.679630, 12.901713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.542231, 15.016233, 13.051435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282497, -0.495998, 0.821086,
		0.876604, 0.214127, 0.430947,
		-0.389565, 0.841508, 0.374304,
		24.425362, 15.268686, 13.163726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.882650, 14.635080, 13.572296>,  <24.698057, 14.679630, 12.901713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.882650, 14.635080, 13.572296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.578606, 14.894750, 13.560972>,  <24.396179, 15.050551, 13.554178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.578606, 14.894750, 13.560972>,  <24.882650, 14.635080, 13.572296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.578606, 14.894750, 13.560972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382458, -0.411747, 0.827157,
		0.525312, 0.639561, 0.561257,
		-0.760114, 0.649173, -0.028310,
		24.350571, 15.089501, 13.552480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.797232, 14.851064, 14.282024>,  <24.882650, 14.635080, 13.572296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.797232, 14.851064, 14.282024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.447830, 14.921919, 14.100647>,  <24.238190, 14.964432, 13.991820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.447830, 14.921919, 14.100647>,  <24.797232, 14.851064, 14.282024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.447830, 14.921919, 14.100647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486777, -0.329278, 0.809088,
		-0.005989, 0.927469, 0.373852,
		-0.873506, 0.177137, -0.453443,
		24.185778, 14.975060, 13.964614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.379848, 14.978482, 14.800498>,  <24.797232, 14.851064, 14.282024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.379848, 14.978482, 14.800498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.123280, 14.882178, 14.509126>,  <23.969337, 14.824396, 14.334303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.123280, 14.882178, 14.509126>,  <24.379848, 14.978482, 14.800498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.123280, 14.882178, 14.509126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579500, -0.470160, 0.665679,
		-0.502747, 0.849108, 0.162052,
		-0.641424, -0.240759, -0.728430,
		23.930853, 14.809951, 14.290597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.369356, 15.636073, 14.731750>,  <24.379848, 14.978482, 14.800498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.369356, 15.636073, 14.731750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.487106, 15.719181, 15.104883>,  <24.557756, 15.769046, 15.328763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.487106, 15.719181, 15.104883>,  <24.369356, 15.636073, 14.731750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.487106, 15.719181, 15.104883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710509, -0.700373, -0.068222,
		0.639156, 0.682869, -0.353793,
		0.294374, 0.207769, 0.932832,
		24.575418, 15.781512, 15.384733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.110096, 15.952667, 14.747046>,  <24.369356, 15.636073, 14.731750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.110096, 15.952667, 14.747046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.975382, 15.723248, 15.045741>,  <24.894554, 15.585596, 15.224958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.975382, 15.723248, 15.045741>,  <25.110096, 15.952667, 14.747046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.975382, 15.723248, 15.045741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845399, -0.533380, -0.028392,
		0.414579, 0.621729, 0.664513,
		-0.336786, -0.573549, 0.746737,
		24.874346, 15.551183, 15.269762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.344894, 16.145149, 15.399899>,  <25.110096, 15.952667, 14.747046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.344894, 16.145149, 15.399899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.241302, 15.767491, 15.318390>,  <25.179148, 15.540897, 15.269485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.241302, 15.767491, 15.318390>,  <25.344894, 16.145149, 15.399899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.241302, 15.767491, 15.318390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965882, -0.253340, -0.053765,
		-0.000861, -0.210743, 0.977541,
		-0.258981, -0.944143, -0.203771,
		25.163609, 15.484248, 15.257258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.659800, 15.714003, 15.899164>,  <25.344894, 16.145149, 15.399899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.659800, 15.714003, 15.899164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.616638, 15.526671, 15.548388>,  <25.590742, 15.414272, 15.337922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.616638, 15.526671, 15.548388>,  <25.659800, 15.714003, 15.899164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.616638, 15.526671, 15.548388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956366, -0.289808, 0.037095,
		-0.271517, -0.834673, 0.479165,
		-0.107903, -0.468329, -0.876941,
		25.584267, 15.386173, 15.285305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.261179, 15.303864, 15.934539>,  <25.659800, 15.714003, 15.899164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.261179, 15.303864, 15.934539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.084446, 15.241997, 15.581074>,  <25.978405, 15.204877, 15.368995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.084446, 15.241997, 15.581074>,  <26.261179, 15.303864, 15.934539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.084446, 15.241997, 15.581074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897041, -0.087146, -0.433270,
		-0.009994, -0.984116, 0.177248,
		-0.441834, -0.154668, -0.883663,
		25.951895, 15.195597, 15.315975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.377016, 14.730331, 15.509921>,  <26.261179, 15.303864, 15.934539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.377016, 14.730331, 15.509921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.282101, 15.007430, 15.237511>,  <26.225151, 15.173689, 15.074064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.282101, 15.007430, 15.237511>,  <26.377016, 14.730331, 15.509921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.282101, 15.007430, 15.237511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894333, -0.117934, -0.431577,
		-0.379290, -0.711474, -0.591561,
		-0.237291, 0.692746, -0.681026,
		26.210913, 15.215254, 15.033203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.668722, 14.886444, 14.841349>,  <26.377016, 14.730331, 15.509921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.668722, 14.886444, 14.841349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.845675, 14.991232, 15.184433>,  <26.951847, 15.054105, 15.390284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.845675, 14.991232, 15.184433>,  <26.668722, 14.886444, 14.841349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.845675, 14.991232, 15.184433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297998, -0.859106, 0.416094,
		0.845870, -0.439669, -0.301986,
		0.442382, 0.261970, 0.857712,
		26.978390, 15.069823, 15.441747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<11.911254, 19.177702, 22.148211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.558813, 18.989796, 22.126364>,  <11.347349, 18.877052, 22.113256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.558813, 18.989796, 22.126364>,  <11.911254, 19.177702, 22.148211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.558813, 18.989796, 22.126364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304891, -0.475956, -0.824929,
		0.361527, -0.743497, 0.562592,
		-0.881101, -0.469763, -0.054615,
		11.294482, 18.848867, 22.109980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.087355, 18.567892, 22.030838>,  <11.911254, 19.177702, 22.148211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.087355, 18.567892, 22.030838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.704951, 18.586060, 21.914917>,  <11.475510, 18.596960, 21.845366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.704951, 18.586060, 21.914917>,  <12.087355, 18.567892, 22.030838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.704951, 18.586060, 21.914917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248664, -0.398598, -0.882772,
		-0.155607, -0.916000, 0.369769,
		-0.956008, 0.045417, -0.289801,
		11.418149, 18.599684, 21.827976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.983533, 17.936443, 21.722540>,  <12.087355, 18.567892, 22.030838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.983533, 17.936443, 21.722540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.680150, 18.159420, 21.587484>,  <11.498120, 18.293205, 21.506451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.680150, 18.159420, 21.587484>,  <11.983533, 17.936443, 21.722540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.680150, 18.159420, 21.587484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105361, -0.406380, -0.907609,
		-0.643150, -0.723956, 0.249489,
		-0.758457, 0.557443, -0.337640,
		11.452613, 18.326653, 21.486193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.526000, 17.506765, 21.395351>,  <11.983533, 17.936443, 21.722540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.526000, 17.506765, 21.395351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.463826, 17.869511, 21.238665>,  <11.426521, 18.087158, 21.144651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.463826, 17.869511, 21.238665>,  <11.526000, 17.506765, 21.395351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.463826, 17.869511, 21.238665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106597, -0.409620, -0.906007,
		-0.982078, -0.099069, 0.160338,
		-0.155435, 0.906861, -0.391718,
		11.417195, 18.141569, 21.121149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.062157, 17.323540, 20.834444>,  <11.526000, 17.506765, 21.395351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.062157, 17.323540, 20.834444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.226438, 17.678423, 20.750359>,  <11.325006, 17.891352, 20.699907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.226438, 17.678423, 20.750359>,  <11.062157, 17.323540, 20.834444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.226438, 17.678423, 20.750359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249079, -0.330958, -0.910179,
		-0.877088, 0.321453, -0.356910,
		0.410702, 0.887206, -0.210213,
		11.349648, 17.944584, 20.687294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.735410, 17.480980, 20.141039>,  <11.062157, 17.323540, 20.834444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.735410, 17.480980, 20.141039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.065019, 17.696426, 20.211330>,  <11.262784, 17.825693, 20.253506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.065019, 17.696426, 20.211330>,  <10.735410, 17.480980, 20.141039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.065019, 17.696426, 20.211330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308849, -0.167018, -0.936332,
		-0.474972, 0.825832, -0.303977,
		0.824023, 0.538615, 0.175728,
		11.312225, 17.858011, 20.264050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.796587, 17.990404, 19.574560>,  <10.735410, 17.480980, 20.141039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.796587, 17.990404, 19.574560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.172624, 18.005995, 19.710035>,  <11.398246, 18.015348, 19.791321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.172624, 18.005995, 19.710035>,  <10.796587, 17.990404, 19.574560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.172624, 18.005995, 19.710035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339066, -0.210444, -0.916923,
		0.035537, 0.976829, -0.211052,
		0.940091, 0.038976, 0.338688,
		11.454651, 18.017687, 19.811642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.225453, 18.373709, 19.015579>,  <10.796587, 17.990404, 19.574560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.225453, 18.373709, 19.015579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.482709, 18.164677, 19.239466>,  <11.637062, 18.039257, 19.373796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.482709, 18.164677, 19.239466>,  <11.225453, 18.373709, 19.015579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.482709, 18.164677, 19.239466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482159, -0.291485, -0.826172,
		0.594890, 0.801215, 0.064502,
		0.643140, -0.522582, 0.559714,
		11.675651, 18.007902, 19.407379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.054160, 18.487446, 18.808737>,  <11.225453, 18.373709, 19.015579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.054160, 18.487446, 18.808737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.024061, 18.130102, 18.985937>,  <12.006001, 17.915695, 19.092257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.024061, 18.130102, 18.985937>,  <12.054160, 18.487446, 18.808737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.024061, 18.130102, 18.985937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723368, -0.354688, -0.592397,
		0.686350, 0.275875, 0.672917,
		-0.075248, -0.893358, 0.443000,
		12.001487, 17.862095, 19.118837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.767079, 18.153383, 18.734591>,  <12.054160, 18.487446, 18.808737>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.767079, 18.153383, 18.734591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.552972, 17.837292, 18.853939>,  <12.424507, 17.647636, 18.925549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.552972, 17.837292, 18.853939>,  <12.767079, 18.153383, 18.734591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.552972, 17.837292, 18.853939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456500, -0.567836, -0.684960,
		0.710701, -0.230433, 0.664685,
		-0.535269, -0.790230, 0.298369,
		12.392391, 17.600224, 18.943449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.255075, 17.568611, 19.018858>,  <12.767079, 18.153383, 18.734591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.255075, 17.568611, 19.018858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.920411, 17.413435, 18.864197>,  <12.719612, 17.320330, 18.771400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.920411, 17.413435, 18.864197>,  <13.255075, 17.568611, 19.018858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.920411, 17.413435, 18.864197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546891, -0.552828, -0.628723,
		0.030155, -0.737484, 0.674691,
		-0.836661, -0.387941, -0.386653,
		12.669413, 17.297052, 18.748201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.353007, 16.881565, 19.172937>,  <13.255075, 17.568611, 19.018858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.353007, 16.881565, 19.172937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.109559, 16.944386, 18.861832>,  <12.963490, 16.982077, 18.675169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.109559, 16.944386, 18.861832>,  <13.353007, 16.881565, 19.172937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.109559, 16.944386, 18.861832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622742, -0.512890, -0.590877,
		-0.491702, -0.843967, 0.214358,
		-0.608623, 0.157046, -0.777763,
		12.926973, 16.991501, 18.628502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.537008, 16.402895, 18.640469>,  <13.353007, 16.881565, 19.172937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.537008, 16.402895, 18.640469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.274838, 16.566113, 18.386250>,  <13.117537, 16.664043, 18.233719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.274838, 16.566113, 18.386250>,  <13.537008, 16.402895, 18.640469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.274838, 16.566113, 18.386250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493437, -0.405720, -0.769358,
		-0.571784, -0.817859, 0.064576,
		-0.655426, 0.408042, -0.635546,
		13.078211, 16.688526, 18.195585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.394389, 15.877512, 18.170879>,  <13.537008, 16.402895, 18.640469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.394389, 15.877512, 18.170879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.278663, 16.215273, 17.990534>,  <13.209227, 16.417929, 17.882326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.278663, 16.215273, 17.990534>,  <13.394389, 15.877512, 18.170879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.278663, 16.215273, 17.990534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367105, -0.337119, -0.866940,
		-0.884042, -0.416335, -0.212451,
		-0.289317, 0.844403, -0.450866,
		13.191868, 16.468594, 17.855274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.215130, 15.588199, 17.532724>,  <13.394389, 15.877512, 18.170879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.215130, 15.588199, 17.532724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.221316, 15.982375, 17.464996>,  <13.225028, 16.218882, 17.424360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.221316, 15.982375, 17.464996>,  <13.215130, 15.588199, 17.532724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.221316, 15.982375, 17.464996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212942, -0.168700, -0.962391,
		-0.976942, -0.021170, -0.212451,
		0.015466, 0.985440, -0.169318,
		13.225956, 16.278008, 17.414202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.762333, 15.770131, 16.941994>,  <13.215130, 15.588199, 17.532724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.762333, 15.770131, 16.941994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.063255, 16.031322, 16.976988>,  <13.243809, 16.188038, 16.997984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.063255, 16.031322, 16.976988>,  <12.762333, 15.770131, 16.941994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.063255, 16.031322, 16.976988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273796, -0.189098, -0.943015,
		-0.599226, 0.733390, -0.321043,
		0.752306, 0.652979, 0.087487,
		13.288947, 16.227217, 17.003235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.845458, 16.092567, 16.301863>,  <12.762333, 15.770131, 16.941994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.845458, 16.092567, 16.301863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.199276, 16.216761, 16.441107>,  <13.411567, 16.291277, 16.524654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.199276, 16.216761, 16.441107>,  <12.845458, 16.092567, 16.301863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.199276, 16.216761, 16.441107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372484, -0.020938, -0.927802,
		-0.280777, 0.950349, -0.134171,
		0.884545, 0.310482, 0.348111,
		13.464640, 16.309906, 16.545540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.042793, 16.632397, 15.960733>,  <12.845458, 16.092567, 16.301863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.042793, 16.632397, 15.960733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.404272, 16.534908, 16.101549>,  <13.621160, 16.476416, 16.186039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.404272, 16.534908, 16.101549>,  <13.042793, 16.632397, 15.960733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.404272, 16.534908, 16.101549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411759, 0.269226, -0.870616,
		0.117407, 0.931729, 0.343652,
		0.903698, -0.243719, 0.352039,
		13.675382, 16.461792, 16.207161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.519973, 17.137114, 15.701716>,  <13.042793, 16.632397, 15.960733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.519973, 17.137114, 15.701716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.760420, 16.836544, 15.810544>,  <13.904688, 16.656202, 15.875840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.760420, 16.836544, 15.810544>,  <13.519973, 17.137114, 15.701716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.760420, 16.836544, 15.810544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464473, 0.051462, -0.884091,
		0.650325, 0.657811, 0.379950,
		0.601118, -0.751423, 0.272068,
		13.940755, 16.611116, 15.892164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.330487, 17.330256, 15.599452>,  <13.519973, 17.137114, 15.701716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.330487, 17.330256, 15.599452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.285458, 16.932884, 15.591203>,  <14.258440, 16.694462, 15.586253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.285458, 16.932884, 15.591203>,  <14.330487, 17.330256, 15.599452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.285458, 16.932884, 15.591203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624023, -0.054531, -0.779501,
		0.773255, -0.100620, 0.626062,
		-0.112573, -0.993429, -0.020623,
		14.251685, 16.634855, 15.585015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.025061, 17.155960, 15.719625>,  <14.330487, 17.330256, 15.599452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.025061, 17.155960, 15.719625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.802237, 16.891117, 15.519105>,  <14.668542, 16.732212, 15.398793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.802237, 16.891117, 15.519105>,  <15.025061, 17.155960, 15.719625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.802237, 16.891117, 15.519105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690299, -0.033571, -0.722745,
		0.461704, -0.748658, 0.475752,
		-0.557060, -0.662105, -0.501298,
		14.635118, 16.692486, 15.368715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.406096, 16.485373, 15.585814>,  <15.025061, 17.155960, 15.719625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.406096, 16.485373, 15.585814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.130722, 16.585691, 15.313590>,  <14.965498, 16.645884, 15.150256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.130722, 16.585691, 15.313590>,  <15.406096, 16.485373, 15.585814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.130722, 16.585691, 15.313590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669440, -0.141381, -0.729288,
		-0.279123, -0.957659, -0.070564,
		-0.688433, 0.250800, -0.680558,
		14.924192, 16.660931, 15.109423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.153477, 16.335403, 15.686922>,  <15.406096, 16.485373, 15.585814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.153477, 16.335403, 15.686922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.538033, 16.372250, 15.790649>,  <16.768766, 16.394358, 15.852886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.538033, 16.372250, 15.790649>,  <16.153477, 16.335403, 15.686922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.538033, 16.372250, 15.790649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272049, 0.176088, 0.946035,
		0.041477, -0.980055, 0.194348,
		0.961389, 0.092111, 0.259320,
		16.826448, 16.399883, 15.868445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.311247, 15.925183, 16.297714>,  <16.153477, 16.335403, 15.686922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.311247, 15.925183, 16.297714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.604986, 16.195951, 16.277681>,  <16.781231, 16.358412, 16.265661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.604986, 16.195951, 16.277681>,  <16.311247, 15.925183, 16.297714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.604986, 16.195951, 16.277681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063106, 0.141550, 0.987918,
		0.675830, -0.722318, 0.146665,
		0.734351, 0.676920, -0.050081,
		16.825291, 16.399027, 16.262657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.977413, 15.602453, 16.764292>,  <16.311247, 15.925183, 16.297714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.977413, 15.602453, 16.764292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.011288, 16.000107, 16.737375>,  <17.031612, 16.238699, 16.721226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.011288, 16.000107, 16.737375>,  <16.977413, 15.602453, 16.764292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.011288, 16.000107, 16.737375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174709, 0.051674, 0.983263,
		0.980971, -0.095025, -0.169308,
		0.084686, 0.994133, -0.067292,
		17.036694, 16.298347, 16.717188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.489479, 15.839376, 17.170118>,  <16.977413, 15.602453, 16.764292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.489479, 15.839376, 17.170118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.302706, 16.189714, 17.121342>,  <17.190641, 16.399918, 17.092075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.302706, 16.189714, 17.121342>,  <17.489479, 15.839376, 17.170118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.302706, 16.189714, 17.121342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013410, 0.130869, 0.991309,
		0.884191, 0.464511, -0.049362,
		-0.466934, 0.875844, -0.121942,
		17.162626, 16.452467, 17.084759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.827745, 16.307886, 17.682341>,  <17.489479, 15.839376, 17.170118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.827745, 16.307886, 17.682341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.481493, 16.483759, 17.586540>,  <17.273741, 16.589283, 17.529060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.481493, 16.483759, 17.586540>,  <17.827745, 16.307886, 17.682341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.481493, 16.483759, 17.586540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130822, 0.263106, 0.955856,
		0.483287, 0.858751, -0.170233,
		-0.865632, 0.439683, -0.239500,
		17.221804, 16.615664, 17.514690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.749678, 16.946798, 18.128574>,  <17.827745, 16.307886, 17.682341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.749678, 16.946798, 18.128574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.388954, 16.836437, 17.995539>,  <17.172520, 16.770220, 17.915716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.388954, 16.836437, 17.995539>,  <17.749678, 16.946798, 18.128574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.388954, 16.836437, 17.995539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384260, 0.159881, 0.909276,
		-0.197697, 0.947795, -0.250201,
		-0.901809, -0.275903, -0.332592,
		17.118412, 16.753666, 17.895761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.368536, 17.543360, 18.156378>,  <17.749678, 16.946798, 18.128574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.368536, 17.543360, 18.156378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.116325, 17.236074, 18.200708>,  <16.964998, 17.051702, 18.227306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.116325, 17.236074, 18.200708>,  <17.368536, 17.543360, 18.156378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.116325, 17.236074, 18.200708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354894, 0.412337, 0.839064,
		-0.690278, 0.489721, -0.532625,
		-0.630528, -0.768213, 0.110828,
		16.927166, 17.005611, 18.233957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.848663, 17.837627, 18.600094>,  <17.368536, 17.543360, 18.156378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.848663, 17.837627, 18.600094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.706175, 17.463867, 18.600370>,  <16.620682, 17.239611, 18.600536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.706175, 17.463867, 18.600370>,  <16.848663, 17.837627, 18.600094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.706175, 17.463867, 18.600370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257397, 0.098838, 0.961238,
		-0.898249, 0.342238, -0.275721,
		-0.356223, -0.934401, 0.000690,
		16.599308, 17.183546, 18.600578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.132017, 17.849964, 18.554939>,  <16.848663, 17.837627, 18.600094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.132017, 17.849964, 18.554939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.259375, 17.515673, 18.733908>,  <16.335789, 17.315098, 18.841288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.259375, 17.515673, 18.733908>,  <16.132017, 17.849964, 18.554939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.259375, 17.515673, 18.733908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510684, 0.246420, 0.823698,
		-0.798641, -0.490751, -0.348334,
		0.318394, -0.835728, 0.447420,
		16.354893, 17.264954, 18.868134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.511365, 17.515303, 18.844467>,  <16.132017, 17.849964, 18.554939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.511365, 17.515303, 18.844467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.749968, 17.283688, 19.066780>,  <15.893129, 17.144718, 19.200169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.749968, 17.283688, 19.066780>,  <15.511365, 17.515303, 18.844467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.749968, 17.283688, 19.066780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300130, 0.481309, 0.823567,
		-0.744379, -0.658072, 0.113318,
		0.596507, -0.579036, 0.555784,
		15.928920, 17.109976, 19.233515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.111644, 17.167212, 19.378895>,  <15.511365, 17.515303, 18.844467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.111644, 17.167212, 19.378895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.481854, 17.173704, 19.530228>,  <15.703981, 17.177599, 19.621027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.481854, 17.173704, 19.530228>,  <15.111644, 17.167212, 19.378895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.481854, 17.173704, 19.530228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358544, 0.359011, 0.861718,
		-0.121840, -0.933192, 0.338094,
		0.925527, 0.016230, 0.378333,
		15.759513, 17.178574, 19.643728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.015323, 16.884666, 20.018799>,  <15.111644, 17.167212, 19.378895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.015323, 16.884666, 20.018799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.359024, 17.088928, 20.030903>,  <15.565245, 17.211485, 20.038164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.359024, 17.088928, 20.030903>,  <15.015323, 16.884666, 20.018799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.359024, 17.088928, 20.030903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226189, 0.326210, 0.917837,
		0.458828, -0.795498, 0.395802,
		0.859253, 0.510656, 0.030259,
		15.616800, 17.242125, 20.039980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.343772, 16.554760, 20.666233>,  <15.015323, 16.884666, 20.018799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.343772, 16.554760, 20.666233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.524519, 16.907976, 20.615555>,  <15.632967, 17.119907, 20.585148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.524519, 16.907976, 20.615555>,  <15.343772, 16.554760, 20.666233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.524519, 16.907976, 20.615555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375767, 0.317214, 0.870732,
		0.809083, -0.345847, 0.475157,
		0.451867, 0.883043, -0.126694,
		15.660079, 17.172890, 20.577547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.619656, 16.752367, 21.448565>,  <15.343772, 16.554760, 20.666233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.619656, 16.752367, 21.448565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.708117, 17.082794, 21.241219>,  <15.761194, 17.281052, 21.116812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.708117, 17.082794, 21.241219>,  <15.619656, 16.752367, 21.448565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.708117, 17.082794, 21.241219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165382, 0.555593, 0.814841,
		0.961114, -0.094477, 0.259489,
		0.221154, 0.826069, -0.518363,
		15.774464, 17.330614, 21.085709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.192644, 17.083748, 21.877188>,  <15.619656, 16.752367, 21.448565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.192644, 17.083748, 21.877188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.945887, 17.312622, 21.661022>,  <15.797832, 17.449947, 21.531322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.945887, 17.312622, 21.661022>,  <16.192644, 17.083748, 21.877188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.945887, 17.312622, 21.661022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214641, 0.538297, 0.814963,
		0.757212, 0.618741, -0.209258,
		-0.616894, 0.572185, -0.540413,
		15.760818, 17.484278, 21.498898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.220152, 17.781073, 22.181482>,  <16.192644, 17.083748, 21.877188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.220152, 17.781073, 22.181482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.882945, 17.767622, 21.966749>,  <15.680620, 17.759552, 21.837910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.882945, 17.767622, 21.966749>,  <16.220152, 17.781073, 22.181482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.882945, 17.767622, 21.966749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485175, 0.478412, 0.731934,
		0.232215, 0.877492, -0.419624,
		-0.843019, -0.033625, -0.536832,
		15.630039, 17.757534, 21.805700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.817199, 18.489557, 22.326067>,  <16.220152, 17.781073, 22.181482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.817199, 18.489557, 22.326067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.556724, 18.230888, 22.167185>,  <15.400438, 18.075687, 22.071856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.556724, 18.230888, 22.167185>,  <15.817199, 18.489557, 22.326067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.556724, 18.230888, 22.167185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743052, 0.436820, 0.507013,
		-0.154365, 0.625304, -0.764962,
		-0.651188, -0.646671, -0.397203,
		15.361367, 18.036886, 22.048023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.237576, 18.908997, 22.059643>,  <15.817199, 18.489557, 22.326067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.237576, 18.908997, 22.059643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.107859, 18.543726, 22.158388>,  <15.030028, 18.324564, 22.217634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.107859, 18.543726, 22.158388>,  <15.237576, 18.908997, 22.059643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.107859, 18.543726, 22.158388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847331, 0.396437, 0.353365,
		-0.420550, -0.094580, -0.902326,
		-0.324294, -0.913177, 0.246862,
		15.010571, 18.269773, 22.232447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<14.443968, 18.870613, 21.802204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.533931, 18.568420, 22.048347>,  <14.587909, 18.387104, 22.196033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.533931, 18.568420, 22.048347>,  <14.443968, 18.870613, 21.802204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.533931, 18.568420, 22.048347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779797, 0.239110, 0.578569,
		-0.584236, -0.609979, -0.535345,
		0.224908, -0.755481, 0.615357,
		14.601403, 18.341776, 22.232954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.850350, 18.604551, 22.047855>,  <14.443968, 18.870613, 21.802204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.850350, 18.604551, 22.047855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.100413, 18.435368, 22.310240>,  <14.250451, 18.333858, 22.467670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.100413, 18.435368, 22.310240>,  <13.850350, 18.604551, 22.047855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.100413, 18.435368, 22.310240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723493, 0.001261, 0.690330,
		-0.292807, -0.906149, -0.305219,
		0.625157, -0.422958, 0.655962,
		14.287960, 18.308479, 22.507029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.406682, 18.096930, 22.448521>,  <13.850350, 18.604551, 22.047855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.406682, 18.096930, 22.448521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.726254, 18.208452, 22.661680>,  <13.917996, 18.275366, 22.789576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.726254, 18.208452, 22.661680>,  <13.406682, 18.096930, 22.448521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.726254, 18.208452, 22.661680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598865, 0.287100, 0.747619,
		0.055445, -0.916428, 0.396340,
		0.798928, 0.278806, 0.532898,
		13.965932, 18.292093, 22.821550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.287394, 17.848913, 23.130150>,  <13.406682, 18.096930, 22.448521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.287394, 17.848913, 23.130150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.550447, 18.146881, 23.175077>,  <13.708278, 18.325663, 23.202034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.550447, 18.146881, 23.175077>,  <13.287394, 17.848913, 23.130150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.550447, 18.146881, 23.175077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523778, 0.344960, 0.778884,
		0.541460, -0.571049, 0.617029,
		0.657631, 0.744920, 0.112321,
		13.747736, 18.370358, 23.208775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.357104, 17.838469, 23.960278>,  <13.287394, 17.848913, 23.130150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.357104, 17.838469, 23.960278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.518398, 18.181356, 23.832167>,  <13.615174, 18.387089, 23.755301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.518398, 18.181356, 23.832167>,  <13.357104, 17.838469, 23.960278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.518398, 18.181356, 23.832167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289830, 0.451608, 0.843830,
		0.867987, -0.247435, 0.430552,
		0.403234, 0.857220, -0.320276,
		13.639368, 18.438522, 23.736084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.862539, 18.125076, 24.469065>,  <13.357104, 17.838469, 23.960278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.862539, 18.125076, 24.469065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.736806, 18.426308, 24.237871>,  <13.661366, 18.607046, 24.099155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.736806, 18.426308, 24.237871>,  <13.862539, 18.125076, 24.469065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.736806, 18.426308, 24.237871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340914, 0.478684, 0.809098,
		0.885987, 0.451369, 0.106270,
		-0.314332, 0.753079, -0.577986,
		13.642507, 18.652231, 24.064476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.082165, 18.685053, 24.836489>,  <13.862539, 18.125076, 24.469065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.082165, 18.685053, 24.836489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.824789, 18.834436, 24.569201>,  <13.670363, 18.924067, 24.408829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.824789, 18.834436, 24.569201>,  <14.082165, 18.685053, 24.836489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.824789, 18.834436, 24.569201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300134, 0.679952, 0.669018,
		0.704206, 0.631027, -0.325421,
		-0.643439, 0.373457, -0.668219,
		13.631758, 18.946474, 24.368734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.206743, 19.322165, 24.982544>,  <14.082165, 18.685053, 24.836489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.206743, 19.322165, 24.982544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.850426, 19.282845, 24.805086>,  <13.636635, 19.259253, 24.698610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.850426, 19.282845, 24.805086>,  <14.206743, 19.322165, 24.982544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.850426, 19.282845, 24.805086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416986, 0.564811, 0.712117,
		0.180575, 0.819345, -0.544121,
		-0.890795, -0.098300, -0.443646,
		13.583187, 19.253355, 24.671993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.008292, 20.030565, 24.812130>,  <14.206743, 19.322165, 24.982544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.008292, 20.030565, 24.812130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.687517, 19.792551, 24.833403>,  <13.495052, 19.649742, 24.846167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.687517, 19.792551, 24.833403>,  <14.008292, 20.030565, 24.812130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.687517, 19.792551, 24.833403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390105, 0.589003, 0.707738,
		-0.452453, 0.546816, -0.704471,
		-0.801938, -0.595036, 0.053180,
		13.446936, 19.614040, 24.849358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.422734, 20.522564, 24.847902>,  <14.008292, 20.030565, 24.812130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.422734, 20.522564, 24.847902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.252435, 20.192459, 24.996323>,  <13.150255, 19.994396, 25.085375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.252435, 20.192459, 24.996323>,  <13.422734, 20.522564, 24.847902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.252435, 20.192459, 24.996323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422315, 0.543900, 0.725136,
		-0.800242, 0.152026, -0.580086,
		-0.425749, -0.825264, 0.371049,
		13.124710, 19.944880, 25.107637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.749987, 20.684059, 24.976124>,  <13.422734, 20.522564, 24.847902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.749987, 20.684059, 24.976124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.809698, 20.363499, 25.207802>,  <12.845525, 20.171162, 25.346809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.809698, 20.363499, 25.207802>,  <12.749987, 20.684059, 24.976124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.809698, 20.363499, 25.207802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433663, 0.473356, 0.766727,
		-0.888624, -0.365632, -0.276877,
		0.149279, -0.801403, 0.579197,
		12.854482, 20.123077, 25.381561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.090714, 20.576868, 25.342905>,  <12.749987, 20.684059, 24.976124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.090714, 20.576868, 25.342905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.346439, 20.375521, 25.575420>,  <12.499875, 20.254713, 25.714930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.346439, 20.375521, 25.575420>,  <12.090714, 20.576868, 25.342905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.346439, 20.375521, 25.575420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475786, 0.334915, 0.813302,
		-0.604073, -0.796525, -0.025379,
		0.639316, -0.503369, 0.581288,
		12.538234, 20.224510, 25.749807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.639847, 20.238823, 25.799194>,  <12.090714, 20.576868, 25.342905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.639847, 20.238823, 25.799194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.005990, 20.215248, 25.958515>,  <12.225677, 20.201103, 26.054108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.005990, 20.215248, 25.958515>,  <11.639847, 20.238823, 25.799194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.005990, 20.215248, 25.958515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362540, 0.309714, 0.879001,
		-0.175163, -0.949002, 0.262133,
		0.915359, -0.058935, 0.398302,
		12.280598, 20.197567, 26.078005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.584393, 19.855806, 26.405298>,  <11.639847, 20.238823, 25.799194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.584393, 19.855806, 26.405298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.932886, 20.044044, 26.461143>,  <12.141982, 20.156986, 26.494650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.932886, 20.044044, 26.461143>,  <11.584393, 19.855806, 26.405298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.932886, 20.044044, 26.461143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232305, 0.144732, 0.961815,
		0.432417, -0.870399, 0.235417,
		0.871235, 0.470594, 0.139613,
		12.194257, 20.185223, 26.503027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.861826, 19.503626, 26.984381>,  <11.584393, 19.855806, 26.405298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.861826, 19.503626, 26.984381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.034431, 19.863867, 26.963551>,  <12.137993, 20.080011, 26.951054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.034431, 19.863867, 26.963551>,  <11.861826, 19.503626, 26.984381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.034431, 19.863867, 26.963551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092763, 0.101716, 0.990479,
		0.897326, -0.422572, 0.127434,
		0.431511, 0.900604, -0.052073,
		12.163883, 20.134048, 26.947929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.226822, 19.473396, 27.505995>,  <11.861826, 19.503626, 26.984381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.226822, 19.473396, 27.505995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.238470, 19.864157, 27.421312>,  <12.245459, 20.098612, 27.370502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.238470, 19.864157, 27.421312>,  <12.226822, 19.473396, 27.505995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.238470, 19.864157, 27.421312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047770, 0.212916, 0.975902,
		0.998434, -0.018305, 0.052867,
		0.029120, 0.976899, -0.211708,
		12.247206, 20.157227, 27.357800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.682097, 19.697372, 28.017183>,  <12.226822, 19.473396, 27.505995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.682097, 19.697372, 28.017183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.476813, 20.018171, 27.894926>,  <12.353642, 20.210649, 27.821571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.476813, 20.018171, 27.894926>,  <12.682097, 19.697372, 28.017183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.476813, 20.018171, 27.894926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194340, 0.238280, 0.951554,
		0.835970, 0.547747, 0.033572,
		-0.513211, 0.801995, -0.305644,
		12.322850, 20.258770, 27.803232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.910984, 20.193775, 28.479311>,  <12.682097, 19.697372, 28.017183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.910984, 20.193775, 28.479311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.565870, 20.318056, 28.319778>,  <12.358802, 20.392624, 28.224058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.565870, 20.318056, 28.319778>,  <12.910984, 20.193775, 28.479311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.565870, 20.318056, 28.319778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334922, 0.239685, 0.911251,
		0.378722, 0.919791, -0.102735,
		-0.862784, 0.310703, -0.398832,
		12.307035, 20.411266, 28.200129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.824189, 20.906872, 28.746744>,  <12.910984, 20.193775, 28.479311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.824189, 20.906872, 28.746744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.446928, 20.797560, 28.671080>,  <12.220572, 20.731974, 28.625681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.446928, 20.797560, 28.671080>,  <12.824189, 20.906872, 28.746744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.446928, 20.797560, 28.671080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234701, 0.144642, 0.961246,
		-0.235328, 0.950998, -0.200558,
		-0.943152, -0.273279, -0.189161,
		12.163982, 20.715576, 28.614330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.370817, 21.491083, 28.980894>,  <12.824189, 20.906872, 28.746744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.370817, 21.491083, 28.980894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.166153, 21.147408, 28.981184>,  <12.043354, 20.941202, 28.981358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.166153, 21.147408, 28.981184>,  <12.370817, 21.491083, 28.980894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.166153, 21.147408, 28.981184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308273, 0.184371, 0.933261,
		-0.801980, 0.477289, -0.359200,
		-0.511661, -0.859187, 0.000727,
		12.012655, 20.889652, 28.981401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.725272, 21.627998, 29.219622>,  <12.370817, 21.491083, 28.980894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.725272, 21.627998, 29.219622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.705807, 21.229151, 29.242901>,  <11.694127, 20.989841, 29.256868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.705807, 21.229151, 29.242901>,  <11.725272, 21.627998, 29.219622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.705807, 21.229151, 29.242901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541535, 0.075300, 0.837299,
		-0.839268, 0.009230, -0.543639,
		-0.048664, -0.997118, 0.058199,
		11.691208, 20.930016, 29.260361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.047744, 21.452276, 29.426186>,  <11.725272, 21.627998, 29.219622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.047744, 21.452276, 29.426186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.277657, 21.142763, 29.532682>,  <11.415605, 20.957056, 29.596581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.277657, 21.142763, 29.532682>,  <11.047744, 21.452276, 29.426186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.277657, 21.142763, 29.532682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465160, -0.041273, 0.884264,
		-0.673239, -0.632105, -0.383655,
		0.574783, -0.773782, 0.266244,
		11.450091, 20.910629, 29.612555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.558834, 20.890808, 29.772871>,  <11.047744, 21.452276, 29.426186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.558834, 20.890808, 29.772871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.937281, 20.845720, 29.894300>,  <11.164349, 20.818666, 29.967157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.937281, 20.845720, 29.894300>,  <10.558834, 20.890808, 29.772871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.937281, 20.845720, 29.894300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301007, 0.039545, 0.952802,
		-0.119405, -0.992839, 0.003485,
		0.946117, -0.112720, 0.303573,
		11.221116, 20.811905, 29.985373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.999770, 20.406172, 30.071533>,  <10.558834, 20.890808, 29.772871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.999770, 20.406172, 30.071533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.676888, 20.171951, 30.101326>,  <9.483158, 20.031418, 30.119202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.676888, 20.171951, 30.101326>,  <9.999770, 20.406172, 30.071533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.676888, 20.171951, 30.101326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106987, -0.269230, -0.957115,
		0.580494, -0.764620, 0.279970,
		-0.807205, -0.585553, 0.074482,
		9.434726, 19.996286, 30.123671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.223870, 19.897684, 29.663715>,  <9.999770, 20.406172, 30.071533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.223870, 19.897684, 29.663715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.824040, 19.896824, 29.675364>,  <9.584143, 19.896307, 29.682352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.824040, 19.896824, 29.675364>,  <10.223870, 19.897684, 29.663715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.824040, 19.896824, 29.675364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027135, -0.299771, -0.953625,
		0.010781, -0.954009, 0.299584,
		-0.999574, -0.002152, 0.029119,
		9.524168, 19.896179, 29.684099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.977486, 19.299383, 29.408148>,  <10.223870, 19.897684, 29.663715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.977486, 19.299383, 29.408148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.675287, 19.549862, 29.331100>,  <9.493968, 19.700150, 29.284872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.675287, 19.549862, 29.331100>,  <9.977486, 19.299383, 29.408148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.675287, 19.549862, 29.331100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063968, -0.222095, -0.972924,
		-0.652024, -0.747361, 0.127735,
		-0.755495, 0.626199, -0.192619,
		9.448639, 19.737722, 29.273315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.493849, 18.865477, 28.996229>,  <9.977486, 19.299383, 29.408148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.493849, 18.865477, 28.996229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.420260, 19.254263, 28.937660>,  <9.376107, 19.487534, 28.902519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.420260, 19.254263, 28.937660>,  <9.493849, 18.865477, 28.996229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.420260, 19.254263, 28.937660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024961, -0.144298, -0.989219,
		-0.982615, -0.185643, 0.002285,
		-0.183971, 0.971964, -0.146423,
		9.365069, 19.545853, 28.893734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.901653, 18.813198, 28.521688>,  <9.493849, 18.865477, 28.996229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.901653, 18.813198, 28.521688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.096008, 19.161667, 28.493488>,  <9.212622, 19.370749, 28.476568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.096008, 19.161667, 28.493488>,  <8.901653, 18.813198, 28.521688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.096008, 19.161667, 28.493488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120269, -0.146537, -0.981867,
		-0.865707, 0.468598, -0.175975,
		0.485888, 0.871173, -0.070500,
		9.241775, 19.423019, 28.472338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.551171, 19.249973, 28.011826>,  <8.901653, 18.813198, 28.521688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.551171, 19.249973, 28.011826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.924249, 19.390984, 28.042309>,  <9.148095, 19.475590, 28.060598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.924249, 19.390984, 28.042309>,  <8.551171, 19.249973, 28.011826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.924249, 19.390984, 28.042309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089134, -0.020550, -0.995808,
		-0.349481, 0.935577, -0.050588,
		0.932694, 0.352525, 0.076210,
		9.204057, 19.496740, 28.065172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.612630, 19.744598, 27.440138>,  <8.551171, 19.249973, 28.011826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.612630, 19.744598, 27.440138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.984126, 19.654007, 27.557541>,  <9.207024, 19.599651, 27.627983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.984126, 19.654007, 27.557541>,  <8.612630, 19.744598, 27.440138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.984126, 19.654007, 27.557541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255125, -0.183971, -0.949245,
		0.268981, 0.956484, -0.113081,
		0.928741, -0.226480, 0.293507,
		9.262749, 19.586063, 27.645594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.004938, 19.836206, 26.833765>,  <8.612630, 19.744598, 27.440138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.004938, 19.836206, 26.833765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.245339, 19.621275, 27.070433>,  <9.389580, 19.492315, 27.212433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.245339, 19.621275, 27.070433>,  <9.004938, 19.836206, 26.833765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.245339, 19.621275, 27.070433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449572, -0.384789, -0.806116,
		0.660818, 0.750476, 0.010309,
		0.601003, -0.537330, 0.591668,
		9.425640, 19.460075, 27.247932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.462835, 19.724287, 26.390879>,  <9.004938, 19.836206, 26.833765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.462835, 19.724287, 26.390879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.601860, 19.504736, 26.694967>,  <9.685275, 19.373005, 26.877420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.601860, 19.504736, 26.694967>,  <9.462835, 19.724287, 26.390879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.601860, 19.504736, 26.694967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536132, -0.548829, -0.641365,
		0.769261, 0.630493, 0.103518,
		0.347562, -0.548877, 0.760220,
		9.706129, 19.340073, 26.923033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.277467, 19.772385, 26.487364>,  <9.462835, 19.724287, 26.390879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.277467, 19.772385, 26.487364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.122156, 19.424812, 26.610130>,  <10.028970, 19.216269, 26.683790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.122156, 19.424812, 26.610130>,  <10.277467, 19.772385, 26.487364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.122156, 19.424812, 26.610130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554549, -0.486306, -0.675264,
		0.736013, -0.091991, 0.670688,
		-0.388278, -0.868933, 0.306915,
		10.005672, 19.164133, 26.702204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.835779, 19.405043, 26.691105>,  <10.277467, 19.772385, 26.487364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.835779, 19.405043, 26.691105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.536051, 19.160772, 26.588659>,  <10.356214, 19.014210, 26.527191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.536051, 19.160772, 26.588659>,  <10.835779, 19.405043, 26.691105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.536051, 19.160772, 26.588659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492562, -0.255483, -0.831932,
		0.442607, -0.749536, 0.492234,
		-0.749321, -0.610675, -0.256115,
		10.311255, 18.977570, 26.511826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.158666, 18.918629, 26.340580>,  <10.835779, 19.405043, 26.691105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.158666, 18.918629, 26.340580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.775622, 18.838757, 26.257524>,  <10.545796, 18.790833, 26.207691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.775622, 18.838757, 26.257524>,  <11.158666, 18.918629, 26.340580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.775622, 18.838757, 26.257524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272479, -0.393909, -0.877833,
		0.093495, -0.897197, 0.431619,
		-0.957609, -0.199680, -0.207638,
		10.488339, 18.778852, 26.195232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.186001, 18.298737, 26.016396>,  <11.158666, 18.918629, 26.340580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.186001, 18.298737, 26.016396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.823461, 18.435093, 25.916538>,  <10.605936, 18.516907, 25.856625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.823461, 18.435093, 25.916538>,  <11.186001, 18.298737, 26.016396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.823461, 18.435093, 25.916538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177265, -0.229538, -0.957021,
		-0.383543, -0.911650, 0.147614,
		-0.906351, 0.340892, -0.249641,
		10.551556, 18.537361, 25.841646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.926720, 17.891321, 25.455360>,  <11.186001, 18.298737, 26.016396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.926720, 17.891321, 25.455360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.724412, 18.235373, 25.428902>,  <10.603027, 18.441803, 25.413027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.724412, 18.235373, 25.428902>,  <10.926720, 17.891321, 25.455360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.724412, 18.235373, 25.428902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089661, -0.023848, -0.995687,
		-0.857996, -0.509519, -0.065058,
		-0.505770, 0.860129, -0.066146,
		10.572680, 18.493412, 25.409058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.451715, 17.899002, 24.865671>,  <10.926720, 17.891321, 25.455360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.451715, 17.899002, 24.865671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.505586, 18.291803, 24.918634>,  <10.537909, 18.527485, 24.950413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.505586, 18.291803, 24.918634>,  <10.451715, 17.899002, 24.865671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.505586, 18.291803, 24.918634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108692, 0.118178, -0.987026,
		-0.984910, 0.147322, -0.090820,
		0.134677, 0.982003, 0.132407,
		10.545989, 18.586405, 24.958357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.230676, 18.104429, 24.292095>,  <10.451715, 17.899002, 24.865671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.230676, 18.104429, 24.292095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.386559, 18.443758, 24.435469>,  <10.480088, 18.647356, 24.521492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.386559, 18.443758, 24.435469>,  <10.230676, 18.104429, 24.292095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.386559, 18.443758, 24.435469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092338, 0.351251, -0.931717,
		-0.916298, 0.396195, 0.058553,
		0.389708, 0.848324, 0.358434,
		10.503470, 18.698256, 24.542999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.820190, 18.632753, 23.990494>,  <10.230676, 18.104429, 24.292095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.820190, 18.632753, 23.990494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.188878, 18.758282, 24.081667>,  <10.410090, 18.833599, 24.136370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.188878, 18.758282, 24.081667>,  <9.820190, 18.632753, 23.990494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.188878, 18.758282, 24.081667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166033, 0.211853, -0.963095,
		-0.350526, 0.925546, 0.143164,
		0.921718, 0.313820, 0.227931,
		10.465393, 18.852428, 24.150045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.909582, 19.289291, 23.639330>,  <9.820190, 18.632753, 23.990494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.909582, 19.289291, 23.639330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.272116, 19.129915, 23.695621>,  <10.489635, 19.034290, 23.729397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.272116, 19.129915, 23.695621>,  <9.909582, 19.289291, 23.639330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.272116, 19.129915, 23.695621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228374, 0.181652, -0.956477,
		0.355535, 0.899026, 0.255631,
		0.906333, -0.398441, 0.140730,
		10.544016, 19.010384, 23.737841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.260804, 19.659048, 23.133965>,  <9.909582, 19.289291, 23.639330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.260804, 19.659048, 23.133965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.510074, 19.357800, 23.218307>,  <10.659636, 19.177050, 23.268913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.510074, 19.357800, 23.218307>,  <10.260804, 19.659048, 23.133965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.510074, 19.357800, 23.218307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377122, 0.053172, -0.924636,
		0.685152, 0.655729, 0.317154,
		0.623174, -0.753122, 0.210858,
		10.697026, 19.131863, 23.281565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.875656, 19.845547, 22.962461>,  <10.260804, 19.659048, 23.133965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.875656, 19.845547, 22.962461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.892893, 19.445940, 22.966690>,  <10.903235, 19.206177, 22.969227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.892893, 19.445940, 22.966690>,  <10.875656, 19.845547, 22.962461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.892893, 19.445940, 22.966690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279877, 0.001914, -0.960034,
		0.959068, 0.044329, 0.279684,
		0.043093, -0.999015, 0.010571,
		10.905821, 19.146236, 22.969862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.440013, 19.616400, 22.530281>,  <10.875656, 19.845547, 22.962461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.440013, 19.616400, 22.530281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.228274, 19.277206, 22.519539>,  <11.101232, 19.073690, 22.513094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.228274, 19.277206, 22.519539>,  <11.440013, 19.616400, 22.530281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.228274, 19.277206, 22.519539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407969, -0.226660, -0.884413,
		0.743878, -0.479117, 0.465931,
		-0.529346, -0.847981, -0.026858,
		11.069470, 19.022812, 22.511482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<30.273222, 24.361242, 12.700725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.999151, 24.643671, 12.772274>,  <29.834709, 24.813128, 12.815204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.999151, 24.643671, 12.772274>,  <30.273222, 24.361242, 12.700725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.999151, 24.643671, 12.772274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718364, -0.695643, -0.005784,
		0.120348, -0.132460, 0.983855,
		-0.685178, 0.706070, 0.178873,
		29.793598, 24.855492, 12.825936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.968464, 23.587917, 12.849145>,  <30.273222, 24.361242, 12.700725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.968464, 23.587917, 12.849145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.332609, 23.474262, 12.728809>,  <30.551096, 23.406069, 12.656609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.332609, 23.474262, 12.728809>,  <29.968464, 23.587917, 12.849145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.332609, 23.474262, 12.728809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402404, -0.438360, -0.803686,
		0.096482, 0.852705, -0.513406,
		0.910364, -0.284138, -0.300838,
		30.605719, 23.389021, 12.638557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.433666, 23.852480, 12.407812>,  <29.968464, 23.587917, 12.849145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.433666, 23.852480, 12.407812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.414799, 24.072176, 12.074079>,  <29.403479, 24.203993, 11.873838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.414799, 24.072176, 12.074079>,  <29.433666, 23.852480, 12.407812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.414799, 24.072176, 12.074079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786130, -0.494899, -0.370235,
		-0.616258, -0.673358, -0.408429,
		-0.047170, 0.549239, -0.834333,
		29.400648, 24.236948, 11.823779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419958, 23.225014, 11.958780>,  <29.433666, 23.852480, 12.407812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.419958, 23.225014, 11.958780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.758139, 23.024057, 12.031243>,  <29.961046, 22.903484, 12.074721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.758139, 23.024057, 12.031243>,  <29.419958, 23.225014, 11.958780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.758139, 23.024057, 12.031243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137946, 0.533134, 0.834709,
		-0.515930, -0.680715, 0.520041,
		0.845451, -0.502389, 0.181158,
		30.011774, 22.873341, 12.085590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.808680, 23.483494, 11.717097>,  <29.419958, 23.225014, 11.958780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.808680, 23.483494, 11.717097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.733055, 23.771696, 11.983970>,  <28.687681, 23.944616, 12.144093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.733055, 23.771696, 11.983970>,  <28.808680, 23.483494, 11.717097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.733055, 23.771696, 11.983970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876421, -0.430245, 0.216277,
		0.442879, -0.543841, 0.712808,
		-0.189062, 0.720504, 0.667180,
		28.676336, 23.987848, 12.184124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.545698, 23.088800, 12.250937>,  <28.808680, 23.483494, 11.717097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.545698, 23.088800, 12.250937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.442791, 23.474268, 12.279653>,  <28.381046, 23.705549, 12.296882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.442791, 23.474268, 12.279653>,  <28.545698, 23.088800, 12.250937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.442791, 23.474268, 12.279653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900380, -0.266022, 0.344307,
		0.350896, 0.023943, 0.936108,
		-0.257269, 0.963669, 0.071788,
		28.365610, 23.763369, 12.301189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.195965, 23.193396, 12.862343>,  <28.545698, 23.088800, 12.250937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.195965, 23.193396, 12.862343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.093922, 23.504648, 12.632759>,  <28.032696, 23.691401, 12.495008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.093922, 23.504648, 12.632759>,  <28.195965, 23.193396, 12.862343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.093922, 23.504648, 12.632759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966700, -0.192793, 0.168294,
		0.020300, 0.597780, 0.801403,
		-0.255107, 0.778133, -0.573960,
		28.017389, 23.738089, 12.460571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.650885, 23.664007, 13.259916>,  <28.195965, 23.193396, 12.862343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.650885, 23.664007, 13.259916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.634613, 23.630468, 12.861657>,  <27.624849, 23.610346, 12.622702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.634613, 23.630468, 12.861657>,  <27.650885, 23.664007, 13.259916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.634613, 23.630468, 12.861657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917232, -0.392065, 0.070494,
		-0.396270, 0.916108, -0.060956,
		-0.040681, -0.083845, -0.995648,
		27.622408, 23.605314, 12.562963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.036135, 23.873991, 12.975664>,  <27.650885, 23.664007, 13.259916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.036135, 23.873991, 12.975664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.067719, 23.658268, 12.640306>,  <27.086668, 23.528833, 12.439090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.067719, 23.658268, 12.640306>,  <27.036135, 23.873991, 12.975664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.067719, 23.658268, 12.640306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865957, -0.453744, 0.210322,
		-0.493846, 0.709409, -0.502846,
		0.078959, -0.539310, -0.838397,
		27.091406, 23.496475, 12.388786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.410381, 23.890980, 12.428432>,  <27.036135, 23.873991, 12.975664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.410381, 23.890980, 12.428432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.611353, 23.549234, 12.375329>,  <26.731936, 23.344187, 12.343467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.611353, 23.549234, 12.375329>,  <26.410381, 23.890980, 12.428432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.611353, 23.549234, 12.375329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844255, -0.517908, 0.137859,
		-0.186538, 0.042817, -0.981514,
		0.502431, -0.854365, -0.132758,
		26.762083, 23.292925, 12.335502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.147114, 23.613447, 11.868017>,  <26.410381, 23.890980, 12.428432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.147114, 23.613447, 11.868017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.297728, 23.308292, 12.078245>,  <26.388096, 23.125198, 12.204382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.297728, 23.308292, 12.078245>,  <26.147114, 23.613447, 11.868017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.297728, 23.308292, 12.078245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856593, -0.502763, -0.116096,
		0.352805, -0.406485, -0.842792,
		0.376533, -0.762889, 0.525569,
		26.410688, 23.079426, 12.235916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.759607, 23.036215, 11.658632>,  <26.147114, 23.613447, 11.868017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.759607, 23.036215, 11.658632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.940454, 22.881289, 11.980023>,  <26.048964, 22.788334, 12.172858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.940454, 22.881289, 11.980023>,  <25.759607, 23.036215, 11.658632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.940454, 22.881289, 11.980023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751904, -0.650077, 0.109730,
		0.479823, -0.653749, -0.585134,
		0.452118, -0.387314, 0.803478,
		26.076090, 22.765095, 12.221066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.594173, 22.393499, 11.587176>,  <25.759607, 23.036215, 11.658632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.594173, 22.393499, 11.587176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.701950, 22.400419, 11.972321>,  <25.766617, 22.404572, 12.203407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.701950, 22.400419, 11.972321>,  <25.594173, 22.393499, 11.587176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.701950, 22.400419, 11.972321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652539, -0.732034, 0.195754,
		0.708233, -0.681049, -0.185953,
		0.269442, 0.017298, 0.962861,
		25.782784, 22.405609, 12.261179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.740316, 21.724564, 11.869987>,  <25.594173, 22.393499, 11.587176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.740316, 21.724564, 11.869987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.651903, 21.959181, 12.181658>,  <25.598856, 22.099951, 12.368660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.651903, 21.959181, 12.181658>,  <25.740316, 21.724564, 11.869987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.651903, 21.959181, 12.181658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736703, -0.623942, 0.260703,
		0.639073, -0.516397, 0.570017,
		-0.221031, 0.586541, 0.779175,
		25.585594, 22.135143, 12.415410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.848991, 21.290810, 12.409964>,  <25.740316, 21.724564, 11.869987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.848991, 21.290810, 12.409964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.601810, 21.578299, 12.537445>,  <25.453503, 21.750792, 12.613934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.601810, 21.578299, 12.537445>,  <25.848991, 21.290810, 12.409964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.601810, 21.578299, 12.537445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594625, -0.692438, 0.408597,
		0.514351, 0.062984, 0.855264,
		-0.617952, 0.718723, 0.318704,
		25.416426, 21.793915, 12.633057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.400253, 20.891745, 12.796065>,  <25.848991, 21.290810, 12.409964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.400253, 20.891745, 12.796065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.221209, 21.249134, 12.810727>,  <25.113781, 21.463568, 12.819525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.221209, 21.249134, 12.810727>,  <25.400253, 20.891745, 12.796065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.221209, 21.249134, 12.810727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800863, -0.418779, 0.428068,
		0.397819, 0.162254, 0.903003,
		-0.447614, 0.893475, 0.036655,
		25.086924, 21.517178, 12.821724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.184113, 21.043602, 13.485929>,  <25.400253, 20.891745, 12.796065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.184113, 21.043602, 13.485929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.930756, 21.241556, 13.247970>,  <24.778742, 21.360329, 13.105194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.930756, 21.241556, 13.247970>,  <25.184113, 21.043602, 13.485929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.930756, 21.241556, 13.247970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764563, -0.518853, 0.382407,
		-0.119417, 0.697050, 0.707009,
		-0.633391, 0.494887, -0.594898,
		24.740738, 21.390022, 13.069500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.608576, 21.318905, 13.977943>,  <25.184113, 21.043602, 13.485929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.608576, 21.318905, 13.977943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.477758, 21.297335, 13.600555>,  <24.399267, 21.284393, 13.374123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.477758, 21.297335, 13.600555>,  <24.608576, 21.318905, 13.977943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.477758, 21.297335, 13.600555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767441, -0.567414, 0.298456,
		-0.551432, 0.821665, 0.144185,
		-0.327043, -0.053925, -0.943470,
		24.379646, 21.281157, 13.317514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.884733, 21.297186, 14.150671>,  <24.608576, 21.318905, 13.977943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.884733, 21.297186, 14.150671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.946297, 21.181747, 13.772671>,  <23.983234, 21.112484, 13.545871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.946297, 21.181747, 13.772671>,  <23.884733, 21.297186, 14.150671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.946297, 21.181747, 13.772671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753471, -0.652991, 0.076705,
		-0.639214, 0.700225, -0.317948,
		0.153907, -0.288596, -0.945000,
		23.992468, 21.095169, 13.489171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.194979, 21.267172, 13.871522>,  <23.884733, 21.297186, 14.150671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.194979, 21.267172, 13.871522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.461885, 21.054886, 13.662488>,  <23.622030, 20.927513, 13.537067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.461885, 21.054886, 13.662488>,  <23.194979, 21.267172, 13.871522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.461885, 21.054886, 13.662488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663386, -0.742472, -0.093027,
		-0.338633, 0.408749, -0.847497,
		0.667268, -0.530716, -0.522584,
		23.662066, 20.895672, 13.505713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.796122, 21.040789, 13.315095>,  <23.194979, 21.267172, 13.871522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.796122, 21.040789, 13.315095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.104937, 20.797148, 13.387704>,  <23.290226, 20.650963, 13.431269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.104937, 20.797148, 13.387704>,  <22.796122, 21.040789, 13.315095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.104937, 20.797148, 13.387704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628115, -0.774829, 0.071498,
		0.097098, -0.169216, -0.980784,
		0.772038, -0.609103, 0.181522,
		23.336548, 20.614416, 13.442161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.637655, 20.518402, 12.957489>,  <22.796122, 21.040789, 13.315095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.637655, 20.518402, 12.957489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.922899, 20.357773, 13.187347>,  <23.094046, 20.261396, 13.325262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.922899, 20.357773, 13.187347>,  <22.637655, 20.518402, 12.957489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.922899, 20.357773, 13.187347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579072, -0.799433, 0.159946,
		0.395161, -0.446820, -0.802621,
		0.713108, -0.401571, 0.574645,
		23.136831, 20.237301, 13.359741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.899664, 19.859425, 12.565557>,  <22.637655, 20.518402, 12.957489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.899664, 19.859425, 12.565557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.975809, 19.820414, 12.956300>,  <23.021496, 19.797007, 13.190745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.975809, 19.820414, 12.956300>,  <22.899664, 19.859425, 12.565557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.975809, 19.820414, 12.956300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438865, -0.898543, -0.004188,
		0.878157, -0.427911, -0.213850,
		0.190362, -0.097529, 0.976857,
		23.032917, 19.791155, 13.249357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.125235, 19.239769, 12.528417>,  <22.899664, 19.859425, 12.565557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.125235, 19.239769, 12.528417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.036072, 19.318563, 12.910309>,  <22.982574, 19.365841, 13.139444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.036072, 19.318563, 12.910309>,  <23.125235, 19.239769, 12.528417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.036072, 19.318563, 12.910309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340290, -0.933488, 0.113153,
		0.913518, -0.299662, 0.275114,
		-0.222908, 0.196986, 0.954729,
		22.969200, 19.377659, 13.196728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.304409, 18.659048, 12.801392>,  <23.125235, 19.239769, 12.528417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.304409, 18.659048, 12.801392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.085039, 18.816799, 13.096334>,  <22.953417, 18.911449, 13.273300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.085039, 18.816799, 13.096334>,  <23.304409, 18.659048, 12.801392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.085039, 18.816799, 13.096334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235887, -0.918948, 0.316056,
		0.802239, -0.000600, 0.597003,
		-0.548425, 0.394378, 0.737357,
		22.920511, 18.935112, 13.317542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.472383, 18.265985, 13.523070>,  <23.304409, 18.659048, 12.801392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.472383, 18.265985, 13.523070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.109520, 18.434216, 13.517754>,  <22.891802, 18.535154, 13.514564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.109520, 18.434216, 13.517754>,  <23.472383, 18.265985, 13.523070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.109520, 18.434216, 13.517754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402992, -0.859277, 0.315023,
		0.121069, 0.291133, 0.948991,
		-0.907160, 0.420576, -0.013292,
		22.837372, 18.560389, 13.513766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.132097, 18.057039, 14.163506>,  <23.472383, 18.265985, 13.523070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.132097, 18.057039, 14.163506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.825991, 18.145647, 13.921745>,  <22.642326, 18.198811, 13.776690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.825991, 18.145647, 13.921745>,  <23.132097, 18.057039, 14.163506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.825991, 18.145647, 13.921745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484651, -0.816215, 0.314493,
		-0.423655, 0.533593, 0.731980,
		-0.765265, 0.221518, -0.604400,
		22.596411, 18.212103, 13.740425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.560596, 18.029516, 14.542306>,  <23.132097, 18.057039, 14.163506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.560596, 18.029516, 14.542306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.406170, 17.988428, 14.175612>,  <22.313515, 17.963776, 13.955596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.406170, 17.988428, 14.175612>,  <22.560596, 18.029516, 14.542306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.406170, 17.988428, 14.175612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539386, -0.781054, 0.314670,
		-0.748342, 0.615957, 0.246132,
		-0.386066, -0.102720, -0.916734,
		22.290350, 17.957613, 13.900592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.788837, 17.770611, 14.641947>,  <22.560596, 18.029516, 14.542306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.788837, 17.770611, 14.641947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.911627, 17.683386, 14.271387>,  <21.985300, 17.631052, 14.049051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.911627, 17.683386, 14.271387>,  <21.788837, 17.770611, 14.641947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.911627, 17.683386, 14.271387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303390, -0.945035, 0.121915,
		-0.902066, 0.243636, -0.356257,
		0.306973, -0.218060, -0.926400,
		22.003719, 17.617968, 13.993467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.363445, 17.377445, 14.383049>,  <21.788837, 17.770611, 14.641947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.363445, 17.377445, 14.383049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.656830, 17.281212, 14.128757>,  <21.832861, 17.223473, 13.976181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.656830, 17.281212, 14.128757>,  <21.363445, 17.377445, 14.383049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.656830, 17.281212, 14.128757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330650, -0.943437, -0.024451,
		-0.593890, 0.228139, -0.771523,
		0.733461, -0.240582, -0.635732,
		21.876867, 17.209038, 13.938037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.985603, 17.067106, 13.848686>,  <21.363445, 17.377445, 14.383049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.985603, 17.067106, 13.848686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.369381, 16.957891, 13.820642>,  <21.599648, 16.892363, 13.803816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.369381, 16.957891, 13.820642>,  <20.985603, 17.067106, 13.848686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.369381, 16.957891, 13.820642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279107, -0.954995, -0.100423,
		-0.039535, 0.115919, -0.992472,
		0.959446, -0.273035, -0.070110,
		21.657215, 16.875980, 13.799609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.988621, 16.508514, 13.306529>,  <20.985603, 17.067106, 13.848686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.988621, 16.508514, 13.306529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.329845, 16.473577, 13.512307>,  <21.534580, 16.452616, 13.635774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.329845, 16.473577, 13.512307>,  <20.988621, 16.508514, 13.306529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.329845, 16.473577, 13.512307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002243, -0.986497, -0.163766,
		0.521802, 0.138549, -0.841740,
		0.853064, -0.087341, 0.514446,
		21.585764, 16.447374, 13.666641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.289549, 15.942943, 12.970042>,  <20.988621, 16.508514, 13.306529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.289549, 15.942943, 12.970042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.469921, 16.012054, 13.320312>,  <21.578144, 16.053522, 13.530475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.469921, 16.012054, 13.320312>,  <21.289549, 15.942943, 12.970042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.469921, 16.012054, 13.320312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167040, -0.980087, 0.107364,
		0.876790, 0.097859, -0.470812,
		0.450930, 0.172780, 0.875676,
		21.605200, 16.063889, 13.583015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.078531, 15.834024, 12.912830>,  <21.289549, 15.942943, 12.970042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.078531, 15.834024, 12.912830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.836218, 15.752516, 13.220468>,  <21.690830, 15.703610, 13.405049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.836218, 15.752516, 13.220468>,  <22.078531, 15.834024, 12.912830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.836218, 15.752516, 13.220468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052977, -0.974832, -0.216556,
		0.793864, -0.090441, 0.601332,
		-0.605783, -0.203773, 0.769093,
		21.654484, 15.691384, 13.451196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.384525, 15.348208, 13.313059>,  <22.078531, 15.834024, 12.912830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.384525, 15.348208, 13.313059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.991600, 15.333727, 13.386549>,  <21.755846, 15.325038, 13.430643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.991600, 15.333727, 13.386549>,  <22.384525, 15.348208, 13.313059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.991600, 15.333727, 13.386549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034483, -0.929381, -0.367507,
		0.184055, -0.367342, 0.911693,
		-0.982311, -0.036203, 0.183725,
		21.696907, 15.322865, 13.441667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.145901, 15.268429, 13.312897>,  <22.384525, 15.348208, 13.313059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.145901, 15.268429, 13.312897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.462000, 15.224626, 13.554066>,  <23.651659, 15.198343, 13.698768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.462000, 15.224626, 13.554066>,  <23.145901, 15.268429, 13.312897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.462000, 15.224626, 13.554066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516797, 0.647807, -0.559702,
		-0.329285, 0.753892, 0.568522,
		0.790248, -0.109509, 0.602923,
		23.699074, 15.191772, 13.734942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.445959, 16.003407, 13.622305>,  <23.145901, 15.268429, 13.312897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.445959, 16.003407, 13.622305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.721453, 15.715067, 13.591265>,  <23.886749, 15.542064, 13.572640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.721453, 15.715067, 13.591265>,  <23.445959, 16.003407, 13.622305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.721453, 15.715067, 13.591265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554947, 0.593031, -0.583394,
		0.466558, 0.358740, 0.808474,
		0.688736, -0.720847, -0.077601,
		23.928074, 15.498813, 13.567985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.005228, 16.375164, 13.704050>,  <23.445959, 16.003407, 13.622305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.005228, 16.375164, 13.704050> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.154984, 16.037834, 13.549838>,  <24.244837, 15.835436, 13.457311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.154984, 16.037834, 13.549838>,  <24.005228, 16.375164, 13.704050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.154984, 16.037834, 13.549838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468615, 0.530843, -0.706120,
		0.800146, 0.083698, 0.593937,
		0.374389, -0.843327, -0.385529,
		24.267300, 15.784836, 13.434179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.669950, 16.565666, 13.626884>,  <24.005228, 16.375164, 13.704050>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.669950, 16.565666, 13.626884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.608170, 16.256071, 13.381253>,  <24.571100, 16.070314, 13.233875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.608170, 16.256071, 13.381253>,  <24.669950, 16.565666, 13.626884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.608170, 16.256071, 13.381253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662313, 0.380090, -0.645657,
		0.733134, -0.506434, 0.453915,
		-0.154454, -0.773987, -0.614075,
		24.561832, 16.023874, 13.197031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.345289, 16.249598, 13.543406>,  <24.669950, 16.565666, 13.626884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.345289, 16.249598, 13.543406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.097189, 16.157690, 13.243407>,  <24.948328, 16.102547, 13.063408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.097189, 16.157690, 13.243407>,  <25.345289, 16.249598, 13.543406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.097189, 16.157690, 13.243407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678115, 0.323525, -0.659918,
		0.394270, -0.917899, -0.044858,
		-0.620250, -0.229767, -0.749998,
		24.911114, 16.088760, 13.018408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.728540, 15.785071, 13.111472>,  <25.345289, 16.249598, 13.543406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.728540, 15.785071, 13.111472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.450153, 15.953659, 12.878922>,  <25.283121, 16.054811, 12.739393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.450153, 15.953659, 12.878922>,  <25.728540, 15.785071, 13.111472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.450153, 15.953659, 12.878922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672638, 0.099221, -0.733289,
		-0.251375, -0.901398, -0.352551,
		-0.695966, 0.421470, -0.581373,
		25.241364, 16.080099, 12.704511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.010983, 15.666785, 12.436567>,  <25.728540, 15.785071, 13.111472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.010983, 15.666785, 12.436567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.699072, 15.908685, 12.371792>,  <25.511925, 16.053825, 12.332927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.699072, 15.908685, 12.371792>,  <26.010983, 15.666785, 12.436567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.699072, 15.908685, 12.371792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403489, 0.287683, -0.868583,
		-0.478688, -0.742642, -0.468338,
		-0.779779, 0.604749, -0.161938,
		25.465137, 16.090109, 12.323211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.843054, 15.659454, 11.670330>,  <26.010983, 15.666785, 12.436567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.843054, 15.659454, 11.670330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.725748, 16.020445, 11.796525>,  <25.655365, 16.237040, 11.872242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.725748, 16.020445, 11.796525>,  <25.843054, 15.659454, 11.670330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.725748, 16.020445, 11.796525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537652, 0.428555, -0.726134,
		-0.790522, -0.043328, -0.610899,
		-0.293266, 0.902476, 0.315487,
		25.637768, 16.291187, 11.891171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.615705, 15.954150, 11.061991>,  <25.843054, 15.659454, 11.670330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.615705, 15.954150, 11.061991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.697742, 16.246353, 11.322543>,  <25.746964, 16.421675, 11.478875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.697742, 16.246353, 11.322543>,  <25.615705, 15.954150, 11.061991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.697742, 16.246353, 11.322543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508232, 0.489281, -0.708734,
		-0.836444, 0.476408, -0.270920,
		0.205091, 0.730507, 0.651382,
		25.759270, 16.465506, 11.517958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.742012, 16.525011, 10.624963>,  <25.615705, 15.954150, 11.061991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.742012, 16.525011, 10.624963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.869724, 16.696503, 10.963017>,  <25.946352, 16.799397, 11.165849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.869724, 16.696503, 10.963017>,  <25.742012, 16.525011, 10.624963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.869724, 16.696503, 10.963017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644969, 0.555090, -0.525252,
		-0.694316, 0.712788, -0.099286,
		0.319281, 0.428728, 0.845134,
		25.965509, 16.825121, 11.216557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.756287, 17.249046, 10.506580>,  <25.742012, 16.525011, 10.624963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.756287, 17.249046, 10.506580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.010740, 17.200651, 10.811395>,  <26.163412, 17.171614, 10.994284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.010740, 17.200651, 10.811395>,  <25.756287, 17.249046, 10.506580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.010740, 17.200651, 10.811395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601309, 0.696609, -0.391361,
		-0.483491, 0.707176, 0.515886,
		0.636132, -0.120987, 0.762036,
		26.201580, 17.164354, 11.040006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.981321, 17.914330, 10.600075>,  <25.756287, 17.249046, 10.506580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.981321, 17.914330, 10.600075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.255196, 17.682541, 10.776898>,  <26.419519, 17.543468, 10.882993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.255196, 17.682541, 10.776898>,  <25.981321, 17.914330, 10.600075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.255196, 17.682541, 10.776898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728217, 0.568946, -0.382101,
		-0.030091, 0.583535, 0.811531,
		0.684686, -0.579472, 0.442060,
		26.460602, 17.508699, 10.909516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.389917, 18.413033, 10.934602>,  <25.981321, 17.914330, 10.600075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.389917, 18.413033, 10.934602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.624695, 18.090029, 10.911187>,  <26.765560, 17.896227, 10.897139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.624695, 18.090029, 10.911187>,  <26.389917, 18.413033, 10.934602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.624695, 18.090029, 10.911187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711830, 0.549139, -0.437887,
		0.385743, 0.215346, 0.897122,
		0.586942, -0.807510, -0.058537,
		26.800777, 17.847776, 10.893626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.108196, 18.647696, 11.165289>,  <26.389917, 18.413033, 10.934602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.108196, 18.647696, 11.165289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.129305, 18.306982, 10.956796>,  <27.141970, 18.102554, 10.831700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.129305, 18.306982, 10.956796>,  <27.108196, 18.647696, 11.165289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.129305, 18.306982, 10.956796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839309, 0.320650, -0.439026,
		0.541087, -0.414307, 0.731829,
		0.052769, -0.851782, -0.521232,
		27.145136, 18.051447, 10.800426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.768032, 18.569536, 11.070818>,  <27.108196, 18.647696, 11.165289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.768032, 18.569536, 11.070818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.656748, 18.308369, 10.789024>,  <27.589977, 18.151669, 10.619948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.656748, 18.308369, 10.789024>,  <27.768032, 18.569536, 11.070818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.656748, 18.308369, 10.789024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851058, 0.172468, -0.495939,
		0.445308, -0.737533, 0.507688,
		-0.278211, -0.652917, -0.704484,
		27.573284, 18.112494, 10.577679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.411001, 18.170366, 10.793511>,  <27.768032, 18.569536, 11.070818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.411001, 18.170366, 10.793511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.131603, 18.156771, 10.507588>,  <27.963964, 18.148613, 10.336035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.131603, 18.156771, 10.507588>,  <28.411001, 18.170366, 10.793511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.131603, 18.156771, 10.507588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675063, 0.300180, -0.673930,
		0.237475, -0.953277, -0.186733,
		-0.698495, -0.033985, -0.714807,
		27.922054, 18.146574, 10.293146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699472, 17.817768, 10.236270>,  <28.411001, 18.170366, 10.793511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.699472, 17.817768, 10.236270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.387915, 18.035852, 10.112290>,  <28.200979, 18.166702, 10.037903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.387915, 18.035852, 10.112290>,  <28.699472, 17.817768, 10.236270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.387915, 18.035852, 10.112290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586154, 0.457102, -0.668940,
		-0.223034, -0.702712, -0.675611,
		-0.778896, 0.545209, -0.309949,
		28.154245, 18.199415, 10.019305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<16.828619, 17.785009, 20.121090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.461813, 17.627327, 20.096813>,  <16.241730, 17.532717, 20.082247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.461813, 17.627327, 20.096813>,  <16.828619, 17.785009, 20.121090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.461813, 17.627327, 20.096813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275961, -0.517222, -0.810141,
		0.287972, -0.759660, 0.583086,
		-0.917016, -0.394206, -0.060691,
		16.186708, 17.509066, 20.078606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.896484, 17.170374, 20.179636>,  <16.828619, 17.785009, 20.121090>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.896484, 17.170374, 20.179636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.542355, 17.193039, 19.995031>,  <16.329876, 17.206638, 19.884270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.542355, 17.193039, 19.995031>,  <16.896484, 17.170374, 20.179636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.542355, 17.193039, 19.995031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378610, -0.488329, -0.786250,
		-0.269918, -0.870818, 0.410877,
		-0.885324, 0.056661, -0.461509,
		16.276758, 17.210037, 19.856579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.948744, 16.617079, 19.758694>,  <16.896484, 17.170374, 20.179636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.948744, 16.617079, 19.758694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.627888, 16.795633, 19.600044>,  <16.435373, 16.902765, 19.504854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.627888, 16.795633, 19.600044>,  <16.948744, 16.617079, 19.758694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.627888, 16.795633, 19.600044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126857, -0.521660, -0.843669,
		-0.583504, -0.727056, 0.361818,
		-0.802141, 0.446386, -0.396623,
		16.387245, 16.929548, 19.481058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.643818, 16.060823, 19.349585>,  <16.948744, 16.617079, 19.758694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.643818, 16.060823, 19.349585> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.575758, 16.436888, 19.231501>,  <16.534922, 16.662525, 19.160650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.575758, 16.436888, 19.231501>,  <16.643818, 16.060823, 19.349585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.575758, 16.436888, 19.231501> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330199, -0.227865, -0.915995,
		-0.928449, -0.253335, -0.271668,
		-0.170150, 0.940159, -0.295212,
		16.524714, 16.718935, 19.142937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.171431, 15.964935, 18.789719>,  <16.643818, 16.060823, 19.349585>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.171431, 15.964935, 18.789719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.317488, 16.330692, 18.719797>,  <16.405123, 16.550146, 18.677845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.317488, 16.330692, 18.719797>,  <16.171431, 15.964935, 18.789719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.317488, 16.330692, 18.719797> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095818, -0.223686, -0.969940,
		-0.926006, 0.337419, -0.169293,
		0.365145, 0.914392, -0.174804,
		16.427031, 16.605009, 18.667356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.995514, 16.099648, 18.142065>,  <16.171431, 15.964935, 18.789719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.995514, 16.099648, 18.142065> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.285437, 16.370567, 18.192537>,  <16.459391, 16.533119, 18.222820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.285437, 16.370567, 18.192537>,  <15.995514, 16.099648, 18.142065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.285437, 16.370567, 18.192537> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106354, 0.070958, -0.991793,
		-0.680694, 0.732279, -0.020603,
		0.724807, 0.677299, 0.126181,
		16.502878, 16.573757, 18.230392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.863603, 16.566736, 17.622467>,  <15.995514, 16.099648, 18.142065>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.863603, 16.566736, 17.622467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.245623, 16.635536, 17.719046>,  <16.474834, 16.676817, 17.776993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.245623, 16.635536, 17.719046>,  <15.863603, 16.566736, 17.622467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.245623, 16.635536, 17.719046> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208810, 0.187817, -0.959752,
		-0.210424, 0.967027, 0.143459,
		0.955050, 0.171999, 0.241446,
		16.532137, 16.687136, 17.791479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.100487, 17.170235, 17.258018>,  <15.863603, 16.566736, 17.622467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.100487, 17.170235, 17.258018> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.448410, 16.979853, 17.310019>,  <16.657164, 16.865623, 17.341219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.448410, 16.979853, 17.310019>,  <16.100487, 17.170235, 17.258018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.448410, 16.979853, 17.310019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237535, 0.173021, -0.955845,
		0.432448, 0.862281, 0.263552,
		0.869807, -0.475957, 0.130000,
		16.709352, 16.837065, 17.349018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.631536, 17.635542, 16.972179>,  <16.100487, 17.170235, 17.258018>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.631536, 17.635542, 16.972179> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.774426, 17.262260, 16.987785>,  <16.860159, 17.038292, 16.997149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.774426, 17.262260, 16.987785>,  <16.631536, 17.635542, 16.972179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.774426, 17.262260, 16.987785> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285623, 0.069371, -0.955828,
		0.889276, 0.352588, 0.291325,
		0.357223, -0.933204, 0.039017,
		16.881592, 16.982300, 16.999491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.131990, 17.577829, 16.397436>,  <16.631536, 17.635542, 16.972179>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.131990, 17.577829, 16.397436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.094612, 17.191271, 16.493227>,  <17.072186, 16.959335, 16.550701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.094612, 17.191271, 16.493227>,  <17.131990, 17.577829, 16.397436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.094612, 17.191271, 16.493227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468966, -0.254899, -0.845634,
		0.878259, 0.033284, 0.477026,
		-0.093448, -0.966395, 0.239476,
		17.066578, 16.901352, 16.565069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.810953, 17.322140, 16.218998>,  <17.131990, 17.577829, 16.397436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.810953, 17.322140, 16.218998> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.526201, 17.042009, 16.240049>,  <17.355350, 16.873932, 16.252680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.526201, 17.042009, 16.240049>,  <17.810953, 17.322140, 16.218998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.526201, 17.042009, 16.240049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336870, -0.406259, -0.849395,
		0.616234, -0.586939, 0.525127,
		-0.711880, -0.700326, 0.052628,
		17.312637, 16.831911, 16.255838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.104328, 16.653511, 16.113070>,  <17.810953, 17.322140, 16.218998>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.104328, 16.653511, 16.113070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.717270, 16.614162, 16.020134>,  <17.485035, 16.590553, 15.964373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.717270, 16.614162, 16.020134>,  <18.104328, 16.653511, 16.113070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.717270, 16.614162, 16.020134> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247988, -0.540453, -0.803998,
		-0.046476, -0.835604, 0.547364,
		-0.967647, -0.098373, -0.232338,
		17.426975, 16.584650, 15.950433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.615494, 16.263884, 15.739592>,  <18.104328, 16.653511, 16.113070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.615494, 16.263884, 15.739592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.676716, 15.932498, 15.524104>,  <18.713449, 15.733666, 15.394812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.676716, 15.932498, 15.524104>,  <18.615494, 16.263884, 15.739592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.676716, 15.932498, 15.524104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911606, -0.092093, 0.400616,
		-0.381510, -0.552415, 0.741139,
		0.153053, -0.828466, -0.538720,
		18.722631, 15.683958, 15.362488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.958876, 15.691773, 16.136621>,  <18.615494, 16.263884, 15.739592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.958876, 15.691773, 16.136621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.094965, 15.647218, 15.763132>,  <19.176619, 15.620484, 15.539039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.094965, 15.647218, 15.763132>,  <18.958876, 15.691773, 16.136621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.094965, 15.647218, 15.763132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932499, -0.088027, 0.350280,
		-0.121210, -0.989870, 0.073922,
		0.340225, -0.111390, -0.933723,
		19.197033, 15.613801, 15.483015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.061958, 15.192656, 16.604496>,  <18.958876, 15.691773, 16.136621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.061958, 15.192656, 16.604496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.356228, 14.959440, 16.466595>,  <19.532789, 14.819511, 16.383854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.356228, 14.959440, 16.466595>,  <19.061958, 15.192656, 16.604496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.356228, 14.959440, 16.466595> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174033, -0.654599, 0.735672,
		-0.654599, -0.481215, -0.583037,
		-0.735672, 0.583037, 0.344753,
		19.576929, 14.784529, 16.363169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.716656, 14.567463, 16.462551>,  <19.061958, 15.192656, 16.604496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.716656, 14.567463, 16.462551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.094189, 14.446507, 16.515833>,  <19.320707, 14.373933, 16.547802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.094189, 14.446507, 16.515833>,  <18.716656, 14.567463, 16.462551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.094189, 14.446507, 16.515833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310493, -0.673728, 0.670586,
		-0.113037, -0.674278, -0.729775,
		0.943831, -0.302391, 0.133203,
		19.377338, 14.355789, 16.555794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.783649, 13.849172, 16.245123>,  <18.716656, 14.567463, 16.462551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.783649, 13.849172, 16.245123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.050468, 13.942086, 16.528275>,  <19.210560, 13.997835, 16.698166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.050468, 13.942086, 16.528275>,  <18.783649, 13.849172, 16.245123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.050468, 13.942086, 16.528275> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450796, -0.630632, 0.631732,
		0.593155, -0.740504, -0.315946,
		0.667046, 0.232288, 0.707879,
		19.250582, 14.011772, 16.740639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.802235, 13.233369, 16.630562>,  <18.783649, 13.849172, 16.245123>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.802235, 13.233369, 16.630562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.009802, 13.493894, 16.852018>,  <19.134342, 13.650208, 16.984892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.009802, 13.493894, 16.852018>,  <18.802235, 13.233369, 16.630562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.009802, 13.493894, 16.852018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368401, -0.414039, 0.832378,
		0.771365, -0.635898, 0.025091,
		0.518918, 0.651311, 0.553640,
		19.165478, 13.689287, 17.018110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.937269, 12.815464, 17.193306>,  <18.802235, 13.233369, 16.630562>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.937269, 12.815464, 17.193306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.960079, 13.199457, 17.302982>,  <18.973766, 13.429853, 17.368788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.960079, 13.199457, 17.302982>,  <18.937269, 12.815464, 17.193306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.960079, 13.199457, 17.302982> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538020, -0.201798, 0.818421,
		0.841001, -0.194192, 0.504982,
		0.057027, 0.959983, 0.274191,
		18.977188, 13.487453, 17.385241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.791019, 12.813318, 17.919680>,  <18.937269, 12.815464, 17.193306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.791019, 12.813318, 17.919680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.835436, 13.207580, 17.868834>,  <18.862085, 13.444137, 17.838326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.835436, 13.207580, 17.868834>,  <18.791019, 12.813318, 17.919680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.835436, 13.207580, 17.868834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342298, 0.158013, 0.926209,
		0.933007, -0.059337, 0.354933,
		0.111043, 0.985653, -0.127116,
		18.868750, 13.503275, 17.830698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.177694, 12.986962, 18.487103>,  <18.791019, 12.813318, 17.919680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.177694, 12.986962, 18.487103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.963175, 13.290261, 18.338810>,  <18.834463, 13.472240, 18.249834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.963175, 13.290261, 18.338810>,  <19.177694, 12.986962, 18.487103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.963175, 13.290261, 18.338810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389876, 0.167019, 0.905595,
		0.748584, 0.630211, 0.206050,
		-0.536301, 0.758247, -0.370732,
		18.802284, 13.517735, 18.227591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.263821, 13.472099, 18.909916>,  <19.177694, 12.986962, 18.487103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.263821, 13.472099, 18.909916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.922169, 13.549907, 18.716991>,  <18.717178, 13.596591, 18.601236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.922169, 13.549907, 18.716991>,  <19.263821, 13.472099, 18.909916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.922169, 13.549907, 18.716991> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420113, 0.288574, 0.860366,
		0.306540, 0.937490, -0.164759,
		-0.854130, 0.194519, -0.482312,
		18.665930, 13.608263, 18.572298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.989552, 14.116882, 19.255074>,  <19.263821, 13.472099, 18.909916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.989552, 14.116882, 19.255074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.674837, 13.930463, 19.093203>,  <18.486008, 13.818611, 18.996080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.674837, 13.930463, 19.093203>,  <18.989552, 14.116882, 19.255074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.674837, 13.930463, 19.093203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534523, 0.186644, 0.824287,
		-0.308627, 0.864849, -0.395962,
		-0.786788, -0.466048, -0.404678,
		18.438801, 13.790648, 18.971800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.432436, 14.638165, 19.252199>,  <18.989552, 14.116882, 19.255074>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.432436, 14.638165, 19.252199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.251057, 14.286755, 19.192095>,  <18.142229, 14.075909, 19.156033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.251057, 14.286755, 19.192095>,  <18.432436, 14.638165, 19.252199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.251057, 14.286755, 19.192095> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557698, 0.148165, 0.816713,
		-0.695239, 0.454137, -0.557137,
		-0.453448, -0.878525, -0.150261,
		18.115023, 14.023197, 19.147017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.746843, 14.812273, 19.268784>,  <18.432436, 14.638165, 19.252199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.746843, 14.812273, 19.268784> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.774170, 14.419127, 19.337263>,  <17.790565, 14.183239, 19.378351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.774170, 14.419127, 19.337263>,  <17.746843, 14.812273, 19.268784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.774170, 14.419127, 19.337263> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619992, 0.092616, 0.779123,
		-0.781629, -0.159367, -0.603041,
		0.068315, -0.982866, 0.171197,
		17.794664, 14.124267, 19.388622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.085339, 14.622118, 19.351469>,  <17.746843, 14.812273, 19.268784>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.085339, 14.622118, 19.351469> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.291195, 14.335014, 19.539072>,  <17.414709, 14.162752, 19.651634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.291195, 14.335014, 19.539072>,  <17.085339, 14.622118, 19.351469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.291195, 14.335014, 19.539072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565896, 0.126599, 0.814699,
		-0.644134, -0.684685, -0.341025,
		0.514639, -0.717760, 0.469008,
		17.445587, 14.119686, 19.679775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.563606, 14.168418, 19.566015>,  <17.085339, 14.622118, 19.351469>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.563606, 14.168418, 19.566015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.888435, 14.073616, 19.779320>,  <17.083332, 14.016735, 19.907303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.888435, 14.073616, 19.779320>,  <16.563606, 14.168418, 19.566015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.888435, 14.073616, 19.779320> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491372, 0.215225, 0.843938,
		-0.314788, -0.947368, 0.058321,
		0.812073, -0.237004, 0.533261,
		17.132057, 14.002515, 19.939299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.287086, 13.756818, 20.147614>,  <16.563606, 14.168418, 19.566015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.287086, 13.756818, 20.147614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.654526, 13.879565, 20.247223>,  <16.874989, 13.953214, 20.306988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.654526, 13.879565, 20.247223>,  <16.287086, 13.756818, 20.147614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.654526, 13.879565, 20.247223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300856, 0.134430, 0.944147,
		0.256252, -0.942211, 0.215810,
		0.918597, 0.306867, 0.249022,
		16.930105, 13.971625, 20.321930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.348976, 12.981477, 19.910975>,  <16.287086, 13.756818, 20.147614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.348976, 12.981477, 19.910975> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.113720, 12.673167, 20.008955>,  <15.972567, 12.488182, 20.067743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.113720, 12.673167, 20.008955>,  <16.348976, 12.981477, 19.910975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.113720, 12.673167, 20.008955> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154387, -0.190306, -0.969510,
		0.793888, -0.608024, -0.007071,
		-0.588139, -0.770773, 0.244952,
		15.937278, 12.441936, 20.082441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.664509, 12.454388, 19.575178>,  <16.348976, 12.981477, 19.910975>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.664509, 12.454388, 19.575178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.294683, 12.330745, 19.664295>,  <16.072788, 12.256559, 19.717766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.294683, 12.330745, 19.664295>,  <16.664509, 12.454388, 19.575178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.294683, 12.330745, 19.664295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185252, -0.146290, -0.971741,
		0.332965, -0.939708, 0.077992,
		-0.924563, -0.309107, 0.222793,
		16.017315, 12.238012, 19.731133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.516594, 11.825297, 19.195621>,  <16.664509, 12.454388, 19.575178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.516594, 11.825297, 19.195621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.146399, 11.953532, 19.276312>,  <15.924281, 12.030474, 19.324726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.146399, 11.953532, 19.276312>,  <16.516594, 11.825297, 19.195621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.146399, 11.953532, 19.276312> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307389, -0.324512, -0.894541,
		-0.221317, -0.889896, 0.398878,
		-0.925489, 0.320588, 0.201724,
		15.868752, 12.049708, 19.336828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.085224, 11.318378, 18.851059>,  <16.516594, 11.825297, 19.195621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.085224, 11.318378, 18.851059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.836704, 11.621302, 18.931528>,  <15.687593, 11.803056, 18.979809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.836704, 11.621302, 18.931528>,  <16.085224, 11.318378, 18.851059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.836704, 11.621302, 18.931528> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380113, -0.066787, -0.922526,
		-0.685201, -0.649633, 0.329358,
		-0.621300, 0.757309, 0.201172,
		15.650314, 11.848495, 18.991880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.438869, 11.209906, 18.592157>,  <16.085224, 11.318378, 18.851059>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.438869, 11.209906, 18.592157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.456295, 11.608717, 18.617577>,  <15.466750, 11.848003, 18.632828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.456295, 11.608717, 18.617577>,  <15.438869, 11.209906, 18.592157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.456295, 11.608717, 18.617577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338362, 0.074574, -0.938056,
		-0.940007, 0.019362, 0.340605,
		0.043563, 0.997027, 0.063549,
		15.469364, 11.907825, 18.636641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.769856, 11.528170, 18.448711>,  <15.438869, 11.209906, 18.592157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.769856, 11.528170, 18.448711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.072170, 11.778705, 18.372299>,  <15.253558, 11.929026, 18.326452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.072170, 11.778705, 18.372299>,  <14.769856, 11.528170, 18.448711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.072170, 11.778705, 18.372299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385142, 0.189256, -0.903243,
		-0.529582, 0.756229, 0.384266,
		0.755783, 0.626338, -0.191029,
		15.298905, 11.966606, 18.314991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.447279, 12.051410, 18.149197>,  <14.769856, 11.528170, 18.448711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.447279, 12.051410, 18.149197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.825578, 12.128717, 18.044729>,  <15.052557, 12.175102, 17.982048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.825578, 12.128717, 18.044729>,  <14.447279, 12.051410, 18.149197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.825578, 12.128717, 18.044729> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297357, 0.190966, -0.935473,
		-0.130924, 0.962382, 0.238076,
		0.945747, 0.193270, -0.261169,
		15.109302, 12.186698, 17.966379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.370751, 12.629632, 17.854734>,  <14.447279, 12.051410, 18.149197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.370751, 12.629632, 17.854734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.717230, 12.478435, 17.723999>,  <14.925117, 12.387716, 17.645557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.717230, 12.478435, 17.723999>,  <14.370751, 12.629632, 17.854734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.717230, 12.478435, 17.723999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270017, 0.196305, -0.942632,
		0.420469, 0.904757, 0.067974,
		0.866196, -0.377994, -0.326840,
		14.977089, 12.365036, 17.625946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.606426, 13.125821, 17.318607>,  <14.370751, 12.629632, 17.854734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.606426, 13.125821, 17.318607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.825703, 12.796144, 17.261766>,  <14.957269, 12.598338, 17.227661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.825703, 12.796144, 17.261766>,  <14.606426, 13.125821, 17.318607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.825703, 12.796144, 17.261766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097149, 0.106009, -0.989608,
		0.830691, 0.556300, -0.021956,
		0.548191, -0.824192, -0.142105,
		14.990160, 12.548887, 17.219135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.112925, 13.387597, 16.968136>,  <14.606426, 13.125821, 17.318607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.112925, 13.387597, 16.968136> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.089604, 12.994995, 16.895199>,  <15.075612, 12.759434, 16.851437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.089604, 12.994995, 16.895199>,  <15.112925, 13.387597, 16.968136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.089604, 12.994995, 16.895199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076171, 0.186495, -0.979499,
		0.995389, -0.043217, -0.085635,
		-0.058301, -0.981505, -0.182343,
		15.072114, 12.700543, 16.840496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.544594, 13.305092, 16.349651>,  <15.112925, 13.387597, 16.968136>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.544594, 13.305092, 16.349651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.346368, 12.957664, 16.350660>,  <15.227432, 12.749208, 16.351265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.346368, 12.957664, 16.350660>,  <15.544594, 13.305092, 16.349651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.346368, 12.957664, 16.350660> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081991, 0.043891, -0.995666,
		0.864692, -0.493624, -0.092966,
		-0.495565, -0.868567, 0.002521,
		15.197699, 12.697094, 16.351416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.809272, 12.913232, 15.804877>,  <15.544594, 13.305092, 16.349651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.809272, 12.913232, 15.804877> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.468095, 12.708025, 15.843458>,  <15.263389, 12.584901, 15.866607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.468095, 12.708025, 15.843458>,  <15.809272, 12.913232, 15.804877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.468095, 12.708025, 15.843458> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194546, 0.140950, -0.970714,
		0.484399, -0.846726, -0.220028,
		-0.852941, -0.513019, 0.096452,
		15.212213, 12.554119, 15.872394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<12.844467, 13.653007, 24.970898> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.213653, 13.792310, 25.036448>,  <13.435163, 13.875892, 25.075777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.213653, 13.792310, 25.036448>,  <12.844467, 13.653007, 24.970898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.213653, 13.792310, 25.036448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302379, -0.392673, -0.868547,
		-0.238130, 0.851190, -0.467729,
		0.922963, 0.348258, 0.163875,
		13.490541, 13.896788, 25.085609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.974072, 14.105098, 24.368912>,  <12.844467, 13.653007, 24.970898>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.974072, 14.105098, 24.368912> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.319559, 13.987926, 24.532953>,  <13.526852, 13.917624, 24.631378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.319559, 13.987926, 24.532953>,  <12.974072, 14.105098, 24.368912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.319559, 13.987926, 24.532953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269200, -0.419764, -0.866792,
		0.426054, 0.859064, -0.283702,
		0.863718, -0.292927, 0.410102,
		13.578674, 13.900048, 24.655985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.538825, 14.351209, 23.886545>,  <12.974072, 14.105098, 24.368912>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.538825, 14.351209, 23.886545> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.751583, 14.112510, 24.126871>,  <13.879238, 13.969291, 24.271067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.751583, 14.112510, 24.126871>,  <13.538825, 14.351209, 23.886545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.751583, 14.112510, 24.126871> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478419, -0.373657, -0.794667,
		0.698714, 0.710122, 0.086748,
		0.531896, -0.596747, 0.600816,
		13.911152, 13.933486, 24.307116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.254125, 14.412332, 23.672119>,  <13.538825, 14.351209, 23.886545>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.254125, 14.412332, 23.672119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.184562, 14.052527, 23.832438>,  <14.142824, 13.836645, 23.928629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.184562, 14.052527, 23.832438>,  <14.254125, 14.412332, 23.672119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.184562, 14.052527, 23.832438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482706, -0.432616, -0.761471,
		0.858342, 0.061043, 0.509434,
		-0.173906, -0.899510, 0.400798,
		14.132390, 13.782675, 23.952677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.921983, 14.156623, 23.816280>,  <14.254125, 14.412332, 23.672119>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.921983, 14.156623, 23.816280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.677440, 13.840398, 23.802130>,  <14.530714, 13.650662, 23.793640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.677440, 13.840398, 23.802130>,  <14.921983, 14.156623, 23.816280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.677440, 13.840398, 23.802130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602401, -0.435929, -0.668639,
		0.513180, -0.430089, 0.742745,
		-0.611358, -0.790563, -0.035376,
		14.494032, 13.603229, 23.791517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.289220, 13.620175, 23.882875>,  <14.921983, 14.156623, 23.816280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.289220, 13.620175, 23.882875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.958427, 13.457468, 23.727625>,  <14.759952, 13.359844, 23.634474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.958427, 13.457468, 23.727625>,  <15.289220, 13.620175, 23.882875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.958427, 13.457468, 23.727625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554302, -0.474363, -0.683908,
		0.094079, -0.780718, 0.617761,
		-0.826982, -0.406768, -0.388126,
		14.710333, 13.335438, 23.611187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.502689, 12.825889, 23.699011>,  <15.289220, 13.620175, 23.882875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.502689, 12.825889, 23.699011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.185293, 12.945470, 23.486973>,  <14.994856, 13.017219, 23.359751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.185293, 12.945470, 23.486973>,  <15.502689, 12.825889, 23.699011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.185293, 12.945470, 23.486973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298994, -0.567161, -0.767418,
		-0.530067, -0.767436, 0.360655,
		-0.793493, 0.298949, -0.530092,
		14.947247, 13.035156, 23.327944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.279941, 12.251252, 23.377533>,  <15.502689, 12.825889, 23.699011>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.279941, 12.251252, 23.377533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.136607, 12.546736, 23.149179>,  <15.050608, 12.724026, 23.012167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.136607, 12.546736, 23.149179>,  <15.279941, 12.251252, 23.377533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.136607, 12.546736, 23.149179> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228496, -0.523498, -0.820816,
		-0.905200, -0.424570, 0.018795,
		-0.358333, 0.738709, -0.570883,
		15.029107, 12.768349, 22.977915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.944569, 11.912848, 22.884098>,  <15.279941, 12.251252, 23.377533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.944569, 11.912848, 22.884098> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.990968, 12.273434, 22.717287>,  <15.018807, 12.489784, 22.617201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.990968, 12.273434, 22.717287>,  <14.944569, 11.912848, 22.884098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.990968, 12.273434, 22.717287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216676, -0.432714, -0.875106,
		-0.969328, 0.011150, -0.245519,
		0.115997, 0.901462, -0.417026,
		15.025766, 12.543873, 22.592178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.553964, 11.927921, 22.181484>,  <14.944569, 11.912848, 22.884098>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.553964, 11.927921, 22.181484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.822303, 12.222023, 22.142776>,  <14.983306, 12.398484, 22.119551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.822303, 12.222023, 22.142776>,  <14.553964, 11.927921, 22.181484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.822303, 12.222023, 22.142776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253813, -0.350247, -0.901613,
		-0.696808, 0.580283, -0.421580,
		0.670848, 0.735254, -0.096771,
		15.023557, 12.442599, 22.113745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.480506, 12.210195, 21.518705>,  <14.553964, 11.927921, 22.181484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.480506, 12.210195, 21.518705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.837624, 12.358613, 21.620878>,  <15.051894, 12.447664, 21.682182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.837624, 12.358613, 21.620878>,  <14.480506, 12.210195, 21.518705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.837624, 12.358613, 21.620878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324306, -0.135880, -0.936142,
		-0.312643, 0.918620, -0.241645,
		0.892793, 0.371045, 0.255432,
		15.105461, 12.469927, 21.697508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.651650, 12.633592, 20.971769>,  <14.480506, 12.210195, 21.518705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.651650, 12.633592, 20.971769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.010080, 12.579537, 21.140902>,  <15.225139, 12.547105, 21.242382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.010080, 12.579537, 21.140902>,  <14.651650, 12.633592, 20.971769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.010080, 12.579537, 21.140902> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410231, -0.111799, -0.905103,
		0.169583, 0.984500, -0.044744,
		0.896076, -0.135135, 0.422832,
		15.278903, 12.538997, 21.267752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.037833, 13.052324, 20.684280>,  <14.651650, 12.633592, 20.971769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.037833, 13.052324, 20.684280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.313693, 12.799001, 20.824739>,  <15.479209, 12.647007, 20.909016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.313693, 12.799001, 20.824739>,  <15.037833, 13.052324, 20.684280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.313693, 12.799001, 20.824739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291390, -0.201228, -0.935200,
		0.662931, 0.747281, 0.045763,
		0.689649, -0.633308, 0.351150,
		15.520588, 12.609009, 20.930084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.745255, 13.293964, 20.492327>,  <15.037833, 13.052324, 20.684280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.745255, 13.293964, 20.492327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.732166, 12.895033, 20.518448>,  <15.724313, 12.655674, 20.534121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.732166, 12.895033, 20.518448>,  <15.745255, 13.293964, 20.492327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.732166, 12.895033, 20.518448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469955, -0.073016, -0.879665,
		0.882084, 0.001904, 0.471089,
		-0.032722, -0.997329, 0.065301,
		15.722349, 12.595834, 20.538038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.402119, 13.418471, 20.810518>,  <15.745255, 13.293964, 20.492327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.402119, 13.418471, 20.810518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.643135, 13.736739, 20.785671>,  <16.787745, 13.927700, 20.770763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.643135, 13.736739, 20.785671>,  <16.402119, 13.418471, 20.810518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.643135, 13.736739, 20.785671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222279, 0.242057, 0.944458,
		0.766511, -0.555265, 0.322709,
		0.602539, 0.795669, -0.062116,
		16.823896, 13.975440, 20.767036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.686407, 13.426214, 21.418940>,  <16.402119, 13.418471, 20.810518>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.686407, 13.426214, 21.418940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.757500, 13.798943, 21.292372>,  <16.800156, 14.022580, 21.216431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.757500, 13.798943, 21.292372>,  <16.686407, 13.426214, 21.418940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.757500, 13.798943, 21.292372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346715, 0.360213, 0.866045,
		0.920978, -0.044215, 0.387097,
		0.177730, 0.931821, -0.316419,
		16.810818, 14.078489, 21.197447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.951427, 13.773915, 21.994989>,  <16.686407, 13.426214, 21.418940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.951427, 13.773915, 21.994989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.843287, 14.071034, 21.749989>,  <16.778402, 14.249306, 21.602987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.843287, 14.071034, 21.749989>,  <16.951427, 13.773915, 21.994989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.843287, 14.071034, 21.749989> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359788, 0.512152, 0.779906,
		0.893007, 0.431221, 0.128788,
		-0.270353, 0.742798, -0.612504,
		16.762180, 14.293874, 21.566238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.223360, 14.321803, 22.316290>,  <16.951427, 13.773915, 21.994989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.223360, 14.321803, 22.316290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.968500, 14.508157, 22.070690>,  <16.815584, 14.619969, 21.923330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.968500, 14.508157, 22.070690>,  <17.223360, 14.321803, 22.316290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.968500, 14.508157, 22.070690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353144, 0.531629, 0.769844,
		0.685077, 0.707335, -0.174202,
		-0.637148, 0.465884, -0.613998,
		16.777355, 14.647923, 21.886490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.385149, 15.056206, 22.384254>,  <17.223360, 14.321803, 22.316290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.385149, 15.056206, 22.384254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.019131, 15.048290, 22.223108>,  <16.799520, 15.043541, 22.126421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.019131, 15.048290, 22.223108>,  <17.385149, 15.056206, 22.384254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.019131, 15.048290, 22.223108> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320527, 0.641992, 0.696498,
		0.244853, 0.766456, -0.593795,
		-0.915046, -0.019788, -0.402863,
		16.744617, 15.042354, 22.102249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.109369, 15.693818, 22.445948>,  <17.385149, 15.056206, 22.384254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.109369, 15.693818, 22.445948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.781235, 15.466176, 22.423443>,  <16.584354, 15.329591, 22.409939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.781235, 15.466176, 22.423443>,  <17.109369, 15.693818, 22.445948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.781235, 15.466176, 22.423443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449848, 0.581411, 0.677937,
		-0.353105, 0.581447, -0.732964,
		-0.820337, -0.569106, -0.056264,
		16.535133, 15.295444, 22.406563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.570328, 16.188906, 22.441730>,  <17.109369, 15.693818, 22.445948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.570328, 16.188906, 22.441730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.418293, 15.836703, 22.555040>,  <16.327072, 15.625381, 22.623026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.418293, 15.836703, 22.555040>,  <16.570328, 16.188906, 22.441730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.418293, 15.836703, 22.555040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354975, 0.421664, 0.834382,
		-0.854124, 0.216582, -0.472826,
		-0.380085, -0.880507, 0.283272,
		16.304268, 15.572552, 22.640022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.868912, 16.244947, 22.431232>,  <16.570328, 16.188906, 22.441730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.868912, 16.244947, 22.431232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.972997, 15.952550, 22.683561>,  <16.035448, 15.777112, 22.834959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.972997, 15.952550, 22.683561>,  <15.868912, 16.244947, 22.431232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.972997, 15.952550, 22.683561> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337171, 0.543410, 0.768779,
		-0.904768, -0.412742, -0.105067,
		0.260213, -0.730992, 0.630824,
		16.051062, 15.733253, 22.872808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.370633, 16.361866, 22.869228>,  <15.868912, 16.244947, 22.431232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.370633, 16.361866, 22.869228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.650223, 16.149889, 23.061310>,  <15.817977, 16.022703, 23.176559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.650223, 16.149889, 23.061310>,  <15.370633, 16.361866, 22.869228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.650223, 16.149889, 23.061310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242053, 0.456534, 0.856147,
		-0.672938, -0.714659, 0.190832,
		0.698974, -0.529943, 0.480205,
		15.859915, 15.990906, 23.205372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.991760, 16.066376, 23.500959>,  <15.370633, 16.361866, 22.869228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.991760, 16.066376, 23.500959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.380992, 16.049931, 23.591667>,  <15.614532, 16.040064, 23.646091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.380992, 16.049931, 23.591667>,  <14.991760, 16.066376, 23.500959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.380992, 16.049931, 23.591667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197011, 0.362200, 0.911042,
		-0.119591, -0.931193, 0.344350,
		0.973080, -0.041111, 0.226771,
		15.672916, 16.037598, 23.659698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.994431, 15.839278, 24.176310>,  <14.991760, 16.066376, 23.500959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.994431, 15.839278, 24.176310> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.362370, 15.992073, 24.140608>,  <15.583134, 16.083750, 24.119186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.362370, 15.992073, 24.140608>,  <14.994431, 15.839278, 24.176310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.362370, 15.992073, 24.140608> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023919, 0.281718, 0.959199,
		0.391548, -0.880181, 0.268275,
		0.919847, 0.381989, -0.089253,
		15.638325, 16.106670, 24.113832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.364084, 15.567568, 24.699102>,  <14.994431, 15.839278, 24.176310>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.364084, 15.567568, 24.699102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.531272, 15.917042, 24.599522>,  <15.631584, 16.126726, 24.539774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.531272, 15.917042, 24.599522>,  <15.364084, 15.567568, 24.699102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.531272, 15.917042, 24.599522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062822, 0.301177, 0.951497,
		0.906287, -0.382056, 0.180769,
		0.417968, 0.873685, -0.248952,
		15.656662, 16.179148, 24.524836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.878466, 15.540448, 25.193054>,  <15.364084, 15.567568, 24.699102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.878466, 15.540448, 25.193054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.789949, 15.909026, 25.065325>,  <15.736839, 16.130173, 24.988688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.789949, 15.909026, 25.065325>,  <15.878466, 15.540448, 25.193054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.789949, 15.909026, 25.065325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211366, 0.274341, 0.938116,
		0.952026, 0.275091, 0.134053,
		-0.221291, 0.921445, -0.319325,
		15.723562, 16.185459, 24.969526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.298768, 15.255709, 25.504780>,  <15.878466, 15.540448, 25.193054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.298768, 15.255709, 25.504780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.250007, 15.470696, 25.838551>,  <15.220750, 15.599689, 26.038813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.250007, 15.470696, 25.838551>,  <15.298768, 15.255709, 25.504780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.250007, 15.470696, 25.838551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776438, 0.472061, -0.417495,
		-0.618291, -0.698775, 0.359765,
		-0.121904, 0.537468, 0.834426,
		15.213435, 15.631937, 26.088879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<7.997052, 16.938145, 23.371347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.352036, 16.835154, 23.524250>,  <8.565027, 16.773359, 23.615992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.352036, 16.835154, 23.524250>,  <7.997052, 16.938145, 23.371347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.352036, 16.835154, 23.524250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416958, 0.095153, -0.903931,
		0.196369, 0.961588, 0.191802,
		0.887460, -0.257477, 0.382257,
		8.618275, 16.757910, 23.638927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.570354, 17.519722, 23.170824>,  <7.997052, 16.938145, 23.371347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.570354, 17.519722, 23.170824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.773012, 17.188534, 23.266968>,  <8.894607, 16.989820, 23.324654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.773012, 17.188534, 23.266968>,  <8.570354, 17.519722, 23.170824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.773012, 17.188534, 23.266968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544495, 0.091130, -0.833799,
		0.668458, 0.553314, 0.496997,
		0.506644, -0.827973, 0.240361,
		8.925005, 16.940142, 23.339075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.272257, 17.520075, 22.787945>,  <8.570354, 17.519722, 23.170824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.272257, 17.520075, 22.787945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.227905, 17.133287, 22.879749>,  <9.201295, 16.901215, 22.934832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.227905, 17.133287, 22.879749>,  <9.272257, 17.520075, 22.787945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.227905, 17.133287, 22.879749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408359, -0.254868, -0.876519,
		0.906062, -0.003463, 0.423130,
		-0.110878, -0.966970, 0.229512,
		9.194642, 16.843197, 22.948603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.945959, 17.185228, 22.770491>,  <9.272257, 17.520075, 22.787945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.945959, 17.185228, 22.770491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.669370, 16.900335, 22.722178>,  <9.503416, 16.729399, 22.693190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.669370, 16.900335, 22.722178>,  <9.945959, 17.185228, 22.770491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.669370, 16.900335, 22.722178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442450, -0.285376, -0.850175,
		0.571054, -0.641315, 0.512458,
		-0.691473, -0.712233, -0.120785,
		9.461927, 16.686665, 22.685942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.317627, 16.611174, 22.542858>,  <9.945959, 17.185228, 22.770491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.317627, 16.611174, 22.542858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.944347, 16.500397, 22.451258>,  <9.720380, 16.433931, 22.396297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.944347, 16.500397, 22.451258>,  <10.317627, 16.611174, 22.542858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.944347, 16.500397, 22.451258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344335, -0.506790, -0.790314,
		0.102815, -0.816374, 0.568297,
		-0.933200, -0.276941, -0.229001,
		9.664388, 16.417315, 22.382557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.405224, 15.782495, 22.429848>,  <10.317627, 16.611174, 22.542858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.405224, 15.782495, 22.429848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.096984, 15.940410, 22.229719>,  <9.912040, 16.035158, 22.109642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.096984, 15.940410, 22.229719>,  <10.405224, 15.782495, 22.429848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.096984, 15.940410, 22.229719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303509, -0.462977, -0.832787,
		-0.560410, -0.793597, 0.236949,
		-0.770599, 0.394786, -0.500321,
		9.865804, 16.058846, 22.079622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.350614, 15.325915, 21.903841>,  <10.405224, 15.782495, 22.429848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.350614, 15.325915, 21.903841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.115530, 15.636749, 21.813744>,  <9.974480, 15.823250, 21.759686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.115530, 15.636749, 21.813744>,  <10.350614, 15.325915, 21.903841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.115530, 15.636749, 21.813744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197842, -0.131915, -0.971317,
		-0.784510, -0.615415, -0.076213,
		-0.587710, 0.777086, -0.225243,
		9.939217, 15.869875, 21.746170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.892586, 15.091114, 21.445063>,  <10.350614, 15.325915, 21.903841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.892586, 15.091114, 21.445063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.919597, 15.487183, 21.396070>,  <9.935803, 15.724824, 21.366676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.919597, 15.487183, 21.396070>,  <9.892586, 15.091114, 21.445063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.919597, 15.487183, 21.396070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028081, -0.120824, -0.992277,
		-0.997322, 0.070445, 0.019646,
		0.067527, 0.990171, -0.122478,
		9.939855, 15.784234, 21.359327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.340459, 15.262523, 20.885832>,  <9.892586, 15.091114, 21.445063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.340459, 15.262523, 20.885832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.591487, 15.573883, 20.892141>,  <9.742104, 15.760699, 20.895927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.591487, 15.573883, 20.892141>,  <9.340459, 15.262523, 20.885832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.591487, 15.573883, 20.892141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108447, -0.067338, -0.991819,
		-0.770970, 0.624147, -0.126674,
		0.627570, 0.778400, 0.015772,
		9.779758, 15.807404, 20.896873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.137875, 15.569655, 20.289465>,  <9.340459, 15.262523, 20.885832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.137875, 15.569655, 20.289465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.500703, 15.716054, 20.372671>,  <9.718400, 15.803893, 20.422594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.500703, 15.716054, 20.372671>,  <9.137875, 15.569655, 20.289465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.500703, 15.716054, 20.372671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249202, -0.068575, -0.966021,
		-0.339296, 0.928086, -0.153409,
		0.907070, 0.365996, 0.208014,
		9.772824, 15.825853, 20.435076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.279335, 15.927192, 19.784100>,  <9.137875, 15.569655, 20.289465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.279335, 15.927192, 19.784100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.648542, 15.885802, 19.932333>,  <9.870067, 15.860969, 20.021273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.648542, 15.885802, 19.932333>,  <9.279335, 15.927192, 19.784100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.648542, 15.885802, 19.932333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351275, -0.166357, -0.921375,
		0.156986, 0.980622, -0.117202,
		0.923017, -0.103473, 0.370584,
		9.925447, 15.854760, 20.043509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.697443, 16.312260, 19.284628>,  <9.279335, 15.927192, 19.784100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.697443, 16.312260, 19.284628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.962521, 16.068937, 19.459351>,  <10.121567, 15.922944, 19.564184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.962521, 16.068937, 19.459351>,  <9.697443, 16.312260, 19.284628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.962521, 16.068937, 19.459351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476797, -0.107070, -0.872468,
		0.577497, 0.786447, 0.219084,
		0.662693, -0.608306, 0.436808,
		10.161328, 15.886445, 19.590393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.283472, 16.499628, 18.941679>,  <9.697443, 16.312260, 19.284628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.283472, 16.499628, 18.941679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.358006, 16.142143, 19.104923>,  <10.402725, 15.927652, 19.202869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.358006, 16.142143, 19.104923>,  <10.283472, 16.499628, 18.941679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.358006, 16.142143, 19.104923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322285, -0.336802, -0.884702,
		0.928123, 0.296378, 0.225273,
		0.186333, -0.893714, 0.408112,
		10.413905, 15.874029, 19.227356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.940041, 16.292501, 18.748871>,  <10.283472, 16.499628, 18.941679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.940041, 16.292501, 18.748871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.741791, 15.952070, 18.818176>,  <10.622841, 15.747811, 18.859760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.741791, 15.952070, 18.818176>,  <10.940041, 16.292501, 18.748871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.741791, 15.952070, 18.818176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265077, -0.338196, -0.902972,
		0.827097, -0.401608, 0.393220,
		-0.495625, -0.851079, 0.173264,
		10.593103, 15.696747, 18.870155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.614668, 16.633234, 19.048153>,  <10.940041, 16.292501, 18.748871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.614668, 16.633234, 19.048153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.880313, 16.931730, 19.029915>,  <12.039700, 17.110828, 19.018972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.880313, 16.931730, 19.029915>,  <11.614668, 16.633234, 19.048153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.880313, 16.931730, 19.029915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386309, 0.394730, 0.833639,
		0.640094, -0.536015, 0.550424,
		0.664112, 0.746241, -0.045597,
		12.079547, 17.155603, 19.016235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.021654, 16.744366, 19.768377>,  <11.614668, 16.633234, 19.048153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.021654, 16.744366, 19.768377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.991960, 17.092758, 19.574106>,  <11.974143, 17.301794, 19.457544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.991960, 17.092758, 19.574106>,  <12.021654, 16.744366, 19.768377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.991960, 17.092758, 19.574106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262154, 0.452847, 0.852177,
		0.962166, 0.190585, 0.194713,
		-0.074237, 0.870980, -0.485677,
		11.969688, 17.354052, 19.428404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.505860, 17.230404, 20.068157>,  <12.021654, 16.744366, 19.768377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.505860, 17.230404, 20.068157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.281079, 17.502024, 19.879223>,  <12.146211, 17.664995, 19.765862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.281079, 17.502024, 19.879223>,  <12.505860, 17.230404, 20.068157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.281079, 17.502024, 19.879223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292036, 0.371383, 0.881357,
		0.773902, 0.633220, -0.010393,
		-0.561952, 0.679049, -0.472337,
		12.112494, 17.705738, 19.737522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.614033, 17.921970, 20.331312>,  <12.505860, 17.230404, 20.068157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.614033, 17.921970, 20.331312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.248988, 17.956806, 20.171534>,  <12.029962, 17.977707, 20.075666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.248988, 17.956806, 20.171534>,  <12.614033, 17.921970, 20.331312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.248988, 17.956806, 20.171534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304562, 0.506973, 0.806362,
		0.272733, 0.857551, -0.436145,
		-0.912611, 0.087089, -0.399446,
		11.975204, 17.982933, 20.051701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.417340, 18.546951, 20.519573>,  <12.614033, 17.921970, 20.331312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.417340, 18.546951, 20.519573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.069518, 18.377226, 20.418512>,  <11.860825, 18.275391, 20.357876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.069518, 18.377226, 20.418512>,  <12.417340, 18.546951, 20.519573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.069518, 18.377226, 20.418512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446628, 0.457431, 0.768948,
		-0.210704, 0.781484, -0.587271,
		-0.869556, -0.424312, -0.252650,
		11.808651, 18.249933, 20.342718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.859038, 19.118023, 20.342697>,  <12.417340, 18.546951, 20.519573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.859038, 19.118023, 20.342697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.691792, 18.770195, 20.447790>,  <11.591445, 18.561499, 20.510845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.691792, 18.770195, 20.447790>,  <11.859038, 19.118023, 20.342697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.691792, 18.770195, 20.447790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457303, 0.451393, 0.766237,
		-0.784892, 0.200227, -0.586391,
		-0.418114, -0.869571, 0.262730,
		11.566359, 18.509323, 20.526609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.181590, 19.294249, 20.585770>,  <11.859038, 19.118023, 20.342697>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.181590, 19.294249, 20.585770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.242940, 18.931322, 20.742359>,  <11.279750, 18.713566, 20.836313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.242940, 18.931322, 20.742359>,  <11.181590, 19.294249, 20.585770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.242940, 18.931322, 20.742359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339480, 0.323671, 0.883171,
		-0.928024, -0.268354, -0.258373,
		0.153375, -0.907317, 0.391475,
		11.288953, 18.659126, 20.859802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.541251, 19.168024, 21.016092>,  <11.181590, 19.294249, 20.585770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.541251, 19.168024, 21.016092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.801916, 18.904062, 21.165684>,  <10.958315, 18.745686, 21.255440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.801916, 18.904062, 21.165684>,  <10.541251, 19.168024, 21.016092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.801916, 18.904062, 21.165684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339579, 0.187057, 0.921790,
		-0.678250, -0.727690, -0.102193,
		0.651661, -0.659907, 0.373980,
		10.997415, 18.706091, 21.277878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.156871, 18.922495, 21.495138>,  <10.541251, 19.168024, 21.016092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.156871, 18.922495, 21.495138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.528631, 18.819189, 21.600601>,  <10.751687, 18.757206, 21.663879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.528631, 18.819189, 21.600601>,  <10.156871, 18.922495, 21.495138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.528631, 18.819189, 21.600601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256666, 0.061057, 0.964570,
		-0.265212, -0.964143, -0.009541,
		0.929401, -0.258265, 0.263656,
		10.807451, 18.741711, 21.679697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.065569, 18.337828, 21.980101>,  <10.156871, 18.922495, 21.495138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.065569, 18.337828, 21.980101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.432143, 18.490360, 22.028650>,  <10.652088, 18.581881, 22.057779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.432143, 18.490360, 22.028650>,  <10.065569, 18.337828, 21.980101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.432143, 18.490360, 22.028650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141264, 0.024494, 0.989669,
		0.374419, -0.924114, 0.076316,
		0.916436, 0.381332, 0.121373,
		10.707074, 18.604759, 22.065062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.291061, 18.036076, 22.516432>,  <10.065569, 18.337828, 21.980101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.291061, 18.036076, 22.516432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.570438, 18.322340, 22.517303>,  <10.738065, 18.494099, 22.517826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.570438, 18.322340, 22.517303>,  <10.291061, 18.036076, 22.516432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.570438, 18.322340, 22.517303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070725, 0.065995, 0.995310,
		0.712162, -0.695322, 0.096709,
		0.698443, 0.715662, 0.002178,
		10.779971, 18.537039, 22.517958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.897907, 17.936995, 23.080194>,  <10.291061, 18.036076, 22.516432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.897907, 17.936995, 23.080194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.963022, 18.323217, 22.999006>,  <11.002091, 18.554951, 22.950294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.963022, 18.323217, 22.999006>,  <10.897907, 17.936995, 23.080194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.963022, 18.323217, 22.999006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223224, 0.164337, 0.960814,
		0.961078, -0.201716, -0.188784,
		0.162788, 0.965559, -0.202968,
		11.011859, 18.612885, 22.938116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.468244, 18.131678, 23.397793>,  <10.897907, 17.936995, 23.080194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.468244, 18.131678, 23.397793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.217473, 18.442450, 23.374674>,  <11.067011, 18.628914, 23.360802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.217473, 18.442450, 23.374674>,  <11.468244, 18.131678, 23.397793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.217473, 18.442450, 23.374674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036482, 0.103384, 0.993972,
		0.778224, 0.621039, -0.093158,
		-0.626926, 0.776932, -0.057799,
		11.029395, 18.675529, 23.357334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.723122, 18.659815, 23.926716>,  <11.468244, 18.131678, 23.397793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.723122, 18.659815, 23.926716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.342276, 18.756828, 23.852255>,  <11.113768, 18.815037, 23.807577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.342276, 18.756828, 23.852255>,  <11.723122, 18.659815, 23.926716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.342276, 18.756828, 23.852255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150256, 0.159074, 0.975766,
		0.266270, 0.957012, -0.115014,
		-0.952115, 0.242536, -0.186154,
		11.056641, 18.829590, 23.796410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.365817, 19.076326, 24.171520>,  <11.723122, 18.659815, 23.926716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.365817, 19.076326, 24.171520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.725224, 19.158665, 24.326590>,  <12.940868, 19.208069, 24.419632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.725224, 19.158665, 24.326590>,  <12.365817, 19.076326, 24.171520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.725224, 19.158665, 24.326590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421087, -0.154934, -0.893690,
		-0.123900, 0.966241, -0.225890,
		0.898518, 0.205848, 0.387675,
		12.994780, 19.220419, 24.442892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.700431, 19.509016, 23.646103>,  <12.365817, 19.076326, 24.171520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.700431, 19.509016, 23.646103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.985440, 19.324802, 23.857847>,  <13.156446, 19.214273, 23.984894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.985440, 19.324802, 23.857847>,  <12.700431, 19.509016, 23.646103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.985440, 19.324802, 23.857847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343057, -0.429466, -0.835387,
		0.612065, 0.776832, -0.148015,
		0.712523, -0.460534, 0.529359,
		13.199197, 19.186642, 24.016655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.410632, 19.761396, 23.404917>,  <12.700431, 19.509016, 23.646103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.410632, 19.761396, 23.404917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.445261, 19.415176, 23.602230>,  <13.466039, 19.207445, 23.720617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.445261, 19.415176, 23.602230>,  <13.410632, 19.761396, 23.404917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.445261, 19.415176, 23.602230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455421, -0.405994, -0.792313,
		0.886057, 0.293244, 0.359042,
		0.086572, -0.865550, 0.493283,
		13.471232, 19.155512, 23.750216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.094669, 19.570824, 23.299919>,  <13.410632, 19.761396, 23.404917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.094669, 19.570824, 23.299919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.934965, 19.230461, 23.436478>,  <13.839143, 19.026243, 23.518412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.934965, 19.230461, 23.436478>,  <14.094669, 19.570824, 23.299919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.934965, 19.230461, 23.436478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649518, -0.525313, -0.549702,
		0.647084, 0.002268, 0.762415,
		-0.399260, -0.850906, 0.341395,
		13.815187, 18.975189, 23.538897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.649117, 19.159452, 23.649483>,  <14.094669, 19.570824, 23.299919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.649117, 19.159452, 23.649483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.362266, 18.927942, 23.494181>,  <14.190155, 18.789036, 23.400999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.362266, 18.927942, 23.494181>,  <14.649117, 19.159452, 23.649483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.362266, 18.927942, 23.494181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684533, -0.480290, -0.548394,
		0.130923, -0.659043, 0.740622,
		-0.717129, -0.578777, -0.388256,
		14.147127, 18.754309, 23.377705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.025116, 18.598145, 23.487137>,  <14.649117, 19.159452, 23.649483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.025116, 18.598145, 23.487137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.693540, 18.512796, 23.280319>,  <14.494594, 18.461588, 23.156229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.693540, 18.512796, 23.280319>,  <15.025116, 18.598145, 23.487137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.693540, 18.512796, 23.280319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523957, -0.619755, -0.584271,
		-0.195774, -0.755234, 0.625535,
		-0.828940, -0.213369, -0.517042,
		14.444858, 18.448786, 23.125206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.077495, 17.916365, 23.427340>,  <15.025116, 18.598145, 23.487137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.077495, 17.916365, 23.427340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.841093, 18.064421, 23.140644>,  <14.699252, 18.153254, 22.968628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.841093, 18.064421, 23.140644>,  <15.077495, 17.916365, 23.427340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.841093, 18.064421, 23.140644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460350, -0.574867, -0.676467,
		-0.662414, -0.729744, 0.169355,
		-0.591004, 0.370138, -0.716737,
		14.663792, 18.175463, 22.925623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.976402, 17.363934, 22.982250>,  <15.077495, 17.916365, 23.427340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.976402, 17.363934, 22.982250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.863755, 17.678711, 22.762646>,  <14.796167, 17.867577, 22.630882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.863755, 17.678711, 22.762646>,  <14.976402, 17.363934, 22.982250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.863755, 17.678711, 22.762646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393624, -0.427061, -0.814051,
		-0.875072, -0.445356, -0.189492,
		-0.281618, 0.786942, -0.549012,
		14.779270, 17.914793, 22.597942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.599024, 17.006607, 22.357327>,  <14.976402, 17.363934, 22.982250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.599024, 17.006607, 22.357327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.736966, 17.378466, 22.305429>,  <14.819732, 17.601580, 22.274290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.736966, 17.378466, 22.305429>,  <14.599024, 17.006607, 22.357327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.736966, 17.378466, 22.305429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471827, -0.291174, -0.832224,
		-0.811452, 0.225781, -0.539045,
		0.344856, 0.929645, -0.129744,
		14.840423, 17.657360, 22.266506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.523398, 17.176107, 21.630060>,  <14.599024, 17.006607, 22.357327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.523398, 17.176107, 21.630060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.783437, 17.445143, 21.771482>,  <14.939460, 17.606564, 21.856337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.783437, 17.445143, 21.771482>,  <14.523398, 17.176107, 21.630060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.783437, 17.445143, 21.771482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583708, -0.144146, -0.799066,
		-0.486478, 0.725844, -0.486303,
		0.650096, 0.672587, 0.353557,
		14.978466, 17.646919, 21.877550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.555874, 17.655432, 21.111732>,  <14.523398, 17.176107, 21.630060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.555874, 17.655432, 21.111732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.894261, 17.711897, 21.317417>,  <15.097294, 17.745777, 21.440828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.894261, 17.711897, 21.317417>,  <14.555874, 17.655432, 21.111732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.894261, 17.711897, 21.317417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512071, 0.053915, -0.857250,
		-0.148737, 0.988517, -0.026676,
		0.845968, 0.141164, 0.514210,
		15.148051, 17.754246, 21.471680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.953115, 18.249578, 20.829725>,  <14.555874, 17.655432, 21.111732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.953115, 18.249578, 20.829725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.203860, 18.000633, 21.017216>,  <15.354308, 17.851265, 21.129709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.203860, 18.000633, 21.017216>,  <14.953115, 18.249578, 20.829725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.203860, 18.000633, 21.017216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508719, -0.128713, -0.851256,
		0.590123, 0.772072, 0.235923,
		0.626865, -0.622365, 0.468724,
		15.391920, 17.813923, 21.157833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.542209, 18.439669, 20.467926>,  <14.953115, 18.249578, 20.829725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.542209, 18.439669, 20.467926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.632378, 18.103767, 20.665512>,  <15.686479, 17.902227, 20.784063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.632378, 18.103767, 20.665512>,  <15.542209, 18.439669, 20.467926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.632378, 18.103767, 20.665512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587782, -0.287123, -0.756355,
		0.776980, 0.460842, 0.428868,
		0.225423, -0.839753, 0.493963,
		15.700005, 17.851841, 20.813702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.277420, 18.336330, 20.409664>,  <15.542209, 18.439669, 20.467926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.277420, 18.336330, 20.409664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.090487, 17.986603, 20.462078>,  <15.978327, 17.776766, 20.493526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.090487, 17.986603, 20.462078>,  <16.277420, 18.336330, 20.409664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.090487, 17.986603, 20.462078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470320, -0.371369, -0.800553,
		0.748599, -0.312497, 0.584761,
		-0.467333, -0.874317, 0.131033,
		15.950287, 17.724308, 20.501389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<13.005892, 24.929916, 15.709551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.737514, 24.633873, 15.691325>,  <12.576488, 24.456247, 15.680389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.737514, 24.633873, 15.691325>,  <13.005892, 24.929916, 15.709551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.737514, 24.633873, 15.691325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247074, 0.281074, -0.927336,
		0.699136, -0.610931, -0.371446,
		-0.670942, -0.740108, -0.045564,
		12.536232, 24.411840, 15.677656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.161242, 24.422045, 15.234751>,  <13.005892, 24.929916, 15.709551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.161242, 24.422045, 15.234751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.763517, 24.459045, 15.255874>,  <12.524882, 24.481245, 15.268548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.763517, 24.459045, 15.255874>,  <13.161242, 24.422045, 15.234751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.763517, 24.459045, 15.255874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035712, 0.177574, -0.983459,
		-0.100348, -0.979751, -0.173260,
		-0.994311, 0.092501, 0.052808,
		12.465224, 24.486795, 15.271716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.623788, 23.811846, 14.968272>,  <13.161242, 24.422045, 15.234751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.623788, 23.811846, 14.968272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.528782, 24.197508, 14.920959>,  <12.471778, 24.428905, 14.892570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.528782, 24.197508, 14.920959>,  <12.623788, 23.811846, 14.968272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.528782, 24.197508, 14.920959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134168, -0.088039, -0.987040,
		-0.962074, -0.250306, -0.108448,
		-0.237515, 0.964155, -0.118283,
		12.457527, 24.486755, 14.885473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.172602, 23.855740, 14.436426>,  <12.623788, 23.811846, 14.968272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.172602, 23.855740, 14.436426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.354684, 24.211378, 14.455596>,  <12.463933, 24.424761, 14.467098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.354684, 24.211378, 14.455596>,  <12.172602, 23.855740, 14.436426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.354684, 24.211378, 14.455596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127906, -0.012030, -0.991713,
		-0.881151, 0.457564, -0.119197,
		0.455206, 0.889095, 0.047925,
		12.491246, 24.478107, 14.469974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.735988, 24.380581, 14.100548>,  <12.172602, 23.855740, 14.436426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.735988, 24.380581, 14.100548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.132538, 24.432575, 14.093868>,  <12.370468, 24.463772, 14.089861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.132538, 24.432575, 14.093868>,  <11.735988, 24.380581, 14.100548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.132538, 24.432575, 14.093868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046248, 0.227789, -0.972612,
		-0.122621, 0.964996, 0.231836,
		0.991376, 0.129984, -0.016698,
		12.429951, 24.471571, 14.088859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.697161, 23.736116, 13.885109>,  <11.735988, 24.380581, 14.100548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.697161, 23.736116, 13.885109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.723529, 23.654652, 13.494381>,  <11.739349, 23.605774, 13.259944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.723529, 23.654652, 13.494381>,  <11.697161, 23.736116, 13.885109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.723529, 23.654652, 13.494381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063724, -0.976092, 0.207809,
		-0.995788, -0.075946, -0.051365,
		0.065919, -0.203661, -0.976820,
		11.743304, 23.593554, 13.201335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.189684, 23.243092, 13.597747>,  <11.697161, 23.736116, 13.885109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.189684, 23.243092, 13.597747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.519563, 23.173761, 13.382402>,  <11.717490, 23.132162, 13.253196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.519563, 23.173761, 13.382402>,  <11.189684, 23.243092, 13.597747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.519563, 23.173761, 13.382402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149999, -0.984825, 0.087288,
		-0.545320, 0.008767, -0.838182,
		0.824698, -0.173326, -0.538360,
		11.766973, 23.121763, 13.220895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.839954, 22.639664, 13.925155>,  <11.189684, 23.243092, 13.597747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.839954, 22.639664, 13.925155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.078897, 22.397995, 14.136111>,  <11.222261, 22.252993, 14.262686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.078897, 22.397995, 14.136111>,  <10.839954, 22.639664, 13.925155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.078897, 22.397995, 14.136111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729121, -0.683007, 0.043400,
		0.333992, -0.410458, -0.848513,
		0.597354, -0.604173, 0.527393,
		11.258102, 22.216743, 14.294329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.921321, 21.875296, 13.602572>,  <10.839954, 22.639664, 13.925155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.921321, 21.875296, 13.602572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.966896, 21.908686, 13.998562>,  <10.994242, 21.928720, 14.236156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.966896, 21.908686, 13.998562>,  <10.921321, 21.875296, 13.602572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.966896, 21.908686, 13.998562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724618, -0.674720, 0.140291,
		0.679667, -0.733338, -0.016388,
		0.113939, 0.083476, 0.989975,
		11.001078, 21.933729, 14.295554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.283995, 21.074928, 13.726914>,  <10.921321, 21.875296, 13.602572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.283995, 21.074928, 13.726914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.340642, 21.284109, 14.063121>,  <11.374631, 21.409616, 14.264845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.340642, 21.284109, 14.063121>,  <11.283995, 21.074928, 13.726914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.340642, 21.284109, 14.063121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427835, -0.733346, 0.528357,
		0.892694, -0.434427, 0.119881,
		0.141619, 0.522950, 0.840516,
		11.383127, 21.440994, 14.315276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.553664, 20.600891, 14.212622>,  <11.283995, 21.074928, 13.726914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.553664, 20.600891, 14.212622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.379865, 20.897861, 14.416588>,  <11.275585, 21.076044, 14.538968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.379865, 20.897861, 14.416588>,  <11.553664, 20.600891, 14.212622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.379865, 20.897861, 14.416588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521221, -0.668985, 0.529894,
		0.734533, -0.035541, 0.677642,
		-0.434499, 0.742426, 0.509916,
		11.249515, 21.120588, 14.569563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.541393, 20.357208, 14.832366>,  <11.553664, 20.600891, 14.212622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.541393, 20.357208, 14.832366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.259732, 20.641207, 14.835833>,  <11.090735, 20.811605, 14.837913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.259732, 20.641207, 14.835833>,  <11.541393, 20.357208, 14.832366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.259732, 20.641207, 14.835833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655121, -0.654338, 0.377701,
		0.273836, 0.260282, 0.925887,
		-0.704152, 0.709996, 0.008666,
		11.048487, 20.854206, 14.838432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.117332, 20.041422, 15.439391>,  <11.541393, 20.357208, 14.832366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.117332, 20.041422, 15.439391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.903319, 20.309904, 15.234171>,  <10.774912, 20.470993, 15.111038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.903319, 20.309904, 15.234171>,  <11.117332, 20.041422, 15.439391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.903319, 20.309904, 15.234171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839843, -0.488460, 0.236791,
		-0.091669, 0.557573, 0.825051,
		-0.535033, 0.671206, -0.513051,
		10.742809, 20.511267, 15.080256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.551413, 20.312887, 15.935256>,  <11.117332, 20.041422, 15.439391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.551413, 20.312887, 15.935256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.431376, 20.390741, 15.561719>,  <10.359353, 20.437454, 15.337597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.431376, 20.390741, 15.561719>,  <10.551413, 20.312887, 15.935256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.431376, 20.390741, 15.561719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886747, -0.417756, 0.197888,
		-0.351601, 0.887466, 0.297959,
		-0.300093, 0.194636, -0.933842,
		10.341348, 20.449133, 15.281567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.849055, 20.592096, 15.956495>,  <10.551413, 20.312887, 15.935256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.849055, 20.592096, 15.956495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.899961, 20.451488, 15.585499>,  <9.930506, 20.367125, 15.362901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.899961, 20.451488, 15.585499>,  <9.849055, 20.592096, 15.956495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.899961, 20.451488, 15.585499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923573, -0.382979, 0.018420,
		-0.361684, 0.854261, -0.373393,
		0.127267, -0.351518, -0.927490,
		9.938142, 20.346033, 15.307252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.139094, 20.675972, 15.533484>,  <9.849055, 20.592096, 15.956495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.139094, 20.675972, 15.533484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.355101, 20.389053, 15.357364>,  <9.484705, 20.216902, 15.251691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.355101, 20.389053, 15.357364>,  <9.139094, 20.675972, 15.533484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.355101, 20.389053, 15.357364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793373, -0.608464, 0.018207,
		-0.280968, 0.339491, -0.897666,
		0.540016, -0.717299, -0.440301,
		9.517105, 20.173864, 15.225273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.673504, 20.213095, 15.116285>,  <9.139094, 20.675972, 15.533484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.673504, 20.213095, 15.116285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.003006, 19.986839, 15.131666>,  <9.200707, 19.851086, 15.140895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.003006, 19.986839, 15.131666>,  <8.673504, 20.213095, 15.116285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.003006, 19.986839, 15.131666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566945, -0.821853, 0.055959,
		-0.000051, -0.067897, -0.997692,
		0.823756, -0.565639, 0.038452,
		9.250133, 19.817148, 15.143202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.676697, 19.680021, 14.461026>,  <8.673504, 20.213095, 15.116285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.676697, 19.680021, 14.461026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.904131, 19.540983, 14.759258>,  <9.040591, 19.457561, 14.938197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.904131, 19.540983, 14.759258>,  <8.676697, 19.680021, 14.461026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.904131, 19.540983, 14.759258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470854, -0.880706, -0.051513,
		0.674542, -0.321770, -0.664423,
		0.568586, -0.347594, 0.745579,
		9.074707, 19.436705, 14.982932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.867157, 19.034672, 14.264193>,  <8.676697, 19.680021, 14.461026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.867157, 19.034672, 14.264193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.892567, 19.041197, 14.663331>,  <8.907812, 19.045113, 14.902814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.892567, 19.041197, 14.663331>,  <8.867157, 19.034672, 14.264193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.892567, 19.041197, 14.663331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667106, -0.742958, 0.054615,
		0.742250, -0.669139, -0.036311,
		0.063523, 0.016315, 0.997847,
		8.911624, 19.046091, 14.962686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.729847, 18.299006, 14.499340>,  <8.867157, 19.034672, 14.264193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.729847, 18.299006, 14.499340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.688480, 18.510710, 14.836194>,  <8.663660, 18.637732, 15.038306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.688480, 18.510710, 14.836194>,  <8.729847, 18.299006, 14.499340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.688480, 18.510710, 14.836194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760435, -0.587823, 0.276048,
		0.641127, -0.611841, 0.463257,
		-0.103416, 0.529259, 0.842134,
		8.657455, 18.669487, 15.088835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.855753, 17.836243, 15.041371>,  <8.729847, 18.299006, 14.499340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.855753, 17.836243, 15.041371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.632837, 18.124781, 15.205854>,  <8.499088, 18.297903, 15.304544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.632837, 18.124781, 15.205854>,  <8.855753, 17.836243, 15.041371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.632837, 18.124781, 15.205854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623844, -0.690578, 0.365953,
		0.547950, -0.052589, 0.834857,
		-0.557288, 0.721344, 0.411209,
		8.465651, 18.341185, 15.329217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.593954, 17.575346, 15.831855>,  <8.855753, 17.836243, 15.041371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.593954, 17.575346, 15.831855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.347057, 17.873341, 15.730656>,  <8.198919, 18.052137, 15.669936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.347057, 17.873341, 15.730656>,  <8.593954, 17.575346, 15.831855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.347057, 17.873341, 15.730656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782441, -0.547541, 0.296622,
		0.082453, 0.381042, 0.920874,
		-0.617242, 0.744987, -0.252997,
		8.161885, 18.096836, 15.654757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.241749, 17.810799, 16.463675>,  <8.593954, 17.575346, 15.831855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.241749, 17.810799, 16.463675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.025055, 17.924936, 16.147421>,  <7.895039, 17.993420, 15.957668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.025055, 17.924936, 16.147421>,  <8.241749, 17.810799, 16.463675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.025055, 17.924936, 16.147421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822236, -0.375177, 0.427984,
		-0.174505, 0.881942, 0.437866,
		-0.541734, 0.285344, -0.790635,
		7.862535, 18.010540, 15.910231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.578837, 17.906683, 16.713768>,  <8.241749, 17.810799, 16.463675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.578837, 17.906683, 16.713768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.489121, 17.898258, 16.324051>,  <7.435292, 17.893204, 16.090219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.489121, 17.898258, 16.324051>,  <7.578837, 17.906683, 16.713768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.489121, 17.898258, 16.324051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886486, -0.410843, 0.212957,
		-0.404768, 0.911463, 0.073475,
		-0.224289, -0.021064, -0.974295,
		7.421835, 17.891939, 16.031763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.871947, 18.156332, 16.627876>,  <7.578837, 17.906683, 16.713768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.871947, 18.156332, 16.627876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.923551, 17.980547, 16.272297>,  <6.954513, 17.875076, 16.058950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.923551, 17.980547, 16.272297>,  <6.871947, 18.156332, 16.627876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.923551, 17.980547, 16.272297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912737, -0.403050, 0.066792,
		-0.387643, 0.802758, -0.453113,
		0.129009, -0.439465, -0.888947,
		6.962254, 17.848707, 16.005613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.266935, 18.257977, 16.321184>,  <6.871947, 18.156332, 16.627876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.266935, 18.257977, 16.321184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.433753, 17.952641, 16.123846>,  <6.533843, 17.769440, 16.005444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.433753, 17.952641, 16.123846>,  <6.266935, 18.257977, 16.321184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.433753, 17.952641, 16.123846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869861, -0.492567, 0.026809,
		-0.263470, 0.417960, -0.869421,
		0.417043, -0.763339, -0.493344,
		6.558866, 17.723639, 15.975842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.828620, 18.114670, 15.671225>,  <6.266935, 18.257977, 16.321184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.828620, 18.114670, 15.671225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.048690, 17.787670, 15.739348>,  <6.180732, 17.591471, 15.780223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.048690, 17.787670, 15.739348>,  <5.828620, 18.114670, 15.671225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.048690, 17.787670, 15.739348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807163, -0.572890, -0.142423,
		0.214000, -0.059111, -0.975044,
		0.550174, -0.817498, 0.170310,
		6.213742, 17.542421, 15.790442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.727779, 17.635889, 15.136185>,  <5.828620, 18.114670, 15.671225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.727779, 17.635889, 15.136185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.848062, 17.394299, 15.431424>,  <5.920231, 17.249344, 15.608568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.848062, 17.394299, 15.431424>,  <5.727779, 17.635889, 15.136185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.848062, 17.394299, 15.431424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802628, -0.578284, -0.146205,
		0.515135, -0.548454, -0.658661,
		0.300706, -0.603975, 0.738099,
		5.938274, 17.213106, 15.652854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.788732, 16.995136, 14.868604>,  <5.727779, 17.635889, 15.136185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.788732, 16.995136, 14.868604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.751767, 16.938496, 15.262844>,  <5.729589, 16.904512, 15.499389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.751767, 16.938496, 15.262844>,  <5.788732, 16.995136, 14.868604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.751767, 16.938496, 15.262844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694634, -0.700019, -0.165700,
		0.713403, -0.699945, -0.033670,
		-0.092411, -0.141600, 0.985601,
		5.724044, 16.896015, 15.558524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.900295, 16.306299, 14.902433>,  <5.788732, 16.995136, 14.868604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.900295, 16.306299, 14.902433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.727590, 16.386679, 15.254161>,  <5.623967, 16.434906, 15.465198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.727590, 16.386679, 15.254161>,  <5.900295, 16.306299, 14.902433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.727590, 16.386679, 15.254161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467790, -0.883402, -0.027812,
		0.771202, -0.423345, 0.475423,
		-0.431763, 0.200950, 0.879318,
		5.598061, 16.446964, 15.517956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.905552, 15.575754, 15.218621>,  <5.900295, 16.306299, 14.902433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.905552, 15.575754, 15.218621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.662049, 15.819044, 15.422376>,  <5.515946, 15.965018, 15.544628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.662049, 15.819044, 15.422376>,  <5.905552, 15.575754, 15.218621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.662049, 15.819044, 15.422376> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641699, -0.755042, 0.134663,
		0.466514, -0.244895, 0.849936,
		-0.608759, 0.608225, 0.509386,
		5.479421, 16.001511, 15.575191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.505006, 15.737957, 14.913679>,  <5.905552, 15.575754, 15.218621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.505006, 15.737957, 14.913679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.564609, 15.492637, 14.603413>,  <6.600370, 15.345445, 14.417253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.564609, 15.492637, 14.603413>,  <6.505006, 15.737957, 14.913679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.564609, 15.492637, 14.603413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693233, 0.624166, -0.360341,
		0.705142, -0.484024, 0.518166,
		0.149007, -0.613301, -0.775666,
		6.609311, 15.308646, 14.370712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.174773, 15.660608, 14.919860>,  <6.505006, 15.737957, 14.913679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.174773, 15.660608, 14.919860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.071894, 15.559317, 14.546824>,  <7.010166, 15.498542, 14.323003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.071894, 15.559317, 14.546824>,  <7.174773, 15.660608, 14.919860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.071894, 15.559317, 14.546824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744575, 0.563240, -0.358285,
		0.616000, -0.786534, 0.043684,
		-0.257199, -0.253230, -0.932590,
		6.994734, 15.483348, 14.267048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.806712, 15.365235, 14.537327>,  <7.174773, 15.660608, 14.919860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.806712, 15.365235, 14.537327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.554208, 15.489601, 14.253119>,  <7.402705, 15.564220, 14.082593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.554208, 15.489601, 14.253119>,  <7.806712, 15.365235, 14.537327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.554208, 15.489601, 14.253119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720764, 0.573451, -0.389426,
		0.286371, -0.757948, -0.586094,
		-0.631261, 0.310916, -0.710522,
		7.364830, 15.582876, 14.039962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.131939, 15.212585, 13.961710>,  <7.806712, 15.365235, 14.537327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.131939, 15.212585, 13.961710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.870572, 15.487517, 13.834826>,  <7.713751, 15.652476, 13.758695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.870572, 15.487517, 13.834826>,  <8.131939, 15.212585, 13.961710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.870572, 15.487517, 13.834826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748800, 0.525362, -0.404094,
		-0.111096, -0.501570, -0.857954,
		-0.653419, 0.687329, -0.317211,
		7.674546, 15.693716, 13.739662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.365853, 15.397391, 13.348558>,  <8.131939, 15.212585, 13.961710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.365853, 15.397391, 13.348558> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.102658, 15.695317, 13.392927>,  <7.944741, 15.874073, 13.419548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.102658, 15.695317, 13.392927>,  <8.365853, 15.397391, 13.348558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.102658, 15.695317, 13.392927> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597557, 0.606078, -0.524971,
		-0.458233, -0.279143, -0.843861,
		-0.657988, 0.744814, 0.110921,
		7.905262, 15.918761, 13.426204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.158663, 15.655258, 12.671238>,  <8.365853, 15.397391, 13.348558>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.158663, 15.655258, 12.671238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.096450, 15.935930, 12.949362>,  <8.059122, 16.104334, 13.116236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.096450, 15.935930, 12.949362>,  <8.158663, 15.655258, 12.671238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.096450, 15.935930, 12.949362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648575, 0.603448, -0.463898,
		-0.745090, 0.378810, -0.548948,
		-0.155533, 0.701680, 0.695310,
		8.049790, 16.146435, 13.157954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.294541, 16.291454, 12.314445>,  <8.158663, 15.655258, 12.671238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.294541, 16.291454, 12.314445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.263856, 16.430956, 12.688072>,  <8.245444, 16.514656, 12.912249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.263856, 16.430956, 12.688072>,  <8.294541, 16.291454, 12.314445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.263856, 16.430956, 12.688072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556816, 0.792114, -0.250021,
		-0.827086, 0.500925, -0.254958,
		-0.076714, 0.348754, 0.934070,
		8.240842, 16.535582, 12.968293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.895395, 16.924162, 12.325732>,  <8.294541, 16.291454, 12.314445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.895395, 16.924162, 12.325732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.155781, 16.910288, 12.629059>,  <8.312013, 16.901964, 12.811054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.155781, 16.910288, 12.629059>,  <7.895395, 16.924162, 12.325732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.155781, 16.910288, 12.629059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563264, 0.691762, -0.451883,
		-0.508900, 0.721292, 0.469850,
		0.650964, -0.034686, 0.758316,
		8.351070, 16.899881, 12.856553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.046635, 17.611675, 12.593377>,  <7.895395, 16.924162, 12.325732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.046635, 17.611675, 12.593377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.346640, 17.396841, 12.747789>,  <8.526643, 17.267941, 12.840437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.346640, 17.396841, 12.747789>,  <8.046635, 17.611675, 12.593377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.346640, 17.396841, 12.747789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613582, 0.782902, -0.102866,
		-0.246976, 0.314013, 0.916733,
		0.750013, -0.537086, 0.386030,
		8.571644, 17.235716, 12.863599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.317766, 18.122292, 12.929132>,  <8.046635, 17.611675, 12.593377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.317766, 18.122292, 12.929132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.570113, 17.812563, 12.948869>,  <8.721521, 17.626726, 12.960711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.570113, 17.812563, 12.948869>,  <8.317766, 18.122292, 12.929132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.570113, 17.812563, 12.948869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775530, 0.631236, -0.009717,
		-0.023621, 0.044396, 0.998735,
		0.630868, -0.774319, 0.049341,
		8.759374, 17.580267, 12.963671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.881917, 18.335093, 13.384436>,  <8.317766, 18.122292, 12.929132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.881917, 18.335093, 13.384436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.024454, 18.054415, 13.137650>,  <9.109977, 17.886009, 12.989578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.024454, 18.054415, 13.137650>,  <8.881917, 18.335093, 13.384436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.024454, 18.054415, 13.137650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814436, 0.556895, -0.162978,
		0.457946, -0.444403, 0.769930,
		0.356343, -0.701694, -0.616965,
		9.131357, 17.843906, 12.952559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.540880, 18.251825, 13.612457>,  <8.881917, 18.335093, 13.384436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.540880, 18.251825, 13.612457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.516345, 18.139736, 13.229268>,  <9.501624, 18.072483, 12.999354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.516345, 18.139736, 13.229268>,  <9.540880, 18.251825, 13.612457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.516345, 18.139736, 13.229268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842734, 0.499742, -0.200143,
		0.534824, -0.819593, 0.205500,
		-0.061339, -0.280224, -0.957973,
		9.497943, 18.055670, 12.941876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.178031, 18.062284, 13.421071>,  <9.540880, 18.251825, 13.612457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.178031, 18.062284, 13.421071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.989431, 18.142138, 13.077481>,  <9.876272, 18.190048, 12.871327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.989431, 18.142138, 13.077481>,  <10.178031, 18.062284, 13.421071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.989431, 18.142138, 13.077481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799546, 0.507701, -0.320884,
		0.372043, -0.838085, -0.398994,
		-0.471498, 0.199631, -0.858974,
		9.847982, 18.202026, 12.819789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.730993, 18.090002, 12.961318>,  <10.178031, 18.062284, 13.421071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.730993, 18.090002, 12.961318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.459007, 18.273823, 12.732770>,  <10.295816, 18.384115, 12.595641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.459007, 18.273823, 12.732770>,  <10.730993, 18.090002, 12.961318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.459007, 18.273823, 12.732770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589949, 0.805626, -0.054113,
		0.435442, -0.373873, -0.818907,
		-0.679964, 0.459550, -0.571369,
		10.255018, 18.411688, 12.561359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.002068, 18.380283, 12.327127>,  <10.730993, 18.090002, 12.961318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.002068, 18.380283, 12.327127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.661811, 18.585554, 12.372830>,  <10.457657, 18.708717, 12.400252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.661811, 18.585554, 12.372830>,  <11.002068, 18.380283, 12.327127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.661811, 18.585554, 12.372830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484178, 0.849359, -0.210145,
		-0.204888, -0.123438, -0.970971,
		-0.850642, 0.513179, 0.114257,
		10.406618, 18.739508, 12.407107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.885305, 18.779400, 11.657316>,  <11.002068, 18.380283, 12.327127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.885305, 18.779400, 11.657316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.673817, 18.959066, 11.945400>,  <10.546924, 19.066866, 12.118251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.673817, 18.959066, 11.945400>,  <10.885305, 18.779400, 11.657316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.673817, 18.959066, 11.945400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397952, 0.880651, -0.257078,
		-0.749725, 0.150686, -0.644365,
		-0.528723, 0.449164, 0.720211,
		10.515200, 19.093815, 12.161464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.397751, 19.258652, 11.380242>,  <10.885305, 18.779400, 11.657316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.397751, 19.258652, 11.380242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.487323, 19.375975, 11.752011>,  <10.541066, 19.446369, 11.975073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.487323, 19.375975, 11.752011>,  <10.397751, 19.258652, 11.380242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.487323, 19.375975, 11.752011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325546, 0.876354, -0.354997,
		-0.918627, 0.382064, 0.100756,
		0.223929, 0.293309, 0.929422,
		10.554502, 19.463966, 12.030838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.183632, 19.986982, 11.398483>,  <10.397751, 19.258652, 11.380242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.183632, 19.986982, 11.398483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.433093, 19.966127, 11.710467>,  <10.582770, 19.953615, 11.897657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.433093, 19.966127, 11.710467>,  <10.183632, 19.986982, 11.398483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.433093, 19.966127, 11.710467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384440, 0.889227, -0.247955,
		-0.680634, 0.454486, 0.574613,
		0.623653, -0.052138, 0.779960,
		10.620189, 19.950485, 11.944455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.176255, 20.677444, 11.773460>,  <10.183632, 19.986982, 11.398483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.176255, 20.677444, 11.773460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.515516, 20.491232, 11.874587>,  <10.719073, 20.379503, 11.935263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.515516, 20.491232, 11.874587>,  <10.176255, 20.677444, 11.773460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.515516, 20.491232, 11.874587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513304, 0.840191, -0.174922,
		-0.130982, 0.278132, 0.951570,
		0.848152, -0.465533, 0.252816,
		10.769962, 20.351572, 11.950432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.554213, 21.198784, 12.090037>,  <10.176255, 20.677444, 11.773460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.554213, 21.198784, 12.090037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.847363, 20.926733, 12.082868>,  <11.023252, 20.763502, 12.078566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.847363, 20.926733, 12.082868>,  <10.554213, 21.198784, 12.090037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.847363, 20.926733, 12.082868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675990, 0.730894, -0.093971,
		0.077013, 0.056752, 0.995414,
		0.732875, -0.680127, -0.017924,
		11.067225, 20.722694, 12.077491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.018240, 21.390402, 12.604651>,  <10.554213, 21.198784, 12.090037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.018240, 21.390402, 12.604651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.253690, 21.151991, 12.386194>,  <11.394959, 21.008944, 12.255120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.253690, 21.151991, 12.386194>,  <11.018240, 21.390402, 12.604651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.253690, 21.151991, 12.386194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639347, 0.756669, -0.136703,
		0.494728, -0.268708, 0.826463,
		0.588625, -0.596027, -0.546143,
		11.430277, 20.973183, 12.222351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<16.590317, 17.555559, 25.748802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.244507, 17.374861, 25.660692>,  <16.037022, 17.266441, 25.607826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.244507, 17.374861, 25.660692>,  <16.590317, 17.555559, 25.748802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.244507, 17.374861, 25.660692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466519, 0.558252, 0.686086,
		-0.186969, 0.695901, -0.693372,
		-0.864525, -0.451748, -0.220275,
		15.985149, 17.239336, 25.594610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.043118, 18.070248, 25.724159>,  <16.590317, 17.555559, 25.748802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.043118, 18.070248, 25.724159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.812737, 17.744429, 25.751846>,  <15.674507, 17.548937, 25.768459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.812737, 17.744429, 25.751846>,  <16.043118, 18.070248, 25.724159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.812737, 17.744429, 25.751846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556265, 0.452554, 0.696968,
		-0.599038, 0.362918, -0.713754,
		-0.575954, -0.814546, 0.069218,
		15.639950, 17.500065, 25.772612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.401012, 18.336109, 25.768263>,  <16.043118, 18.070248, 25.724159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.401012, 18.336109, 25.768263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.364126, 17.968487, 25.921539>,  <15.341994, 17.747913, 26.013506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.364126, 17.968487, 25.921539>,  <15.401012, 18.336109, 25.768263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.364126, 17.968487, 25.921539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702489, 0.332782, 0.629098,
		-0.705695, -0.211175, -0.676314,
		-0.092215, -0.919055, 0.383191,
		15.336462, 17.692770, 26.036497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.681720, 18.214600, 25.805613>,  <15.401012, 18.336109, 25.768263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.681720, 18.214600, 25.805613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.820272, 17.953358, 26.074974>,  <14.903404, 17.796612, 26.236591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.820272, 17.953358, 26.074974>,  <14.681720, 18.214600, 25.805613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.820272, 17.953358, 26.074974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710578, 0.285992, 0.642874,
		-0.612453, -0.701185, -0.365021,
		0.346381, -0.653107, 0.673404,
		14.924187, 17.757425, 26.276995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.067402, 17.842552, 25.967493>,  <14.681720, 18.214600, 25.805613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.067402, 17.842552, 25.967493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.331615, 17.774971, 26.260109>,  <14.490144, 17.734423, 26.435678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.331615, 17.774971, 26.260109>,  <14.067402, 17.842552, 25.967493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.331615, 17.774971, 26.260109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741539, 0.005730, 0.670885,
		-0.117543, -0.985607, -0.121504,
		0.660533, -0.168958, 0.731539,
		14.529776, 17.724285, 26.479570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.748252, 17.292007, 26.440908>,  <14.067402, 17.842552, 25.967493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.748252, 17.292007, 26.440908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.028064, 17.489292, 26.647753>,  <14.195951, 17.607662, 26.771858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.028064, 17.489292, 26.647753>,  <13.748252, 17.292007, 26.440908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.028064, 17.489292, 26.647753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651006, 0.141414, 0.745784,
		0.294704, -0.858337, 0.420008,
		0.699529, 0.493213, 0.517107,
		14.237923, 17.637255, 26.802885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.718236, 17.024540, 27.139580>,  <13.748252, 17.292007, 26.440908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.718236, 17.024540, 27.139580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.887770, 17.385271, 27.173223>,  <13.989490, 17.601709, 27.193409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.887770, 17.385271, 27.173223>,  <13.718236, 17.024540, 27.139580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.887770, 17.385271, 27.173223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566791, 0.191646, 0.801261,
		0.706479, -0.387274, 0.592373,
		0.423834, 0.901826, 0.084110,
		14.014920, 17.655819, 27.198456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.978105, 17.038855, 27.798815>,  <13.718236, 17.024540, 27.139580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.978105, 17.038855, 27.798815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.896720, 17.411516, 27.678398>,  <13.847889, 17.635113, 27.606148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.896720, 17.411516, 27.678398>,  <13.978105, 17.038855, 27.798815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.896720, 17.411516, 27.678398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548633, 0.146180, 0.823185,
		0.810929, 0.332648, 0.481393,
		-0.203461, 0.931652, -0.301044,
		13.835682, 17.691011, 27.588085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.934787, 17.432468, 28.366568>,  <13.978105, 17.038855, 27.798815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.934787, 17.432468, 28.366568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.784155, 17.689701, 28.099844>,  <13.693776, 17.844040, 27.939810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.784155, 17.689701, 28.099844>,  <13.934787, 17.432468, 28.366568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.784155, 17.689701, 28.099844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404995, 0.533084, 0.742833,
		0.833166, 0.549791, 0.059695,
		-0.376580, 0.643080, -0.666810,
		13.671181, 17.882626, 27.899801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.162335, 18.088512, 28.633312>,  <13.934787, 17.432468, 28.366568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.162335, 18.088512, 28.633312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.863639, 18.209145, 28.396187>,  <13.684422, 18.281523, 28.253912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.863639, 18.209145, 28.396187>,  <14.162335, 18.088512, 28.633312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.863639, 18.209145, 28.396187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351531, 0.577681, 0.736689,
		0.564627, 0.758509, -0.325363,
		-0.746741, 0.301579, -0.592813,
		13.639617, 18.299618, 28.218342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.141898, 18.828564, 28.636250>,  <14.162335, 18.088512, 28.633312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.141898, 18.828564, 28.636250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.767729, 18.742350, 28.524158>,  <13.543227, 18.690620, 28.456903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.767729, 18.742350, 28.524158>,  <14.141898, 18.828564, 28.636250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.767729, 18.742350, 28.524158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353511, 0.562228, 0.747616,
		-0.003587, 0.798401, -0.602116,
		-0.935424, -0.215536, -0.280227,
		13.487102, 18.677689, 28.440090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.777247, 19.445919, 28.722973>,  <14.141898, 18.828564, 28.636250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.777247, 19.445919, 28.722973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.471538, 19.188520, 28.706013>,  <13.288112, 19.034081, 28.695837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.471538, 19.188520, 28.706013>,  <13.777247, 19.445919, 28.722973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.471538, 19.188520, 28.706013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343448, 0.350496, 0.871319,
		-0.545829, 0.680488, -0.488882,
		-0.764274, -0.643497, -0.042401,
		13.242255, 18.995472, 28.693293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.200523, 19.808195, 29.095989>,  <13.777247, 19.445919, 28.722973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.200523, 19.808195, 29.095989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.166967, 19.409687, 29.104116>,  <13.146834, 19.170582, 29.108994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.166967, 19.409687, 29.104116>,  <13.200523, 19.808195, 29.095989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.166967, 19.409687, 29.104116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084221, 0.027405, 0.996070,
		-0.992910, 0.081849, -0.086206,
		-0.083890, -0.996268, 0.020318,
		13.141801, 19.110807, 29.110212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.499071, 19.649679, 29.366840>,  <13.200523, 19.808195, 29.095989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.499071, 19.649679, 29.366840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.808976, 19.415075, 29.461287>,  <12.994919, 19.274313, 29.517954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.808976, 19.415075, 29.461287>,  <12.499071, 19.649679, 29.366840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.808976, 19.415075, 29.461287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320548, -0.042484, 0.946279,
		-0.544970, -0.808828, -0.220920,
		0.774762, -0.586508, 0.236115,
		13.041405, 19.239122, 29.532122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.112794, 19.875429, 30.018847>,  <12.499071, 19.649679, 29.366840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.112794, 19.875429, 30.018847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.898562, 20.185925, 29.885817>,  <11.770023, 20.372221, 29.805998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.898562, 20.185925, 29.885817>,  <12.112794, 19.875429, 30.018847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.898562, 20.185925, 29.885817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207402, -0.260854, -0.942836,
		-0.818620, -0.573941, -0.021286,
		-0.535580, 0.776239, -0.332577,
		11.737888, 20.418797, 29.786043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.764366, 19.643370, 29.384497>,  <12.112794, 19.875429, 30.018847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.764366, 19.643370, 29.384497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.734670, 20.041693, 29.363121>,  <11.716852, 20.280687, 29.350296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.734670, 20.041693, 29.363121>,  <11.764366, 19.643370, 29.384497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.734670, 20.041693, 29.363121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147483, -0.042032, -0.988171,
		-0.986274, -0.081244, -0.143744,
		-0.074241, 0.995808, -0.053437,
		11.712398, 20.340435, 29.347090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.336141, 19.789246, 28.844456>,  <11.764366, 19.643370, 29.384497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.336141, 19.789246, 28.844456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.532487, 20.135181, 28.886606>,  <11.650295, 20.342743, 28.911896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.532487, 20.135181, 28.886606>,  <11.336141, 19.789246, 28.844456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.532487, 20.135181, 28.886606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032338, 0.138952, -0.989771,
		-0.870634, 0.482438, 0.096174,
		0.490867, 0.864839, 0.105375,
		11.679747, 20.394632, 28.918219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.996513, 20.286303, 28.325377>,  <11.336141, 19.789246, 28.844456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.996513, 20.286303, 28.325377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.370942, 20.397430, 28.411715>,  <11.595599, 20.464108, 28.463516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.370942, 20.397430, 28.411715>,  <10.996513, 20.286303, 28.325377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.370942, 20.397430, 28.411715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222755, 0.006840, -0.974851,
		-0.272307, 0.960610, -0.055483,
		0.936071, 0.277818, 0.215843,
		11.651764, 20.480776, 28.476467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.124189, 20.783886, 27.844494>,  <10.996513, 20.286303, 28.325377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.124189, 20.783886, 27.844494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.494156, 20.672014, 27.947495>,  <11.716136, 20.604891, 28.009295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.494156, 20.672014, 27.947495>,  <11.124189, 20.783886, 27.844494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.494156, 20.672014, 27.947495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289484, 0.079063, -0.953912,
		0.246430, 0.956833, 0.154089,
		0.924917, -0.279679, 0.257504,
		11.771631, 20.588110, 28.024746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.507862, 21.238386, 27.535034>,  <11.124189, 20.783886, 27.844494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.507862, 21.238386, 27.535034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.744519, 20.919271, 27.581501>,  <11.886514, 20.727802, 27.609381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.744519, 20.919271, 27.581501>,  <11.507862, 21.238386, 27.535034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.744519, 20.919271, 27.581501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438484, 0.197513, -0.876767,
		0.676529, 0.569670, 0.466674,
		0.591642, -0.797787, 0.116168,
		11.922012, 20.679935, 27.616352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.043770, 21.432787, 27.135426>,  <11.507862, 21.238386, 27.535034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.043770, 21.432787, 27.135426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.105396, 21.042824, 27.199697>,  <12.142372, 20.808846, 27.238260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.105396, 21.042824, 27.199697>,  <12.043770, 21.432787, 27.135426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.105396, 21.042824, 27.199697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367102, -0.094501, -0.925368,
		0.917333, 0.201553, 0.343332,
		0.154065, -0.974908, 0.160679,
		12.151616, 20.750351, 27.247902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.688932, 21.324253, 26.795031>,  <12.043770, 21.432787, 27.135426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.688932, 21.324253, 26.795031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.539408, 20.958521, 26.857336>,  <12.449693, 20.739080, 26.894720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.539408, 20.958521, 26.857336>,  <12.688932, 21.324253, 26.795031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.539408, 20.958521, 26.857336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444218, -0.323916, -0.835314,
		0.814208, -0.243056, 0.527246,
		-0.373812, -0.914331, 0.155765,
		12.427264, 20.684221, 26.904066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.226600, 20.953405, 26.735878>,  <12.688932, 21.324253, 26.795031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.226600, 20.953405, 26.735878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.924609, 20.696541, 26.682749>,  <12.743415, 20.542423, 26.650871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.924609, 20.696541, 26.682749>,  <13.226600, 20.953405, 26.735878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.924609, 20.696541, 26.682749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413922, -0.309574, -0.856057,
		0.508607, -0.701280, 0.499525,
		-0.754975, -0.642160, -0.132824,
		12.698116, 20.503893, 26.642902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.563719, 20.290131, 26.571239>,  <13.226600, 20.953405, 26.735878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.563719, 20.290131, 26.571239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.181560, 20.259481, 26.457157>,  <12.952264, 20.241093, 26.388708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.181560, 20.259481, 26.457157>,  <13.563719, 20.290131, 26.571239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.181560, 20.259481, 26.457157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277365, -0.564404, -0.777506,
		-0.101395, -0.821934, 0.560484,
		-0.955399, -0.076624, -0.285204,
		12.894939, 20.236494, 26.371595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.550146, 19.624498, 26.327377>,  <13.563719, 20.290131, 26.571239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.550146, 19.624498, 26.327377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.204052, 19.773539, 26.193190>,  <12.996396, 19.862963, 26.112677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.204052, 19.773539, 26.193190>,  <13.550146, 19.624498, 26.327377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.204052, 19.773539, 26.193190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035750, -0.621553, -0.782556,
		-0.500091, -0.689087, 0.524469,
		-0.865235, 0.372599, -0.335468,
		12.944482, 19.885319, 26.092548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.135075, 19.081888, 26.044756>,  <13.550146, 19.624498, 26.327377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.135075, 19.081888, 26.044756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.002263, 19.404043, 25.848345>,  <12.922576, 19.597336, 25.730499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.002263, 19.404043, 25.848345>,  <13.135075, 19.081888, 26.044756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.002263, 19.404043, 25.848345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144649, -0.470927, -0.870233,
		-0.932112, -0.359970, 0.039863,
		-0.332030, 0.805388, -0.491026,
		12.902654, 19.645660, 25.701036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.582648, 18.901651, 25.570662>,  <13.135075, 19.081888, 26.044756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.582648, 18.901651, 25.570662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.769190, 19.223425, 25.423475>,  <12.881115, 19.416489, 25.335163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.769190, 19.223425, 25.423475>,  <12.582648, 18.901651, 25.570662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.769190, 19.223425, 25.423475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124123, -0.471363, -0.873161,
		-0.875847, 0.361528, -0.319671,
		0.466353, 0.804434, -0.367968,
		12.909096, 19.464756, 25.313086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.282452, 19.059252, 24.886536>,  <12.582648, 18.901651, 25.570662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.282452, 19.059252, 24.886536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.649958, 19.216421, 24.901924>,  <12.870461, 19.310722, 24.911158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.649958, 19.216421, 24.901924>,  <12.282452, 19.059252, 24.886536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.649958, 19.216421, 24.901924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226617, -0.445067, -0.866349,
		-0.323288, 0.804690, -0.497955,
		0.918765, 0.392925, 0.038471,
		12.925588, 19.334299, 24.913465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.658364, 19.071764, 24.540863>,  <12.282452, 19.059252, 24.886536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.658364, 19.071764, 24.540863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.285584, 18.999586, 24.415064>,  <11.061916, 18.956280, 24.339584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.285584, 18.999586, 24.415064>,  <11.658364, 19.071764, 24.540863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.285584, 18.999586, 24.415064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336872, 0.110079, 0.935094,
		-0.134111, 0.977406, -0.163374,
		-0.931950, -0.180443, -0.314498,
		11.006000, 18.945454, 24.320715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.294329, 19.725021, 24.809196>,  <11.658364, 19.071764, 24.540863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.294329, 19.725021, 24.809196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.063805, 19.402889, 24.753611>,  <10.925490, 19.209610, 24.720259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.063805, 19.402889, 24.753611>,  <11.294329, 19.725021, 24.809196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.063805, 19.402889, 24.753611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320298, 0.066143, 0.945005,
		-0.751848, 0.589128, -0.296064,
		-0.576311, -0.805328, -0.138967,
		10.890911, 19.161291, 24.711920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.755065, 19.830984, 25.223757>,  <11.294329, 19.725021, 24.809196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.755065, 19.830984, 25.223757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.711905, 19.440218, 25.150007>,  <10.686008, 19.205759, 25.105757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.711905, 19.440218, 25.150007>,  <10.755065, 19.830984, 25.223757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.711905, 19.440218, 25.150007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312163, -0.142785, 0.939238,
		-0.943881, 0.158900, -0.289550,
		-0.107902, -0.976915, -0.184375,
		10.679534, 19.147144, 25.094694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.064991, 19.690405, 25.295458>,  <10.755065, 19.830984, 25.223757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.064991, 19.690405, 25.295458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.200106, 19.314623, 25.318506>,  <10.281175, 19.089153, 25.332336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.200106, 19.314623, 25.318506>,  <10.064991, 19.690405, 25.295458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.200106, 19.314623, 25.318506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515180, -0.133306, 0.846652,
		-0.787712, -0.315674, -0.529018,
		0.337787, -0.939457, 0.057622,
		10.301442, 19.032785, 25.335793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.528429, 19.266012, 25.487091>,  <10.064991, 19.690405, 25.295458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.528429, 19.266012, 25.487091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.842053, 19.039745, 25.589281>,  <10.030228, 18.903984, 25.650595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.842053, 19.039745, 25.589281>,  <9.528429, 19.266012, 25.487091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.842053, 19.039745, 25.589281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457307, -0.248180, 0.853977,
		-0.419666, -0.786400, -0.453273,
		0.784061, -0.565670, 0.255473,
		10.077271, 18.870045, 25.665924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.249722, 18.583603, 25.838438>,  <9.528429, 19.266012, 25.487091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.249722, 18.583603, 25.838438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.629213, 18.643894, 25.949575>,  <9.856908, 18.680069, 26.016258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.629213, 18.643894, 25.949575>,  <9.249722, 18.583603, 25.838438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.629213, 18.643894, 25.949575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295625, 0.111909, 0.948727,
		0.111909, -0.982221, 0.150730,
		-0.948727, -0.150730, -0.277845,
		9.913832, 18.689114, 26.032928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.416485, 18.070705, 26.384142>,  <9.249722, 18.583603, 25.838438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.416485, 18.070705, 26.384142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.682096, 18.368513, 26.411734>,  <9.841464, 18.547197, 26.428289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.682096, 18.368513, 26.411734>,  <9.416485, 18.070705, 26.384142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.682096, 18.368513, 26.411734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438313, 0.312862, 0.842614,
		0.605761, -0.589755, 0.534082,
		0.664030, 0.744518, 0.068978,
		9.881306, 18.591867, 26.432426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.471102, 17.393652, 26.734804>,  <9.416485, 18.070705, 26.384142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.471102, 17.393652, 26.734804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.176405, 17.123238, 26.740255>,  <8.999587, 16.960989, 26.743526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.176405, 17.123238, 26.740255>,  <9.471102, 17.393652, 26.734804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.176405, 17.123238, 26.740255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004148, -0.024671, -0.999687,
		0.676161, -0.736455, 0.020980,
		-0.736742, -0.676036, 0.013627,
		8.955382, 16.920427, 26.744343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.734103, 16.955498, 26.234074>,  <9.471102, 17.393652, 26.734804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.734103, 16.955498, 26.234074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.349677, 16.862226, 26.293377>,  <9.119021, 16.806263, 26.328959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.349677, 16.862226, 26.293377>,  <9.734103, 16.955498, 26.234074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.349677, 16.862226, 26.293377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132004, -0.083925, -0.987690,
		0.242752, -0.968805, 0.049877,
		-0.961065, -0.233180, 0.148259,
		9.061357, 16.792273, 26.337854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.615943, 16.384785, 25.799904>,  <9.734103, 16.955498, 26.234074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.615943, 16.384785, 25.799904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.257335, 16.552954, 25.855755>,  <9.042170, 16.653856, 25.889265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.257335, 16.552954, 25.855755>,  <9.615943, 16.384785, 25.799904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.257335, 16.552954, 25.855755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122499, 0.067625, -0.990162,
		-0.425730, -0.904804, -0.009125,
		-0.896520, 0.420423, 0.139627,
		8.988379, 16.679081, 25.897642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.091882, 15.989607, 25.301983>,  <9.615943, 16.384785, 25.799904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.091882, 15.989607, 25.301983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.884898, 16.327133, 25.358852>,  <8.760708, 16.529650, 25.392973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.884898, 16.327133, 25.358852>,  <9.091882, 15.989607, 25.301983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.884898, 16.327133, 25.358852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290953, -0.017251, -0.956582,
		-0.804726, -0.536356, 0.254438,
		-0.517458, 0.843816, 0.142172,
		8.729661, 16.580278, 25.401505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.458947, 15.819446, 25.153271>,  <9.091882, 15.989607, 25.301983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.458947, 15.819446, 25.153271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.506658, 16.209646, 25.079330>,  <8.535284, 16.443768, 25.034967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.506658, 16.209646, 25.079330>,  <8.458947, 15.819446, 25.153271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.506658, 16.209646, 25.079330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327517, -0.137099, -0.934846,
		-0.937287, 0.172045, 0.303141,
		0.119275, 0.975502, -0.184849,
		8.542440, 16.502296, 25.023876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.007912, 15.984115, 24.543816>,  <8.458947, 15.819446, 25.153271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.007912, 15.984115, 24.543816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.257442, 16.296736, 24.542021>,  <8.407160, 16.484308, 24.540943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.257442, 16.296736, 24.542021>,  <8.007912, 15.984115, 24.543816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.257442, 16.296736, 24.542021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003413, -0.008467, -0.999958,
		-0.781557, 0.623783, -0.007950,
		0.623824, 0.781552, -0.004489,
		8.444589, 16.531200, 24.540674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.729279, 16.451578, 24.013100>,  <8.007912, 15.984115, 24.543816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.729279, 16.451578, 24.013100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.116078, 16.536810, 24.068970>,  <8.348158, 16.587950, 24.102491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.116078, 16.536810, 24.068970>,  <7.729279, 16.451578, 24.013100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.116078, 16.536810, 24.068970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158996, -0.076315, -0.984325,
		-0.199079, 0.974050, -0.107676,
		0.966999, 0.213079, 0.139677,
		8.406178, 16.600733, 24.110872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<10.686765, 15.361160, 25.734755> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.551967, 15.733750, 25.679924>,  <10.471087, 15.957304, 25.647026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.551967, 15.733750, 25.679924>,  <10.686765, 15.361160, 25.734755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.551967, 15.733750, 25.679924> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269029, 0.044253, 0.962115,
		0.902252, 0.361105, 0.235680,
		-0.336995, 0.931474, -0.137075,
		10.450868, 16.013193, 25.638802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.395305, 15.596972, 26.478771>,  <10.686765, 15.361160, 25.734755>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.395305, 15.596972, 26.478771> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.669362, 15.575477, 26.769341>,  <10.833797, 15.562580, 26.943682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.669362, 15.575477, 26.769341>,  <10.395305, 15.596972, 26.478771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.669362, 15.575477, 26.769341> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708547, -0.182127, -0.681756,
		0.168937, 0.981806, -0.086708,
		0.685144, -0.053737, 0.726423,
		10.874906, 15.559356, 26.987268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.940838, 16.097710, 26.357248>,  <10.395305, 15.596972, 26.478771>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.940838, 16.097710, 26.357248> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.026183, 15.755937, 26.546741>,  <11.077391, 15.550873, 26.660437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.026183, 15.755937, 26.546741>,  <10.940838, 16.097710, 26.357248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.026183, 15.755937, 26.546741> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691907, -0.210183, -0.690715,
		0.689739, 0.475153, 0.546342,
		0.213364, -0.854431, 0.473734,
		11.090192, 15.499607, 26.688862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.373434, 16.152983, 26.919317>,  <10.940838, 16.097710, 26.357248>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.373434, 16.152983, 26.919317> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.621226, 16.036182, 27.210791>,  <11.769902, 15.966103, 27.385674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.621226, 16.036182, 27.210791>,  <11.373434, 16.152983, 26.919317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.621226, 16.036182, 27.210791> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700764, -0.212653, -0.680962,
		0.353798, 0.932478, 0.072889,
		0.619482, -0.292001, 0.728683,
		11.807071, 15.948583, 27.429396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.033676, 16.315615, 26.708813>,  <11.373434, 16.152983, 26.919317>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.033676, 16.315615, 26.708813> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.102593, 16.054508, 27.003895>,  <12.143944, 15.897844, 27.180944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.102593, 16.054508, 27.003895>,  <12.033676, 16.315615, 26.708813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.102593, 16.054508, 27.003895> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666821, -0.473931, -0.575100,
		0.725028, 0.591004, 0.353622,
		0.172294, -0.652766, 0.737707,
		12.154282, 15.858679, 27.225206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.743561, 16.256750, 26.797216>,  <12.033676, 16.315615, 26.708813>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.743561, 16.256750, 26.797216> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.618646, 15.912423, 26.957951>,  <12.543696, 15.705827, 27.054390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.618646, 15.912423, 26.957951>,  <12.743561, 16.256750, 26.797216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.618646, 15.912423, 26.957951> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761392, -0.479756, -0.436023,
		0.568119, 0.169788, 0.805241,
		-0.312288, -0.860817, 0.401833,
		12.524960, 15.654178, 27.078501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.337328, 15.987816, 27.061153>,  <12.743561, 16.256750, 26.797216>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.337328, 15.987816, 27.061153> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.067547, 15.700864, 26.991322>,  <12.905678, 15.528692, 26.949423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.067547, 15.700864, 26.991322>,  <13.337328, 15.987816, 27.061153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.067547, 15.700864, 26.991322> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651400, -0.466872, -0.598087,
		0.347549, -0.517103, 0.782185,
		-0.674453, -0.717381, -0.174580,
		12.865211, 15.485650, 26.938948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.718438, 15.416028, 27.101027>,  <13.337328, 15.987816, 27.061153>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.718438, 15.416028, 27.101027> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.401667, 15.289252, 26.892260>,  <13.211603, 15.213187, 26.767000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.401667, 15.289252, 26.892260>,  <13.718438, 15.416028, 27.101027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.401667, 15.289252, 26.892260> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609592, -0.360978, -0.705757,
		0.035282, -0.877066, 0.479073,
		-0.791930, -0.316940, -0.521916,
		13.164087, 15.194170, 26.735685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.912249, 14.764932, 26.987215>,  <13.718438, 15.416028, 27.101027>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.912249, 14.764932, 26.987215> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.606919, 14.796196, 26.730707>,  <13.423721, 14.814955, 26.576801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.606919, 14.796196, 26.730707>,  <13.912249, 14.764932, 26.987215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.606919, 14.796196, 26.730707> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427327, -0.683364, -0.591951,
		-0.484488, -0.725882, 0.488227,
		-0.763323, 0.078160, -0.641271,
		13.377922, 14.819644, 26.538326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.631467, 14.018318, 26.791857>,  <13.912249, 14.764932, 26.987215>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.631467, 14.018318, 26.791857> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.506822, 14.271605, 26.508467>,  <13.432034, 14.423576, 26.338432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.506822, 14.271605, 26.508467>,  <13.631467, 14.018318, 26.791857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.506822, 14.271605, 26.508467> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320085, -0.632071, -0.705714,
		-0.894674, -0.446682, -0.005721,
		-0.311614, 0.633215, -0.708474,
		13.413338, 14.461569, 26.295925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.383211, 13.576349, 26.292707>,  <13.631467, 14.018318, 26.791857>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.383211, 13.576349, 26.292707> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.467582, 13.923634, 26.113054>,  <13.518204, 14.132005, 26.005262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.467582, 13.923634, 26.113054>,  <13.383211, 13.576349, 26.292707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.467582, 13.923634, 26.113054> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318123, -0.495425, -0.808302,
		-0.924288, 0.027613, -0.380696,
		0.210926, 0.868212, -0.449131,
		13.530860, 14.184097, 25.978315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.979160, 13.513319, 25.687258>,  <13.383211, 13.576349, 26.292707>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.979160, 13.513319, 25.687258> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.265917, 13.785362, 25.625912>,  <13.437970, 13.948588, 25.589104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.265917, 13.785362, 25.625912>,  <12.979160, 13.513319, 25.687258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.265917, 13.785362, 25.625912> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193625, -0.405547, -0.893332,
		-0.669760, 0.610725, -0.422418,
		0.716890, 0.680108, -0.153367,
		13.480984, 13.989394, 25.579901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.887293, 12.714588, 25.739981>,  <12.979160, 13.513319, 25.687258>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.887293, 12.714588, 25.739981> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.646385, 12.398368, 25.695616>,  <12.501841, 12.208635, 25.668997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.646385, 12.398368, 25.695616>,  <12.887293, 12.714588, 25.739981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.646385, 12.398368, 25.695616> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510843, 0.274901, 0.814536,
		-0.613442, 0.547229, -0.569412,
		-0.602269, -0.790551, -0.110912,
		12.465704, 12.161202, 25.662342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.150289, 12.954047, 25.852663>,  <12.887293, 12.714588, 25.739981>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.150289, 12.954047, 25.852663> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.132625, 12.558908, 25.912264>,  <12.122026, 12.321823, 25.948025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.132625, 12.558908, 25.912264>,  <12.150289, 12.954047, 25.852663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.132625, 12.558908, 25.912264> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624038, 0.143748, 0.768058,
		-0.780145, -0.059066, -0.622804,
		-0.044160, -0.987850, 0.149004,
		12.119376, 12.262552, 25.956964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.538467, 12.948560, 26.182356>,  <12.150289, 12.954047, 25.852663>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.538467, 12.948560, 26.182356> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.687186, 12.582725, 26.245975>,  <11.776418, 12.363224, 26.284147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.687186, 12.582725, 26.245975>,  <11.538467, 12.948560, 26.182356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.687186, 12.582725, 26.245975> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463622, -0.034504, 0.885361,
		-0.804252, -0.402914, -0.436851,
		0.371798, -0.914587, 0.159050,
		11.798726, 12.308349, 26.293690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.973316, 12.463664, 26.237326>,  <11.538467, 12.948560, 26.182356>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.973316, 12.463664, 26.237326> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.289910, 12.326537, 26.439722>,  <11.479867, 12.244261, 26.561159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.289910, 12.326537, 26.439722>,  <10.973316, 12.463664, 26.237326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.289910, 12.326537, 26.439722> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514768, 0.072402, 0.854267,
		-0.329492, -0.936608, -0.119166,
		0.791486, -0.342818, 0.505991,
		11.527356, 12.223692, 26.591520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.662138, 12.006571, 26.668480>,  <10.973316, 12.463664, 26.237326>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.662138, 12.006571, 26.668480> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.017476, 12.079059, 26.837242>,  <11.230679, 12.122551, 26.938499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.017476, 12.079059, 26.837242>,  <10.662138, 12.006571, 26.668480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.017476, 12.079059, 26.837242> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446303, 0.124708, 0.886150,
		0.107973, -0.975504, 0.191662,
		0.888344, 0.181220, 0.421905,
		11.283979, 12.133425, 26.963814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.703626, 11.603947, 27.267582>,  <10.662138, 12.006571, 26.668480>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.703626, 11.603947, 27.267582> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.960049, 11.907003, 27.316608>,  <11.113902, 12.088838, 27.346024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.960049, 11.907003, 27.316608>,  <10.703626, 11.603947, 27.267582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.960049, 11.907003, 27.316608> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423057, 0.215584, 0.880083,
		0.640365, -0.616036, 0.458729,
		0.641057, 0.757643, 0.122566,
		11.152366, 12.134296, 27.353378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.942440, 11.597072, 27.932590>,  <10.703626, 11.603947, 27.267582>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.942440, 11.597072, 27.932590> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.992456, 11.973870, 27.808006>,  <11.022467, 12.199949, 27.733255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.992456, 11.973870, 27.808006>,  <10.942440, 11.597072, 27.932590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.992456, 11.973870, 27.808006> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240210, 0.333330, 0.911696,
		0.962634, -0.039183, 0.267957,
		0.125041, 0.941995, -0.311462,
		11.029969, 12.256469, 27.714567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.068270, 11.966750, 28.516832>,  <10.942440, 11.597072, 27.932590>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.068270, 11.966750, 28.516832> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.993295, 12.276600, 28.275229>,  <10.948310, 12.462509, 28.130266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.993295, 12.276600, 28.275229>,  <11.068270, 11.966750, 28.516832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.993295, 12.276600, 28.275229> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414166, 0.495250, 0.763671,
		0.890692, 0.393301, 0.227994,
		-0.187438, 0.774623, -0.604008,
		10.937063, 12.508986, 28.094027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.305001, 12.475734, 28.870907>,  <11.068270, 11.966750, 28.516832>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.305001, 12.475734, 28.870907> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.063993, 12.646544, 28.601206>,  <10.919387, 12.749031, 28.439386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.063993, 12.646544, 28.601206>,  <11.305001, 12.475734, 28.870907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.063993, 12.646544, 28.601206> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323342, 0.641770, 0.695400,
		0.729669, 0.637007, -0.248605,
		-0.602522, 0.427027, -0.674251,
		10.883236, 12.774652, 28.398930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.543989, 13.040919, 28.924938>,  <11.305001, 12.475734, 28.870907>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.543989, 13.040919, 28.924938> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.181243, 13.067139, 28.758423>,  <10.963595, 13.082870, 28.658514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.181243, 13.067139, 28.758423>,  <11.543989, 13.040919, 28.924938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.181243, 13.067139, 28.758423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242874, 0.725981, 0.643400,
		0.344391, 0.684584, -0.642448,
		-0.906867, 0.065548, -0.416289,
		10.909183, 13.086802, 28.633535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.491735, 13.747787, 28.818365>,  <11.543989, 13.040919, 28.924938>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.491735, 13.747787, 28.818365> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.107780, 13.639399, 28.789545>,  <10.877406, 13.574366, 28.772253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.107780, 13.639399, 28.789545>,  <11.491735, 13.747787, 28.818365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.107780, 13.639399, 28.789545> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269195, 0.818752, 0.507128,
		-0.078425, 0.506182, -0.858854,
		-0.959887, -0.270971, -0.072050,
		10.819814, 13.558107, 28.767929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.108571, 14.334041, 28.559500>,  <11.491735, 13.747787, 28.818365>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.108571, 14.334041, 28.559500> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.856160, 14.101771, 28.765265>,  <10.704714, 13.962410, 28.888723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.856160, 14.101771, 28.765265>,  <11.108571, 14.334041, 28.559500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.856160, 14.101771, 28.765265> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337411, 0.802542, 0.492016,
		-0.698540, 0.136907, -0.702352,
		-0.631028, -0.580674, 0.514414,
		10.666852, 13.927569, 28.919588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.507724, 14.695832, 28.505339>,  <11.108571, 14.334041, 28.559500>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.507724, 14.695832, 28.505339> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.497253, 14.465029, 28.831865>,  <10.490972, 14.326547, 29.027782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.497253, 14.465029, 28.831865>,  <10.507724, 14.695832, 28.505339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.497253, 14.465029, 28.831865> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481476, 0.722918, 0.495551,
		-0.876069, -0.380067, -0.296738,
		-0.026175, -0.577009, 0.816319,
		10.489401, 14.291926, 29.076761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.855877, 14.679738, 28.703838>,  <10.507724, 14.695832, 28.505339>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.855877, 14.679738, 28.703838> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.079136, 14.589603, 29.023262>,  <10.213091, 14.535522, 29.214916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.079136, 14.589603, 29.023262>,  <9.855877, 14.679738, 28.703838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.079136, 14.589603, 29.023262> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317311, 0.831296, 0.456357,
		-0.766672, -0.508105, 0.392483,
		0.558147, -0.225337, 0.798558,
		10.246580, 14.522002, 29.262829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.867057, 15.454306, 28.660347>,  <9.855877, 14.679738, 28.703838>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.867057, 15.454306, 28.660347> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.705771, 15.638304, 28.976784>,  <9.609000, 15.748702, 29.166645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.705771, 15.638304, 28.976784>,  <9.867057, 15.454306, 28.660347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.705771, 15.638304, 28.976784> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493743, 0.618496, -0.611295,
		-0.770478, -0.637078, -0.022268,
		-0.403215, 0.459995, 0.791090,
		9.584807, 15.776302, 29.214111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.090813, 15.330966, 28.720322>,  <9.867057, 15.454306, 28.660347>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.090813, 15.330966, 28.720322> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.226006, 15.687383, 28.841522>,  <9.307121, 15.901233, 28.914244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.226006, 15.687383, 28.841522>,  <9.090813, 15.330966, 28.720322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.226006, 15.687383, 28.841522> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512242, 0.444246, -0.735019,
		-0.789541, 0.093212, 0.606577,
		0.337982, 0.891043, 0.303004,
		9.327400, 15.954696, 28.932423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.504488, 15.740438, 28.763165>,  <9.090813, 15.330966, 28.720322>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.504488, 15.740438, 28.763165> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.814995, 15.986123, 28.706387>,  <9.001299, 16.133535, 28.672319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.814995, 15.986123, 28.706387>,  <8.504488, 15.740438, 28.763165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.814995, 15.986123, 28.706387> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478711, 0.427835, -0.766677,
		-0.410176, 0.663097, 0.626146,
		0.776268, 0.614215, -0.141944,
		9.047875, 16.170387, 28.663803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.221348, 16.366745, 28.602602>,  <8.504488, 15.740438, 28.763165>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.221348, 16.366745, 28.602602> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.589732, 16.388269, 28.448235>,  <8.810763, 16.401184, 28.355614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.589732, 16.388269, 28.448235>,  <8.221348, 16.366745, 28.602602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.589732, 16.388269, 28.448235> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374201, 0.398291, -0.837459,
		0.108643, 0.915679, 0.386947,
		0.920962, 0.053812, -0.385920,
		8.866020, 16.404413, 28.332458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.226752, 17.034624, 28.311825>,  <8.221348, 16.366745, 28.602602>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.226752, 17.034624, 28.311825> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.554938, 16.854588, 28.170824>,  <8.751850, 16.746565, 28.086224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.554938, 16.854588, 28.170824>,  <8.226752, 17.034624, 28.311825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.554938, 16.854588, 28.170824> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184140, 0.375672, -0.908275,
		0.541231, 0.810116, 0.225345,
		0.820464, -0.450091, -0.352500,
		8.801078, 16.719561, 28.065075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.339850, 17.481483, 27.735216>,  <8.226752, 17.034624, 28.311825>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.339850, 17.481483, 27.735216> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.572082, 17.163984, 27.662670>,  <8.711420, 16.973484, 27.619143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.572082, 17.163984, 27.662670>,  <8.339850, 17.481483, 27.735216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.572082, 17.163984, 27.662670> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115112, 0.140495, -0.983367,
		0.806027, 0.591798, -0.009802,
		0.580577, -0.793748, -0.181366,
		8.746255, 16.925859, 27.608261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.870259, 17.726105, 27.301216>,  <8.339850, 17.481483, 27.735216>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.870259, 17.726105, 27.301216> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.852330, 17.331680, 27.237122>,  <8.841573, 17.095026, 27.198664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.852330, 17.331680, 27.237122>,  <8.870259, 17.726105, 27.301216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.852330, 17.331680, 27.237122> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052422, 0.157856, -0.986070,
		0.997619, -0.052598, 0.044616,
		-0.044822, -0.986060, -0.160238,
		8.838883, 17.035862, 27.189051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.494304, 18.078167, 27.098944>,  <8.870259, 17.726105, 27.301216>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.494304, 18.078167, 27.098944> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.662011, 18.422594, 26.983858>,  <9.762635, 18.629250, 26.914806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.662011, 18.422594, 26.983858>,  <9.494304, 18.078167, 27.098944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.662011, 18.422594, 26.983858> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279112, 0.423820, 0.861669,
		0.863893, -0.280966, 0.418028,
		0.419268, 0.861066, -0.287714,
		9.787791, 18.680914, 26.897545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.825895, 18.303942, 27.691782>,  <9.494304, 18.078167, 27.098944>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.825895, 18.303942, 27.691782> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.823651, 18.635311, 27.467751>,  <9.822305, 18.834133, 27.333332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.823651, 18.635311, 27.467751>,  <9.825895, 18.303942, 27.691782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.823651, 18.635311, 27.467751> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274862, 0.537235, 0.797389,
		0.961467, 0.158418, 0.224688,
		-0.005610, 0.828422, -0.560077,
		9.821968, 18.883837, 27.299728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.247987, 18.791073, 28.040552>,  <9.825895, 18.303942, 27.691782>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.247987, 18.791073, 28.040552> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.992146, 18.981544, 27.799170>,  <9.838641, 19.095827, 27.654339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.992146, 18.981544, 27.799170>,  <10.247987, 18.791073, 28.040552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.992146, 18.981544, 27.799170> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226083, 0.633784, 0.739733,
		0.734707, 0.609567, -0.297714,
		-0.639603, 0.476179, -0.603459,
		9.800264, 19.124397, 27.618132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.360399, 19.491961, 28.235388>,  <10.247987, 18.791073, 28.040552>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.360399, 19.491961, 28.235388> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.014035, 19.503620, 28.035648>,  <9.806217, 19.510616, 27.915804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.014035, 19.503620, 28.035648>,  <10.360399, 19.491961, 28.235388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.014035, 19.503620, 28.035648> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367181, 0.640876, 0.674133,
		0.339672, 0.767090, -0.544238,
		-0.865910, 0.029150, -0.499349,
		9.754262, 19.512365, 27.885843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.270316, 20.247026, 28.127329>,  <10.360399, 19.491961, 28.235388>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.270316, 20.247026, 28.127329> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.953377, 20.003128, 28.119404>,  <9.763213, 19.856789, 28.114649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.953377, 20.003128, 28.119404>,  <10.270316, 20.247026, 28.127329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.953377, 20.003128, 28.119404> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319625, 0.387245, 0.864801,
		-0.519637, 0.691557, -0.501723,
		-0.792349, -0.609747, -0.019812,
		9.715672, 19.820204, 28.113461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.766441, 20.613333, 28.409222>,  <10.270316, 20.247026, 28.127329>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.766441, 20.613333, 28.409222> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.616100, 20.242952, 28.423897>,  <9.525896, 20.020723, 28.432701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.616100, 20.242952, 28.423897>,  <9.766441, 20.613333, 28.409222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.616100, 20.242952, 28.423897> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398865, 0.197385, 0.895514,
		-0.836446, 0.321948, -0.443518,
		-0.375852, -0.925953, 0.036688,
		9.503345, 19.965166, 28.434904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.129676, 20.792461, 28.659805>,  <9.766441, 20.613333, 28.409222>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.129676, 20.792461, 28.659805> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.225465, 20.412037, 28.737919>,  <9.282938, 20.183783, 28.784788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.225465, 20.412037, 28.737919>,  <9.129676, 20.792461, 28.659805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.225465, 20.412037, 28.737919> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264696, 0.129566, 0.955588,
		-0.934125, -0.280529, -0.220714,
		0.239473, -0.951060, 0.195286,
		9.297307, 20.126719, 28.796505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.542277, 20.604265, 29.024290>,  <9.129676, 20.792461, 28.659805>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.542277, 20.604265, 29.024290> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.836150, 20.344151, 29.101616>,  <9.012474, 20.188082, 29.148012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.836150, 20.344151, 29.101616>,  <8.542277, 20.604265, 29.024290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.836150, 20.344151, 29.101616> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292605, -0.046651, 0.955095,
		-0.612067, -0.758256, -0.224551,
		0.734681, -0.650286, 0.193316,
		9.056555, 20.149065, 29.159611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.246094, 20.136414, 29.415815>,  <8.542277, 20.604265, 29.024290>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.246094, 20.136414, 29.415815> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.624207, 20.076132, 29.531557>,  <8.851076, 20.039963, 29.601002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.624207, 20.076132, 29.531557>,  <8.246094, 20.136414, 29.415815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.624207, 20.076132, 29.531557> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307648, -0.116593, 0.944330,
		-0.108560, -0.981682, -0.156572,
		0.945287, -0.150685, 0.289355,
		8.907793, 20.030920, 29.618362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<14.072444, 15.907600, 14.414257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.374934, 16.001558, 14.658534>,  <14.556429, 16.057934, 14.805100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.374934, 16.001558, 14.658534>,  <14.072444, 15.907600, 14.414257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.374934, 16.001558, 14.658534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601978, -0.115983, 0.790045,
		0.256407, -0.965076, 0.053692,
		0.756226, 0.234895, 0.610693,
		14.601802, 16.072027, 14.841742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.087192, 15.448626, 14.993545>,  <14.072444, 15.907600, 14.414257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.087192, 15.448626, 14.993545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.260724, 15.791303, 15.105164>,  <14.364843, 15.996909, 15.172135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.260724, 15.791303, 15.105164>,  <14.087192, 15.448626, 14.993545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.260724, 15.791303, 15.105164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567498, 0.019260, 0.823149,
		0.699812, -0.515467, 0.494527,
		0.433831, 0.856693, 0.279048,
		14.390874, 16.048311, 15.188878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.182139, 15.340961, 15.679075>,  <14.087192, 15.448626, 14.993545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.182139, 15.340961, 15.679075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.216928, 15.738191, 15.647487>,  <14.237803, 15.976529, 15.628533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.216928, 15.738191, 15.647487>,  <14.182139, 15.340961, 15.679075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.216928, 15.738191, 15.647487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369394, 0.105769, 0.923234,
		0.925194, -0.051126, 0.376035,
		0.086974, 0.993076, -0.078971,
		14.243021, 16.036114, 15.623796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.365177, 15.474850, 16.319704>,  <14.182139, 15.340961, 15.679075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.365177, 15.474850, 16.319704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.250300, 15.829063, 16.173635>,  <14.181375, 16.041592, 16.085995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.250300, 15.829063, 16.173635>,  <14.365177, 15.474850, 16.319704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.250300, 15.829063, 16.173635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179475, 0.324731, 0.928622,
		0.940909, 0.332231, 0.065672,
		-0.287191, 0.885535, -0.365170,
		14.164144, 16.094725, 16.064085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.723346, 15.985398, 16.731192>,  <14.365177, 15.474850, 16.319704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.723346, 15.985398, 16.731192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.391980, 16.130684, 16.560637>,  <14.193161, 16.217855, 16.458303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.391980, 16.130684, 16.560637>,  <14.723346, 15.985398, 16.731192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.391980, 16.130684, 16.560637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277364, 0.395351, 0.875652,
		0.486622, 0.843667, -0.226771,
		-0.828413, 0.363214, -0.426389,
		14.143456, 16.239649, 16.432720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.578602, 16.584177, 17.133402>,  <14.723346, 15.985398, 16.731192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.578602, 16.584177, 17.133402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.234005, 16.507542, 16.945305>,  <14.027247, 16.461559, 16.832447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.234005, 16.507542, 16.945305>,  <14.578602, 16.584177, 17.133402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.234005, 16.507542, 16.945305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505925, 0.402793, 0.762757,
		0.043273, 0.895015, -0.443932,
		-0.861491, -0.191590, -0.470240,
		13.975557, 16.450066, 16.804234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.179154, 17.159847, 17.269463>,  <14.578602, 16.584177, 17.133402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.179154, 17.159847, 17.269463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.910235, 16.879107, 17.175297>,  <13.748884, 16.710661, 17.118797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.910235, 16.879107, 17.175297>,  <14.179154, 17.159847, 17.269463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.910235, 16.879107, 17.175297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606143, 0.339342, 0.719332,
		-0.424980, 0.626298, -0.653561,
		-0.672297, -0.701853, -0.235413,
		13.708547, 16.668550, 17.104673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.603622, 17.453722, 17.088751>,  <14.179154, 17.159847, 17.269463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.603622, 17.453722, 17.088751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.466841, 17.096878, 17.206877>,  <13.384772, 16.882772, 17.277752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.466841, 17.096878, 17.206877>,  <13.603622, 17.453722, 17.088751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.466841, 17.096878, 17.206877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637329, 0.451106, 0.624752,
		-0.690565, 0.025423, -0.722824,
		-0.341953, -0.892108, 0.295316,
		13.364255, 16.829247, 17.295471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.908708, 17.531096, 17.113590>,  <13.603622, 17.453722, 17.088751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.908708, 17.531096, 17.113590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.976775, 17.209944, 17.342125>,  <13.017615, 17.017252, 17.479246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.976775, 17.209944, 17.342125>,  <12.908708, 17.531096, 17.113590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.976775, 17.209944, 17.342125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534200, 0.412046, 0.738138,
		-0.828054, -0.430817, -0.358781,
		0.170169, -0.802879, 0.571339,
		13.027825, 16.969080, 17.513527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.321637, 17.346964, 17.343342>,  <12.908708, 17.531096, 17.113590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.321637, 17.346964, 17.343342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.542873, 17.147293, 17.610147>,  <12.675615, 17.027491, 17.770231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.542873, 17.147293, 17.610147>,  <12.321637, 17.346964, 17.343342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.542873, 17.147293, 17.610147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604599, 0.310340, 0.733586,
		-0.573193, -0.809017, -0.130157,
		0.553091, -0.499179, 0.667016,
		12.708800, 16.997540, 17.810253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.934662, 16.910528, 17.682102>,  <12.321637, 17.346964, 17.343342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.934662, 16.910528, 17.682102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.230353, 16.938341, 17.950045>,  <12.407768, 16.955029, 18.110809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.230353, 16.938341, 17.950045>,  <11.934662, 16.910528, 17.682102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.230353, 16.938341, 17.950045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673432, 0.084339, 0.734423,
		-0.005429, -0.994008, 0.109172,
		0.739229, 0.069533, 0.669855,
		12.452122, 16.959202, 18.151001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.736940, 16.562473, 18.354689>,  <11.934662, 16.910528, 17.682102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.736940, 16.562473, 18.354689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.023002, 16.824291, 18.452772>,  <12.194638, 16.981382, 18.511621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.023002, 16.824291, 18.452772>,  <11.736940, 16.562473, 18.354689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.023002, 16.824291, 18.452772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453002, 0.166869, 0.875753,
		0.532302, -0.737377, 0.415847,
		0.715153, 0.654545, 0.245208,
		12.237548, 17.020655, 18.526335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.549008, 15.746653, 18.515980>,  <11.736940, 16.562473, 18.354689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.549008, 15.746653, 18.515980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.180476, 15.597100, 18.558619>,  <10.959357, 15.507369, 18.584202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.180476, 15.597100, 18.558619>,  <11.549008, 15.746653, 18.515980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.180476, 15.597100, 18.558619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043499, -0.371595, -0.927375,
		0.386340, -0.849782, 0.358625,
		-0.921330, -0.373882, 0.106597,
		10.904078, 15.484936, 18.590597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.640640, 14.968094, 18.344522>,  <11.549008, 15.746653, 18.515980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.640640, 14.968094, 18.344522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.248337, 15.025331, 18.291399>,  <11.012955, 15.059674, 18.259525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.248337, 15.025331, 18.291399>,  <11.640640, 14.968094, 18.344522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.248337, 15.025331, 18.291399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029337, -0.564530, -0.824891,
		-0.193012, -0.812915, 0.549469,
		-0.980758, 0.143094, -0.132810,
		10.954109, 15.068260, 18.251556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.305285, 14.285031, 18.319231>,  <11.640640, 14.968094, 18.344522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.305285, 14.285031, 18.319231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.077110, 14.543922, 18.116964>,  <10.940206, 14.699257, 17.995605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.077110, 14.543922, 18.116964>,  <11.305285, 14.285031, 18.319231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.077110, 14.543922, 18.116964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149053, -0.523859, -0.838662,
		-0.807703, -0.553776, 0.202358,
		-0.570438, 0.647228, -0.505665,
		10.905979, 14.738091, 17.965265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.936010, 13.905494, 17.916836>,  <11.305285, 14.285031, 18.319231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.936010, 13.905494, 17.916836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.858811, 14.251371, 17.731340>,  <10.812492, 14.458899, 17.620043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.858811, 14.251371, 17.731340>,  <10.936010, 13.905494, 17.916836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.858811, 14.251371, 17.731340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077512, -0.457713, -0.885715,
		-0.978133, -0.206887, 0.021313,
		-0.192998, 0.864695, -0.463740,
		10.800912, 14.510779, 17.592218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.344437, 13.795001, 17.496256>,  <10.936010, 13.905494, 17.916836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.344437, 13.795001, 17.496256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.550671, 14.104167, 17.348324>,  <10.674411, 14.289667, 17.259565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.550671, 14.104167, 17.348324>,  <10.344437, 13.795001, 17.496256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.550671, 14.104167, 17.348324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033178, -0.413288, -0.909995,
		-0.856196, 0.481451, -0.187442,
		0.515585, 0.772915, -0.369829,
		10.705346, 14.336041, 17.237375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.072052, 13.847850, 16.828274>,  <10.344437, 13.795001, 17.496256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.072052, 13.847850, 16.828274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.406107, 14.066865, 16.807301>,  <10.606540, 14.198274, 16.794716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.406107, 14.066865, 16.807301>,  <10.072052, 13.847850, 16.828274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.406107, 14.066865, 16.807301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091340, -0.232055, -0.968405,
		-0.542406, 0.803961, -0.243810,
		0.835136, 0.547538, -0.052434,
		10.656648, 14.231127, 16.791571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.107709, 14.238869, 16.197599>,  <10.072052, 13.847850, 16.828274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.107709, 14.238869, 16.197599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.498883, 14.246444, 16.280817>,  <10.733588, 14.250989, 16.330748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.498883, 14.246444, 16.280817>,  <10.107709, 14.238869, 16.197599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.498883, 14.246444, 16.280817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204821, -0.282814, -0.937051,
		0.041091, 0.958988, -0.280453,
		0.977936, 0.018938, 0.208042,
		10.792264, 14.252126, 16.343229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.410060, 14.619358, 15.630546>,  <10.107709, 14.238869, 16.197599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.410060, 14.619358, 15.630546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.699455, 14.406845, 15.806865>,  <10.873093, 14.279338, 15.912657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.699455, 14.406845, 15.806865>,  <10.410060, 14.619358, 15.630546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.699455, 14.406845, 15.806865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198355, -0.451617, -0.869884,
		0.661226, 0.716786, -0.221357,
		0.723489, -0.531282, 0.440799,
		10.916502, 14.247460, 15.939104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.949887, 14.577511, 15.245344>,  <10.410060, 14.619358, 15.630546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.949887, 14.577511, 15.245344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.044752, 14.255459, 15.462791>,  <11.101671, 14.062228, 15.593260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.044752, 14.255459, 15.462791>,  <10.949887, 14.577511, 15.245344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.044752, 14.255459, 15.462791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088561, -0.539336, -0.837421,
		0.967425, 0.246747, -0.056607,
		0.237161, -0.805129, 0.543619,
		11.115900, 14.013920, 15.625877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.464288, 14.291383, 14.844170>,  <10.949887, 14.577511, 15.245344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.464288, 14.291383, 14.844170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.298132, 13.998008, 15.059398>,  <11.198439, 13.821982, 15.188535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.298132, 13.998008, 15.059398>,  <11.464288, 14.291383, 14.844170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.298132, 13.998008, 15.059398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048954, -0.608685, -0.791901,
		0.908325, -0.302607, 0.288746,
		-0.415390, -0.733439, 0.538070,
		11.173515, 13.777976, 15.220819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.862873, 13.841677, 14.627370>,  <11.464288, 14.291383, 14.844170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.862873, 13.841677, 14.627370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.526690, 13.683002, 14.775031>,  <11.324981, 13.587798, 14.863628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.526690, 13.683002, 14.775031>,  <11.862873, 13.841677, 14.627370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.526690, 13.683002, 14.775031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081738, -0.580644, -0.810044,
		0.535680, -0.710980, 0.455581,
		-0.840455, -0.396686, 0.369154,
		11.274554, 13.563996, 14.885777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.974843, 13.267663, 14.357731>,  <11.862873, 13.841677, 14.627370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.974843, 13.267663, 14.357731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.595710, 13.229475, 14.479384>,  <11.368230, 13.206562, 14.552377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.595710, 13.229475, 14.479384>,  <11.974843, 13.267663, 14.357731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.595710, 13.229475, 14.479384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201973, -0.558279, -0.804693,
		0.246616, -0.824142, 0.509874,
		-0.947833, -0.095469, 0.304135,
		11.311359, 13.200834, 14.570625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.771717, 12.619296, 14.159367>,  <11.974843, 13.267663, 14.357731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.771717, 12.619296, 14.159367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.428650, 12.820394, 14.202546>,  <11.222810, 12.941052, 14.228454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.428650, 12.820394, 14.202546>,  <11.771717, 12.619296, 14.159367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.428650, 12.820394, 14.202546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380142, -0.478563, -0.791498,
		-0.346260, -0.719879, 0.601563,
		-0.857669, 0.502744, 0.107949,
		11.171350, 12.971217, 14.234931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.038358, 12.187343, 14.319374>,  <11.771717, 12.619296, 14.159367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.038358, 12.187343, 14.319374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.021277, 12.521715, 14.100507>,  <11.011029, 12.722339, 13.969186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.021277, 12.521715, 14.100507>,  <11.038358, 12.187343, 14.319374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.021277, 12.521715, 14.100507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377260, -0.520614, -0.765922,
		-0.925122, 0.173719, 0.337594,
		-0.042701, 0.835932, -0.547169,
		11.008468, 12.772495, 13.936356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.060192, 11.575215, 14.859657>,  <11.038358, 12.187343, 14.319374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.060192, 11.575215, 14.859657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.788525, 11.333646, 15.026513>,  <10.625525, 11.188704, 15.126627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.788525, 11.333646, 15.026513>,  <11.060192, 11.575215, 14.859657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.788525, 11.333646, 15.026513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594900, 0.785813, 0.169092,
		-0.429913, -0.133314, -0.892974,
		-0.679168, -0.603925, 0.417140,
		10.584774, 11.152469, 15.151655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.638018, 11.138607, 15.119277>,  <11.060192, 11.575215, 14.859657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.638018, 11.138607, 15.119277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.025700, 11.062808, 15.056369>,  <12.258308, 11.017328, 15.018624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.025700, 11.062808, 15.056369>,  <11.638018, 11.138607, 15.119277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.025700, 11.062808, 15.056369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129638, -0.150365, 0.980094,
		-0.209377, -0.970299, -0.121168,
		0.969204, -0.189502, -0.157270,
		12.316461, 11.005959, 15.009188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.849711, 10.441207, 15.290399>,  <11.638018, 11.138607, 15.119277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.849711, 10.441207, 15.290399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.155531, 10.693706, 15.342541>,  <12.339023, 10.845204, 15.373826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.155531, 10.693706, 15.342541>,  <11.849711, 10.441207, 15.290399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.155531, 10.693706, 15.342541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045582, -0.254680, 0.965950,
		0.642952, -0.732575, -0.223489,
		0.764549, 0.631247, 0.130354,
		12.384895, 10.883080, 15.381647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.201645, 10.155813, 15.821652>,  <11.849711, 10.441207, 15.290399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.201645, 10.155813, 15.821652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.334388, 10.531331, 15.858605>,  <12.414034, 10.756641, 15.880777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.334388, 10.531331, 15.858605>,  <12.201645, 10.155813, 15.821652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.334388, 10.531331, 15.858605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039243, -0.111588, 0.992979,
		0.942513, -0.325903, -0.073872,
		0.331858, 0.938795, 0.092384,
		12.433946, 10.812969, 15.886320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.784944, 10.028977, 16.263327>,  <12.201645, 10.155813, 15.821652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.784944, 10.028977, 16.263327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.689200, 10.416101, 16.294443>,  <12.631755, 10.648376, 16.313114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.689200, 10.416101, 16.294443>,  <12.784944, 10.028977, 16.263327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.689200, 10.416101, 16.294443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274739, -0.009335, 0.961474,
		0.931250, 0.251509, -0.263660,
		-0.239358, 0.967810, 0.077792,
		12.617393, 10.706445, 16.317781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.342266, 10.325920, 16.715702>,  <12.784944, 10.028977, 16.263327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.342266, 10.325920, 16.715702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.029333, 10.575041, 16.712257>,  <12.841574, 10.724513, 16.710190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.029333, 10.575041, 16.712257>,  <13.342266, 10.325920, 16.715702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.029333, 10.575041, 16.712257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013245, -0.002812, 0.999908,
		0.622721, 0.782374, 0.010449,
		-0.782332, 0.622802, -0.008612,
		12.794634, 10.761882, 16.709673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.564374, 10.898887, 17.160797>,  <13.342266, 10.325920, 16.715702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.564374, 10.898887, 17.160797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.165375, 10.911029, 17.135265>,  <12.925975, 10.918314, 17.119946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.165375, 10.911029, 17.135265>,  <13.564374, 10.898887, 17.160797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.165375, 10.911029, 17.135265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052514, 0.286155, 0.956743,
		0.047307, 0.957702, -0.283846,
		-0.997499, 0.030355, -0.063830,
		12.866125, 10.920135, 17.116116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.235930, 11.572268, 17.474054>,  <13.564374, 10.898887, 17.160797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.235930, 11.572268, 17.474054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.970859, 11.275742, 17.516582>,  <12.811815, 11.097826, 17.542099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.970859, 11.275742, 17.516582>,  <13.235930, 11.572268, 17.474054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.970859, 11.275742, 17.516582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030057, 0.168181, 0.985298,
		-0.748299, 0.649742, -0.133732,
		-0.662680, -0.741317, 0.106321,
		12.772055, 11.053347, 17.548479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.818626, 11.806930, 17.986103>,  <13.235930, 11.572268, 17.474054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.818626, 11.806930, 17.986103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.738056, 11.415359, 17.972635>,  <12.689714, 11.180417, 17.964556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.738056, 11.415359, 17.972635>,  <12.818626, 11.806930, 17.986103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.738056, 11.415359, 17.972635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163732, -0.000239, 0.986505,
		-0.965722, 0.204219, -0.160234,
		-0.201425, -0.978925, -0.033668,
		12.677629, 11.121682, 17.962534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.165360, 11.696485, 18.309559>,  <12.818626, 11.806930, 17.986103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.165360, 11.696485, 18.309559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.364355, 11.349502, 18.307587>,  <12.483752, 11.141312, 18.306404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.364355, 11.349502, 18.307587>,  <12.165360, 11.696485, 18.309559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.364355, 11.349502, 18.307587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114682, -0.071399, 0.990833,
		-0.859857, -0.492361, -0.135002,
		0.497487, -0.867457, -0.004928,
		12.513601, 11.089265, 18.306108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.959865, 11.434067, 19.007912>,  <12.165360, 11.696485, 18.309559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.959865, 11.434067, 19.007912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.238267, 11.184173, 18.866331>,  <12.405308, 11.034236, 18.781384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.238267, 11.184173, 18.866331>,  <11.959865, 11.434067, 19.007912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.238267, 11.184173, 18.866331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194421, -0.310562, 0.930458,
		-0.691215, -0.716419, -0.094691,
		0.696005, -0.624736, -0.353952,
		12.447068, 10.996752, 18.760145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.843538, 10.865052, 19.476109>,  <11.959865, 11.434067, 19.007912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.843538, 10.865052, 19.476109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.209460, 10.818580, 19.321379>,  <12.429013, 10.790696, 19.228540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.209460, 10.818580, 19.321379>,  <11.843538, 10.865052, 19.476109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.209460, 10.818580, 19.321379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349403, -0.252779, 0.902231,
		-0.202600, -0.960524, -0.190651,
		0.914807, -0.116178, -0.386822,
		12.483902, 10.783725, 19.205332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.022402, 10.058328, 19.514570>,  <11.843538, 10.865052, 19.476109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.022402, 10.058328, 19.514570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.356411, 10.277966, 19.500536>,  <12.556817, 10.409748, 19.492115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.356411, 10.277966, 19.500536>,  <12.022402, 10.058328, 19.514570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.356411, 10.277966, 19.500536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228038, -0.287340, 0.930287,
		0.500734, -0.784813, -0.365150,
		0.835024, 0.549094, -0.035086,
		12.606918, 10.442694, 19.490009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.541905, 9.632427, 19.802469>,  <12.022402, 10.058328, 19.514570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.541905, 9.632427, 19.802469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.695291, 10.000559, 19.833321>,  <12.787322, 10.221438, 19.851831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.695291, 10.000559, 19.833321>,  <12.541905, 9.632427, 19.802469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.695291, 10.000559, 19.833321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389118, -0.236736, 0.890249,
		0.837582, -0.311367, -0.448896,
		0.383464, 0.920330, 0.077127,
		12.810329, 10.276658, 19.856459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.196753, 9.511722, 20.062515>,  <12.541905, 9.632427, 19.802469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.196753, 9.511722, 20.062515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.071485, 9.878999, 20.159548>,  <12.996324, 10.099365, 20.217768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.071485, 9.878999, 20.159548>,  <13.196753, 9.511722, 20.062515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.071485, 9.878999, 20.159548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256015, -0.164350, 0.952599,
		0.914538, 0.360431, -0.183601,
		-0.313171, 0.918193, 0.242579,
		12.977533, 10.154457, 20.232321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.624632, 9.690272, 20.510298>,  <13.196753, 9.511722, 20.062515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.624632, 9.690272, 20.510298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.341305, 9.963419, 20.581827>,  <13.171309, 10.127307, 20.624744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.341305, 9.963419, 20.581827>,  <13.624632, 9.690272, 20.510298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.341305, 9.963419, 20.581827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291570, 0.052317, 0.955118,
		0.642862, 0.728667, -0.236161,
		-0.708318, 0.682867, 0.178825,
		13.128809, 10.168279, 20.635475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.853231, 10.081083, 21.026407>,  <13.624632, 9.690272, 20.510298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.853231, 10.081083, 21.026407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.475933, 10.210721, 21.055391>,  <13.249554, 10.288504, 21.072781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.475933, 10.210721, 21.055391>,  <13.853231, 10.081083, 21.026407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.475933, 10.210721, 21.055391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148773, 0.217309, 0.964699,
		0.296908, 0.920728, -0.253192,
		-0.943246, 0.324095, 0.072458,
		13.192960, 10.307949, 21.077129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.868834, 10.838547, 21.283258>,  <13.853231, 10.081083, 21.026407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.868834, 10.838547, 21.283258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.528549, 10.645708, 21.367043>,  <13.324378, 10.530005, 21.417313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.528549, 10.645708, 21.367043>,  <13.868834, 10.838547, 21.283258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.528549, 10.645708, 21.367043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089121, 0.260427, 0.961372,
		-0.518022, 0.836517, -0.178583,
		-0.850712, -0.482096, 0.209458,
		13.273335, 10.501080, 21.429880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.474928, 11.312901, 21.578522>,  <13.868834, 10.838547, 21.283258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.474928, 11.312901, 21.578522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.332342, 10.964615, 21.714041>,  <13.246791, 10.755643, 21.795353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.332342, 10.964615, 21.714041>,  <13.474928, 11.312901, 21.578522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.332342, 10.964615, 21.714041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124282, 0.403588, 0.906461,
		-0.926006, 0.281014, -0.252079,
		-0.356464, -0.870717, 0.338800,
		13.225403, 10.703400, 21.815681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.832436, 11.463503, 21.847637>,  <13.474928, 11.312901, 21.578522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.832436, 11.463503, 21.847637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.871572, 11.098398, 22.006277>,  <12.895055, 10.879335, 22.101461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.871572, 11.098398, 22.006277>,  <12.832436, 11.463503, 21.847637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.871572, 11.098398, 22.006277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323324, 0.347741, 0.880078,
		-0.941216, -0.214340, -0.261095,
		0.097843, -0.912763, 0.396600,
		12.900926, 10.824570, 22.125257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.217967, 11.465647, 22.221024>,  <12.832436, 11.463503, 21.847637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.217967, 11.465647, 22.221024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.493299, 11.207232, 22.352985>,  <12.658498, 11.052182, 22.432163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.493299, 11.207232, 22.352985>,  <12.217967, 11.465647, 22.221024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.493299, 11.207232, 22.352985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040574, 0.419790, 0.906714,
		-0.724263, -0.637503, 0.262742,
		0.688329, -0.646039, 0.329905,
		12.699798, 11.013420, 22.451958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.790852, 10.986376, 22.764526>,  <12.217967, 11.465647, 22.221024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.790852, 10.986376, 22.764526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.174190, 10.957819, 22.875147>,  <12.404192, 10.940684, 22.941519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.174190, 10.957819, 22.875147>,  <11.790852, 10.986376, 22.764526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.174190, 10.957819, 22.875147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235584, 0.349848, 0.906701,
		-0.161482, -0.934082, 0.318455,
		0.958344, -0.071393, 0.276549,
		12.461693, 10.936401, 22.958111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.816790, 10.657945, 23.444851>,  <11.790852, 10.986376, 22.764526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.816790, 10.657945, 23.444851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.174157, 10.835709, 23.418610>,  <12.388577, 10.942367, 23.402864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.174157, 10.835709, 23.418610>,  <11.816790, 10.657945, 23.444851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.174157, 10.835709, 23.418610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079942, 0.300987, 0.950272,
		0.442055, -0.843746, 0.304434,
		0.893419, 0.444410, -0.065602,
		12.442183, 10.969031, 23.398930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.178040, 10.451970, 24.021170>,  <11.816790, 10.657945, 23.444851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.178040, 10.451970, 24.021170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.383834, 10.775367, 23.906876>,  <12.507310, 10.969405, 23.838299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.383834, 10.775367, 23.906876>,  <12.178040, 10.451970, 24.021170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.383834, 10.775367, 23.906876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039866, 0.310309, 0.949800,
		0.856572, -0.500049, 0.127418,
		0.514485, 0.808492, -0.285736,
		12.538179, 11.017915, 23.821156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.537498, 10.534982, 24.567917>,  <12.178040, 10.451970, 24.021170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.537498, 10.534982, 24.567917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.552334, 10.891913, 24.387974>,  <12.561235, 11.106072, 24.280008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.552334, 10.891913, 24.387974>,  <12.537498, 10.534982, 24.567917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.552334, 10.891913, 24.387974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143442, 0.440753, 0.886094,
		0.988963, -0.097395, -0.111649,
		0.037091, 0.892329, -0.449859,
		12.563461, 11.159612, 24.253016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.123922, 10.817795, 24.833878>,  <12.537498, 10.534982, 24.567917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.123922, 10.817795, 24.833878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.872128, 11.102376, 24.708927>,  <12.721050, 11.273125, 24.633957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.872128, 11.102376, 24.708927>,  <13.123922, 10.817795, 24.833878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.872128, 11.102376, 24.708927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063109, 0.447507, 0.892051,
		0.774443, 0.541821, -0.326600,
		-0.629488, 0.711454, -0.312375,
		12.683281, 11.315812, 24.615215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.339104, 11.312730, 25.171772>,  <13.123922, 10.817795, 24.833878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.339104, 11.312730, 25.171772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.983652, 11.456539, 25.057873>,  <12.770381, 11.542825, 24.989532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.983652, 11.456539, 25.057873>,  <13.339104, 11.312730, 25.171772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.983652, 11.456539, 25.057873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050688, 0.540080, 0.840086,
		0.455819, 0.760957, -0.461707,
		-0.888628, 0.359524, -0.284750,
		12.717064, 11.564396, 24.972448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.403830, 11.999941, 25.421234>,  <13.339104, 11.312730, 25.171772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.403830, 11.999941, 25.421234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.009436, 11.945772, 25.382259>,  <12.772799, 11.913271, 25.358875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.009436, 11.945772, 25.382259>,  <13.403830, 11.999941, 25.421234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.009436, 11.945772, 25.382259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150014, 0.464116, 0.872979,
		-0.073000, 0.875361, -0.477926,
		-0.985985, -0.135423, -0.097436,
		12.713640, 11.905146, 25.353029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
