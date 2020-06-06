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
	<24.305662, 34.737392, 34.705418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.323648, 35.027210, 34.980522>,  <24.334440, 35.201099, 35.145584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.323648, 35.027210, 34.980522>,  <24.305662, 34.737392, 34.705418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.323648, 35.027210, 34.980522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412570, 0.613535, -0.673321,
		-0.909816, 0.314025, -0.271337,
		0.044965, 0.724543, 0.687761,
		24.337137, 35.244572, 35.186852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.020954, 35.366440, 34.398830>,  <24.305662, 34.737392, 34.705418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.020954, 35.366440, 34.398830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.264811, 35.445160, 34.705975>,  <24.411125, 35.492393, 34.890259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.264811, 35.445160, 34.705975>,  <24.020954, 35.366440, 34.398830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.264811, 35.445160, 34.705975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580067, 0.549434, -0.601368,
		-0.540238, 0.812028, 0.220799,
		0.609643, 0.196804, 0.767857,
		24.447704, 35.504200, 34.936333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.387423, 36.018044, 34.226715>,  <24.020954, 35.366440, 34.398830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.387423, 36.018044, 34.226715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.670755, 35.916420, 34.490143>,  <24.840755, 35.855446, 34.648201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.670755, 35.916420, 34.490143>,  <24.387423, 36.018044, 34.226715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.670755, 35.916420, 34.490143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664362, 0.555199, -0.500378,
		-0.238510, 0.791964, 0.562055,
		0.708334, -0.254063, 0.658571,
		24.883255, 35.840202, 34.687714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.607939, 36.657787, 34.478870>,  <24.387423, 36.018044, 34.226715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.607939, 36.657787, 34.478870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.907160, 36.399124, 34.538540>,  <25.086693, 36.243927, 34.574341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.907160, 36.399124, 34.538540>,  <24.607939, 36.657787, 34.478870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.907160, 36.399124, 34.538540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655258, 0.684088, -0.320408,
		0.105147, 0.337428, 0.935461,
		0.748052, -0.646658, 0.149172,
		25.131575, 36.205128, 34.583290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.124666, 36.987701, 34.828732>,  <24.607939, 36.657787, 34.478870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.124666, 36.987701, 34.828732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.258825, 36.699039, 34.586502>,  <25.339321, 36.525841, 34.441166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.258825, 36.699039, 34.586502>,  <25.124666, 36.987701, 34.828732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.258825, 36.699039, 34.586502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615112, 0.654626, -0.439434,
		0.713545, -0.225111, 0.663460,
		0.335397, -0.721658, -0.605573,
		25.359444, 36.482544, 34.404831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.874802, 36.962505, 34.825893>,  <25.124666, 36.987701, 34.828732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.874802, 36.962505, 34.825893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.735533, 36.813286, 34.481892>,  <25.651972, 36.723755, 34.275490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.735533, 36.813286, 34.481892>,  <25.874802, 36.962505, 34.825893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.735533, 36.813286, 34.481892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685868, 0.524005, -0.504979,
		0.639031, -0.765669, 0.073420,
		-0.348174, -0.373053, -0.860003,
		25.631081, 36.701370, 34.223892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.608196, 36.905914, 35.021645>,  <25.874802, 36.962505, 34.825893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.608196, 36.905914, 35.021645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.895515, 36.630768, 35.063393>,  <27.067907, 36.465679, 35.088440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.895515, 36.630768, 35.063393>,  <26.608196, 36.905914, 35.021645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.895515, 36.630768, 35.063393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480263, 0.381688, -0.789722,
		0.503384, 0.617380, 0.604521,
		0.718298, -0.687863, 0.104369,
		27.111004, 36.424408, 35.094704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.218733, 37.221375, 34.905117>,  <26.608196, 36.905914, 35.021645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.218733, 37.221375, 34.905117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.264845, 36.830181, 34.835545>,  <27.292513, 36.595463, 34.793800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.264845, 36.830181, 34.835545>,  <27.218733, 37.221375, 34.905117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.264845, 36.830181, 34.835545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449424, 0.207507, -0.868884,
		0.885849, 0.021994, 0.463452,
		0.115280, -0.977986, -0.173936,
		27.299429, 36.536785, 34.783363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.012300, 36.994564, 34.769253>,  <27.218733, 37.221375, 34.905117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.012300, 36.994564, 34.769253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.763199, 36.742947, 34.583145>,  <27.613737, 36.591976, 34.471481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.763199, 36.742947, 34.583145>,  <28.012300, 36.994564, 34.769253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.763199, 36.742947, 34.583145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439665, 0.210545, -0.873136,
		0.647202, -0.748314, 0.145451,
		-0.622755, -0.629045, -0.465272,
		27.576372, 36.554234, 34.443565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.409954, 36.831181, 34.248363>,  <28.012300, 36.994564, 34.769253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.409954, 36.831181, 34.248363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.049671, 36.702301, 34.131802>,  <27.833502, 36.624973, 34.061867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.049671, 36.702301, 34.131802>,  <28.409954, 36.831181, 34.248363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.049671, 36.702301, 34.131802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257470, 0.144356, -0.955443,
		0.349904, -0.935602, -0.047067,
		-0.900709, -0.322195, -0.291400,
		27.779459, 36.605644, 34.044380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.650806, 36.399818, 33.751175>,  <28.409954, 36.831181, 34.248363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.650806, 36.399818, 33.751175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.266432, 36.504818, 33.716095>,  <28.035807, 36.567818, 33.695045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.266432, 36.504818, 33.716095>,  <28.650806, 36.399818, 33.751175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.266432, 36.504818, 33.716095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131881, 0.155710, -0.978960,
		-0.243323, -0.952286, -0.184246,
		-0.960938, 0.262502, -0.087700,
		27.978149, 36.583569, 33.689785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.378992, 36.117413, 33.148075>,  <28.650806, 36.399818, 33.751175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.378992, 36.117413, 33.148075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.131809, 36.422340, 33.225010>,  <27.983500, 36.605297, 33.271172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.131809, 36.422340, 33.225010>,  <28.378992, 36.117413, 33.148075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.131809, 36.422340, 33.225010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100503, 0.166038, -0.980984,
		-0.779763, -0.625535, -0.025988,
		-0.617955, 0.762324, 0.192339,
		27.946423, 36.651039, 33.282711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.347336, 36.489285, 32.430565>,  <28.378992, 36.117413, 33.148075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.347336, 36.489285, 32.430565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.175322, 36.792202, 32.233967>,  <28.072113, 36.973953, 32.116009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.175322, 36.792202, 32.233967>,  <28.347336, 36.489285, 32.430565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.175322, 36.792202, 32.233967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834536, -0.125756, 0.536409,
		0.344412, 0.640848, 0.686071,
		-0.430035, 0.757297, -0.491499,
		28.046310, 37.019390, 32.086517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.399603, 37.171345, 32.826271>,  <28.347336, 36.489285, 32.430565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.399603, 37.171345, 32.826271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.076139, 37.040016, 32.631016>,  <27.882061, 36.961220, 32.513863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.076139, 37.040016, 32.631016>,  <28.399603, 37.171345, 32.826271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.076139, 37.040016, 32.631016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535675, 0.067991, 0.841682,
		-0.243154, 0.942116, -0.230855,
		-0.808658, -0.328322, -0.488136,
		27.833542, 36.941521, 32.484573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.737259, 37.557102, 33.012165>,  <28.399603, 37.171345, 32.826271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.737259, 37.557102, 33.012165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.672220, 37.176826, 32.906517>,  <27.633196, 36.948662, 32.843128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.672220, 37.176826, 32.906517>,  <27.737259, 37.557102, 33.012165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.672220, 37.176826, 32.906517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311881, -0.204434, 0.927867,
		-0.936105, 0.233243, -0.263261,
		-0.162599, -0.950687, -0.264115,
		27.623440, 36.891621, 32.827282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.225042, 37.462360, 33.428978>,  <27.737259, 37.557102, 33.012165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.225042, 37.462360, 33.428978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.375156, 37.109467, 33.315262>,  <27.465225, 36.897732, 33.247032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.375156, 37.109467, 33.315262>,  <27.225042, 37.462360, 33.428978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.375156, 37.109467, 33.315262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267837, -0.396845, 0.877940,
		-0.887369, -0.253335, -0.385225,
		0.375288, -0.882234, -0.284295,
		27.487743, 36.844795, 33.229973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.690086, 36.936752, 33.613495>,  <27.225042, 37.462360, 33.428978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.690086, 36.936752, 33.613495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.060448, 36.785778, 33.607212>,  <27.282663, 36.695194, 33.603443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.060448, 36.785778, 33.607212>,  <26.690086, 36.936752, 33.613495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.060448, 36.785778, 33.607212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252696, -0.649727, 0.716938,
		-0.280802, -0.659846, -0.696960,
		0.925902, -0.377437, -0.015704,
		27.338219, 36.672546, 33.602501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.598307, 36.228386, 33.663986>,  <26.690086, 36.936752, 33.613495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.598307, 36.228386, 33.663986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.965059, 36.334511, 33.783276>,  <27.185112, 36.398186, 33.854847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.965059, 36.334511, 33.783276>,  <26.598307, 36.228386, 33.663986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.965059, 36.334511, 33.783276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157995, -0.444880, 0.881544,
		0.366557, -0.855389, -0.365985,
		0.916883, 0.265312, 0.298221,
		27.240124, 36.414104, 33.872742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.891750, 35.633148, 33.902687>,  <26.598307, 36.228386, 33.663986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.891750, 35.633148, 33.902687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.122030, 35.922527, 34.055103>,  <27.260199, 36.096153, 34.146553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.122030, 35.922527, 34.055103>,  <26.891750, 35.633148, 33.902687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.122030, 35.922527, 34.055103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104763, -0.396908, 0.911860,
		0.810921, -0.564878, -0.152710,
		0.575702, 0.723448, 0.381039,
		27.294741, 36.139561, 34.169415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.313156, 35.297630, 34.373711>,  <26.891750, 35.633148, 33.902687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.313156, 35.297630, 34.373711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.305891, 35.673546, 34.510216>,  <27.301531, 35.899097, 34.592117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.305891, 35.673546, 34.510216>,  <27.313156, 35.297630, 34.373711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.305891, 35.673546, 34.510216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222701, -0.336546, 0.914954,
		0.974718, -0.059380, 0.215406,
		-0.018164, 0.939793, 0.341261,
		27.300442, 35.955482, 34.612595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.673445, 35.330612, 35.011696>,  <27.313156, 35.297630, 34.373711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.673445, 35.330612, 35.011696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.384167, 35.605724, 34.986549>,  <27.210600, 35.770790, 34.971462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.384167, 35.605724, 34.986549>,  <27.673445, 35.330612, 35.011696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.384167, 35.605724, 34.986549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341775, -0.277295, 0.897941,
		0.600150, 0.670872, 0.435603,
		-0.723194, 0.687778, -0.062869,
		27.167208, 35.812057, 34.967690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.606495, 35.199982, 35.666161>,  <27.673445, 35.330612, 35.011696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.606495, 35.199982, 35.666161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.400690, 35.538162, 35.608910>,  <27.277208, 35.741070, 35.574558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.400690, 35.538162, 35.608910>,  <27.606495, 35.199982, 35.666161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.400690, 35.538162, 35.608910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238234, 0.019407, 0.971014,
		0.823726, 0.533695, 0.191431,
		-0.514510, 0.845454, -0.143130,
		27.246338, 35.791798, 35.565971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.299433, 34.888355, 35.663372>,  <27.606495, 35.199982, 35.666161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.299433, 34.888355, 35.663372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.257706, 34.665459, 35.992882>,  <28.232670, 34.531719, 36.190586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.257706, 34.665459, 35.992882>,  <28.299433, 34.888355, 35.663372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.257706, 34.665459, 35.992882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929812, 0.239296, 0.279620,
		-0.352941, 0.795123, 0.493165,
		-0.104320, -0.557240, 0.823772,
		28.226410, 34.498287, 36.240013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.395748, 35.264259, 36.305340>,  <28.299433, 34.888355, 35.663372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.395748, 35.264259, 36.305340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.497032, 34.880211, 36.352768>,  <28.557802, 34.649784, 36.381226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.497032, 34.880211, 36.352768>,  <28.395748, 35.264259, 36.305340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.497032, 34.880211, 36.352768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909602, 0.278015, 0.308758,
		-0.329409, 0.029672, 0.943721,
		0.253208, -0.960118, 0.118570,
		28.572994, 34.592175, 36.388340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.664808, 35.129723, 36.957085>,  <28.395748, 35.264259, 36.305340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.664808, 35.129723, 36.957085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.828522, 34.835621, 36.740978>,  <28.926750, 34.659161, 36.611313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.828522, 34.835621, 36.740978>,  <28.664808, 35.129723, 36.957085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.828522, 34.835621, 36.740978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877647, 0.155369, 0.453429,
		-0.249444, -0.659746, 0.708882,
		0.409286, -0.735253, -0.540268,
		28.951307, 34.615044, 36.578899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144495, 34.819988, 37.428654>,  <28.664808, 35.129723, 36.957085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144495, 34.819988, 37.428654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.242004, 34.669857, 37.070950>,  <29.300510, 34.579777, 36.856327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.242004, 34.669857, 37.070950>,  <29.144495, 34.819988, 37.428654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.242004, 34.669857, 37.070950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961739, -0.025321, 0.272796,
		-0.125031, -0.926546, 0.354794,
		0.243775, -0.375327, -0.894261,
		29.315136, 34.557259, 36.802670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.613966, 34.108410, 37.440289>,  <29.144495, 34.819988, 37.428654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.613966, 34.108410, 37.440289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.693575, 34.329399, 37.116520>,  <29.741341, 34.461994, 36.922260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.693575, 34.329399, 37.116520>,  <29.613966, 34.108410, 37.440289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.693575, 34.329399, 37.116520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979960, -0.119077, 0.159681,
		-0.008163, -0.824979, -0.565104,
		0.199024, 0.552476, -0.809419,
		29.753283, 34.495140, 36.873695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.072618, 33.773731, 37.013638>,  <29.613966, 34.108410, 37.440289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.072618, 33.773731, 37.013638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.110668, 34.164013, 36.934689>,  <30.133497, 34.398182, 36.887321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.110668, 34.164013, 36.934689>,  <30.072618, 33.773731, 37.013638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.110668, 34.164013, 36.934689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970175, -0.046459, 0.237911,
		0.222961, -0.214112, -0.951023,
		0.095124, 0.975704, -0.197368,
		30.139206, 34.456722, 36.875477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680069, 33.948112, 36.517456>,  <30.072618, 33.773731, 37.013638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680069, 33.948112, 36.517456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.580170, 34.232414, 36.780502>,  <30.520229, 34.402996, 36.938328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.580170, 34.232414, 36.780502>,  <30.680069, 33.948112, 36.517456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.580170, 34.232414, 36.780502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853057, -0.159842, 0.496734,
		0.458169, 0.685041, -0.566392,
		-0.249750, 0.710753, 0.657614,
		30.505245, 34.445641, 36.977787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.272026, 33.970501, 36.927349>,  <30.680069, 33.948112, 36.517456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.272026, 33.970501, 36.927349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.080498, 34.280823, 37.091721>,  <30.965580, 34.467014, 37.190342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.080498, 34.280823, 37.091721>,  <31.272026, 33.970501, 36.927349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.080498, 34.280823, 37.091721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725626, 0.086260, 0.682661,
		0.494163, 0.625052, -0.604245,
		-0.478821, 0.775802, 0.410928,
		30.936852, 34.513565, 37.215000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.748569, 34.569935, 36.994049>,  <31.272026, 33.970501, 36.927349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.748569, 34.569935, 36.994049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463461, 34.590118, 37.273880>,  <31.292395, 34.602230, 37.441780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463461, 34.590118, 37.273880>,  <31.748569, 34.569935, 36.994049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463461, 34.590118, 37.273880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701337, 0.038505, 0.711789,
		0.008978, 0.997984, -0.062833,
		-0.712773, 0.050458, 0.699577,
		31.249628, 34.605255, 37.483753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.759039, 35.221466, 37.269703>,  <31.748569, 34.569935, 36.994049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.759039, 35.221466, 37.269703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619261, 34.953411, 37.531635>,  <31.535395, 34.792580, 37.688797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619261, 34.953411, 37.531635>,  <31.759039, 35.221466, 37.269703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619261, 34.953411, 37.531635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801735, 0.147821, 0.579112,
		-0.484881, 0.727371, 0.485615,
		-0.349445, -0.670134, 0.654834,
		31.514427, 34.752369, 37.728085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.822372, 35.491013, 37.969635>,  <31.759039, 35.221466, 37.269703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.822372, 35.491013, 37.969635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796923, 35.098019, 38.039688>,  <31.781652, 34.862221, 38.081718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796923, 35.098019, 38.039688>,  <31.822372, 35.491013, 37.969635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796923, 35.098019, 38.039688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677123, 0.086412, 0.730779,
		-0.733114, 0.165081, 0.659767,
		-0.063626, -0.982487, 0.175130,
		31.777836, 34.803272, 38.092228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071880, 35.442787, 38.695786>,  <31.822372, 35.491013, 37.969635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071880, 35.442787, 38.695786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084408, 35.080479, 38.526745>,  <32.091923, 34.863094, 38.425320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084408, 35.080479, 38.526745>,  <32.071880, 35.442787, 38.695786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.084408, 35.080479, 38.526745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633613, -0.309006, 0.709260,
		-0.773016, -0.289977, 0.564234,
		0.031318, -0.905775, -0.422600,
		32.093803, 34.808746, 38.399963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028610, 35.043713, 39.280800>,  <32.071880, 35.442787, 38.695786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.028610, 35.043713, 39.280800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223469, 34.887733, 38.968231>,  <32.340385, 34.794144, 38.780689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223469, 34.887733, 38.968231>,  <32.028610, 35.043713, 39.280800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.223469, 34.887733, 38.968231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734268, -0.301528, 0.608220,
		-0.472796, -0.870069, 0.139439,
		0.487148, -0.389950, -0.781425,
		32.369614, 34.770748, 38.733803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425308, 34.486328, 39.480862>,  <32.028610, 35.043713, 39.280800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425308, 34.486328, 39.480862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598381, 34.568939, 39.129833>,  <32.702225, 34.618507, 38.919216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598381, 34.568939, 39.129833>,  <32.425308, 34.486328, 39.480862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598381, 34.568939, 39.129833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874766, -0.331663, 0.353249,
		-0.218103, -0.920514, -0.324168,
		0.432685, 0.206527, -0.877571,
		32.728188, 34.630898, 38.866562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984928, 34.041473, 39.361084>,  <32.425308, 34.486328, 39.480862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984928, 34.041473, 39.361084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066719, 34.331501, 39.098034>,  <33.115791, 34.505516, 38.940205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066719, 34.331501, 39.098034>,  <32.984928, 34.041473, 39.361084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066719, 34.331501, 39.098034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978080, -0.124314, 0.167050,
		0.039371, -0.677363, -0.734595,
		0.204474, 0.725069, -0.657621,
		33.128059, 34.549023, 38.900749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331715, 33.765228, 38.661476>,  <32.984928, 34.041473, 39.361084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331715, 33.765228, 38.661476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419662, 34.129707, 38.800835>,  <33.472431, 34.348396, 38.884449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419662, 34.129707, 38.800835>,  <33.331715, 33.765228, 38.661476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419662, 34.129707, 38.800835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917606, -0.314405, 0.243206,
		0.331145, 0.266216, -0.905247,
		0.219868, 0.911196, 0.348395,
		33.485622, 34.403065, 38.905354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931938, 33.945724, 38.003136>,  <33.331715, 33.765228, 38.661476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931938, 33.945724, 38.003136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650166, 34.105007, 38.238155>,  <32.481102, 34.200577, 38.379166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650166, 34.105007, 38.238155>,  <32.931938, 33.945724, 38.003136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650166, 34.105007, 38.238155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618686, 0.061213, -0.783250,
		-0.347858, -0.915253, 0.203243,
		-0.704430, 0.398203, 0.587548,
		32.438835, 34.224468, 38.414421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266911, 33.622364, 37.824932>,  <32.931938, 33.945724, 38.003136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266911, 33.622364, 37.824932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.194763, 33.967228, 38.014309>,  <32.151474, 34.174145, 38.127934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.194763, 33.967228, 38.014309>,  <32.266911, 33.622364, 37.824932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.194763, 33.967228, 38.014309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795780, 0.154992, -0.585416,
		-0.578102, -0.482347, 0.658134,
		-0.180368, 0.862159, 0.473443,
		32.140652, 34.225876, 38.156342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.711418, 33.534309, 38.353863>,  <32.266911, 33.622364, 37.824932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.711418, 33.534309, 38.353863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.741005, 33.919937, 38.251812>,  <31.758757, 34.151314, 38.190582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.741005, 33.919937, 38.251812>,  <31.711418, 33.534309, 38.353863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.741005, 33.919937, 38.251812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878656, -0.058003, -0.473918,
		-0.471690, 0.259226, 0.842799,
		0.073967, 0.964074, -0.255130,
		31.763195, 34.209160, 38.175274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062126, 33.784130, 38.427071>,  <31.711418, 33.534309, 38.353863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062126, 33.784130, 38.427071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.204893, 34.086105, 38.207005>,  <31.290552, 34.267292, 38.074966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.204893, 34.086105, 38.207005>,  <31.062126, 33.784130, 38.427071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.204893, 34.086105, 38.207005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851130, 0.020113, -0.524570,
		-0.384953, 0.655487, 0.649730,
		0.356916, 0.754939, -0.550162,
		31.311968, 34.312588, 38.041958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.453672, 33.897991, 38.008156>,  <31.062126, 33.784130, 38.427071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.453672, 33.897991, 38.008156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.694870, 34.190956, 37.881680>,  <30.839588, 34.366734, 37.805794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.694870, 34.190956, 37.881680>,  <30.453672, 33.897991, 38.008156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.694870, 34.190956, 37.881680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722827, 0.333922, -0.604993,
		-0.337520, 0.593357, 0.730758,
		0.602993, 0.732409, -0.316189,
		30.875769, 34.410679, 37.786823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.168562, 34.565533, 38.205296>,  <30.453672, 33.897991, 38.008156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.168562, 34.565533, 38.205296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.400661, 34.586666, 37.880207>,  <30.539921, 34.599346, 37.685154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.400661, 34.586666, 37.880207>,  <30.168562, 34.565533, 38.205296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.400661, 34.586666, 37.880207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786190, 0.296873, -0.542008,
		0.212637, 0.953454, 0.213801,
		0.580251, 0.052837, -0.812722,
		30.574738, 34.602516, 37.636391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.173210, 35.221710, 37.918213>,  <30.168562, 34.565533, 38.205296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.173210, 35.221710, 37.918213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.263802, 34.985909, 37.608067>,  <30.318157, 34.844429, 37.421978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.263802, 34.985909, 37.608067>,  <30.173210, 35.221710, 37.918213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.263802, 34.985909, 37.608067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783948, 0.362101, -0.504291,
		0.578042, 0.722058, -0.380131,
		0.226481, -0.589504, -0.775365,
		30.331745, 34.809059, 37.375458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.318289, 35.540623, 37.209179>,  <30.173210, 35.221710, 37.918213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.318289, 35.540623, 37.209179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.137232, 35.184219, 37.195210>,  <30.028597, 34.970379, 37.186829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.137232, 35.184219, 37.195210>,  <30.318289, 35.540623, 37.209179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.137232, 35.184219, 37.195210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739986, 0.397199, -0.542821,
		0.497529, -0.219862, -0.839122,
		-0.452644, -0.891007, -0.034923,
		30.001438, 34.916916, 37.184734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.045498, 35.359955, 36.595211>,  <30.318289, 35.540623, 37.209179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.045498, 35.359955, 36.595211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.815712, 35.169678, 36.861656>,  <29.677841, 35.055511, 37.021523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.815712, 35.169678, 36.861656>,  <30.045498, 35.359955, 36.595211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.815712, 35.169678, 36.861656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818156, 0.309091, -0.484855,
		0.024754, -0.823515, -0.566754,
		-0.574464, -0.475695, 0.666112,
		29.643373, 35.026970, 37.061489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.339138, 35.130661, 36.021782>,  <30.045498, 35.359955, 36.595211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.339138, 35.130661, 36.021782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.246469, 34.792805, 36.214825>,  <30.190868, 34.590092, 36.330650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.246469, 34.792805, 36.214825>,  <30.339138, 35.130661, 36.021782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.246469, 34.792805, 36.214825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972794, 0.200969, -0.115252,
		0.000358, -0.496176, -0.868222,
		-0.231671, -0.844642, 0.482605,
		30.176968, 34.539413, 36.359608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.877640, 34.611305, 35.635647>,  <30.339138, 35.130661, 36.021782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.877640, 34.611305, 35.635647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.847290, 34.555969, 36.030636>,  <29.829081, 34.522766, 36.267628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.847290, 34.555969, 36.030636>,  <29.877640, 34.611305, 35.635647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.847290, 34.555969, 36.030636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996217, 0.052596, -0.069176,
		-0.042367, -0.988988, -0.141805,
		-0.075873, -0.138338, 0.987475,
		29.824528, 34.514465, 36.326878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.597979, 33.869156, 35.561554>,  <29.877640, 34.611305, 35.635647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.597979, 33.869156, 35.561554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.534615, 34.065117, 35.904457>,  <29.496595, 34.182693, 36.110199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.534615, 34.065117, 35.904457>,  <29.597979, 33.869156, 35.561554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.534615, 34.065117, 35.904457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985201, -0.135982, -0.104343,
		0.065454, -0.861105, 0.504196,
		-0.158412, 0.489905, 0.857262,
		29.487091, 34.212090, 36.161636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.306559, 33.343090, 36.029461>,  <29.597979, 33.869156, 35.561554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.306559, 33.343090, 36.029461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.219934, 33.718285, 36.137741>,  <29.167961, 33.943401, 36.202709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.219934, 33.718285, 36.137741>,  <29.306559, 33.343090, 36.029461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.219934, 33.718285, 36.137741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974784, -0.192464, -0.112928,
		-0.053825, -0.288333, 0.956016,
		-0.216560, 0.937988, 0.270704,
		29.154966, 33.999680, 36.218952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.416052, 33.061932, 36.756199>,  <29.306559, 33.343090, 36.029461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.416052, 33.061932, 36.756199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.278521, 33.434269, 36.805683>,  <29.196001, 33.657673, 36.835373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.278521, 33.434269, 36.805683>,  <29.416052, 33.061932, 36.756199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.278521, 33.434269, 36.805683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067619, 0.106857, -0.991972,
		-0.936594, -0.349435, 0.026203,
		-0.343830, 0.930847, 0.123710,
		29.175371, 33.713524, 36.842796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.891493, 32.519218, 36.653442>,  <29.416052, 33.061932, 36.756199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.891493, 32.519218, 36.653442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.822618, 32.364269, 37.015724>,  <28.781294, 32.271297, 37.233093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.822618, 32.364269, 37.015724>,  <28.891493, 32.519218, 36.653442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.822618, 32.364269, 37.015724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635112, 0.659157, 0.402671,
		-0.752983, 0.644556, 0.132528,
		-0.172187, -0.387375, 0.905700,
		28.770962, 32.248058, 37.287434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.801495, 33.049355, 37.229946>,  <28.891493, 32.519218, 36.653442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.801495, 33.049355, 37.229946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.959234, 32.700436, 37.345592>,  <29.053879, 32.491085, 37.414978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.959234, 32.700436, 37.345592>,  <28.801495, 33.049355, 37.229946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.959234, 32.700436, 37.345592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696996, 0.488948, 0.524525,
		-0.598902, -0.005337, 0.800805,
		0.394351, -0.872297, 0.289112,
		29.077539, 32.438747, 37.432327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.897224, 33.080784, 38.018242>,  <28.801495, 33.049355, 37.229946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.897224, 33.080784, 38.018242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.137079, 32.805382, 37.855076>,  <29.280993, 32.640141, 37.757175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.137079, 32.805382, 37.855076>,  <28.897224, 33.080784, 38.018242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.137079, 32.805382, 37.855076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768278, 0.352587, 0.534258,
		-0.224013, -0.633755, 0.740387,
		0.599639, -0.688504, -0.407916,
		29.316971, 32.598831, 37.732700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.235504, 32.840237, 38.598724>,  <28.897224, 33.080784, 38.018242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.235504, 32.840237, 38.598724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.460781, 32.732014, 38.286415>,  <29.595947, 32.667080, 38.099030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.460781, 32.732014, 38.286415>,  <29.235504, 32.840237, 38.598724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.460781, 32.732014, 38.286415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822562, 0.273639, 0.498510,
		0.078776, -0.922995, 0.376661,
		0.563192, -0.270557, -0.780778,
		29.629738, 32.650848, 38.052181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.796728, 32.276917, 38.777870>,  <29.235504, 32.840237, 38.598724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.796728, 32.276917, 38.777870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.909410, 32.524723, 38.484791>,  <29.977020, 32.673405, 38.308945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.909410, 32.524723, 38.484791>,  <29.796728, 32.276917, 38.777870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.909410, 32.524723, 38.484791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886867, 0.123332, 0.445260,
		0.366210, -0.775236, -0.514683,
		0.281704, 0.619514, -0.732697,
		29.993921, 32.710579, 38.264980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.403505, 31.869915, 38.551495>,  <29.796728, 32.276917, 38.777870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.403505, 31.869915, 38.551495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.393755, 31.477711, 38.473522>,  <30.387905, 31.242388, 38.426739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.393755, 31.477711, 38.473522>,  <30.403505, 31.869915, 38.551495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.393755, 31.477711, 38.473522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855412, 0.080455, -0.511662,
		0.517375, -0.179223, 0.836781,
		-0.024378, -0.980513, -0.194935,
		30.386442, 31.183558, 38.415043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.991678, 31.617918, 38.862278>,  <30.403505, 31.869915, 38.551495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.991678, 31.617918, 38.862278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.869978, 31.425844, 38.533192>,  <30.796959, 31.310600, 38.335739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.869978, 31.425844, 38.533192>,  <30.991678, 31.617918, 38.862278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.869978, 31.425844, 38.533192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869515, 0.212755, -0.445734,
		0.389071, -0.850974, 0.352798,
		-0.304249, -0.480185, -0.822712,
		30.778704, 31.281788, 38.286377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578091, 31.691141, 39.349648>,  <30.991678, 31.617918, 38.862278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578091, 31.691141, 39.349648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.607119, 31.566654, 39.728672>,  <31.624537, 31.491962, 39.956089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.607119, 31.566654, 39.728672>,  <31.578091, 31.691141, 39.349648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.607119, 31.566654, 39.728672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975125, 0.221647, -0.001886,
		-0.209438, 0.924131, 0.319559,
		0.072572, -0.311215, 0.947564,
		31.628891, 31.473289, 40.012939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041031, 32.146671, 39.749397>,  <31.578091, 31.691141, 39.349648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041031, 32.146671, 39.749397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053215, 31.777794, 39.903610>,  <32.060524, 31.556469, 39.996140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053215, 31.777794, 39.903610>,  <32.041031, 32.146671, 39.749397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053215, 31.777794, 39.903610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994234, 0.067626, 0.083215,
		-0.102812, 0.380779, 0.918933,
		0.030457, -0.922190, 0.385536,
		32.062351, 31.501137, 40.019272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487892, 32.103920, 40.318848>,  <32.041031, 32.146671, 39.749397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487892, 32.103920, 40.318848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468102, 31.736237, 40.162586>,  <32.456226, 31.515627, 40.068829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468102, 31.736237, 40.162586>,  <32.487892, 32.103920, 40.318848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468102, 31.736237, 40.162586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946193, -0.168372, 0.276350,
		-0.319798, -0.355967, 0.878076,
		-0.049472, -0.919206, -0.390658,
		32.453259, 31.460474, 40.045387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841789, 31.626905, 40.625370>,  <32.487892, 32.103920, 40.318848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841789, 31.626905, 40.625370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844212, 31.486967, 40.250656>,  <32.845665, 31.403004, 40.025826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844212, 31.486967, 40.250656>,  <32.841789, 31.626905, 40.625370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844212, 31.486967, 40.250656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992722, -0.110570, 0.047708,
		-0.120271, -0.930259, 0.346630,
		0.006054, -0.349845, -0.936788,
		32.846027, 31.382013, 39.969620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143658, 30.979387, 40.690765>,  <32.841789, 31.626905, 40.625370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143658, 30.979387, 40.690765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214497, 31.126778, 40.325722>,  <33.257000, 31.215212, 40.106693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214497, 31.126778, 40.325722>,  <33.143658, 30.979387, 40.690765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214497, 31.126778, 40.325722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978629, -0.164390, 0.123538,
		-0.104504, -0.914987, -0.389715,
		0.177101, 0.368476, -0.912612,
		33.267628, 31.237320, 40.051937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431549, 30.450293, 40.101021>,  <33.143658, 30.979387, 40.690765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431549, 30.450293, 40.101021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584492, 30.819258, 40.079277>,  <33.676258, 31.040636, 40.066231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584492, 30.819258, 40.079277>,  <33.431549, 30.450293, 40.101021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584492, 30.819258, 40.079277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920029, -0.374596, 0.114995,
		0.085711, -0.093980, -0.991878,
		0.382360, 0.922413, -0.054357,
		33.699200, 31.095982, 40.062969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973961, 30.300625, 39.633781>,  <33.431549, 30.450293, 40.101021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973961, 30.300625, 39.633781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065964, 30.629494, 39.842060>,  <34.121166, 30.826815, 39.967030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065964, 30.629494, 39.842060>,  <33.973961, 30.300625, 39.633781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065964, 30.629494, 39.842060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965416, -0.260253, -0.015510,
		0.122761, 0.506260, -0.853599,
		0.230004, 0.822174, 0.520700,
		34.134964, 30.876146, 39.998272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551525, 30.540689, 39.342026>,  <33.973961, 30.300625, 39.633781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551525, 30.540689, 39.342026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562851, 30.694235, 39.711208>,  <34.569645, 30.786362, 39.932716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562851, 30.694235, 39.711208>,  <34.551525, 30.540689, 39.342026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562851, 30.694235, 39.711208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900432, -0.410748, 0.143209,
		0.434075, 0.827003, -0.357274,
		0.028315, 0.383864, 0.922955,
		34.571346, 30.809395, 39.988094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991577, 30.586546, 38.717510>,  <34.551525, 30.540689, 39.342026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991577, 30.586546, 38.717510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719189, 30.878847, 38.698387>,  <34.555756, 31.054228, 38.686913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719189, 30.878847, 38.698387>,  <34.991577, 30.586546, 38.717510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719189, 30.878847, 38.698387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203294, -0.251358, -0.946304,
		-0.703530, -0.634683, 0.319724,
		-0.680968, 0.730751, -0.047811,
		34.514896, 31.098072, 38.684044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196850, 30.402624, 38.704632>,  <34.991577, 30.586546, 38.717510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196850, 30.402624, 38.704632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275784, 30.719971, 38.474281>,  <34.323143, 30.910379, 38.336071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275784, 30.719971, 38.474281>,  <34.196850, 30.402624, 38.704632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275784, 30.719971, 38.474281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256030, -0.525330, -0.811466,
		-0.946313, 0.307570, 0.099461,
		0.197333, 0.793366, -0.575874,
		34.334984, 30.957981, 38.301517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568501, 30.568552, 38.251953>,  <34.196850, 30.402624, 38.704632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568501, 30.568552, 38.251953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889862, 30.734999, 38.081596>,  <34.082680, 30.834867, 37.979382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889862, 30.734999, 38.081596>,  <33.568501, 30.568552, 38.251953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889862, 30.734999, 38.081596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318987, -0.303175, -0.897960,
		-0.502776, 0.857281, -0.110837,
		0.803407, 0.416117, -0.425891,
		34.130886, 30.859835, 37.953831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210472, 30.900152, 37.748100>,  <33.568501, 30.568552, 38.251953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210472, 30.900152, 37.748100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591309, 30.873446, 37.628731>,  <33.819813, 30.857422, 37.557110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591309, 30.873446, 37.628731>,  <33.210472, 30.900152, 37.748100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591309, 30.873446, 37.628731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304226, -0.305833, -0.902171,
		-0.031035, 0.949741, -0.311493,
		0.952094, -0.066765, -0.298428,
		33.876938, 30.853416, 37.539204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104019, 31.161190, 37.153450>,  <33.210472, 30.900152, 37.748100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104019, 31.161190, 37.153450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461884, 30.983906, 37.131020>,  <33.676601, 30.877535, 37.117561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461884, 30.983906, 37.131020>,  <33.104019, 31.161190, 37.153450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461884, 30.983906, 37.131020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213315, -0.313513, -0.925314,
		0.392530, 0.839805, -0.375031,
		0.894661, -0.443213, -0.056080,
		33.730282, 30.850943, 37.114197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447617, 31.441572, 36.568375>,  <33.104019, 31.161190, 37.153450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447617, 31.441572, 36.568375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581284, 31.073915, 36.651810>,  <33.661484, 30.853321, 36.701870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581284, 31.073915, 36.651810>,  <33.447617, 31.441572, 36.568375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.581284, 31.073915, 36.651810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066493, -0.243751, -0.967556,
		0.940165, 0.309457, -0.142571,
		0.334169, -0.919142, 0.208589,
		33.681534, 30.798172, 36.714386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982105, 31.358877, 36.168808>,  <33.447617, 31.441572, 36.568375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982105, 31.358877, 36.168808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855465, 30.989649, 36.256172>,  <33.779480, 30.768112, 36.308590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855465, 30.989649, 36.256172>,  <33.982105, 31.358877, 36.168808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855465, 30.989649, 36.256172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089016, -0.200331, -0.975676,
		0.944373, -0.328341, -0.018743,
		-0.316599, -0.923070, 0.218415,
		33.760487, 30.712729, 36.321697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389984, 31.025801, 35.632168>,  <33.982105, 31.358877, 36.168808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389984, 31.025801, 35.632168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097729, 30.793661, 35.776031>,  <33.922375, 30.654377, 35.862350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097729, 30.793661, 35.776031>,  <34.389984, 31.025801, 35.632168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097729, 30.793661, 35.776031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173784, -0.351351, -0.919974,
		0.660273, -0.734676, 0.155856,
		-0.730642, -0.580349, 0.359663,
		33.878536, 30.619556, 35.883930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566895, 30.372339, 35.361427>,  <34.389984, 31.025801, 35.632168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566895, 30.372339, 35.361427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176888, 30.373808, 35.450272>,  <33.942883, 30.374689, 35.503578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176888, 30.373808, 35.450272>,  <34.566895, 30.372339, 35.361427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176888, 30.373808, 35.450272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216895, -0.231788, -0.948278,
		0.048001, -0.972759, 0.226793,
		-0.975014, 0.003672, 0.222113,
		33.884384, 30.374910, 35.516907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339729, 29.792492, 35.133869>,  <34.566895, 30.372339, 35.361427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339729, 29.792492, 35.133869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008133, 30.016146, 35.138744>,  <33.809177, 30.150337, 35.141670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008133, 30.016146, 35.138744>,  <34.339729, 29.792492, 35.133869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008133, 30.016146, 35.138744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250489, -0.351726, -0.901967,
		-0.500037, -0.750771, 0.431633,
		-0.828986, 0.559136, 0.012184,
		33.759438, 30.183886, 35.142399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847775, 29.358047, 34.832466>,  <34.339729, 29.792492, 35.133869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847775, 29.358047, 34.832466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.707081, 29.728573, 34.778458>,  <33.622665, 29.950888, 34.746052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.707081, 29.728573, 34.778458>,  <33.847775, 29.358047, 34.832466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.707081, 29.728573, 34.778458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280549, -0.241920, -0.928852,
		-0.893072, -0.288826, 0.344967,
		-0.351731, 0.926312, -0.135022,
		33.601562, 30.006466, 34.737949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431358, 29.201658, 34.269993>,  <33.847775, 29.358047, 34.832466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431358, 29.201658, 34.269993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414501, 29.596561, 34.331375>,  <33.404388, 29.833504, 34.368206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414501, 29.596561, 34.331375>,  <33.431358, 29.201658, 34.269993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414501, 29.596561, 34.331375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505923, 0.111362, -0.855360,
		-0.861549, -0.113681, 0.494783,
		-0.042138, 0.987257, 0.153457,
		33.401859, 29.892738, 34.377411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685123, 29.512033, 34.188831>,  <33.431358, 29.201658, 34.269993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685123, 29.512033, 34.188831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951912, 29.801069, 34.116150>,  <33.111984, 29.974491, 34.072540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951912, 29.801069, 34.116150>,  <32.685123, 29.512033, 34.188831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951912, 29.801069, 34.116150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463873, 0.211866, -0.860195,
		-0.583069, 0.658013, 0.476497,
		0.666972, 0.722587, -0.181702,
		33.152004, 30.017845, 34.061638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326622, 29.910742, 33.805416>,  <32.685123, 29.512033, 34.188831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326622, 29.910742, 33.805416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676044, 30.100142, 33.760338>,  <32.885696, 30.213781, 33.733292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676044, 30.100142, 33.760338>,  <32.326622, 29.910742, 33.805416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676044, 30.100142, 33.760338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356272, 0.464292, -0.810866,
		-0.331622, 0.748485, 0.574279,
		0.873554, 0.473500, -0.112695,
		32.938110, 30.242191, 33.726528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110100, 30.639238, 33.841892>,  <32.326622, 29.910742, 33.805416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110100, 30.639238, 33.841892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445057, 30.566048, 33.635864>,  <32.646030, 30.522133, 33.512249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445057, 30.566048, 33.635864>,  <32.110100, 30.639238, 33.841892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445057, 30.566048, 33.635864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416604, 0.396384, -0.818120,
		0.353864, 0.899666, 0.255699,
		0.837390, -0.182978, -0.515071,
		32.696274, 30.511154, 33.481342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.249561, 31.318213, 33.486683>,  <32.110100, 30.639238, 33.841892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.249561, 31.318213, 33.486683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440575, 31.028343, 33.287964>,  <32.555183, 30.854422, 33.168732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440575, 31.028343, 33.287964>,  <32.249561, 31.318213, 33.486683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440575, 31.028343, 33.287964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523466, 0.219467, -0.823297,
		0.705652, 0.653210, -0.274539,
		0.477534, -0.724673, -0.496801,
		32.583836, 30.810942, 33.138924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513790, 31.634998, 32.914631>,  <32.249561, 31.318213, 33.486683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513790, 31.634998, 32.914631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544880, 31.252682, 32.801201>,  <32.563534, 31.023291, 32.733143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544880, 31.252682, 32.801201>,  <32.513790, 31.634998, 32.914631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544880, 31.252682, 32.801201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423523, 0.225845, -0.877281,
		0.902545, 0.188289, -0.387246,
		0.077725, -0.955794, -0.283580,
		32.568199, 30.965944, 32.716125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983986, 31.563974, 32.281998>,  <32.513790, 31.634998, 32.914631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983986, 31.563974, 32.281998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763729, 31.230934, 32.305908>,  <32.631577, 31.031111, 32.320255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763729, 31.230934, 32.305908>,  <32.983986, 31.563974, 32.281998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763729, 31.230934, 32.305908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117827, 0.006633, -0.993012,
		0.826384, -0.553836, -0.101755,
		-0.550641, -0.832599, 0.059775,
		32.598537, 30.981155, 32.323841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285248, 31.081354, 31.759380>,  <32.983986, 31.563974, 32.281998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285248, 31.081354, 31.759380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913971, 30.951582, 31.832266>,  <32.691204, 30.873718, 31.875998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913971, 30.951582, 31.832266>,  <33.285248, 31.081354, 31.759380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913971, 30.951582, 31.832266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150068, -0.121719, -0.981154,
		0.340495, -0.938046, 0.064293,
		-0.928193, -0.324430, 0.182215,
		32.635513, 30.854254, 31.886930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123798, 30.625078, 31.211702>,  <33.285248, 31.081354, 31.759380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.123798, 30.625078, 31.211702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745998, 30.667610, 31.336031>,  <32.519318, 30.693129, 31.410627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745998, 30.667610, 31.336031>,  <33.123798, 30.625078, 31.211702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745998, 30.667610, 31.336031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320274, -0.087573, -0.943269,
		-0.073055, -0.990470, 0.116760,
		-0.944504, 0.106306, 0.310824,
		32.462646, 30.699509, 31.429277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644329, 30.027609, 30.879292>,  <33.123798, 30.625078, 31.211702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644329, 30.027609, 30.879292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430847, 30.353148, 30.971218>,  <32.302757, 30.548470, 31.026375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430847, 30.353148, 30.971218>,  <32.644329, 30.027609, 30.879292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430847, 30.353148, 30.971218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381009, 0.011206, -0.924504,
		-0.754978, -0.580974, 0.304102,
		-0.533704, 0.813845, 0.229816,
		32.270737, 30.597301, 31.040163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885067, 29.918999, 30.544678>,  <32.644329, 30.027609, 30.879292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885067, 29.918999, 30.544678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972164, 30.297924, 30.638647>,  <32.024422, 30.525278, 30.695028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972164, 30.297924, 30.638647>,  <31.885067, 29.918999, 30.544678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972164, 30.297924, 30.638647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354930, 0.301072, -0.885088,
		-0.909183, 0.109340, 0.401785,
		0.217742, 0.947312, 0.234922,
		32.037487, 30.582117, 30.709124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308838, 30.332899, 30.327583>,  <31.885067, 29.918999, 30.544678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.308838, 30.332899, 30.327583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.625031, 30.573275, 30.374928>,  <31.814747, 30.717501, 30.403334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.625031, 30.573275, 30.374928>,  <31.308838, 30.332899, 30.327583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.625031, 30.573275, 30.374928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334743, 0.585717, -0.738162,
		-0.512917, 0.543883, 0.664160,
		0.790483, 0.600938, 0.118363,
		31.862175, 30.753555, 30.410437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.123886, 30.871155, 30.063900>,  <31.308838, 30.332899, 30.327583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.123886, 30.871155, 30.063900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509998, 30.971714, 30.092281>,  <31.741665, 31.032049, 30.109310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509998, 30.971714, 30.092281>,  <31.123886, 30.871155, 30.063900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.509998, 30.971714, 30.092281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116745, 0.658174, -0.743759,
		-0.233682, 0.709651, 0.664672,
		0.965279, 0.251399, 0.070955,
		31.799582, 31.047134, 30.113567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113733, 31.554977, 29.991381>,  <31.123886, 30.871155, 30.063900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.113733, 31.554977, 29.991381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487997, 31.435310, 29.916504>,  <31.712555, 31.363510, 29.871578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487997, 31.435310, 29.916504>,  <31.113733, 31.554977, 29.991381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.487997, 31.435310, 29.916504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040936, 0.618856, -0.784437,
		0.350524, 0.726302, 0.591285,
		0.935659, -0.299169, -0.187192,
		31.768694, 31.345560, 29.860346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.581091, 32.160248, 29.868908>,  <31.113733, 31.554977, 29.991381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.581091, 32.160248, 29.868908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729429, 31.840208, 29.680311>,  <31.818432, 31.648184, 29.567152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729429, 31.840208, 29.680311>,  <31.581091, 32.160248, 29.868908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729429, 31.840208, 29.680311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054619, 0.488026, -0.871119,
		0.927086, 0.348805, 0.137283,
		0.370848, -0.800103, -0.471494,
		31.840683, 31.600178, 29.538862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003677, 32.488743, 29.420946>,  <31.581091, 32.160248, 29.868908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003677, 32.488743, 29.420946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983006, 32.114693, 29.280737>,  <31.970602, 31.890263, 29.196611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983006, 32.114693, 29.280737>,  <32.003677, 32.488743, 29.420946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983006, 32.114693, 29.280737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003802, 0.351175, -0.936302,
		0.998656, -0.047056, -0.021705,
		-0.051681, -0.935127, -0.350525,
		31.967501, 31.834154, 29.175579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497318, 32.534439, 28.820135>,  <32.003677, 32.488743, 29.420946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497318, 32.534439, 28.820135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225975, 32.243732, 28.776957>,  <32.063171, 32.069309, 28.751049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225975, 32.243732, 28.776957>,  <32.497318, 32.534439, 28.820135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225975, 32.243732, 28.776957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302610, 0.410236, -0.860310,
		0.669525, -0.550929, -0.498210,
		-0.678354, -0.726763, -0.107946,
		32.022469, 32.025703, 28.744574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675026, 32.300865, 28.164339>,  <32.497318, 32.534439, 28.820135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675026, 32.300865, 28.164339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296822, 32.185394, 28.224566>,  <32.069897, 32.116112, 28.260700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296822, 32.185394, 28.224566>,  <32.675026, 32.300865, 28.164339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296822, 32.185394, 28.224566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241715, 0.312565, -0.918628,
		0.218125, -0.904969, -0.365311,
		-0.945513, -0.288677, 0.150566,
		32.013168, 32.098789, 28.269735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384472, 31.954473, 27.538555>,  <32.675026, 32.300865, 28.164339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384472, 31.954473, 27.538555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041668, 32.055286, 27.718336>,  <31.835985, 32.115772, 27.826204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041668, 32.055286, 27.718336>,  <32.384472, 31.954473, 27.538555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041668, 32.055286, 27.718336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421005, 0.160463, -0.892752,
		-0.297122, -0.954323, -0.031412,
		-0.857014, 0.252032, 0.449452,
		31.784563, 32.130894, 27.853172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898014, 31.630661, 27.113844>,  <32.384472, 31.954473, 27.538555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898014, 31.630661, 27.113844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703800, 31.927647, 27.298452>,  <31.587271, 32.105839, 27.409218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703800, 31.927647, 27.298452>,  <31.898014, 31.630661, 27.113844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703800, 31.927647, 27.298452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462012, 0.230252, -0.856463,
		-0.742159, -0.629073, 0.231231,
		-0.485536, 0.742463, 0.461523,
		31.558140, 32.150387, 27.436909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.181311, 31.540649, 26.894926>,  <31.898014, 31.630661, 27.113844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.181311, 31.540649, 26.894926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.216667, 31.918524, 27.021265>,  <31.237881, 32.145248, 27.097069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.216667, 31.918524, 27.021265>,  <31.181311, 31.540649, 26.894926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.216667, 31.918524, 27.021265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498335, 0.316491, -0.807153,
		-0.862467, -0.086051, 0.498745,
		0.088392, 0.944684, 0.315845,
		31.243185, 32.201931, 27.116018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.524324, 31.908312, 26.844976>,  <31.181311, 31.540649, 26.894926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.524324, 31.908312, 26.844976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.802139, 32.195774, 26.858576>,  <30.968828, 32.368252, 26.866735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.802139, 32.195774, 26.858576>,  <30.524324, 31.908312, 26.844976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.802139, 32.195774, 26.858576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489961, 0.507066, -0.709100,
		-0.526837, 0.475838, 0.704288,
		0.694537, 0.718654, 0.034000,
		31.010500, 32.411369, 26.868776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.156448, 32.581512, 26.898624>,  <30.524324, 31.908312, 26.844976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.156448, 32.581512, 26.898624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.519831, 32.649742, 26.745987>,  <30.737860, 32.690681, 26.654404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.519831, 32.649742, 26.745987>,  <30.156448, 32.581512, 26.898624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519831, 32.649742, 26.745987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379679, 0.718551, -0.582690,
		0.174801, 0.674230, 0.717536,
		0.908454, 0.170579, -0.381595,
		30.792366, 32.700916, 26.631508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151386, 33.262417, 26.732584>,  <30.156448, 32.581512, 26.898624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.151386, 33.262417, 26.732584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476019, 33.141888, 26.532368>,  <30.670797, 33.069569, 26.412237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476019, 33.141888, 26.532368>,  <30.151386, 33.262417, 26.732584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476019, 33.141888, 26.532368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179842, 0.686292, -0.704742,
		0.555874, 0.661972, 0.502789,
		0.811580, -0.301325, -0.500542,
		30.719492, 33.051491, 26.382206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.518358, 33.877605, 26.514151>,  <30.151386, 33.262417, 26.732584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.518358, 33.877605, 26.514151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.653700, 33.603664, 26.256006>,  <30.734905, 33.439301, 26.101120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.653700, 33.603664, 26.256006>,  <30.518358, 33.877605, 26.514151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.653700, 33.603664, 26.256006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121987, 0.648105, -0.751717,
		0.933078, 0.333073, 0.135747,
		0.338356, -0.684852, -0.645363,
		30.755207, 33.398209, 26.062397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.979837, 34.177906, 26.092724>,  <30.518358, 33.877605, 26.514151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.979837, 34.177906, 26.092724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841906, 33.867157, 25.881989>,  <30.759146, 33.680706, 25.755548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841906, 33.867157, 25.881989>,  <30.979837, 34.177906, 26.092724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841906, 33.867157, 25.881989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032393, 0.570776, -0.820467,
		0.938106, -0.265855, -0.221985,
		-0.344829, -0.776876, -0.526837,
		30.738457, 33.634094, 25.723938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.358974, 34.275921, 25.511499>,  <30.979837, 34.177906, 26.092724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.358974, 34.275921, 25.511499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.055363, 34.029598, 25.426973>,  <30.873196, 33.881805, 25.376257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.055363, 34.029598, 25.426973>,  <31.358974, 34.275921, 25.511499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.055363, 34.029598, 25.426973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085091, 0.415621, -0.905549,
		0.645474, -0.669356, -0.367867,
		-0.759028, -0.615811, -0.211316,
		30.827654, 33.844856, 25.363579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.490786, 33.979805, 24.808699>,  <31.358974, 34.275921, 25.511499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.490786, 33.979805, 24.808699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.097189, 33.941292, 24.868681>,  <30.861031, 33.918182, 24.904671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.097189, 33.941292, 24.868681>,  <31.490786, 33.979805, 24.808699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.097189, 33.941292, 24.868681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174496, 0.349696, -0.920469,
		0.036187, -0.931902, -0.360900,
		-0.983993, -0.096285, 0.149958,
		30.801991, 33.912407, 24.913668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.258509, 33.706230, 24.187323>,  <31.490786, 33.979805, 24.808699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.258509, 33.706230, 24.187323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937378, 33.861576, 24.368271>,  <30.744699, 33.954784, 24.476839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937378, 33.861576, 24.368271>,  <31.258509, 33.706230, 24.187323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.937378, 33.861576, 24.368271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338533, 0.327631, -0.882074,
		-0.490779, -0.861295, -0.131556,
		-0.802827, 0.388367, 0.452371,
		30.696529, 33.978085, 24.503983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718651, 33.466007, 23.813919>,  <31.258509, 33.706230, 24.187323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718651, 33.466007, 23.813919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.541521, 33.745743, 24.038361>,  <30.435244, 33.913582, 24.173025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.541521, 33.745743, 24.038361>,  <30.718651, 33.466007, 23.813919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.541521, 33.745743, 24.038361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350462, 0.441014, -0.826247,
		-0.825278, -0.562527, 0.049799,
		-0.442824, 0.699336, 0.561103,
		30.408674, 33.955544, 24.206692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078707, 33.684326, 23.481098>,  <30.718651, 33.466007, 23.813919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078707, 33.684326, 23.481098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.174585, 33.995785, 23.713047>,  <30.232113, 34.182659, 23.852217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.174585, 33.995785, 23.713047>,  <30.078707, 33.684326, 23.481098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.174585, 33.995785, 23.713047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465529, 0.616322, -0.635162,
		-0.851956, -0.117702, 0.510213,
		0.239696, 0.778649, 0.579872,
		30.246494, 34.229378, 23.887009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.528152, 34.136902, 23.252186>,  <30.078707, 33.684326, 23.481098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.528152, 34.136902, 23.252186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.773726, 34.368069, 23.467258>,  <29.921070, 34.506767, 23.596302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.773726, 34.368069, 23.467258>,  <29.528152, 34.136902, 23.252186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.773726, 34.368069, 23.467258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166061, 0.760478, -0.627771,
		-0.771693, 0.296121, 0.562852,
		0.613933, 0.577915, 0.537682,
		29.957905, 34.541443, 23.628563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.279963, 34.822460, 23.403093>,  <29.528152, 34.136902, 23.252186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.279963, 34.822460, 23.403093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.676369, 34.812984, 23.350435>,  <29.914211, 34.807301, 23.318840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.676369, 34.812984, 23.350435>,  <29.279963, 34.822460, 23.403093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676369, 34.812984, 23.350435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055195, 0.824075, -0.563785,
		0.121841, 0.565984, 0.815363,
		0.991014, -0.023688, -0.131646,
		29.973673, 34.805878, 23.310942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.616934, 35.550526, 23.406715>,  <29.279963, 34.822460, 23.403093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.616934, 35.550526, 23.406715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.861645, 35.302837, 23.209822>,  <30.008471, 35.154224, 23.091686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.861645, 35.302837, 23.209822>,  <29.616934, 35.550526, 23.406715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.861645, 35.302837, 23.209822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293541, 0.755550, -0.585644,
		0.734550, 0.213793, 0.643995,
		0.611777, -0.619223, -0.492232,
		30.045177, 35.117069, 23.062153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386492, 36.170300, 23.641302>,  <29.616934, 35.550526, 23.406715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386492, 36.170300, 23.641302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.674288, 36.437366, 23.717781>,  <29.846966, 36.597607, 23.763668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.674288, 36.437366, 23.717781>,  <29.386492, 36.170300, 23.641302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.674288, 36.437366, 23.717781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022204, 0.297275, -0.954534,
		-0.694146, 0.682534, 0.228712,
		0.719492, 0.667664, 0.191198,
		29.890135, 36.637665, 23.775141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.151426, 36.703262, 23.141527>,  <29.386492, 36.170300, 23.641302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.151426, 36.703262, 23.141527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517746, 36.815594, 23.256382>,  <29.737537, 36.882992, 23.325294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517746, 36.815594, 23.256382>,  <29.151426, 36.703262, 23.141527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517746, 36.815594, 23.256382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346146, -0.189264, -0.918892,
		-0.203705, 0.940912, -0.270535,
		0.915799, 0.280827, 0.287139,
		29.792486, 36.899841, 23.342524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426556, 36.979145, 22.547831>,  <29.151426, 36.703262, 23.141527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426556, 36.979145, 22.547831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.731806, 36.871269, 22.782745>,  <29.914957, 36.806545, 22.923695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.731806, 36.871269, 22.782745>,  <29.426556, 36.979145, 22.547831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.731806, 36.871269, 22.782745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564258, -0.164952, -0.808952,
		0.315041, 0.948714, 0.026296,
		0.763127, -0.269691, 0.587286,
		29.960743, 36.790363, 22.958931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.081968, 37.280022, 22.311478>,  <29.426556, 36.979145, 22.547831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.081968, 37.280022, 22.311478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.068506, 36.920784, 22.486879>,  <30.060429, 36.705242, 22.592121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.068506, 36.920784, 22.486879>,  <30.081968, 37.280022, 22.311478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068506, 36.920784, 22.486879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506020, -0.393673, -0.767441,
		0.861865, 0.196066, 0.467704,
		-0.033653, -0.898098, 0.438506,
		30.058411, 36.651356, 22.618431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.775389, 37.029034, 22.462675>,  <30.081968, 37.280022, 22.311478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.775389, 37.029034, 22.462675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.503914, 36.743816, 22.392303>,  <30.341028, 36.572685, 22.350080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.503914, 36.743816, 22.392303>,  <30.775389, 37.029034, 22.462675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.503914, 36.743816, 22.392303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600447, -0.400782, -0.691981,
		0.422902, -0.575276, 0.700151,
		-0.678688, -0.713044, -0.175931,
		30.300308, 36.529903, 22.339523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.907442, 36.477493, 22.978270>,  <30.775389, 37.029034, 22.462675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.907442, 36.477493, 22.978270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.600876, 36.728329, 23.033937>,  <30.416937, 36.878830, 23.067339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.600876, 36.728329, 23.033937>,  <30.907442, 36.477493, 22.978270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.600876, 36.728329, 23.033937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175493, -0.004002, 0.984473,
		0.617908, 0.778938, -0.106983,
		-0.766414, 0.627089, 0.139171,
		30.370951, 36.916454, 23.075689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.977314, 36.873783, 23.600788>,  <30.907442, 36.477493, 22.978270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.977314, 36.873783, 23.600788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.597801, 36.962578, 23.510870>,  <30.370094, 37.015854, 23.456919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.597801, 36.962578, 23.510870>,  <30.977314, 36.873783, 23.600788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.597801, 36.962578, 23.510870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215787, 0.064367, 0.974317,
		0.230754, 0.972923, -0.013168,
		-0.948783, 0.221986, -0.224797,
		30.313166, 37.029175, 23.443432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.782009, 37.530655, 23.995527>,  <30.977314, 36.873783, 23.600788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.782009, 37.530655, 23.995527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.505310, 37.250637, 23.924623>,  <30.339291, 37.082626, 23.882080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.505310, 37.250637, 23.924623>,  <30.782009, 37.530655, 23.995527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.505310, 37.250637, 23.924623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219602, -0.029917, 0.975131,
		-0.687938, 0.713472, -0.133036,
		-0.691748, -0.700045, -0.177261,
		30.297785, 37.040623, 23.871445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.207151, 37.680008, 24.400629>,  <30.782009, 37.530655, 23.995527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.207151, 37.680008, 24.400629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.198200, 37.289829, 24.312992>,  <30.192829, 37.055721, 24.260410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.198200, 37.289829, 24.312992>,  <30.207151, 37.680008, 24.400629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.198200, 37.289829, 24.312992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131454, -0.220115, 0.966576,
		-0.991070, -0.007169, 0.133152,
		-0.022380, -0.975448, -0.219091,
		30.191486, 36.997196, 24.247265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.684326, 37.369453, 24.832804>,  <30.207151, 37.680008, 24.400629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.684326, 37.369453, 24.832804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.956161, 37.101864, 24.712385>,  <30.119263, 36.941311, 24.640133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.956161, 37.101864, 24.712385>,  <29.684326, 37.369453, 24.832804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.956161, 37.101864, 24.712385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145632, -0.279179, 0.949131,
		-0.718994, -0.688860, -0.092302,
		0.679587, -0.668978, -0.301048,
		30.160038, 36.901169, 24.622070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.374376, 36.677227, 24.980019>,  <29.684326, 37.369453, 24.832804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.374376, 36.677227, 24.980019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770870, 36.631481, 24.953552>,  <30.008766, 36.604034, 24.937672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770870, 36.631481, 24.953552>,  <29.374376, 36.677227, 24.980019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.770870, 36.631481, 24.953552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030964, -0.285759, 0.957801,
		-0.128449, -0.951453, -0.279712,
		0.991233, -0.114368, -0.066166,
		30.068239, 36.597172, 24.933702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.488377, 36.171234, 25.447933>,  <29.374376, 36.677227, 24.980019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.488377, 36.171234, 25.447933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868135, 36.283630, 25.391798>,  <30.095991, 36.351067, 25.358116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868135, 36.283630, 25.391798>,  <29.488377, 36.171234, 25.447933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.868135, 36.283630, 25.391798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256418, -0.435374, 0.862960,
		0.181382, -0.855275, -0.485392,
		0.949394, 0.280989, -0.140339,
		30.152954, 36.367928, 25.349697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.847864, 35.640469, 25.680843>,  <29.488377, 36.171234, 25.447933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.847864, 35.640469, 25.680843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.128389, 35.925339, 25.693316>,  <30.296703, 36.096260, 25.700798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.128389, 35.925339, 25.693316>,  <29.847864, 35.640469, 25.680843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.128389, 35.925339, 25.693316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294317, -0.329108, 0.897254,
		0.649262, -0.620078, -0.440412,
		0.701311, 0.712174, 0.031178,
		30.338783, 36.138992, 25.702669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485567, 35.259350, 25.958956>,  <29.847864, 35.640469, 25.680843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485567, 35.259350, 25.958956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537142, 35.647976, 26.038389>,  <30.568087, 35.881153, 26.086048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537142, 35.647976, 26.038389>,  <30.485567, 35.259350, 25.958956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537142, 35.647976, 26.038389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483397, -0.236428, 0.842869,
		0.865854, -0.012682, -0.500136,
		0.128936, 0.971566, 0.198582,
		30.575823, 35.939445, 26.097963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.229536, 35.325176, 26.260323>,  <30.485567, 35.259350, 25.958956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.229536, 35.325176, 26.260323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.997519, 35.640030, 26.344200>,  <30.858307, 35.828941, 26.394526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.997519, 35.640030, 26.344200>,  <31.229536, 35.325176, 26.260323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.997519, 35.640030, 26.344200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445282, 0.090831, 0.890771,
		0.682108, 0.610060, -0.403182,
		-0.580046, 0.787132, 0.209692,
		30.823505, 35.876171, 26.407108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653526, 35.986961, 26.404047>,  <31.229536, 35.325176, 26.260323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653526, 35.986961, 26.404047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303940, 36.066021, 26.581640>,  <31.094189, 36.113457, 26.688196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303940, 36.066021, 26.581640>,  <31.653526, 35.986961, 26.404047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303940, 36.066021, 26.581640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465866, 0.080549, 0.881181,
		0.138398, 0.976959, -0.162473,
		-0.873965, 0.197645, 0.443984,
		31.041750, 36.125313, 26.714836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.841190, 36.468590, 26.789764>,  <31.653526, 35.986961, 26.404047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.841190, 36.468590, 26.789764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496296, 36.332783, 26.940115>,  <31.289360, 36.251301, 27.030325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496296, 36.332783, 26.940115>,  <31.841190, 36.468590, 26.789764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.496296, 36.332783, 26.940115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341758, 0.157748, 0.926454,
		-0.373837, 0.927279, -0.019985,
		-0.862234, -0.339513, 0.375877,
		31.237625, 36.230930, 27.052877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698030, 36.968872, 27.440434>,  <31.841190, 36.468590, 26.789764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.698030, 36.968872, 27.440434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.482876, 36.635067, 27.488197>,  <31.353783, 36.434784, 27.516855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.482876, 36.635067, 27.488197>,  <31.698030, 36.968872, 27.440434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482876, 36.635067, 27.488197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161014, 0.037340, 0.986246,
		-0.827497, 0.549717, 0.114284,
		-0.537888, -0.834516, 0.119411,
		31.321508, 36.384712, 27.524021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465679, 37.045013, 28.116655>,  <31.698030, 36.968872, 27.440434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465679, 37.045013, 28.116655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.388979, 36.661392, 28.033276>,  <31.342958, 36.431221, 27.983248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.388979, 36.661392, 28.033276>,  <31.465679, 37.045013, 28.116655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.388979, 36.661392, 28.033276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026252, -0.207301, 0.977925,
		-0.981093, 0.192988, 0.014573,
		-0.191749, -0.959053, -0.208448,
		31.331455, 36.373676, 27.970741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.993343, 36.833225, 28.585304>,  <31.465679, 37.045013, 28.116655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.993343, 36.833225, 28.585304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.130070, 36.472099, 28.480932>,  <31.212105, 36.255424, 28.418308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.130070, 36.472099, 28.480932>,  <30.993343, 36.833225, 28.585304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.130070, 36.472099, 28.480932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000931, -0.277329, 0.960774,
		-0.939767, -0.328650, -0.093955,
		0.341815, -0.902816, -0.260931,
		31.232615, 36.201256, 28.402653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.796450, 36.503971, 29.029465>,  <30.993343, 36.833225, 28.585304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.796450, 36.503971, 29.029465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.087336, 36.265133, 28.894032>,  <31.261868, 36.121830, 28.812773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.087336, 36.265133, 28.894032>,  <30.796450, 36.503971, 29.029465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.087336, 36.265133, 28.894032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103028, -0.392726, 0.913866,
		-0.678635, -0.699460, -0.224078,
		0.727214, -0.597095, -0.338582,
		31.305500, 36.086006, 28.792458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.653856, 35.822540, 29.292854>,  <30.796450, 36.503971, 29.029465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.653856, 35.822540, 29.292854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.048773, 35.855766, 29.238661>,  <31.285723, 35.875702, 29.206144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.048773, 35.855766, 29.238661>,  <30.653856, 35.822540, 29.292854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.048773, 35.855766, 29.238661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154499, -0.302005, 0.940703,
		0.037219, -0.949681, -0.311000,
		0.987292, 0.083062, -0.135484,
		31.344961, 35.880684, 29.198015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.935362, 35.244514, 29.552769>,  <30.653856, 35.822540, 29.292854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.935362, 35.244514, 29.552769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250095, 35.491062, 29.540213>,  <31.438934, 35.638992, 29.532679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250095, 35.491062, 29.540213>,  <30.935362, 35.244514, 29.552769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250095, 35.491062, 29.540213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217297, -0.229072, 0.948846,
		0.577648, -0.753403, -0.314176,
		0.786832, 0.616369, -0.031390,
		31.486145, 35.675972, 29.530796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471329, 34.824142, 29.743492>,  <30.935362, 35.244514, 29.552769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471329, 34.824142, 29.743492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580751, 35.206554, 29.785761>,  <31.646404, 35.436001, 29.811123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580751, 35.206554, 29.785761>,  <31.471329, 34.824142, 29.743492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.580751, 35.206554, 29.785761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387142, -0.210008, 0.897785,
		0.880505, -0.204683, -0.427569,
		0.273554, 0.956034, 0.105672,
		31.662817, 35.493366, 29.817463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.222363, 34.855724, 29.854494>,  <31.471329, 34.824142, 29.743492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.222363, 34.855724, 29.854494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044121, 35.175388, 30.015877>,  <31.937176, 35.367188, 30.112705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044121, 35.175388, 30.015877>,  <32.222363, 34.855724, 29.854494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044121, 35.175388, 30.015877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440231, -0.196805, 0.876051,
		0.779510, 0.567982, -0.264120,
		-0.445601, 0.799165, 0.403455,
		31.910440, 35.415138, 30.136913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765522, 35.116924, 30.173773>,  <32.222363, 34.855724, 29.854494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765522, 35.116924, 30.173773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458260, 35.318562, 30.331673>,  <32.273903, 35.439545, 30.426413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458260, 35.318562, 30.331673>,  <32.765522, 35.116924, 30.173773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458260, 35.318562, 30.331673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485304, 0.056261, 0.872533,
		0.417625, 0.861818, -0.287854,
		-0.768160, 0.504089, 0.394748,
		32.227810, 35.469788, 30.450096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065525, 35.601093, 30.548773>,  <32.765522, 35.116924, 30.173773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065525, 35.601093, 30.548773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708511, 35.579765, 30.727900>,  <32.494305, 35.566967, 30.835375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708511, 35.579765, 30.727900>,  <33.065525, 35.601093, 30.548773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708511, 35.579765, 30.727900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433056, 0.175833, 0.884051,
		-0.125877, 0.982975, -0.133847,
		-0.892534, -0.053319, 0.447817,
		32.440750, 35.563770, 30.862244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034809, 36.116604, 31.098589>,  <33.065525, 35.601093, 30.548773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034809, 36.116604, 31.098589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743614, 35.861946, 31.200346>,  <32.568897, 35.709152, 31.261400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743614, 35.861946, 31.200346>,  <33.034809, 36.116604, 31.098589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743614, 35.861946, 31.200346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258290, 0.089035, 0.961956,
		-0.635073, 0.766001, 0.099623,
		-0.727989, -0.636644, 0.254394,
		32.525219, 35.670952, 31.276665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679569, 36.437469, 31.737276>,  <33.034809, 36.116604, 31.098589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679569, 36.437469, 31.737276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.594452, 36.047535, 31.710693>,  <32.543381, 35.813576, 31.694744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.594452, 36.047535, 31.710693>,  <32.679569, 36.437469, 31.737276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594452, 36.047535, 31.710693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160918, -0.102050, 0.981678,
		-0.963756, 0.198199, 0.178584,
		-0.212792, -0.974835, -0.066457,
		32.530613, 35.755085, 31.690756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176479, 36.401405, 32.228374>,  <32.679569, 36.437469, 31.737276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176479, 36.401405, 32.228374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353554, 36.046551, 32.176193>,  <32.459797, 35.833637, 32.144886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353554, 36.046551, 32.176193>,  <32.176479, 36.401405, 32.228374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353554, 36.046551, 32.176193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209649, -0.039049, 0.976997,
		-0.871825, -0.459848, 0.168701,
		0.442682, -0.887138, -0.130451,
		32.486359, 35.780411, 32.137058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.924376, 36.011124, 32.704414>,  <32.176479, 36.401405, 32.228374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.924376, 36.011124, 32.704414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231792, 35.777824, 32.599213>,  <32.416241, 35.637844, 32.536091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231792, 35.777824, 32.599213>,  <31.924376, 36.011124, 32.704414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231792, 35.777824, 32.599213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171242, -0.208560, 0.962901,
		-0.616459, -0.785066, -0.060412,
		0.768540, -0.583244, -0.263005,
		32.462357, 35.602852, 32.520309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.742214, 35.361729, 33.057751>,  <31.924376, 36.011124, 32.704414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.742214, 35.361729, 33.057751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130386, 35.414433, 32.976852>,  <32.363289, 35.446056, 32.928314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130386, 35.414433, 32.976852>,  <31.742214, 35.361729, 33.057751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130386, 35.414433, 32.976852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231842, -0.275562, 0.932907,
		0.067192, -0.952210, -0.297962,
		0.970430, 0.131764, -0.202246,
		32.421516, 35.453960, 32.916180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051804, 34.828392, 33.522762>,  <31.742214, 35.361729, 33.057751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051804, 34.828392, 33.522762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.371490, 35.030121, 33.391972>,  <32.563301, 35.151157, 33.313499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.371490, 35.030121, 33.391972>,  <32.051804, 34.828392, 33.522762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371490, 35.030121, 33.391972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389012, -0.019338, 0.921030,
		0.458174, -0.863298, -0.211644,
		0.799216, 0.504324, -0.326973,
		32.611256, 35.181419, 33.293880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668400, 34.378082, 33.642998>,  <32.051804, 34.828392, 33.522762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668400, 34.378082, 33.642998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783115, 34.759773, 33.609047>,  <32.851944, 34.988789, 33.588676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783115, 34.759773, 33.609047>,  <32.668400, 34.378082, 33.642998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783115, 34.759773, 33.609047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463533, -0.060682, 0.883999,
		0.838386, -0.292861, -0.459719,
		0.286786, 0.954227, -0.084876,
		32.869152, 35.046043, 33.583584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326862, 34.373947, 33.748287>,  <32.668400, 34.378082, 33.642998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326862, 34.373947, 33.748287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239773, 34.756523, 33.826069>,  <33.187519, 34.986069, 33.872738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239773, 34.756523, 33.826069>,  <33.326862, 34.373947, 33.748287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239773, 34.756523, 33.826069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463036, -0.074166, 0.883231,
		0.859183, 0.282337, -0.426721,
		-0.217721, 0.956444, 0.194454,
		33.174458, 35.043457, 33.884403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866249, 34.684109, 33.887062>,  <33.326862, 34.373947, 33.748287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866249, 34.684109, 33.887062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.609806, 34.935028, 34.063911>,  <33.455940, 35.085579, 34.170021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.609806, 34.935028, 34.063911>,  <33.866249, 34.684109, 33.887062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609806, 34.935028, 34.063911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487042, -0.112655, 0.866082,
		0.593098, 0.770589, -0.233295,
		-0.641112, 0.627297, 0.442125,
		33.417473, 35.123219, 34.196548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206242, 35.160755, 34.283924>,  <33.866249, 34.684109, 33.887062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206242, 35.160755, 34.283924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843533, 35.157658, 34.452541>,  <33.625908, 35.155800, 34.553711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843533, 35.157658, 34.452541>,  <34.206242, 35.160755, 34.283924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843533, 35.157658, 34.452541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421315, -0.054423, 0.905280,
		0.015933, 0.998488, 0.052611,
		-0.906774, -0.007742, 0.421545,
		33.571499, 35.155334, 34.579006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333424, 35.493660, 34.821152>,  <34.206242, 35.160755, 34.283924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333424, 35.493660, 34.821152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982090, 35.337173, 34.931046>,  <33.771290, 35.243282, 34.996983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982090, 35.337173, 34.931046>,  <34.333424, 35.493660, 34.821152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982090, 35.337173, 34.931046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312752, -0.035624, 0.949166,
		-0.361544, 0.919608, 0.153644,
		-0.878335, -0.391218, 0.274730,
		33.718590, 35.219807, 35.013466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247803, 35.728180, 35.563869>,  <34.333424, 35.493660, 34.821152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247803, 35.728180, 35.563869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022671, 35.406750, 35.486423>,  <33.887592, 35.213890, 35.439957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022671, 35.406750, 35.486423>,  <34.247803, 35.728180, 35.563869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022671, 35.406750, 35.486423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371498, -0.455169, 0.809204,
		-0.738386, 0.383515, 0.554710,
		-0.562828, -0.803578, -0.193616,
		33.853821, 35.165676, 35.428337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062176, 35.618275, 36.275982>,  <34.247803, 35.728180, 35.563869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062176, 35.618275, 36.275982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951046, 35.285152, 36.084461>,  <33.884369, 35.085281, 35.969547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951046, 35.285152, 36.084461>,  <34.062176, 35.618275, 36.275982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951046, 35.285152, 36.084461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484902, -0.551843, 0.678483,
		-0.829266, -0.043672, 0.557145,
		-0.277826, -0.832804, -0.478801,
		33.867699, 35.035313, 35.940823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649521, 35.238266, 36.670284>,  <34.062176, 35.618275, 36.275982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649521, 35.238266, 36.670284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836418, 34.970188, 36.439629>,  <33.948559, 34.809341, 36.301235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836418, 34.970188, 36.439629>,  <33.649521, 35.238266, 36.670284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836418, 34.970188, 36.439629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235749, -0.534161, 0.811846,
		-0.852117, -0.515275, -0.091586,
		0.467245, -0.670197, -0.576644,
		33.976593, 34.769131, 36.266636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427788, 34.622738, 37.045151>,  <33.649521, 35.238266, 36.670284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427788, 34.622738, 37.045151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732807, 34.565701, 36.792740>,  <33.915817, 34.531479, 36.641293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732807, 34.565701, 36.792740>,  <33.427788, 34.622738, 37.045151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732807, 34.565701, 36.792740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462586, -0.561707, 0.685930,
		-0.452258, -0.814956, -0.362368,
		0.762547, -0.142591, -0.631024,
		33.961571, 34.522923, 36.603432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592079, 33.910206, 37.126263>,  <33.427788, 34.622738, 37.045151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592079, 33.910206, 37.126263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916683, 34.022488, 36.921265>,  <34.111446, 34.089859, 36.798267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916683, 34.022488, 36.921265>,  <33.592079, 33.910206, 37.126263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916683, 34.022488, 36.921265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583667, -0.431302, 0.687977,
		-0.027919, -0.857427, -0.513847,
		0.811513, 0.280708, -0.512493,
		34.160137, 34.106701, 36.767517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012199, 33.331329, 36.933567>,  <33.592079, 33.910206, 37.126263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012199, 33.331329, 36.933567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256771, 33.647686, 36.943665>,  <34.403515, 33.837502, 36.949722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256771, 33.647686, 36.943665>,  <34.012199, 33.331329, 36.933567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256771, 33.647686, 36.943665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568861, -0.461506, 0.680742,
		0.550046, -0.401865, -0.732089,
		0.611430, 0.790896, 0.025245,
		34.440201, 33.884956, 36.951237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734898, 33.134789, 36.774334>,  <34.012199, 33.331329, 36.933567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734898, 33.134789, 36.774334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740780, 33.485012, 36.967487>,  <34.744308, 33.695145, 37.083382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740780, 33.485012, 36.967487>,  <34.734898, 33.134789, 36.774334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740780, 33.485012, 36.967487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611256, -0.390061, 0.688635,
		0.791296, 0.285040, -0.540927,
		0.014706, 0.875560, 0.482886,
		34.745193, 33.747681, 37.112354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498657, 33.241474, 36.915298>,  <34.734898, 33.134789, 36.774334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498657, 33.241474, 36.915298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276546, 33.443584, 37.179531>,  <35.143280, 33.564850, 37.338070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276546, 33.443584, 37.179531>,  <35.498657, 33.241474, 36.915298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276546, 33.443584, 37.179531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510137, -0.420383, 0.750359,
		0.656833, 0.753643, -0.024330,
		-0.555275, 0.505272, 0.660583,
		35.109962, 33.595165, 37.377705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948158, 33.326366, 37.468727>,  <35.498657, 33.241474, 36.915298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948158, 33.326366, 37.468727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607479, 33.453651, 37.635269>,  <35.403072, 33.530022, 37.735195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607479, 33.453651, 37.635269>,  <35.948158, 33.326366, 37.468727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607479, 33.453651, 37.635269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338089, -0.273364, 0.900537,
		0.400381, 0.907750, 0.125238,
		-0.851699, 0.318216, 0.416351,
		35.351971, 33.549118, 37.760174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032303, 33.762142, 36.940849>,  <35.948158, 33.326366, 37.468727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032303, 33.762142, 36.940849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431709, 33.783524, 36.936676>,  <36.671352, 33.796352, 36.934174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431709, 33.783524, 36.936676>,  <36.032303, 33.762142, 36.940849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431709, 33.783524, 36.936676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017550, 0.134536, -0.990753,
		-0.051553, 0.989466, 0.135274,
		0.998516, 0.053450, -0.010429,
		36.731262, 33.799557, 36.933548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193001, 34.360291, 36.599903>,  <36.032303, 33.762142, 36.940849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193001, 34.360291, 36.599903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541115, 34.165966, 36.567421>,  <36.749981, 34.049370, 36.547932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541115, 34.165966, 36.567421>,  <36.193001, 34.360291, 36.599903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541115, 34.165966, 36.567421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017435, 0.195149, -0.980619,
		0.492247, 0.851998, 0.178305,
		0.870281, -0.485816, -0.081207,
		36.802200, 34.020222, 36.543060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645096, 34.840343, 36.377125>,  <36.193001, 34.360291, 36.599903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645096, 34.840343, 36.377125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.845345, 34.507912, 36.280220>,  <36.965492, 34.308453, 36.222076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.845345, 34.507912, 36.280220>,  <36.645096, 34.840343, 36.377125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845345, 34.507912, 36.280220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090988, 0.328819, -0.939999,
		0.860872, 0.448541, 0.240232,
		0.500621, -0.831077, -0.242260,
		36.995529, 34.258587, 36.207542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331848, 35.043095, 36.045288>,  <36.645096, 34.840343, 36.377125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331848, 35.043095, 36.045288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.232964, 34.667412, 35.949974>,  <37.173634, 34.442001, 35.892788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.232964, 34.667412, 35.949974>,  <37.331848, 35.043095, 36.045288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232964, 34.667412, 35.949974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109436, 0.217277, -0.969956,
		0.962761, -0.265863, 0.049069,
		-0.247214, -0.939206, -0.238280,
		37.158798, 34.385651, 35.878490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660374, 34.890743, 35.483147>,  <37.331848, 35.043095, 36.045288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660374, 34.890743, 35.483147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.393326, 34.597946, 35.428787>,  <37.233097, 34.422268, 35.396172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.393326, 34.597946, 35.428787>,  <37.660374, 34.890743, 35.483147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393326, 34.597946, 35.428787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150974, 0.311850, -0.938060,
		0.729031, -0.605754, -0.318710,
		-0.667623, -0.731992, -0.135895,
		37.193039, 34.378349, 35.388020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730209, 34.706902, 34.801987>,  <37.660374, 34.890743, 35.483147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730209, 34.706902, 34.801987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381065, 34.528519, 34.881214>,  <37.171577, 34.421490, 34.928749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381065, 34.528519, 34.881214>,  <37.730209, 34.706902, 34.801987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381065, 34.528519, 34.881214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300104, 0.170547, -0.938537,
		0.384768, -0.878655, -0.282698,
		-0.872864, -0.445958, 0.198067,
		37.119205, 34.394730, 34.940636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537445, 34.188293, 34.310253>,  <37.730209, 34.706902, 34.801987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537445, 34.188293, 34.310253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.176380, 34.223423, 34.478767>,  <36.959740, 34.244503, 34.579876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.176380, 34.223423, 34.478767>,  <37.537445, 34.188293, 34.310253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176380, 34.223423, 34.478767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417747, 0.056270, -0.906819,
		-0.103352, -0.994545, -0.014103,
		-0.902666, 0.087830, 0.421284,
		36.905579, 34.249771, 34.605152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225479, 33.860935, 33.868843>,  <37.537445, 34.188293, 34.310253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225479, 33.860935, 33.868843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947014, 34.086182, 34.046947>,  <36.779934, 34.221329, 34.153809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947014, 34.086182, 34.046947>,  <37.225479, 33.860935, 33.868843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947014, 34.086182, 34.046947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320698, 0.310965, -0.894681,
		-0.642271, -0.765637, -0.035891,
		-0.696162, 0.563117, 0.445262,
		36.738167, 34.255116, 34.180527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578835, 33.766628, 33.413364>,  <37.225479, 33.860935, 33.868843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578835, 33.766628, 33.413364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479294, 34.100613, 33.609695>,  <36.419567, 34.301003, 33.727493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479294, 34.100613, 33.609695>,  <36.578835, 33.766628, 33.413364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479294, 34.100613, 33.609695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373736, 0.384743, -0.843975,
		-0.893528, -0.393468, 0.216309,
		-0.248854, 0.834958, 0.490832,
		36.404636, 34.351101, 33.756947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815365, 33.820141, 33.410244>,  <36.578835, 33.766628, 33.413364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815365, 33.820141, 33.410244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972603, 34.182899, 33.470921>,  <36.066944, 34.400555, 33.507328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972603, 34.182899, 33.470921>,  <35.815365, 33.820141, 33.410244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972603, 34.182899, 33.470921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521063, 0.355634, -0.775898,
		-0.757609, 0.225958, 0.612349,
		0.393092, 0.906900, 0.151693,
		36.090530, 34.454971, 33.516430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266529, 34.364769, 33.296707>,  <35.815365, 33.820141, 33.410244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266529, 34.364769, 33.296707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607750, 34.567318, 33.246277>,  <35.812481, 34.688847, 33.216019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607750, 34.567318, 33.246277>,  <35.266529, 34.364769, 33.296707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607750, 34.567318, 33.246277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397627, 0.474292, -0.785455,
		-0.337933, 0.720164, 0.605941,
		0.853050, 0.506370, -0.126078,
		35.863667, 34.719231, 33.208454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037804, 35.110577, 33.167248>,  <35.266529, 34.364769, 33.296707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037804, 35.110577, 33.167248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415836, 35.096962, 33.037224>,  <35.642654, 35.088795, 32.959209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415836, 35.096962, 33.037224>,  <35.037804, 35.110577, 33.167248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415836, 35.096962, 33.037224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265223, 0.501314, -0.823615,
		0.190987, 0.864596, 0.464756,
		0.945082, -0.034036, -0.325055,
		35.699360, 35.086750, 32.939709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177227, 35.810181, 33.006809>,  <35.037804, 35.110577, 33.167248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177227, 35.810181, 33.006809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414417, 35.551872, 32.814415>,  <35.556732, 35.396885, 32.698978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414417, 35.551872, 32.814415>,  <35.177227, 35.810181, 33.006809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414417, 35.551872, 32.814415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166729, 0.485926, -0.857950,
		0.787767, 0.588942, 0.180475,
		0.592980, -0.645774, -0.480990,
		35.592312, 35.358139, 32.670116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691338, 36.232513, 32.625694>,  <35.177227, 35.810181, 33.006809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691338, 36.232513, 32.625694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685562, 35.878902, 32.438808>,  <35.682098, 35.666737, 32.326679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685562, 35.878902, 32.438808>,  <35.691338, 36.232513, 32.625694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685562, 35.878902, 32.438808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013753, 0.467391, -0.883944,
		0.999801, -0.006333, -0.018905,
		-0.014434, -0.884028, -0.467211,
		35.681232, 35.613693, 32.298645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137936, 36.287601, 32.079243>,  <35.691338, 36.232513, 32.625694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137936, 36.287601, 32.079243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896790, 35.980724, 31.991634>,  <35.752102, 35.796600, 31.939068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896790, 35.980724, 31.991634>,  <36.137936, 36.287601, 32.079243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896790, 35.980724, 31.991634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248557, 0.441459, -0.862167,
		0.758135, -0.465334, -0.456832,
		-0.602869, -0.767189, -0.219024,
		35.715927, 35.750568, 31.925928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055080, 36.462650, 31.462330>,  <36.137936, 36.287601, 32.079243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055080, 36.462650, 31.462330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795376, 36.159348, 31.486025>,  <35.639553, 35.977367, 31.500242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795376, 36.159348, 31.486025>,  <36.055080, 36.462650, 31.462330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795376, 36.159348, 31.486025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378731, 0.254779, -0.889747,
		0.659565, -0.600111, -0.452593,
		-0.649258, -0.758258, 0.059237,
		35.600597, 35.931870, 31.503796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150185, 35.946960, 30.890324>,  <36.055080, 36.462650, 31.462330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150185, 35.946960, 30.890324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770283, 35.942642, 31.015450>,  <35.542343, 35.940052, 31.090525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770283, 35.942642, 31.015450>,  <36.150185, 35.946960, 30.890324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770283, 35.942642, 31.015450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307016, 0.226665, -0.924318,
		-0.060925, -0.973913, -0.218591,
		-0.949752, -0.010797, 0.312816,
		35.485355, 35.939404, 31.109295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823437, 35.704300, 30.370531>,  <36.150185, 35.946960, 30.890324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823437, 35.704300, 30.370531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518963, 35.833652, 30.595394>,  <35.336277, 35.911263, 30.730312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518963, 35.833652, 30.595394>,  <35.823437, 35.704300, 30.370531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518963, 35.833652, 30.595394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443857, 0.372230, -0.815129,
		-0.472850, -0.869982, -0.139800,
		-0.761186, 0.323383, 0.562156,
		35.290607, 35.930668, 30.764042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242020, 35.435158, 30.096203>,  <35.823437, 35.704300, 30.370531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242020, 35.435158, 30.096203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114315, 35.752415, 30.303663>,  <35.037693, 35.942768, 30.428139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114315, 35.752415, 30.303663>,  <35.242020, 35.435158, 30.096203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114315, 35.752415, 30.303663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473209, 0.340752, -0.812380,
		-0.821065, -0.504789, 0.266535,
		-0.319258, 0.793144, 0.518649,
		35.018539, 35.990356, 30.459259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446651, 35.420937, 30.193897>,  <35.242020, 35.435158, 30.096203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446651, 35.420937, 30.193897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527512, 35.806049, 30.265657>,  <34.576027, 36.037117, 30.308714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527512, 35.806049, 30.265657>,  <34.446651, 35.420937, 30.193897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527512, 35.806049, 30.265657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582683, 0.265468, -0.768119,
		-0.787157, 0.050740, 0.614662,
		0.202147, 0.962784, 0.179400,
		34.588158, 36.094883, 30.319477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876434, 35.707214, 30.153282>,  <34.446651, 35.420937, 30.193897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876434, 35.707214, 30.153282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097492, 36.033859, 30.086685>,  <34.230125, 36.229847, 30.046728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097492, 36.033859, 30.086685>,  <33.876434, 35.707214, 30.153282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097492, 36.033859, 30.086685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546128, 0.203941, -0.812497,
		-0.629545, 0.539949, 0.558685,
		0.552646, 0.816617, -0.166491,
		34.263287, 36.278843, 30.036737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489349, 36.169025, 29.897701>,  <33.876434, 35.707214, 30.153282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489349, 36.169025, 29.897701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842552, 36.315918, 29.780779>,  <34.054474, 36.404053, 29.710625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842552, 36.315918, 29.780779>,  <33.489349, 36.169025, 29.897701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842552, 36.315918, 29.780779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381588, 0.199033, -0.902650,
		-0.273305, 0.908584, 0.315879,
		0.883003, 0.367234, -0.292308,
		34.107452, 36.426086, 29.693087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410400, 36.811871, 29.671936>,  <33.489349, 36.169025, 29.897701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410400, 36.811871, 29.671936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742283, 36.677814, 29.493378>,  <33.941414, 36.597382, 29.386242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742283, 36.677814, 29.493378>,  <33.410400, 36.811871, 29.671936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742283, 36.677814, 29.493378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427614, 0.132419, -0.894210,
		0.358795, 0.932817, -0.033442,
		0.829706, -0.335139, -0.446397,
		33.991196, 36.577274, 29.359459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521378, 37.266529, 29.155777>,  <33.410400, 36.811871, 29.671936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521378, 37.266529, 29.155777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733299, 36.942493, 29.055326>,  <33.860451, 36.748074, 28.995056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733299, 36.942493, 29.055326>,  <33.521378, 37.266529, 29.155777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733299, 36.942493, 29.055326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342898, 0.066225, -0.937035,
		0.775712, 0.582556, -0.242691,
		0.529803, -0.810088, -0.251128,
		33.892239, 36.699467, 28.979988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846577, 37.514523, 28.580364>,  <33.521378, 37.266529, 29.155777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846577, 37.514523, 28.580364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874187, 37.116032, 28.559313>,  <33.890755, 36.876938, 28.546682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874187, 37.116032, 28.559313>,  <33.846577, 37.514523, 28.580364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874187, 37.116032, 28.559313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411790, 0.019598, -0.911068,
		0.908661, 0.084561, -0.408883,
		0.069028, -0.996226, -0.052630,
		33.894897, 36.817165, 28.543524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131332, 37.392372, 27.974947>,  <33.846577, 37.514523, 28.580364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131332, 37.392372, 27.974947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950539, 37.046070, 28.060900>,  <33.842064, 36.838287, 28.112471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950539, 37.046070, 28.060900>,  <34.131332, 37.392372, 27.974947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950539, 37.046070, 28.060900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259569, -0.102819, -0.960236,
		0.853424, -0.489789, -0.178251,
		-0.451985, -0.865757, 0.214882,
		33.814941, 36.786343, 28.125364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286472, 36.955196, 27.442097>,  <34.131332, 37.392372, 27.974947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286472, 36.955196, 27.442097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992443, 36.739201, 27.606085>,  <33.816025, 36.609604, 27.704477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992443, 36.739201, 27.606085>,  <34.286472, 36.955196, 27.442097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992443, 36.739201, 27.606085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285305, -0.302171, -0.909557,
		0.615036, -0.785556, 0.068054,
		-0.735072, -0.539994, 0.409970,
		33.771923, 36.577202, 27.729076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388775, 36.116459, 27.340347>,  <34.286472, 36.955196, 27.442097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388775, 36.116459, 27.340347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002216, 36.212505, 27.377058>,  <33.770283, 36.270134, 27.399084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002216, 36.212505, 27.377058>,  <34.388775, 36.116459, 27.340347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002216, 36.212505, 27.377058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143264, -0.206665, -0.967866,
		-0.213430, -0.948491, 0.234119,
		-0.966397, 0.240112, 0.091776,
		33.712296, 36.284538, 27.404591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936783, 35.448112, 27.157015>,  <34.388775, 36.116459, 27.340347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936783, 35.448112, 27.157015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750198, 35.794224, 27.083580>,  <33.638248, 36.001892, 27.039518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750198, 35.794224, 27.083580>,  <33.936783, 35.448112, 27.157015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750198, 35.794224, 27.083580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207223, -0.308676, -0.928320,
		-0.859924, -0.394984, 0.323292,
		-0.466464, 0.865279, -0.183588,
		33.610260, 36.053806, 27.028503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265095, 35.184010, 26.891956>,  <33.936783, 35.448112, 27.157015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265095, 35.184010, 26.891956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291286, 35.572884, 26.802002>,  <33.306999, 35.806206, 26.748030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291286, 35.572884, 26.802002>,  <33.265095, 35.184010, 26.891956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291286, 35.572884, 26.802002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365294, -0.186371, -0.912045,
		-0.928587, 0.141866, 0.342930,
		0.065476, 0.972183, -0.224885,
		33.310928, 35.864540, 26.734537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850964, 35.208759, 26.383177>,  <33.265095, 35.184010, 26.891956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850964, 35.208759, 26.383177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002602, 35.577251, 26.348272>,  <33.093586, 35.798347, 26.327330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002602, 35.577251, 26.348272>,  <32.850964, 35.208759, 26.383177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002602, 35.577251, 26.348272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366210, 0.062757, -0.928414,
		-0.849808, 0.383918, 0.361155,
		0.379100, 0.921232, -0.087263,
		33.116333, 35.853622, 26.322094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315739, 35.663174, 26.239828>,  <32.850964, 35.208759, 26.383177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315739, 35.663174, 26.239828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659279, 35.814648, 26.101856>,  <32.865402, 35.905533, 26.019073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659279, 35.814648, 26.101856>,  <32.315739, 35.663174, 26.239828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659279, 35.814648, 26.101856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316898, -0.136244, -0.938623,
		-0.402440, 0.915441, 0.002993,
		0.858847, 0.378688, -0.344932,
		32.916931, 35.928253, 25.998377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129623, 36.094704, 25.780825>,  <32.315739, 35.663174, 26.239828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129623, 36.094704, 25.780825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512009, 36.035328, 25.679550>,  <32.741440, 35.999702, 25.618786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512009, 36.035328, 25.679550>,  <32.129623, 36.094704, 25.780825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512009, 36.035328, 25.679550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278224, -0.183729, -0.942780,
		0.093427, 0.971704, -0.216937,
		0.955962, -0.148438, -0.253186,
		32.798798, 35.990795, 25.603594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336975, 36.542843, 25.224026>,  <32.129623, 36.094704, 25.780825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.336975, 36.542843, 25.224026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645725, 36.289658, 25.200127>,  <32.830975, 36.137749, 25.185787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645725, 36.289658, 25.200127>,  <32.336975, 36.542843, 25.224026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645725, 36.289658, 25.200127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078415, -0.001523, -0.996920,
		0.630918, 0.774184, -0.050809,
		0.771876, -0.632959, -0.059747,
		32.877289, 36.099770, 25.182203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616035, 36.769337, 24.636047>,  <32.336975, 36.542843, 25.224026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616035, 36.769337, 24.636047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.803928, 36.421421, 24.696480>,  <32.916664, 36.212673, 24.732740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.803928, 36.421421, 24.696480>,  <32.616035, 36.769337, 24.636047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803928, 36.421421, 24.696480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004047, -0.173258, -0.984868,
		0.882802, 0.462009, -0.084904,
		0.469728, -0.869787, 0.151083,
		32.944847, 36.160484, 24.741804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159843, 36.804489, 24.234289>,  <32.616035, 36.769337, 24.636047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159843, 36.804489, 24.234289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115078, 36.411781, 24.295742>,  <33.088219, 36.176155, 24.332613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115078, 36.411781, 24.295742>,  <33.159843, 36.804489, 24.234289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115078, 36.411781, 24.295742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088285, -0.163814, -0.982533,
		0.989788, -0.096398, 0.105009,
		-0.111916, -0.981770, 0.153631,
		33.081505, 36.117249, 24.341831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670368, 36.491695, 23.787321>,  <33.159843, 36.804489, 24.234289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670368, 36.491695, 23.787321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379807, 36.226410, 23.859411>,  <33.205467, 36.067238, 23.902664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379807, 36.226410, 23.859411>,  <33.670368, 36.491695, 23.787321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379807, 36.226410, 23.859411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047561, -0.310116, -0.949508,
		0.685617, -0.681158, 0.256814,
		-0.726407, -0.663213, 0.180224,
		33.161884, 36.027447, 23.913479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865021, 35.970814, 23.366348>,  <33.670368, 36.491695, 23.787321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865021, 35.970814, 23.366348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474525, 35.939995, 23.447365>,  <33.240227, 35.921505, 23.495975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474525, 35.939995, 23.447365>,  <33.865021, 35.970814, 23.366348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474525, 35.939995, 23.447365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190679, -0.138672, -0.971808,
		0.102961, -0.987337, 0.120686,
		-0.976238, -0.077046, 0.202542,
		33.181656, 35.916882, 23.508127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650921, 35.421783, 23.047731>,  <33.865021, 35.970814, 23.366348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650921, 35.421783, 23.047731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.904297, 35.504978, 22.749603>,  <34.056320, 35.554893, 22.570726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.904297, 35.504978, 22.749603>,  <33.650921, 35.421783, 23.047731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904297, 35.504978, 22.749603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752245, -0.391246, 0.530146,
		-0.181342, -0.896476, -0.404284,
		0.633438, 0.207983, -0.745318,
		34.094330, 35.567371, 22.526007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112434, 34.956226, 23.120378>,  <33.650921, 35.421783, 23.047731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112434, 34.956226, 23.120378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311268, 35.223938, 22.899483>,  <34.430569, 35.384563, 22.766945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311268, 35.223938, 22.899483>,  <34.112434, 34.956226, 23.120378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311268, 35.223938, 22.899483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867171, -0.405432, 0.289206,
		-0.030337, -0.622648, -0.781914,
		0.497086, 0.669279, -0.552242,
		34.460392, 35.424721, 22.733810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722382, 34.600666, 22.752266>,  <34.112434, 34.956226, 23.120378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722382, 34.600666, 22.752266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820526, 34.987022, 22.785385>,  <34.879414, 35.218838, 22.805256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820526, 34.987022, 22.785385>,  <34.722382, 34.600666, 22.752266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820526, 34.987022, 22.785385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926062, -0.258784, 0.274665,
		0.286722, 0.009284, -0.957969,
		0.245357, 0.965891, 0.082797,
		34.894135, 35.276791, 22.810225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483467, 34.629616, 22.630487>,  <34.722382, 34.600666, 22.752266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483467, 34.629616, 22.630487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376347, 34.969528, 22.812105>,  <35.312077, 35.173477, 22.921076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376347, 34.969528, 22.812105>,  <35.483467, 34.629616, 22.630487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376347, 34.969528, 22.812105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774473, -0.090466, 0.626105,
		0.573128, 0.519315, -0.633906,
		-0.267798, 0.849781, 0.454044,
		35.296005, 35.224464, 22.948318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015247, 35.003529, 22.736776>,  <35.483467, 34.629616, 22.630487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015247, 35.003529, 22.736776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.789707, 35.207054, 22.996986>,  <35.654385, 35.329170, 23.153112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.789707, 35.207054, 22.996986>,  <36.015247, 35.003529, 22.736776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789707, 35.207054, 22.996986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737631, -0.044011, 0.673768,
		0.371452, 0.859752, -0.350501,
		-0.563848, 0.508812, 0.650527,
		35.620552, 35.359699, 23.192144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493565, 35.551540, 23.055277>,  <36.015247, 35.003529, 22.736776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493565, 35.551540, 23.055277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181499, 35.496037, 23.299273>,  <35.994259, 35.462734, 23.445671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181499, 35.496037, 23.299273>,  <36.493565, 35.551540, 23.055277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181499, 35.496037, 23.299273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603995, 0.086821, 0.792245,
		-0.162890, 0.986513, 0.016074,
		-0.780165, -0.138758, 0.609991,
		35.947449, 35.454411, 23.482269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650970, 36.006420, 23.617491>,  <36.493565, 35.551540, 23.055277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650970, 36.006420, 23.617491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397213, 35.738060, 23.771082>,  <36.244957, 35.577045, 23.863237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397213, 35.738060, 23.771082>,  <36.650970, 36.006420, 23.617491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397213, 35.738060, 23.771082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359766, 0.183403, 0.914840,
		-0.684189, 0.718510, 0.125017,
		-0.634393, -0.670900, 0.383978,
		36.206894, 35.536789, 23.886276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210075, 36.321701, 24.161543>,  <36.650970, 36.006420, 23.617491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210075, 36.321701, 24.161543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.194305, 35.932240, 24.251385>,  <36.184845, 35.698563, 24.305290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.194305, 35.932240, 24.251385>,  <36.210075, 36.321701, 24.161543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194305, 35.932240, 24.251385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277933, 0.205224, 0.938422,
		-0.959791, 0.099419, 0.262520,
		-0.039421, -0.973652, 0.224604,
		36.182480, 35.640144, 24.318766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145653, 36.332893, 24.950024>,  <36.210075, 36.321701, 24.161543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145653, 36.332893, 24.950024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217327, 35.944836, 24.884653>,  <36.260330, 35.712002, 24.845430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217327, 35.944836, 24.884653>,  <36.145653, 36.332893, 24.950024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217327, 35.944836, 24.884653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291184, -0.106375, 0.950734,
		-0.939736, -0.217946, 0.263431,
		0.179186, -0.970146, -0.163426,
		36.271084, 35.653793, 24.835625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866089, 36.090168, 25.479340>,  <36.145653, 36.332893, 24.950024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866089, 36.090168, 25.479340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134529, 35.822983, 25.350687>,  <36.295593, 35.662670, 25.273495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134529, 35.822983, 25.350687>,  <35.866089, 36.090168, 25.479340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134529, 35.822983, 25.350687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309031, -0.142304, 0.940345,
		-0.673888, -0.730460, 0.110921,
		0.671100, -0.667965, -0.321632,
		36.335857, 35.622593, 25.254198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760593, 35.545593, 25.942503>,  <35.866089, 36.090168, 25.479340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760593, 35.545593, 25.942503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123631, 35.471600, 25.791739>,  <36.341454, 35.427204, 25.701281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123631, 35.471600, 25.791739>,  <35.760593, 35.545593, 25.942503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123631, 35.471600, 25.791739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303394, -0.331597, 0.893306,
		-0.290223, -0.925109, -0.244834,
		0.907592, -0.184977, -0.376910,
		36.395908, 35.416107, 25.678665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890591, 34.788025, 26.153694>,  <35.760593, 35.545593, 25.942503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890591, 34.788025, 26.153694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235748, 34.964794, 26.055616>,  <36.442844, 35.070854, 25.996769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235748, 34.964794, 26.055616>,  <35.890591, 34.788025, 26.153694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235748, 34.964794, 26.055616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387132, -0.266109, 0.882788,
		0.324876, -0.856674, -0.400706,
		0.862893, 0.441923, -0.245194,
		36.494617, 35.097370, 25.982058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541611, 34.287460, 26.225473>,  <35.890591, 34.788025, 26.153694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541611, 34.287460, 26.225473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702240, 34.652203, 26.259531>,  <36.798618, 34.871048, 26.279964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702240, 34.652203, 26.259531>,  <36.541611, 34.287460, 26.225473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702240, 34.652203, 26.259531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489882, -0.292424, 0.821282,
		0.773792, -0.288097, -0.564133,
		0.401575, 0.911860, 0.085142,
		36.822712, 34.925762, 26.285074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201572, 34.230171, 26.497946>,  <36.541611, 34.287460, 26.225473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201572, 34.230171, 26.497946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076561, 34.603611, 26.568048>,  <37.001553, 34.827675, 26.610109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076561, 34.603611, 26.568048>,  <37.201572, 34.230171, 26.497946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076561, 34.603611, 26.568048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350364, -0.058195, 0.934804,
		0.882932, 0.353559, -0.308912,
		-0.312531, 0.933600, 0.175257,
		36.982803, 34.883690, 26.620625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759777, 34.555305, 26.812834>,  <37.201572, 34.230171, 26.497946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759777, 34.555305, 26.812834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419464, 34.736385, 26.919596>,  <37.215275, 34.845032, 26.983652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419464, 34.736385, 26.919596>,  <37.759777, 34.555305, 26.812834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419464, 34.736385, 26.919596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249533, -0.098981, 0.963294,
		0.462498, 0.886154, -0.028751,
		-0.850781, 0.452696, 0.266903,
		37.164230, 34.872192, 26.999666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016804, 34.978661, 27.320200>,  <37.759777, 34.555305, 26.812834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016804, 34.978661, 27.320200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619026, 34.984692, 27.361891>,  <37.380360, 34.988312, 27.386906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619026, 34.984692, 27.361891>,  <38.016804, 34.978661, 27.320200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619026, 34.984692, 27.361891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103640, -0.035477, 0.993982,
		0.018684, 0.999257, 0.033717,
		-0.994439, 0.015078, 0.104226,
		37.320694, 34.989216, 27.393158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922756, 35.516850, 27.871878>,  <38.016804, 34.978661, 27.320200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922756, 35.516850, 27.871878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596268, 35.287018, 27.847736>,  <37.400375, 35.149120, 27.833252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596268, 35.287018, 27.847736>,  <37.922756, 35.516850, 27.871878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596268, 35.287018, 27.847736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063789, -0.014202, 0.997862,
		-0.574206, 0.818327, -0.025060,
		-0.816222, -0.574577, -0.060355,
		37.351402, 35.114643, 27.829630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371532, 35.807598, 28.255610>,  <37.922756, 35.516850, 27.871878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371532, 35.807598, 28.255610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214237, 35.439896, 28.262938>,  <37.119862, 35.219273, 28.267334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214237, 35.439896, 28.262938>,  <37.371532, 35.807598, 28.255610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214237, 35.439896, 28.262938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129208, 0.074976, 0.988779,
		-0.910315, 0.386455, -0.148258,
		-0.393234, -0.919256, 0.018318,
		37.096268, 35.164120, 28.268433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959652, 35.850754, 28.788857>,  <37.371532, 35.807598, 28.255610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959652, 35.850754, 28.788857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990791, 35.455273, 28.737619>,  <37.009476, 35.217983, 28.706877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990791, 35.455273, 28.737619>,  <36.959652, 35.850754, 28.788857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990791, 35.455273, 28.737619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098554, -0.135484, 0.985866,
		-0.992082, -0.064126, -0.107988,
		0.077850, -0.988702, -0.128091,
		37.014145, 35.158661, 28.699192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459492, 35.570187, 29.180536>,  <36.959652, 35.850754, 28.788857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459492, 35.570187, 29.180536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733093, 35.283718, 29.125057>,  <36.897255, 35.111835, 29.091770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733093, 35.283718, 29.125057>,  <36.459492, 35.570187, 29.180536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733093, 35.283718, 29.125057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015988, -0.175366, 0.984373,
		-0.729303, -0.675532, -0.108501,
		0.684004, -0.716172, -0.138695,
		36.938293, 35.068867, 29.083448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185047, 35.045605, 29.573700>,  <36.459492, 35.570187, 29.180536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185047, 35.045605, 29.573700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577427, 34.980862, 29.530714>,  <36.812855, 34.942017, 29.504923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577427, 34.980862, 29.530714>,  <36.185047, 35.045605, 29.573700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577427, 34.980862, 29.530714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109418, 0.003185, 0.993991,
		-0.160544, -0.986809, 0.020835,
		0.980945, -0.161859, -0.107463,
		36.871712, 34.932304, 29.498476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285419, 34.376999, 29.905392>,  <36.185047, 35.045605, 29.573700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285419, 34.376999, 29.905392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.664009, 34.501614, 29.871624>,  <36.891163, 34.576382, 29.851362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.664009, 34.501614, 29.871624>,  <36.285419, 34.376999, 29.905392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664009, 34.501614, 29.871624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078003, 0.033029, 0.996406,
		0.313207, -0.949659, 0.006960,
		0.946476, 0.311539, -0.084421,
		36.947952, 34.595074, 29.846298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633747, 33.947216, 30.421003>,  <36.285419, 34.376999, 29.905392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633747, 33.947216, 30.421003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894234, 34.236244, 30.328217>,  <37.050526, 34.409660, 30.272545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894234, 34.236244, 30.328217>,  <36.633747, 33.947216, 30.421003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894234, 34.236244, 30.328217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434307, -0.104189, 0.894719,
		0.622326, -0.683405, -0.381666,
		0.651221, 0.722567, -0.231968,
		37.089600, 34.453014, 30.258627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313244, 33.728954, 30.510052>,  <36.633747, 33.947216, 30.421003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313244, 33.728954, 30.510052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341557, 34.125683, 30.552542>,  <37.358543, 34.363720, 30.578035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341557, 34.125683, 30.552542>,  <37.313244, 33.728954, 30.510052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341557, 34.125683, 30.552542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603974, -0.127367, 0.786761,
		0.793855, 0.008467, -0.608048,
		0.070784, 0.991819, 0.106224,
		37.362793, 34.423229, 30.584410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087906, 33.857674, 30.599043>,  <37.313244, 33.728954, 30.510052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087906, 33.857674, 30.599043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.894150, 34.184429, 30.724298>,  <37.777897, 34.380482, 30.799452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.894150, 34.184429, 30.724298>,  <38.087906, 33.857674, 30.599043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894150, 34.184429, 30.724298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540575, -0.001950, 0.841294,
		0.687855, 0.576790, -0.440645,
		-0.484391, 0.816890, 0.313140,
		37.748833, 34.429497, 30.818241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626823, 34.170311, 30.861166>,  <38.087906, 33.857674, 30.599043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626823, 34.170311, 30.861166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.300201, 34.337608, 31.020319>,  <38.104229, 34.437984, 31.115810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.300201, 34.337608, 31.020319>,  <38.626823, 34.170311, 30.861166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300201, 34.337608, 31.020319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485635, 0.125085, 0.865166,
		0.312079, 0.899682, -0.305252,
		-0.816557, 0.418241, 0.397881,
		38.055233, 34.463081, 31.139683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805508, 34.845078, 31.066071>,  <38.626823, 34.170311, 30.861166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805508, 34.845078, 31.066071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492966, 34.705288, 31.272896>,  <38.305443, 34.621414, 31.396992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492966, 34.705288, 31.272896>,  <38.805508, 34.845078, 31.066071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492966, 34.705288, 31.272896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492403, 0.163819, 0.854812,
		-0.383442, 0.922512, 0.044083,
		-0.781353, -0.349477, 0.517063,
		38.258560, 34.600445, 31.428015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831497, 35.264141, 31.662708>,  <38.805508, 34.845078, 31.066071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831497, 35.264141, 31.662708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582191, 34.976307, 31.785175>,  <38.432610, 34.803604, 31.858656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582191, 34.976307, 31.785175>,  <38.831497, 35.264141, 31.662708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582191, 34.976307, 31.785175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401279, 0.041750, 0.915004,
		-0.671210, 0.693143, 0.262735,
		-0.623260, -0.719590, 0.306167,
		38.395214, 34.760429, 31.877026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574242, 35.543644, 32.245399>,  <38.831497, 35.264141, 31.662708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574242, 35.543644, 32.245399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483196, 35.155579, 32.278816>,  <38.428570, 34.922741, 32.298866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483196, 35.155579, 32.278816>,  <38.574242, 35.543644, 32.245399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483196, 35.155579, 32.278816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459497, -0.031371, 0.887625,
		-0.858519, 0.240420, 0.452927,
		-0.227611, -0.970162, 0.083540,
		38.414913, 34.864529, 32.303879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326820, 35.389469, 32.937870>,  <38.574242, 35.543644, 32.245399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326820, 35.389469, 32.937870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.432419, 35.023048, 32.817101>,  <38.495777, 34.803196, 32.744640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.432419, 35.023048, 32.817101>,  <38.326820, 35.389469, 32.937870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432419, 35.023048, 32.817101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326492, -0.209675, 0.921650,
		-0.907585, -0.341883, 0.243731,
		0.263993, -0.916052, -0.301920,
		38.511616, 34.748234, 32.726524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149681, 35.034817, 33.559601>,  <38.326820, 35.389469, 32.937870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149681, 35.034817, 33.559601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393639, 34.815731, 33.330502>,  <38.540012, 34.684280, 33.193043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393639, 34.815731, 33.330502>,  <38.149681, 35.034817, 33.559601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393639, 34.815731, 33.330502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490520, -0.306734, 0.815662,
		-0.622433, -0.778409, 0.081592,
		0.609892, -0.547717, -0.572746,
		38.576607, 34.651417, 33.158676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257114, 34.364609, 33.915775>,  <38.149681, 35.034817, 33.559601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257114, 34.364609, 33.915775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569088, 34.414463, 33.670444>,  <38.756271, 34.444378, 33.523247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569088, 34.414463, 33.670444>,  <38.257114, 34.364609, 33.915775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569088, 34.414463, 33.670444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625847, -0.148279, 0.765721,
		0.004496, -0.981059, -0.193654,
		0.779932, 0.124640, -0.613327,
		38.803066, 34.451855, 33.486446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604874, 33.788960, 34.045643>,  <38.257114, 34.364609, 33.915775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604874, 33.788960, 34.045643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882397, 34.037125, 33.899372>,  <39.048912, 34.186024, 33.811611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882397, 34.037125, 33.899372>,  <38.604874, 33.788960, 34.045643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882397, 34.037125, 33.899372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603012, -0.222885, 0.765963,
		0.393711, -0.751937, -0.528756,
		0.693807, 0.620414, -0.365675,
		39.090538, 34.223248, 33.789669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230671, 33.404331, 33.892502>,  <38.604874, 33.788960, 34.045643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230671, 33.404331, 33.892502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360939, 33.780773, 33.928848>,  <39.439098, 34.006638, 33.950657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360939, 33.780773, 33.928848>,  <39.230671, 33.404331, 33.892502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360939, 33.780773, 33.928848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544796, -0.265336, 0.795484,
		0.772747, -0.209558, -0.599123,
		0.325669, 0.941107, 0.090871,
		39.458641, 34.063107, 33.956108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892452, 33.406937, 34.076893>,  <39.230671, 33.404331, 33.892502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892452, 33.406937, 34.076893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840851, 33.796181, 34.153225>,  <39.809891, 34.029728, 34.199024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840851, 33.796181, 34.153225>,  <39.892452, 33.406937, 34.076893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840851, 33.796181, 34.153225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720921, -0.040100, 0.691856,
		0.680904, 0.226826, -0.696362,
		-0.129006, 0.973109, 0.190828,
		39.802151, 34.088112, 34.210472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609074, 33.796898, 34.047989>,  <39.892452, 33.406937, 34.076893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.609074, 33.796898, 34.047989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.358295, 33.996258, 34.287502>,  <40.207829, 34.115875, 34.431210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.358295, 33.996258, 34.287502>,  <40.609074, 33.796898, 34.047989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.358295, 33.996258, 34.287502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668122, -0.051346, 0.742278,
		0.400697, 0.865425, -0.300801,
		-0.626941, 0.498400, 0.598784,
		40.170212, 34.145779, 34.467136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014839, 34.254131, 34.457924>,  <40.609074, 33.796898, 34.047989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014839, 34.254131, 34.457924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690220, 34.234341, 34.690796>,  <40.495449, 34.222466, 34.830521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690220, 34.234341, 34.690796>,  <41.014839, 34.254131, 34.457924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690220, 34.234341, 34.690796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551427, 0.264562, 0.791161,
		-0.193170, 0.963098, -0.187421,
		-0.811550, -0.049480, 0.582184,
		40.446754, 34.219498, 34.865452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061901, 34.843216, 34.970699>,  <41.014839, 34.254131, 34.457924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.061901, 34.843216, 34.970699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824615, 34.556644, 35.117573>,  <40.682243, 34.384701, 35.205696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824615, 34.556644, 35.117573>,  <41.061901, 34.843216, 34.970699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824615, 34.556644, 35.117573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502959, 0.026308, 0.863910,
		-0.628590, 0.697163, 0.344729,
		-0.593217, -0.716430, 0.367181,
		40.646652, 34.341717, 35.227726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971985, 34.980843, 35.717548>,  <41.061901, 34.843216, 34.970699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.971985, 34.980843, 35.717548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.878647, 34.593239, 35.685135>,  <40.822643, 34.360676, 35.665688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.878647, 34.593239, 35.685135>,  <40.971985, 34.980843, 35.717548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.878647, 34.593239, 35.685135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568303, -0.203522, 0.797252,
		-0.789039, 0.139982, 0.598182,
		-0.233344, -0.969012, -0.081035,
		40.808643, 34.302536, 35.660824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066463, 34.910606, 36.359619>,  <40.971985, 34.980843, 35.717548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.066463, 34.910606, 36.359619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.034649, 34.549011, 36.191586>,  <41.015560, 34.332054, 36.090763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.034649, 34.549011, 36.191586>,  <41.066463, 34.910606, 36.359619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.034649, 34.549011, 36.191586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503375, -0.400167, 0.765820,
		-0.860399, -0.150550, 0.486875,
		-0.079537, -0.903992, -0.420086,
		41.010788, 34.277813, 36.065559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898254, 34.444748, 36.907139>,  <41.066463, 34.910606, 36.359619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.898254, 34.444748, 36.907139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.056133, 34.194153, 36.638298>,  <41.150860, 34.043797, 36.476994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.056133, 34.194153, 36.638298>,  <40.898254, 34.444748, 36.907139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.056133, 34.194153, 36.638298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539872, -0.433769, 0.721375,
		-0.743472, -0.647577, 0.167015,
		0.394700, -0.626489, -0.672104,
		41.174541, 34.006207, 36.436668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917633, 33.833126, 37.234596>,  <40.898254, 34.444748, 36.907139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917633, 33.833126, 37.234596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165195, 33.796257, 36.922581>,  <41.313732, 33.774136, 36.735371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165195, 33.796257, 36.922581>,  <40.917633, 33.833126, 37.234596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.165195, 33.796257, 36.922581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622510, -0.548047, 0.558683,
		-0.478993, -0.831354, -0.281810,
		0.618908, -0.092175, -0.780036,
		41.350868, 33.768604, 36.688568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074718, 33.144966, 37.186398>,  <40.917633, 33.833126, 37.234596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074718, 33.144966, 37.186398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379742, 33.342949, 37.019775>,  <41.562756, 33.461739, 36.919800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379742, 33.342949, 37.019775>,  <41.074718, 33.144966, 37.186398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379742, 33.342949, 37.019775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640984, -0.491035, 0.589936,
		0.087451, -0.716867, -0.691704,
		0.762556, 0.494962, -0.416558,
		41.608509, 33.491436, 36.894810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.504494, 32.516125, 36.971291>,  <41.074718, 33.144966, 37.186398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.504494, 32.516125, 36.971291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.735775, 32.842091, 36.987236>,  <41.874546, 33.037670, 36.996803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.735775, 32.842091, 36.987236>,  <41.504494, 32.516125, 36.971291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.735775, 32.842091, 36.987236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721119, -0.533288, 0.442258,
		0.381663, -0.226969, -0.896001,
		0.578205, 0.814917, 0.039865,
		41.909237, 33.086567, 36.999195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.209671, 32.244343, 37.035164>,  <41.504494, 32.516125, 36.971291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.209671, 32.244343, 37.035164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.270641, 32.635540, 37.092144>,  <42.307224, 32.870258, 37.126331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.270641, 32.635540, 37.092144>,  <42.209671, 32.244343, 37.035164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.270641, 32.635540, 37.092144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902308, -0.196519, 0.383695,
		0.403246, 0.070053, -0.912406,
		0.152426, 0.977994, 0.142455,
		42.316368, 32.928940, 37.134880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.794636, 32.423378, 36.738850>,  <42.209671, 32.244343, 37.035164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.794636, 32.423378, 36.738850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.743893, 32.676769, 37.044167>,  <42.713448, 32.828804, 37.227356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.743893, 32.676769, 37.044167>,  <42.794636, 32.423378, 36.738850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.743893, 32.676769, 37.044167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879606, -0.283829, 0.381752,
		0.458476, 0.719825, -0.521203,
		-0.126862, 0.633477, 0.763291,
		42.705833, 32.866814, 37.273155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.481792, 32.667984, 36.861481>,  <42.794636, 32.423378, 36.738850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.481792, 32.667984, 36.861481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.290112, 32.754417, 37.201756>,  <43.175102, 32.806278, 37.405922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.290112, 32.754417, 37.201756>,  <43.481792, 32.667984, 36.861481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.290112, 32.754417, 37.201756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788962, -0.318641, 0.525364,
		0.384589, 0.922916, -0.017791,
		-0.479198, 0.216086, 0.850692,
		43.146351, 32.819244, 37.456963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.979794, 32.749928, 37.362270>,  <43.481792, 32.667984, 36.861481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.979794, 32.749928, 37.362270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.667973, 32.693233, 37.606308>,  <43.480881, 32.659218, 37.752731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.667973, 32.693233, 37.606308>,  <43.979794, 32.749928, 37.362270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.667973, 32.693233, 37.606308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606795, -0.412312, 0.679557,
		0.155234, 0.899951, 0.407421,
		-0.779552, -0.141731, 0.610091,
		43.434109, 32.650715, 37.789333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.253918, 32.901417, 38.037037>,  <43.979794, 32.749928, 37.362270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.253918, 32.901417, 38.037037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.938656, 32.665260, 38.106613>,  <43.749500, 32.523567, 38.148361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.938656, 32.665260, 38.106613>,  <44.253918, 32.901417, 38.037037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.938656, 32.665260, 38.106613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399113, -0.275104, 0.874658,
		-0.468537, 0.758786, 0.452457,
		-0.788151, -0.590391, 0.173945,
		43.702209, 32.488144, 38.158798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.936474, 33.165688, 38.638035>,  <44.253918, 32.901417, 38.037037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.936474, 33.165688, 38.638035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.888325, 32.773994, 38.572777>,  <43.859436, 32.538979, 38.533623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.888325, 32.773994, 38.572777>,  <43.936474, 33.165688, 38.638035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.888325, 32.773994, 38.572777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530870, -0.202366, 0.822937,
		-0.838861, 0.012447, 0.544204,
		-0.120371, -0.979231, -0.163149,
		43.852215, 32.480225, 38.523830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.728546, 32.964462, 39.336277>,  <43.936474, 33.165688, 38.638035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.728546, 32.964462, 39.336277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.784470, 32.615891, 39.148209>,  <43.818024, 32.406746, 39.035366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.784470, 32.615891, 39.148209>,  <43.728546, 32.964462, 39.336277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.784470, 32.615891, 39.148209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286675, -0.418879, 0.861602,
		-0.947772, -0.255247, 0.191255,
		0.139808, -0.871430, -0.470175,
		43.826412, 32.354462, 39.007156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.931389, 32.571430, 39.919277>,  <43.728546, 32.964462, 39.336277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.931389, 32.571430, 39.919277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.965435, 32.328922, 39.603001>,  <43.985863, 32.183418, 39.413235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.965435, 32.328922, 39.603001>,  <43.931389, 32.571430, 39.919277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.965435, 32.328922, 39.603001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533697, -0.642388, 0.550005,
		-0.841382, -0.468802, 0.268889,
		0.085112, -0.606270, -0.790691,
		43.990967, 32.147041, 39.365791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.599987, 31.904781, 40.028263>,  <43.931389, 32.571430, 39.919277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.599987, 31.904781, 40.028263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.907063, 31.866158, 39.774860>,  <44.091309, 31.842983, 39.622818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.907063, 31.866158, 39.774860>,  <43.599987, 31.904781, 40.028263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.907063, 31.866158, 39.774860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458128, -0.608540, 0.647918,
		-0.448076, -0.787626, -0.422933,
		0.767690, -0.096559, -0.633506,
		44.137371, 31.837189, 39.584808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.715832, 31.214100, 39.860088>,  <43.599987, 31.904781, 40.028263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.715832, 31.214100, 39.860088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.057613, 31.418539, 39.822807>,  <44.262684, 31.541203, 39.800438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.057613, 31.418539, 39.822807>,  <43.715832, 31.214100, 39.860088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.057613, 31.418539, 39.822807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417221, -0.568167, 0.709304,
		0.309569, -0.644954, -0.698714,
		0.854455, 0.511097, -0.093202,
		44.313950, 31.571869, 39.794846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.305618, 30.750814, 39.770279>,  <43.715832, 31.214100, 39.860088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.305618, 30.750814, 39.770279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.414391, 31.095385, 39.941860>,  <44.479652, 31.302128, 40.044807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.414391, 31.095385, 39.941860>,  <44.305618, 30.750814, 39.770279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.414391, 31.095385, 39.941860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367185, -0.504903, 0.781183,
		0.889512, -0.054920, -0.453600,
		0.271926, 0.861427, 0.428952,
		44.495968, 31.353813, 40.070545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.992821, 30.623863, 40.165646>,  <44.305618, 30.750814, 39.770279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.992821, 30.623863, 40.165646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.843086, 30.966101, 40.308662>,  <44.753246, 31.171442, 40.394474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.843086, 30.966101, 40.308662>,  <44.992821, 30.623863, 40.165646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.843086, 30.966101, 40.308662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303853, -0.251113, 0.919030,
		0.876099, 0.452663, -0.165974,
		-0.374332, 0.855593, 0.357543,
		44.730785, 31.222778, 40.415924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.575684, 30.756416, 40.680035>,  <44.992821, 30.623863, 40.165646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.575684, 30.756416, 40.680035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.234699, 30.943813, 40.772831>,  <45.030109, 31.056252, 40.828510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.234699, 30.943813, 40.772831>,  <45.575684, 30.756416, 40.680035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.234699, 30.943813, 40.772831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218698, -0.083484, 0.972215,
		0.474843, 0.879514, -0.031291,
		-0.852464, 0.468492, 0.231989,
		44.978958, 31.084362, 40.842426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.780998, 31.214029, 41.194328>,  <45.575684, 30.756416, 40.680035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.780998, 31.214029, 41.194328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.386143, 31.163218, 41.233158>,  <45.149231, 31.132730, 41.256454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.386143, 31.163218, 41.233158>,  <45.780998, 31.214029, 41.194328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.386143, 31.163218, 41.233158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111783, -0.114302, 0.987137,
		-0.114302, 0.985291, 0.127032,
		-0.987137, -0.127032, 0.097074,
		45.090000, 31.125109, 41.262280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.518478, 31.553215, 41.852356>,  <45.780998, 31.214029, 41.194328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.518478, 31.553215, 41.852356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.203934, 31.320856, 41.768265>,  <45.015209, 31.181440, 41.717812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.203934, 31.320856, 41.768265>,  <45.518478, 31.553215, 41.852356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.203934, 31.320856, 41.768265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075768, -0.247045, 0.966037,
		-0.613105, 0.775581, 0.150252,
		-0.786359, -0.580898, -0.210229,
		44.968025, 31.146587, 41.705196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.014637, 31.720524, 42.346676>,  <45.518478, 31.553215, 41.852356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.014637, 31.720524, 42.346676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.936501, 31.346855, 42.227238>,  <44.889618, 31.122654, 42.155575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.936501, 31.346855, 42.227238>,  <45.014637, 31.720524, 42.346676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.936501, 31.346855, 42.227238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117067, -0.280073, 0.952814,
		-0.973722, 0.221083, -0.054650,
		-0.195345, -0.934174, -0.298595,
		44.877895, 31.066603, 42.137661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.538544, 31.192715, 42.615574>,  <45.014637, 31.720524, 42.346676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.538544, 31.192715, 42.615574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.375019, 31.291637, 42.264187>,  <44.276905, 31.350990, 42.053352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.375019, 31.291637, 42.264187>,  <44.538544, 31.192715, 42.615574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.375019, 31.291637, 42.264187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807181, -0.351160, -0.474495,
		-0.425830, -0.903065, -0.056062,
		-0.408813, 0.247307, -0.878471,
		44.252377, 31.365829, 42.000645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.579189, 30.742710, 43.164639>,  <44.538544, 31.192715, 42.615574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.579189, 30.742710, 43.164639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.185276, 30.800112, 43.203838>,  <43.948929, 30.834553, 43.227360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.185276, 30.800112, 43.203838>,  <44.579189, 30.742710, 43.164639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.185276, 30.800112, 43.203838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164250, -0.584484, -0.794607,
		-0.056749, -0.798614, 0.599162,
		-0.984785, 0.143506, 0.098004,
		43.889839, 30.843164, 43.233238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.178478, 30.492842, 43.315331>,  <44.579189, 30.742710, 43.164639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.178478, 30.492842, 43.315331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.848770, 30.296440, 43.202557>,  <44.650944, 30.178598, 43.134892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.848770, 30.296440, 43.202557>,  <45.178478, 30.492842, 43.315331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.848770, 30.296440, 43.202557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087761, 0.381136, -0.920344,
		0.559351, -0.783357, -0.271069,
		-0.824272, -0.491006, -0.281937,
		44.601490, 30.149137, 43.117977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.180389, 30.064936, 42.714470>,  <45.178478, 30.492842, 43.315331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.180389, 30.064936, 42.714470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.814045, 30.218725, 42.760754>,  <44.594238, 30.310999, 42.788525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.814045, 30.218725, 42.760754>,  <45.180389, 30.064936, 42.714470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.814045, 30.218725, 42.760754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011757, 0.262380, -0.964893,
		-0.401334, -0.885064, -0.235783,
		-0.915856, 0.384472, 0.115707,
		44.539288, 30.334066, 42.795467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.733349, 29.719204, 42.264107>,  <45.180389, 30.064936, 42.714470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.733349, 29.719204, 42.264107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.624229, 30.102814, 42.294704>,  <44.558758, 30.332979, 42.313061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.624229, 30.102814, 42.294704>,  <44.733349, 29.719204, 42.264107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.624229, 30.102814, 42.294704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018672, 0.084768, -0.996225,
		-0.961889, -0.270342, -0.041032,
		-0.272800, 0.959025, 0.076490,
		44.542389, 30.390522, 42.317650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.389057, 29.887510, 41.615429>,  <44.733349, 29.719204, 42.264107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.389057, 29.887510, 41.615429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.478561, 30.249842, 41.759323>,  <44.532265, 30.467239, 41.845661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.478561, 30.249842, 41.759323>,  <44.389057, 29.887510, 41.615429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.478561, 30.249842, 41.759323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004070, 0.368224, -0.929728,
		-0.974636, 0.209497, 0.078706,
		0.223757, 0.905827, 0.359737,
		44.545689, 30.521589, 41.867245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.959579, 30.400700, 41.335033>,  <44.389057, 29.887510, 41.615429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.959579, 30.400700, 41.335033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.252670, 30.640135, 41.464527>,  <44.428524, 30.783796, 41.542225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.252670, 30.640135, 41.464527>,  <43.959579, 30.400700, 41.335033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.252670, 30.640135, 41.464527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058037, 0.419018, -0.906121,
		-0.678042, 0.682729, 0.272286,
		0.732728, 0.598586, 0.323735,
		44.472488, 30.819710, 41.561649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.687611, 31.094765, 41.289799>,  <43.959579, 30.400700, 41.335033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.687611, 31.094765, 41.289799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.086971, 31.116772, 41.294922>,  <44.326588, 31.129976, 41.297997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.086971, 31.116772, 41.294922>,  <43.687611, 31.094765, 41.289799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.086971, 31.116772, 41.294922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013840, 0.458016, -0.888836,
		-0.054766, 0.887240, 0.458046,
		0.998403, 0.055018, 0.012804,
		44.386494, 31.133278, 41.298763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.852669, 31.702669, 41.076374>,  <43.687611, 31.094765, 41.289799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.852669, 31.702669, 41.076374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.200817, 31.517061, 41.010479>,  <44.409706, 31.405697, 40.970943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.200817, 31.517061, 41.010479>,  <43.852669, 31.702669, 41.076374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.200817, 31.517061, 41.010479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023314, 0.373026, -0.927528,
		0.491841, 0.803455, 0.335489,
		0.870373, -0.464018, -0.164738,
		44.461929, 31.377855, 40.961060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.443745, 32.280792, 41.046490>,  <43.852669, 31.702669, 41.076374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.443745, 32.280792, 41.046490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.503784, 31.943081, 40.840706>,  <44.539806, 31.740454, 40.717236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.503784, 31.943081, 40.840706>,  <44.443745, 32.280792, 41.046490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.503784, 31.943081, 40.840706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020290, 0.517611, -0.855376,
		0.988463, 0.138828, 0.060561,
		0.150097, -0.844278, -0.514456,
		44.548813, 31.689796, 40.686371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.915028, 32.471729, 40.569855>,  <44.443745, 32.280792, 41.046490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.915028, 32.471729, 40.569855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.751381, 32.140797, 40.415897>,  <44.653194, 31.942236, 40.323524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.751381, 32.140797, 40.415897>,  <44.915028, 32.471729, 40.569855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.751381, 32.140797, 40.415897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000949, 0.421419, -0.906866,
		0.912483, -0.371377, -0.171624,
		-0.409114, -0.827336, -0.384890,
		44.628647, 31.892595, 40.300430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.320854, 32.046795, 40.069969>,  <44.915028, 32.471729, 40.569855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.320854, 32.046795, 40.069969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.933212, 32.022259, 39.974415>,  <44.700626, 32.007538, 39.917080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.933212, 32.022259, 39.974415>,  <45.320854, 32.046795, 40.069969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.933212, 32.022259, 39.974415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198532, 0.380670, -0.903147,
		0.146340, -0.922674, -0.356732,
		-0.969108, -0.061344, -0.238888,
		44.642479, 32.003857, 39.902748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.343616, 32.086105, 39.196934>,  <45.320854, 32.046795, 40.069969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.343616, 32.086105, 39.196934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.048378, 31.897169, 39.389645>,  <44.871235, 31.783806, 39.505272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.048378, 31.897169, 39.389645>,  <45.343616, 32.086105, 39.196934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.048378, 31.897169, 39.389645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630384, 0.228271, -0.741963,
		0.240485, -0.851343, -0.466243,
		-0.738094, -0.472343, 0.481777,
		44.826950, 31.755466, 39.534176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.034840, 31.759132, 38.679871>,  <45.343616, 32.086105, 39.196934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.034840, 31.759132, 38.679871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.759964, 31.769402, 38.970280>,  <44.595039, 31.775562, 39.144524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.759964, 31.769402, 38.970280>,  <45.034840, 31.759132, 38.679871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.759964, 31.769402, 38.970280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666163, 0.376424, -0.643842,
		-0.289822, -0.926092, -0.241573,
		-0.687190, 0.025673, 0.726024,
		44.553806, 31.777103, 39.188087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.573597, 31.313576, 38.602165>,  <45.034840, 31.759132, 38.679871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.573597, 31.313576, 38.602165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.342773, 31.574661, 38.798519>,  <44.204281, 31.731314, 38.916332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.342773, 31.574661, 38.798519>,  <44.573597, 31.313576, 38.602165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.342773, 31.574661, 38.798519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641936, 0.009077, -0.766704,
		-0.504896, -0.757549, 0.413764,
		-0.577060, 0.652716, 0.490881,
		44.169655, 31.770475, 38.945782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.853916, 31.130610, 38.591087>,  <44.573597, 31.313576, 38.602165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.853916, 31.130610, 38.591087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.841656, 31.515909, 38.697826>,  <43.834297, 31.747089, 38.761871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.841656, 31.515909, 38.697826>,  <43.853916, 31.130610, 38.591087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.841656, 31.515909, 38.697826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701453, 0.169461, -0.692276,
		-0.712056, -0.208404, 0.670480,
		-0.030653, 0.963250, 0.266851,
		43.832458, 31.804884, 38.777882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.288864, 31.344027, 38.280315>,  <43.853916, 31.130610, 38.591087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.288864, 31.344027, 38.280315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.402500, 31.694023, 38.437126>,  <43.470680, 31.904020, 38.531212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.402500, 31.694023, 38.437126>,  <43.288864, 31.344027, 38.280315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.402500, 31.694023, 38.437126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561615, 0.483247, -0.671610,
		-0.777099, -0.029372, 0.628693,
		0.284087, 0.874991, 0.392027,
		43.487728, 31.956520, 38.554733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.746658, 31.736755, 38.455585>,  <43.288864, 31.344027, 38.280315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.746658, 31.736755, 38.455585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.015347, 32.029469, 38.409470>,  <43.176559, 32.205097, 38.381802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.015347, 32.029469, 38.409470>,  <42.746658, 31.736755, 38.455585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.015347, 32.029469, 38.409470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668689, 0.531963, -0.519490,
		-0.318824, 0.426042, 0.846664,
		0.671718, 0.731781, -0.115286,
		43.216862, 32.249004, 38.374882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.425613, 32.394093, 38.632599>,  <42.746658, 31.736755, 38.455585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.425613, 32.394093, 38.632599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.725681, 32.480560, 38.382633>,  <42.905720, 32.532440, 38.232655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.725681, 32.480560, 38.382633>,  <42.425613, 32.394093, 38.632599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.725681, 32.480560, 38.382633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577341, 0.674854, -0.459618,
		0.322375, 0.705581, 0.631054,
		0.750167, 0.216165, -0.624917,
		42.950733, 32.545410, 38.195160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.451973, 33.105495, 38.534931>,  <42.425613, 32.394093, 38.632599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.451973, 33.105495, 38.534931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.646252, 33.007553, 38.199276>,  <42.762817, 32.948788, 37.997883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.646252, 33.007553, 38.199276>,  <42.451973, 33.105495, 38.534931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.646252, 33.007553, 38.199276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428025, 0.770390, -0.472540,
		0.762166, 0.588681, 0.269367,
		0.485693, -0.244858, -0.839135,
		42.791958, 32.934097, 37.947536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.591503, 33.765606, 38.178059>,  <42.451973, 33.105495, 38.534931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.591503, 33.765606, 38.178059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.604996, 33.481472, 37.896835>,  <42.613091, 33.310993, 37.728100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.604996, 33.481472, 37.896835>,  <42.591503, 33.765606, 38.178059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.604996, 33.481472, 37.896835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566081, 0.566159, -0.599179,
		0.823659, 0.418202, -0.383006,
		0.033736, -0.710332, -0.703059,
		42.615116, 33.268372, 37.685917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.452049, 34.140739, 37.539509>,  <42.591503, 33.765606, 38.178059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.452049, 34.140739, 37.539509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.428833, 33.761761, 37.413662>,  <42.414902, 33.534374, 37.338154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.428833, 33.761761, 37.413662>,  <42.452049, 34.140739, 37.539509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.428833, 33.761761, 37.413662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659059, 0.273075, -0.700765,
		0.749849, 0.166675, -0.640271,
		-0.058042, -0.947444, -0.314613,
		42.411419, 33.477528, 37.319279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.576969, 34.291985, 36.872375>,  <42.452049, 34.140739, 37.539509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.576969, 34.291985, 36.872375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.402679, 33.934933, 36.918617>,  <42.298107, 33.720703, 36.946362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.402679, 33.934933, 36.918617>,  <42.576969, 34.291985, 36.872375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.402679, 33.934933, 36.918617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524161, 0.147230, -0.838796,
		0.731710, -0.426079, -0.532031,
		-0.435725, -0.892625, 0.115604,
		42.271961, 33.667145, 36.953300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.575085, 34.030411, 36.214405>,  <42.576969, 34.291985, 36.872375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.575085, 34.030411, 36.214405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275024, 33.863705, 36.419765>,  <42.094990, 33.763683, 36.542984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275024, 33.863705, 36.419765>,  <42.575085, 34.030411, 36.214405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.275024, 33.863705, 36.419765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658499, 0.399822, -0.637591,
		0.060453, -0.816365, -0.574363,
		-0.750150, -0.416762, 0.513405,
		42.049980, 33.738674, 36.573788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.237232, 33.709751, 35.721062>,  <42.575085, 34.030411, 36.214405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.237232, 33.709751, 35.721062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972023, 33.724411, 36.020142>,  <41.812897, 33.733208, 36.199589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972023, 33.724411, 36.020142>,  <42.237232, 33.709751, 35.721062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.972023, 33.724411, 36.020142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712690, 0.274738, -0.645440,
		-0.229076, -0.960821, -0.156038,
		-0.663021, 0.036648, 0.747703,
		41.773117, 33.735405, 36.244453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.666748, 33.251507, 35.510231>,  <42.237232, 33.709751, 35.721062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.666748, 33.251507, 35.510231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.530270, 33.505081, 35.787853>,  <41.448383, 33.657227, 35.954426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.530270, 33.505081, 35.787853>,  <41.666748, 33.251507, 35.510231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.530270, 33.505081, 35.787853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803629, 0.186298, -0.565220,
		-0.487613, -0.750614, 0.445884,
		-0.341195, 0.633934, 0.694056,
		41.427910, 33.695263, 35.996071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.962551, 33.820415, 35.011993>,  <41.666748, 33.251507, 35.510231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.962551, 33.820415, 35.011993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.843975, 33.863678, 34.632431>,  <41.772831, 33.889633, 34.404694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.843975, 33.863678, 34.632431>,  <41.962551, 33.820415, 35.011993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.843975, 33.863678, 34.632431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953144, -0.029252, -0.301098,
		-0.060323, -0.993703, -0.094416,
		-0.296440, 0.108155, -0.948908,
		41.755043, 33.896126, 34.347759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.111225, 33.320744, 34.404881>,  <41.962551, 33.820415, 35.011993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.111225, 33.320744, 34.404881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.108803, 33.700226, 34.278442>,  <42.107349, 33.927917, 34.202579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.108803, 33.700226, 34.278442>,  <42.111225, 33.320744, 34.404881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.108803, 33.700226, 34.278442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908458, -0.126896, -0.398247,
		-0.417932, -0.289572, -0.861093,
		-0.006052, 0.948707, -0.316098,
		42.106987, 33.984837, 34.183613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.074986, 33.421753, 33.600430>,  <42.111225, 33.320744, 34.404881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.074986, 33.421753, 33.600430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.279800, 33.705418, 33.794296>,  <42.402687, 33.875618, 33.910618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.279800, 33.705418, 33.794296>,  <42.074986, 33.421753, 33.600430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.279800, 33.705418, 33.794296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817212, -0.228412, -0.529144,
		-0.264547, 0.667017, -0.696494,
		0.512035, 0.709166, 0.484668,
		42.433411, 33.918167, 33.939697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.561710, 32.822517, 33.584175>,  <42.074986, 33.421753, 33.600430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.561710, 32.822517, 33.584175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281860, 32.913864, 33.854988>,  <41.113949, 32.968674, 34.017475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281860, 32.913864, 33.854988>,  <41.561710, 32.822517, 33.584175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.281860, 32.913864, 33.854988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388087, 0.917048, 0.091708,
		-0.599924, 0.326908, -0.730221,
		-0.699628, 0.228371, 0.677028,
		41.071972, 32.982376, 34.058098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.064365, 33.360241, 33.266571>,  <41.561710, 32.822517, 33.584175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.064365, 33.360241, 33.266571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.116325, 33.380772, 33.662651>,  <41.147499, 33.393089, 33.900299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.116325, 33.380772, 33.662651>,  <41.064365, 33.360241, 33.266571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.116325, 33.380772, 33.662651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486513, 0.866878, -0.108758,
		-0.863963, 0.495871, 0.087631,
		0.129895, 0.051329, 0.990198,
		41.155293, 33.396172, 33.959709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.595032, 33.666763, 32.817707>,  <41.064365, 33.360241, 33.266571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.595032, 33.666763, 32.817707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.940968, 33.497871, 32.709064>,  <42.148529, 33.396534, 32.643879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.940968, 33.497871, 32.709064>,  <41.595032, 33.666763, 32.817707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.940968, 33.497871, 32.709064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232597, 0.816416, -0.528549,
		0.444917, 0.393935, 0.804279,
		0.864840, -0.422233, -0.271609,
		42.200420, 33.371201, 32.627583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.134987, 34.103851, 33.079407>,  <41.595032, 33.666763, 32.817707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.134987, 34.103851, 33.079407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.213612, 33.900070, 32.744305>,  <42.260784, 33.777802, 32.543243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.213612, 33.900070, 32.744305>,  <42.134987, 34.103851, 33.079407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.213612, 33.900070, 32.744305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321198, 0.840729, -0.435898,
		0.926389, -0.183405, 0.328886,
		0.196559, -0.509449, -0.837751,
		42.272579, 33.747234, 32.492981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.724342, 34.460518, 32.820580>,  <42.134987, 34.103851, 33.079407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.724342, 34.460518, 32.820580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.477383, 34.301849, 32.548851>,  <42.329208, 34.206646, 32.385815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.477383, 34.301849, 32.548851>,  <42.724342, 34.460518, 32.820580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.477383, 34.301849, 32.548851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079019, 0.827915, -0.555259,
		0.782675, -0.396493, -0.479805,
		-0.617394, -0.396674, -0.679319,
		42.292164, 34.182846, 32.345055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.425404, 35.076591, 33.118881>,  <42.724342, 34.460518, 32.820580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.425404, 35.076591, 33.118881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.544247, 34.764324, 33.338799>,  <42.615551, 34.576962, 33.470749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.544247, 34.764324, 33.338799>,  <42.425404, 35.076591, 33.118881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.544247, 34.764324, 33.338799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948864, 0.305731, -0.078644,
		-0.106695, 0.545049, 0.831587,
		0.297107, -0.780673, 0.549798,
		42.633377, 34.530121, 33.503738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.786232, 35.458790, 33.656723>,  <42.425404, 35.076591, 33.118881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.786232, 35.458790, 33.656723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.894146, 35.085335, 33.562458>,  <42.958897, 34.861263, 33.505898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.894146, 35.085335, 33.562458>,  <42.786232, 35.458790, 33.656723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.894146, 35.085335, 33.562458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961467, 0.247750, 0.119168,
		-0.052874, -0.258730, 0.964502,
		0.269787, -0.933637, -0.235661,
		42.975082, 34.805244, 33.491760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.132565, 35.018101, 34.150185>,  <42.786232, 35.458790, 33.656723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.132565, 35.018101, 34.150185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.184967, 34.686356, 34.367435>,  <43.216408, 34.487309, 34.497787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.184967, 34.686356, 34.367435>,  <43.132565, 35.018101, 34.150185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.184967, 34.686356, 34.367435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242868, 0.558008, 0.793500,
		-0.961173, 0.027957, 0.274528,
		0.131005, -0.829365, 0.543131,
		43.224270, 34.437546, 34.530376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.800816, 34.978462, 34.441948>,  <43.132565, 35.018101, 34.150185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.800816, 34.978462, 34.441948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.987904, 35.331619, 34.458633>,  <44.100155, 35.543514, 34.468643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.987904, 35.331619, 34.458633>,  <43.800816, 34.978462, 34.441948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.987904, 35.331619, 34.458633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794399, -0.440594, 0.418101,
		0.387515, -0.162420, -0.907443,
		0.467721, 0.882891, 0.041711,
		44.128220, 35.596485, 34.471146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.463795, 34.937996, 34.105553>,  <43.800816, 34.978462, 34.441948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.463795, 34.937996, 34.105553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.502956, 35.232365, 34.373535>,  <44.526451, 35.408985, 34.534325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.502956, 35.232365, 34.373535>,  <44.463795, 34.937996, 34.105553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.502956, 35.232365, 34.373535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893553, -0.361383, 0.266393,
		0.438153, 0.572558, -0.692964,
		0.097900, 0.735921, 0.669952,
		44.532326, 35.453140, 34.574520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.118839, 35.141453, 34.126560>,  <44.463795, 34.937996, 34.105553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.118839, 35.141453, 34.126560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.020565, 35.215218, 34.507217>,  <44.961601, 35.259476, 34.735611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.020565, 35.215218, 34.507217>,  <45.118839, 35.141453, 34.126560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.020565, 35.215218, 34.507217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845536, -0.439318, 0.303427,
		0.474031, 0.879199, -0.047992,
		-0.245689, 0.184413, 0.951645,
		44.946857, 35.270542, 34.792709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.617069, 35.669052, 34.392025>,  <45.118839, 35.141453, 34.126560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.617069, 35.669052, 34.392025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.459961, 35.367615, 34.602859>,  <45.365696, 35.186752, 34.729362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.459961, 35.367615, 34.602859>,  <45.617069, 35.669052, 34.392025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.459961, 35.367615, 34.602859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885773, -0.464106, -0.003498,
		0.247261, 0.465508, 0.849803,
		-0.392770, -0.753597, 0.527089,
		45.342129, 35.141537, 34.760986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.835609, 35.552299, 35.099277>,  <45.617069, 35.669052, 34.392025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.835609, 35.552299, 35.099277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.739555, 35.215542, 34.905968>,  <45.681923, 35.013489, 34.789982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.739555, 35.215542, 34.905968>,  <45.835609, 35.552299, 35.099277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.739555, 35.215542, 34.905968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944716, -0.317180, 0.083118,
		-0.223260, -0.436593, 0.871517,
		-0.240139, -0.841893, -0.483270,
		45.667515, 34.962975, 34.760986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.013302, 34.899487, 35.556412>,  <45.835609, 35.552299, 35.099277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.013302, 34.899487, 35.556412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.020649, 34.819569, 35.164547>,  <46.025055, 34.771618, 34.929428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.020649, 34.819569, 35.164547>,  <46.013302, 34.899487, 35.556412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.020649, 34.819569, 35.164547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998697, -0.043005, 0.027491,
		-0.047623, -0.978895, 0.198740,
		0.018364, -0.199790, -0.979667,
		46.026157, 34.759632, 34.870647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.410618, 34.259567, 35.468971>,  <46.013302, 34.899487, 35.556412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.410618, 34.259567, 35.468971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.427242, 34.561657, 35.207310>,  <46.437218, 34.742908, 35.050312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.427242, 34.561657, 35.207310>,  <46.410618, 34.259567, 35.468971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.427242, 34.561657, 35.207310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998925, -0.017968, 0.042716,
		0.020506, -0.655224, -0.755156,
		0.041557, 0.755221, -0.654152,
		46.439709, 34.788223, 35.011063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.763180, 34.169140, 34.875580>,  <46.410618, 34.259567, 35.468971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.763180, 34.169140, 34.875580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.792263, 34.554974, 34.977005>,  <46.809711, 34.786472, 35.037861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.792263, 34.554974, 34.977005>,  <46.763180, 34.169140, 34.875580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.792263, 34.554974, 34.977005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995283, -0.086545, 0.043844,
		0.064236, 0.249182, -0.966324,
		0.072705, 0.964582, 0.253566,
		46.814075, 34.844349, 35.053074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.204391, 34.636936, 34.392998>,  <46.763180, 34.169140, 34.875580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.204391, 34.636936, 34.392998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.221733, 34.755585, 34.774601>,  <47.232140, 34.826775, 35.003563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.221733, 34.755585, 34.774601>,  <47.204391, 34.636936, 34.392998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.221733, 34.755585, 34.774601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943231, -0.326896, 0.058773,
		0.329296, 0.897305, -0.293953,
		0.043355, 0.296619, 0.954011,
		47.234741, 34.844570, 35.060802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.836166, 35.007313, 34.625618>,  <47.204391, 34.636936, 34.392998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.836166, 35.007313, 34.625618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.699127, 34.865547, 34.973648>,  <47.616905, 34.780487, 35.182465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.699127, 34.865547, 34.973648>,  <47.836166, 35.007313, 34.625618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.699127, 34.865547, 34.973648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921384, -0.307661, 0.237477,
		0.183523, 0.883028, 0.431951,
		-0.342593, -0.354410, 0.870071,
		47.596348, 34.759224, 35.234669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.024223, 31.436752, 28.533390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.640591, 31.323732, 28.540558>,  <34.410412, 31.255920, 28.544859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.640591, 31.323732, 28.540558>,  <35.024223, 31.436752, 28.533390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640591, 31.323732, 28.540558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114260, -0.328372, 0.937612,
		-0.259038, 0.901297, 0.347221,
		-0.959085, -0.282550, 0.017921,
		34.352863, 31.238968, 28.545935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709465, 31.737579, 29.116556>,  <35.024223, 31.436752, 28.533390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709465, 31.737579, 29.116556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.481594, 31.421915, 29.024738>,  <34.344872, 31.232515, 28.969648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.481594, 31.421915, 29.024738>,  <34.709465, 31.737579, 29.116556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481594, 31.421915, 29.024738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089266, -0.337055, 0.937243,
		-0.817005, 0.513437, 0.262459,
		-0.569679, -0.789162, -0.229544,
		34.310692, 31.185167, 28.955875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472095, 31.613073, 29.795879>,  <34.709465, 31.737579, 29.116556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472095, 31.613073, 29.795879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.363449, 31.276571, 29.608898>,  <34.298260, 31.074669, 29.496710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.363449, 31.276571, 29.608898>,  <34.472095, 31.613073, 29.795879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363449, 31.276571, 29.608898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044915, -0.474102, 0.879324,
		-0.961356, 0.259837, 0.090990,
		-0.271620, -0.841256, -0.467451,
		34.281963, 31.024195, 29.468662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820419, 31.374290, 30.012627>,  <34.472095, 31.613073, 29.795879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820419, 31.374290, 30.012627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.010139, 31.042187, 29.895519>,  <34.123970, 30.842924, 29.825254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.010139, 31.042187, 29.895519>,  <33.820419, 31.374290, 30.012627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010139, 31.042187, 29.895519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117113, -0.389104, 0.913719,
		-0.872540, -0.399088, -0.281785,
		0.474298, -0.830257, -0.292770,
		34.152428, 30.793110, 29.807688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424744, 30.849722, 30.372900>,  <33.820419, 31.374290, 30.012627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424744, 30.849722, 30.372900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.765125, 30.685389, 30.241997>,  <33.969353, 30.586788, 30.163456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.765125, 30.685389, 30.241997>,  <33.424744, 30.849722, 30.372900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765125, 30.685389, 30.241997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151766, -0.404161, 0.902009,
		-0.502842, -0.817232, -0.281570,
		0.850951, -0.410836, -0.327257,
		34.020409, 30.562138, 30.143820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435944, 30.092798, 30.612392>,  <33.424744, 30.849722, 30.372900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435944, 30.092798, 30.612392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.817329, 30.191481, 30.543051>,  <34.046162, 30.250690, 30.501446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.817329, 30.191481, 30.543051>,  <33.435944, 30.092798, 30.612392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817329, 30.191481, 30.543051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256182, -0.359624, 0.897241,
		0.159013, -0.899893, -0.406089,
		0.953460, 0.246706, -0.173352,
		34.103367, 30.265491, 30.491045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865688, 29.615358, 31.047930>,  <33.435944, 30.092798, 30.612392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865688, 29.615358, 31.047930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.117325, 29.917688, 30.975304>,  <34.268307, 30.099087, 30.931728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.117325, 29.917688, 30.975304>,  <33.865688, 29.615358, 31.047930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117325, 29.917688, 30.975304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442209, -0.155883, 0.883262,
		0.639290, -0.635945, -0.432299,
		0.629094, 0.755827, -0.181566,
		34.306053, 30.144436, 30.920834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544933, 29.421204, 31.195976>,  <33.865688, 29.615358, 31.047930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544933, 29.421204, 31.195976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.580700, 29.818521, 31.225283>,  <34.602161, 30.056911, 31.242867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.580700, 29.818521, 31.225283>,  <34.544933, 29.421204, 31.195976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580700, 29.818521, 31.225283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449456, -0.105890, 0.887004,
		0.888816, -0.046386, -0.455911,
		0.089421, 0.993295, 0.073268,
		34.607525, 30.116510, 31.247263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151047, 29.498619, 31.497505>,  <34.544933, 29.421204, 31.195976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151047, 29.498619, 31.497505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.987473, 29.853779, 31.581799>,  <34.889328, 30.066875, 31.632374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.987473, 29.853779, 31.581799>,  <35.151047, 29.498619, 31.497505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987473, 29.853779, 31.581799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541836, 0.050429, 0.838970,
		0.734295, 0.457263, -0.501719,
		-0.408931, 0.887900, 0.210732,
		34.864792, 30.120150, 31.645018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756535, 29.866777, 31.536224>,  <35.151047, 29.498619, 31.497505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756535, 29.866777, 31.536224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.481209, 30.079386, 31.733688>,  <35.316013, 30.206951, 31.852167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.481209, 30.079386, 31.733688>,  <35.756535, 29.866777, 31.536224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481209, 30.079386, 31.733688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673487, 0.215415, 0.707115,
		0.269504, 0.819196, -0.506247,
		-0.688319, 0.531521, 0.493662,
		35.274712, 30.238842, 31.881786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998245, 30.449554, 31.645399>,  <35.756535, 29.866777, 31.536224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998245, 30.449554, 31.645399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.716923, 30.414095, 31.927534>,  <35.548130, 30.392818, 32.096813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.716923, 30.414095, 31.927534>,  <35.998245, 30.449554, 31.645399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716923, 30.414095, 31.927534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658447, 0.292773, 0.693348,
		-0.267970, 0.952063, -0.147537,
		-0.703306, -0.088651, 0.705337,
		35.505932, 30.387499, 32.139133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941299, 31.107830, 32.084721>,  <35.998245, 30.449554, 31.645399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941299, 31.107830, 32.084721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.792763, 30.808680, 32.304825>,  <35.703640, 30.629190, 32.436886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.792763, 30.808680, 32.304825>,  <35.941299, 31.107830, 32.084721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792763, 30.808680, 32.304825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358836, 0.430995, 0.827937,
		-0.856354, 0.504902, 0.108318,
		-0.371343, -0.747875, 0.550261,
		35.681358, 30.584316, 32.469902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891880, 31.438734, 32.703735>,  <35.941299, 31.107830, 32.084721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891880, 31.438734, 32.703735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.763199, 31.085648, 32.840744>,  <35.685989, 30.873796, 32.922947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.763199, 31.085648, 32.840744>,  <35.891880, 31.438734, 32.703735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763199, 31.085648, 32.840744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257204, 0.266677, 0.928832,
		-0.911238, 0.386905, 0.141248,
		-0.321702, -0.882716, 0.342520,
		35.666687, 30.820833, 32.943501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390411, 31.503828, 33.241573>,  <35.891880, 31.438734, 32.703735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390411, 31.503828, 33.241573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.580746, 31.167877, 33.346027>,  <35.694946, 30.966307, 33.408699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.580746, 31.167877, 33.346027>,  <35.390411, 31.503828, 33.241573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580746, 31.167877, 33.346027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384663, 0.465722, 0.796955,
		-0.790959, -0.278769, 0.544675,
		0.475834, -0.839875, 0.261135,
		35.723495, 30.915915, 33.424366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504829, 31.529333, 33.982201>,  <35.390411, 31.503828, 33.241573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504829, 31.529333, 33.982201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.754433, 31.225258, 33.909843>,  <35.904194, 31.042812, 33.866428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.754433, 31.225258, 33.909843>,  <35.504829, 31.529333, 33.982201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754433, 31.225258, 33.909843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462671, 0.172883, 0.869510,
		-0.629719, -0.626277, 0.459598,
		0.624011, -0.760189, -0.180892,
		35.941635, 30.997202, 33.855576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507233, 31.196838, 34.619663>,  <35.504829, 31.529333, 33.982201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507233, 31.196838, 34.619663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.843773, 31.068352, 34.445789>,  <36.045696, 30.991261, 34.341465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.843773, 31.068352, 34.445789>,  <35.507233, 31.196838, 34.619663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843773, 31.068352, 34.445789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518300, 0.251383, 0.817418,
		-0.153295, -0.913031, 0.377987,
		0.841348, -0.321217, -0.434688,
		36.096176, 30.971987, 34.315384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829483, 30.767258, 35.180042>,  <35.507233, 31.196838, 34.619663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829483, 30.767258, 35.180042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.125622, 30.839252, 34.920971>,  <36.303307, 30.882448, 34.765526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.125622, 30.839252, 34.920971>,  <35.829483, 30.767258, 35.180042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125622, 30.839252, 34.920971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552463, 0.386001, 0.738775,
		0.382951, -0.904776, 0.186360,
		0.740360, 0.179958, -0.647675,
		36.347725, 30.893248, 34.726665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409279, 30.268806, 35.244507>,  <35.829483, 30.767258, 35.180042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409279, 30.268806, 35.244507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.579082, 30.590208, 35.077572>,  <36.680965, 30.783049, 34.977409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.579082, 30.590208, 35.077572>,  <36.409279, 30.268806, 35.244507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579082, 30.590208, 35.077572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553769, 0.134257, 0.821775,
		0.716332, -0.579960, -0.387964,
		0.424510, 0.803506, -0.417336,
		36.706436, 30.831261, 34.952370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051949, 30.334074, 35.601242>,  <36.409279, 30.268806, 35.244507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051949, 30.334074, 35.601242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.080181, 30.672827, 35.390411>,  <37.097122, 30.876080, 35.263912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.080181, 30.672827, 35.390411>,  <37.051949, 30.334074, 35.601242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080181, 30.672827, 35.390411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499778, 0.427262, 0.753438,
		0.863272, -0.316601, -0.393095,
		0.070585, 0.846883, -0.527074,
		37.101357, 30.926891, 35.232288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709263, 30.579052, 35.637398>,  <37.051949, 30.334074, 35.601242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709263, 30.579052, 35.637398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.481407, 30.898203, 35.558506>,  <37.344692, 31.089693, 35.511173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.481407, 30.898203, 35.558506>,  <37.709263, 30.579052, 35.637398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481407, 30.898203, 35.558506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448341, 0.502777, 0.739057,
		0.688840, 0.332573, -0.644124,
		-0.569641, 0.797879, -0.197227,
		37.310516, 31.137566, 35.499336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188663, 31.107000, 35.699066>,  <37.709263, 30.579052, 35.637398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188663, 31.107000, 35.699066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.841934, 31.306240, 35.708096>,  <37.633896, 31.425783, 35.713512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.841934, 31.306240, 35.708096>,  <38.188663, 31.107000, 35.699066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841934, 31.306240, 35.708096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385276, 0.640379, 0.664437,
		0.316501, 0.584648, -0.747003,
		-0.866827, 0.498097, 0.022570,
		37.581886, 31.455669, 35.714867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416458, 31.811762, 35.694885>,  <38.188663, 31.107000, 35.699066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416458, 31.811762, 35.694885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.039246, 31.794621, 35.826859>,  <37.812920, 31.784336, 35.906044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.039246, 31.794621, 35.826859>,  <38.416458, 31.811762, 35.694885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039246, 31.794621, 35.826859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268651, 0.486898, 0.831118,
		-0.196260, 0.872407, -0.447647,
		-0.943032, -0.042854, 0.329932,
		37.756336, 31.781765, 35.925838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470806, 32.182823, 36.305698>,  <38.416458, 31.811762, 35.694885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470806, 32.182823, 36.305698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.850880, 32.113358, 36.202171>,  <39.078926, 32.071678, 36.140057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.850880, 32.113358, 36.202171>,  <38.470806, 32.182823, 36.305698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850880, 32.113358, 36.202171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170592, 0.405197, -0.898172,
		0.260855, 0.897583, 0.355386,
		0.950186, -0.173667, -0.258818,
		39.135937, 32.061256, 36.124527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831825, 32.798656, 35.993202>,  <38.470806, 32.182823, 36.305698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831825, 32.798656, 35.993202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.028721, 32.480995, 35.850647>,  <39.146858, 32.290398, 35.765114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.028721, 32.480995, 35.850647>,  <38.831825, 32.798656, 35.993202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028721, 32.480995, 35.850647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096459, 0.357140, -0.929057,
		0.865099, 0.491695, 0.099195,
		0.492239, -0.794158, -0.356390,
		39.176392, 32.242748, 35.743729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143383, 33.051811, 35.372879>,  <38.831825, 32.798656, 35.993202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143383, 33.051811, 35.372879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.181011, 32.655281, 35.336170>,  <39.203587, 32.417362, 35.314144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.181011, 32.655281, 35.336170>,  <39.143383, 33.051811, 35.372879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.181011, 32.655281, 35.336170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032418, 0.089080, -0.995497,
		0.995038, 0.096620, -0.023757,
		0.094069, -0.991327, -0.091771,
		39.209232, 32.357883, 35.308640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683014, 32.952545, 34.870983>,  <39.143383, 33.051811, 35.372879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.683014, 32.952545, 34.870983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.477951, 32.609474, 34.886848>,  <39.354916, 32.403629, 34.896366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.477951, 32.609474, 34.886848>,  <39.683014, 32.952545, 34.870983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477951, 32.609474, 34.886848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026720, -0.062112, -0.997711,
		0.858180, -0.510420, 0.054759,
		-0.512653, -0.857679, 0.039665,
		39.324154, 32.352169, 34.898746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977104, 32.478195, 34.368221>,  <39.683014, 32.952545, 34.870983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977104, 32.478195, 34.368221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.617577, 32.310814, 34.420395>,  <39.401859, 32.210384, 34.451698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.617577, 32.310814, 34.420395>,  <39.977104, 32.478195, 34.368221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617577, 32.310814, 34.420395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030765, -0.236618, -0.971116,
		0.437231, -0.876874, 0.199804,
		-0.898823, -0.418455, 0.130434,
		39.347931, 32.185276, 34.459526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880444, 31.944777, 33.899555>,  <39.977104, 32.478195, 34.368221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880444, 31.944777, 33.899555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.496635, 32.004066, 33.995338>,  <39.266350, 32.039642, 34.052811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.496635, 32.004066, 33.995338>,  <39.880444, 31.944777, 33.899555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496635, 32.004066, 33.995338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247908, -0.041141, -0.967910,
		-0.133615, -0.988098, 0.076222,
		-0.959525, 0.148223, 0.239460,
		39.208778, 32.048534, 34.067177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533230, 31.485853, 33.506847>,  <39.880444, 31.944777, 33.899555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533230, 31.485853, 33.506847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.245049, 31.744894, 33.606091>,  <39.072140, 31.900318, 33.665634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.245049, 31.744894, 33.606091>,  <39.533230, 31.485853, 33.506847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245049, 31.744894, 33.606091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355122, -0.037213, -0.934079,
		-0.595680, -0.761069, 0.256788,
		-0.720454, 0.647603, 0.248105,
		39.028912, 31.939175, 33.680523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946903, 31.163868, 33.239372>,  <39.533230, 31.485853, 33.506847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946903, 31.163868, 33.239372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.849186, 31.547659, 33.295551>,  <38.790558, 31.777933, 33.329258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.849186, 31.547659, 33.295551>,  <38.946903, 31.163868, 33.239372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849186, 31.547659, 33.295551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508932, -0.003573, -0.860799,
		-0.825415, -0.281765, 0.489181,
		-0.244291, 0.959477, 0.140450,
		38.775898, 31.835503, 33.337685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246880, 31.127258, 33.069294>,  <38.946903, 31.163868, 33.239372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246880, 31.127258, 33.069294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.379791, 31.502394, 33.029198>,  <38.459538, 31.727474, 33.005138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.379791, 31.502394, 33.029198>,  <38.246880, 31.127258, 33.069294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379791, 31.502394, 33.029198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495161, 0.083003, -0.864827,
		-0.802748, 0.337002, 0.491961,
		0.332283, 0.937838, -0.100240,
		38.479477, 31.783745, 32.999126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612663, 31.436747, 32.834019>,  <38.246880, 31.127258, 33.069294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612663, 31.436747, 32.834019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.912937, 31.683111, 32.738415>,  <38.093102, 31.830931, 32.681053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.912937, 31.683111, 32.738415>,  <37.612663, 31.436747, 32.834019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912937, 31.683111, 32.738415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403371, 0.140767, -0.904144,
		-0.523229, 0.775136, 0.354113,
		0.750681, 0.615914, -0.239014,
		38.138142, 31.867886, 32.666710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232124, 32.025345, 32.537899>,  <37.612663, 31.436747, 32.834019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232124, 32.025345, 32.537899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.606449, 32.088428, 32.411797>,  <37.831043, 32.126278, 32.336136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.606449, 32.088428, 32.411797>,  <37.232124, 32.025345, 32.537899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606449, 32.088428, 32.411797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350834, 0.329718, -0.876471,
		-0.034280, 0.930814, 0.363883,
		0.935810, 0.157708, -0.315259,
		37.887192, 32.135742, 32.317219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099297, 32.485458, 32.110241>,  <37.232124, 32.025345, 32.537899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099297, 32.485458, 32.110241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.465721, 32.364498, 32.004871>,  <37.685574, 32.291920, 31.941650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.465721, 32.364498, 32.004871>,  <37.099297, 32.485458, 32.110241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465721, 32.364498, 32.004871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173484, 0.293406, -0.940115,
		0.361584, 0.906899, 0.216315,
		0.916057, -0.302403, -0.263424,
		37.740540, 32.273777, 31.925844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521137, 32.996796, 31.659912>,  <37.099297, 32.485458, 32.110241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521137, 32.996796, 31.659912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.636780, 32.619541, 31.594297>,  <37.706165, 32.393188, 31.554928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.636780, 32.619541, 31.594297>,  <37.521137, 32.996796, 31.659912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636780, 32.619541, 31.594297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012218, 0.167705, -0.985761,
		0.957219, 0.286993, 0.036961,
		0.289105, -0.943138, -0.164037,
		37.723511, 32.336601, 31.545086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049782, 33.036095, 31.111303>,  <37.521137, 32.996796, 31.659912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049782, 33.036095, 31.111303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.903484, 32.664825, 31.083824>,  <37.815708, 32.442062, 31.067337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.903484, 32.664825, 31.083824>,  <38.049782, 33.036095, 31.111303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903484, 32.664825, 31.083824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000985, 0.074198, -0.997243,
		0.930716, -0.364665, -0.028051,
		-0.365741, -0.928178, -0.068698,
		37.793762, 32.386372, 31.063215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373131, 32.733406, 30.583004>,  <38.049782, 33.036095, 31.111303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373131, 32.733406, 30.583004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.045185, 32.505810, 30.608568>,  <37.848419, 32.369255, 30.623907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.045185, 32.505810, 30.608568>,  <38.373131, 32.733406, 30.583004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045185, 32.505810, 30.608568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166868, 0.130674, -0.977282,
		0.547709, -0.811898, -0.202080,
		-0.819860, -0.568986, 0.063909,
		37.799229, 32.335114, 30.627741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358459, 32.253231, 30.064152>,  <38.373131, 32.733406, 30.583004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358459, 32.253231, 30.064152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.968838, 32.257591, 30.154566>,  <37.735065, 32.260208, 30.208815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.968838, 32.257591, 30.154566>,  <38.358459, 32.253231, 30.064152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968838, 32.257591, 30.154566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225676, 0.027130, -0.973825,
		-0.016753, -0.999572, -0.023965,
		-0.974059, 0.010906, 0.226034,
		37.676620, 32.260860, 30.222376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114811, 31.833452, 29.639763>,  <38.358459, 32.253231, 30.064152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114811, 31.833452, 29.639763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.779202, 32.015511, 29.759018>,  <37.577835, 32.124744, 29.830570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.779202, 32.015511, 29.759018>,  <38.114811, 31.833452, 29.639763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779202, 32.015511, 29.759018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313976, 0.042500, -0.948479,
		-0.444368, -0.889401, 0.107247,
		-0.839021, 0.455147, 0.298136,
		37.527496, 32.152054, 29.848459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612103, 31.411911, 29.462688>,  <38.114811, 31.833452, 29.639763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612103, 31.411911, 29.462688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.435539, 31.768827, 29.500572>,  <37.329601, 31.982977, 29.523302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.435539, 31.768827, 29.500572>,  <37.612103, 31.411911, 29.462688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435539, 31.768827, 29.500572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391320, -0.096441, -0.915187,
		-0.807481, -0.441035, 0.391742,
		-0.441409, 0.892293, 0.094711,
		37.303116, 32.036514, 29.528986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.947815, 31.337440, 28.999578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.979713, 31.728983, 29.074921>,  <36.998852, 31.963909, 29.120125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.979713, 31.728983, 29.074921>,  <36.947815, 31.337440, 28.999578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979713, 31.728983, 29.074921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339813, 0.204334, -0.918028,
		-0.937106, 0.009205, 0.348923,
		0.079748, 0.978858, 0.188354,
		37.003639, 32.022640, 29.131428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249657, 31.582947, 28.886509>,  <36.947815, 31.337440, 28.999578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249657, 31.582947, 28.886509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.543716, 31.848415, 28.831228>,  <36.720150, 32.007698, 28.798061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.543716, 31.848415, 28.831228>,  <36.249657, 31.582947, 28.886509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543716, 31.848415, 28.831228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343548, 0.188987, -0.919923,
		-0.584409, 0.723756, 0.366937,
		0.735147, 0.663672, -0.138199,
		36.764259, 32.047516, 28.789768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931793, 32.058998, 28.512285>,  <36.249657, 31.582947, 28.886509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931793, 32.058998, 28.512285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.311127, 32.160515, 28.436129>,  <36.538727, 32.221424, 28.390434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.311127, 32.160515, 28.436129>,  <35.931793, 32.058998, 28.512285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311127, 32.160515, 28.436129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277877, 0.374817, -0.884475,
		-0.153112, 0.891684, 0.425976,
		0.948336, 0.253793, -0.190389,
		36.595627, 32.236652, 28.379011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935673, 32.802963, 28.454006>,  <35.931793, 32.058998, 28.512285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935673, 32.802963, 28.454006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.237362, 32.627247, 28.258795>,  <36.418377, 32.521816, 28.141668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.237362, 32.627247, 28.258795>,  <35.935673, 32.802963, 28.454006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237362, 32.627247, 28.258795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396774, 0.287294, -0.871799,
		0.523177, 0.851169, 0.042387,
		0.754226, -0.439287, -0.488027,
		36.463631, 32.495461, 28.112387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035557, 33.170620, 27.867870>,  <35.935673, 32.802963, 28.454006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035557, 33.170620, 27.867870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.213924, 32.830730, 27.755358>,  <36.320946, 32.626797, 27.687851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.213924, 32.830730, 27.755358>,  <36.035557, 33.170620, 27.867870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213924, 32.830730, 27.755358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175447, 0.225180, -0.958390,
		0.877709, 0.476717, -0.048669,
		0.445921, -0.849727, -0.281281,
		36.347702, 32.575813, 27.670973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438675, 33.330299, 27.354626>,  <36.035557, 33.170620, 27.867870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438675, 33.330299, 27.354626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.393883, 32.936256, 27.302439>,  <36.367008, 32.699829, 27.271126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.393883, 32.936256, 27.302439>,  <36.438675, 33.330299, 27.354626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393883, 32.936256, 27.302439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095667, 0.141373, -0.985323,
		0.989095, -0.097856, -0.110073,
		-0.111981, -0.985108, -0.130470,
		36.360287, 32.640724, 27.263298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630486, 33.290428, 26.711382>,  <36.438675, 33.330299, 27.354626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630486, 33.290428, 26.711382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.419228, 32.957420, 26.778282>,  <36.292473, 32.757614, 26.818422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.419228, 32.957420, 26.778282>,  <36.630486, 33.290428, 26.711382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419228, 32.957420, 26.778282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241896, -0.041296, -0.969423,
		0.813972, -0.552452, -0.179573,
		-0.528145, -0.832521, 0.167250,
		36.260784, 32.707664, 26.828457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795856, 32.783978, 26.134140>,  <36.630486, 33.290428, 26.711382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795856, 32.783978, 26.134140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.449596, 32.645672, 26.278971>,  <36.241840, 32.562687, 26.365870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.449596, 32.645672, 26.278971>,  <36.795856, 32.783978, 26.134140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449596, 32.645672, 26.278971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279808, -0.265589, -0.922589,
		0.415161, -0.899950, 0.133159,
		-0.865650, -0.345764, 0.362076,
		36.189903, 32.541943, 26.387594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631027, 32.339054, 25.613850>,  <36.795856, 32.783978, 26.134140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631027, 32.339054, 25.613850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.279686, 32.348347, 25.804827>,  <36.068882, 32.353924, 25.919413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.279686, 32.348347, 25.804827>,  <36.631027, 32.339054, 25.613850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279686, 32.348347, 25.804827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476072, -0.132366, -0.869388,
		0.042996, -0.990929, 0.127326,
		-0.878355, 0.023235, 0.477444,
		36.016178, 32.355316, 25.948059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261269, 31.717335, 25.509100>,  <36.631027, 32.339054, 25.613850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261269, 31.717335, 25.509100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.993153, 31.999111, 25.602465>,  <35.832283, 32.168179, 25.658484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.993153, 31.999111, 25.602465>,  <36.261269, 31.717335, 25.509100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993153, 31.999111, 25.602465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296822, 0.033784, -0.954335,
		-0.680157, -0.708959, 0.186449,
		-0.670285, 0.704440, 0.233413,
		35.792068, 32.210442, 25.672489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574566, 31.525404, 25.115194>,  <36.261269, 31.717335, 25.509100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574566, 31.525404, 25.115194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.555984, 31.911146, 25.219397>,  <35.544834, 32.142590, 25.281918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.555984, 31.911146, 25.219397>,  <35.574566, 31.525404, 25.115194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555984, 31.911146, 25.219397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316435, 0.233153, -0.919516,
		-0.947476, -0.125147, 0.294324,
		-0.046452, 0.964354, 0.260508,
		35.542049, 32.200451, 25.297548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916351, 31.697613, 24.817780>,  <35.574566, 31.525404, 25.115194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916351, 31.697613, 24.817780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.113655, 32.037579, 24.891903>,  <35.232037, 32.241558, 24.936377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.113655, 32.037579, 24.891903>,  <34.916351, 31.697613, 24.817780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113655, 32.037579, 24.891903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262516, 0.348535, -0.899782,
		-0.829327, 0.395176, 0.395034,
		0.493256, 0.849917, 0.185310,
		35.261631, 32.292553, 24.947496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486378, 32.214520, 24.632330>,  <34.916351, 31.697613, 24.817780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486378, 32.214520, 24.632330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.843933, 32.392845, 24.613529>,  <35.058468, 32.499840, 24.602249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.843933, 32.392845, 24.613529>,  <34.486378, 32.214520, 24.632330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843933, 32.392845, 24.613529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256443, 0.422534, -0.869311,
		-0.367690, 0.789123, 0.492025,
		0.893891, 0.445813, -0.047004,
		35.112099, 32.526588, 24.599428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275482, 32.777744, 24.367790>,  <34.486378, 32.214520, 24.632330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275482, 32.777744, 24.367790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.671726, 32.766113, 24.314348>,  <34.909473, 32.759136, 24.282284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.671726, 32.766113, 24.314348>,  <34.275482, 32.777744, 24.367790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671726, 32.766113, 24.314348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109121, 0.420677, -0.900624,
		0.082389, 0.906745, 0.413553,
		0.990608, -0.029075, -0.133604,
		34.968910, 32.757389, 24.274267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371078, 33.358875, 24.109215>,  <34.275482, 32.777744, 24.367790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371078, 33.358875, 24.109215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.691952, 33.151638, 23.990505>,  <34.884476, 33.027294, 23.919279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.691952, 33.151638, 23.990505>,  <34.371078, 33.358875, 24.109215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691952, 33.151638, 23.990505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139722, 0.320360, -0.936935,
		0.580494, 0.793063, 0.184599,
		0.802187, -0.518093, -0.296775,
		34.932610, 32.996212, 23.901472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749035, 33.905144, 23.778786>,  <34.371078, 33.358875, 24.109215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749035, 33.905144, 23.778786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.849899, 33.538845, 23.653677>,  <34.910419, 33.319065, 23.578613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.849899, 33.538845, 23.653677>,  <34.749035, 33.905144, 23.778786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849899, 33.538845, 23.653677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305591, 0.231316, -0.923638,
		0.918165, 0.328489, -0.221513,
		0.252166, -0.915744, -0.312770,
		34.925549, 33.264122, 23.559847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191669, 34.058762, 23.219002>,  <34.749035, 33.905144, 23.778786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191669, 34.058762, 23.219002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.055786, 33.684345, 23.182287>,  <34.974255, 33.459694, 23.160259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.055786, 33.684345, 23.182287>,  <35.191669, 34.058762, 23.219002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055786, 33.684345, 23.182287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273955, 0.191837, -0.942416,
		0.899747, -0.295003, -0.321602,
		-0.339711, -0.936040, -0.091787,
		34.953873, 33.403534, 23.154751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395748, 33.820366, 22.566511>,  <35.191669, 34.058762, 23.219002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395748, 33.820366, 22.566511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.093674, 33.579758, 22.670717>,  <34.912430, 33.435394, 22.733240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.093674, 33.579758, 22.670717>,  <35.395748, 33.820366, 22.566511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093674, 33.579758, 22.670717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398274, 0.105388, -0.911192,
		0.520645, -0.791875, -0.319158,
		-0.755186, -0.601520, 0.260514,
		34.867119, 33.399303, 22.748871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301968, 33.356785, 22.054823>,  <35.395748, 33.820366, 22.566511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301968, 33.356785, 22.054823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.947346, 33.399437, 22.234894>,  <34.734573, 33.425026, 22.342936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.947346, 33.399437, 22.234894>,  <35.301968, 33.356785, 22.054823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947346, 33.399437, 22.234894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438680, 0.115280, -0.891218,
		-0.146924, -0.987594, -0.055427,
		-0.886551, 0.106627, 0.450175,
		34.681381, 33.431423, 22.369946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920574, 33.320648, 21.498417>,  <35.301968, 33.356785, 22.054823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920574, 33.320648, 21.498417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.645535, 33.396107, 21.778879>,  <34.480511, 33.441383, 21.947157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.645535, 33.396107, 21.778879>,  <34.920574, 33.320648, 21.498417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645535, 33.396107, 21.778879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687964, 0.139527, -0.712206,
		-0.232186, -0.972082, 0.033843,
		-0.687601, 0.188647, 0.701154,
		34.439255, 33.452702, 21.989225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378815, 32.723831, 21.438229>,  <34.920574, 33.320648, 21.498417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378815, 32.723831, 21.438229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.227802, 33.068722, 21.573299>,  <34.137196, 33.275658, 21.654343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.227802, 33.068722, 21.573299>,  <34.378815, 32.723831, 21.438229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227802, 33.068722, 21.573299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555876, 0.080623, -0.827346,
		-0.740588, -0.500058, 0.448856,
		-0.377533, 0.862231, 0.337679,
		34.114544, 33.327393, 21.674603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555916, 32.826340, 21.526468>,  <34.378815, 32.723831, 21.438229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555916, 32.826340, 21.526468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.727512, 33.182419, 21.465137>,  <33.830471, 33.396069, 21.428339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.727512, 33.182419, 21.465137>,  <33.555916, 32.826340, 21.526468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727512, 33.182419, 21.465137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640193, 0.179870, -0.746860,
		-0.637278, 0.418553, 0.647063,
		0.428987, 0.890202, -0.153327,
		33.856209, 33.449478, 21.419140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003719, 33.295128, 21.344664>,  <33.555916, 32.826340, 21.526468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003719, 33.295128, 21.344664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.357445, 33.434647, 21.220520>,  <33.569679, 33.518356, 21.146034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.357445, 33.434647, 21.220520>,  <33.003719, 33.295128, 21.344664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357445, 33.434647, 21.220520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386313, 0.173336, -0.905934,
		-0.262191, 0.921030, 0.288029,
		0.884318, 0.348797, -0.310359,
		33.622742, 33.539284, 21.127413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.639679, 32.693295, 21.092999>,  <33.003719, 33.295128, 21.344664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.639679, 32.693295, 21.092999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.291412, 32.692440, 20.896254>,  <32.082451, 32.691929, 20.778206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.291412, 32.692440, 20.896254>,  <32.639679, 32.693295, 21.092999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291412, 32.692440, 20.896254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430409, 0.487335, 0.759772,
		0.238081, 0.873213, -0.425226,
		-0.870670, -0.002134, -0.491864,
		32.030212, 32.691799, 20.748695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359203, 33.335243, 20.943611>,  <32.639679, 32.693295, 21.092999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359203, 33.335243, 20.943611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.043507, 33.089821, 20.953781>,  <31.854088, 32.942566, 20.959883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.043507, 33.089821, 20.953781>,  <32.359203, 33.335243, 20.943611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.043507, 33.089821, 20.953781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055421, 0.112402, 0.992116,
		-0.611576, 0.781611, -0.122716,
		-0.789242, -0.613556, 0.025425,
		31.806734, 32.905754, 20.961409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851830, 33.539177, 21.470610>,  <32.359203, 33.335243, 20.943611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851830, 33.539177, 21.470610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.811462, 33.141552, 21.454334>,  <31.787241, 32.902977, 21.444569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.811462, 33.141552, 21.454334>,  <31.851830, 33.539177, 21.470610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811462, 33.141552, 21.454334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016516, -0.039218, 0.999094,
		-0.994758, 0.101500, -0.012460,
		-0.100920, -0.994062, -0.040688,
		31.781187, 32.843334, 21.442127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434183, 33.357937, 21.956463>,  <31.851830, 33.539177, 21.470610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434183, 33.357937, 21.956463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.582075, 32.991779, 21.892780>,  <31.670811, 32.772083, 21.854570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.582075, 32.991779, 21.892780>,  <31.434183, 33.357937, 21.956463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.582075, 32.991779, 21.892780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136984, -0.223177, 0.965105,
		-0.918986, -0.335021, -0.207910,
		0.369731, -0.915398, -0.159204,
		31.692995, 32.717159, 21.845018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980186, 32.954784, 22.293734>,  <31.434183, 33.357937, 21.956463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980186, 32.954784, 22.293734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.316889, 32.739792, 22.273514>,  <31.518911, 32.610794, 22.261383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.316889, 32.739792, 22.273514>,  <30.980186, 32.954784, 22.293734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316889, 32.739792, 22.273514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015648, -0.117885, 0.992904,
		-0.539629, -0.834993, -0.107641,
		0.841757, -0.537484, -0.050548,
		31.569416, 32.578548, 22.258348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764694, 32.362793, 22.724932>,  <30.980186, 32.954784, 22.293734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764694, 32.362793, 22.724932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.161776, 32.336674, 22.684391>,  <31.400024, 32.321003, 22.660067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.161776, 32.336674, 22.684391>,  <30.764694, 32.362793, 22.724932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.161776, 32.336674, 22.684391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083457, -0.234510, 0.968525,
		-0.087007, -0.969918, -0.227351,
		0.992706, -0.065294, -0.101350,
		31.459587, 32.317085, 22.653986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.913040, 31.755884, 23.193562>,  <30.764694, 32.362793, 22.724932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.913040, 31.755884, 23.193562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.258650, 31.950127, 23.140425>,  <31.466017, 32.066673, 23.108543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.258650, 31.950127, 23.140425>,  <30.913040, 31.755884, 23.193562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.258650, 31.950127, 23.140425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261140, -0.206699, 0.942911,
		0.430426, -0.849389, -0.305405,
		0.864025, 0.485606, -0.132841,
		31.517857, 32.095810, 23.100573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.444895, 31.337128, 23.427620>,  <30.913040, 31.755884, 23.193562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.444895, 31.337128, 23.427620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.625546, 31.694000, 23.430384>,  <31.733936, 31.908123, 23.432041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.625546, 31.694000, 23.430384>,  <31.444895, 31.337128, 23.427620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.625546, 31.694000, 23.430384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409020, -0.213916, 0.887098,
		0.792929, -0.397811, -0.461530,
		0.451626, 0.892181, 0.006908,
		31.761034, 31.961655, 23.432455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163418, 31.209291, 23.664499>,  <31.444895, 31.337128, 23.427620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163418, 31.209291, 23.664499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.082287, 31.595579, 23.729303>,  <32.033607, 31.827353, 23.768185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.082287, 31.595579, 23.729303>,  <32.163418, 31.209291, 23.664499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082287, 31.595579, 23.729303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421263, -0.063300, 0.904727,
		0.883968, 0.251752, -0.393983,
		-0.202827, 0.965719, 0.162009,
		32.021439, 31.885296, 23.777906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842396, 31.455896, 23.853350>,  <32.163418, 31.209291, 23.664499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842396, 31.455896, 23.853350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.591122, 31.756943, 23.932295>,  <32.440357, 31.937571, 23.979662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.591122, 31.756943, 23.932295>,  <32.842396, 31.455896, 23.853350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591122, 31.756943, 23.932295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471451, 0.166400, 0.866052,
		0.618963, 0.637088, -0.459351,
		-0.628187, 0.752615, 0.197361,
		32.402664, 31.982727, 23.991503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.223503, 32.141453, 23.833426>,  <32.842396, 31.455896, 23.853350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.223503, 32.141453, 23.833426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.915833, 32.089279, 24.083658>,  <32.731232, 32.057976, 24.233799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.915833, 32.089279, 24.083658>,  <33.223503, 32.141453, 23.833426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915833, 32.089279, 24.083658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630761, 0.002069, 0.775974,
		-0.102510, 0.991454, 0.080683,
		-0.769176, -0.130437, 0.625583,
		32.685081, 32.050148, 24.271334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542023, 32.503090, 24.474979>,  <33.223503, 32.141453, 23.833426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542023, 32.503090, 24.474979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.240841, 32.289242, 24.628462>,  <33.060131, 32.160931, 24.720551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.240841, 32.289242, 24.628462>,  <33.542023, 32.503090, 24.474979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240841, 32.289242, 24.628462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481692, -0.050499, 0.874884,
		-0.448358, 0.843580, 0.295548,
		-0.752959, -0.534625, 0.383704,
		33.014954, 32.128853, 24.743572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264664, 32.822140, 25.092533>,  <33.542023, 32.503090, 24.474979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264664, 32.822140, 25.092533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.154114, 32.440392, 25.137758>,  <33.087784, 32.211342, 25.164892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.154114, 32.440392, 25.137758>,  <33.264664, 32.822140, 25.092533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154114, 32.440392, 25.137758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273897, 0.034545, 0.961138,
		-0.921192, 0.296606, 0.251853,
		-0.276379, -0.954375, 0.113062,
		33.071201, 32.154079, 25.171677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090046, 32.780262, 25.865828>,  <33.264664, 32.822140, 25.092533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090046, 32.780262, 25.865828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.119293, 32.393410, 25.768406>,  <33.136841, 32.161301, 25.709953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.119293, 32.393410, 25.768406>,  <33.090046, 32.780262, 25.865828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119293, 32.393410, 25.768406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162920, -0.229345, 0.959614,
		-0.983926, -0.109842, 0.140795,
		0.073116, -0.967128, -0.243554,
		33.141228, 32.103271, 25.695339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653027, 32.400570, 26.298822>,  <33.090046, 32.780262, 25.865828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653027, 32.400570, 26.298822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.898335, 32.110672, 26.173185>,  <33.045517, 31.936735, 26.097803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.898335, 32.110672, 26.173185>,  <32.653027, 32.400570, 26.298822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898335, 32.110672, 26.173185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255317, -0.194420, 0.947108,
		-0.747474, -0.661023, 0.065807,
		0.613266, -0.724741, -0.314094,
		33.082314, 31.893250, 26.078957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531548, 31.737362, 26.680153>,  <32.653027, 32.400570, 26.298822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531548, 31.737362, 26.680153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.909348, 31.709202, 26.551798>,  <33.136028, 31.692307, 26.474785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.909348, 31.709202, 26.551798>,  <32.531548, 31.737362, 26.680153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909348, 31.709202, 26.551798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268372, -0.398021, 0.877243,
		-0.189477, -0.914671, -0.357037,
		0.944497, -0.070398, -0.320888,
		33.192696, 31.688082, 26.455532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746025, 31.265331, 26.989927>,  <32.531548, 31.737362, 26.680153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746025, 31.265331, 26.989927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.107681, 31.395319, 26.878981>,  <33.324673, 31.473312, 26.812412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.107681, 31.395319, 26.878981>,  <32.746025, 31.265331, 26.989927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107681, 31.395319, 26.878981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397948, -0.404281, 0.823526,
		0.155487, -0.854957, -0.494846,
		0.904136, 0.324970, -0.277368,
		33.378922, 31.492809, 26.795771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177544, 30.651236, 26.955126>,  <32.746025, 31.265331, 26.989927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177544, 30.651236, 26.955126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.407719, 30.976601, 26.989124>,  <33.545826, 31.171820, 27.009523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.407719, 30.976601, 26.989124>,  <33.177544, 30.651236, 26.955126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.407719, 30.976601, 26.989124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439670, -0.395311, 0.806486,
		0.689606, -0.426716, -0.585112,
		0.575442, 0.813414, 0.084995,
		33.580353, 31.220625, 27.014624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861763, 30.421598, 27.057234>,  <33.177544, 30.651236, 26.955126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861763, 30.421598, 27.057234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.864277, 30.789488, 27.214243>,  <33.865784, 31.010221, 27.308449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.864277, 30.789488, 27.214243>,  <33.861763, 30.421598, 27.057234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864277, 30.789488, 27.214243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449650, -0.353205, 0.820403,
		0.893183, 0.171345, -0.415771,
		0.006281, 0.919721, 0.392522,
		33.866161, 31.065405, 27.331999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482815, 30.421152, 27.432884>,  <33.861763, 30.421598, 27.057234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482815, 30.421152, 27.432884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.274624, 30.736536, 27.563992>,  <34.149708, 30.925766, 27.642656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.274624, 30.736536, 27.563992>,  <34.482815, 30.421152, 27.432884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274624, 30.736536, 27.563992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271048, -0.211449, 0.939054,
		0.809712, 0.577601, -0.103655,
		-0.520480, 0.788459, 0.327770,
		34.118481, 30.973074, 27.662323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896229, 30.835371, 27.927654>,  <34.482815, 30.421152, 27.432884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896229, 30.835371, 27.927654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.521721, 30.939844, 28.021616>,  <34.297016, 31.002527, 28.077993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.521721, 30.939844, 28.021616>,  <34.896229, 30.835371, 27.927654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521721, 30.939844, 28.021616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159189, -0.280636, 0.946521,
		0.313136, 0.923595, 0.221175,
		-0.936272, 0.261181, 0.234903,
		34.240841, 31.018198, 28.092087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.765274, 31.573088, 31.489088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.462994, 31.795378, 31.627701>,  <38.281624, 31.928751, 31.710869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.462994, 31.795378, 31.627701>,  <38.765274, 31.573088, 31.489088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462994, 31.795378, 31.627701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504560, 0.156694, 0.849038,
		0.417531, 0.816467, -0.398810,
		-0.755703, 0.555723, 0.346532,
		38.236282, 31.962095, 31.731661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047405, 32.016270, 31.918634>,  <38.765274, 31.573088, 31.489088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047405, 32.016270, 31.918634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.670685, 32.077171, 32.038521>,  <38.444653, 32.113712, 32.110455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.670685, 32.077171, 32.038521>,  <39.047405, 32.016270, 31.918634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670685, 32.077171, 32.038521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331264, 0.268506, 0.904527,
		0.057245, 0.951169, -0.303316,
		-0.941800, 0.152258, 0.299718,
		38.388145, 32.122849, 32.128437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008694, 32.711609, 32.293972>,  <39.047405, 32.016270, 31.918634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008694, 32.711609, 32.293972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.737598, 32.446011, 32.420319>,  <38.574940, 32.286652, 32.496128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.737598, 32.446011, 32.420319>,  <39.008694, 32.711609, 32.293972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737598, 32.446011, 32.420319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401701, 0.025449, 0.915417,
		-0.615875, 0.747300, 0.249482,
		-0.677742, -0.663999, 0.315865,
		38.534275, 32.246811, 32.515079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795753, 33.014633, 32.930847>,  <39.008694, 32.711609, 32.293972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795753, 33.014633, 32.930847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.688107, 32.631653, 32.972557>,  <38.623520, 32.401867, 32.997581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.688107, 32.631653, 32.972557>,  <38.795753, 33.014633, 32.930847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688107, 32.631653, 32.972557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200324, 0.050252, 0.978440,
		-0.942044, 0.284201, 0.178277,
		-0.269115, -0.957447, 0.104272,
		38.607372, 32.344418, 33.003838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335075, 33.036381, 33.500557>,  <38.795753, 33.014633, 32.930847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335075, 33.036381, 33.500557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.476189, 32.665459, 33.450516>,  <38.560856, 32.442905, 33.420490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.476189, 32.665459, 33.450516>,  <38.335075, 33.036381, 33.500557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476189, 32.665459, 33.450516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226784, -0.044982, 0.972906,
		-0.907806, -0.371598, 0.194429,
		0.352785, -0.927303, -0.125108,
		38.582024, 32.387268, 33.412983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166328, 32.794270, 34.075436>,  <38.335075, 33.036381, 33.500557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166328, 32.794270, 34.075436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.432175, 32.529713, 33.936382>,  <38.591682, 32.370979, 33.852951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.432175, 32.529713, 33.936382>,  <38.166328, 32.794270, 34.075436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432175, 32.529713, 33.936382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246865, -0.244757, 0.937631,
		-0.705230, -0.708978, 0.000608,
		0.664611, -0.661395, -0.347632,
		38.631557, 32.331295, 33.832092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937515, 32.171127, 34.301651>,  <38.166328, 32.794270, 34.075436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937515, 32.171127, 34.301651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.331875, 32.148674, 34.238590>,  <38.568489, 32.135201, 34.200752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.331875, 32.148674, 34.238590>,  <37.937515, 32.171127, 34.301651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331875, 32.148674, 34.238590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144171, -0.193438, 0.970462,
		-0.084973, -0.979505, -0.182618,
		0.985898, -0.056134, -0.157653,
		38.627644, 32.131832, 34.191296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164421, 31.590664, 34.600658>,  <37.937515, 32.171127, 34.301651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164421, 31.590664, 34.600658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.512604, 31.781881, 34.553715>,  <38.721516, 31.896612, 34.525551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.512604, 31.781881, 34.553715>,  <38.164421, 31.590664, 34.600658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512604, 31.781881, 34.553715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160474, -0.050207, 0.985762,
		0.465346, -0.876900, -0.120417,
		0.870461, 0.478045, -0.117355,
		38.773743, 31.925295, 34.518509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660542, 31.215712, 34.960953>,  <38.164421, 31.590664, 34.600658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660542, 31.215712, 34.960953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.869625, 31.556124, 34.940849>,  <38.995075, 31.760370, 34.928787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.869625, 31.556124, 34.940849>,  <38.660542, 31.215712, 34.960953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869625, 31.556124, 34.940849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291178, -0.122808, 0.948754,
		0.801246, -0.510554, -0.311993,
		0.522705, 0.851031, -0.050263,
		39.026436, 31.811434, 34.925770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323193, 31.104395, 35.236160>,  <38.660542, 31.215712, 34.960953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323193, 31.104395, 35.236160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.294987, 31.502043, 35.269039>,  <39.278061, 31.740631, 35.288765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.294987, 31.502043, 35.269039>,  <39.323193, 31.104395, 35.236160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294987, 31.502043, 35.269039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333996, -0.054111, 0.941020,
		0.939933, 0.093810, -0.328216,
		-0.070517, 0.994119, 0.082193,
		39.273830, 31.800278, 35.293697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988323, 31.326874, 35.377663>,  <39.323193, 31.104395, 35.236160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988323, 31.326874, 35.377663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.716923, 31.591885, 35.504597>,  <39.554085, 31.750891, 35.580757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.716923, 31.591885, 35.504597>,  <39.988323, 31.326874, 35.377663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716923, 31.591885, 35.504597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200538, -0.248526, 0.947639,
		0.706701, 0.706608, 0.035763,
		-0.678497, 0.662525, 0.317335,
		39.513374, 31.790642, 35.599796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390575, 31.652958, 35.900337>,  <39.988323, 31.326874, 35.377663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.390575, 31.652958, 35.900337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.010548, 31.767864, 35.949074>,  <39.782532, 31.836807, 35.978317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.010548, 31.767864, 35.949074>,  <40.390575, 31.652958, 35.900337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010548, 31.767864, 35.949074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101841, -0.083638, 0.991279,
		0.294950, 0.954193, 0.050206,
		-0.950070, 0.287265, 0.121845,
		39.725525, 31.854044, 35.985626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405827, 31.963036, 36.577629>,  <40.390575, 31.652958, 35.900337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.405827, 31.963036, 36.577629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.022053, 31.870916, 36.512577>,  <39.791790, 31.815645, 36.473545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.022053, 31.870916, 36.512577>,  <40.405827, 31.963036, 36.577629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022053, 31.870916, 36.512577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096851, -0.272523, 0.957262,
		-0.264776, 0.934181, 0.239163,
		-0.959434, -0.230297, -0.162634,
		39.734222, 31.801826, 36.463787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877285, 32.305119, 36.144428>,  <40.405827, 31.963036, 36.577629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877285, 32.305119, 36.144428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.663380, 32.263573, 35.808990>,  <40.535034, 32.238644, 35.607727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.663380, 32.263573, 35.808990>,  <40.877285, 32.305119, 36.144428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663380, 32.263573, 35.808990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402796, -0.903744, -0.144922,
		-0.742820, -0.415281, 0.525129,
		-0.534765, -0.103869, -0.838593,
		40.502949, 32.232410, 35.557411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994789, 33.011570, 35.690659>,  <40.877285, 32.305119, 36.144428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994789, 33.011570, 35.690659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.009182, 33.402851, 35.772465>,  <41.017818, 33.637619, 35.821548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.009182, 33.402851, 35.772465>,  <40.994789, 33.011570, 35.690659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.009182, 33.402851, 35.772465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785549, 0.154188, -0.599281,
		-0.617752, -0.139090, 0.773974,
		0.035983, 0.978202, 0.204512,
		41.019978, 33.696312, 35.833817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273319, 33.109383, 35.715435>,  <40.994789, 33.011570, 35.690659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273319, 33.109383, 35.715435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.432114, 33.476151, 35.699100>,  <40.527390, 33.696209, 35.689301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.432114, 33.476151, 35.699100>,  <40.273319, 33.109383, 35.715435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.432114, 33.476151, 35.699100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712660, 0.279900, -0.643250,
		-0.578378, 0.284462, 0.764566,
		0.396982, 0.916918, -0.040837,
		40.551208, 33.751225, 35.686848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758881, 33.538368, 35.811363>,  <40.273319, 33.109383, 35.715435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758881, 33.538368, 35.811363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.030685, 33.758652, 35.617466>,  <40.193768, 33.890823, 35.501129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.030685, 33.758652, 35.617466>,  <39.758881, 33.538368, 35.811363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030685, 33.758652, 35.617466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687518, 0.247360, -0.682738,
		-0.256086, 0.797201, 0.546709,
		0.679514, 0.550712, -0.484745,
		40.234539, 33.923866, 35.472042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281033, 34.105412, 35.421761>,  <39.758881, 33.538368, 35.811363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.281033, 34.105412, 35.421761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.643856, 34.176361, 35.269035>,  <39.861549, 34.218933, 35.177399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.643856, 34.176361, 35.269035>,  <39.281033, 34.105412, 35.421761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643856, 34.176361, 35.269035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420594, 0.421863, -0.803201,
		0.018605, 0.889140, 0.457257,
		0.907058, 0.177376, -0.381815,
		39.915974, 34.229572, 35.154491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284107, 34.831558, 35.119946>,  <39.281033, 34.105412, 35.421761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284107, 34.831558, 35.119946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.576183, 34.631866, 34.933361>,  <39.751431, 34.512051, 34.821411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.576183, 34.631866, 34.933361>,  <39.284107, 34.831558, 35.119946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.576183, 34.631866, 34.933361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340609, 0.325862, -0.881929,
		0.592288, 0.802860, 0.067900,
		0.730192, -0.499229, -0.466466,
		39.795242, 34.482098, 34.793423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582848, 35.294662, 34.544292>,  <39.284107, 34.831558, 35.119946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.582848, 35.294662, 34.544292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.672279, 34.915855, 34.452057>,  <39.725937, 34.688572, 34.396717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.672279, 34.915855, 34.452057>,  <39.582848, 35.294662, 34.544292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672279, 34.915855, 34.452057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457626, 0.106890, -0.882697,
		0.860577, 0.302874, -0.409482,
		0.223576, -0.947018, -0.230590,
		39.739353, 34.631752, 34.382881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714603, 35.317291, 33.910015>,  <39.582848, 35.294662, 34.544292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714603, 35.317291, 33.910015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.637249, 34.925735, 33.936478>,  <39.590836, 34.690804, 33.952354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.637249, 34.925735, 33.936478>,  <39.714603, 35.317291, 33.910015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637249, 34.925735, 33.936478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511993, 0.043166, -0.857904,
		0.836938, -0.199779, -0.509533,
		-0.193386, -0.978890, 0.066158,
		39.579235, 34.632069, 33.956326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844479, 35.139282, 33.296993>,  <39.714603, 35.317291, 33.910015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844479, 35.139282, 33.296993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.628181, 34.828678, 33.426376>,  <39.498402, 34.642315, 33.504005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.628181, 34.828678, 33.426376>,  <39.844479, 35.139282, 33.296993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628181, 34.828678, 33.426376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445170, -0.062091, -0.893291,
		0.713735, -0.627035, -0.312105,
		-0.540745, -0.776512, 0.323453,
		39.465958, 34.595726, 33.523411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882889, 34.641342, 32.729877>,  <39.844479, 35.139282, 33.296993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882889, 34.641342, 32.729877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.569275, 34.524487, 32.948944>,  <39.381107, 34.454372, 33.080383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.569275, 34.524487, 32.948944>,  <39.882889, 34.641342, 32.729877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569275, 34.524487, 32.948944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505629, -0.211185, -0.836505,
		0.360034, -0.932768, 0.017864,
		-0.784038, -0.292138, 0.547669,
		39.334064, 34.436844, 33.113243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501724, 34.067825, 32.428257>,  <39.882889, 34.641342, 32.729877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501724, 34.067825, 32.428257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.211517, 34.216919, 32.659668>,  <39.037395, 34.306377, 32.798515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.211517, 34.216919, 32.659668>,  <39.501724, 34.067825, 32.428257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211517, 34.216919, 32.659668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659026, -0.134084, -0.740072,
		-0.198280, -0.918199, 0.342923,
		-0.725513, 0.372736, 0.578531,
		38.993862, 34.328739, 32.833225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927464, 33.627628, 32.287090>,  <39.501724, 34.067825, 32.428257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927464, 33.627628, 32.287090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.781979, 33.962555, 32.450363>,  <38.694687, 34.163513, 32.548325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.781979, 33.962555, 32.450363>,  <38.927464, 33.627628, 32.287090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781979, 33.962555, 32.450363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818745, -0.078373, -0.568783,
		-0.444263, -0.541066, 0.714057,
		-0.363712, 0.837320, 0.408177,
		38.672867, 34.213753, 32.572815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191105, 33.556782, 32.352188>,  <38.927464, 33.627628, 32.287090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191105, 33.556782, 32.352188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.274895, 33.947735, 32.340534>,  <38.325169, 34.182304, 32.333542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.274895, 33.947735, 32.340534>,  <38.191105, 33.556782, 32.352188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274895, 33.947735, 32.340534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753435, 0.142343, -0.641930,
		-0.623263, 0.156420, 0.766209,
		0.209475, 0.977380, -0.029135,
		38.337738, 34.240948, 32.331795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630764, 33.784962, 32.143890>,  <38.191105, 33.556782, 32.352188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630764, 33.784962, 32.143890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.859051, 34.110058, 32.097015>,  <37.996021, 34.305115, 32.068890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.859051, 34.110058, 32.097015>,  <37.630764, 33.784962, 32.143890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859051, 34.110058, 32.097015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588384, 0.305209, -0.748767,
		-0.572788, 0.496285, 0.652392,
		0.570717, 0.812742, -0.117186,
		38.030266, 34.353882, 32.061859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158867, 34.308647, 32.165066>,  <37.630764, 33.784962, 32.143890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158867, 34.308647, 32.165066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.477745, 34.421249, 31.951439>,  <37.669071, 34.488811, 31.823263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.477745, 34.421249, 31.951439>,  <37.158867, 34.308647, 32.165066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477745, 34.421249, 31.951439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601472, 0.294098, -0.742790,
		-0.052034, 0.913378, 0.403774,
		0.797197, 0.281510, -0.534068,
		37.716904, 34.505703, 31.791218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912697, 34.982025, 32.417557>,  <37.158867, 34.308647, 32.165066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912697, 34.982025, 32.417557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.544827, 35.007179, 32.572605>,  <36.324104, 35.022270, 32.665634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.544827, 35.007179, 32.572605>,  <36.912697, 34.982025, 32.417557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544827, 35.007179, 32.572605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358815, -0.266465, 0.894566,
		0.159540, 0.961791, 0.222497,
		-0.919673, 0.062884, 0.387617,
		36.268925, 35.026043, 32.688889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962273, 35.312939, 33.084888>,  <36.912697, 34.982025, 32.417557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962273, 35.312939, 33.084888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.600986, 35.145477, 33.122692>,  <36.384216, 35.045002, 33.145374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.600986, 35.145477, 33.122692>,  <36.962273, 35.312939, 33.084888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600986, 35.145477, 33.122692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252660, -0.340669, 0.905598,
		-0.346936, 0.841828, 0.413474,
		-0.903216, -0.418653, 0.094506,
		36.330021, 35.019882, 33.151043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594292, 35.591511, 33.727055>,  <36.962273, 35.312939, 33.084888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594292, 35.591511, 33.727055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.433453, 35.233112, 33.651691>,  <36.336948, 35.018074, 33.606472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.433453, 35.233112, 33.651691>,  <36.594292, 35.591511, 33.727055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433453, 35.233112, 33.651691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110801, -0.251887, 0.961393,
		-0.908867, 0.365699, 0.200561,
		-0.402099, -0.896001, -0.188412,
		36.312824, 34.964314, 33.595169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173084, 35.458694, 34.322762>,  <36.594292, 35.591511, 33.727055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173084, 35.458694, 34.322762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.240341, 35.100620, 34.157661>,  <36.280697, 34.885777, 34.058601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.240341, 35.100620, 34.157661>,  <36.173084, 35.458694, 34.322762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240341, 35.100620, 34.157661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151371, -0.390300, 0.908159,
		-0.974071, -0.215182, 0.069878,
		0.168146, -0.895189, -0.412752,
		36.290787, 34.832062, 34.033836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755859, 35.051365, 34.661598>,  <36.173084, 35.458694, 34.322762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755859, 35.051365, 34.661598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.055244, 34.820915, 34.530209>,  <36.234875, 34.682648, 34.451374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.055244, 34.820915, 34.530209>,  <35.755859, 35.051365, 34.661598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055244, 34.820915, 34.530209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021390, -0.474068, 0.880229,
		-0.662835, -0.665842, -0.342498,
		0.748460, -0.576120, -0.328471,
		36.279781, 34.648079, 34.431667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722031, 34.515308, 35.085701>,  <35.755859, 35.051365, 34.661598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722031, 34.515308, 35.085701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.095646, 34.473816, 34.948986>,  <36.319813, 34.448921, 34.866955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.095646, 34.473816, 34.948986>,  <35.722031, 34.515308, 35.085701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095646, 34.473816, 34.948986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255656, -0.474107, 0.842533,
		-0.249439, -0.874335, -0.416314,
		0.934034, -0.103727, -0.341790,
		36.375854, 34.442699, 34.846451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961834, 33.858135, 35.229378>,  <35.722031, 34.515308, 35.085701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961834, 33.858135, 35.229378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.318295, 34.010277, 35.130440>,  <36.532173, 34.101562, 35.071075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.318295, 34.010277, 35.130440>,  <35.961834, 33.858135, 35.229378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318295, 34.010277, 35.130440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418946, -0.480580, 0.770407,
		0.174157, -0.790174, -0.587617,
		0.891153, 0.380351, -0.247344,
		36.585640, 34.124382, 35.056236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498257, 33.313744, 35.245285>,  <35.961834, 33.858135, 35.229378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498257, 33.313744, 35.245285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.684486, 33.663853, 35.297646>,  <36.796227, 33.873917, 35.329063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.684486, 33.663853, 35.297646>,  <36.498257, 33.313744, 35.245285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684486, 33.663853, 35.297646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462073, -0.366561, 0.807540,
		0.754803, -0.315484, -0.575102,
		0.465576, 0.875273, 0.130904,
		36.824158, 33.926434, 35.336918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129086, 33.124920, 35.411816>,  <36.498257, 33.313744, 35.245285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129086, 33.124920, 35.411816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.092171, 33.495712, 35.557247>,  <37.070023, 33.718189, 35.644505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.092171, 33.495712, 35.557247>,  <37.129086, 33.124920, 35.411816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092171, 33.495712, 35.557247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322134, -0.317705, 0.891792,
		0.942185, 0.199426, -0.269290,
		-0.092291, 0.926981, 0.363578,
		37.064484, 33.773808, 35.666321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615463, 33.150967, 35.879597>,  <37.129086, 33.124920, 35.411816>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615463, 33.150967, 35.879597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.427761, 33.486340, 35.990463>,  <37.315140, 33.687565, 36.056984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.427761, 33.486340, 35.990463>,  <37.615463, 33.150967, 35.879597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427761, 33.486340, 35.990463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010431, -0.319115, 0.947659,
		0.883000, 0.441805, 0.158492,
		-0.469257, 0.838436, 0.277170,
		37.286983, 33.737869, 36.073616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860962, 33.292286, 36.473118>,  <37.615463, 33.150967, 35.879597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860962, 33.292286, 36.473118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.526203, 33.510048, 36.495846>,  <37.325348, 33.640705, 36.509483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.526203, 33.510048, 36.495846>,  <37.860962, 33.292286, 36.473118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526203, 33.510048, 36.495846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073892, -0.215226, 0.973765,
		0.542349, 0.810743, 0.220349,
		-0.836897, 0.544402, 0.056821,
		37.275135, 33.673370, 36.512894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008057, 33.821091, 37.059299>,  <37.860962, 33.292286, 36.473118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008057, 33.821091, 37.059299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.616344, 33.795109, 36.982571>,  <37.381317, 33.779518, 36.936535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.616344, 33.795109, 36.982571>,  <38.008057, 33.821091, 37.059299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616344, 33.795109, 36.982571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157562, -0.350688, 0.923142,
		-0.127231, 0.934237, 0.333187,
		-0.979279, -0.064955, -0.191819,
		37.322559, 33.775623, 36.925026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.194149, 37.152660, 29.864620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896568, 36.894756, 29.934853>,  <34.718021, 36.740013, 29.976992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896568, 36.894756, 29.934853>,  <35.194149, 37.152660, 29.864620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896568, 36.894756, 29.934853> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364978, -0.171954, 0.914999,
		-0.559759, 0.744797, 0.363246,
		-0.743950, -0.644756, 0.175582,
		34.673382, 36.701328, 29.987528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874626, 37.328590, 30.538828>,  <35.194149, 37.152660, 29.864620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874626, 37.328590, 30.538828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788227, 36.945553, 30.462547>,  <34.736389, 36.715733, 30.416779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788227, 36.945553, 30.462547>,  <34.874626, 37.328590, 30.538828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788227, 36.945553, 30.462547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415920, -0.266944, 0.869340,
		-0.883378, 0.108456, 0.455940,
		-0.215996, -0.957590, -0.190703,
		34.723427, 36.658276, 30.405336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648483, 37.027668, 31.181341>,  <34.874626, 37.328590, 30.538828>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648483, 37.027668, 31.181341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742313, 36.703323, 30.966873>,  <34.798611, 36.508717, 30.838192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742313, 36.703323, 30.966873>,  <34.648483, 37.027668, 31.181341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742313, 36.703323, 30.966873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386471, -0.428303, 0.816821,
		-0.891971, -0.398822, 0.212904,
		0.234578, -0.810862, -0.536168,
		34.812687, 36.460064, 30.806023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264030, 36.430088, 31.415407>,  <34.648483, 37.027668, 31.181341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264030, 36.430088, 31.415407> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583839, 36.272022, 31.234470>,  <34.775723, 36.177181, 31.125908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583839, 36.272022, 31.234470>,  <34.264030, 36.430088, 31.415407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583839, 36.272022, 31.234470> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224792, -0.501509, 0.835438,
		-0.556988, -0.769633, -0.312138,
		0.799521, -0.395163, -0.452342,
		34.823696, 36.153473, 31.098768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379177, 35.697182, 31.663803>,  <34.264030, 36.430088, 31.415407>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379177, 35.697182, 31.663803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727085, 35.767330, 31.479307>,  <34.935829, 35.809422, 31.368610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727085, 35.767330, 31.479307>,  <34.379177, 35.697182, 31.663803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727085, 35.767330, 31.479307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484506, -0.480732, 0.730856,
		-0.093558, -0.859151, -0.503097,
		0.869770, 0.175376, -0.461240,
		34.988018, 35.819942, 31.340935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614456, 35.089958, 31.547062>,  <34.379177, 35.697182, 31.663803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614456, 35.089958, 31.547062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938274, 35.324219, 31.530800>,  <35.132565, 35.464775, 31.521042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938274, 35.324219, 31.530800>,  <34.614456, 35.089958, 31.547062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938274, 35.324219, 31.530800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429739, -0.543998, 0.720687,
		0.399955, -0.600899, -0.692067,
		0.809543, 0.585651, -0.040655,
		35.181137, 35.499912, 31.518604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025036, 34.637745, 31.738535>,  <34.614456, 35.089958, 31.547062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025036, 34.637745, 31.738535> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234024, 34.977955, 31.762655>,  <35.359417, 35.182079, 31.777128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234024, 34.977955, 31.762655>,  <35.025036, 34.637745, 31.738535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234024, 34.977955, 31.762655> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349811, -0.278306, 0.894527,
		0.777600, -0.446265, -0.442928,
		0.522466, 0.850525, 0.060303,
		35.390762, 35.233112, 31.780746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744267, 34.421551, 31.731302>,  <35.025036, 34.637745, 31.738535>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744267, 34.421551, 31.731302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706478, 34.784916, 31.894209>,  <35.683807, 35.002934, 31.991953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706478, 34.784916, 31.894209>,  <35.744267, 34.421551, 31.731302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706478, 34.784916, 31.894209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566175, -0.287472, 0.772532,
		0.818854, 0.303565, -0.487162,
		-0.094468, 0.908410, 0.407269,
		35.678139, 35.057438, 32.016388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451847, 34.623077, 31.985697>,  <35.744267, 34.421551, 31.731302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451847, 34.623077, 31.985697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195866, 34.838882, 32.204563>,  <36.042278, 34.968365, 32.335884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195866, 34.838882, 32.204563>,  <36.451847, 34.623077, 31.985697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195866, 34.838882, 32.204563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383028, -0.393331, 0.835811,
		0.666144, 0.744460, 0.045067,
		-0.639954, 0.539509, 0.547164,
		36.003880, 35.000736, 32.368713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974148, 34.972713, 31.709551>,  <36.451847, 34.623077, 31.985697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974148, 34.972713, 31.709551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313084, 34.846832, 31.538450>,  <37.516445, 34.771301, 31.435791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313084, 34.846832, 31.538450>,  <36.974148, 34.972713, 31.709551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313084, 34.846832, 31.538450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341917, 0.293004, -0.892884,
		0.406328, 0.902834, 0.140672,
		0.847343, -0.314706, -0.427750,
		37.567287, 34.752422, 31.410126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046440, 35.500977, 31.184801>,  <36.974148, 34.972713, 31.709551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046440, 35.500977, 31.184801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263512, 35.185791, 31.068445>,  <37.393753, 34.996681, 30.998632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263512, 35.185791, 31.068445>,  <37.046440, 35.500977, 31.184801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263512, 35.185791, 31.068445> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362489, 0.092703, -0.927366,
		0.757698, 0.608702, -0.235320,
		0.542674, -0.787965, -0.290888,
		37.426315, 34.949402, 30.981178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503239, 35.733650, 30.598318>,  <37.046440, 35.500977, 31.184801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503239, 35.733650, 30.598318> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478546, 35.334438, 30.594009>,  <37.463730, 35.094910, 30.591425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478546, 35.334438, 30.594009>,  <37.503239, 35.733650, 30.598318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478546, 35.334438, 30.594009> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081083, 0.015772, -0.996583,
		0.994794, -0.060650, -0.081897,
		-0.061734, -0.998034, -0.010773,
		37.460026, 35.035027, 30.590778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689987, 35.632229, 29.982492>,  <37.503239, 35.733650, 30.598318>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689987, 35.632229, 29.982492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527927, 35.277863, 30.072832>,  <37.430691, 35.065243, 30.127035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527927, 35.277863, 30.072832>,  <37.689987, 35.632229, 29.982492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527927, 35.277863, 30.072832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189519, -0.160284, -0.968706,
		0.894390, -0.435278, -0.102958,
		-0.405154, -0.885913, 0.225849,
		37.406380, 35.012089, 30.140587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109943, 35.127705, 29.703184>,  <37.689987, 35.632229, 29.982492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109943, 35.127705, 29.703184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742592, 34.977444, 29.752937>,  <37.522182, 34.887287, 29.782789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742592, 34.977444, 29.752937>,  <38.109943, 35.127705, 29.703184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742592, 34.977444, 29.752937> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038310, -0.228445, -0.972803,
		0.393847, -0.898165, 0.195408,
		-0.918377, -0.375649, 0.124381,
		37.467079, 34.864750, 29.790251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068642, 34.480106, 29.410444>,  <38.109943, 35.127705, 29.703184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068642, 34.480106, 29.410444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697903, 34.629452, 29.426231>,  <37.475460, 34.719059, 29.435703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697903, 34.629452, 29.426231>,  <38.068642, 34.480106, 29.410444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697903, 34.629452, 29.426231> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176379, -0.340207, -0.923661,
		-0.331421, -0.863058, 0.381172,
		-0.926850, 0.373351, 0.039473,
		37.419849, 34.741459, 29.438072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719463, 34.009365, 29.031914>,  <38.068642, 34.480106, 29.410444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719463, 34.009365, 29.031914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501045, 34.344402, 29.025364>,  <37.369995, 34.545425, 29.021435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501045, 34.344402, 29.025364>,  <37.719463, 34.009365, 29.031914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501045, 34.344402, 29.025364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194625, -0.145841, -0.969975,
		-0.814837, -0.526460, 0.242653,
		-0.546042, 0.837598, -0.016374,
		37.337234, 34.595680, 29.020452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263885, 33.895672, 28.531099>,  <37.719463, 34.009365, 29.031914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263885, 33.895672, 28.531099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204044, 34.286747, 28.590096>,  <37.168140, 34.521393, 28.625492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204044, 34.286747, 28.590096>,  <37.263885, 33.895672, 28.531099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204044, 34.286747, 28.590096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125043, 0.129262, -0.983695,
		-0.980808, -0.165604, 0.102915,
		-0.149601, 0.977684, 0.147489,
		37.159164, 34.580051, 28.634342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727757, 33.959568, 28.159222>,  <37.263885, 33.895672, 28.531099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727757, 33.959568, 28.159222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850224, 34.338570, 28.196083>,  <36.923706, 34.565971, 28.218201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850224, 34.338570, 28.196083>,  <36.727757, 33.959568, 28.159222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850224, 34.338570, 28.196083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343795, 0.200321, -0.917429,
		-0.887729, 0.249209, 0.387081,
		0.306172, 0.947505, 0.092153,
		36.942074, 34.622822, 28.223728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216789, 34.413700, 27.765739>,  <36.727757, 33.959568, 28.159222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216789, 34.413700, 27.765739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554756, 34.626644, 27.786572>,  <36.757534, 34.754410, 27.799070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554756, 34.626644, 27.786572>,  <36.216789, 34.413700, 27.765739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554756, 34.626644, 27.786572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186231, 0.384037, -0.904341,
		-0.501437, 0.754391, 0.423621,
		0.844913, 0.532362, 0.052079,
		36.808231, 34.786354, 27.802195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077808, 35.048904, 27.472332>,  <36.216789, 34.413700, 27.765739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077808, 35.048904, 27.472332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475739, 35.021088, 27.442682>,  <36.714497, 35.004398, 27.424892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475739, 35.021088, 27.442682>,  <36.077808, 35.048904, 27.472332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475739, 35.021088, 27.442682> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050882, 0.290588, -0.955494,
		0.087990, 0.954318, 0.285544,
		0.994821, -0.069545, -0.074127,
		36.774185, 35.000225, 27.420444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238972, 35.719948, 27.187407>,  <36.077808, 35.048904, 27.472332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238972, 35.719948, 27.187407> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526783, 35.448181, 27.129900>,  <36.699471, 35.285122, 27.095396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526783, 35.448181, 27.129900>,  <36.238972, 35.719948, 27.187407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526783, 35.448181, 27.129900> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010572, 0.217709, -0.975956,
		0.694378, 0.700713, 0.163832,
		0.719533, -0.679415, -0.143764,
		36.742641, 35.244358, 27.086771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762802, 36.082695, 26.926397>,  <36.238972, 35.719948, 27.187407>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762802, 36.082695, 26.926397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804482, 35.697346, 26.827555>,  <36.829491, 35.466137, 26.768250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804482, 35.697346, 26.827555>,  <36.762802, 36.082695, 26.926397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804482, 35.697346, 26.827555> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059450, 0.254048, -0.965363,
		0.992778, 0.085900, 0.083744,
		0.104199, -0.963370, -0.247107,
		36.835743, 35.408337, 26.753424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182301, 36.193348, 26.347664>,  <36.762802, 36.082695, 26.926397>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182301, 36.193348, 26.347664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071674, 35.809303, 26.331226>,  <37.005299, 35.578876, 26.321363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071674, 35.809303, 26.331226>,  <37.182301, 36.193348, 26.347664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071674, 35.809303, 26.331226> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025998, 0.050220, -0.998400,
		0.960643, -0.275056, -0.038850,
		-0.276567, -0.960116, -0.041092,
		36.988705, 35.521267, 26.318899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.193115, 30.998898, 28.553541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.447365, 31.304020, 28.601057>,  <31.599915, 31.487093, 28.629566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.447365, 31.304020, 28.601057>,  <31.193115, 30.998898, 28.553541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.447365, 31.304020, 28.601057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331293, -0.408504, 0.850511,
		0.697300, -0.501251, -0.512367,
		0.635623, 0.762805, 0.118789,
		31.638052, 31.532862, 28.636694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824091, 30.688038, 28.644611>,  <31.193115, 30.998898, 28.553541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824091, 30.688038, 28.644611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.849955, 31.054729, 28.802309>,  <31.865473, 31.274744, 28.896929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.849955, 31.054729, 28.802309>,  <31.824091, 30.688038, 28.644611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849955, 31.054729, 28.802309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345409, -0.391211, 0.853022,
		0.936222, 0.081022, -0.341941,
		0.064658, 0.916728, 0.394246,
		31.869352, 31.329748, 28.920584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543873, 30.635267, 29.076866>,  <31.824091, 30.688038, 28.644611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543873, 30.635267, 29.076866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.297878, 30.925354, 29.200705>,  <32.150280, 31.099407, 29.275007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.297878, 30.925354, 29.200705>,  <32.543873, 30.635267, 29.076866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297878, 30.925354, 29.200705> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235574, -0.205717, 0.949834,
		0.752527, 0.657068, -0.044329,
		-0.614986, 0.725219, 0.309596,
		32.113384, 31.142920, 29.293583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971432, 30.991360, 29.563234>,  <32.543873, 30.635267, 29.076866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971432, 30.991360, 29.563234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.594070, 31.100431, 29.638752>,  <32.367653, 31.165874, 29.684063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.594070, 31.100431, 29.638752>,  <32.971432, 30.991360, 29.563234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594070, 31.100431, 29.638752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142723, -0.180059, 0.973247,
		0.299376, 0.945106, 0.130951,
		-0.943400, 0.272677, 0.188794,
		32.311050, 31.182234, 29.695391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991035, 31.393087, 30.088299>,  <32.971432, 30.991360, 29.563234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991035, 31.393087, 30.088299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.627171, 31.227184, 30.097168>,  <32.408852, 31.127642, 30.102489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.627171, 31.227184, 30.097168>,  <32.991035, 31.393087, 30.088299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627171, 31.227184, 30.097168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088562, -0.141524, 0.985965,
		-0.405799, 0.898858, 0.165470,
		-0.909661, -0.414758, 0.022175,
		32.354271, 31.102757, 30.103821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801643, 31.541487, 30.709661>,  <32.991035, 31.393087, 30.088299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801643, 31.541487, 30.709661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.501621, 31.298380, 30.605328>,  <32.321606, 31.152515, 30.542728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.501621, 31.298380, 30.605328>,  <32.801643, 31.541487, 30.709661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501621, 31.298380, 30.605328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088869, -0.298187, 0.950361,
		-0.655374, 0.736006, 0.169646,
		-0.750058, -0.607766, -0.260832,
		32.276604, 31.116051, 30.527079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224663, 31.781082, 31.052938>,  <32.801643, 31.541487, 30.709661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224663, 31.781082, 31.052938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.158134, 31.401331, 30.946341>,  <32.118217, 31.173481, 30.882381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.158134, 31.401331, 30.946341>,  <32.224663, 31.781082, 31.052938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158134, 31.401331, 30.946341> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179202, -0.236657, 0.954924,
		-0.969651, 0.206581, -0.130769,
		-0.166321, -0.949378, -0.266495,
		32.108238, 31.116518, 30.866392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.598103, 31.594660, 31.482622>,  <32.224663, 31.781082, 31.052938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.598103, 31.594660, 31.482622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.798641, 31.275803, 31.348030>,  <31.918964, 31.084488, 31.267275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.798641, 31.275803, 31.348030>,  <31.598103, 31.594660, 31.482622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798641, 31.275803, 31.348030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074198, -0.427058, 0.901175,
		-0.862060, -0.426834, -0.273249,
		0.501345, -0.797141, -0.336479,
		31.949045, 31.036659, 31.247086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.243328, 30.901192, 31.841946>,  <31.598103, 31.594660, 31.482622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.243328, 30.901192, 31.841946> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.624947, 30.859030, 31.729740>,  <31.853918, 30.833733, 31.662416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.624947, 30.859030, 31.729740>,  <31.243328, 30.901192, 31.841946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.624947, 30.859030, 31.729740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246699, -0.255118, 0.934909,
		-0.170106, -0.961148, -0.217391,
		0.954046, -0.105403, -0.280511,
		31.911160, 30.827408, 31.645586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445103, 30.339264, 32.284100>,  <31.243328, 30.901192, 31.841946>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445103, 30.339264, 32.284100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.785875, 30.504860, 32.155834>,  <31.990339, 30.604218, 32.078876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.785875, 30.504860, 32.155834>,  <31.445103, 30.339264, 32.284100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785875, 30.504860, 32.155834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412842, -0.154302, 0.897637,
		0.322133, -0.897109, -0.302367,
		0.851934, 0.413989, -0.320659,
		32.041454, 30.629057, 32.059635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.959896, 29.838932, 32.440773>,  <31.445103, 30.339264, 32.284100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.959896, 29.838932, 32.440773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.142155, 30.192144, 32.395794>,  <32.251511, 30.404072, 32.368805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.142155, 30.192144, 32.395794>,  <31.959896, 29.838932, 32.440773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142155, 30.192144, 32.395794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541446, -0.174660, 0.822393,
		0.706557, -0.435606, -0.557696,
		0.455647, 0.883030, -0.112450,
		32.278851, 30.457054, 32.362061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679813, 29.744587, 32.341282>,  <31.959896, 29.838932, 32.440773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679813, 29.744587, 32.341282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.652420, 30.120993, 32.473824>,  <32.635983, 30.346836, 32.553349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.652420, 30.120993, 32.473824>,  <32.679813, 29.744587, 32.341282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652420, 30.120993, 32.473824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514565, -0.251231, 0.819821,
		0.854712, 0.226652, -0.467008,
		-0.068488, 0.941016, 0.331357,
		32.631874, 30.403297, 32.573231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316116, 29.905878, 32.522591>,  <32.679813, 29.744587, 32.341282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316116, 29.905878, 32.522591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.083233, 30.180712, 32.696465>,  <32.943504, 30.345612, 32.800789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.083233, 30.180712, 32.696465>,  <33.316116, 29.905878, 32.522591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083233, 30.180712, 32.696465> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567171, -0.039839, 0.822636,
		0.582538, 0.725484, -0.366499,
		-0.582209, 0.687084, 0.434682,
		32.908569, 30.386837, 32.826870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805538, 30.328833, 32.802917>,  <33.316116, 29.905878, 32.522591>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805538, 30.328833, 32.802917> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.474266, 30.392843, 33.017769>,  <33.275501, 30.431250, 33.146679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.474266, 30.392843, 33.017769>,  <33.805538, 30.328833, 32.802917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474266, 30.392843, 33.017769> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523648, -0.120674, 0.843345,
		0.199774, 0.979709, 0.016143,
		-0.828181, 0.160025, 0.537130,
		33.225811, 30.440851, 33.178909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231659, 30.810499, 32.372093>,  <33.805538, 30.328833, 32.802917>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231659, 30.810499, 32.372093> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.569122, 30.656921, 32.221985>,  <34.771599, 30.564775, 32.131920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.569122, 30.656921, 32.221985>,  <34.231659, 30.810499, 32.372093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569122, 30.656921, 32.221985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400882, 0.014449, -0.916016,
		0.357121, 0.923243, -0.141726,
		0.843658, -0.383944, -0.375271,
		34.822220, 30.541739, 32.109402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417194, 31.270203, 31.851536>,  <34.231659, 30.810499, 32.372093>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417194, 31.270203, 31.851536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.575569, 30.908638, 31.786816>,  <34.670593, 30.691700, 31.747984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.575569, 30.908638, 31.786816>,  <34.417194, 31.270203, 31.851536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575569, 30.908638, 31.786816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339613, 0.019567, -0.940362,
		0.853170, 0.427271, -0.299233,
		0.395934, -0.903912, -0.161801,
		34.694351, 30.637465, 31.738276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637054, 31.402399, 31.257990>,  <34.417194, 31.270203, 31.851536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637054, 31.402399, 31.257990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.646770, 31.002518, 31.257854>,  <34.652599, 30.762589, 31.257772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.646770, 31.002518, 31.257854>,  <34.637054, 31.402399, 31.257990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646770, 31.002518, 31.257854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241571, -0.005539, -0.970368,
		0.970079, 0.023649, -0.241634,
		0.024286, -0.999705, -0.000340,
		34.654057, 30.702606, 31.257753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147556, 31.146078, 30.755972>,  <34.637054, 31.402399, 31.257990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147556, 31.146078, 30.755972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.907784, 30.827318, 30.785984>,  <34.763920, 30.636063, 30.803991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.907784, 30.827318, 30.785984>,  <35.147556, 31.146078, 30.755972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907784, 30.827318, 30.785984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217180, 0.071705, -0.973495,
		0.770399, -0.599839, -0.216053,
		-0.599432, -0.796901, 0.075031,
		34.727955, 30.588247, 30.808493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341465, 30.578196, 30.204002>,  <35.147556, 31.146078, 30.755972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341465, 30.578196, 30.204002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.963078, 30.498560, 30.306381>,  <34.736046, 30.450779, 30.367809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.963078, 30.498560, 30.306381>,  <35.341465, 30.578196, 30.204002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963078, 30.498560, 30.306381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252670, -0.042144, -0.966634,
		0.203235, -0.979074, -0.010438,
		-0.945967, -0.199091, 0.255948,
		34.679287, 30.438833, 30.383165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144535, 30.009497, 29.734674>,  <35.341465, 30.578196, 30.204002>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144535, 30.009497, 29.734674> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.815311, 30.200132, 29.858248>,  <34.617779, 30.314514, 29.932392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.815311, 30.200132, 29.858248>,  <35.144535, 30.009497, 29.734674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815311, 30.200132, 29.858248> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292821, 0.109999, -0.949819,
		-0.486657, -0.872217, 0.049020,
		-0.823056, 0.476590, 0.308935,
		34.568394, 30.343109, 29.950928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656231, 29.720369, 29.339487>,  <35.144535, 30.009497, 29.734674>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656231, 29.720369, 29.339487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.492588, 30.058630, 29.476604>,  <34.394402, 30.261587, 29.558874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.492588, 30.058630, 29.476604>,  <34.656231, 29.720369, 29.339487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492588, 30.058630, 29.476604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297823, 0.231348, -0.926164,
		-0.862516, -0.480991, 0.157209,
		-0.409106, 0.845651, 0.342792,
		34.369858, 30.312325, 29.579441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098312, 29.863541, 28.888029>,  <34.656231, 29.720369, 29.339487>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098312, 29.863541, 28.888029> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.140656, 30.223366, 29.057539>,  <34.166061, 30.439260, 29.159245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.140656, 30.223366, 29.057539>,  <34.098312, 29.863541, 28.888029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140656, 30.223366, 29.057539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478895, 0.419609, -0.771095,
		-0.871467, -0.121321, 0.475213,
		0.105853, 0.899561, 0.423775,
		34.172413, 30.493235, 29.184671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485527, 30.187637, 28.893494>,  <34.098312, 29.863541, 28.888029>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485527, 30.187637, 28.893494> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.734287, 30.499262, 28.925249>,  <33.883541, 30.686237, 28.944302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.734287, 30.499262, 28.925249>,  <33.485527, 30.187637, 28.893494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734287, 30.499262, 28.925249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528126, 0.492104, -0.692038,
		-0.578208, 0.388450, 0.717483,
		0.621899, 0.779063, 0.079388,
		33.920856, 30.732981, 28.949066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120377, 30.718618, 28.553413>,  <33.485527, 30.187637, 28.893494>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120377, 30.718618, 28.553413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.472141, 30.906908, 28.581823>,  <33.683201, 31.019882, 28.598869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.472141, 30.906908, 28.581823>,  <33.120377, 30.718618, 28.553413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472141, 30.906908, 28.581823> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133440, 0.386961, -0.912390,
		-0.456970, 0.792892, 0.403113,
		0.879416, 0.470726, 0.071026,
		33.735966, 31.048126, 28.603130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040871, 31.403938, 28.307493>,  <33.120377, 30.718618, 28.553413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040871, 31.403938, 28.307493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.417770, 31.279884, 28.256927>,  <33.643909, 31.205452, 28.226587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.417770, 31.279884, 28.256927>,  <33.040871, 31.403938, 28.307493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417770, 31.279884, 28.256927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004310, 0.366201, -0.930526,
		0.334884, 0.877332, 0.343716,
		0.942249, -0.310137, -0.126417,
		33.700447, 31.186844, 28.219002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.484360, 31.975014, 28.152933>,  <33.040871, 31.403938, 28.307493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.484360, 31.975014, 28.152933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.666882, 31.655327, 27.996450>,  <33.776394, 31.463514, 27.902561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.666882, 31.655327, 27.996450>,  <33.484360, 31.975014, 28.152933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666882, 31.655327, 27.996450> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058912, 0.411547, -0.909482,
		0.887873, 0.438045, 0.140706,
		0.456301, -0.799216, -0.391208,
		33.803772, 31.415562, 27.879087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988304, 32.245949, 27.826214>,  <33.484360, 31.975014, 28.152933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988304, 32.245949, 27.826214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.942390, 31.883766, 27.662766>,  <33.914841, 31.666456, 27.564697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.942390, 31.883766, 27.662766>,  <33.988304, 32.245949, 27.826214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942390, 31.883766, 27.662766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074278, 0.418011, -0.905400,
		0.990609, -0.073574, -0.115237,
		-0.114784, -0.905458, -0.408621,
		33.907955, 31.612129, 27.540180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468342, 32.150204, 27.193884>,  <33.988304, 32.245949, 27.826214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468342, 32.150204, 27.193884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.166157, 31.892263, 27.147516>,  <33.984844, 31.737499, 27.119696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.166157, 31.892263, 27.147516>,  <34.468342, 32.150204, 27.193884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166157, 31.892263, 27.147516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087783, 0.075706, -0.993259,
		0.649281, -0.760549, -0.000586,
		-0.755466, -0.644852, -0.115918,
		33.939518, 31.698809, 27.112741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184143, 31.918568, 26.867353>,  <34.468342, 32.150204, 27.193884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184143, 31.918568, 26.867353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.504074, 32.089375, 26.698622>,  <35.696033, 32.191860, 26.597383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.504074, 32.089375, 26.698622>,  <35.184143, 31.918568, 26.867353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504074, 32.089375, 26.698622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530762, -0.174954, 0.829266,
		0.280311, -0.887157, -0.366577,
		0.799823, 0.427017, -0.421828,
		35.744022, 32.217480, 26.572073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741959, 31.469107, 26.914536>,  <35.184143, 31.918568, 26.867353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741959, 31.469107, 26.914536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.883648, 31.842644, 26.894672>,  <35.968662, 32.066765, 26.882753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.883648, 31.842644, 26.894672>,  <35.741959, 31.469107, 26.914536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883648, 31.842644, 26.894672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595554, -0.184325, 0.781883,
		0.721002, -0.306534, -0.621445,
		0.354221, 0.933843, -0.049659,
		35.989914, 32.122795, 26.879774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243248, 31.389420, 27.399366>,  <35.741959, 31.469107, 26.914536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243248, 31.389420, 27.399366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.300430, 31.777222, 27.319746>,  <36.334740, 32.009903, 27.271975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.300430, 31.777222, 27.319746>,  <36.243248, 31.389420, 27.399366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300430, 31.777222, 27.319746> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509555, 0.100318, 0.854570,
		0.848480, -0.223592, -0.479676,
		0.142955, 0.969507, -0.199050,
		36.343315, 32.068073, 27.260031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998379, 31.507317, 27.412746>,  <36.243248, 31.389420, 27.399366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998379, 31.507317, 27.412746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.806805, 31.850771, 27.485807>,  <36.691860, 32.056843, 27.529644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.806805, 31.850771, 27.485807>,  <36.998379, 31.507317, 27.412746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806805, 31.850771, 27.485807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554397, 0.134523, 0.821308,
		0.680634, 0.494618, -0.540454,
		-0.478937, 0.858636, 0.182654,
		36.663124, 32.108360, 27.540604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489796, 31.979345, 27.472603>,  <36.998379, 31.507317, 27.412746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489796, 31.979345, 27.472603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.172615, 32.105133, 27.681345>,  <36.982307, 32.180607, 27.806591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.172615, 32.105133, 27.681345>,  <37.489796, 31.979345, 27.472603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172615, 32.105133, 27.681345> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574598, 0.101114, 0.812166,
		0.202635, 0.943867, -0.260872,
		-0.792954, 0.314470, 0.521855,
		36.934731, 32.199474, 27.837902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781136, 32.470997, 27.966059>,  <37.489796, 31.979345, 27.472603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781136, 32.470997, 27.966059> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.416470, 32.374744, 28.099302>,  <37.197670, 32.316994, 28.179249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.416470, 32.374744, 28.099302>,  <37.781136, 32.470997, 27.966059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416470, 32.374744, 28.099302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318808, 0.097291, 0.942813,
		-0.259281, 0.965728, -0.011981,
		-0.911666, -0.240634, 0.333107,
		37.142971, 32.302555, 28.199234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799709, 32.812286, 28.582333>,  <37.781136, 32.470997, 27.966059>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799709, 32.812286, 28.582333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.480278, 32.578289, 28.638973>,  <37.288620, 32.437889, 28.672956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.480278, 32.578289, 28.638973>,  <37.799709, 32.812286, 28.582333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480278, 32.578289, 28.638973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140833, 0.047118, 0.988912,
		-0.585183, 0.809665, 0.044760,
		-0.798578, -0.584998, 0.141600,
		37.240704, 32.402790, 28.681454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372860, 33.222054, 29.119188>,  <37.799709, 32.812286, 28.582333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372860, 33.222054, 29.119188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.225227, 32.851173, 29.144743>,  <37.136646, 32.628647, 29.160076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.225227, 32.851173, 29.144743>,  <37.372860, 33.222054, 29.119188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225227, 32.851173, 29.144743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003484, 0.070117, 0.997533,
		-0.929391, 0.367947, -0.029109,
		-0.369080, -0.927199, 0.063885,
		37.114502, 32.573013, 29.163908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681805, 33.193295, 29.614365>,  <37.372860, 33.222054, 29.119188>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681805, 33.193295, 29.614365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.873314, 32.843132, 29.587687>,  <36.988220, 32.633034, 29.571680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.873314, 32.843132, 29.587687>,  <36.681805, 33.193295, 29.614365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873314, 32.843132, 29.587687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117142, -0.011590, 0.993048,
		-0.870089, -0.483256, 0.096998,
		0.478772, -0.875403, -0.066694,
		37.016945, 32.580513, 29.567678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505116, 32.894089, 30.289167>,  <36.681805, 33.193295, 29.614365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505116, 32.894089, 30.289167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.783119, 32.649269, 30.138247>,  <36.949921, 32.502377, 30.047695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.783119, 32.649269, 30.138247>,  <36.505116, 32.894089, 30.289167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783119, 32.649269, 30.138247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247158, -0.289403, 0.924748,
		-0.675186, -0.735960, -0.049864,
		0.695008, -0.612052, -0.377300,
		36.991623, 32.465652, 30.025057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532784, 32.220146, 30.781105>,  <36.505116, 32.894089, 30.289167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532784, 32.220146, 30.781105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.875923, 32.251999, 30.578026>,  <37.081806, 32.271111, 30.456179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.875923, 32.251999, 30.578026>,  <36.532784, 32.220146, 30.781105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875923, 32.251999, 30.578026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503852, -0.324767, 0.800412,
		-0.101142, -0.942435, -0.318725,
		0.857848, 0.079635, -0.507696,
		37.133278, 32.275890, 30.425716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762047, 31.624113, 30.807623>,  <36.532784, 32.220146, 30.781105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762047, 31.624113, 30.807623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.098549, 31.832436, 30.749578>,  <37.300449, 31.957428, 30.714752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.098549, 31.832436, 30.749578>,  <36.762047, 31.624113, 30.807623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098549, 31.832436, 30.749578> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312197, -0.248830, 0.916851,
		0.441393, -0.816606, -0.371923,
		0.841252, 0.520805, -0.145110,
		37.350925, 31.988678, 30.706045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369038, 31.221245, 30.998955>,  <36.762047, 31.624113, 30.807623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369038, 31.221245, 30.998955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.485012, 31.601959, 31.039047>,  <37.554596, 31.830387, 31.063103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.485012, 31.601959, 31.039047>,  <37.369038, 31.221245, 30.998955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485012, 31.601959, 31.039047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437092, -0.224857, 0.870856,
		0.851405, -0.208677, -0.481211,
		0.289931, 0.951784, 0.100233,
		37.571991, 31.887495, 31.069117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109734, 31.160263, 31.168673>,  <37.369038, 31.221245, 30.998955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109734, 31.160263, 31.168673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.995316, 31.517597, 31.307312>,  <37.926666, 31.731998, 31.390495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.995316, 31.517597, 31.307312>,  <38.109734, 31.160263, 31.168673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995316, 31.517597, 31.307312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450943, -0.193653, 0.871291,
		0.845475, 0.405526, -0.347450,
		-0.286046, 0.893335, 0.346598,
		37.909500, 31.785597, 31.411291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<37.512932, 35.829704, 25.752527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.190250, 35.600807, 25.811544>,  <36.996643, 35.463470, 25.846954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.190250, 35.600807, 25.811544>,  <37.512932, 35.829704, 25.752527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190250, 35.600807, 25.811544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230938, 0.075449, -0.970039,
		0.543964, -0.816607, -0.193017,
		-0.806704, -0.572241, 0.147544,
		36.948238, 35.429134, 25.855808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618313, 35.282352, 25.237442>,  <37.512932, 35.829704, 25.752527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618313, 35.282352, 25.237442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.243195, 35.323669, 25.370026>,  <37.018124, 35.348461, 25.449575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.243195, 35.323669, 25.370026>,  <37.618313, 35.282352, 25.237442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243195, 35.323669, 25.370026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319674, 0.115519, -0.940459,
		-0.135434, -0.987920, -0.075313,
		-0.937799, 0.103294, 0.331458,
		36.961857, 35.354656, 25.469463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237583, 34.805740, 24.832951>,  <37.618313, 35.282352, 25.237442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237583, 34.805740, 24.832951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.961838, 35.060520, 24.970980>,  <36.796391, 35.213387, 25.053797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.961838, 35.060520, 24.970980>,  <37.237583, 34.805740, 24.832951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961838, 35.060520, 24.970980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513356, -0.093437, -0.853074,
		-0.511120, -0.765224, 0.391393,
		-0.689363, 0.636947, 0.345075,
		36.755028, 35.251606, 25.074503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727646, 34.490067, 24.549217>,  <37.237583, 34.805740, 24.832951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727646, 34.490067, 24.549217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.581982, 34.850639, 24.642864>,  <36.494583, 35.066982, 24.699053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.581982, 34.850639, 24.642864>,  <36.727646, 34.490067, 24.549217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581982, 34.850639, 24.642864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528991, 0.006695, -0.848601,
		-0.766523, -0.432871, 0.474411,
		-0.364159, 0.901431, 0.234117,
		36.472733, 35.121067, 24.713099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059330, 34.383923, 24.449657>,  <36.727646, 34.490067, 24.549217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059330, 34.383923, 24.449657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.103836, 34.781044, 24.431929>,  <36.130539, 35.019318, 24.421291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.103836, 34.781044, 24.431929>,  <36.059330, 34.383923, 24.449657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103836, 34.781044, 24.431929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726087, 0.050763, -0.685727,
		-0.678541, 0.108480, 0.726509,
		0.111267, 0.992802, -0.044321,
		36.137215, 35.078884, 24.418633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371914, 34.663094, 24.373177>,  <36.059330, 34.383923, 24.449657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371914, 34.663094, 24.373177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.618370, 34.950771, 24.244719>,  <35.766243, 35.123379, 24.167645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.618370, 34.950771, 24.244719>,  <35.371914, 34.663094, 24.373177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618370, 34.950771, 24.244719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633287, 0.209912, -0.744906,
		-0.468321, 0.662340, 0.584791,
		0.616136, 0.719196, -0.321145,
		35.803211, 35.166531, 24.148375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012009, 35.276955, 24.353027>,  <35.371914, 34.663094, 24.373177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012009, 35.276955, 24.353027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.287434, 35.296692, 24.063627>,  <35.452686, 35.308533, 23.889988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.287434, 35.296692, 24.063627>,  <35.012009, 35.276955, 24.353027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287434, 35.296692, 24.063627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712085, 0.234740, -0.661688,
		0.137184, 0.970805, 0.196770,
		0.688560, 0.049344, -0.723498,
		35.494003, 35.311497, 23.846579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832661, 35.917164, 24.067730>,  <35.012009, 35.276955, 24.353027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832661, 35.917164, 24.067730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.058285, 35.725643, 23.798634>,  <35.193661, 35.610729, 23.637175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.058285, 35.725643, 23.798634>,  <34.832661, 35.917164, 24.067730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058285, 35.725643, 23.798634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642539, 0.257208, -0.721795,
		0.518634, 0.839398, -0.162571,
		0.564059, -0.478806, -0.672742,
		35.227501, 35.582001, 23.596811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854130, 36.364834, 23.457279>,  <34.832661, 35.917164, 24.067730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854130, 36.364834, 23.457279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.986980, 36.018650, 23.307257>,  <35.066692, 35.810940, 23.217243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.986980, 36.018650, 23.307257>,  <34.854130, 36.364834, 23.457279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986980, 36.018650, 23.307257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402383, 0.229631, -0.886204,
		0.853100, 0.445249, -0.271980,
		0.332127, -0.865461, -0.375058,
		35.086620, 35.759010, 23.194738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154263, 36.525314, 22.755648>,  <34.854130, 36.364834, 23.457279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154263, 36.525314, 22.755648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.074718, 36.133545, 22.769390>,  <35.026993, 35.898483, 22.777636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.074718, 36.133545, 22.769390>,  <35.154263, 36.525314, 22.755648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074718, 36.133545, 22.769390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683412, 0.113463, -0.721162,
		0.702426, -0.166892, -0.691914,
		-0.198863, -0.979425, 0.034356,
		35.015060, 35.839718, 22.779697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165070, 36.344872, 22.063753>,  <35.154263, 36.525314, 22.755648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165070, 36.344872, 22.063753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.942089, 36.076416, 22.259232>,  <34.808300, 35.915344, 22.376518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.942089, 36.076416, 22.259232>,  <35.165070, 36.344872, 22.063753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942089, 36.076416, 22.259232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742693, 0.140069, -0.654819,
		0.371024, -0.727977, -0.576533,
		-0.557448, -0.671141, 0.488694,
		34.774853, 35.875072, 22.405840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798988, 35.865459, 21.481297>,  <35.165070, 36.344872, 22.063753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798988, 35.865459, 21.481297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.589039, 35.802502, 21.815897>,  <34.463070, 35.764729, 22.016657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.589039, 35.802502, 21.815897>,  <34.798988, 35.865459, 21.481297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589039, 35.802502, 21.815897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848127, 0.179862, -0.498327,
		-0.072022, -0.971019, -0.227894,
		-0.524874, -0.157392, 0.836502,
		34.431576, 35.755283, 22.066847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279377, 35.336140, 21.421093>,  <34.798988, 35.865459, 21.481297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279377, 35.336140, 21.421093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.200195, 35.633255, 21.676929>,  <34.152687, 35.811523, 21.830431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.200195, 35.633255, 21.676929>,  <34.279377, 35.336140, 21.421093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200195, 35.633255, 21.676929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856027, 0.186871, -0.481972,
		-0.477525, -0.642916, 0.598856,
		-0.197959, 0.742791, 0.639589,
		34.140808, 35.856091, 21.868807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609997, 35.163910, 21.675035>,  <34.279377, 35.336140, 21.421093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609997, 35.163910, 21.675035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.700901, 35.550293, 21.625587>,  <33.755444, 35.782124, 21.595919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.700901, 35.550293, 21.625587>,  <33.609997, 35.163910, 21.675035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700901, 35.550293, 21.625587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759771, 0.096465, -0.642995,
		-0.609180, 0.240050, 0.755828,
		0.227262, 0.965956, -0.123619,
		33.769081, 35.840080, 21.588501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975052, 34.480515, 21.668036>,  <33.609997, 35.163910, 21.675035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975052, 34.480515, 21.668036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.735348, 34.160500, 21.656599>,  <33.591526, 33.968491, 21.649736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.735348, 34.160500, 21.656599>,  <33.975052, 34.480515, 21.668036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735348, 34.160500, 21.656599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435871, -0.356026, 0.826596,
		-0.671491, 0.482886, 0.562068,
		-0.599263, -0.800041, -0.028592,
		33.555569, 33.920486, 21.648022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661694, 34.366898, 22.348358>,  <33.975052, 34.480515, 21.668036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661694, 34.366898, 22.348358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.723080, 34.026840, 22.146885>,  <33.759911, 33.822803, 22.026001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.723080, 34.026840, 22.146885>,  <33.661694, 34.366898, 22.348358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723080, 34.026840, 22.146885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431300, -0.400976, 0.808206,
		-0.889060, -0.341272, 0.305132,
		0.153468, -0.850148, -0.503683,
		33.769119, 33.771797, 21.995781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394878, 33.761730, 22.712706>,  <33.661694, 34.366898, 22.348358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394878, 33.761730, 22.712706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.715103, 33.646229, 22.502670>,  <33.907238, 33.576927, 22.376650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.715103, 33.646229, 22.502670>,  <33.394878, 33.761730, 22.712706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715103, 33.646229, 22.502670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381911, -0.429379, 0.818399,
		-0.461780, -0.855718, -0.233466,
		0.800564, -0.288757, -0.525087,
		33.955273, 33.559601, 22.345144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698956, 33.318069, 23.170679>,  <33.394878, 33.761730, 22.712706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698956, 33.318069, 23.170679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.996605, 33.361973, 22.907095>,  <34.175194, 33.388313, 22.748943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.996605, 33.361973, 22.907095>,  <33.698956, 33.318069, 23.170679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996605, 33.361973, 22.907095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635471, -0.420539, 0.647552,
		-0.206045, -0.900611, -0.382682,
		0.744125, 0.109758, -0.658962,
		34.219841, 33.394901, 22.709406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932289, 32.609371, 23.024960>,  <33.698956, 33.318069, 23.170679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932289, 32.609371, 23.024960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.224190, 32.872437, 22.950191>,  <34.399330, 33.030277, 22.905331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.224190, 32.872437, 22.950191>,  <33.932289, 32.609371, 23.024960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224190, 32.872437, 22.950191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605543, -0.494760, 0.623321,
		0.317454, -0.568060, -0.759297,
		0.729753, 0.657663, -0.186921,
		34.443115, 33.069736, 22.894115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473133, 32.184647, 22.948338>,  <33.932289, 32.609371, 23.024960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473133, 32.184647, 22.948338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.622223, 32.551182, 23.006861>,  <34.711678, 32.771103, 23.041975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.622223, 32.551182, 23.006861>,  <34.473133, 32.184647, 22.948338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622223, 32.551182, 23.006861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627656, -0.365087, 0.687575,
		0.683465, -0.164444, -0.711220,
		0.372724, 0.916335, 0.146310,
		34.734039, 32.826084, 23.050755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302391, 32.111580, 23.062441>,  <34.473133, 32.184647, 22.948338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302391, 32.111580, 23.062441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.199829, 32.460873, 23.228201>,  <35.138290, 32.670448, 23.327658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.199829, 32.460873, 23.228201>,  <35.302391, 32.111580, 23.062441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199829, 32.460873, 23.228201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526652, -0.233287, 0.817444,
		0.810489, 0.427845, -0.400071,
		-0.256408, 0.873227, 0.414402,
		35.122906, 32.722839, 23.352522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919132, 32.401367, 23.329044>,  <35.302391, 32.111580, 23.062441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919132, 32.401367, 23.329044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.609077, 32.561207, 23.524792>,  <35.423046, 32.657112, 23.642241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.609077, 32.561207, 23.524792>,  <35.919132, 32.401367, 23.329044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609077, 32.561207, 23.524792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497061, -0.092416, 0.862780,
		0.389994, 0.912019, -0.126991,
		-0.775135, 0.399602, 0.489371,
		35.376537, 32.681087, 23.671602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209389, 32.716396, 23.951349>,  <35.919132, 32.401367, 23.329044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209389, 32.716396, 23.951349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.823849, 32.750217, 24.052416>,  <35.592525, 32.770508, 24.113056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.823849, 32.750217, 24.052416>,  <36.209389, 32.716396, 23.951349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823849, 32.750217, 24.052416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257837, 0.056973, 0.964507,
		0.067153, 0.994789, -0.076714,
		-0.963852, 0.084549, 0.252667,
		35.534695, 32.775581, 24.128216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191483, 33.205429, 24.505442>,  <36.209389, 32.716396, 23.951349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191483, 33.205429, 24.505442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.867081, 32.972710, 24.530043>,  <35.672440, 32.833076, 24.544804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.867081, 32.972710, 24.530043>,  <36.191483, 33.205429, 24.505442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867081, 32.972710, 24.530043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145218, -0.098352, 0.984499,
		-0.566735, 0.807362, 0.164252,
		-0.811001, -0.581802, 0.061504,
		35.623779, 32.798168, 24.548494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910057, 33.362968, 25.154335>,  <36.191483, 33.205429, 24.505442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910057, 33.362968, 25.154335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.708073, 33.027336, 25.073393>,  <35.586880, 32.825954, 25.024828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.708073, 33.027336, 25.073393>,  <35.910057, 33.362968, 25.154335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708073, 33.027336, 25.073393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129118, -0.158368, 0.978901,
		-0.853428, 0.520437, -0.028371,
		-0.504964, -0.839086, -0.202354,
		35.556583, 32.775612, 25.012686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394409, 33.449421, 25.561758>,  <35.910057, 33.362968, 25.154335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394409, 33.449421, 25.561758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.443523, 33.063389, 25.469206>,  <35.472992, 32.831768, 25.413673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.443523, 33.063389, 25.469206>,  <35.394409, 33.449421, 25.561758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443523, 33.063389, 25.469206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068492, -0.224350, 0.972099,
		-0.990067, -0.135203, 0.038555,
		0.122781, -0.965084, -0.231382,
		35.480358, 32.773865, 25.399792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929989, 33.096340, 26.017332>,  <35.394409, 33.449421, 25.561758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929989, 33.096340, 26.017332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.223541, 32.844063, 25.916420>,  <35.399673, 32.692696, 25.855873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.223541, 32.844063, 25.916420>,  <34.929989, 33.096340, 26.017332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223541, 32.844063, 25.916420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092150, -0.275525, 0.956867,
		-0.673003, -0.725470, -0.144082,
		0.733876, -0.630697, -0.252281,
		35.443703, 32.654854, 25.840736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864811, 32.508587, 26.510756>,  <34.929989, 33.096340, 26.017332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864811, 32.508587, 26.510756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.225105, 32.464119, 26.342794>,  <35.441280, 32.437439, 26.242018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.225105, 32.464119, 26.342794>,  <34.864811, 32.508587, 26.510756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225105, 32.464119, 26.342794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381836, -0.258198, 0.887432,
		-0.207074, -0.959675, -0.190119,
		0.900734, -0.111170, -0.419905,
		35.495327, 32.430767, 26.216824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570133, 31.931633, 26.370611>,  <34.864811, 32.508587, 26.510756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570133, 31.931633, 26.370611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.214050, 31.789787, 26.484997>,  <34.000401, 31.704679, 26.553629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.214050, 31.789787, 26.484997>,  <34.570133, 31.931633, 26.370611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214050, 31.789787, 26.484997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399295, 0.305204, -0.864531,
		0.219298, -0.883798, -0.413292,
		-0.890209, -0.354616, 0.285965,
		33.946987, 31.683403, 26.570786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410568, 31.485020, 25.937794>,  <34.570133, 31.931633, 26.370611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410568, 31.485020, 25.937794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.048130, 31.559034, 26.089983>,  <33.830669, 31.603443, 26.181295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.048130, 31.559034, 26.089983>,  <34.410568, 31.485020, 25.937794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048130, 31.559034, 26.089983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362259, 0.125237, -0.923626,
		-0.218552, -0.974719, -0.046446,
		-0.906092, 0.185035, 0.380471,
		33.776302, 31.614544, 26.204124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962269, 31.099146, 25.615427>,  <34.410568, 31.485020, 25.937794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962269, 31.099146, 25.615427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.701366, 31.363228, 25.764389>,  <33.544823, 31.521677, 25.853767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.701366, 31.363228, 25.764389>,  <33.962269, 31.099146, 25.615427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701366, 31.363228, 25.764389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473891, 0.028273, -0.880130,
		-0.591596, -0.750553, 0.294424,
		-0.652259, 0.660205, 0.372406,
		33.505688, 31.561289, 25.876110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366653, 30.857504, 25.329502>,  <33.962269, 31.099146, 25.615427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366653, 30.857504, 25.329502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.300213, 31.237009, 25.437027>,  <33.260349, 31.464712, 25.501543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.300213, 31.237009, 25.437027>,  <33.366653, 30.857504, 25.329502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300213, 31.237009, 25.437027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427240, 0.176448, -0.886753,
		-0.888750, -0.262136, 0.376042,
		-0.166098, 0.948763, 0.268813,
		33.250385, 31.521637, 25.517672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.639610, 30.959608, 25.333530>,  <33.366653, 30.857504, 25.329502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.639610, 30.959608, 25.333530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.771992, 31.334339, 25.288235>,  <32.851421, 31.559177, 25.261057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.771992, 31.334339, 25.288235>,  <32.639610, 30.959608, 25.333530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771992, 31.334339, 25.288235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692998, 0.159839, -0.702997,
		-0.640487, 0.311134, 0.702120,
		0.330952, 0.936828, -0.113240,
		32.871277, 31.615387, 25.254263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.083019, 31.372917, 25.359154>,  <32.639610, 30.959608, 25.333530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.083019, 31.372917, 25.359154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.346188, 31.614019, 25.178566>,  <32.504089, 31.758680, 25.070213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.346188, 31.614019, 25.178566>,  <32.083019, 31.372917, 25.359154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.346188, 31.614019, 25.178566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652188, 0.156280, -0.741774,
		-0.376553, 0.782471, 0.495930,
		0.657920, 0.602756, -0.451471,
		32.543564, 31.794846, 25.043125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853865, 32.066166, 25.251886>,  <32.083019, 31.372917, 25.359154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853865, 32.066166, 25.251886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.107697, 32.044270, 24.943520>,  <32.259995, 32.031132, 24.758499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.107697, 32.044270, 24.943520>,  <31.853865, 32.066166, 25.251886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107697, 32.044270, 24.943520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672241, 0.453047, -0.585525,
		0.381314, 0.889804, 0.250695,
		0.634580, -0.054741, -0.770916,
		32.298069, 32.027847, 24.712244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.726231, 32.615360, 25.693090>,  <31.853865, 32.066166, 25.251886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.726231, 32.615360, 25.693090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.416203, 32.760750, 25.899837>,  <31.230185, 32.847984, 26.023886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.416203, 32.760750, 25.899837>,  <31.726231, 32.615360, 25.693090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416203, 32.760750, 25.899837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391801, -0.365304, 0.844420,
		0.495737, 0.856995, 0.140728,
		-0.775072, 0.363473, 0.516867,
		31.183681, 32.869793, 26.054897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.996283, 32.971577, 26.221626>,  <31.726231, 32.615360, 25.693090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.996283, 32.971577, 26.221626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.624502, 32.897278, 26.349140>,  <31.401434, 32.852699, 26.425648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.624502, 32.897278, 26.349140>,  <31.996283, 32.971577, 26.221626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.624502, 32.897278, 26.349140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366369, -0.362613, 0.856905,
		-0.043573, 0.913241, 0.405083,
		-0.929449, -0.185747, 0.318783,
		31.345667, 32.841553, 26.444775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.905523, 33.289547, 26.967297>,  <31.996283, 32.971577, 26.221626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.905523, 33.289547, 26.967297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.606707, 33.027508, 26.922071>,  <31.427418, 32.870285, 26.894938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.606707, 33.027508, 26.922071>,  <31.905523, 33.289547, 26.967297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.606707, 33.027508, 26.922071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086959, -0.264908, 0.960345,
		-0.659067, 0.707584, 0.254863,
		-0.747040, -0.655094, -0.113062,
		31.382595, 32.830978, 26.888153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330042, 33.443146, 27.528751>,  <31.905523, 33.289547, 26.967297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330042, 33.443146, 27.528751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.286692, 33.066063, 27.402536>,  <31.260681, 32.839813, 27.326809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.286692, 33.066063, 27.402536>,  <31.330042, 33.443146, 27.528751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.286692, 33.066063, 27.402536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157978, -0.329703, 0.930773,
		-0.981477, 0.051027, 0.184659,
		-0.108377, -0.942705, -0.315535,
		31.254179, 32.783253, 27.307877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.928713, 33.119888, 28.083153>,  <31.330042, 33.443146, 27.528751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.928713, 33.119888, 28.083153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.098246, 32.811836, 27.892464>,  <31.199965, 32.627003, 27.778051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.098246, 32.811836, 27.892464>,  <30.928713, 33.119888, 28.083153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098246, 32.811836, 27.892464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190129, -0.438958, 0.878161,
		-0.885561, -0.462831, -0.039620,
		0.423831, -0.770132, -0.476722,
		31.225395, 32.580795, 27.749447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718613, 32.435814, 28.439922>,  <30.928713, 33.119888, 28.083153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718613, 32.435814, 28.439922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.050079, 32.331394, 28.241867>,  <31.248960, 32.268742, 28.123034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.050079, 32.331394, 28.241867>,  <30.718613, 32.435814, 28.439922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050079, 32.331394, 28.241867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290631, -0.555338, 0.779187,
		-0.478373, -0.789592, -0.384324,
		0.828670, -0.261045, -0.495138,
		31.298679, 32.253078, 28.093325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.705135, 31.740694, 28.505693>,  <30.718613, 32.435814, 28.439922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.705135, 31.740694, 28.505693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.087448, 31.848675, 28.459036>,  <31.316835, 31.913464, 28.431042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.087448, 31.848675, 28.459036>,  <30.705135, 31.740694, 28.505693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.087448, 31.848675, 28.459036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227324, -0.426596, 0.875409,
		0.186561, -0.863215, -0.469100,
		0.955782, 0.269955, -0.116643,
		31.374184, 31.929661, 28.424044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.930540, 35.865524, 23.796740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.321404, 35.862339, 23.711798>,  <32.555923, 35.860428, 23.660831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.321404, 35.862339, 23.711798>,  <31.930540, 35.865524, 23.796740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321404, 35.862339, 23.711798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197690, -0.332533, 0.922139,
		-0.077958, -0.943058, -0.323364,
		0.977160, -0.007962, -0.212357,
		32.614552, 35.859951, 23.648090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117691, 35.268085, 24.164061>,  <31.930540, 35.865524, 23.796740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117691, 35.268085, 24.164061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.447742, 35.483849, 24.096889>,  <32.645775, 35.613304, 24.056587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.447742, 35.483849, 24.096889>,  <32.117691, 35.268085, 24.164061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447742, 35.483849, 24.096889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284826, -0.140500, 0.948227,
		0.487886, -0.830241, -0.269567,
		0.825131, 0.539406, -0.167927,
		32.695282, 35.645672, 24.046511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689240, 34.856960, 24.422810>,  <32.117691, 35.268085, 24.164061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689240, 34.856960, 24.422810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.810734, 35.238064, 24.423252>,  <32.883633, 35.466724, 24.423517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.810734, 35.238064, 24.423252>,  <32.689240, 34.856960, 24.422810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810734, 35.238064, 24.423252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253142, -0.081821, 0.963963,
		0.918511, -0.292513, -0.266034,
		0.303738, 0.952755, 0.001106,
		32.901855, 35.523891, 24.423584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428368, 34.968655, 24.800522>,  <32.689240, 34.856960, 24.422810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428368, 34.968655, 24.800522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.273327, 35.337360, 24.796133>,  <33.180302, 35.558582, 24.793501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.273327, 35.337360, 24.796133>,  <33.428368, 34.968655, 24.800522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273327, 35.337360, 24.796133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289340, 0.132951, 0.947949,
		0.875241, 0.364253, -0.318235,
		-0.387603, 0.921761, -0.010971,
		33.157047, 35.613888, 24.792841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908710, 35.355156, 25.097685>,  <33.428368, 34.968655, 24.800522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908710, 35.355156, 25.097685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.579205, 35.581085, 25.117249>,  <33.381500, 35.716640, 25.128986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.579205, 35.581085, 25.117249>,  <33.908710, 35.355156, 25.097685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579205, 35.581085, 25.117249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272705, 0.319129, 0.907628,
		0.497039, 0.761008, -0.416916,
		-0.823762, 0.564821, 0.048912,
		33.332077, 35.750530, 25.131922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117134, 35.985577, 25.346558>,  <33.908710, 35.355156, 25.097685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117134, 35.985577, 25.346558> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.725441, 36.008862, 25.424248>,  <33.490425, 36.022835, 25.470861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.725441, 36.008862, 25.424248>,  <34.117134, 35.985577, 25.346558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725441, 36.008862, 25.424248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202695, 0.305338, 0.930421,
		-0.005139, 0.950463, -0.310795,
		-0.979228, 0.058216, 0.194223,
		33.431671, 36.026325, 25.482515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969109, 36.672253, 25.685324>,  <34.117134, 35.985577, 25.346558>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969109, 36.672253, 25.685324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.662819, 36.425499, 25.758125>,  <33.479046, 36.277447, 25.801805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.662819, 36.425499, 25.758125>,  <33.969109, 36.672253, 25.685324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662819, 36.425499, 25.758125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007625, 0.274254, 0.961627,
		-0.643124, 0.737729, -0.205300,
		-0.765724, -0.616880, 0.182005,
		33.433102, 36.240437, 25.812727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698620, 36.984722, 26.245588>,  <33.969109, 36.672253, 25.685324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698620, 36.984722, 26.245588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.471146, 36.655781, 26.252907>,  <33.334660, 36.458416, 26.257298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.471146, 36.655781, 26.252907>,  <33.698620, 36.984722, 26.245588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471146, 36.655781, 26.252907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244155, 0.189999, 0.950941,
		-0.785485, 0.536318, -0.308831,
		-0.568684, -0.822352, 0.018296,
		33.300541, 36.409077, 26.258396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080986, 37.211735, 26.485687>,  <33.698620, 36.984722, 26.245588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080986, 37.211735, 26.485687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.136578, 36.825390, 26.573132>,  <33.169933, 36.593582, 26.625597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.136578, 36.825390, 26.573132>,  <33.080986, 37.211735, 26.485687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136578, 36.825390, 26.573132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255240, 0.178358, 0.950285,
		-0.956838, -0.187863, -0.221740,
		0.138974, -0.965865, 0.218610,
		33.178268, 36.535629, 26.638714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629765, 36.960846, 27.055292>,  <33.080986, 37.211735, 26.485687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629765, 36.960846, 27.055292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.913536, 36.679245, 27.068497>,  <33.083801, 36.510284, 27.076420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.913536, 36.679245, 27.068497>,  <32.629765, 36.960846, 27.055292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913536, 36.679245, 27.068497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055880, 0.102879, 0.993123,
		-0.702556, -0.702708, 0.112326,
		0.709431, -0.704001, 0.033011,
		33.126366, 36.468044, 27.078400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492832, 36.601818, 27.615236>,  <32.629765, 36.960846, 27.055292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492832, 36.601818, 27.615236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.873482, 36.508366, 27.535402>,  <33.101871, 36.452293, 27.487503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.873482, 36.508366, 27.535402>,  <32.492832, 36.601818, 27.615236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873482, 36.508366, 27.535402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210209, 0.021238, 0.977426,
		-0.224120, -0.972093, 0.069323,
		0.951621, -0.233633, -0.199583,
		33.158970, 36.438274, 27.475527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596809, 36.105873, 28.070784>,  <32.492832, 36.601818, 27.615236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596809, 36.105873, 28.070784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.943741, 36.269863, 27.957884>,  <33.151897, 36.368256, 27.890144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.943741, 36.269863, 27.957884>,  <32.596809, 36.105873, 28.070784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943741, 36.269863, 27.957884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352225, -0.104877, 0.930021,
		0.351684, -0.906047, -0.235366,
		0.867327, 0.409975, -0.282249,
		33.203938, 36.392857, 27.873209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393322, 35.495674, 28.480312>,  <32.596809, 36.105873, 28.070784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393322, 35.495674, 28.480312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.057392, 35.685799, 28.585215>,  <31.855835, 35.799873, 28.648155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.057392, 35.685799, 28.585215>,  <32.393322, 35.495674, 28.480312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057392, 35.685799, 28.585215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245752, 0.097884, -0.964378,
		-0.484047, -0.874357, 0.034602,
		-0.839824, 0.475308, 0.262256,
		31.805445, 35.828392, 28.663891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933855, 35.166122, 28.049643>,  <32.393322, 35.495674, 28.480312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933855, 35.166122, 28.049643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.686808, 35.456829, 28.169882>,  <31.538578, 35.631252, 28.242025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.686808, 35.456829, 28.169882>,  <31.933855, 35.166122, 28.049643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.686808, 35.456829, 28.169882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451322, -0.014501, -0.892243,
		-0.644092, -0.686733, 0.336962,
		-0.617620, 0.726765, 0.300598,
		31.501522, 35.674858, 28.260061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.425360, 35.161312, 27.562561>,  <31.933855, 35.166122, 28.049643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.425360, 35.161312, 27.562561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.323112, 35.508457, 27.732960>,  <31.261765, 35.716743, 27.835199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.323112, 35.508457, 27.732960>,  <31.425360, 35.161312, 27.562561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.323112, 35.508457, 27.732960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503663, 0.256571, -0.824921,
		-0.825216, -0.425426, 0.371525,
		-0.255620, 0.867862, 0.425998,
		31.246426, 35.768814, 27.860760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.686832, 35.279819, 27.664967>,  <31.425360, 35.161312, 27.562561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.686832, 35.279819, 27.664967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.866371, 35.634964, 27.624510>,  <30.974094, 35.848053, 27.600235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.866371, 35.634964, 27.624510>,  <30.686832, 35.279819, 27.664967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.866371, 35.634964, 27.624510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513334, 0.163539, -0.842463,
		-0.731453, 0.430057, 0.529176,
		0.448848, 0.887866, -0.101142,
		31.001026, 35.901325, 27.594168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.130646, 35.807026, 27.577681>,  <30.686832, 35.279819, 27.664967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.130646, 35.807026, 27.577681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.468714, 35.958229, 27.426525>,  <30.671555, 36.048950, 27.335833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.468714, 35.958229, 27.426525>,  <30.130646, 35.807026, 27.577681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.468714, 35.958229, 27.426525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457288, 0.145348, -0.877360,
		-0.276724, 0.914322, 0.295702,
		0.845169, 0.378008, -0.377888,
		30.722265, 36.071632, 27.313158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.920403, 36.309635, 27.242743>,  <30.130646, 35.807026, 27.577681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.920403, 36.309635, 27.242743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.280027, 36.256794, 27.075779>,  <30.495802, 36.225090, 26.975601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.280027, 36.256794, 27.075779>,  <29.920403, 36.309635, 27.242743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.280027, 36.256794, 27.075779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357082, 0.330394, -0.873689,
		0.253330, 0.934552, 0.249872,
		0.899064, -0.132107, -0.417411,
		30.549747, 36.217163, 26.950556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.177164, 36.936024, 26.801523>,  <29.920403, 36.309635, 27.242743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.177164, 36.936024, 26.801523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.381193, 36.614105, 26.680113>,  <30.503611, 36.420956, 26.607267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.381193, 36.614105, 26.680113>,  <30.177164, 36.936024, 26.801523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.381193, 36.614105, 26.680113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186471, 0.241023, -0.952437,
		0.839674, 0.542413, -0.027131,
		0.510075, -0.804796, -0.303525,
		30.534216, 36.372665, 26.589056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.672060, 37.182507, 26.286386>,  <30.177164, 36.936024, 26.801523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.672060, 37.182507, 26.286386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.623474, 36.788448, 26.237837>,  <30.594322, 36.552013, 26.208706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.623474, 36.788448, 26.237837>,  <30.672060, 37.182507, 26.286386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.623474, 36.788448, 26.237837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019952, 0.124680, -0.991996,
		0.992395, -0.118072, -0.034800,
		-0.121466, -0.985147, -0.121376,
		30.587034, 36.492905, 26.201424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.168833, 37.085556, 25.881369>,  <30.672060, 37.182507, 26.286386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.168833, 37.085556, 25.881369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.911058, 36.787579, 25.812357>,  <30.756393, 36.608791, 25.770950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.911058, 36.787579, 25.812357>,  <31.168833, 37.085556, 25.881369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.911058, 36.787579, 25.812357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026521, 0.247269, -0.968584,
		0.764201, -0.619612, -0.179105,
		-0.644433, -0.744942, -0.172531,
		30.717728, 36.564095, 25.760597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347290, 36.814930, 25.263666>,  <31.168833, 37.085556, 25.881369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347290, 36.814930, 25.263666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.983456, 36.650459, 25.287621>,  <30.765154, 36.551777, 25.301992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.983456, 36.650459, 25.287621>,  <31.347290, 36.814930, 25.263666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.983456, 36.650459, 25.287621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119293, 0.120360, -0.985537,
		0.398022, -0.903575, -0.158528,
		-0.909587, -0.411176, 0.059884,
		30.710579, 36.527107, 25.305586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.360607, 36.276775, 24.821920>,  <31.347290, 36.814930, 25.263666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.360607, 36.276775, 24.821920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.978741, 36.387833, 24.864862>,  <30.749620, 36.454468, 24.890629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.978741, 36.387833, 24.864862>,  <31.360607, 36.276775, 24.821920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.978741, 36.387833, 24.864862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134029, -0.078886, -0.987833,
		-0.265794, -0.957440, 0.112522,
		-0.954667, 0.277642, 0.107357,
		30.692341, 36.471127, 24.897070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.041094, 35.944878, 24.288195>,  <31.360607, 36.276775, 24.821920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.041094, 35.944878, 24.288195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.772079, 36.216064, 24.406887>,  <30.610670, 36.378777, 24.478102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.772079, 36.216064, 24.406887>,  <31.041094, 35.944878, 24.288195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772079, 36.216064, 24.406887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287288, 0.130338, -0.948935,
		-0.682025, -0.723442, 0.107116,
		-0.672538, 0.677971, 0.296730,
		30.570318, 36.419456, 24.495907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.376471, 35.717709, 23.901764>,  <31.041094, 35.944878, 24.288195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.376471, 35.717709, 23.901764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.341022, 36.100594, 24.011953>,  <30.319754, 36.330326, 24.078068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.341022, 36.100594, 24.011953>,  <30.376471, 35.717709, 23.901764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.341022, 36.100594, 24.011953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302383, 0.237658, -0.923083,
		-0.949058, -0.165102, 0.268384,
		-0.088620, 0.957215, 0.275476,
		30.314436, 36.387756, 24.094597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.899769, 35.233559, 24.054474>,  <30.376471, 35.717709, 23.901764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.899769, 35.233559, 24.054474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.580811, 35.021915, 23.938406>,  <30.389435, 34.894928, 23.868765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.580811, 35.021915, 23.938406>,  <30.899769, 35.233559, 24.054474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.580811, 35.021915, 23.938406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072126, -0.560967, 0.824690,
		-0.599130, 0.636676, 0.485475,
		-0.797396, -0.529112, -0.290172,
		30.341591, 34.863182, 23.851355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502735, 35.227028, 24.635254>,  <30.899769, 35.233559, 24.054474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502735, 35.227028, 24.635254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.433384, 34.913326, 24.396965>,  <30.391773, 34.725105, 24.253992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.433384, 34.913326, 24.396965>,  <30.502735, 35.227028, 24.635254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.433384, 34.913326, 24.396965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079933, -0.591682, 0.802199,
		-0.981606, 0.186702, 0.039898,
		-0.173379, -0.784254, -0.595723,
		30.381371, 34.678051, 24.218248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.868412, 34.846184, 24.948847>,  <30.502735, 35.227028, 24.635254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.868412, 34.846184, 24.948847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.072979, 34.591866, 24.717600>,  <30.195719, 34.439274, 24.578852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.072979, 34.591866, 24.717600>,  <29.868412, 34.846184, 24.948847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072979, 34.591866, 24.717600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081422, -0.633874, 0.769139,
		-0.855465, -0.440424, -0.272408,
		0.511419, -0.635792, -0.578117,
		30.226404, 34.401127, 24.544165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.690544, 34.318901, 25.283165>,  <29.868412, 34.846184, 24.948847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.690544, 34.318901, 25.283165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.975491, 34.191555, 25.032988>,  <30.146458, 34.115147, 24.882881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.975491, 34.191555, 25.032988>,  <29.690544, 34.318901, 25.283165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.975491, 34.191555, 25.032988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240685, -0.726313, 0.643848,
		-0.659244, -0.609191, -0.440776,
		0.712367, -0.318365, -0.625441,
		30.189201, 34.096046, 24.845356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580280, 33.605480, 25.161516>,  <29.690544, 34.318901, 25.283165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.580280, 33.605480, 25.161516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.963987, 33.692993, 25.090025>,  <30.194212, 33.745502, 25.047131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.963987, 33.692993, 25.090025>,  <29.580280, 33.605480, 25.161516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.963987, 33.692993, 25.090025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282425, -0.757829, 0.588159,
		-0.006766, -0.614678, -0.788749,
		0.959265, 0.218783, -0.178728,
		30.251766, 33.758629, 25.036406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.933441, 32.964584, 24.979797>,  <29.580280, 33.605480, 25.161516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.933441, 32.964584, 24.979797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.189127, 33.235199, 25.126062>,  <30.342539, 33.397568, 25.213821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.189127, 33.235199, 25.126062>,  <29.933441, 32.964584, 24.979797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.189127, 33.235199, 25.126062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267420, -0.641356, 0.719131,
		0.721035, -0.361893, -0.590882,
		0.639214, 0.676532, 0.365663,
		30.380892, 33.438160, 25.235762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448769, 32.536442, 25.116518>,  <29.933441, 32.964584, 24.979797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.448769, 32.536442, 25.116518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.536169, 32.881828, 25.298365>,  <30.588610, 33.089062, 25.407473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.536169, 32.881828, 25.298365>,  <30.448769, 32.536442, 25.116518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.536169, 32.881828, 25.298365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461119, -0.501941, 0.731727,
		0.860016, 0.049752, -0.507836,
		0.218499, 0.863470, 0.454619,
		30.601719, 33.140869, 25.434750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161358, 32.409451, 25.261917>,  <30.448769, 32.536442, 25.116518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161358, 32.409451, 25.261917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.047844, 32.704865, 25.506548>,  <30.979734, 32.882114, 25.653326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.047844, 32.704865, 25.506548>,  <31.161358, 32.409451, 25.261917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047844, 32.704865, 25.506548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482726, -0.441048, 0.756606,
		0.828518, 0.509938, -0.231349,
		-0.283786, 0.738539, 0.611576,
		30.962708, 32.926426, 25.690022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501738, 32.673920, 24.633106>,  <31.161358, 32.409451, 25.261917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501738, 32.673920, 24.633106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.795195, 32.468071, 24.455597>,  <31.971270, 32.344563, 24.349091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.795195, 32.468071, 24.455597>,  <31.501738, 32.673920, 24.633106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795195, 32.468071, 24.455597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469446, 0.088342, -0.878531,
		0.491313, 0.852855, -0.176774,
		0.733643, -0.514620, -0.443773,
		32.015289, 32.313686, 24.322466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.810411, 33.085732, 24.138166>,  <31.501738, 32.673920, 24.633106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.810411, 33.085732, 24.138166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.857409, 32.704388, 24.026960>,  <31.885607, 32.475582, 23.960238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.857409, 32.704388, 24.026960>,  <31.810411, 33.085732, 24.138166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857409, 32.704388, 24.026960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275128, 0.237746, -0.931548,
		0.954201, 0.185940, -0.234363,
		0.117493, -0.953364, -0.278015,
		31.892656, 32.418377, 23.943556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121662, 33.188835, 23.512356>,  <31.810411, 33.085732, 24.138166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121662, 33.188835, 23.512356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.017807, 32.802769, 23.499405>,  <31.955494, 32.571129, 23.491634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.017807, 32.802769, 23.499405>,  <32.121662, 33.188835, 23.512356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.017807, 32.802769, 23.499405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051495, 0.047317, -0.997552,
		0.964332, -0.257334, -0.061986,
		-0.259637, -0.965163, -0.032378,
		31.939917, 32.513218, 23.489691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505413, 32.911358, 23.011793>,  <32.121662, 33.188835, 23.512356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505413, 32.911358, 23.011793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.195831, 32.658791, 23.030998>,  <32.010082, 32.507248, 23.042522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.195831, 32.658791, 23.030998>,  <32.505413, 32.911358, 23.011793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195831, 32.658791, 23.030998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026095, -0.107560, -0.993856,
		0.632707, -0.767944, 0.099723,
		-0.773952, -0.631422, 0.048014,
		31.963646, 32.469364, 23.045403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754391, 32.325863, 22.666370>,  <32.505413, 32.911358, 23.011793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754391, 32.325863, 22.666370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.355824, 32.293613, 22.656223>,  <32.116684, 32.274265, 22.650135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.355824, 32.293613, 22.656223>,  <32.754391, 32.325863, 22.666370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355824, 32.293613, 22.656223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019158, 0.076859, -0.996858,
		0.082304, -0.993778, -0.075040,
		-0.996423, -0.080608, -0.025365,
		32.056896, 32.269428, 22.648613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661572, 32.005455, 22.122494>,  <32.754391, 32.325863, 22.666370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661572, 32.005455, 22.122494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.282471, 32.126060, 22.164177>,  <32.055012, 32.198425, 22.189186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.282471, 32.126060, 22.164177>,  <32.661572, 32.005455, 22.122494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282471, 32.126060, 22.164177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074297, 0.109056, -0.991255,
		-0.310244, -0.947204, -0.080956,
		-0.947749, 0.301516, 0.104208,
		31.998146, 32.216515, 22.195440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149590, 31.524061, 21.687458>,  <32.661572, 32.005455, 22.122494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149590, 31.524061, 21.687458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.997721, 31.889305, 21.746897>,  <31.906599, 32.108452, 21.782560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.997721, 31.889305, 21.746897>,  <32.149590, 31.524061, 21.687458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997721, 31.889305, 21.746897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010187, 0.156488, -0.987627,
		-0.925065, -0.376488, -0.050112,
		-0.379671, 0.913109, 0.148597,
		31.883820, 32.163239, 21.791475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.747658, 31.545467, 21.125671>,  <32.149590, 31.524061, 21.687458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.747658, 31.545467, 21.125671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.765553, 31.925608, 21.248854>,  <31.776289, 32.153690, 21.322763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.765553, 31.925608, 21.248854>,  <31.747658, 31.545467, 21.125671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.765553, 31.925608, 21.248854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009765, 0.307832, -0.951391,
		-0.998951, 0.045568, 0.004491,
		0.044736, 0.950349, 0.307954,
		31.778973, 32.210712, 21.341240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.320501, 31.950108, 20.717405>,  <31.747658, 31.545467, 21.125671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.320501, 31.950108, 20.717405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.608727, 32.190624, 20.855528>,  <31.781662, 32.334934, 20.938402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.608727, 32.190624, 20.855528>,  <31.320501, 31.950108, 20.717405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608727, 32.190624, 20.855528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246456, 0.243385, -0.938096,
		-0.648114, 0.761058, 0.027181,
		0.720561, 0.601294, 0.345309,
		31.824894, 32.371014, 20.959120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.590187, 31.738558, 36.499836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.940029, 31.793701, 36.313911>,  <37.149937, 31.826786, 36.202354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.940029, 31.793701, 36.313911>,  <36.590187, 31.738558, 36.499836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940029, 31.793701, 36.313911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442143, -0.166554, -0.881345,
		-0.198916, 0.976348, -0.084718,
		0.874610, 0.137856, -0.464816,
		37.202412, 31.835058, 36.174465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493793, 32.163227, 35.822002>,  <36.590187, 31.738558, 36.499836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493793, 32.163227, 35.822002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.820904, 31.935101, 35.791077>,  <37.017170, 31.798225, 35.772522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.820904, 31.935101, 35.791077>,  <36.493793, 32.163227, 35.822002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820904, 31.935101, 35.791077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323087, -0.343746, -0.881733,
		0.476288, 0.746043, -0.465369,
		0.817780, -0.570314, -0.077315,
		37.066238, 31.764006, 35.767883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712605, 32.263794, 35.215755>,  <36.493793, 32.163227, 35.822002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712605, 32.263794, 35.215755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.877308, 31.909021, 35.299480>,  <36.976131, 31.696159, 35.349716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.877308, 31.909021, 35.299480>,  <36.712605, 32.263794, 35.215755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877308, 31.909021, 35.299480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241984, -0.327858, -0.913210,
		0.878576, 0.325376, -0.349622,
		0.411763, -0.886927, 0.209312,
		37.000835, 31.642942, 35.362274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141724, 32.132980, 34.681816>,  <36.712605, 32.263794, 35.215755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141724, 32.132980, 34.681816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.123035, 31.775644, 34.860592>,  <37.111820, 31.561243, 34.967857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.123035, 31.775644, 34.860592>,  <37.141724, 32.132980, 34.681816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123035, 31.775644, 34.860592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280156, -0.417754, -0.864288,
		0.958817, -0.165597, -0.230755,
		-0.046725, -0.893342, 0.446943,
		37.109016, 31.507643, 34.994675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382893, 31.720272, 34.330040>,  <37.141724, 32.132980, 34.681816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382893, 31.720272, 34.330040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.170277, 31.450310, 34.534771>,  <37.042706, 31.288332, 34.657608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.170277, 31.450310, 34.534771>,  <37.382893, 31.720272, 34.330040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170277, 31.450310, 34.534771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379288, -0.350645, -0.856264,
		0.757367, -0.649269, -0.069601,
		-0.531541, -0.674906, 0.511827,
		37.010815, 31.247839, 34.688320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358574, 31.149792, 33.978039>,  <37.382893, 31.720272, 34.330040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358574, 31.149792, 33.978039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.039696, 31.066374, 34.204666>,  <36.848370, 31.016323, 34.340641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.039696, 31.066374, 34.204666>,  <37.358574, 31.149792, 33.978039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039696, 31.066374, 34.204666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438873, -0.444250, -0.781046,
		0.414580, -0.871293, 0.262627,
		-0.797191, -0.208546, 0.566564,
		36.800537, 31.003811, 34.374634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111862, 30.482224, 33.704552>,  <37.358574, 31.149792, 33.978039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111862, 30.482224, 33.704552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.807400, 30.636602, 33.913048>,  <36.624722, 30.729229, 34.038143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.807400, 30.636602, 33.913048>,  <37.111862, 30.482224, 33.704552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807400, 30.636602, 33.913048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647566, -0.407535, -0.643874,
		-0.036078, -0.827623, 0.560123,
		-0.761155, 0.385947, 0.521238,
		36.579052, 30.752386, 34.069420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742180, 29.954035, 33.765644>,  <37.111862, 30.482224, 33.704552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742180, 29.954035, 33.765644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.521244, 30.287106, 33.781475>,  <36.388683, 30.486948, 33.790974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.521244, 30.287106, 33.781475>,  <36.742180, 29.954035, 33.765644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521244, 30.287106, 33.781475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679912, -0.422518, -0.599331,
		-0.482326, -0.357947, 0.799522,
		-0.552341, 0.832678, 0.039581,
		36.355541, 30.536909, 33.793350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148258, 29.719738, 33.833836>,  <36.742180, 29.954035, 33.765644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148258, 29.719738, 33.833836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.076557, 30.080717, 33.677143>,  <36.033535, 30.297304, 33.583126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.076557, 30.080717, 33.677143>,  <36.148258, 29.719738, 33.833836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076557, 30.080717, 33.677143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655218, -0.406531, -0.636727,
		-0.733865, 0.142535, 0.664173,
		-0.179251, 0.902450, -0.391731,
		36.022781, 30.351452, 33.559624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435284, 29.668203, 33.485264>,  <36.148258, 29.719738, 33.833836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435284, 29.668203, 33.485264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.482937, 30.028919, 33.319092>,  <35.511528, 30.245350, 33.219391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.482937, 30.028919, 33.319092>,  <35.435284, 29.668203, 33.485264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482937, 30.028919, 33.319092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611250, -0.263103, -0.746425,
		-0.782419, 0.342854, 0.519876,
		0.119134, 0.901792, -0.415426,
		35.518677, 30.299458, 33.194466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812016, 29.939121, 33.220284>,  <35.435284, 29.668203, 33.485264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812016, 29.939121, 33.220284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.074715, 30.149736, 33.004341>,  <35.232334, 30.276106, 32.874775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.074715, 30.149736, 33.004341>,  <34.812016, 29.939121, 33.220284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074715, 30.149736, 33.004341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534558, -0.179894, -0.825764,
		-0.531911, 0.830902, 0.163319,
		0.656749, 0.526536, -0.539852,
		35.271740, 30.307697, 32.842384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526413, 30.502537, 32.972466>,  <34.812016, 29.939121, 33.220284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526413, 30.502537, 32.972466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.836788, 30.456114, 32.724445>,  <35.023014, 30.428259, 32.575634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.836788, 30.456114, 32.724445>,  <34.526413, 30.502537, 32.972466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836788, 30.456114, 32.724445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628363, -0.055641, -0.775928,
		0.055554, 0.991682, -0.116101,
		0.775934, -0.116059, -0.620046,
		35.069569, 30.421295, 32.538433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995472, 30.831970, 33.357525>,  <34.526413, 30.502537, 32.972466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995472, 30.831970, 33.357525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.666077, 30.642756, 33.482815>,  <33.468441, 30.529226, 33.557987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.666077, 30.642756, 33.482815>,  <33.995472, 30.831970, 33.357525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666077, 30.642756, 33.482815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390688, -0.072493, 0.917664,
		-0.411384, 0.878054, 0.244507,
		-0.823484, -0.473038, 0.313222,
		33.419033, 30.500843, 33.576782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851116, 31.041937, 34.028599>,  <33.995472, 30.831970, 33.357525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851116, 31.041937, 34.028599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.604164, 30.727322, 34.034222>,  <33.455994, 30.538553, 34.037594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.604164, 30.727322, 34.034222>,  <33.851116, 31.041937, 34.028599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604164, 30.727322, 34.034222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152726, -0.102314, 0.982958,
		-0.771695, 0.609008, 0.183291,
		-0.617382, -0.786538, 0.014055,
		33.418949, 30.491360, 34.038437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453602, 31.175915, 34.507786>,  <33.851116, 31.041937, 34.028599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453602, 31.175915, 34.507786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.411789, 30.779150, 34.478977>,  <33.386700, 30.541092, 34.461693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.411789, 30.779150, 34.478977>,  <33.453602, 31.175915, 34.507786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411789, 30.779150, 34.478977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186950, -0.090723, 0.978171,
		-0.976792, 0.088789, 0.194921,
		-0.104534, -0.991910, -0.072018,
		33.380428, 30.481577, 34.457371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888569, 31.039055, 34.917770>,  <33.453602, 31.175915, 34.507786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888569, 31.039055, 34.917770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.111767, 30.713865, 34.851177>,  <33.245686, 30.518751, 34.811222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.111767, 30.713865, 34.851177>,  <32.888569, 31.039055, 34.917770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111767, 30.713865, 34.851177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055818, -0.163391, 0.984981,
		-0.827964, -0.558909, -0.045793,
		0.557997, -0.812973, -0.166478,
		33.279167, 30.469975, 34.801235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603817, 30.675642, 35.421837>,  <32.888569, 31.039055, 34.917770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.603817, 30.675642, 35.421837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.952808, 30.506615, 35.323685>,  <33.162205, 30.405199, 35.264793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.952808, 30.506615, 35.323685>,  <32.603817, 30.675642, 35.421837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952808, 30.506615, 35.323685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163098, -0.221532, 0.961417,
		-0.460624, -0.878840, -0.124363,
		0.872482, -0.422568, -0.245380,
		33.214554, 30.379845, 35.250072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637661, 30.163067, 35.875420>,  <32.603817, 30.675642, 35.421837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637661, 30.163067, 35.875420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.018074, 30.217569, 35.764442>,  <33.246323, 30.250271, 35.697857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.018074, 30.217569, 35.764442>,  <32.637661, 30.163067, 35.875420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018074, 30.217569, 35.764442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280468, -0.003137, 0.959858,
		0.129919, -0.990669, -0.041200,
		0.951030, 0.136259, -0.277444,
		33.303383, 30.258448, 35.681210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049664, 29.699463, 36.229351>,  <32.637661, 30.163067, 35.875420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049664, 29.699463, 36.229351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.304459, 29.990841, 36.128464>,  <33.457336, 30.165668, 36.067932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.304459, 29.990841, 36.128464>,  <33.049664, 29.699463, 36.229351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304459, 29.990841, 36.128464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300178, 0.066972, 0.951529,
		0.710030, -0.681821, -0.176003,
		0.636986, 0.728447, -0.252220,
		33.495556, 30.209375, 36.052799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454464, 29.565174, 36.735001>,  <33.049664, 29.699463, 36.229351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454464, 29.565174, 36.735001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.577217, 29.916399, 36.588123>,  <33.650867, 30.127134, 36.499996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.577217, 29.916399, 36.588123>,  <33.454464, 29.565174, 36.735001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577217, 29.916399, 36.588123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268914, 0.290098, 0.918438,
		0.912967, -0.380596, -0.147097,
		0.306881, 0.878060, -0.367197,
		33.669281, 30.179817, 36.477962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195412, 29.681839, 37.031437>,  <33.454464, 29.565174, 36.735001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195412, 29.681839, 37.031437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.044090, 30.032917, 36.913765>,  <33.953297, 30.243565, 36.843163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.044090, 30.032917, 36.913765>,  <34.195412, 29.681839, 37.031437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044090, 30.032917, 36.913765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268066, 0.408051, 0.872717,
		0.886019, 0.251290, -0.389646,
		-0.378301, 0.877695, -0.294178,
		33.930599, 30.296225, 36.825512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824158, 30.177036, 37.121826>,  <34.195412, 29.681839, 37.031437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824158, 30.177036, 37.121826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.476467, 30.374372, 37.134808>,  <34.267853, 30.492775, 37.142597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.476467, 30.374372, 37.134808>,  <34.824158, 30.177036, 37.121826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476467, 30.374372, 37.134808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247242, 0.376902, 0.892646,
		0.428147, 0.783939, -0.449589,
		-0.869230, 0.493341, 0.032453,
		34.215698, 30.522375, 37.144543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107716, 30.794315, 37.106388>,  <34.824158, 30.177036, 37.121826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107716, 30.794315, 37.106388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.742558, 30.762566, 37.266548>,  <34.523464, 30.743517, 37.362644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.742558, 30.762566, 37.266548>,  <35.107716, 30.794315, 37.106388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742558, 30.762566, 37.266548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301143, 0.531228, 0.791902,
		-0.275559, 0.843503, -0.461054,
		-0.912897, -0.079373, 0.400400,
		34.468689, 30.738754, 37.386669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064976, 31.441246, 37.309597>,  <35.107716, 30.794315, 37.106388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064976, 31.441246, 37.309597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.772324, 31.259546, 37.512917>,  <34.596733, 31.150526, 37.634911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.772324, 31.259546, 37.512917>,  <35.064976, 31.441246, 37.309597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772324, 31.259546, 37.512917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243519, 0.522286, 0.817261,
		-0.636720, 0.721716, -0.271503,
		-0.731633, -0.454250, 0.508301,
		34.552834, 31.123272, 37.665405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731052, 31.981487, 37.604130>,  <35.064976, 31.441246, 37.309597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731052, 31.981487, 37.604130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.649715, 31.655634, 37.821396>,  <34.600914, 31.460123, 37.951756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.649715, 31.655634, 37.821396>,  <34.731052, 31.981487, 37.604130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649715, 31.655634, 37.821396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220503, 0.502402, 0.836045,
		-0.953956, 0.289771, 0.077470,
		-0.203340, -0.814632, 0.543165,
		34.588715, 31.411245, 37.984344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317295, 32.182472, 38.130653>,  <34.731052, 31.981487, 37.604130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317295, 32.182472, 38.130653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.523502, 31.854187, 38.229179>,  <34.647228, 31.657215, 38.288296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.523502, 31.854187, 38.229179>,  <34.317295, 32.182472, 38.130653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523502, 31.854187, 38.229179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181595, 0.385563, 0.904635,
		-0.837416, -0.421626, 0.347802,
		0.515517, -0.820715, 0.246312,
		34.678158, 31.607973, 38.303074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918274, 32.638905, 38.399891>,  <34.317295, 32.182472, 38.130653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918274, 32.638905, 38.399891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.007507, 33.002468, 38.540813>,  <35.061047, 33.220608, 38.625366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.007507, 33.002468, 38.540813>,  <34.918274, 32.638905, 38.399891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007507, 33.002468, 38.540813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459620, 0.416789, -0.784243,
		-0.859642, 0.013023, 0.510730,
		0.223080, 0.908910, 0.352304,
		35.074432, 33.275143, 38.646503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402634, 33.098701, 38.352333>,  <34.918274, 32.638905, 38.399891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402634, 33.098701, 38.352333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.727745, 33.331661, 38.346691>,  <34.922813, 33.471439, 38.343307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.727745, 33.331661, 38.346691>,  <34.402634, 33.098701, 38.352333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727745, 33.331661, 38.346691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326212, 0.434922, -0.839302,
		-0.482676, 0.686769, 0.543482,
		0.812779, 0.582402, -0.014106,
		34.971581, 33.506382, 38.342461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235031, 33.797726, 38.357800>,  <34.402634, 33.098701, 38.352333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235031, 33.797726, 38.357800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.587666, 33.758896, 38.173031>,  <34.799248, 33.735596, 38.062168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.587666, 33.758896, 38.173031>,  <34.235031, 33.797726, 38.357800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587666, 33.758896, 38.173031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335162, 0.560339, -0.757421,
		0.332365, 0.822554, 0.461452,
		0.881589, -0.097079, -0.461926,
		34.852142, 33.729771, 38.034454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658752, 34.485779, 38.214878>,  <34.235031, 33.797726, 38.357800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658752, 34.485779, 38.214878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.760777, 34.211338, 37.942345>,  <34.821991, 34.046673, 37.778824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.760777, 34.211338, 37.942345>,  <34.658752, 34.485779, 38.214878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760777, 34.211338, 37.942345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380889, 0.576374, -0.722992,
		0.888745, 0.443918, -0.114317,
		0.255059, -0.686098, -0.681333,
		34.837296, 34.005508, 37.737946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967861, 34.891407, 37.669689>,  <34.658752, 34.485779, 38.214878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967861, 34.891407, 37.669689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.888889, 34.531567, 37.513878>,  <34.841507, 34.315662, 37.420391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.888889, 34.531567, 37.513878>,  <34.967861, 34.891407, 37.669689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888889, 34.531567, 37.513878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368125, 0.436305, -0.821049,
		0.908574, -0.018701, -0.417305,
		-0.197427, -0.899605, -0.389531,
		34.829662, 34.261684, 37.397018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032776, 35.041492, 37.007359>,  <34.967861, 34.891407, 37.669689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032776, 35.041492, 37.007359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.869793, 34.676460, 36.993687>,  <34.772003, 34.457439, 36.985485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.869793, 34.676460, 36.993687>,  <35.032776, 35.041492, 37.007359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869793, 34.676460, 36.993687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492454, 0.251087, -0.833333,
		0.769068, -0.322719, -0.551713,
		-0.407460, -0.912583, -0.034179,
		34.747555, 34.402687, 36.983433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182281, 34.797672, 36.334385>,  <35.032776, 35.041492, 37.007359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182281, 34.797672, 36.334385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.867496, 34.585102, 36.459782>,  <34.678623, 34.457561, 36.535019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.867496, 34.585102, 36.459782>,  <35.182281, 34.797672, 36.334385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867496, 34.585102, 36.459782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494302, 0.238942, -0.835806,
		0.369260, -0.812709, -0.450723,
		-0.786964, -0.531423, 0.313492,
		34.631409, 34.425674, 36.553829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972446, 34.308784, 35.816364>,  <35.182281, 34.797672, 36.334385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972446, 34.308784, 35.816364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.657871, 34.406605, 36.043243>,  <34.469128, 34.465298, 36.179371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.657871, 34.406605, 36.043243>,  <34.972446, 34.308784, 35.816364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657871, 34.406605, 36.043243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517012, 0.241823, -0.821109,
		-0.337967, -0.938997, -0.063742,
		-0.786433, 0.244552, 0.567201,
		34.421940, 34.479969, 36.213402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506439, 33.979206, 35.400063>,  <34.972446, 34.308784, 35.816364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506439, 33.979206, 35.400063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.328362, 34.209583, 35.674316>,  <34.221516, 34.347809, 35.838867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.328362, 34.209583, 35.674316>,  <34.506439, 33.979206, 35.400063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328362, 34.209583, 35.674316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667585, 0.296818, -0.682810,
		-0.596767, -0.761702, 0.252347,
		-0.445197, 0.575941, 0.685632,
		34.194801, 34.382366, 35.880005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724800, 33.919510, 35.336586>,  <34.506439, 33.979206, 35.400063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724800, 33.919510, 35.336586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.779526, 34.280758, 35.499386>,  <33.812363, 34.497509, 35.597065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.779526, 34.280758, 35.499386>,  <33.724800, 33.919510, 35.336586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779526, 34.280758, 35.499386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698177, 0.379382, -0.607140,
		-0.702730, -0.201090, 0.682446,
		0.136818, 0.903123, 0.406999,
		33.820572, 34.551697, 35.621487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015518, 34.206463, 35.479572>,  <33.724800, 33.919510, 35.336586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015518, 34.206463, 35.479572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.272408, 34.513042, 35.483616>,  <33.426540, 34.696991, 35.486042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.272408, 34.513042, 35.483616>,  <33.015518, 34.206463, 35.479572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272408, 34.513042, 35.483616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675610, 0.572239, -0.464859,
		-0.362073, 0.291718, 0.885327,
		0.642226, 0.766449, 0.010105,
		33.465076, 34.742977, 35.486649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565609, 34.658031, 35.274006>,  <33.015518, 34.206463, 35.479572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565609, 34.658031, 35.274006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.914215, 34.846828, 35.220806>,  <33.123379, 34.960106, 35.188885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.914215, 34.846828, 35.220806>,  <32.565609, 34.658031, 35.274006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914215, 34.846828, 35.220806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408344, 0.548358, -0.729766,
		-0.271512, 0.690310, 0.670636,
		0.871514, 0.471990, -0.132999,
		33.175671, 34.988426, 35.180908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379292, 35.316292, 35.072876>,  <32.565609, 34.658031, 35.274006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379292, 35.316292, 35.072876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.746483, 35.256676, 34.925854>,  <32.966797, 35.220905, 34.837639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.746483, 35.256676, 34.925854>,  <32.379292, 35.316292, 35.072876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746483, 35.256676, 34.925854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283656, 0.401009, -0.871051,
		0.277215, 0.903869, 0.325843,
		0.917982, -0.149042, -0.367554,
		33.021877, 35.211964, 34.815586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506325, 35.902431, 34.665943>,  <32.379292, 35.316292, 35.072876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506325, 35.902431, 34.665943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.781216, 35.648441, 34.524792>,  <32.946152, 35.496048, 34.440102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.781216, 35.648441, 34.524792>,  <32.506325, 35.902431, 34.665943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781216, 35.648441, 34.524792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148132, 0.353063, -0.923798,
		0.711178, 0.687132, 0.148574,
		0.687228, -0.634977, -0.352877,
		32.987385, 35.457947, 34.418930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924286, 36.244240, 34.229637>,  <32.506325, 35.902431, 34.665943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924286, 36.244240, 34.229637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.975697, 35.864704, 34.114269>,  <33.006542, 35.636982, 34.045048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.975697, 35.864704, 34.114269>,  <32.924286, 36.244240, 34.229637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975697, 35.864704, 34.114269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312367, 0.237293, -0.919847,
		0.941226, 0.208320, -0.265887,
		0.128529, -0.948839, -0.288419,
		33.014256, 35.580051, 34.027744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222858, 36.321590, 33.557297>,  <32.924286, 36.244240, 34.229637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222858, 36.321590, 33.557297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.132004, 35.932087, 33.562923>,  <33.077492, 35.698383, 33.566299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.132004, 35.932087, 33.562923>,  <33.222858, 36.321590, 33.557297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132004, 35.932087, 33.562923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108933, 0.011046, -0.993988,
		0.967751, -0.227305, -0.108583,
		-0.227138, -0.973761, 0.014071,
		33.063862, 35.639957, 33.567146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606064, 35.947205, 33.070492>,  <33.222858, 36.321590, 33.557297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606064, 35.947205, 33.070492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.303608, 35.691174, 33.124966>,  <33.122135, 35.537556, 33.157650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.303608, 35.691174, 33.124966>,  <33.606064, 35.947205, 33.070492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303608, 35.691174, 33.124966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157848, -0.023570, -0.987182,
		0.635086, -0.767947, -0.083213,
		-0.756142, -0.640080, 0.136188,
		33.076767, 35.499149, 33.165821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684021, 35.425659, 32.600292>,  <33.606064, 35.947205, 33.070492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684021, 35.425659, 32.600292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.299210, 35.452381, 32.706150>,  <33.068321, 35.468414, 32.769665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.299210, 35.452381, 32.706150>,  <33.684021, 35.425659, 32.600292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299210, 35.452381, 32.706150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268454, -0.056387, -0.961641,
		-0.049311, -0.996172, 0.072178,
		-0.962030, 0.066796, 0.264645,
		33.010601, 35.472424, 32.785545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467705, 34.971931, 32.119328>,  <33.684021, 35.425659, 32.600292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467705, 34.971931, 32.119328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.141521, 35.158722, 32.256130>,  <32.945812, 35.270794, 32.338211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.141521, 35.158722, 32.256130>,  <33.467705, 34.971931, 32.119328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141521, 35.158722, 32.256130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378905, 0.016018, -0.925297,
		-0.437566, -0.884127, 0.163876,
		-0.815455, 0.466972, 0.342009,
		32.896885, 35.298813, 32.358734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744427, 34.566189, 31.904619>,  <33.467705, 34.971931, 32.119328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744427, 34.566189, 31.904619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.677975, 34.953640, 31.978544>,  <32.638103, 35.186111, 32.022900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.677975, 34.953640, 31.978544>,  <32.744427, 34.566189, 31.904619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677975, 34.953640, 31.978544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478383, 0.084721, -0.874055,
		-0.862295, -0.233613, 0.449303,
		-0.166125, 0.968632, 0.184811,
		32.628136, 35.244228, 32.033989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149021, 34.540482, 31.653917>,  <32.744427, 34.566189, 31.904619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149021, 34.540482, 31.653917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.260933, 34.924313, 31.666094>,  <32.328079, 35.154613, 31.673399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.260933, 34.924313, 31.666094>,  <32.149021, 34.540482, 31.653917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260933, 34.924313, 31.666094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581569, 0.194620, -0.789873,
		-0.763873, 0.203285, 0.612514,
		0.279777, 0.959582, 0.030440,
		32.344868, 35.212189, 31.675226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520401, 34.867634, 31.517143>,  <32.149021, 34.540482, 31.653917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520401, 34.867634, 31.517143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.823162, 35.119411, 31.446825>,  <32.004818, 35.270477, 31.404634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.823162, 35.119411, 31.446825>,  <31.520401, 34.867634, 31.517143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.823162, 35.119411, 31.446825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448320, 0.304376, -0.840455,
		-0.475510, 0.714953, 0.512574,
		0.756901, 0.629442, -0.175794,
		32.050232, 35.308243, 31.394087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.251257, 35.528141, 31.295300>,  <31.520401, 34.867634, 31.517143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.251257, 35.528141, 31.295300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.629107, 35.537479, 31.164371>,  <31.855816, 35.543083, 31.085815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.629107, 35.537479, 31.164371>,  <31.251257, 35.528141, 31.295300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629107, 35.537479, 31.164371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314557, 0.348541, -0.882934,
		0.093475, 0.937003, 0.336583,
		0.944625, 0.023342, -0.327320,
		31.912495, 35.544483, 31.066175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377075, 36.221287, 31.052450>,  <31.251257, 35.528141, 31.295300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377075, 36.221287, 31.052450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.639616, 35.990925, 30.857500>,  <31.797140, 35.852707, 30.740530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.639616, 35.990925, 30.857500>,  <31.377075, 36.221287, 31.052450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.639616, 35.990925, 30.857500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304092, 0.389256, -0.869487,
		0.690454, 0.718899, 0.080362,
		0.656354, -0.575903, -0.487375,
		31.836523, 35.818153, 30.711288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.429605, 36.553089, 30.425066>,  <31.377075, 36.221287, 31.052450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.429605, 36.553089, 30.425066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.587914, 36.192429, 30.355324>,  <31.682898, 35.976032, 30.313478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.587914, 36.192429, 30.355324>,  <31.429605, 36.553089, 30.425066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587914, 36.192429, 30.355324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119404, 0.137722, -0.983247,
		0.910555, 0.409957, -0.053154,
		0.395768, -0.901648, -0.174354,
		31.706644, 35.921936, 30.303019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988539, 36.775120, 29.950050>,  <31.429605, 36.553089, 30.425066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988539, 36.775120, 29.950050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.932440, 36.380875, 29.912334>,  <31.898781, 36.144325, 29.889706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.932440, 36.380875, 29.912334>,  <31.988539, 36.775120, 29.950050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.932440, 36.380875, 29.912334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015154, 0.093082, -0.995543,
		0.990001, -0.141050, 0.001881,
		-0.140246, -0.985617, -0.094289,
		31.890366, 36.085190, 29.884048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497406, 36.498699, 29.465519>,  <31.988539, 36.775120, 29.950050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497406, 36.498699, 29.465519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.205391, 36.225647, 29.478519>,  <32.030182, 36.061817, 29.486320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.205391, 36.225647, 29.478519>,  <32.497406, 36.498699, 29.465519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205391, 36.225647, 29.478519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010544, -0.036305, -0.999285,
		0.683324, -0.729860, 0.019306,
		-0.730040, -0.682631, 0.032503,
		31.986380, 36.020859, 29.488270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617661, 35.941719, 29.029167>,  <32.497406, 36.498699, 29.465519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617661, 35.941719, 29.029167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.220947, 35.923000, 29.076805>,  <31.982920, 35.911770, 29.105389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.220947, 35.923000, 29.076805>,  <32.617661, 35.941719, 29.029167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220947, 35.923000, 29.076805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120690, 0.032846, -0.992147,
		0.042534, -0.998363, -0.038226,
		-0.991779, -0.046814, 0.119095,
		31.923414, 35.908958, 29.112534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075005, 35.761593, 28.461912>,  <32.617661, 35.941719, 29.029167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075005, 35.761593, 28.461912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.322510, 36.059959, 28.363335>,  <33.471012, 36.238979, 28.304188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.322510, 36.059959, 28.363335>,  <33.075005, 35.761593, 28.461912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322510, 36.059959, 28.363335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439579, -0.068758, 0.895569,
		0.651077, -0.662477, -0.370435,
		0.618764, 0.745920, -0.246444,
		33.508141, 36.283733, 28.289402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767952, 35.528091, 28.468668>,  <33.075005, 35.761593, 28.461912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767952, 35.528091, 28.468668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.787880, 35.925922, 28.505180>,  <33.799835, 36.164619, 28.527088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.787880, 35.925922, 28.505180>,  <33.767952, 35.528091, 28.468668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787880, 35.925922, 28.505180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675762, -0.100864, 0.730186,
		0.735434, 0.025304, -0.677124,
		0.049821, 0.994578, 0.091279,
		33.802826, 36.224297, 28.532564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521404, 35.633129, 28.586569>,  <33.767952, 35.528091, 28.468668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521404, 35.633129, 28.586569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.344868, 35.973999, 28.699011>,  <34.238945, 36.178520, 28.766476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.344868, 35.973999, 28.699011>,  <34.521404, 35.633129, 28.586569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344868, 35.973999, 28.699011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667044, 0.102024, 0.738000,
		0.600223, 0.513221, -0.613463,
		-0.441345, 0.852171, 0.281104,
		34.212463, 36.229649, 28.783342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069172, 36.146526, 28.767866>,  <34.521404, 35.633129, 28.586569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069172, 36.146526, 28.767866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.744358, 36.283474, 28.956921>,  <34.549469, 36.365643, 29.070353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.744358, 36.283474, 28.956921>,  <35.069172, 36.146526, 28.767866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744358, 36.283474, 28.956921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537417, 0.122901, 0.834313,
		0.227553, 0.931494, -0.283793,
		-0.812036, 0.342366, 0.472634,
		34.500748, 36.386185, 29.098711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259140, 36.662933, 29.294214>,  <35.069172, 36.146526, 28.767866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259140, 36.662933, 29.294214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.884151, 36.629288, 29.429308>,  <34.659157, 36.609100, 29.510365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.884151, 36.629288, 29.429308>,  <35.259140, 36.662933, 29.294214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884151, 36.629288, 29.429308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333275, 0.062785, 0.940737,
		-0.100331, 0.994476, -0.030827,
		-0.937476, -0.084111, 0.337733,
		34.602909, 36.604053, 29.530628>
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
