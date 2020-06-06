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
	<23.717321, 34.832474, 35.079773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.081924, 34.843655, 34.915638>,  <24.300686, 34.850365, 34.817158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.081924, 34.843655, 34.915638>,  <23.717321, 34.832474, 35.079773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.081924, 34.843655, 34.915638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273709, 0.703450, 0.655929,
		0.306985, -0.710195, 0.633548,
		0.911507, 0.027952, -0.410335,
		24.355377, 34.852039, 34.792538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.241295, 34.905014, 35.617378>,  <23.717321, 34.832474, 35.079773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.241295, 34.905014, 35.617378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.363323, 35.079983, 35.279007>,  <24.436541, 35.184963, 35.075985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.363323, 35.079983, 35.279007>,  <24.241295, 34.905014, 35.617378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.363323, 35.079983, 35.279007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130501, 0.860693, 0.492114,
		0.943346, -0.260524, 0.205487,
		0.305069, 0.437418, -0.845930,
		24.454844, 35.211208, 35.025227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.825726, 34.453304, 35.504974>,  <24.241295, 34.905014, 35.617378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.825726, 34.453304, 35.504974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.817833, 34.404419, 35.108051>,  <24.813097, 34.375088, 34.869896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.817833, 34.404419, 35.108051>,  <24.825726, 34.453304, 35.504974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.817833, 34.404419, 35.108051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390068, 0.912907, -0.120195,
		0.920574, -0.389439, 0.029659,
		-0.019733, -0.122217, -0.992307,
		24.811913, 34.367752, 34.810360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.500732, 34.688034, 35.260899>,  <24.825726, 34.453304, 35.504974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.500732, 34.688034, 35.260899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.224730, 34.690548, 34.971390>,  <25.059128, 34.692055, 34.797684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.224730, 34.690548, 34.971390>,  <25.500732, 34.688034, 35.260899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.224730, 34.690548, 34.971390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335068, 0.889136, -0.311715,
		0.641577, -0.457600, -0.615615,
		-0.690006, 0.006283, -0.723776,
		25.017727, 34.692432, 34.754257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.276880, 34.565014, 35.124802>,  <25.500732, 34.688034, 35.260899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.276880, 34.565014, 35.124802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.930628, 34.365952, 35.102806>,  <25.722876, 34.246513, 35.089611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.930628, 34.365952, 35.102806>,  <26.276880, 34.565014, 35.124802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.930628, 34.365952, 35.102806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080557, -0.246824, 0.965706,
		-0.494160, 0.831515, 0.253748,
		-0.865631, -0.497655, -0.054986,
		25.670938, 34.216656, 35.086311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.559456, 34.709606, 34.528152>,  <26.276880, 34.565014, 35.124802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.559456, 34.709606, 34.528152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.863758, 34.913204, 34.367069>,  <27.046339, 35.035362, 34.270420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.863758, 34.913204, 34.367069>,  <26.559456, 34.709606, 34.528152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.863758, 34.913204, 34.367069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037138, 0.585315, 0.809955,
		0.647980, -0.631131, 0.426375,
		0.760751, 0.509000, -0.402711,
		27.091984, 35.065903, 34.246258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.823841, 34.790787, 33.709187>,  <26.559456, 34.709606, 34.528152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.823841, 34.790787, 33.709187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.183868, 34.900486, 33.844635>,  <27.399885, 34.966305, 33.925903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.183868, 34.900486, 33.844635>,  <26.823841, 34.790787, 33.709187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.183868, 34.900486, 33.844635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427914, -0.702968, -0.568089,
		0.082242, 0.656219, -0.750075,
		0.900070, 0.274247, 0.338619,
		27.453890, 34.982761, 33.946220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.248142, 35.101490, 33.324951>,  <26.823841, 34.790787, 33.709187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.248142, 35.101490, 33.324951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.517202, 34.921673, 33.560055>,  <27.678638, 34.813782, 33.701115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.517202, 34.921673, 33.560055>,  <27.248142, 35.101490, 33.324951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.517202, 34.921673, 33.560055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313696, -0.546154, -0.776731,
		0.670179, 0.706843, -0.226349,
		0.672648, -0.449544, 0.587754,
		27.718996, 34.786808, 33.736382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.793888, 35.193382, 32.912369>,  <27.248142, 35.101490, 33.324951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.793888, 35.193382, 32.912369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.899782, 34.899361, 33.162045>,  <27.963318, 34.722946, 33.311848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.899782, 34.899361, 33.162045>,  <27.793888, 35.193382, 32.912369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.899782, 34.899361, 33.162045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413755, -0.498090, -0.762045,
		0.871047, 0.460000, 0.172272,
		0.264734, -0.735056, 0.624187,
		27.979202, 34.678844, 33.349300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.508371, 34.986729, 32.763252>,  <27.793888, 35.193382, 32.912369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.508371, 34.986729, 32.763252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.332138, 34.669598, 32.931683>,  <28.226398, 34.479317, 33.032742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.332138, 34.669598, 32.931683>,  <28.508371, 34.986729, 32.763252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.332138, 34.669598, 32.931683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434432, -0.598776, -0.672857,
		0.785592, -0.113521, 0.608242,
		-0.440584, -0.792830, 0.421077,
		28.199963, 34.431747, 33.058006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.998831, 34.402031, 32.709835>,  <28.508371, 34.986729, 32.763252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.998831, 34.402031, 32.709835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.661083, 34.204239, 32.792324>,  <28.458435, 34.085564, 32.841820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.661083, 34.204239, 32.792324>,  <28.998831, 34.402031, 32.709835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.661083, 34.204239, 32.792324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238158, -0.691225, -0.682268,
		0.479916, -0.526972, 0.701414,
		-0.844370, -0.494479, 0.206227,
		28.407772, 34.055897, 32.854191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.136280, 33.662838, 32.915154>,  <28.998831, 34.402031, 32.709835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.136280, 33.662838, 32.915154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.770855, 33.693550, 32.755402>,  <28.551600, 33.711975, 32.659550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.770855, 33.693550, 32.755402>,  <29.136280, 33.662838, 32.915154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.770855, 33.693550, 32.755402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246499, -0.676549, -0.693916,
		-0.323478, -0.732384, 0.599145,
		-0.913565, 0.076778, -0.399381,
		28.496786, 33.716583, 32.635586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.039972, 32.988834, 32.661808>,  <29.136280, 33.662838, 32.915154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.039972, 32.988834, 32.661808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.753197, 33.196388, 32.475578>,  <28.581131, 33.320919, 32.363842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.753197, 33.196388, 32.475578>,  <29.039972, 32.988834, 32.661808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.753197, 33.196388, 32.475578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194453, -0.492483, -0.848321,
		-0.669468, -0.698726, 0.252181,
		-0.716938, 0.518886, -0.465571,
		28.538115, 33.352055, 32.335907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.532763, 32.500710, 32.284542>,  <29.039972, 32.988834, 32.661808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.532763, 32.500710, 32.284542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.505365, 32.858250, 32.107300>,  <28.488926, 33.072773, 32.000954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.505365, 32.858250, 32.107300>,  <28.532763, 32.500710, 32.284542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.505365, 32.858250, 32.107300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080130, -0.437786, -0.895501,
		-0.994428, -0.096842, -0.041638,
		-0.068494, 0.893848, -0.443107,
		28.484818, 33.126404, 31.974367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.098347, 32.385517, 31.651411>,  <28.532763, 32.500710, 32.284542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.098347, 32.385517, 31.651411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.286448, 32.734615, 31.598978>,  <28.399307, 32.944073, 31.567518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.286448, 32.734615, 31.598978>,  <28.098347, 32.385517, 31.651411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.286448, 32.734615, 31.598978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254422, -0.276289, -0.926787,
		-0.845064, 0.402472, -0.351970,
		0.470251, 0.872743, -0.131084,
		28.427523, 32.996437, 31.559652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.089060, 32.389458, 31.011147>,  <28.098347, 32.385517, 31.651411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.089060, 32.389458, 31.011147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.339922, 32.693092, 31.080959>,  <28.490438, 32.875275, 31.122847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.339922, 32.693092, 31.080959>,  <28.089060, 32.389458, 31.011147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.339922, 32.693092, 31.080959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373106, -0.096085, -0.922800,
		-0.683716, 0.643858, -0.343480,
		0.627156, 0.759088, 0.174532,
		28.528069, 32.920818, 31.133320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.063574, 32.602383, 30.397842>,  <28.089060, 32.389458, 31.011147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.063574, 32.602383, 30.397842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.353083, 32.819382, 30.568419>,  <28.526789, 32.949581, 30.670763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.353083, 32.819382, 30.568419>,  <28.063574, 32.602383, 30.397842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.353083, 32.819382, 30.568419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426471, 0.134157, -0.894497,
		-0.542472, 0.829276, -0.134261,
		0.723772, 0.542498, 0.426439,
		28.570215, 32.982132, 30.696350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.192417, 33.213085, 29.982170>,  <28.063574, 32.602383, 30.397842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.192417, 33.213085, 29.982170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531492, 33.132133, 30.178320>,  <28.734938, 33.083561, 30.296009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531492, 33.132133, 30.178320>,  <28.192417, 33.213085, 29.982170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.531492, 33.132133, 30.178320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495230, -0.029501, -0.868261,
		0.190187, 0.978862, 0.075218,
		0.847689, -0.202382, 0.490373,
		28.785799, 33.071419, 30.325432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.624435, 33.623413, 29.640907>,  <28.192417, 33.213085, 29.982170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.624435, 33.623413, 29.640907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.857470, 33.348240, 29.814037>,  <28.997290, 33.183136, 29.917915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.857470, 33.348240, 29.814037>,  <28.624435, 33.623413, 29.640907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.857470, 33.348240, 29.814037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567702, -0.036672, -0.822417,
		0.581642, 0.724844, 0.369179,
		0.582586, -0.687936, 0.432826,
		29.032246, 33.141861, 29.943886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.329201, 33.856804, 29.501928>,  <28.624435, 33.623413, 29.640907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.329201, 33.856804, 29.501928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.312241, 33.467655, 29.592894>,  <29.302065, 33.234165, 29.647472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.312241, 33.467655, 29.592894>,  <29.329201, 33.856804, 29.501928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.312241, 33.467655, 29.592894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622974, -0.203695, -0.755256,
		0.781092, 0.109649, 0.614713,
		-0.042401, -0.972875, 0.227414,
		29.299520, 33.175793, 29.661118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.047937, 33.622425, 29.663021>,  <29.329201, 33.856804, 29.501928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.047937, 33.622425, 29.663021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.851658, 33.306137, 29.516613>,  <29.733891, 33.116364, 29.428768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.851658, 33.306137, 29.516613>,  <30.047937, 33.622425, 29.663021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.851658, 33.306137, 29.516613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671868, -0.075891, -0.736773,
		0.554805, -0.607452, 0.568501,
		-0.490699, -0.790723, -0.366022,
		29.704449, 33.068920, 29.406807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.483938, 33.158516, 29.380833>,  <30.047937, 33.622425, 29.663021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.483938, 33.158516, 29.380833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.144091, 33.040764, 29.205795>,  <29.940182, 32.970112, 29.100773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.144091, 33.040764, 29.205795>,  <30.483938, 33.158516, 29.380833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.144091, 33.040764, 29.205795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472881, -0.057830, -0.879227,
		0.233518, -0.953938, 0.188339,
		-0.849619, -0.294377, -0.437594,
		29.889204, 32.952450, 29.074516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.751423, 32.661041, 28.991434>,  <30.483938, 33.158516, 29.380833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.751423, 32.661041, 28.991434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.387873, 32.702984, 28.829964>,  <30.169743, 32.728149, 28.733082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.387873, 32.702984, 28.829964>,  <30.751423, 32.661041, 28.991434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.387873, 32.702984, 28.829964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398930, -0.063792, -0.914760,
		-0.121671, -0.992439, 0.016148,
		-0.908874, 0.104858, -0.403676,
		30.115211, 32.734440, 28.708860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679953, 32.034290, 28.702488>,  <30.751423, 32.661041, 28.991434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679953, 32.034290, 28.702488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.460224, 32.324139, 28.536036>,  <30.328386, 32.498047, 28.436165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.460224, 32.324139, 28.536036>,  <30.679953, 32.034290, 28.702488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.460224, 32.324139, 28.536036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573215, -0.035576, -0.818632,
		-0.608006, -0.688225, -0.395823,
		-0.549321, 0.724625, -0.416132,
		30.295427, 32.541527, 28.411196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.472694, 31.785469, 28.082043>,  <30.679953, 32.034290, 28.702488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.472694, 31.785469, 28.082043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.471375, 32.185253, 28.068945>,  <30.470583, 32.425121, 28.061087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.471375, 32.185253, 28.068945>,  <30.472694, 31.785469, 28.082043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.471375, 32.185253, 28.068945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612161, -0.023871, -0.790372,
		-0.790726, -0.022652, -0.611751,
		-0.003300, 0.999458, -0.032742,
		30.470385, 32.485092, 28.059122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.506247, 31.992617, 27.362133>,  <30.472694, 31.785469, 28.082043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.506247, 31.992617, 27.362133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.576309, 32.349697, 27.528219>,  <30.618347, 32.563946, 27.627871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.576309, 32.349697, 27.528219>,  <30.506247, 31.992617, 27.362133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.576309, 32.349697, 27.528219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470587, 0.294530, -0.831745,
		-0.864794, 0.341082, -0.368504,
		0.175157, 0.892701, 0.415216,
		30.628857, 32.617508, 27.652784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.334837, 32.670174, 26.968796>,  <30.506247, 31.992617, 27.362133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.334837, 32.670174, 26.968796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.648638, 32.676949, 27.216753>,  <30.836918, 32.681011, 27.365528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.648638, 32.676949, 27.216753>,  <30.334837, 32.670174, 26.968796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.648638, 32.676949, 27.216753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598762, 0.239439, -0.764299,
		-0.161369, 0.970764, 0.177702,
		0.784502, 0.016933, 0.619895,
		30.883989, 32.682030, 27.402721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656225, 33.330593, 26.880886>,  <30.334837, 32.670174, 26.968796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656225, 33.330593, 26.880886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.916616, 33.043327, 26.979248>,  <31.072851, 32.870968, 27.038265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.916616, 33.043327, 26.979248>,  <30.656225, 33.330593, 26.880886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.916616, 33.043327, 26.979248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573266, 0.252760, -0.779409,
		0.497588, 0.648347, 0.576239,
		0.650978, -0.718163, 0.245905,
		31.111910, 32.827877, 27.053020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967161, 33.653000, 26.259285>,  <30.656225, 33.330593, 26.880886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.967161, 33.653000, 26.259285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.180563, 33.582809, 25.928328>,  <31.308603, 33.540695, 25.729753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.180563, 33.582809, 25.928328>,  <30.967161, 33.653000, 26.259285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.180563, 33.582809, 25.928328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221012, 0.973176, -0.063885,
		0.816412, -0.148781, 0.557975,
		0.533503, -0.175476, -0.827395,
		31.340614, 33.530167, 25.680109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.691578, 33.890583, 26.315096>,  <30.967161, 33.653000, 26.259285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.691578, 33.890583, 26.315096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.566534, 33.882610, 25.935226>,  <31.491508, 33.877827, 25.707304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.566534, 33.882610, 25.935226>,  <31.691578, 33.890583, 26.315096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566534, 33.882610, 25.935226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363006, 0.921387, -0.138830,
		0.877783, -0.388136, -0.280799,
		-0.312609, -0.019931, -0.949673,
		31.472752, 33.876633, 25.650324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241318, 34.127319, 25.835299>,  <31.691578, 33.890583, 26.315096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241318, 34.127319, 25.835299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870476, 34.196491, 25.702288>,  <31.647970, 34.237995, 25.622480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870476, 34.196491, 25.702288>,  <32.241318, 34.127319, 25.835299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870476, 34.196491, 25.702288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275164, 0.916429, -0.290589,
		0.254489, -0.360906, -0.897208,
		-0.927103, 0.172928, -0.332529,
		31.592344, 34.248371, 25.602530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337307, 34.453430, 25.157347>,  <32.241318, 34.127319, 25.835299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337307, 34.453430, 25.157347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002533, 34.585896, 25.331644>,  <31.801668, 34.665375, 25.436222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002533, 34.585896, 25.331644>,  <32.337307, 34.453430, 25.157347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002533, 34.585896, 25.331644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227790, 0.934699, -0.272853,
		-0.497649, -0.129102, -0.857717,
		-0.836933, 0.331164, 0.435744,
		31.751453, 34.685246, 25.462368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902348, 34.991398, 24.738279>,  <32.337307, 34.453430, 25.157347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902348, 34.991398, 24.738279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853634, 35.060982, 25.129156>,  <31.824406, 35.102730, 25.363682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853634, 35.060982, 25.129156>,  <31.902348, 34.991398, 24.738279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853634, 35.060982, 25.129156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140759, 0.977598, -0.156487,
		-0.982525, 0.118491, -0.143541,
		-0.121783, 0.173958, 0.977194,
		31.817099, 35.113171, 25.422314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346226, 35.404018, 25.146610>,  <31.902348, 34.991398, 24.738279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346226, 35.404018, 25.146610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613552, 35.173000, 24.959084>,  <32.773949, 35.034389, 24.846567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613552, 35.173000, 24.959084>,  <32.346226, 35.404018, 25.146610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613552, 35.173000, 24.959084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676477, 0.209736, 0.705967,
		-0.309400, -0.788957, 0.530866,
		0.668319, -0.577545, -0.468819,
		32.814049, 34.999737, 24.818438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345745, 35.672100, 25.887976>,  <32.346226, 35.404018, 25.146610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345745, 35.672100, 25.887976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671284, 35.495007, 26.038513>,  <32.866608, 35.388752, 26.128836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671284, 35.495007, 26.038513>,  <32.345745, 35.672100, 25.887976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671284, 35.495007, 26.038513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421122, -0.003136, 0.906998,
		-0.400379, -0.896647, -0.188998,
		0.813850, -0.442735, 0.376342,
		32.915440, 35.362186, 26.151417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223755, 35.144974, 26.296619>,  <32.345745, 35.672100, 25.887976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223755, 35.144974, 26.296619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560116, 35.324528, 26.417536>,  <32.761932, 35.432259, 26.490086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560116, 35.324528, 26.417536>,  <32.223755, 35.144974, 26.296619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560116, 35.324528, 26.417536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349727, 0.024465, 0.936532,
		0.413000, -0.893254, 0.177560,
		0.840906, 0.448885, 0.302291,
		32.812389, 35.459194, 26.508223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.647392, 34.704548, 26.839371>,  <32.223755, 35.144974, 26.296619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.647392, 34.704548, 26.839371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730003, 35.093578, 26.882151>,  <32.779568, 35.326996, 26.907820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730003, 35.093578, 26.882151>,  <32.647392, 34.704548, 26.839371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730003, 35.093578, 26.882151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149224, -0.076720, 0.985823,
		0.966995, -0.219556, 0.129287,
		0.206524, 0.972579, 0.106951,
		32.791962, 35.385353, 26.914236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138115, 34.750492, 27.297625>,  <32.647392, 34.704548, 26.839371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138115, 34.750492, 27.297625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969566, 35.112144, 27.325874>,  <32.868439, 35.329136, 27.342825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969566, 35.112144, 27.325874>,  <33.138115, 34.750492, 27.297625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969566, 35.112144, 27.325874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065167, -0.047488, 0.996744,
		0.904545, 0.424599, -0.038909,
		-0.421369, 0.904135, 0.070624,
		32.843155, 35.383385, 27.347061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514397, 35.120579, 27.783092>,  <33.138115, 34.750492, 27.297625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514397, 35.120579, 27.783092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166492, 35.317959, 27.781328>,  <32.957748, 35.436386, 27.780270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166492, 35.317959, 27.781328>,  <33.514397, 35.120579, 27.783092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166492, 35.317959, 27.781328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007915, 0.022885, 0.999707,
		0.493403, 0.869475, -0.023810,
		-0.869765, 0.493447, -0.004410,
		32.905563, 35.465992, 27.780005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558422, 35.689209, 28.278715>,  <33.514397, 35.120579, 27.783092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558422, 35.689209, 28.278715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164658, 35.686409, 28.208426>,  <32.928398, 35.684727, 28.166252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164658, 35.686409, 28.208426>,  <33.558422, 35.689209, 28.278715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164658, 35.686409, 28.208426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167182, 0.347335, 0.922718,
		0.054572, 0.937715, -0.343093,
		-0.984415, -0.007005, -0.175724,
		32.869331, 35.684307, 28.155708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370972, 36.322002, 28.362110>,  <33.558422, 35.689209, 28.278715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370972, 36.322002, 28.362110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050873, 36.093704, 28.435719>,  <32.858814, 35.956726, 28.479883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050873, 36.093704, 28.435719>,  <33.370972, 36.322002, 28.362110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050873, 36.093704, 28.435719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167189, 0.507045, 0.845549,
		-0.575897, 0.645879, -0.501181,
		-0.800244, -0.570741, 0.184022,
		32.810799, 35.922482, 28.490925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053558, 36.749176, 28.770161>,  <33.370972, 36.322002, 28.362110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053558, 36.749176, 28.770161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.854973, 36.407574, 28.832384>,  <32.735821, 36.202614, 28.869719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.854973, 36.407574, 28.832384>,  <33.053558, 36.749176, 28.770161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.854973, 36.407574, 28.832384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258661, 0.316603, 0.912610,
		-0.828625, 0.412840, -0.378080,
		-0.496463, -0.854006, 0.155560,
		32.706036, 36.151371, 28.879051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374275, 36.958595, 29.060648>,  <33.053558, 36.749176, 28.770161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374275, 36.958595, 29.060648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434029, 36.575912, 29.160568>,  <32.469879, 36.346302, 29.220520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434029, 36.575912, 29.160568>,  <32.374275, 36.958595, 29.060648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434029, 36.575912, 29.160568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416177, 0.168331, 0.893567,
		-0.896929, -0.237445, -0.373013,
		0.149383, -0.956705, 0.249800,
		32.478844, 36.288902, 29.235508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.726551, 36.670986, 29.327284>,  <32.374275, 36.958595, 29.060648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.726551, 36.670986, 29.327284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014572, 36.426762, 29.459187>,  <32.187386, 36.280228, 29.538328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014572, 36.426762, 29.459187>,  <31.726551, 36.670986, 29.327284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014572, 36.426762, 29.459187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344081, 0.098528, 0.933756,
		-0.602607, -0.785815, -0.139138,
		0.720050, -0.610562, 0.329758,
		32.230587, 36.243591, 29.558113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447803, 36.034302, 29.551588>,  <31.726551, 36.670986, 29.327284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447803, 36.034302, 29.551588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794535, 36.097660, 29.740700>,  <32.002575, 36.135674, 29.854166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794535, 36.097660, 29.740700>,  <31.447803, 36.034302, 29.551588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794535, 36.097660, 29.740700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445605, -0.179328, 0.877085,
		0.223711, -0.970954, -0.084864,
		0.866828, 0.158397, 0.472780,
		32.054585, 36.145180, 29.882534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434647, 35.618359, 30.012558>,  <31.447803, 36.034302, 29.551588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434647, 35.618359, 30.012558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747355, 35.828575, 30.146809>,  <31.934980, 35.954704, 30.227358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747355, 35.828575, 30.146809>,  <31.434647, 35.618359, 30.012558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.747355, 35.828575, 30.146809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259531, -0.215176, 0.941458,
		0.566990, -0.823110, -0.031825,
		0.781772, 0.525537, 0.335626,
		31.981886, 35.986237, 30.247496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657961, 35.216175, 30.648529>,  <31.434647, 35.618359, 30.012558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657961, 35.216175, 30.648529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824923, 35.576973, 30.692663>,  <31.925100, 35.793453, 30.719143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824923, 35.576973, 30.692663>,  <31.657961, 35.216175, 30.648529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824923, 35.576973, 30.692663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181773, -0.036087, 0.982678,
		0.890356, -0.430229, 0.148896,
		0.417403, 0.901998, 0.110334,
		31.950144, 35.847572, 30.725763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.103130, 35.114788, 31.209576>,  <31.657961, 35.216175, 30.648529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.103130, 35.114788, 31.209576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052574, 35.511253, 31.193497>,  <32.022240, 35.749134, 31.183849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052574, 35.511253, 31.193497>,  <32.103130, 35.114788, 31.209576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.052574, 35.511253, 31.193497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059960, 0.032813, 0.997661,
		0.990167, 0.128502, 0.055283,
		-0.126387, 0.991166, -0.040196,
		32.014660, 35.808601, 31.181438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563759, 35.369343, 31.771938>,  <32.103130, 35.114788, 31.209576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563759, 35.369343, 31.771938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265163, 35.629028, 31.713593>,  <32.086006, 35.784840, 31.678585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265163, 35.629028, 31.713593>,  <32.563759, 35.369343, 31.771938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.265163, 35.629028, 31.713593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247117, -0.066953, 0.966670,
		0.617807, 0.757655, 0.210411,
		-0.746490, 0.649212, -0.145866,
		32.041218, 35.823792, 31.669832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389729, 35.515415, 32.402817>,  <32.563759, 35.369343, 31.771938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389729, 35.515415, 32.402817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084339, 35.702187, 32.224339>,  <31.901106, 35.814251, 32.117252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084339, 35.702187, 32.224339>,  <32.389729, 35.515415, 32.402817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.084339, 35.702187, 32.224339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558146, -0.129424, 0.819586,
		0.324940, 0.874772, 0.359427,
		-0.763470, 0.466930, -0.446196,
		31.855299, 35.842266, 32.090481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112869, 35.882923, 32.914410>,  <32.389729, 35.515415, 32.402817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.112869, 35.882923, 32.914410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.823799, 35.826427, 32.643768>,  <31.650356, 35.792530, 32.481384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.823799, 35.826427, 32.643768>,  <32.112869, 35.882923, 32.914410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.823799, 35.826427, 32.643768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607869, -0.336057, 0.719417,
		-0.328988, 0.931191, 0.157004,
		-0.722677, -0.141242, -0.676601,
		31.606997, 35.784054, 32.440788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.514032, 36.234158, 33.166397>,  <32.112869, 35.882923, 32.914410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.514032, 36.234158, 33.166397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386866, 35.945198, 32.920773>,  <31.310566, 35.771824, 32.773399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386866, 35.945198, 32.920773>,  <31.514032, 36.234158, 33.166397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.386866, 35.945198, 32.920773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656102, -0.299921, 0.692516,
		-0.684442, 0.623048, -0.378617,
		-0.317915, -0.722398, -0.614061,
		31.291491, 35.728477, 32.736553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769320, 36.272049, 33.232231>,  <31.514032, 36.234158, 33.166397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769320, 36.272049, 33.232231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.838518, 35.916035, 33.063515>,  <30.880037, 35.702427, 32.962284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.838518, 35.916035, 33.063515>,  <30.769320, 36.272049, 33.232231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838518, 35.916035, 33.063515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624867, -0.430205, 0.651510,
		-0.761323, 0.150851, -0.630580,
		0.172998, -0.890038, -0.421786,
		30.890417, 35.649025, 32.936977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.140900, 35.939198, 33.235455>,  <30.769320, 36.272049, 33.232231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.140900, 35.939198, 33.235455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.379946, 35.623390, 33.179581>,  <30.523373, 35.433907, 33.146057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.379946, 35.623390, 33.179581>,  <30.140900, 35.939198, 33.235455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.379946, 35.623390, 33.179581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613404, -0.562405, 0.554469,
		-0.516325, -0.245676, -0.820397,
		0.597615, -0.789521, -0.139685,
		30.559231, 35.386536, 33.137676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.731453, 35.346466, 32.935509>,  <30.140900, 35.939198, 33.235455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.731453, 35.346466, 32.935509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.063051, 35.208046, 33.111244>,  <30.262011, 35.124996, 33.216686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.063051, 35.208046, 33.111244>,  <29.731453, 35.346466, 32.935509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.063051, 35.208046, 33.111244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534467, -0.721501, 0.440205,
		0.164649, -0.599739, -0.783074,
		0.828997, -0.346048, 0.439335,
		30.311750, 35.104233, 33.243046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.686117, 34.627506, 32.913216>,  <29.731453, 35.346466, 32.935509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.686117, 34.627506, 32.913216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953831, 34.689476, 33.203884>,  <30.114460, 34.726658, 33.378284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953831, 34.689476, 33.203884>,  <29.686117, 34.627506, 32.913216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.953831, 34.689476, 33.203884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418238, -0.729800, 0.540804,
		0.614112, -0.665875, -0.423648,
		0.669286, 0.154929, 0.726673,
		30.154617, 34.735954, 33.421886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.942606, 33.880894, 33.074173>,  <29.686117, 34.627506, 32.913216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.942606, 33.880894, 33.074173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022989, 34.143414, 33.365070>,  <30.071218, 34.300926, 33.539608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022989, 34.143414, 33.365070>,  <29.942606, 33.880894, 33.074173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.022989, 34.143414, 33.365070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424077, -0.610935, 0.668518,
		0.883048, -0.442753, 0.155548,
		0.200959, 0.656298, 0.727247,
		30.083277, 34.340302, 33.583244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.402485, 33.499889, 33.622623>,  <29.942606, 33.880894, 33.074173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.402485, 33.499889, 33.622623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.195089, 33.806122, 33.774971>,  <30.070652, 33.989861, 33.866379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.195089, 33.806122, 33.774971>,  <30.402485, 33.499889, 33.622623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.195089, 33.806122, 33.774971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458550, -0.624895, 0.631853,
		0.721733, 0.152964, 0.675058,
		-0.518491, 0.765577, 0.380866,
		30.039541, 34.035793, 33.889233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.427145, 33.485790, 34.314152>,  <30.402485, 33.499889, 33.622623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.427145, 33.485790, 34.314152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.082300, 33.680683, 34.258488>,  <29.875393, 33.797619, 34.225090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.082300, 33.680683, 34.258488>,  <30.427145, 33.485790, 34.314152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.082300, 33.680683, 34.258488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403047, -0.492923, 0.771091,
		0.307103, 0.720856, 0.621332,
		-0.862114, 0.487230, -0.139160,
		29.823666, 33.826851, 34.216740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.200817, 33.701397, 34.980083>,  <30.427145, 33.485790, 34.314152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.200817, 33.701397, 34.980083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.893118, 33.692616, 34.724655>,  <29.708498, 33.687347, 34.571396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.893118, 33.692616, 34.724655>,  <30.200817, 33.701397, 34.980083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.893118, 33.692616, 34.724655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544829, -0.499568, 0.673494,
		-0.333796, 0.865997, 0.372331,
		-0.769248, -0.021953, -0.638574,
		29.662344, 33.686031, 34.533085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987030, 33.536484, 35.029930>,  <30.200817, 33.701397, 34.980083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987030, 33.536484, 35.029930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.910578, 33.415123, 35.403328>,  <30.864706, 33.342308, 35.627369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.910578, 33.415123, 35.403328>,  <30.987030, 33.536484, 35.029930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.910578, 33.415123, 35.403328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888146, 0.351472, 0.296080,
		-0.417929, 0.885673, 0.202285,
		-0.191132, -0.303400, 0.933497,
		30.853237, 33.324104, 35.683376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.112534, 34.058205, 35.605930>,  <30.987030, 33.536484, 35.029930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.112534, 34.058205, 35.605930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150932, 33.708050, 35.795452>,  <31.173971, 33.497959, 35.909164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150932, 33.708050, 35.795452>,  <31.112534, 34.058205, 35.605930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.150932, 33.708050, 35.795452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846420, 0.322274, 0.423925,
		-0.523791, 0.360340, 0.771879,
		0.095999, -0.875382, 0.473804,
		31.179731, 33.445435, 35.937592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188643, 34.130470, 36.361137>,  <31.112534, 34.058205, 35.605930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188643, 34.130470, 36.361137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.391975, 33.823452, 36.204948>,  <31.513975, 33.639240, 36.111237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.391975, 33.823452, 36.204948>,  <31.188643, 34.130470, 36.361137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391975, 33.823452, 36.204948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857712, 0.410726, 0.309248,
		-0.076985, -0.492114, 0.867120,
		0.508334, -0.767547, -0.390473,
		31.544476, 33.593189, 36.087807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646929, 33.783474, 36.894432>,  <31.188643, 34.130470, 36.361137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646929, 33.783474, 36.894432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827423, 33.733727, 36.540955>,  <31.935719, 33.703880, 36.328869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827423, 33.733727, 36.540955>,  <31.646929, 33.783474, 36.894432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.827423, 33.733727, 36.540955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802718, 0.489224, 0.341035,
		0.389913, -0.863246, 0.320584,
		0.451234, -0.124364, -0.883697,
		31.962793, 33.696419, 36.275845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284683, 33.523220, 36.773148>,  <31.646929, 33.783474, 36.894432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284683, 33.523220, 36.773148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.383198, 33.150600, 36.880150>,  <32.442307, 32.927029, 36.944351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.383198, 33.150600, 36.880150>,  <32.284683, 33.523220, 36.773148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383198, 33.150600, 36.880150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793291, 0.352326, 0.496544,
		-0.556805, 0.089918, 0.825762,
		0.246289, -0.931548, 0.267508,
		32.457085, 32.871136, 36.960403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274490, 33.397652, 37.553070>,  <32.284683, 33.523220, 36.773148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274490, 33.397652, 37.553070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571121, 33.195045, 37.377110>,  <32.749100, 33.073483, 37.271534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571121, 33.195045, 37.377110>,  <32.274490, 33.397652, 37.553070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571121, 33.195045, 37.377110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618494, 0.262170, 0.740765,
		-0.259877, -0.821409, 0.507692,
		0.741572, -0.506512, -0.439904,
		32.793594, 33.043091, 37.245136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408375, 32.842705, 37.997795>,  <32.274490, 33.397652, 37.553070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408375, 32.842705, 37.997795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716156, 32.974155, 37.778725>,  <32.900826, 33.053024, 37.647282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716156, 32.974155, 37.778725>,  <32.408375, 32.842705, 37.997795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716156, 32.974155, 37.778725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550628, 0.093220, 0.829530,
		0.323659, -0.939848, -0.109222,
		0.769450, 0.328626, -0.547678,
		32.946991, 33.072742, 37.614422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946396, 32.521439, 38.305939>,  <32.408375, 32.842705, 37.997795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946396, 32.521439, 38.305939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102928, 32.831512, 38.107567>,  <33.196846, 33.017559, 37.988544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102928, 32.831512, 38.107567>,  <32.946396, 32.521439, 38.305939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102928, 32.831512, 38.107567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735742, 0.060152, 0.674586,
		0.552762, -0.628860, -0.546799,
		0.391329, 0.775188, -0.495928,
		33.220325, 33.064068, 37.958790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668091, 32.460995, 38.450981>,  <32.946396, 32.521439, 38.305939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668091, 32.460995, 38.450981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606121, 32.835873, 38.325974>,  <33.568939, 33.060799, 38.250969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606121, 32.835873, 38.325974>,  <33.668091, 32.460995, 38.450981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606121, 32.835873, 38.325974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751711, 0.317090, 0.578259,
		0.641037, -0.145334, -0.753625,
		-0.154926, 0.937194, -0.312516,
		33.559643, 33.117031, 38.232220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252544, 32.772423, 38.594891>,  <33.668091, 32.460995, 38.450981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252544, 32.772423, 38.594891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019215, 33.095871, 38.564251>,  <33.879219, 33.289940, 38.545868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019215, 33.095871, 38.564251>,  <34.252544, 32.772423, 38.594891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019215, 33.095871, 38.564251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487361, 0.423889, 0.763412,
		0.649780, 0.407984, -0.641354,
		-0.583322, 0.808621, -0.076599,
		33.844219, 33.338459, 38.541271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712585, 33.204605, 38.643192>,  <34.252544, 32.772423, 38.594891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712585, 33.204605, 38.643192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370945, 33.377369, 38.759094>,  <34.165958, 33.481030, 38.828636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370945, 33.377369, 38.759094>,  <34.712585, 33.204605, 38.643192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370945, 33.377369, 38.759094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444784, 0.317801, 0.837359,
		0.269580, 0.844071, -0.463542,
		-0.854104, 0.431911, 0.289757,
		34.114716, 33.506943, 38.846020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908073, 33.754391, 38.894253>,  <34.712585, 33.204605, 38.643192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908073, 33.754391, 38.894253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543346, 33.731529, 39.056889>,  <34.324509, 33.717812, 39.154472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543346, 33.731529, 39.056889>,  <34.908073, 33.754391, 38.894253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543346, 33.731529, 39.056889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347598, 0.419625, 0.838505,
		-0.218541, 0.905896, -0.362756,
		-0.911820, -0.057154, 0.406593,
		34.269802, 33.714382, 39.178867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859444, 34.390854, 39.423462>,  <34.908073, 33.754391, 38.894253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859444, 34.390854, 39.423462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560265, 34.144554, 39.522602>,  <34.380756, 33.996773, 39.582085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560265, 34.144554, 39.522602>,  <34.859444, 34.390854, 39.423462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560265, 34.144554, 39.522602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131376, 0.228686, 0.964595,
		-0.650628, 0.754027, -0.090151,
		-0.747947, -0.615748, 0.247851,
		34.335880, 33.959831, 39.596958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390095, 34.757729, 39.946930>,  <34.859444, 34.390854, 39.423462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390095, 34.757729, 39.946930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351936, 34.360603, 39.975838>,  <34.329041, 34.122330, 39.993183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351936, 34.360603, 39.975838>,  <34.390095, 34.757729, 39.946930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351936, 34.360603, 39.975838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187774, 0.053347, 0.980762,
		-0.977569, 0.107132, 0.181336,
		-0.095397, -0.992813, 0.072267,
		34.323318, 34.062759, 39.997517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942509, 34.727245, 40.420483>,  <34.390095, 34.757729, 39.946930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942509, 34.727245, 40.420483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116768, 34.368210, 40.393494>,  <34.221325, 34.152790, 40.377300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116768, 34.368210, 40.393494>,  <33.942509, 34.727245, 40.420483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116768, 34.368210, 40.393494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076925, -0.037557, 0.996329,
		-0.896824, -0.439239, 0.052685,
		0.435648, -0.897585, -0.067470,
		34.247463, 34.098934, 40.373253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616089, 34.400719, 40.881001>,  <33.942509, 34.727245, 40.420483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616089, 34.400719, 40.881001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952625, 34.187687, 40.844120>,  <34.154549, 34.059868, 40.821991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952625, 34.187687, 40.844120>,  <33.616089, 34.400719, 40.881001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952625, 34.187687, 40.844120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091417, -0.027906, 0.995422,
		-0.532718, -0.845917, 0.025209,
		0.841341, -0.532583, -0.092197,
		34.205029, 34.027912, 40.816460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538063, 33.772507, 41.290051>,  <33.616089, 34.400719, 40.881001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538063, 33.772507, 41.290051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931313, 33.801163, 41.222713>,  <34.167263, 33.818356, 41.182312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931313, 33.801163, 41.222713>,  <33.538063, 33.772507, 41.290051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931313, 33.801163, 41.222713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182948, -0.377456, 0.907776,
		0.001495, -0.923252, -0.384192,
		0.983121, 0.071644, -0.168343,
		34.226250, 33.822655, 41.172211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819126, 33.135342, 41.381489>,  <33.538063, 33.772507, 41.290051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819126, 33.135342, 41.381489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137680, 33.356373, 41.479816>,  <34.328812, 33.488991, 41.538811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137680, 33.356373, 41.479816>,  <33.819126, 33.135342, 41.381489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137680, 33.356373, 41.479816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023322, -0.378088, 0.925476,
		0.604336, -0.742771, -0.288217,
		0.796388, 0.552577, 0.245815,
		34.376598, 33.522144, 41.553562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240463, 32.718502, 41.815731>,  <33.819126, 33.135342, 41.381489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240463, 32.718502, 41.815731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350399, 33.093159, 41.902607>,  <34.416359, 33.317951, 41.954731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350399, 33.093159, 41.902607>,  <34.240463, 32.718502, 41.815731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350399, 33.093159, 41.902607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068116, -0.206352, 0.976104,
		0.959076, -0.283061, 0.007088,
		0.274835, 0.936641, 0.217188,
		34.432850, 33.374149, 41.967762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222496, 32.647877, 42.597347>,  <34.240463, 32.718502, 41.815731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222496, 32.647877, 42.597347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321209, 33.030666, 42.536301>,  <34.380436, 33.260342, 42.499672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321209, 33.030666, 42.536301>,  <34.222496, 32.647877, 42.597347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321209, 33.030666, 42.536301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197631, 0.203878, 0.958841,
		0.948704, -0.206465, 0.239442,
		0.246784, 0.956978, -0.152616,
		34.395245, 33.317760, 42.490517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806000, 32.827583, 43.058662>,  <34.222496, 32.647877, 42.597347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806000, 32.827583, 43.058662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571697, 33.140896, 42.975361>,  <34.431118, 33.328884, 42.925381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571697, 33.140896, 42.975361>,  <34.806000, 32.827583, 43.058662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571697, 33.140896, 42.975361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126170, 0.165687, 0.978074,
		0.800609, 0.599184, 0.001775,
		-0.585752, 0.783279, -0.208249,
		34.395973, 33.375881, 42.912888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987961, 33.228142, 43.537270>,  <34.806000, 32.827583, 43.058662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987961, 33.228142, 43.537270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669270, 33.433723, 43.410095>,  <34.478054, 33.557072, 43.333790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669270, 33.433723, 43.410095>,  <34.987961, 33.228142, 43.537270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669270, 33.433723, 43.410095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124212, 0.375590, 0.918425,
		0.591438, 0.771224, -0.235404,
		-0.796726, 0.513951, -0.317933,
		34.430252, 33.587910, 43.314716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038128, 34.002319, 43.764744>,  <34.987961, 33.228142, 43.537270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038128, 34.002319, 43.764744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.658276, 33.886826, 43.716030>,  <34.430363, 33.817528, 43.686802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.658276, 33.886826, 43.716030>,  <35.038128, 34.002319, 43.764744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.658276, 33.886826, 43.716030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200906, 0.262726, 0.943722,
		-0.240494, 0.920655, -0.307502,
		-0.949631, -0.288738, -0.121781,
		34.373386, 33.800205, 43.679497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781342, 34.420403, 44.168987>,  <35.038128, 34.002319, 43.764744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781342, 34.420403, 44.168987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492592, 34.148849, 44.115303>,  <34.319344, 33.985916, 44.083092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492592, 34.148849, 44.115303>,  <34.781342, 34.420403, 44.168987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492592, 34.148849, 44.115303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322659, 0.158625, 0.933129,
		-0.612200, 0.716905, -0.333556,
		-0.721875, -0.678886, -0.134206,
		34.276028, 33.945183, 44.075043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162594, 34.701408, 44.403793>,  <34.781342, 34.420403, 44.168987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162594, 34.701408, 44.403793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094231, 34.307323, 44.408619>,  <34.053211, 34.070873, 44.411514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094231, 34.307323, 44.408619>,  <34.162594, 34.701408, 44.403793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094231, 34.307323, 44.408619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375019, 0.076367, 0.923866,
		-0.911126, 0.153374, -0.382526,
		-0.170909, -0.985213, 0.012061,
		34.042957, 34.011761, 44.412239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506458, 34.643375, 44.729465>,  <34.162594, 34.701408, 44.403793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506458, 34.643375, 44.729465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648201, 34.270725, 44.761745>,  <33.733246, 34.047134, 44.781113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648201, 34.270725, 44.761745>,  <33.506458, 34.643375, 44.729465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648201, 34.270725, 44.761745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289903, -0.027405, 0.956663,
		-0.889038, -0.362393, -0.279791,
		0.354356, -0.931622, 0.080695,
		33.754509, 33.991238, 44.785954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954182, 34.128860, 45.071255>,  <33.506458, 34.643375, 44.729465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954182, 34.128860, 45.071255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316223, 33.965099, 45.117180>,  <33.533447, 33.866844, 45.144733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316223, 33.965099, 45.117180>,  <32.954182, 34.128860, 45.071255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316223, 33.965099, 45.117180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227488, -0.238130, 0.944216,
		-0.359224, -0.880729, -0.308666,
		0.905100, -0.409403, 0.114813,
		33.587753, 33.842278, 45.151623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789604, 33.468819, 45.348423>,  <32.954182, 34.128860, 45.071255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789604, 33.468819, 45.348423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163887, 33.556755, 45.458778>,  <33.388458, 33.609516, 45.524990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163887, 33.556755, 45.458778>,  <32.789604, 33.468819, 45.348423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163887, 33.556755, 45.458778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220222, -0.246917, 0.943681,
		0.275584, -0.943769, -0.182629,
		0.935711, 0.219845, 0.275886,
		33.444599, 33.622707, 45.541546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878426, 33.000725, 45.929550>,  <32.789604, 33.468819, 45.348423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878426, 33.000725, 45.929550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210121, 33.221947, 45.961784>,  <33.409138, 33.354679, 45.981125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210121, 33.221947, 45.961784>,  <32.878426, 33.000725, 45.929550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210121, 33.221947, 45.961784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069186, -0.041500, 0.996740,
		0.554595, -0.832111, 0.003850,
		0.829239, 0.553054, 0.080586,
		33.458893, 33.387863, 45.985962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386158, 32.706722, 46.363625>,  <32.878426, 33.000725, 45.929550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386158, 32.706722, 46.363625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495716, 33.091393, 46.368839>,  <33.561451, 33.322193, 46.371967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495716, 33.091393, 46.368839>,  <33.386158, 32.706722, 46.363625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495716, 33.091393, 46.368839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193635, -0.068417, 0.978685,
		0.942066, -0.265529, -0.204952,
		0.273892, 0.961672, 0.013038,
		33.577885, 33.379894, 46.372749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085434, 32.674778, 46.654236>,  <33.386158, 32.706722, 46.363625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085434, 32.674778, 46.654236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.897350, 33.024414, 46.703003>,  <33.784500, 33.234196, 46.732262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.897350, 33.024414, 46.703003>,  <34.085434, 32.674778, 46.654236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897350, 33.024414, 46.703003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146973, -0.058660, 0.987400,
		0.870230, 0.482206, -0.100886,
		-0.470212, 0.874092, 0.121919,
		33.756287, 33.286640, 46.739578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.359379, 33.274212, 47.110374>,  <34.085434, 32.674778, 46.654236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.359379, 33.274212, 47.110374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966278, 33.347946, 47.116379>,  <33.730419, 33.392189, 47.119984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966278, 33.347946, 47.116379>,  <34.359379, 33.274212, 47.110374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966278, 33.347946, 47.116379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052296, 0.199091, 0.978585,
		0.177401, 0.962488, -0.205296,
		-0.982748, 0.184338, 0.015015,
		33.671455, 33.403248, 47.120884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259201, 33.900349, 47.631550>,  <34.359379, 33.274212, 47.110374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259201, 33.900349, 47.631550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928284, 33.679241, 47.591480>,  <33.729733, 33.546577, 47.567440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928284, 33.679241, 47.591480>,  <34.259201, 33.900349, 47.631550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928284, 33.679241, 47.591480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144151, 0.036536, 0.988881,
		-0.542963, 0.832533, -0.109908,
		-0.827292, -0.552769, -0.100173,
		33.680096, 33.513409, 47.561428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713791, 34.226501, 48.081223>,  <34.259201, 33.900349, 47.631550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713791, 34.226501, 48.081223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631126, 33.835835, 48.057877>,  <33.581528, 33.601433, 48.043869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631126, 33.835835, 48.057877>,  <33.713791, 34.226501, 48.081223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631126, 33.835835, 48.057877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106811, -0.036780, 0.993599,
		-0.972565, 0.211571, -0.096718,
		-0.206660, -0.976670, -0.058369,
		33.569130, 33.542835, 48.040367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206669, 34.170746, 48.655792>,  <33.713791, 34.226501, 48.081223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206669, 34.170746, 48.655792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350147, 33.810776, 48.556614>,  <33.436234, 33.594795, 48.497105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350147, 33.810776, 48.556614>,  <33.206669, 34.170746, 48.655792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350147, 33.810776, 48.556614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086165, -0.296412, 0.951165,
		-0.929470, -0.319812, -0.183863,
		0.358693, -0.899923, -0.247950,
		33.457756, 33.540798, 48.482227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813343, 33.773781, 49.149593>,  <33.206669, 34.170746, 48.655792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813343, 33.773781, 49.149593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138317, 33.581635, 49.017410>,  <33.333302, 33.466347, 48.938103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138317, 33.581635, 49.017410>,  <32.813343, 33.773781, 49.149593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138317, 33.581635, 49.017410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142231, -0.386363, 0.911314,
		-0.565439, -0.787384, -0.245572,
		0.812434, -0.480364, -0.330455,
		33.382046, 33.437527, 48.918274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891506, 33.287643, 49.572891>,  <32.813343, 33.773781, 49.149593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891506, 33.287643, 49.572891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250904, 33.236713, 49.404850>,  <33.466545, 33.206154, 49.304024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250904, 33.236713, 49.404850>,  <32.891506, 33.287643, 49.572891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250904, 33.236713, 49.404850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312013, -0.487940, 0.815207,
		-0.308785, -0.863540, -0.398685,
		0.898498, -0.127328, -0.420104,
		33.520454, 33.198513, 49.278820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119995, 32.554543, 49.633942>,  <32.891506, 33.287643, 49.572891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119995, 32.554543, 49.633942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443192, 32.786259, 49.590900>,  <33.637108, 32.925289, 49.565075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443192, 32.786259, 49.590900>,  <33.119995, 32.554543, 49.633942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443192, 32.786259, 49.590900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328950, -0.292006, 0.898067,
		0.488818, -0.761025, -0.426494,
		0.807991, 0.579287, -0.107602,
		33.685589, 32.960045, 49.558620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719883, 32.052200, 49.803410>,  <33.119995, 32.554543, 49.633942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719883, 32.052200, 49.803410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840569, 32.428085, 49.867794>,  <33.912979, 32.653618, 49.906425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840569, 32.428085, 49.867794>,  <33.719883, 32.052200, 49.803410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840569, 32.428085, 49.867794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456419, -0.290590, 0.840975,
		0.837050, -0.180265, -0.516577,
		0.301710, 0.939714, 0.160962,
		33.931080, 32.709999, 49.916084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393135, 32.047520, 50.174202>,  <33.719883, 32.052200, 49.803410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393135, 32.047520, 50.174202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.277435, 32.426140, 50.231293>,  <34.208015, 32.653313, 50.265549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.277435, 32.426140, 50.231293>,  <34.393135, 32.047520, 50.174202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277435, 32.426140, 50.231293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377054, -0.024391, 0.925870,
		0.879867, 0.321622, -0.349847,
		-0.289247, 0.946554, 0.142730,
		34.190662, 32.710106, 50.274113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869659, 32.340481, 50.600513>,  <34.393135, 32.047520, 50.174202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869659, 32.340481, 50.600513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531509, 32.546490, 50.657215>,  <34.328621, 32.670094, 50.691235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531509, 32.546490, 50.657215>,  <34.869659, 32.340481, 50.600513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531509, 32.546490, 50.657215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112676, -0.087472, 0.989774,
		0.522156, 0.852701, 0.015916,
		-0.845374, 0.515023, 0.141753,
		34.277897, 32.700996, 50.699741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027584, 32.728638, 51.180466>,  <34.869659, 32.340481, 50.600513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027584, 32.728638, 51.180466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628639, 32.754864, 51.167961>,  <34.389275, 32.770599, 51.160458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628639, 32.754864, 51.167961>,  <35.027584, 32.728638, 51.180466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628639, 32.754864, 51.167961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040462, -0.144080, 0.988739,
		0.060324, 0.987392, 0.146352,
		-0.997359, 0.065566, -0.031260,
		34.329433, 32.774532, 51.158585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904957, 33.218773, 51.645405>,  <35.027584, 32.728638, 51.180466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904957, 33.218773, 51.645405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593376, 32.970409, 51.610279>,  <34.406429, 32.821392, 51.589203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593376, 32.970409, 51.610279>,  <34.904957, 33.218773, 51.645405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593376, 32.970409, 51.610279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147202, -0.317176, 0.936873,
		-0.609566, 0.716849, 0.338463,
		-0.778948, -0.620909, -0.087818,
		34.359692, 32.784138, 51.583935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511051, 33.373463, 52.208958>,  <34.904957, 33.218773, 51.645405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511051, 33.373463, 52.208958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386261, 33.009174, 52.100693>,  <34.311386, 32.790600, 52.035732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386261, 33.009174, 52.100693>,  <34.511051, 33.373463, 52.208958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386261, 33.009174, 52.100693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150687, -0.233845, 0.960526,
		-0.938064, 0.340447, -0.064280,
		-0.311977, -0.910721, -0.270662,
		34.292667, 32.735958, 52.019493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873940, 33.357094, 52.580097>,  <34.511051, 33.373463, 52.208958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873940, 33.357094, 52.580097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981705, 32.979515, 52.503803>,  <34.046364, 32.752968, 52.458027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981705, 32.979515, 52.503803>,  <33.873940, 33.357094, 52.580097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981705, 32.979515, 52.503803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360135, -0.282448, 0.889115,
		-0.893150, -0.170850, -0.416044,
		0.269416, -0.943945, -0.190739,
		34.062531, 32.696331, 52.446583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286018, 32.872494, 52.535267>,  <33.873940, 33.357094, 52.580097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286018, 32.872494, 52.535267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615501, 32.696617, 52.678471>,  <33.813190, 32.591091, 52.764393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615501, 32.696617, 52.678471>,  <33.286018, 32.872494, 52.535267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615501, 32.696617, 52.678471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469724, -0.175517, 0.865189,
		-0.317580, -0.880832, -0.351109,
		0.823712, -0.439691, 0.358007,
		33.862614, 32.564709, 52.785873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207317, 32.142494, 52.743946>,  <33.286018, 32.872494, 52.535267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207317, 32.142494, 52.743946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452850, 32.372448, 52.960361>,  <33.600170, 32.510418, 53.090210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452850, 32.372448, 52.960361>,  <33.207317, 32.142494, 52.743946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452850, 32.372448, 52.960361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597444, -0.109679, 0.794375,
		0.516011, -0.810853, 0.276135,
		0.613835, 0.574881, 0.541035,
		33.637001, 32.544910, 53.122673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390480, 31.793665, 53.374325>,  <33.207317, 32.142494, 52.743946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390480, 31.793665, 53.374325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399864, 32.192768, 53.399387>,  <33.405495, 32.432232, 53.414425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399864, 32.192768, 53.399387>,  <33.390480, 31.793665, 53.374325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399864, 32.192768, 53.399387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516682, -0.041553, 0.855168,
		0.855856, -0.052441, 0.514550,
		0.023465, 0.997759, 0.062659,
		33.406902, 32.492096, 53.418186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674404, 31.974449, 54.096836>,  <33.390480, 31.793665, 53.374325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674404, 31.974449, 54.096836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404430, 32.227818, 53.945446>,  <33.242447, 32.379837, 53.854610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404430, 32.227818, 53.945446>,  <33.674404, 31.974449, 54.096836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404430, 32.227818, 53.945446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517342, -0.040476, 0.854821,
		0.526143, 0.772748, 0.355013,
		-0.674931, 0.633421, -0.378479,
		33.201950, 32.417843, 53.831902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221539, 31.608063, 53.887527>,  <33.674404, 31.974449, 54.096836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221539, 31.608063, 53.887527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237587, 31.461151, 54.259224>,  <34.247215, 31.373005, 54.482243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237587, 31.461151, 54.259224>,  <34.221539, 31.608063, 53.887527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237587, 31.461151, 54.259224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553290, -0.766232, -0.326739,
		0.832022, 0.527253, 0.172466,
		0.040125, -0.367278, 0.929246,
		34.249626, 31.350967, 54.537998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772350, 31.743744, 54.384377>,  <34.221539, 31.608063, 53.887527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772350, 31.743744, 54.384377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636311, 31.368353, 54.408352>,  <34.554688, 31.143118, 54.422737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636311, 31.368353, 54.408352>,  <34.772350, 31.743744, 54.384377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636311, 31.368353, 54.408352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853019, -0.334701, -0.400417,
		0.395845, -0.085049, 0.914370,
		-0.340096, -0.938478, 0.059942,
		34.534283, 31.086809, 54.426334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344406, 31.410587, 54.621391>,  <34.772350, 31.743744, 54.384377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344406, 31.410587, 54.621391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094101, 31.195244, 54.395618>,  <34.943916, 31.066038, 54.260155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094101, 31.195244, 54.395618>,  <35.344406, 31.410587, 54.621391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094101, 31.195244, 54.395618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763195, -0.273147, -0.585597,
		0.161088, -0.797220, 0.581799,
		-0.625767, -0.538359, -0.564434,
		34.906372, 31.033737, 54.226288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568214, 30.624998, 54.544956>,  <35.344406, 31.410587, 54.621391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568214, 30.624998, 54.544956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.360893, 30.760080, 54.230679>,  <35.236500, 30.841129, 54.042110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.360893, 30.760080, 54.230679>,  <35.568214, 30.624998, 54.544956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360893, 30.760080, 54.230679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776813, -0.198325, -0.597686,
		-0.357667, -0.920119, -0.159544,
		-0.518301, 0.337708, -0.785695,
		35.205402, 30.861393, 53.994968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344543, 30.077534, 54.107098>,  <35.568214, 30.624998, 54.544956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344543, 30.077534, 54.107098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446487, 30.445202, 53.986980>,  <35.507652, 30.665802, 53.914909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446487, 30.445202, 53.986980>,  <35.344543, 30.077534, 54.107098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446487, 30.445202, 53.986980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904996, -0.336124, -0.260774,
		-0.340630, -0.205301, -0.917509,
		0.254859, 0.919169, -0.300291,
		35.522945, 30.720953, 53.896893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605377, 30.026537, 53.388721>,  <35.344543, 30.077534, 54.107098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605377, 30.026537, 53.388721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773819, 30.350613, 53.551823>,  <35.874886, 30.545059, 53.649681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773819, 30.350613, 53.551823>,  <35.605377, 30.026537, 53.388721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773819, 30.350613, 53.551823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861866, -0.217374, -0.458187,
		-0.282585, 0.544371, -0.789814,
		0.421108, 0.810190, 0.407749,
		35.900150, 30.593670, 53.674149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292454, 29.886978, 53.232750>,  <35.605377, 30.026537, 53.388721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292454, 29.886978, 53.232750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033249, 30.168091, 53.115322>,  <35.877728, 30.336758, 53.044865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033249, 30.168091, 53.115322>,  <36.292454, 29.886978, 53.232750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033249, 30.168091, 53.115322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222124, -0.194314, -0.955459,
		-0.728524, -0.684355, -0.030187,
		-0.648008, 0.702780, -0.293574,
		35.838848, 30.378925, 53.027248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813942, 29.558846, 52.881100>,  <36.292454, 29.886978, 53.232750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813942, 29.558846, 52.881100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760029, 29.935005, 52.756210>,  <35.727680, 30.160702, 52.681278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760029, 29.935005, 52.756210>,  <35.813942, 29.558846, 52.881100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760029, 29.935005, 52.756210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038492, -0.319827, -0.946694,
		-0.990128, -0.115577, 0.079304,
		-0.134780, 0.940400, -0.312220,
		35.719593, 30.217125, 52.662544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403793, 29.499687, 52.279289>,  <35.813942, 29.558846, 52.881100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403793, 29.499687, 52.279289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551643, 29.870638, 52.256123>,  <35.640354, 30.093208, 52.242222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551643, 29.870638, 52.256123>,  <35.403793, 29.499687, 52.279289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551643, 29.870638, 52.256123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040082, -0.046364, -0.998120,
		-0.928317, 0.371249, 0.020034,
		0.369622, 0.927375, -0.057921,
		35.662529, 30.148849, 52.238747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095688, 29.839128, 51.632118>,  <35.403793, 29.499687, 52.279289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095688, 29.839128, 51.632118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.404537, 30.079828, 51.713829>,  <35.589844, 30.224249, 51.762856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.404537, 30.079828, 51.713829>,  <35.095688, 29.839128, 51.632118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404537, 30.079828, 51.713829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113853, 0.185265, -0.976071,
		-0.625196, 0.776900, 0.074536,
		0.772119, 0.601750, 0.204279,
		35.636173, 30.260353, 51.775112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014706, 30.296345, 51.113167>,  <35.095688, 29.839128, 51.632118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014706, 30.296345, 51.113167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395092, 30.330460, 51.232086>,  <35.623325, 30.350929, 51.303436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395092, 30.330460, 51.232086>,  <35.014706, 30.296345, 51.113167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395092, 30.330460, 51.232086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261439, 0.291917, -0.920018,
		-0.165252, 0.952633, 0.255306,
		0.950969, 0.085288, 0.297296,
		35.680382, 30.356047, 51.321274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213516, 30.911686, 50.841400>,  <35.014706, 30.296345, 51.113167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213516, 30.911686, 50.841400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557446, 30.721935, 50.916954>,  <35.763802, 30.608086, 50.962288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557446, 30.721935, 50.916954>,  <35.213516, 30.911686, 50.841400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557446, 30.721935, 50.916954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360509, 0.302039, -0.882500,
		0.361587, 0.826885, 0.430716,
		0.859819, -0.474377, 0.188886,
		35.815392, 30.579622, 50.973621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773964, 31.433208, 50.754433>,  <35.213516, 30.911686, 50.841400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773964, 31.433208, 50.754433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.927315, 31.064747, 50.727612>,  <36.019325, 30.843670, 50.711517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.927315, 31.064747, 50.727612>,  <35.773964, 31.433208, 50.754433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927315, 31.064747, 50.727612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459804, 0.253325, -0.851121,
		0.801000, 0.295469, 0.520669,
		0.383378, -0.921154, -0.067056,
		36.042328, 30.788401, 50.707493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529770, 31.443720, 50.709488>,  <35.773964, 31.433208, 50.754433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529770, 31.443720, 50.709488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451851, 31.078190, 50.566956>,  <36.405098, 30.858871, 50.481434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451851, 31.078190, 50.566956>,  <36.529770, 31.443720, 50.709488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451851, 31.078190, 50.566956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432658, 0.245983, -0.867352,
		0.880261, -0.323131, 0.347457,
		-0.194800, -0.913826, -0.356335,
		36.393410, 30.804043, 50.460056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181358, 31.239246, 50.357182>,  <36.529770, 31.443720, 50.709488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181358, 31.239246, 50.357182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888443, 31.013802, 50.204288>,  <36.712696, 30.878534, 50.112553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888443, 31.013802, 50.204288>,  <37.181358, 31.239246, 50.357182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888443, 31.013802, 50.204288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336489, 0.188519, -0.922625,
		0.592060, -0.804241, 0.051599,
		-0.732285, -0.563611, -0.382232,
		36.668758, 30.844719, 50.089619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536308, 30.733713, 50.019302>,  <37.181358, 31.239246, 50.357182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536308, 30.733713, 50.019302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170345, 30.778301, 49.864120>,  <36.950768, 30.805054, 49.771011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170345, 30.778301, 49.864120>,  <37.536308, 30.733713, 50.019302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170345, 30.778301, 49.864120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403641, 0.244981, -0.881509,
		-0.003219, -0.963099, -0.269130,
		-0.914912, 0.111470, -0.387957,
		36.895870, 30.811743, 49.747734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576218, 30.391872, 49.406197>,  <37.536308, 30.733713, 50.019302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576218, 30.391872, 49.406197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.243584, 30.608089, 49.355148>,  <37.044003, 30.737820, 49.324520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.243584, 30.608089, 49.355148>,  <37.576218, 30.391872, 49.406197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243584, 30.608089, 49.355148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255675, 0.168577, -0.951952,
		-0.493055, -0.824255, -0.278389,
		-0.831581, 0.540542, -0.127624,
		36.994110, 30.770252, 49.316860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388321, 30.308161, 48.738651>,  <37.576218, 30.391872, 49.406197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388321, 30.308161, 48.738651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169273, 30.632427, 48.821529>,  <37.037846, 30.826986, 48.871258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169273, 30.632427, 48.821529>,  <37.388321, 30.308161, 48.738651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169273, 30.632427, 48.821529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128366, 0.326095, -0.936581,
		-0.826821, -0.486295, -0.282639,
		-0.547622, 0.810666, 0.207198,
		37.004986, 30.875628, 48.883690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969833, 30.266384, 48.262859>,  <37.388321, 30.308161, 48.738651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969833, 30.266384, 48.262859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.957077, 30.640238, 48.404533>,  <36.949425, 30.864550, 48.489536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.957077, 30.640238, 48.404533>,  <36.969833, 30.266384, 48.262859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957077, 30.640238, 48.404533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023891, 0.354973, -0.934571,
		-0.999206, -0.021341, -0.033649,
		-0.031890, 0.934633, 0.354181,
		36.947510, 30.920628, 48.510788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633045, 30.618818, 47.786446>,  <36.969833, 30.266384, 48.262859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633045, 30.618818, 47.786446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783688, 30.934427, 47.980602>,  <36.874073, 31.123793, 48.097095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783688, 30.934427, 47.980602>,  <36.633045, 30.618818, 47.786446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783688, 30.934427, 47.980602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191168, 0.446499, -0.874125,
		-0.906433, 0.421994, 0.017319,
		0.376608, 0.789025, 0.485393,
		36.896671, 31.171135, 48.126221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224842, 31.197565, 47.458763>,  <36.633045, 30.618818, 47.786446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224842, 31.197565, 47.458763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546104, 31.342983, 47.647564>,  <36.738861, 31.430233, 47.760845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546104, 31.342983, 47.647564>,  <36.224842, 31.197565, 47.458763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546104, 31.342983, 47.647564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059667, 0.739179, -0.670861,
		-0.592779, 0.566966, 0.571981,
		0.803152, 0.363544, 0.471999,
		36.787048, 31.452047, 47.789165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064087, 31.824791, 47.538265>,  <36.224842, 31.197565, 47.458763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064087, 31.824791, 47.538265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.463173, 31.811605, 47.561867>,  <36.702625, 31.803694, 47.576027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.463173, 31.811605, 47.561867>,  <36.064087, 31.824791, 47.538265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463173, 31.811605, 47.561867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065050, 0.705205, -0.706013,
		-0.018333, 0.708236, 0.705737,
		0.997714, -0.032965, 0.058999,
		36.762486, 31.801716, 47.579567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278526, 32.474831, 47.592453>,  <36.064087, 31.824791, 47.538265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278526, 32.474831, 47.592453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580677, 32.272034, 47.426392>,  <36.761967, 32.150356, 47.326756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580677, 32.272034, 47.426392>,  <36.278526, 32.474831, 47.592453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580677, 32.272034, 47.426392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018738, 0.616578, -0.787071,
		0.655018, 0.602317, 0.456251,
		0.755381, -0.506997, -0.415156,
		36.807293, 32.119934, 47.301846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541317, 32.995132, 47.196716>,  <36.278526, 32.474831, 47.592453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541317, 32.995132, 47.196716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.697102, 32.661400, 47.040661>,  <36.790573, 32.461159, 46.947029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.697102, 32.661400, 47.040661>,  <36.541317, 32.995132, 47.196716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697102, 32.661400, 47.040661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068068, 0.396350, -0.915573,
		0.918526, 0.383132, 0.097570,
		0.389457, -0.834336, -0.390137,
		36.813938, 32.411098, 46.923618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040440, 33.186649, 46.751114>,  <36.541317, 32.995132, 47.196716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040440, 33.186649, 46.751114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947987, 32.817886, 46.626751>,  <36.892513, 32.596630, 46.552132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947987, 32.817886, 46.626751>,  <37.040440, 33.186649, 46.751114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947987, 32.817886, 46.626751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156880, 0.350695, -0.923256,
		0.960191, -0.164620, -0.225686,
		-0.231133, -0.921907, -0.310909,
		36.878647, 32.541313, 46.533478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521015, 32.879128, 46.309723>,  <37.040440, 33.186649, 46.751114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521015, 32.879128, 46.309723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180019, 32.692493, 46.215431>,  <36.975422, 32.580513, 46.158855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180019, 32.692493, 46.215431>,  <37.521015, 32.879128, 46.309723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180019, 32.692493, 46.215431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230152, 0.069895, -0.970641,
		0.469360, -0.881712, 0.047800,
		-0.852485, -0.466582, -0.235734,
		36.924274, 32.552521, 46.144711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743988, 32.520386, 45.829494>,  <37.521015, 32.879128, 46.309723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743988, 32.520386, 45.829494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349281, 32.501503, 45.767445>,  <37.112457, 32.490173, 45.730213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349281, 32.501503, 45.767445>,  <37.743988, 32.520386, 45.829494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349281, 32.501503, 45.767445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146697, 0.147668, -0.978097,
		0.069081, -0.987909, -0.138789,
		-0.986766, -0.047208, -0.155125,
		37.053253, 32.487339, 45.720905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675446, 32.109455, 45.154636>,  <37.743988, 32.520386, 45.829494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675446, 32.109455, 45.154636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317165, 32.278786, 45.209049>,  <37.102196, 32.380386, 45.241699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317165, 32.278786, 45.209049>,  <37.675446, 32.109455, 45.154636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317165, 32.278786, 45.209049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128000, 0.047508, -0.990636,
		-0.425828, -0.904730, 0.011633,
		-0.895705, 0.423329, 0.136036,
		37.048454, 32.405785, 45.249859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228661, 31.689369, 44.853172>,  <37.675446, 32.109455, 45.154636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228661, 31.689369, 44.853172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.029507, 32.036156, 44.861900>,  <36.910015, 32.244228, 44.867138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.029507, 32.036156, 44.861900>,  <37.228661, 31.689369, 44.853172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029507, 32.036156, 44.861900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210610, -0.096466, -0.972799,
		-0.841279, -0.488941, 0.230621,
		-0.497888, 0.866967, 0.021821,
		36.880138, 32.296246, 44.868446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615005, 31.493046, 44.569771>,  <37.228661, 31.689369, 44.853172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615005, 31.493046, 44.569771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656250, 31.887918, 44.521034>,  <36.680996, 32.124840, 44.491795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656250, 31.887918, 44.521034>,  <36.615005, 31.493046, 44.569771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656250, 31.887918, 44.521034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042822, -0.126782, -0.991006,
		-0.993748, 0.096965, -0.055345,
		0.103109, 0.987180, -0.121837,
		36.687183, 32.184071, 44.484482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087681, 31.673025, 44.127975>,  <36.615005, 31.493046, 44.569771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087681, 31.673025, 44.127975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333954, 31.988129, 44.120300>,  <36.481716, 32.177193, 44.115696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333954, 31.988129, 44.120300>,  <36.087681, 31.673025, 44.127975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333954, 31.988129, 44.120300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095278, -0.098594, -0.990556,
		-0.782212, 0.608041, -0.135759,
		0.615684, 0.787760, -0.019188,
		36.518658, 32.224457, 44.114544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865837, 32.071941, 43.608002>,  <36.087681, 31.673025, 44.127975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865837, 32.071941, 43.608002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243240, 32.195858, 43.655022>,  <36.469681, 32.270210, 43.683235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243240, 32.195858, 43.655022>,  <35.865837, 32.071941, 43.608002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243240, 32.195858, 43.655022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107026, 0.050823, -0.992956,
		-0.313586, 0.949445, 0.014796,
		0.943509, 0.309794, 0.117553,
		36.526295, 32.288795, 43.690289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919960, 32.717659, 43.382095>,  <35.865837, 32.071941, 43.608002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919960, 32.717659, 43.382095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266945, 32.525864, 43.329041>,  <36.475136, 32.410786, 43.297207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266945, 32.525864, 43.329041>,  <35.919960, 32.717659, 43.382095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266945, 32.525864, 43.329041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157833, -0.012418, -0.987388,
		0.471796, 0.877459, -0.086452,
		0.867466, -0.479491, -0.132633,
		36.527184, 32.382015, 43.289249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186325, 32.891396, 42.677711>,  <35.919960, 32.717659, 43.382095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186325, 32.891396, 42.677711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471218, 32.621181, 42.754005>,  <36.642155, 32.459053, 42.799782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471218, 32.621181, 42.754005>,  <36.186325, 32.891396, 42.677711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471218, 32.621181, 42.754005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147148, -0.121993, -0.981563,
		0.686345, 0.727168, 0.012516,
		0.712234, -0.675533, 0.190730,
		36.684887, 32.418522, 42.811226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766979, 33.100140, 42.250793>,  <36.186325, 32.891396, 42.677711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766979, 33.100140, 42.250793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816628, 32.717964, 42.357929>,  <36.846416, 32.488659, 42.422211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816628, 32.717964, 42.357929>,  <36.766979, 33.100140, 42.250793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816628, 32.717964, 42.357929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177793, -0.244139, -0.953303,
		0.976208, 0.165948, 0.139566,
		0.124125, -0.955436, 0.267835,
		36.853867, 32.431332, 42.438278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471611, 32.893337, 42.037689>,  <36.766979, 33.100140, 42.250793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471611, 32.893337, 42.037689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.235764, 32.571167, 42.061832>,  <37.094254, 32.377865, 42.076317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.235764, 32.571167, 42.061832>,  <37.471611, 32.893337, 42.037689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235764, 32.571167, 42.061832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167096, -0.194755, -0.966514,
		0.790208, -0.559789, 0.249414,
		-0.589619, -0.805423, 0.060358,
		37.058880, 32.329540, 42.079941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821480, 32.398014, 41.700161>,  <37.471611, 32.893337, 42.037689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821480, 32.398014, 41.700161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441338, 32.273556, 41.701324>,  <37.213253, 32.198883, 41.702023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441338, 32.273556, 41.701324>,  <37.821480, 32.398014, 41.700161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441338, 32.273556, 41.701324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058042, -0.186467, -0.980745,
		0.305694, -0.931891, 0.195270,
		-0.950359, -0.311142, 0.002913,
		37.156231, 32.180214, 41.702198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886776, 31.828869, 41.296513>,  <37.821480, 32.398014, 41.700161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886776, 31.828869, 41.296513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502399, 31.937443, 41.318138>,  <37.271774, 32.002586, 41.331112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502399, 31.937443, 41.318138>,  <37.886776, 31.828869, 41.296513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502399, 31.937443, 41.318138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092838, -0.132104, -0.986879,
		-0.260734, -0.953347, 0.152143,
		-0.960937, 0.271437, 0.054063,
		37.214119, 32.018875, 41.334358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512783, 31.335726, 40.795204>,  <37.886776, 31.828869, 41.296513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512783, 31.335726, 40.795204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.282337, 31.657717, 40.851917>,  <37.144070, 31.850912, 40.885944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.282337, 31.657717, 40.851917>,  <37.512783, 31.335726, 40.795204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282337, 31.657717, 40.851917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231982, 0.005302, -0.972706,
		-0.783759, -0.593280, 0.183686,
		-0.576112, 0.804979, 0.141786,
		37.109505, 31.899210, 40.894455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926697, 31.199593, 40.403179>,  <37.512783, 31.335726, 40.795204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926697, 31.199593, 40.403179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889217, 31.595804, 40.443329>,  <36.866730, 31.833530, 40.467419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889217, 31.595804, 40.443329>,  <36.926697, 31.199593, 40.403179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889217, 31.595804, 40.443329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468958, 0.045025, -0.882072,
		-0.878236, -0.129723, 0.460297,
		-0.093700, 0.990527, 0.100377,
		36.861107, 31.892963, 40.473442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263187, 31.410900, 40.008934>,  <36.926697, 31.199593, 40.403179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263187, 31.410900, 40.008934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446606, 31.761021, 40.070354>,  <36.556656, 31.971094, 40.107208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446606, 31.761021, 40.070354>,  <36.263187, 31.410900, 40.008934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446606, 31.761021, 40.070354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303246, 0.316538, -0.898802,
		-0.835329, 0.365581, 0.410580,
		0.458549, 0.875302, 0.153553,
		36.584171, 32.023613, 40.116421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762909, 31.933172, 39.712078>,  <36.263187, 31.410900, 40.008934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762909, 31.933172, 39.712078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125919, 32.097424, 39.747375>,  <36.343723, 32.195976, 39.768555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125919, 32.097424, 39.747375>,  <35.762909, 31.933172, 39.712078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125919, 32.097424, 39.747375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104247, 0.423740, -0.899765,
		-0.406861, 0.807358, 0.427360,
		0.907522, 0.410630, 0.088239,
		36.398174, 32.220612, 39.773846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640484, 32.616695, 39.550060>,  <35.762909, 31.933172, 39.712078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640484, 32.616695, 39.550060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027847, 32.540474, 39.485722>,  <36.260265, 32.494740, 39.447121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027847, 32.540474, 39.485722>,  <35.640484, 32.616695, 39.550060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027847, 32.540474, 39.485722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090363, 0.333017, -0.938581,
		0.232414, 0.923466, 0.305278,
		0.968410, -0.190554, -0.160845,
		36.318371, 32.483307, 39.437469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947151, 33.117275, 39.176311>,  <35.640484, 32.616695, 39.550060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947151, 33.117275, 39.176311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.231445, 32.847870, 39.095078>,  <36.402020, 32.686226, 39.046337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.231445, 32.847870, 39.095078>,  <35.947151, 33.117275, 39.176311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231445, 32.847870, 39.095078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006291, 0.294761, -0.955550,
		0.703434, 0.677863, 0.213734,
		0.710733, -0.673511, -0.203081,
		36.444664, 32.645817, 39.034153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656113, 33.328491, 38.975979>,  <35.947151, 33.117275, 39.176311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656113, 33.328491, 38.975979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482224, 32.995209, 38.839283>,  <36.377888, 32.795238, 38.757267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482224, 32.995209, 38.839283>,  <36.656113, 33.328491, 38.975979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482224, 32.995209, 38.839283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023864, 0.389994, -0.920508,
		0.900246, -0.392014, -0.189424,
		-0.434726, -0.833205, -0.341736,
		36.351807, 32.745247, 38.736763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493252, 33.248161, 38.882469>,  <36.656113, 33.328491, 38.975979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493252, 33.248161, 38.882469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394836, 33.290695, 39.267834>,  <37.335789, 33.316216, 39.499050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394836, 33.290695, 39.267834>,  <37.493252, 33.248161, 38.882469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394836, 33.290695, 39.267834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075309, -0.993056, 0.090378,
		0.966330, -0.050317, 0.252340,
		-0.246040, 0.106339, 0.963409,
		37.321026, 33.322598, 39.556858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116158, 33.329765, 38.400833>,  <37.493252, 33.248161, 38.882469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116158, 33.329765, 38.400833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512825, 33.381283, 38.402336>,  <38.750824, 33.412193, 38.403236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512825, 33.381283, 38.402336>,  <38.116158, 33.329765, 38.400833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512825, 33.381283, 38.402336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070099, -0.563760, 0.822958,
		0.108107, -0.815835, -0.568089,
		0.991665, 0.128791, 0.003757,
		38.810326, 33.419918, 38.403461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346409, 32.686516, 38.613323>,  <38.116158, 33.329765, 38.400833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346409, 32.686516, 38.613323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.651508, 32.939907, 38.665337>,  <38.834568, 33.091942, 38.696545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.651508, 32.939907, 38.665337>,  <38.346409, 32.686516, 38.613323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651508, 32.939907, 38.665337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219042, -0.442269, 0.869723,
		0.608465, -0.634900, -0.476101,
		0.762752, 0.633482, 0.130036,
		38.880333, 33.129951, 38.704346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024223, 32.223972, 38.873020>,  <38.346409, 32.686516, 38.613323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024223, 32.223972, 38.873020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.057446, 32.606403, 38.985462>,  <39.077377, 32.835861, 39.052929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.057446, 32.606403, 38.985462>,  <39.024223, 32.223972, 38.873020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057446, 32.606403, 38.985462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354569, -0.291976, 0.888274,
		0.931334, 0.025895, -0.363245,
		0.083057, 0.956075, 0.281108,
		39.082363, 32.893227, 39.069794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673714, 32.422733, 39.118816>,  <39.024223, 32.223972, 38.873020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673714, 32.422733, 39.118816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.465904, 32.709179, 39.305267>,  <39.341217, 32.881046, 39.417137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.465904, 32.709179, 39.305267>,  <39.673714, 32.422733, 39.118816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465904, 32.709179, 39.305267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298878, -0.358759, 0.884287,
		0.800476, 0.598726, -0.027645,
		-0.519528, 0.716114, 0.466124,
		39.310047, 32.924011, 39.445103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105789, 32.498859, 39.654163>,  <39.673714, 32.422733, 39.118816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105789, 32.498859, 39.654163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776245, 32.701283, 39.756268>,  <39.578518, 32.822739, 39.817532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776245, 32.701283, 39.756268>,  <40.105789, 32.498859, 39.654163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776245, 32.701283, 39.756268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259179, -0.064162, 0.963696,
		0.504067, 0.860108, -0.078300,
		-0.823859, 0.506061, 0.255264,
		39.529087, 32.853100, 39.832848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291992, 33.020397, 40.130558>,  <40.105789, 32.498859, 39.654163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.291992, 33.020397, 40.130558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.908978, 32.929703, 40.201794>,  <39.679169, 32.875286, 40.244537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.908978, 32.929703, 40.201794>,  <40.291992, 33.020397, 40.130558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.908978, 32.929703, 40.201794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179825, 0.013166, 0.983611,
		-0.225364, 0.973867, 0.028166,
		-0.957535, -0.226735, 0.178093,
		39.621716, 32.861683, 40.255222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248219, 33.312706, 40.742836>,  <40.291992, 33.020397, 40.130558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248219, 33.312706, 40.742836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926823, 33.076836, 40.710114>,  <39.733986, 32.935314, 40.690479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926823, 33.076836, 40.710114>,  <40.248219, 33.312706, 40.742836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926823, 33.076836, 40.710114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028536, -0.175412, 0.984082,
		-0.594639, 0.788361, 0.157768,
		-0.803486, -0.589675, -0.081810,
		39.685776, 32.899933, 40.685570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644356, 33.477215, 41.207718>,  <40.248219, 33.312706, 40.742836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644356, 33.477215, 41.207718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.547302, 33.097965, 41.125561>,  <39.489071, 32.870415, 41.076267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.547302, 33.097965, 41.125561>,  <39.644356, 33.477215, 41.207718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547302, 33.097965, 41.125561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357906, -0.109294, 0.927339,
		-0.901683, 0.298514, -0.312822,
		-0.242635, -0.948127, -0.205388,
		39.474510, 32.813526, 41.063946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013214, 33.376995, 41.657841>,  <39.644356, 33.477215, 41.207718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013214, 33.376995, 41.657841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126324, 33.002010, 41.576653>,  <39.194187, 32.777020, 41.527939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126324, 33.002010, 41.576653>,  <39.013214, 33.376995, 41.657841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126324, 33.002010, 41.576653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153373, -0.253079, 0.955211,
		-0.946846, -0.238973, -0.215345,
		0.282769, -0.937466, -0.202975,
		39.211155, 32.720772, 41.515759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611698, 32.928253, 42.160080>,  <39.013214, 33.376995, 41.657841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611698, 32.928253, 42.160080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.923859, 32.716259, 42.027355>,  <39.111153, 32.589062, 41.947720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.923859, 32.716259, 42.027355>,  <38.611698, 32.928253, 42.160080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923859, 32.716259, 42.027355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298515, -0.150497, 0.942464,
		-0.549425, -0.834548, 0.040760,
		0.780398, -0.529981, -0.331812,
		39.157978, 32.557266, 41.927811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529144, 32.372639, 42.551605>,  <38.611698, 32.928253, 42.160080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529144, 32.372639, 42.551605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909065, 32.379440, 42.426647>,  <39.137016, 32.383522, 42.351673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909065, 32.379440, 42.426647>,  <38.529144, 32.372639, 42.551605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909065, 32.379440, 42.426647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311924, -0.128511, 0.941376,
		-0.024139, -0.991562, -0.127364,
		0.949800, 0.017004, -0.312394,
		39.194004, 32.384541, 42.332928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868618, 31.769754, 42.827236>,  <38.529144, 32.372639, 42.551605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868618, 31.769754, 42.827236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.172821, 32.019226, 42.754955>,  <39.355343, 32.168911, 42.711586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.172821, 32.019226, 42.754955>,  <38.868618, 31.769754, 42.827236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172821, 32.019226, 42.754955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257911, -0.034740, 0.965544,
		0.595914, -0.780906, -0.187275,
		0.760505, 0.623681, -0.180703,
		39.400974, 32.206329, 42.700745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472763, 31.442574, 43.105267>,  <38.868618, 31.769754, 42.827236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472763, 31.442574, 43.105267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.590660, 31.822760, 43.065769>,  <39.661396, 32.050869, 43.042072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.590660, 31.822760, 43.065769>,  <39.472763, 31.442574, 43.105267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590660, 31.822760, 43.065769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389913, -0.025284, 0.920505,
		0.872409, -0.309807, -0.378050,
		0.294738, 0.950463, -0.098740,
		39.679081, 32.107899, 43.036148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095535, 31.445131, 43.401241>,  <39.472763, 31.442574, 43.105267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095535, 31.445131, 43.401241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.994007, 31.831827, 43.388657>,  <39.933090, 32.063843, 43.381107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.994007, 31.831827, 43.388657>,  <40.095535, 31.445131, 43.401241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994007, 31.831827, 43.388657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410434, 0.137100, 0.901525,
		0.875853, 0.215912, -0.431582,
		-0.253820, 0.966740, -0.031462,
		39.917862, 32.121849, 43.379219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725094, 31.858593, 43.583618>,  <40.095535, 31.445131, 43.401241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725094, 31.858593, 43.583618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.406384, 32.078846, 43.683178>,  <40.215157, 32.210999, 43.742912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.406384, 32.078846, 43.683178>,  <40.725094, 31.858593, 43.583618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.406384, 32.078846, 43.683178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347922, 0.081260, 0.933995,
		0.494064, 0.830782, -0.256324,
		-0.796776, 0.550634, 0.248899,
		40.167351, 32.244038, 43.757847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.958504, 32.329903, 44.108421>,  <40.725094, 31.858593, 43.583618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.958504, 32.329903, 44.108421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.561169, 32.367870, 44.134537>,  <40.322765, 32.390652, 44.150208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.561169, 32.367870, 44.134537>,  <40.958504, 32.329903, 44.108421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.561169, 32.367870, 44.134537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081427, 0.177511, 0.980744,
		0.081504, 0.979530, -0.184058,
		-0.993341, 0.094922, 0.065292,
		40.263165, 32.396347, 44.154125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848690, 32.893005, 44.694054>,  <40.958504, 32.329903, 44.108421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848690, 32.893005, 44.694054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.490948, 32.721485, 44.643059>,  <40.276302, 32.618572, 44.612461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.490948, 32.721485, 44.643059>,  <40.848690, 32.893005, 44.694054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490948, 32.721485, 44.643059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172508, 0.067642, 0.982683,
		-0.412755, 0.900861, -0.134468,
		-0.894357, -0.428805, -0.127486,
		40.222641, 32.592842, 44.604813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312267, 33.210411, 45.053852>,  <40.848690, 32.893005, 44.694054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.312267, 33.210411, 45.053852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152073, 32.848522, 44.995758>,  <40.055958, 32.631390, 44.960903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152073, 32.848522, 44.995758>,  <40.312267, 33.210411, 45.053852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152073, 32.848522, 44.995758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207812, -0.064689, 0.976027,
		-0.892426, 0.421067, -0.162104,
		-0.400487, -0.904720, -0.145233,
		40.031925, 32.577106, 44.952187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837372, 33.209736, 45.576416>,  <40.312267, 33.210411, 45.053852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837372, 33.209736, 45.576416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895477, 32.828568, 45.469948>,  <39.930340, 32.599869, 45.406067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895477, 32.828568, 45.469948>,  <39.837372, 33.209736, 45.576416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895477, 32.828568, 45.469948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359330, -0.301462, 0.883178,
		-0.921836, -0.032650, -0.386203,
		0.145261, -0.952919, -0.266167,
		39.939056, 32.542690, 45.390099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178055, 32.866127, 45.607529>,  <39.837372, 33.209736, 45.576416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178055, 32.866127, 45.607529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.441277, 32.567120, 45.643703>,  <39.599209, 32.387714, 45.665409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.441277, 32.567120, 45.643703>,  <39.178055, 32.866127, 45.607529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441277, 32.567120, 45.643703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431894, -0.276342, 0.858547,
		-0.616787, -0.604032, -0.504697,
		0.658059, -0.747516, 0.090433,
		39.638695, 32.342865, 45.670834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838829, 32.264725, 45.824951>,  <39.178055, 32.866127, 45.607529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838829, 32.264725, 45.824951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.222187, 32.190773, 45.911949>,  <39.452202, 32.146404, 45.964146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.222187, 32.190773, 45.911949>,  <38.838829, 32.264725, 45.824951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.222187, 32.190773, 45.911949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252321, -0.192409, 0.948321,
		-0.133476, -0.963742, -0.231052,
		0.958393, -0.184878, 0.217491,
		39.509705, 32.135311, 45.977196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766113, 31.730377, 46.316166>,  <38.838829, 32.264725, 45.824951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766113, 31.730377, 46.316166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.133751, 31.881130, 46.362171>,  <39.354332, 31.971582, 46.389774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.133751, 31.881130, 46.362171>,  <38.766113, 31.730377, 46.316166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133751, 31.881130, 46.362171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108599, -0.038290, 0.993348,
		0.378780, -0.925469, 0.005737,
		0.919093, 0.376883, 0.115009,
		39.409477, 31.994196, 46.396675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027733, 31.397478, 46.895908>,  <38.766113, 31.730377, 46.316166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027733, 31.397478, 46.895908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.258778, 31.722412, 46.863739>,  <39.397404, 31.917374, 46.844437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.258778, 31.722412, 46.863739>,  <39.027733, 31.397478, 46.895908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.258778, 31.722412, 46.863739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062234, 0.054417, 0.996577,
		0.813933, -0.580644, -0.019122,
		0.577616, 0.812337, -0.080427,
		39.432064, 31.966114, 46.839611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547810, 31.290167, 47.427517>,  <39.027733, 31.397478, 46.895908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547810, 31.290167, 47.427517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.513538, 31.681248, 47.350822>,  <39.492977, 31.915895, 47.304806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.513538, 31.681248, 47.350822>,  <39.547810, 31.290167, 47.427517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513538, 31.681248, 47.350822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057752, 0.196992, 0.978703,
		0.994648, 0.072779, -0.073341,
		-0.085676, 0.977700, -0.191735,
		39.487835, 31.974558, 47.293301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004074, 31.581030, 47.987015>,  <39.547810, 31.290167, 47.427517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004074, 31.581030, 47.987015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.772663, 31.885902, 47.870819>,  <39.633816, 32.068825, 47.801102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.772663, 31.885902, 47.870819>,  <40.004074, 31.581030, 47.987015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772663, 31.885902, 47.870819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061016, 0.314707, 0.947226,
		0.813377, 0.565722, -0.135562,
		-0.578529, 0.762180, -0.290493,
		39.599106, 32.114555, 47.783672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254688, 32.090363, 48.373173>,  <40.004074, 31.581030, 47.987015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254688, 32.090363, 48.373173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.892822, 32.227051, 48.271343>,  <39.675701, 32.309063, 48.210247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.892822, 32.227051, 48.271343>,  <40.254688, 32.090363, 48.373173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892822, 32.227051, 48.271343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141058, 0.323582, 0.935626,
		0.402102, 0.882337, -0.244530,
		-0.904664, 0.341724, -0.254574,
		39.621422, 32.329567, 48.194969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235775, 32.798515, 48.531693>,  <40.254688, 32.090363, 48.373173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.235775, 32.798515, 48.531693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.867729, 32.645321, 48.564476>,  <39.646904, 32.553406, 48.584148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.867729, 32.645321, 48.564476>,  <40.235775, 32.798515, 48.531693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867729, 32.645321, 48.564476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078569, 0.385513, 0.919351,
		-0.383694, 0.839466, -0.384806,
		-0.920112, -0.382983, 0.081963,
		39.591694, 32.530426, 48.589066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798721, 33.390366, 48.778210>,  <40.235775, 32.798515, 48.531693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798721, 33.390366, 48.778210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.581470, 33.065945, 48.865108>,  <39.451118, 32.871292, 48.917248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.581470, 33.065945, 48.865108>,  <39.798721, 33.390366, 48.778210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581470, 33.065945, 48.865108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216947, 0.385507, 0.896838,
		-0.811136, 0.439970, -0.385337,
		-0.543132, -0.811056, 0.217248,
		39.418530, 32.822628, 48.930283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302326, 33.708286, 49.061024>,  <39.798721, 33.390366, 48.778210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302326, 33.708286, 49.061024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.254078, 33.331188, 49.185398>,  <39.225128, 33.104931, 49.260021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.254078, 33.331188, 49.185398>,  <39.302326, 33.708286, 49.061024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254078, 33.331188, 49.185398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310983, 0.333342, 0.890041,
		-0.942730, 0.010661, -0.333386,
		-0.120620, -0.942746, 0.310936,
		39.217892, 33.048363, 49.278679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675091, 33.587307, 49.232468>,  <39.302326, 33.708286, 49.061024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675091, 33.587307, 49.232468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.861534, 33.309998, 49.452328>,  <38.973400, 33.143612, 49.584244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.861534, 33.309998, 49.452328>,  <38.675091, 33.587307, 49.232468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861534, 33.309998, 49.452328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575245, 0.234539, 0.783635,
		-0.672188, -0.681441, -0.289482,
		0.466107, -0.693274, 0.549650,
		39.001366, 33.102016, 49.617222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131760, 33.520657, 49.734394>,  <38.675091, 33.587307, 49.232468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131760, 33.520657, 49.734394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.449078, 33.332333, 49.888809>,  <38.639469, 33.219337, 49.981461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.449078, 33.332333, 49.888809>,  <38.131760, 33.520657, 49.734394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449078, 33.332333, 49.888809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291474, 0.263000, 0.919714,
		-0.534539, -0.842122, 0.071407,
		0.793291, -0.470810, 0.386041,
		38.687065, 33.191090, 50.004620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798748, 33.114025, 50.172489>,  <38.131760, 33.520657, 49.734394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798748, 33.114025, 50.172489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.177898, 33.143250, 50.296547>,  <38.405388, 33.160782, 50.370983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.177898, 33.143250, 50.296547>,  <37.798748, 33.114025, 50.172489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177898, 33.143250, 50.296547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318571, 0.198258, 0.926934,
		0.006233, -0.977423, 0.211199,
		0.947878, 0.073060, 0.310143,
		38.462261, 33.165169, 50.389591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838829, 32.713150, 50.725060>,  <37.798748, 33.114025, 50.172489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838829, 32.713150, 50.725060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.171555, 32.924885, 50.791859>,  <38.371189, 33.051926, 50.831936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.171555, 32.924885, 50.791859>,  <37.838829, 32.713150, 50.725060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171555, 32.924885, 50.791859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306176, 0.186632, 0.933501,
		0.462969, -0.827631, 0.317313,
		0.831815, 0.529335, 0.166996,
		38.421101, 33.083687, 50.841957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090401, 32.632935, 51.459442>,  <37.838829, 32.713150, 50.725060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090401, 32.632935, 51.459442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.239315, 32.994751, 51.376297>,  <38.328663, 33.211842, 51.326408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.239315, 32.994751, 51.376297>,  <38.090401, 32.632935, 51.459442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239315, 32.994751, 51.376297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286880, 0.325145, 0.901100,
		0.882667, -0.275837, 0.380543,
		0.372288, 0.904541, -0.207863,
		38.351002, 33.266113, 51.313938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302097, 32.875896, 52.141201>,  <38.090401, 32.632935, 51.459442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302097, 32.875896, 52.141201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.286903, 33.199783, 51.906963>,  <38.277786, 33.394115, 51.766422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.286903, 33.199783, 51.906963>,  <38.302097, 32.875896, 52.141201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286903, 33.199783, 51.906963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371399, 0.532598, 0.760527,
		0.927696, 0.246380, 0.280495,
		-0.037988, 0.809713, -0.585595,
		38.275509, 33.442696, 51.731285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571781, 33.438961, 52.490913>,  <38.302097, 32.875896, 52.141201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571781, 33.438961, 52.490913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330467, 33.592598, 52.211338>,  <38.185677, 33.684780, 52.043594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330467, 33.592598, 52.211338>,  <38.571781, 33.438961, 52.490913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330467, 33.592598, 52.211338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446723, 0.563252, 0.695116,
		0.660668, 0.731588, -0.168220,
		-0.603289, 0.384093, -0.698939,
		38.149479, 33.707825, 52.001656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643040, 34.075169, 52.574955>,  <38.571781, 33.438961, 52.490913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643040, 34.075169, 52.574955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285557, 34.062332, 52.395954>,  <38.071068, 34.054630, 52.288555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285557, 34.062332, 52.395954>,  <38.643040, 34.075169, 52.574955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285557, 34.062332, 52.395954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368201, 0.622369, 0.690713,
		0.256348, 0.782066, -0.568030,
		-0.893708, -0.032087, -0.447501,
		38.017445, 34.052708, 52.261703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299641, 34.757698, 52.820412>,  <38.643040, 34.075169, 52.574955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299641, 34.757698, 52.820412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992390, 34.541618, 52.682911>,  <37.808037, 34.411972, 52.600410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992390, 34.541618, 52.682911>,  <38.299641, 34.757698, 52.820412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992390, 34.541618, 52.682911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596425, 0.408352, 0.691032,
		-0.232922, 0.735824, -0.635854,
		-0.768130, -0.540196, -0.343749,
		37.761951, 34.379559, 52.579784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939472, 34.878540, 52.085255>,  <38.299641, 34.757698, 52.820412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939472, 34.878540, 52.085255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103329, 35.207520, 52.243122>,  <38.201641, 35.404907, 52.337845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103329, 35.207520, 52.243122>,  <37.939472, 34.878540, 52.085255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103329, 35.207520, 52.243122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118876, 0.380820, -0.916976,
		-0.904468, 0.422549, 0.058230,
		0.409642, 0.822453, 0.394671,
		38.226223, 35.454254, 52.361523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552204, 35.428959, 51.857246>,  <37.939472, 34.878540, 52.085255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552204, 35.428959, 51.857246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895355, 35.606827, 51.960251>,  <38.101246, 35.713547, 52.022053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895355, 35.606827, 51.960251>,  <37.552204, 35.428959, 51.857246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895355, 35.606827, 51.960251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047147, 0.430907, -0.901164,
		-0.511684, 0.785231, 0.348701,
		0.857879, 0.444670, 0.257510,
		38.152718, 35.740227, 52.037502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447269, 36.089752, 51.844814>,  <37.552204, 35.428959, 51.857246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447269, 36.089752, 51.844814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840008, 36.047733, 51.781639>,  <38.075649, 36.022522, 51.743732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840008, 36.047733, 51.781639>,  <37.447269, 36.089752, 51.844814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840008, 36.047733, 51.781639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099509, 0.423610, -0.900362,
		0.161488, 0.899733, 0.405466,
		0.981845, -0.105050, -0.157940,
		38.134560, 36.016220, 51.734257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490788, 36.405666, 51.259792>,  <37.447269, 36.089752, 51.844814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490788, 36.405666, 51.259792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865162, 36.265205, 51.270470>,  <38.089787, 36.180927, 51.276875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865162, 36.265205, 51.270470>,  <37.490788, 36.405666, 51.259792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865162, 36.265205, 51.270470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105036, 0.205995, -0.972900,
		0.336142, 0.913376, 0.229682,
		0.935936, -0.351157, 0.026694,
		38.145943, 36.159859, 51.278477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986473, 36.989223, 51.070190>,  <37.490788, 36.405666, 51.259792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986473, 36.989223, 51.070190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.139984, 36.631180, 50.979427>,  <38.232090, 36.416351, 50.924969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.139984, 36.631180, 50.979427>,  <37.986473, 36.989223, 51.070190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139984, 36.631180, 50.979427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346411, 0.367332, -0.863172,
		0.855985, 0.252668, 0.451052,
		0.383782, -0.895112, -0.226904,
		38.255119, 36.362648, 50.911358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684776, 37.149078, 50.780571>,  <37.986473, 36.989223, 51.070190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684776, 37.149078, 50.780571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.591881, 36.775341, 50.672451>,  <38.536144, 36.551098, 50.607578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.591881, 36.775341, 50.672451>,  <38.684776, 37.149078, 50.780571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591881, 36.775341, 50.672451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351062, 0.178647, -0.919152,
		0.907095, -0.308353, 0.286526,
		-0.232236, -0.934347, -0.270301,
		38.522209, 36.495037, 50.591362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252430, 36.940758, 50.362148>,  <38.684776, 37.149078, 50.780571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252430, 36.940758, 50.362148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948795, 36.697941, 50.268093>,  <38.766617, 36.552250, 50.211658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948795, 36.697941, 50.268093>,  <39.252430, 36.940758, 50.362148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948795, 36.697941, 50.268093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375696, -0.113519, -0.919764,
		0.531644, -0.786519, 0.314234,
		-0.759083, -0.607043, -0.235140,
		38.721069, 36.515827, 50.197552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536892, 36.323437, 50.058479>,  <39.252430, 36.940758, 50.362148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536892, 36.323437, 50.058479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161488, 36.333885, 49.920773>,  <38.936245, 36.340153, 49.838150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161488, 36.333885, 49.920773>,  <39.536892, 36.323437, 50.058479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161488, 36.333885, 49.920773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318635, -0.318444, -0.892785,
		-0.132946, -0.947582, 0.290540,
		-0.938508, 0.026116, -0.344268,
		38.879936, 36.341721, 49.817493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511158, 35.644085, 49.771721>,  <39.536892, 36.323437, 50.058479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511158, 35.644085, 49.771721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207737, 35.837414, 49.596905>,  <39.025684, 35.953411, 49.492016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207737, 35.837414, 49.596905>,  <39.511158, 35.644085, 49.771721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207737, 35.837414, 49.596905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212082, -0.451064, -0.866927,
		-0.616136, -0.750296, 0.239652,
		-0.758550, 0.483319, -0.437040,
		38.980171, 35.982410, 49.465794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098091, 35.207470, 49.334743>,  <39.511158, 35.644085, 49.771721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098091, 35.207470, 49.334743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999550, 35.553963, 49.160870>,  <38.940426, 35.761860, 49.056545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999550, 35.553963, 49.160870>,  <39.098091, 35.207470, 49.334743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999550, 35.553963, 49.160870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155749, -0.407297, -0.899917,
		-0.956583, -0.289402, -0.034575,
		-0.246356, 0.866231, -0.434687,
		38.925644, 35.813831, 49.030464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571796, 35.102837, 48.819756>,  <39.098091, 35.207470, 49.334743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571796, 35.102837, 48.819756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719574, 35.460918, 48.720062>,  <38.808243, 35.675766, 48.660244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719574, 35.460918, 48.720062>,  <38.571796, 35.102837, 48.819756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719574, 35.460918, 48.720062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048257, -0.249366, -0.967206,
		-0.927997, 0.369360, -0.048928,
		0.369448, 0.895203, -0.249236,
		38.830410, 35.729481, 48.645290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212418, 35.285027, 48.261837>,  <38.571796, 35.102837, 48.819756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212418, 35.285027, 48.261837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.537460, 35.517597, 48.245735>,  <38.732487, 35.657139, 48.236073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.537460, 35.517597, 48.245735>,  <38.212418, 35.285027, 48.261837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537460, 35.517597, 48.245735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120131, -0.234681, -0.964621,
		-0.570300, 0.779020, -0.260549,
		0.812605, 0.581423, -0.040254,
		38.781242, 35.692024, 48.233658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186440, 35.598469, 47.600609>,  <38.212418, 35.285027, 48.261837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186440, 35.598469, 47.600609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.570065, 35.617970, 47.712196>,  <38.800240, 35.629669, 47.779148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.570065, 35.617970, 47.712196>,  <38.186440, 35.598469, 47.600609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570065, 35.617970, 47.712196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282619, -0.227532, -0.931856,
		0.018041, 0.972549, -0.231996,
		0.959063, 0.048755, 0.278966,
		38.857784, 35.632595, 47.795887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440884, 36.097023, 47.153175>,  <38.186440, 35.598469, 47.600609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440884, 36.097023, 47.153175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762875, 35.890312, 47.269764>,  <38.956070, 35.766285, 47.339718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762875, 35.890312, 47.269764>,  <38.440884, 36.097023, 47.153175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762875, 35.890312, 47.269764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233876, -0.175102, -0.956369,
		0.545269, 0.838020, -0.020090,
		0.804974, -0.516780, 0.291470,
		39.004368, 35.735279, 47.357204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853092, 36.351849, 46.616543>,  <38.440884, 36.097023, 47.153175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853092, 36.351849, 46.616543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005287, 36.019264, 46.778481>,  <39.096603, 35.819714, 46.875645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005287, 36.019264, 46.778481>,  <38.853092, 36.351849, 46.616543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005287, 36.019264, 46.778481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421491, -0.233744, -0.876190,
		0.823149, 0.504017, 0.261518,
		0.380487, -0.831463, 0.404845,
		39.119434, 35.769825, 46.899933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465931, 36.258015, 46.285526>,  <38.853092, 36.351849, 46.616543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465931, 36.258015, 46.285526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378925, 35.890667, 46.417755>,  <39.326721, 35.670258, 46.497093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378925, 35.890667, 46.417755>,  <39.465931, 36.258015, 46.285526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378925, 35.890667, 46.417755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356996, -0.390072, -0.848762,
		0.908427, -0.066608, 0.412703,
		-0.217518, -0.918372, 0.330573,
		39.313671, 35.615154, 46.516926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037300, 35.885708, 46.129887>,  <39.465931, 36.258015, 46.285526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037300, 35.885708, 46.129887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.768311, 35.600266, 46.208408>,  <39.606915, 35.429001, 46.255520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.768311, 35.600266, 46.208408>,  <40.037300, 35.885708, 46.129887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768311, 35.600266, 46.208408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381979, -0.561819, -0.733793,
		0.633928, -0.418476, 0.650394,
		-0.672478, -0.713609, 0.196304,
		39.566566, 35.386185, 46.267300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384464, 35.243885, 46.232742>,  <40.037300, 35.885708, 46.129887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384464, 35.243885, 46.232742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.027363, 35.229408, 46.053104>,  <39.813103, 35.220722, 45.945324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.027363, 35.229408, 46.053104>,  <40.384464, 35.243885, 46.232742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027363, 35.229408, 46.053104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413480, -0.461735, -0.784751,
		-0.178963, -0.886279, 0.427178,
		-0.892752, -0.036188, -0.449093,
		39.759537, 35.218552, 45.918377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436962, 34.756073, 45.735325>,  <40.384464, 35.243885, 46.232742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.436962, 34.756073, 45.735325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.088135, 34.902840, 45.605793>,  <39.878838, 34.990898, 45.528072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.088135, 34.902840, 45.605793>,  <40.436962, 34.756073, 45.735325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.088135, 34.902840, 45.605793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163310, -0.405596, -0.899345,
		-0.461331, -0.837176, 0.293786,
		-0.872069, 0.366918, -0.323833,
		39.826515, 35.012913, 45.508644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157078, 34.261688, 45.268215>,  <40.436962, 34.756073, 45.735325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.157078, 34.261688, 45.268215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958645, 34.596062, 45.174309>,  <39.839584, 34.796688, 45.117966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958645, 34.596062, 45.174309>,  <40.157078, 34.261688, 45.268215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958645, 34.596062, 45.174309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113693, -0.205514, -0.972028,
		-0.860802, -0.508893, 0.006911,
		-0.496078, 0.835938, -0.234764,
		39.809822, 34.846844, 45.103878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721523, 33.989861, 44.776146>,  <40.157078, 34.261688, 45.268215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.721523, 33.989861, 44.776146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.748066, 34.387779, 44.745235>,  <39.763992, 34.626530, 44.726688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.748066, 34.387779, 44.745235>,  <39.721523, 33.989861, 44.776146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748066, 34.387779, 44.745235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069410, -0.081862, -0.994224,
		-0.995379, 0.060610, -0.074481,
		0.066358, 0.994799, -0.077277,
		39.767975, 34.686218, 44.722054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272129, 34.199745, 44.279285>,  <39.721523, 33.989861, 44.776146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272129, 34.199745, 44.279285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.530533, 34.504974, 44.287178>,  <39.685574, 34.688114, 44.291916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.530533, 34.504974, 44.287178>,  <39.272129, 34.199745, 44.279285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530533, 34.504974, 44.287178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197031, -0.141713, -0.970101,
		-0.737463, 0.630583, -0.241897,
		0.646009, 0.763075, 0.019736,
		39.724335, 34.733898, 44.293098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258301, 34.308575, 43.674122>,  <39.272129, 34.199745, 44.279285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258301, 34.308575, 43.674122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565350, 34.543240, 43.777332>,  <39.749580, 34.684040, 43.839260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565350, 34.543240, 43.777332>,  <39.258301, 34.308575, 43.674122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565350, 34.543240, 43.777332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318405, 0.000317, -0.947955,
		-0.556212, 0.809831, -0.186553,
		0.767624, 0.586664, 0.258031,
		39.795635, 34.719238, 43.854740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243301, 34.995052, 43.259445>,  <39.258301, 34.308575, 43.674122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243301, 34.995052, 43.259445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.607368, 34.893173, 43.390121>,  <39.825809, 34.832047, 43.468525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.607368, 34.893173, 43.390121>,  <39.243301, 34.995052, 43.259445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607368, 34.893173, 43.390121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337619, -0.000846, -0.941282,
		0.240020, 0.967020, 0.085221,
		0.910167, -0.254699, 0.326688,
		39.880417, 34.816765, 43.488129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648121, 35.542755, 42.998829>,  <39.243301, 34.995052, 43.259445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648121, 35.542755, 42.998829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.867691, 35.217670, 43.076988>,  <39.999432, 35.022617, 43.123882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.867691, 35.217670, 43.076988>,  <39.648121, 35.542755, 42.998829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867691, 35.217670, 43.076988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357531, 0.016990, -0.933747,
		0.755550, 0.582415, 0.299896,
		0.548923, -0.812714, 0.195394,
		40.032368, 34.973858, 43.135605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187553, 35.724945, 42.626812>,  <39.648121, 35.542755, 42.998829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.187553, 35.724945, 42.626812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266254, 35.336601, 42.681553>,  <40.313473, 35.103596, 42.714397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266254, 35.336601, 42.681553>,  <40.187553, 35.724945, 42.626812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266254, 35.336601, 42.681553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557686, -0.003986, -0.830042,
		0.806397, 0.239631, 0.540648,
		0.196749, -0.970856, 0.136853,
		40.325279, 35.045345, 42.722610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928806, 35.672859, 42.477318>,  <40.187553, 35.724945, 42.626812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.928806, 35.672859, 42.477318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.806747, 35.293610, 42.441673>,  <40.733513, 35.066059, 42.420284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.806747, 35.293610, 42.441673>,  <40.928806, 35.672859, 42.477318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.806747, 35.293610, 42.441673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403593, -0.044000, -0.913880,
		0.862552, -0.314837, 0.396083,
		-0.305150, -0.948126, -0.089114,
		40.715202, 35.009171, 42.414940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.559681, 35.285973, 42.255199>,  <40.928806, 35.672859, 42.477318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.559681, 35.285973, 42.255199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.245438, 35.057243, 42.160679>,  <41.056892, 34.920006, 42.103966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.245438, 35.057243, 42.160679>,  <41.559681, 35.285973, 42.255199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.245438, 35.057243, 42.160679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371428, -0.130415, -0.919257,
		0.494838, -0.809942, 0.314847,
		-0.785606, -0.571826, -0.236300,
		41.009754, 34.885696, 42.089790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.801960, 34.830444, 41.810650>,  <41.559681, 35.285973, 42.255199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.801960, 34.830444, 41.810650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.408714, 34.792084, 41.748322>,  <41.172768, 34.769066, 41.710922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.408714, 34.792084, 41.748322>,  <41.801960, 34.830444, 41.810650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.408714, 34.792084, 41.748322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170574, -0.172233, -0.970176,
		0.066203, -0.980377, 0.185683,
		-0.983118, -0.095902, -0.155824,
		41.113777, 34.763313, 41.701576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.746315, 34.247482, 41.314148>,  <41.801960, 34.830444, 41.810650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.746315, 34.247482, 41.314148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.396240, 34.440880, 41.307449>,  <41.186195, 34.556919, 41.303429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.396240, 34.440880, 41.307449>,  <41.746315, 34.247482, 41.314148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.396240, 34.440880, 41.307449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052619, -0.129542, -0.990177,
		-0.480910, -0.865711, 0.138815,
		-0.875189, 0.483491, -0.016746,
		41.133682, 34.585926, 41.302425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296509, 33.844780, 41.012089>,  <41.746315, 34.247482, 41.314148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296509, 33.844780, 41.012089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131897, 34.201050, 40.934788>,  <41.033131, 34.414810, 40.888409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131897, 34.201050, 40.934788>,  <41.296509, 33.844780, 41.012089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131897, 34.201050, 40.934788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080887, -0.175511, -0.981149,
		-0.907799, -0.419405, 0.000185,
		-0.411532, 0.890671, -0.193253,
		41.008438, 34.468250, 40.876812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.987972, 33.818714, 40.378170>,  <41.296509, 33.844780, 41.012089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.987972, 33.818714, 40.378170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.043003, 34.212952, 40.417515>,  <41.076023, 34.449493, 40.441124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.043003, 34.212952, 40.417515>,  <40.987972, 33.818714, 40.378170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.043003, 34.212952, 40.417515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228632, 0.065027, -0.971339,
		-0.963742, 0.156126, -0.216392,
		0.137580, 0.985594, 0.098365,
		41.084278, 34.508629, 40.447025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437580, 34.181030, 39.883518>,  <40.987972, 33.818714, 40.378170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437580, 34.181030, 39.883518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744583, 34.421169, 39.973415>,  <40.928787, 34.565254, 40.027351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744583, 34.421169, 39.973415>,  <40.437580, 34.181030, 39.883518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.744583, 34.421169, 39.973415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258781, 0.030579, -0.965452,
		-0.586482, 0.799152, -0.131890,
		0.767510, 0.600351, 0.224739,
		40.974834, 34.601276, 40.040836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270432, 34.929806, 39.632645>,  <40.437580, 34.181030, 39.883518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.270432, 34.929806, 39.632645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.666965, 34.877396, 39.636555>,  <40.904884, 34.845951, 39.638901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.666965, 34.877396, 39.636555>,  <40.270432, 34.929806, 39.632645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.666965, 34.877396, 39.636555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020564, 0.081266, -0.996480,
		0.129772, 0.988043, 0.083255,
		0.991331, -0.131027, 0.009772,
		40.964363, 34.838089, 39.639488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478672, 35.347649, 39.135448>,  <40.270432, 34.929806, 39.632645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478672, 35.347649, 39.135448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.822166, 35.151352, 39.194424>,  <41.028263, 35.033573, 39.229809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.822166, 35.151352, 39.194424>,  <40.478672, 35.347649, 39.135448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.822166, 35.151352, 39.194424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203826, 0.063149, -0.976968,
		0.470127, 0.869014, 0.154255,
		0.858740, -0.490741, 0.147439,
		41.079788, 35.004131, 39.238655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.980000, 35.690029, 38.802631>,  <40.478672, 35.347649, 39.135448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.980000, 35.690029, 38.802631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.169537, 35.338989, 38.831757>,  <41.283257, 35.128365, 38.849232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.169537, 35.338989, 38.831757>,  <40.980000, 35.690029, 38.802631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.169537, 35.338989, 38.831757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327656, 0.098949, -0.939601,
		0.817386, 0.469078, 0.334435,
		0.473838, -0.877596, 0.072816,
		41.311687, 35.075710, 38.853603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.597290, 35.879055, 38.747646>,  <40.980000, 35.690029, 38.802631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.597290, 35.879055, 38.747646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620895, 35.488876, 38.662781>,  <41.635059, 35.254768, 38.611862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620895, 35.488876, 38.662781>,  <41.597290, 35.879055, 38.747646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.620895, 35.488876, 38.662781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561951, 0.208124, -0.800559,
		0.825063, -0.071983, 0.560438,
		0.059014, -0.975450, -0.212166,
		41.638599, 35.196239, 38.599133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.258163, 35.772541, 38.606224>,  <41.597290, 35.879055, 38.747646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.258163, 35.772541, 38.606224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.082279, 35.454189, 38.439735>,  <41.976749, 35.263180, 38.339844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.082279, 35.454189, 38.439735>,  <42.258163, 35.772541, 38.606224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.082279, 35.454189, 38.439735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587348, 0.095783, -0.803647,
		0.679471, -0.597833, 0.425341,
		-0.439706, -0.795878, -0.416218,
		41.950367, 35.215427, 38.314869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.759022, 35.296036, 38.319809>,  <42.258163, 35.772541, 38.606224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.759022, 35.296036, 38.319809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.432816, 35.184135, 38.117157>,  <42.237091, 35.116997, 37.995567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.432816, 35.184135, 38.117157>,  <42.759022, 35.296036, 38.319809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.432816, 35.184135, 38.117157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513350, 0.054516, -0.856446,
		0.267211, -0.958524, 0.099151,
		-0.815518, -0.279751, -0.506626,
		42.188160, 35.100212, 37.965168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.995632, 34.805687, 37.873474>,  <42.759022, 35.296036, 38.319809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.995632, 34.805687, 37.873474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.672848, 35.002499, 37.742798>,  <42.479176, 35.120586, 37.664394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.672848, 35.002499, 37.742798>,  <42.995632, 34.805687, 37.873474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.672848, 35.002499, 37.742798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462330, 0.182058, -0.867817,
		-0.367514, -0.851331, -0.374393,
		-0.806960, 0.492028, -0.326686,
		42.430759, 35.150108, 37.644791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.876186, 34.657948, 37.236080>,  <42.995632, 34.805687, 37.873474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.876186, 34.657948, 37.236080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.686386, 35.006561, 37.285526>,  <42.572506, 35.215729, 37.315193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.686386, 35.006561, 37.285526>,  <42.876186, 34.657948, 37.236080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.686386, 35.006561, 37.285526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252582, 0.269333, -0.929334,
		-0.843240, -0.409744, -0.347931,
		-0.474498, 0.871533, 0.123619,
		42.544037, 35.268021, 37.322613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.681252, 34.691898, 37.426640>,  <42.876186, 34.657948, 37.236080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.681252, 34.691898, 37.426640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.927383, 34.492966, 37.182007>,  <44.075062, 34.373608, 37.035229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.927383, 34.492966, 37.182007>,  <43.681252, 34.691898, 37.426640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.927383, 34.492966, 37.182007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764670, -0.188163, -0.616339,
		0.191449, 0.846909, -0.496078,
		0.615327, -0.497333, -0.611583,
		44.111980, 34.343765, 36.998531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.840134, 35.038361, 36.802044>,  <43.681252, 34.691898, 37.426640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.840134, 35.038361, 36.802044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.846844, 34.641968, 36.748871>,  <43.850872, 34.404133, 36.716965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.846844, 34.641968, 36.748871>,  <43.840134, 35.038361, 36.802044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.846844, 34.641968, 36.748871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760254, 0.073710, -0.645430,
		0.649409, 0.111894, -0.752162,
		0.016777, -0.990982, -0.132936,
		43.851875, 34.344673, 36.708992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.888359, 34.853401, 36.072029>,  <43.840134, 35.038361, 36.802044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.888359, 34.853401, 36.072029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.701874, 34.556351, 36.264339>,  <43.589981, 34.378120, 36.379726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.701874, 34.556351, 36.264339>,  <43.888359, 34.853401, 36.072029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.701874, 34.556351, 36.264339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627022, -0.105995, -0.771757,
		0.624089, -0.661261, -0.416229,
		-0.466215, -0.742630, 0.480775,
		43.562008, 34.333561, 36.408573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.876411, 34.235943, 35.666599>,  <43.888359, 34.853401, 36.072029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.876411, 34.235943, 35.666599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.543125, 34.264256, 35.885956>,  <43.343151, 34.281242, 36.017570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.543125, 34.264256, 35.885956>,  <43.876411, 34.235943, 35.666599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.543125, 34.264256, 35.885956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549849, -0.210854, -0.808212,
		0.058423, -0.974951, 0.214608,
		-0.833218, 0.070784, 0.548395,
		43.293159, 34.285492, 36.050476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.265812, 34.305531, 35.012638>,  <43.876411, 34.235943, 35.666599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.265812, 34.305531, 35.012638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.428955, 34.647907, 34.885509>,  <44.526840, 34.853333, 34.809231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.428955, 34.647907, 34.885509>,  <44.265812, 34.305531, 35.012638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.428955, 34.647907, 34.885509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436437, -0.122984, -0.891290,
		-0.801983, 0.502226, 0.323407,
		0.407855, 0.855946, -0.317822,
		44.551311, 34.904690, 34.790161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.985176, 34.661182, 35.171539>,  <44.265812, 34.305531, 35.012638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.985176, 34.661182, 35.171539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.065010, 35.032684, 35.296494>,  <45.112911, 35.255585, 35.371464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.065010, 35.032684, 35.296494>,  <44.985176, 34.661182, 35.171539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.065010, 35.032684, 35.296494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733965, 0.352912, -0.580300,
		-0.649199, -0.113457, 0.752109,
		0.199590, 0.928752, 0.312384,
		45.124886, 35.311310, 35.390209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.293865, 34.961960, 35.403572>,  <44.985176, 34.661182, 35.171539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.293865, 34.961960, 35.403572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.573288, 35.212448, 35.265083>,  <44.740940, 35.362740, 35.181988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.573288, 35.212448, 35.265083>,  <44.293865, 34.961960, 35.403572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.573288, 35.212448, 35.265083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707112, 0.529998, -0.468075,
		-0.109618, 0.571796, 0.813040,
		0.698553, 0.626220, -0.346226,
		44.782852, 35.400314, 35.161217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.978123, 35.557331, 35.429630>,  <44.293865, 34.961960, 35.403572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.978123, 35.557331, 35.429630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.281837, 35.666271, 35.193222>,  <44.464066, 35.731636, 35.051376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.281837, 35.666271, 35.193222>,  <43.978123, 35.557331, 35.429630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.281837, 35.666271, 35.193222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610872, 0.611355, -0.503071,
		0.224308, 0.743013, 0.630570,
		0.759290, 0.272355, -0.591018,
		44.509624, 35.747978, 35.015915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.030079, 36.269176, 35.438580>,  <43.978123, 35.557331, 35.429630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.030079, 36.269176, 35.438580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.197327, 36.157436, 35.092831>,  <44.297676, 36.090393, 34.885384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.197327, 36.157436, 35.092831>,  <44.030079, 36.269176, 35.438580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.197327, 36.157436, 35.092831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459655, 0.755664, -0.466572,
		0.783512, 0.592396, 0.187553,
		0.418122, -0.279355, -0.864370,
		44.322762, 36.073631, 34.833519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.174179, 36.855198, 34.954796>,  <44.030079, 36.269176, 35.438580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.174179, 36.855198, 34.954796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.181610, 36.548519, 34.698101>,  <44.186069, 36.364510, 34.544083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.181610, 36.548519, 34.698101>,  <44.174179, 36.855198, 34.954796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.181610, 36.548519, 34.698101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486776, 0.553705, -0.675618,
		0.873329, 0.324932, -0.362925,
		0.018577, -0.766700, -0.641736,
		44.187183, 36.318508, 34.505581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.369637, 37.187080, 34.256889>,  <44.174179, 36.855198, 34.954796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.369637, 37.187080, 34.256889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.226555, 36.834087, 34.134731>,  <44.140705, 36.622292, 34.061436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.226555, 36.834087, 34.134731>,  <44.369637, 37.187080, 34.256889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.226555, 36.834087, 34.134731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553911, 0.463800, -0.691428,
		0.751816, -0.078168, -0.654723,
		-0.357708, -0.882485, -0.305393,
		44.119244, 36.569344, 34.043114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.345524, 37.110443, 33.563076>,  <44.369637, 37.187080, 34.256889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.345524, 37.110443, 33.563076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.050991, 36.863644, 33.674164>,  <43.874271, 36.715565, 33.740818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.050991, 36.863644, 33.674164>,  <44.345524, 37.110443, 33.563076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.050991, 36.863644, 33.674164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621307, 0.454005, -0.638638,
		0.267953, -0.642798, -0.717644,
		-0.736328, -0.617002, 0.277722,
		43.830093, 36.678543, 33.757481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.952820, 36.920231, 32.937660>,  <44.345524, 37.110443, 33.563076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.952820, 36.920231, 32.937660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.714882, 36.829102, 33.246014>,  <43.572121, 36.774426, 33.431026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.714882, 36.829102, 33.246014>,  <43.952820, 36.920231, 32.937660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.714882, 36.829102, 33.246014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753120, 0.493211, -0.435377,
		-0.281019, -0.839548, -0.464960,
		-0.594844, -0.227822, 0.770882,
		43.536430, 36.760754, 33.477280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.421757, 36.831764, 32.574650>,  <43.952820, 36.920231, 32.937660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.421757, 36.831764, 32.574650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.295139, 36.885010, 32.950325>,  <43.219170, 36.916958, 33.175732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.295139, 36.885010, 32.950325>,  <43.421757, 36.831764, 32.574650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.295139, 36.885010, 32.950325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883851, 0.318078, -0.342978,
		-0.344392, -0.938672, 0.016969,
		-0.316547, 0.133117, 0.939190,
		43.200176, 36.924946, 33.232082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.830090, 36.433762, 32.611176>,  <43.421757, 36.831764, 32.574650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.830090, 36.433762, 32.611176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.838192, 36.706596, 32.903572>,  <42.843056, 36.870296, 33.079010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.838192, 36.706596, 32.903572>,  <42.830090, 36.433762, 32.611176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.838192, 36.706596, 32.903572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777298, 0.470585, -0.417561,
		-0.628806, -0.559739, 0.539717,
		0.020258, 0.682087, 0.730991,
		42.844269, 36.911221, 33.122868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.083626, 36.497959, 32.852222>,  <42.830090, 36.433762, 32.611176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.083626, 36.497959, 32.852222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.282619, 36.825188, 32.967651>,  <42.402016, 37.021523, 33.036907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.282619, 36.825188, 32.967651>,  <42.083626, 36.497959, 32.852222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.282619, 36.825188, 32.967651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713122, 0.575087, -0.400914,
		-0.493929, -0.006338, 0.869479,
		0.497485, 0.818068, 0.288572,
		42.431866, 37.070606, 33.054222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.586517, 36.908688, 33.176949>,  <42.083626, 36.497959, 32.852222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.586517, 36.908688, 33.176949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.883209, 37.160664, 33.084854>,  <42.061226, 37.311852, 33.029598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.883209, 37.160664, 33.084854>,  <41.586517, 36.908688, 33.176949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.883209, 37.160664, 33.084854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659749, 0.623517, -0.419473,
		-0.120691, 0.463032, 0.878086,
		0.741731, 0.629943, -0.230232,
		42.105728, 37.349648, 33.015785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.341335, 37.535831, 33.353970>,  <41.586517, 36.908688, 33.176949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.341335, 37.535831, 33.353970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.633480, 37.628334, 33.096882>,  <41.808769, 37.683834, 32.942631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.633480, 37.628334, 33.096882>,  <41.341335, 37.535831, 33.353970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.633480, 37.628334, 33.096882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592613, 0.682445, -0.427877,
		0.339673, 0.693390, 0.635478,
		0.730365, 0.231254, -0.642720,
		41.852589, 37.697712, 32.904064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.448353, 38.260643, 33.326035>,  <41.341335, 37.535831, 33.353970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.448353, 38.260643, 33.326035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.600864, 38.164673, 32.968922>,  <41.692371, 38.107090, 32.754654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.600864, 38.164673, 32.968922>,  <41.448353, 38.260643, 33.326035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.600864, 38.164673, 32.968922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355877, 0.853215, -0.381281,
		0.853215, 0.463096, 0.239929,
		0.381281, -0.239929, -0.892781,
		41.715248, 38.092693, 32.701088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.665638, 38.914631, 33.001339>,  <41.448353, 38.260643, 33.326035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.665638, 38.914631, 33.001339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.666683, 38.672619, 32.682858>,  <41.667309, 38.527412, 32.491768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.666683, 38.672619, 32.682858>,  <41.665638, 38.914631, 33.001339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.666683, 38.672619, 32.682858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566639, 0.655149, -0.499700,
		0.823962, 0.452464, -0.341120,
		0.002612, -0.605025, -0.796202,
		41.667465, 38.491112, 32.443996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.776913, 39.314014, 32.385353>,  <41.665638, 38.914631, 33.001339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.776913, 39.314014, 32.385353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.612259, 38.975342, 32.250481>,  <41.513466, 38.772141, 32.169556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.612259, 38.975342, 32.250481>,  <41.776913, 39.314014, 32.385353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.612259, 38.975342, 32.250481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568118, 0.527690, -0.631494,
		0.712601, -0.068385, -0.698229,
		-0.411633, -0.846680, -0.337181,
		41.488770, 38.721336, 32.149326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.838039, 39.393215, 31.564039>,  <41.776913, 39.314014, 32.385353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.838039, 39.393215, 31.564039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.571384, 39.101597, 31.626131>,  <41.411392, 38.926628, 31.663385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.571384, 39.101597, 31.626131>,  <41.838039, 39.393215, 31.564039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.571384, 39.101597, 31.626131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615315, 0.420699, -0.666633,
		0.420699, -0.539915, -0.729043,
		0.666633, 0.729043, -0.155230,
		41.371395, 38.882885, 31.672701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.786503, 39.017822, 30.929081>,  <41.838039, 39.393215, 31.564039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.786503, 39.017822, 30.929081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.451572, 39.007198, 31.147507>,  <41.250614, 39.000824, 31.278563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.451572, 39.007198, 31.147507>,  <41.786503, 39.017822, 30.929081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.451572, 39.007198, 31.147507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478836, 0.517649, -0.709053,
		-0.263835, -0.855181, -0.446158,
		-0.837322, -0.026563, 0.546065,
		41.200375, 38.999229, 31.311327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.365585, 38.915081, 30.467482>,  <41.786503, 39.017822, 30.929081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.365585, 38.915081, 30.467482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.126678, 39.038921, 30.763432>,  <40.983334, 39.113228, 30.941002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.126678, 39.038921, 30.763432>,  <41.365585, 38.915081, 30.467482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.126678, 39.038921, 30.763432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523081, 0.548936, -0.651963,
		-0.607994, -0.776412, -0.165914,
		-0.597268, 0.309604, 0.739876,
		40.947498, 39.131802, 30.985394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716064, 38.802696, 30.164642>,  <41.365585, 38.915081, 30.467482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.716064, 38.802696, 30.164642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.655388, 39.072044, 30.454073>,  <40.618980, 39.233654, 30.627731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.655388, 39.072044, 30.454073>,  <40.716064, 38.802696, 30.164642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.655388, 39.072044, 30.454073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543146, 0.554832, -0.630202,
		-0.825822, -0.488603, 0.281575,
		-0.151692, 0.673371, 0.723575,
		40.609879, 39.274055, 30.671146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971561, 38.852386, 30.204748>,  <40.716064, 38.802696, 30.164642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.971561, 38.852386, 30.204748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.122208, 39.194035, 30.348211>,  <40.212593, 39.399025, 30.434290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.122208, 39.194035, 30.348211>,  <39.971561, 38.852386, 30.204748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122208, 39.194035, 30.348211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673504, 0.518283, -0.527044,
		-0.636047, -0.043067, 0.770447,
		0.376611, 0.854124, 0.358658,
		40.235191, 39.450272, 30.455809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424290, 39.185524, 30.388227>,  <39.971561, 38.852386, 30.204748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424290, 39.185524, 30.388227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717754, 39.451099, 30.330368>,  <39.893833, 39.610443, 30.295652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717754, 39.451099, 30.330368>,  <39.424290, 39.185524, 30.388227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717754, 39.451099, 30.330368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591478, 0.519188, -0.616926,
		-0.334501, 0.538172, 0.773615,
		0.733664, 0.663939, -0.144648,
		39.937855, 39.650280, 30.286974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086498, 39.802593, 30.347900>,  <39.424290, 39.185524, 30.388227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086498, 39.802593, 30.347900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434589, 39.851017, 30.156883>,  <39.643444, 39.880070, 30.042273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434589, 39.851017, 30.156883>,  <39.086498, 39.802593, 30.347900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434589, 39.851017, 30.156883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465591, 0.518904, -0.716913,
		0.161011, 0.846218, 0.507929,
		0.870230, 0.121057, -0.477541,
		39.695660, 39.887333, 30.013620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831161, 40.261326, 29.960505>,  <39.086498, 39.802593, 30.347900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831161, 40.261326, 29.960505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180737, 40.176197, 29.785719>,  <39.390484, 40.125122, 29.680847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180737, 40.176197, 29.785719>,  <38.831161, 40.261326, 29.960505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180737, 40.176197, 29.785719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364167, 0.308685, -0.878690,
		0.321886, 0.927050, 0.192270,
		0.873940, -0.212819, -0.436962,
		39.442917, 40.112350, 29.654631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124344, 40.842152, 29.620626>,  <38.831161, 40.261326, 29.960505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124344, 40.842152, 29.620626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207764, 40.482353, 29.467049>,  <39.257816, 40.266476, 29.374903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207764, 40.482353, 29.467049>,  <39.124344, 40.842152, 29.620626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207764, 40.482353, 29.467049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274015, 0.323112, -0.905823,
		0.938841, 0.294117, -0.179090,
		0.208552, -0.899496, -0.383943,
		39.270329, 40.212505, 29.351866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669880, 40.854073, 28.963528>,  <39.124344, 40.842152, 29.620626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669880, 40.854073, 28.963528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.346855, 40.619431, 28.987997>,  <39.153042, 40.478645, 29.002678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.346855, 40.619431, 28.987997>,  <39.669880, 40.854073, 28.963528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346855, 40.619431, 28.987997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337629, 0.374762, -0.863458,
		0.483584, -0.717947, -0.500698,
		-0.807560, -0.586605, 0.061171,
		39.104588, 40.443451, 29.006348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889057, 40.601414, 28.323797>,  <39.669880, 40.854073, 28.963528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889057, 40.601414, 28.323797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852272, 40.203110, 28.322605>,  <39.830200, 39.964127, 28.321890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852272, 40.203110, 28.322605>,  <39.889057, 40.601414, 28.323797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852272, 40.203110, 28.322605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959277, -0.089398, 0.267946,
		-0.267076, 0.021781, 0.963429,
		-0.091965, -0.995758, -0.002982,
		39.824684, 39.904381, 28.321711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346588, 40.267704, 28.883518>,  <39.889057, 40.601414, 28.323797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.346588, 40.267704, 28.883518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275665, 40.016155, 28.580708>,  <40.233112, 39.865227, 28.399021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275665, 40.016155, 28.580708>,  <40.346588, 40.267704, 28.883518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275665, 40.016155, 28.580708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890969, -0.429290, 0.147935,
		-0.418015, -0.648256, 0.636418,
		-0.177309, -0.628868, -0.757025,
		40.222473, 39.827496, 28.353600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473392, 39.467239, 28.968790>,  <40.346588, 40.267704, 28.883518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473392, 39.467239, 28.968790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.542603, 39.597149, 28.596857>,  <40.584129, 39.675095, 28.373697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.542603, 39.597149, 28.596857>,  <40.473392, 39.467239, 28.968790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542603, 39.597149, 28.596857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954011, -0.289908, 0.076262,
		-0.244798, -0.900263, -0.360000,
		0.173023, 0.324775, -0.929830,
		40.594509, 39.694580, 28.317907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847466, 38.937775, 28.531849>,  <40.473392, 39.467239, 28.968790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847466, 38.937775, 28.531849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.938366, 39.307549, 28.409361>,  <40.992905, 39.529415, 28.335867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.938366, 39.307549, 28.409361>,  <40.847466, 38.937775, 28.531849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.938366, 39.307549, 28.409361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959885, -0.159593, 0.230547,
		0.164255, -0.346328, -0.923622,
		0.227248, 0.924439, -0.306221,
		41.006542, 39.584881, 28.317495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337982, 38.965382, 27.999664>,  <40.847466, 38.937775, 28.531849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.337982, 38.965382, 27.999664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.366467, 39.311169, 28.198715>,  <41.383556, 39.518639, 28.318146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.366467, 39.311169, 28.198715>,  <41.337982, 38.965382, 27.999664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.366467, 39.311169, 28.198715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879007, -0.290196, 0.378330,
		0.471462, 0.410474, -0.780535,
		0.071213, 0.864464, 0.497626,
		41.387829, 39.570507, 28.348003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.952797, 39.379490, 27.788038>,  <41.337982, 38.965382, 27.999664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.952797, 39.379490, 27.788038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.837593, 39.407166, 28.170088>,  <41.768471, 39.423771, 28.399319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.837593, 39.407166, 28.170088>,  <41.952797, 39.379490, 27.788038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.837593, 39.407166, 28.170088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852826, -0.435145, 0.288681,
		0.435591, 0.897698, 0.066321,
		-0.288007, 0.069187, 0.955126,
		41.751190, 39.427921, 28.456625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.325100, 39.837852, 28.136902>,  <41.952797, 39.379490, 27.788038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.325100, 39.837852, 28.136902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.191547, 39.572750, 28.405016>,  <42.111416, 39.413689, 28.565884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.191547, 39.572750, 28.405016>,  <42.325100, 39.837852, 28.136902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.191547, 39.572750, 28.405016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939618, -0.177330, 0.292699,
		-0.075126, 0.727537, 0.681943,
		-0.333879, -0.662755, 0.670284,
		42.091385, 39.373924, 28.606102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.543343, 40.095821, 28.766621>,  <42.325100, 39.837852, 28.136902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.543343, 40.095821, 28.766621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.478081, 39.710712, 28.852829>,  <42.438923, 39.479649, 28.904554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.478081, 39.710712, 28.852829>,  <42.543343, 40.095821, 28.766621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.478081, 39.710712, 28.852829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896588, -0.053527, 0.439618,
		-0.411717, 0.264957, 0.871944,
		-0.163153, -0.962773, 0.215520,
		42.429134, 39.421879, 28.917484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.749554, 40.048325, 29.410431>,  <42.543343, 40.095821, 28.766621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.749554, 40.048325, 29.410431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.751801, 39.670444, 29.279274>,  <42.753147, 39.443718, 29.200581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.751801, 39.670444, 29.279274>,  <42.749554, 40.048325, 29.410431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.751801, 39.670444, 29.279274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873640, -0.154904, 0.461256,
		-0.486540, -0.289047, 0.824458,
		0.005613, -0.944699, -0.327890,
		42.753483, 39.387035, 29.180906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.834309, 39.711288, 29.944483>,  <42.749554, 40.048325, 29.410431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.834309, 39.711288, 29.944483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.953117, 39.428486, 29.687757>,  <43.024403, 39.258804, 29.533722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.953117, 39.428486, 29.687757>,  <42.834309, 39.711288, 29.944483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.953117, 39.428486, 29.687757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719383, -0.276305, 0.637294,
		-0.627906, -0.650999, 0.426538,
		0.297023, -0.707005, -0.641811,
		43.042225, 39.216385, 29.495214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.824821, 39.051899, 30.262850>,  <42.834309, 39.711288, 29.944483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.824821, 39.051899, 30.262850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.061672, 38.984257, 29.947689>,  <43.203785, 38.943672, 29.758593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.061672, 38.984257, 29.947689>,  <42.824821, 39.051899, 30.262850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.061672, 38.984257, 29.947689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646538, -0.483920, 0.589753,
		-0.480988, -0.858625, -0.177241,
		0.592147, -0.169071, -0.787894,
		43.239311, 38.933525, 29.711319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.009239, 38.388290, 30.393368>,  <42.824821, 39.051899, 30.262850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.009239, 38.388290, 30.393368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.280910, 38.557880, 30.153713>,  <43.443913, 38.659634, 30.009920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.280910, 38.557880, 30.153713>,  <43.009239, 38.388290, 30.393368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.280910, 38.557880, 30.153713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733641, -0.416712, 0.536769,
		-0.022093, -0.804114, -0.594064,
		0.679178, 0.423971, -0.599138,
		43.484665, 38.685070, 29.973972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.262383, 37.803791, 30.055384>,  <43.009239, 38.388290, 30.393368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.262383, 37.803791, 30.055384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.504787, 38.121971, 30.054293>,  <43.650230, 38.312878, 30.053638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.504787, 38.121971, 30.054293>,  <43.262383, 37.803791, 30.055384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.504787, 38.121971, 30.054293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731908, -0.556259, 0.393556,
		0.311536, -0.240497, -0.919297,
		0.606016, 0.795448, -0.002727,
		43.686592, 38.360607, 30.053474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.858700, 37.522346, 29.927635>,  <43.262383, 37.803791, 30.055384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.858700, 37.522346, 29.927635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.951134, 37.888512, 30.059465>,  <44.006596, 38.108212, 30.138563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.951134, 37.888512, 30.059465>,  <43.858700, 37.522346, 29.927635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.951134, 37.888512, 30.059465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853200, -0.353469, 0.383550,
		0.467601, 0.192562, -0.862711,
		0.231084, 0.915412, 0.329576,
		44.020458, 38.163136, 30.158339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.611092, 37.619080, 29.773775>,  <43.858700, 37.522346, 29.927635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.611092, 37.619080, 29.773775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.515984, 37.887375, 30.054794>,  <44.458920, 38.048351, 30.223406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.515984, 37.887375, 30.054794>,  <44.611092, 37.619080, 29.773775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.515984, 37.887375, 30.054794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756169, -0.326151, 0.567305,
		0.609651, 0.666132, -0.429645,
		-0.237771, 0.670742, 0.702546,
		44.444653, 38.088596, 30.265558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.200855, 37.956978, 29.941002>,  <44.611092, 37.619080, 29.773775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.200855, 37.956978, 29.941002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.975868, 38.025902, 30.264467>,  <44.840874, 38.067257, 30.458546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.975868, 38.025902, 30.264467>,  <45.200855, 37.956978, 29.941002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.975868, 38.025902, 30.264467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736447, -0.340203, 0.584729,
		0.375862, 0.924431, 0.064461,
		-0.562471, 0.172305, 0.808664,
		44.807125, 38.077595, 30.507067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.645985, 38.234619, 30.467121>,  <45.200855, 37.956978, 29.941002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.645985, 38.234619, 30.467121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.330376, 38.133419, 30.691059>,  <45.141010, 38.072701, 30.825422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.330376, 38.133419, 30.691059>,  <45.645985, 38.234619, 30.467121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.330376, 38.133419, 30.691059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613368, -0.376145, 0.694474,
		0.034882, 0.891351, 0.451970,
		-0.789026, -0.253000, 0.559847,
		45.093666, 38.057518, 30.859013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.900074, 38.230827, 31.064419>,  <45.645985, 38.234619, 30.467121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.900074, 38.230827, 31.064419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.554970, 38.040489, 31.132793>,  <45.347908, 37.926289, 31.173819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.554970, 38.040489, 31.132793>,  <45.900074, 38.230827, 31.064419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.554970, 38.040489, 31.132793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404205, -0.446006, 0.798559,
		-0.303750, 0.758058, 0.577134,
		-0.862760, -0.475843, 0.170937,
		45.296143, 37.897736, 31.184074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.750542, 38.390125, 31.811256>,  <45.900074, 38.230827, 31.064419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.750542, 38.390125, 31.811256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.534115, 38.067764, 31.715117>,  <45.404259, 37.874348, 31.657433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.534115, 38.067764, 31.715117>,  <45.750542, 38.390125, 31.811256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.534115, 38.067764, 31.715117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419595, -0.506384, 0.753336,
		-0.728822, 0.306759, 0.612141,
		-0.541071, -0.805900, -0.240350,
		45.371792, 37.825993, 31.643011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.390224, 38.175026, 32.461803>,  <45.750542, 38.390125, 31.811256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.390224, 38.175026, 32.461803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.442169, 37.863670, 32.216125>,  <45.473335, 37.676857, 32.068718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.442169, 37.863670, 32.216125>,  <45.390224, 38.175026, 32.461803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.442169, 37.863670, 32.216125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432980, -0.512744, 0.741365,
		-0.892000, -0.362212, 0.270442,
		0.129864, -0.778393, -0.614198,
		45.481129, 37.630154, 32.031864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.333374, 37.707458, 32.908634>,  <45.390224, 38.175026, 32.461803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.333374, 37.707458, 32.908634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.480728, 37.491341, 32.606014>,  <45.569141, 37.361668, 32.424442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.480728, 37.491341, 32.606014>,  <45.333374, 37.707458, 32.908634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.480728, 37.491341, 32.606014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486193, -0.581662, 0.652139,
		-0.792408, -0.608066, 0.048415,
		0.368383, -0.540299, -0.756552,
		45.591244, 37.329250, 32.379047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.169147, 37.064915, 33.033360>,  <45.333374, 37.707458, 32.908634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.169147, 37.064915, 33.033360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.476604, 37.026623, 32.780373>,  <45.661079, 37.003647, 32.628578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.476604, 37.026623, 32.780373>,  <45.169147, 37.064915, 33.033360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.476604, 37.026623, 32.780373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429705, -0.655158, 0.621387,
		-0.473854, -0.749402, -0.462449,
		0.768646, -0.095730, -0.632471,
		45.707199, 36.997902, 32.590630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.304562, 36.233345, 32.898975>,  <45.169147, 37.064915, 33.033360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.304562, 36.233345, 32.898975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.621929, 36.461021, 32.812717>,  <45.812351, 36.597626, 32.760963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.621929, 36.461021, 32.812717>,  <45.304562, 36.233345, 32.898975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.621929, 36.461021, 32.812717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528436, -0.468340, 0.708105,
		0.302051, -0.675781, -0.672373,
		0.793423, 0.569190, -0.215645,
		45.859955, 36.631779, 32.748024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.735447, 35.768604, 32.814079>,  <45.304562, 36.233345, 32.898975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.735447, 35.768604, 32.814079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.966286, 36.090763, 32.868168>,  <46.104790, 36.284058, 32.900623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.966286, 36.090763, 32.868168>,  <45.735447, 35.768604, 32.814079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.966286, 36.090763, 32.868168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603387, -0.532077, 0.593985,
		0.550345, -0.261196, -0.793030,
		0.577100, 0.805401, 0.135224,
		46.139416, 36.332382, 32.908733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.333275, 35.591183, 32.574875>,  <45.735447, 35.768604, 32.814079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.333275, 35.591183, 32.574875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.428455, 35.877163, 32.837852>,  <46.485565, 36.048752, 32.995640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.428455, 35.877163, 32.837852>,  <46.333275, 35.591183, 32.574875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.428455, 35.877163, 32.837852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607908, -0.637540, 0.473277,
		0.757513, 0.287046, -0.586327,
		0.237955, 0.714946, 0.657442,
		46.499844, 36.091648, 33.035084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.065216, 35.433971, 32.655651>,  <46.333275, 35.591183, 32.574875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.065216, 35.433971, 32.655651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.934788, 35.653141, 32.963795>,  <46.856529, 35.784641, 33.148682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.934788, 35.653141, 32.963795>,  <47.065216, 35.433971, 32.655651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.934788, 35.653141, 32.963795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606041, -0.504259, 0.615172,
		0.725530, 0.667461, -0.167640,
		-0.326069, 0.547922, 0.770364,
		46.836967, 35.817516, 33.194904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.633602, 35.632370, 32.973045>,  <47.065216, 35.433971, 32.655651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.633602, 35.632370, 32.973045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.342922, 35.678989, 33.243843>,  <47.168514, 35.706959, 33.406322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.342922, 35.678989, 33.243843>,  <47.633602, 35.632370, 32.973045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.342922, 35.678989, 33.243843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594207, -0.387879, 0.704605,
		0.344710, 0.914313, 0.212620,
		-0.726700, 0.116544, 0.676997,
		47.124912, 35.713951, 33.446941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.977131, 35.907978, 33.610165>,  <47.633602, 35.632370, 32.973045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.977131, 35.907978, 33.610165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.639683, 35.723469, 33.720097>,  <47.437214, 35.612762, 33.786057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.639683, 35.723469, 33.720097>,  <47.977131, 35.907978, 33.610165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.639683, 35.723469, 33.720097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465852, -0.374267, 0.801815,
		-0.266999, 0.804455, 0.530625,
		-0.843619, -0.461276, 0.274828,
		47.386597, 35.585087, 33.802544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.987755, 36.108616, 34.301968>,  <47.977131, 35.907978, 33.610165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.987755, 36.108616, 34.301968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.812546, 35.762077, 34.205986>,  <47.707420, 35.554153, 34.148399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.812546, 35.762077, 34.205986>,  <47.987755, 36.108616, 34.301968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.812546, 35.762077, 34.205986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382024, -0.421007, 0.822684,
		-0.813753, 0.268686, 0.515377,
		-0.438022, -0.866349, -0.239951,
		47.681141, 35.502174, 34.133999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.687946, 35.947826, 34.862892>,  <47.987755, 36.108616, 34.301968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.687946, 35.947826, 34.862892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.765499, 35.619316, 34.648262>,  <47.812031, 35.422211, 34.519485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.765499, 35.619316, 34.648262>,  <47.687946, 35.947826, 34.862892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.765499, 35.619316, 34.648262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403003, -0.431990, 0.806829,
		-0.894425, -0.372673, 0.247221,
		0.193886, -0.821279, -0.536571,
		47.823666, 35.372932, 34.487289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.324669, 35.301552, 35.158119>,  <47.687946, 35.947826, 34.862892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.324669, 35.301552, 35.158119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.634445, 35.194221, 34.928947>,  <47.820309, 35.129826, 34.791443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.634445, 35.194221, 34.928947>,  <47.324669, 35.301552, 35.158119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.634445, 35.194221, 34.928947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492270, -0.313268, 0.812117,
		-0.397390, -0.910970, -0.110519,
		0.774436, -0.268321, -0.572933,
		47.866776, 35.113724, 34.757069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.193508, 37.024658, 45.543316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.059433, 36.648148, 45.527061>,  <34.978989, 36.422241, 45.517307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.059433, 36.648148, 45.527061>,  <35.193508, 37.024658, 45.543316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059433, 36.648148, 45.527061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294761, -0.063799, -0.953439,
		0.894856, -0.331558, 0.298836,
		-0.335186, -0.941275, -0.040639,
		34.958878, 36.365765, 45.514870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684734, 36.664742, 45.242027>,  <35.193508, 37.024658, 45.543316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684734, 36.664742, 45.242027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.351265, 36.452881, 45.179466>,  <35.151184, 36.325764, 45.141930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.351265, 36.452881, 45.179466>,  <35.684734, 36.664742, 45.242027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351265, 36.452881, 45.179466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271284, -0.146073, -0.951350,
		0.481042, -0.835540, 0.265463,
		-0.833668, -0.529655, -0.156402,
		35.101166, 36.293983, 45.132545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850739, 36.068768, 44.826962>,  <35.684734, 36.664742, 45.242027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850739, 36.068768, 44.826962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.455074, 36.115707, 44.791641>,  <35.217678, 36.143871, 44.770447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.455074, 36.115707, 44.791641>,  <35.850739, 36.068768, 44.826962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455074, 36.115707, 44.791641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059766, -0.227569, -0.971926,
		-0.134152, -0.966665, 0.218088,
		-0.989157, 0.117352, -0.088303,
		35.158329, 36.150913, 44.765152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617004, 35.438210, 44.577606>,  <35.850739, 36.068768, 44.826962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617004, 35.438210, 44.577606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.327179, 35.686615, 44.458038>,  <35.153282, 35.835659, 44.386299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.327179, 35.686615, 44.458038>,  <35.617004, 35.438210, 44.577606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327179, 35.686615, 44.458038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149405, -0.281872, -0.947748,
		-0.672818, -0.731365, 0.111452,
		-0.724565, 0.621011, -0.298918,
		35.109810, 35.872917, 44.368362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133705, 35.052574, 44.007225>,  <35.617004, 35.438210, 44.577606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133705, 35.052574, 44.007225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.059490, 35.443054, 43.962315>,  <35.014961, 35.677341, 43.935368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.059490, 35.443054, 43.962315>,  <35.133705, 35.052574, 44.007225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059490, 35.443054, 43.962315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154789, -0.141867, -0.977709,
		-0.970370, -0.164018, 0.177426,
		-0.185533, 0.976203, -0.112276,
		35.003830, 35.735916, 43.928631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548576, 35.137035, 43.569496>,  <35.133705, 35.052574, 44.007225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548576, 35.137035, 43.569496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.717667, 35.499161, 43.552917>,  <34.819118, 35.716434, 43.542969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.717667, 35.499161, 43.552917>,  <34.548576, 35.137035, 43.569496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717667, 35.499161, 43.552917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090511, -0.003333, -0.995890,
		-0.901729, 0.424735, 0.080532,
		0.422721, 0.905312, -0.041449,
		34.844482, 35.770756, 43.540482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199112, 35.423237, 43.121521>,  <34.548576, 35.137035, 43.569496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199112, 35.423237, 43.121521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.544167, 35.625206, 43.109447>,  <34.751198, 35.746387, 43.102203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.544167, 35.625206, 43.109447>,  <34.199112, 35.423237, 43.121521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544167, 35.625206, 43.109447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046391, -0.138388, -0.989291,
		-0.503697, 0.851996, -0.142803,
		0.862634, 0.504928, -0.030181,
		34.802956, 35.776684, 43.100391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170341, 35.812965, 42.647377>,  <34.199112, 35.423237, 43.121521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170341, 35.812965, 42.647377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.567711, 35.798161, 42.690731>,  <34.806133, 35.789280, 42.716743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.567711, 35.798161, 42.690731>,  <34.170341, 35.812965, 42.647377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567711, 35.798161, 42.690731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106144, -0.057967, -0.992660,
		0.043021, 0.997632, -0.053657,
		0.993420, -0.037009, 0.108387,
		34.865738, 35.787056, 42.723248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502460, 36.310112, 42.199982>,  <34.170341, 35.812965, 42.647377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502460, 36.310112, 42.199982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.819393, 36.076859, 42.271709>,  <35.009552, 35.936905, 42.314747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.819393, 36.076859, 42.271709>,  <34.502460, 36.310112, 42.199982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819393, 36.076859, 42.271709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274316, 0.077985, -0.958472,
		0.544936, 0.808622, 0.221754,
		0.792335, -0.583137, 0.179321,
		35.057095, 35.901917, 42.325504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041946, 36.576790, 41.973824>,  <34.502460, 36.310112, 42.199982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041946, 36.576790, 41.973824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.181400, 36.202477, 41.994892>,  <35.265072, 35.977890, 42.007534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.181400, 36.202477, 41.994892>,  <35.041946, 36.576790, 41.973824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181400, 36.202477, 41.994892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418259, 0.105045, -0.902234,
		0.838759, 0.336575, 0.428020,
		0.348630, -0.935779, 0.052668,
		35.285988, 35.921741, 42.010693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728214, 36.572865, 41.886856>,  <35.041946, 36.576790, 41.973824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728214, 36.572865, 41.886856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.626583, 36.195351, 41.802265>,  <35.565605, 35.968842, 41.751511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.626583, 36.195351, 41.802265>,  <35.728214, 36.572865, 41.886856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626583, 36.195351, 41.802265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626455, 0.006004, -0.779435,
		0.736885, -0.330517, 0.589711,
		-0.254075, -0.943781, -0.211478,
		35.550362, 35.912216, 41.738823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340641, 36.323948, 41.720966>,  <35.728214, 36.572865, 41.886856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340641, 36.323948, 41.720966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.099628, 36.030025, 41.596378>,  <35.955021, 35.853672, 41.521626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.099628, 36.030025, 41.596378>,  <36.340641, 36.323948, 41.720966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099628, 36.030025, 41.596378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601093, -0.161087, -0.782776,
		0.525019, -0.658866, 0.538749,
		-0.602530, -0.734811, -0.311466,
		35.918869, 35.809582, 41.502937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777267, 35.761265, 41.526512>,  <36.340641, 36.323948, 41.720966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777267, 35.761265, 41.526512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.443756, 35.683537, 41.319805>,  <36.243649, 35.636898, 41.195782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.443756, 35.683537, 41.319805>,  <36.777267, 35.761265, 41.526512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443756, 35.683537, 41.319805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540433, -0.095910, -0.835903,
		0.112872, -0.976238, 0.184986,
		-0.833782, -0.194322, -0.516766,
		36.193623, 35.625240, 41.164776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913326, 35.196468, 41.136230>,  <36.777267, 35.761265, 41.526512>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913326, 35.196468, 41.136230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.603603, 35.380455, 40.962391>,  <36.417770, 35.490845, 40.858086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.603603, 35.380455, 40.962391>,  <36.913326, 35.196468, 41.136230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603603, 35.380455, 40.962391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542282, 0.128341, -0.830336,
		-0.326148, -0.878613, -0.348806,
		-0.774311, 0.459964, -0.434598,
		36.371311, 35.518444, 40.832012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787037, 34.805481, 40.440716>,  <36.913326, 35.196468, 41.136230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787037, 34.805481, 40.440716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.607166, 35.162613, 40.430538>,  <36.499245, 35.376892, 40.424431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.607166, 35.162613, 40.430538>,  <36.787037, 34.805481, 40.440716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607166, 35.162613, 40.430538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378723, 0.164791, -0.910721,
		-0.808923, -0.419171, -0.412238,
		-0.449681, 0.892827, -0.025447,
		36.472263, 35.430462, 40.422905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478729, 34.828583, 39.766533>,  <36.787037, 34.805481, 40.440716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478729, 34.828583, 39.766533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.511497, 35.201912, 39.906364>,  <36.531158, 35.425907, 39.990261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.511497, 35.201912, 39.906364>,  <36.478729, 34.828583, 39.766533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511497, 35.201912, 39.906364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497150, 0.265730, -0.825972,
		-0.863789, 0.241456, -0.442231,
		0.081922, 0.933320, 0.349574,
		36.536076, 35.481907, 40.011238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171200, 35.215534, 39.281311>,  <36.478729, 34.828583, 39.766533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171200, 35.215534, 39.281311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.389957, 35.494827, 39.466080>,  <36.521214, 35.662403, 39.576942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.389957, 35.494827, 39.466080>,  <36.171200, 35.215534, 39.281311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389957, 35.494827, 39.466080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346100, 0.313836, -0.884150,
		-0.762310, 0.643413, -0.070022,
		0.546898, 0.698231, 0.461926,
		36.554028, 35.704296, 39.604656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071732, 35.900345, 38.856598>,  <36.171200, 35.215534, 39.281311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071732, 35.900345, 38.856598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.409603, 35.922943, 39.069508>,  <36.612328, 35.936504, 39.197254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.409603, 35.922943, 39.069508>,  <36.071732, 35.900345, 38.856598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409603, 35.922943, 39.069508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495908, 0.291678, -0.817924,
		-0.201465, 0.954847, 0.218357,
		0.844682, 0.056498, 0.532279,
		36.663006, 35.939892, 39.229191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456581, 36.474442, 38.544907>,  <36.071732, 35.900345, 38.856598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456581, 36.474442, 38.544907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.725079, 36.273312, 38.762749>,  <36.886177, 36.152634, 38.893456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.725079, 36.273312, 38.762749>,  <36.456581, 36.474442, 38.544907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725079, 36.273312, 38.762749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661017, 0.073609, -0.746752,
		0.335399, 0.861247, 0.381787,
		0.671241, -0.502828, 0.544610,
		36.926453, 36.122463, 38.926132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046207, 36.969563, 38.527988>,  <36.456581, 36.474442, 38.544907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046207, 36.969563, 38.527988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.164165, 36.592697, 38.591694>,  <37.234940, 36.366577, 38.629917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.164165, 36.592697, 38.591694>,  <37.046207, 36.969563, 38.527988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164165, 36.592697, 38.591694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710958, 0.104986, -0.695354,
		0.638416, 0.318287, 0.700799,
		0.294896, -0.942163, 0.159263,
		37.252636, 36.310047, 38.639473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702385, 37.067577, 38.604416>,  <37.046207, 36.969563, 38.527988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702385, 37.067577, 38.604416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.699230, 36.671597, 38.547951>,  <37.697338, 36.434006, 38.514072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.699230, 36.671597, 38.547951>,  <37.702385, 37.067577, 38.604416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699230, 36.671597, 38.547951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782272, 0.081821, -0.617541,
		0.622887, -0.115297, 0.773769,
		-0.007890, -0.989956, -0.141159,
		37.696865, 36.374611, 38.505604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341618, 36.927399, 38.535255>,  <37.702385, 37.067577, 38.604416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341618, 36.927399, 38.535255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.176147, 36.590240, 38.397621>,  <38.076866, 36.387943, 38.315041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.176147, 36.590240, 38.397621>,  <38.341618, 36.927399, 38.535255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176147, 36.590240, 38.397621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698304, -0.051259, -0.713964,
		0.584162, -0.535624, 0.609804,
		-0.413674, -0.842899, -0.344085,
		38.052044, 36.337372, 38.294395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037868, 36.566906, 38.565113>,  <38.341618, 36.927399, 38.535255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037868, 36.566906, 38.565113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.429802, 36.646538, 38.558296>,  <39.664963, 36.694317, 38.554207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.429802, 36.646538, 38.558296>,  <39.037868, 36.566906, 38.565113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429802, 36.646538, 38.558296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013967, 0.016844, 0.999761,
		0.199323, -0.979838, 0.013724,
		0.979834, 0.199083, -0.017043,
		39.723751, 36.706261, 38.553185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316635, 36.116055, 39.089924>,  <39.037868, 36.566906, 38.565113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316635, 36.116055, 39.089924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.577637, 36.408360, 39.009701>,  <39.734238, 36.583744, 38.961567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.577637, 36.408360, 39.009701>,  <39.316635, 36.116055, 39.089924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577637, 36.408360, 39.009701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236796, 0.054785, 0.970013,
		0.719838, -0.680429, -0.137295,
		0.652503, 0.730764, -0.200559,
		39.773388, 36.627590, 38.949532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873371, 35.865417, 39.314915>,  <39.316635, 36.116055, 39.089924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.873371, 35.865417, 39.314915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.905392, 36.264080, 39.308380>,  <39.924606, 36.503277, 39.304459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.905392, 36.264080, 39.308380>,  <39.873371, 35.865417, 39.314915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905392, 36.264080, 39.308380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140298, 0.004962, 0.990097,
		0.986867, -0.081554, -0.139432,
		0.080055, 0.996656, -0.016339,
		39.929409, 36.563076, 39.303478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386436, 36.108288, 39.844204>,  <39.873371, 35.865417, 39.314915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386436, 36.108288, 39.844204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.156067, 36.428963, 39.780193>,  <40.017845, 36.621368, 39.741787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.156067, 36.428963, 39.780193>,  <40.386436, 36.108288, 39.844204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156067, 36.428963, 39.780193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173215, 0.071637, 0.982276,
		0.798939, 0.593438, 0.097606,
		-0.575928, 0.801685, -0.160026,
		39.983288, 36.669468, 39.732185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619846, 36.526588, 40.294888>,  <40.386436, 36.108288, 39.844204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619846, 36.526588, 40.294888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.264671, 36.686943, 40.204689>,  <40.051567, 36.783157, 40.150570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.264671, 36.686943, 40.204689>,  <40.619846, 36.526588, 40.294888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264671, 36.686943, 40.204689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142832, 0.225696, 0.963670,
		0.437216, 0.887892, -0.143146,
		-0.887942, 0.400886, -0.225497,
		39.998287, 36.807209, 40.137039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600426, 37.110332, 40.657749>,  <40.619846, 36.526588, 40.294888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.600426, 37.110332, 40.657749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.216671, 37.050331, 40.562187>,  <39.986416, 37.014332, 40.504852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.216671, 37.050331, 40.562187>,  <40.600426, 37.110332, 40.657749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.216671, 37.050331, 40.562187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276133, 0.326287, 0.904039,
		-0.057654, 0.933294, -0.354456,
		-0.959388, -0.149999, -0.238902,
		39.928856, 37.005333, 40.490517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177204, 37.775261, 40.928795>,  <40.600426, 37.110332, 40.657749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177204, 37.775261, 40.928795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.909023, 37.484535, 40.869144>,  <39.748116, 37.310101, 40.833355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.909023, 37.484535, 40.869144>,  <40.177204, 37.775261, 40.928795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909023, 37.484535, 40.869144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369647, 0.152934, 0.916500,
		-0.643318, 0.669591, -0.371199,
		-0.670449, -0.726814, -0.149127,
		39.707890, 37.266491, 40.824406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458851, 38.015137, 41.124584>,  <40.177204, 37.775261, 40.928795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458851, 38.015137, 41.124584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.472824, 37.617966, 41.169975>,  <39.481209, 37.379662, 41.197208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.472824, 37.617966, 41.169975>,  <39.458851, 38.015137, 41.124584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472824, 37.617966, 41.169975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272148, 0.099805, 0.957066,
		-0.961621, -0.064313, -0.266736,
		0.034930, -0.992926, 0.113477,
		39.483303, 37.320087, 41.204018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781506, 37.696938, 41.370014>,  <39.458851, 38.015137, 41.124584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781506, 37.696938, 41.370014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.032703, 37.391819, 41.431671>,  <39.183422, 37.208748, 41.468666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.032703, 37.391819, 41.431671>,  <38.781506, 37.696938, 41.370014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032703, 37.391819, 41.431671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351446, -0.101262, 0.930716,
		-0.694337, -0.638661, -0.331674,
		0.627998, -0.762796, 0.154145,
		39.221104, 37.162979, 41.477913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425831, 37.130569, 41.593636>,  <38.781506, 37.696938, 41.370014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425831, 37.130569, 41.593636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.779526, 37.045792, 41.760109>,  <38.991741, 36.994926, 41.859993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.779526, 37.045792, 41.760109>,  <38.425831, 37.130569, 41.593636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779526, 37.045792, 41.760109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433605, -0.041423, 0.900151,
		-0.173540, -0.976404, -0.128526,
		0.884234, -0.211942, 0.416185,
		39.044796, 36.982208, 41.884964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261642, 36.613049, 42.075600>,  <38.425831, 37.130569, 41.593636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261642, 36.613049, 42.075600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.619797, 36.754948, 42.183258>,  <38.834690, 36.840088, 42.247852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.619797, 36.754948, 42.183258>,  <38.261642, 36.613049, 42.075600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619797, 36.754948, 42.183258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302549, 0.041164, 0.952245,
		0.326728, -0.934055, 0.144186,
		0.895384, 0.354748, 0.269148,
		38.888412, 36.861374, 42.264004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469265, 36.266621, 42.654865>,  <38.261642, 36.613049, 42.075600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469265, 36.266621, 42.654865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.738724, 36.560303, 42.688671>,  <38.900398, 36.736511, 42.708954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.738724, 36.560303, 42.688671>,  <38.469265, 36.266621, 42.654865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738724, 36.560303, 42.688671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155628, 0.029129, 0.987386,
		0.722483, -0.678301, 0.133886,
		0.673645, 0.734206, 0.084517,
		38.940819, 36.780563, 42.714027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986607, 36.073330, 43.180058>,  <38.469265, 36.266621, 42.654865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986607, 36.073330, 43.180058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.992722, 36.472145, 43.149921>,  <38.996391, 36.711433, 43.131840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.992722, 36.472145, 43.149921>,  <38.986607, 36.073330, 43.180058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992722, 36.472145, 43.149921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168301, 0.076839, 0.982736,
		0.985617, -0.002341, 0.168977,
		0.015284, 0.997041, -0.075340,
		38.997307, 36.771255, 43.127319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291233, 36.277107, 43.808979>,  <38.986607, 36.073330, 43.180058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291233, 36.277107, 43.808979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.153561, 36.635494, 43.696709>,  <39.070957, 36.850529, 43.629349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.153561, 36.635494, 43.696709>,  <39.291233, 36.277107, 43.808979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153561, 36.635494, 43.696709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350088, 0.154912, 0.923819,
		0.871192, 0.416223, 0.260350,
		-0.344184, 0.895969, -0.280673,
		39.050304, 36.904285, 43.612507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467804, 36.696762, 44.368645>,  <39.291233, 36.277107, 43.808979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467804, 36.696762, 44.368645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.150452, 36.851204, 44.180397>,  <38.960041, 36.943867, 44.067448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.150452, 36.851204, 44.180397>,  <39.467804, 36.696762, 44.368645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150452, 36.851204, 44.180397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402204, 0.247826, 0.881370,
		0.456930, 0.888542, -0.041328,
		-0.793377, 0.386103, -0.470614,
		38.912437, 36.967033, 44.039211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246685, 37.253792, 44.777870>,  <39.467804, 36.696762, 44.368645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246685, 37.253792, 44.777870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.925797, 37.178333, 44.551292>,  <38.733265, 37.133057, 44.415344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.925797, 37.178333, 44.551292>,  <39.246685, 37.253792, 44.777870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925797, 37.178333, 44.551292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590213, 0.107613, 0.800042,
		-0.089970, 0.976131, -0.197672,
		-0.802218, -0.188648, -0.566443,
		38.685131, 37.121738, 44.381359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778599, 37.838299, 44.841217>,  <39.246685, 37.253792, 44.777870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778599, 37.838299, 44.841217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.561062, 37.516769, 44.744797>,  <38.430538, 37.323853, 44.686943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.561062, 37.516769, 44.744797>,  <38.778599, 37.838299, 44.841217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561062, 37.516769, 44.744797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709802, 0.287373, 0.643116,
		-0.447679, 0.520853, -0.726840,
		-0.543842, -0.803822, -0.241051,
		38.397907, 37.275623, 44.672482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144112, 38.152042, 44.800694>,  <38.778599, 37.838299, 44.841217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144112, 38.152042, 44.800694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.097187, 37.758289, 44.853207>,  <38.069031, 37.522038, 44.884716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.097187, 37.758289, 44.853207>,  <38.144112, 38.152042, 44.800694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097187, 37.758289, 44.853207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689414, 0.175879, 0.702691,
		-0.714805, -0.008073, -0.699278,
		-0.117316, -0.984379, 0.131284,
		38.061993, 37.462975, 44.892593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.399075, 38.040058, 44.796146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.553448, 37.708839, 44.958817>,  <37.646072, 37.510109, 45.056419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.553448, 37.708839, 44.958817>,  <37.399075, 38.040058, 44.796146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553448, 37.708839, 44.958817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613418, 0.098918, 0.783539,
		-0.689037, -0.551859, -0.469765,
		0.385935, -0.828050, 0.406678,
		37.669228, 37.460426, 45.080818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775284, 37.642952, 45.022083>,  <37.399075, 38.040058, 44.796146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775284, 37.642952, 45.022083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.096363, 37.494347, 45.208694>,  <37.289013, 37.405186, 45.320663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.096363, 37.494347, 45.208694>,  <36.775284, 37.642952, 45.022083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096363, 37.494347, 45.208694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507695, -0.015230, 0.861402,
		-0.312913, -0.928305, -0.200838,
		0.802703, -0.371508, 0.466530,
		37.337173, 37.382893, 45.348652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487495, 37.085602, 45.324986>,  <36.775284, 37.642952, 45.022083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487495, 37.085602, 45.324986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.824490, 37.151806, 45.530052>,  <37.026688, 37.191528, 45.653091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.824490, 37.151806, 45.530052>,  <36.487495, 37.085602, 45.324986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824490, 37.151806, 45.530052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515698, -0.027436, 0.856331,
		0.155797, -0.985826, 0.062238,
		0.842486, 0.165510, 0.512663,
		37.077236, 37.201458, 45.683853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506153, 36.592525, 45.867733>,  <36.487495, 37.085602, 45.324986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506153, 36.592525, 45.867733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.742416, 36.897995, 45.971985>,  <36.884174, 37.081276, 46.034538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.742416, 36.897995, 45.971985>,  <36.506153, 36.592525, 45.867733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742416, 36.897995, 45.971985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503592, 0.096492, 0.858536,
		0.630489, -0.638355, 0.441572,
		0.590659, 0.763670, 0.260634,
		36.919613, 37.127094, 46.050175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678921, 36.401062, 46.552052>,  <36.506153, 36.592525, 45.867733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678921, 36.401062, 46.552052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.730232, 36.796333, 46.518463>,  <36.761021, 37.033497, 46.498310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.730232, 36.796333, 46.518463>,  <36.678921, 36.401062, 46.552052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730232, 36.796333, 46.518463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471666, 0.135270, 0.871340,
		0.872396, -0.072173, 0.483443,
		0.128283, 0.988177, -0.083967,
		36.768719, 37.092785, 46.493275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044823, 36.569878, 47.221992>,  <36.678921, 36.401062, 46.552052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044823, 36.569878, 47.221992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.886738, 36.911156, 47.085835>,  <36.791885, 37.115921, 47.004139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.886738, 36.911156, 47.085835>,  <37.044823, 36.569878, 47.221992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886738, 36.911156, 47.085835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305599, 0.227335, 0.924623,
		0.866264, 0.469451, 0.170888,
		-0.395217, 0.853191, -0.340396,
		36.768173, 37.167114, 46.983715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297867, 37.029285, 47.552784>,  <37.044823, 36.569878, 47.221992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297867, 37.029285, 47.552784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.957264, 37.198460, 47.428806>,  <36.752903, 37.299965, 47.354420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.957264, 37.198460, 47.428806>,  <37.297867, 37.029285, 47.552784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957264, 37.198460, 47.428806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243933, 0.203730, 0.948151,
		0.464153, 0.882960, -0.070308,
		-0.851503, 0.422937, -0.309945,
		36.701813, 37.325340, 47.335823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272331, 37.501060, 48.062336>,  <37.297867, 37.029285, 47.552784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272331, 37.501060, 48.062336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.905693, 37.489994, 47.902790>,  <36.685711, 37.483353, 47.807060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.905693, 37.489994, 47.902790>,  <37.272331, 37.501060, 48.062336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.905693, 37.489994, 47.902790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396647, 0.188479, 0.898414,
		0.050320, 0.981687, -0.183733,
		-0.916591, -0.027669, -0.398867,
		36.630714, 37.481693, 47.783131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925488, 38.121113, 48.213211>,  <37.272331, 37.501060, 48.062336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925488, 38.121113, 48.213211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.633354, 37.859135, 48.135574>,  <36.458076, 37.701950, 48.088993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.633354, 37.859135, 48.135574>,  <36.925488, 38.121113, 48.213211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633354, 37.859135, 48.135574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452419, 0.250886, 0.855788,
		-0.511797, 0.712817, -0.479537,
		-0.730330, -0.654941, -0.194089,
		36.414257, 37.662651, 48.077347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328762, 38.440441, 48.467892>,  <36.925488, 38.121113, 48.213211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328762, 38.440441, 48.467892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.250526, 38.048874, 48.491444>,  <36.203587, 37.813934, 48.505573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.250526, 38.048874, 48.491444>,  <36.328762, 38.440441, 48.467892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250526, 38.048874, 48.491444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418296, 0.137577, 0.897831,
		-0.887002, 0.150979, -0.436386,
		-0.195590, -0.978917, 0.058877,
		36.191849, 37.755199, 48.509106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736740, 38.448597, 48.841953>,  <36.328762, 38.440441, 48.467892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736740, 38.448597, 48.841953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.875671, 38.073750, 48.855690>,  <35.959030, 37.848843, 48.863930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.875671, 38.073750, 48.855690>,  <35.736740, 38.448597, 48.841953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875671, 38.073750, 48.855690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145967, -0.017858, 0.989128,
		-0.926314, -0.348563, -0.142991,
		0.347327, -0.937115, 0.034337,
		35.979870, 37.792614, 48.865990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166065, 38.051529, 49.194771>,  <35.736740, 38.448597, 48.841953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166065, 38.051529, 49.194771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.502701, 37.838055, 49.228001>,  <35.704681, 37.709969, 49.247940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.502701, 37.838055, 49.228001>,  <35.166065, 38.051529, 49.194771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502701, 37.838055, 49.228001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098022, 0.000340, 0.995184,
		-0.531149, -0.845680, -0.052028,
		0.841590, -0.533691, 0.083076,
		35.755177, 37.677948, 49.252922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973202, 37.588005, 49.622368>,  <35.166065, 38.051529, 49.194771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973202, 37.588005, 49.622368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.371937, 37.557301, 49.630562>,  <35.611179, 37.538879, 49.635479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.371937, 37.557301, 49.630562>,  <34.973202, 37.588005, 49.622368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371937, 37.557301, 49.630562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037879, -0.232584, 0.971838,
		-0.069832, -0.969543, -0.234756,
		0.996839, -0.076758, 0.020484,
		35.670990, 37.534271, 49.636707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178368, 36.873718, 49.997303>,  <34.973202, 37.588005, 49.622368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178368, 36.873718, 49.997303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.512867, 37.092567, 49.982677>,  <35.713566, 37.223877, 49.973904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.512867, 37.092567, 49.982677>,  <35.178368, 36.873718, 49.997303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512867, 37.092567, 49.982677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202382, -0.245979, 0.947911,
		0.509634, -0.800091, -0.316429,
		0.836250, 0.547127, -0.036565,
		35.763741, 37.256706, 49.971706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850929, 36.439537, 50.161865>,  <35.178368, 36.873718, 49.997303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850929, 36.439537, 50.161865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.936890, 36.823677, 50.232903>,  <35.988468, 37.054161, 50.275524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.936890, 36.823677, 50.232903>,  <35.850929, 36.439537, 50.161865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936890, 36.823677, 50.232903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342793, -0.244449, 0.907049,
		0.914500, -0.134049, -0.381735,
		0.214904, 0.960352, 0.177598,
		36.001362, 37.111782, 50.286182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513763, 36.485416, 50.487415>,  <35.850929, 36.439537, 50.161865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513763, 36.485416, 50.487415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.348816, 36.836338, 50.585629>,  <36.249847, 37.046890, 50.644558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.348816, 36.836338, 50.585629>,  <36.513763, 36.485416, 50.487415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348816, 36.836338, 50.585629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374262, -0.082586, 0.923638,
		0.830592, 0.472771, -0.294287,
		-0.412365, 0.877307, 0.245535,
		36.225105, 37.099529, 50.659290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923309, 36.856556, 50.945358>,  <36.513763, 36.485416, 50.487415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923309, 36.856556, 50.945358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.596802, 37.083553, 50.988556>,  <36.400898, 37.219749, 51.014473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.596802, 37.083553, 50.988556>,  <36.923309, 36.856556, 50.945358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596802, 37.083553, 50.988556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251110, 0.180212, 0.951035,
		0.520240, 0.803418, -0.289603,
		-0.816268, 0.567489, 0.107993,
		36.351921, 37.253799, 51.020954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107075, 37.518318, 51.274288>,  <36.923309, 36.856556, 50.945358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107075, 37.518318, 51.274288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.718830, 37.456638, 51.348190>,  <36.485882, 37.419632, 51.392532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.718830, 37.456638, 51.348190>,  <37.107075, 37.518318, 51.274288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718830, 37.456638, 51.348190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176440, 0.066080, 0.982091,
		-0.163644, 0.985828, -0.036931,
		-0.970613, -0.154197, 0.184753,
		36.427647, 37.410378, 51.403618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952770, 37.934383, 51.873901>,  <37.107075, 37.518318, 51.274288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952770, 37.934383, 51.873901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.637238, 37.690891, 51.839966>,  <36.447918, 37.544796, 51.819603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.637238, 37.690891, 51.839966>,  <36.952770, 37.934383, 51.873901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637238, 37.690891, 51.839966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055161, -0.207602, 0.976657,
		-0.612133, 0.765735, 0.197341,
		-0.788829, -0.608729, -0.084841,
		36.400589, 37.508274, 51.814514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348011, 38.280827, 52.268452>,  <36.952770, 37.934383, 51.873901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348011, 38.280827, 52.268452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.304886, 37.883289, 52.258160>,  <36.279011, 37.644768, 52.251984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.304886, 37.883289, 52.258160>,  <36.348011, 38.280827, 52.268452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304886, 37.883289, 52.258160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342524, 0.012838, 0.939421,
		-0.933303, 0.110091, -0.341797,
		-0.107810, -0.993838, -0.025727,
		36.272541, 37.585136, 52.250443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863216, 38.287064, 52.651245>,  <36.348011, 38.280827, 52.268452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863216, 38.287064, 52.651245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.009972, 37.914997, 52.656563>,  <36.098026, 37.691757, 52.659756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.009972, 37.914997, 52.656563>,  <35.863216, 38.287064, 52.651245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009972, 37.914997, 52.656563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141954, -0.041852, 0.988988,
		-0.919370, -0.364736, -0.147396,
		0.366889, -0.930170, 0.013298,
		36.120037, 37.635944, 52.660553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390892, 37.878883, 53.058723>,  <35.863216, 38.287064, 52.651245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390892, 37.878883, 53.058723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.725220, 37.659325, 53.062859>,  <35.925816, 37.527588, 53.065338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.725220, 37.659325, 53.062859>,  <35.390892, 37.878883, 53.058723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725220, 37.659325, 53.062859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149713, -0.209778, 0.966219,
		-0.528190, -0.809136, -0.257515,
		0.835824, -0.548901, 0.010335,
		35.975967, 37.494656, 53.065960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208305, 37.206715, 53.450710>,  <35.390892, 37.878883, 53.058723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208305, 37.206715, 53.450710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.595898, 37.305450, 53.445763>,  <35.828453, 37.364693, 53.442795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.595898, 37.305450, 53.445763>,  <35.208305, 37.206715, 53.450710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595898, 37.305450, 53.445763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034393, -0.085121, 0.995777,
		0.244742, -0.965311, -0.090969,
		0.968978, 0.246837, -0.012368,
		35.886593, 37.379501, 53.442051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530624, 36.680931, 53.412392>,  <35.208305, 37.206715, 53.450710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530624, 36.680931, 53.412392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.491894, 36.293842, 53.505455>,  <34.468655, 36.061588, 53.561295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.491894, 36.293842, 53.505455>,  <34.530624, 36.680931, 53.412392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491894, 36.293842, 53.505455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100670, -0.242082, -0.965019,
		0.990197, -0.070016, 0.120861,
		-0.096825, -0.967726, 0.232660,
		34.462845, 36.003525, 53.575253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102280, 36.406300, 53.058125>,  <34.530624, 36.680931, 53.412392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102280, 36.406300, 53.058125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.815323, 36.130180, 53.095741>,  <34.643150, 35.964508, 53.118309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.815323, 36.130180, 53.095741>,  <35.102280, 36.406300, 53.058125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815323, 36.130180, 53.095741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108804, -0.244343, -0.963565,
		0.688122, -0.681021, 0.250396,
		-0.717391, -0.690294, 0.094040,
		34.600105, 35.923092, 53.123955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369835, 35.762291, 52.742668>,  <35.102280, 36.406300, 53.058125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369835, 35.762291, 52.742668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.973511, 35.708759, 52.750500>,  <34.735718, 35.676640, 52.755199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.973511, 35.708759, 52.750500>,  <35.369835, 35.762291, 52.742668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973511, 35.708759, 52.750500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033129, -0.380494, -0.924190,
		0.131135, -0.915048, 0.381431,
		-0.990811, -0.133830, 0.019582,
		34.676266, 35.668610, 52.756374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185795, 35.131836, 52.377167>,  <35.369835, 35.762291, 52.742668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185795, 35.131836, 52.377167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.824059, 35.302498, 52.381859>,  <34.607018, 35.404896, 52.384674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.824059, 35.302498, 52.381859>,  <35.185795, 35.131836, 52.377167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824059, 35.302498, 52.381859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113694, -0.214302, -0.970128,
		-0.411400, -0.878656, 0.242309,
		-0.904336, 0.426660, 0.011734,
		34.552757, 35.430496, 52.385380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695988, 34.602112, 52.184643>,  <35.185795, 35.131836, 52.377167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695988, 34.602112, 52.184643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.489204, 34.940647, 52.133320>,  <34.365135, 35.143768, 52.102528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.489204, 34.940647, 52.133320>,  <34.695988, 34.602112, 52.184643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489204, 34.940647, 52.133320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189163, -0.259134, -0.947136,
		-0.834847, -0.465361, 0.294058,
		-0.516961, 0.846338, -0.128308,
		34.334118, 35.194550, 52.094826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043243, 34.468784, 51.765980>,  <34.695988, 34.602112, 52.184643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043243, 34.468784, 51.765980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.082508, 34.860149, 51.693233>,  <34.106068, 35.094967, 51.649586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.082508, 34.860149, 51.693233>,  <34.043243, 34.468784, 51.765980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082508, 34.860149, 51.693233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098497, -0.172295, -0.980108,
		-0.990284, 0.114126, 0.079457,
		0.098166, 0.978412, -0.181862,
		34.111958, 35.153671, 51.638676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404488, 34.708729, 51.248760>,  <34.043243, 34.468784, 51.765980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404488, 34.708729, 51.248760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.677204, 35.001320, 51.252834>,  <33.840836, 35.176872, 51.255280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.677204, 35.001320, 51.252834>,  <33.404488, 34.708729, 51.248760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677204, 35.001320, 51.252834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087321, 0.095201, -0.991621,
		-0.726314, 0.675191, 0.128780,
		0.681794, 0.731474, 0.010188,
		33.881741, 35.220760, 51.255890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189091, 35.262653, 50.749985>,  <33.404488, 34.708729, 51.248760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189091, 35.262653, 50.749985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.585701, 35.314568, 50.752602>,  <33.823666, 35.345715, 50.754173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.585701, 35.314568, 50.752602>,  <33.189091, 35.262653, 50.749985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585701, 35.314568, 50.752602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034630, 0.312437, -0.949307,
		-0.125246, 0.941032, 0.314282,
		0.991521, 0.129781, 0.006544,
		33.883156, 35.353500, 50.754566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253712, 35.742363, 50.277924>,  <33.189091, 35.262653, 50.749985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253712, 35.742363, 50.277924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.630100, 35.612129, 50.314934>,  <33.855934, 35.533989, 50.337139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.630100, 35.612129, 50.314934>,  <33.253712, 35.742363, 50.277924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630100, 35.612129, 50.314934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184577, 0.264439, -0.946574,
		0.283717, 0.907783, 0.308926,
		0.940976, -0.325580, 0.092530,
		33.912392, 35.514454, 50.342693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679413, 36.330353, 50.082298>,  <33.253712, 35.742363, 50.277924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679413, 36.330353, 50.082298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.899944, 35.998928, 50.043262>,  <34.032261, 35.800072, 50.019840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.899944, 35.998928, 50.043262>,  <33.679413, 36.330353, 50.082298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899944, 35.998928, 50.043262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346279, 0.333687, -0.876780,
		0.759033, 0.449597, 0.470884,
		0.551325, -0.828562, -0.097593,
		34.065342, 35.750359, 50.013985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282890, 36.477711, 49.654377>,  <33.679413, 36.330353, 50.082298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282890, 36.477711, 49.654377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.309551, 36.078602, 49.655708>,  <34.325546, 35.839138, 49.656506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.309551, 36.078602, 49.655708>,  <34.282890, 36.477711, 49.654377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309551, 36.078602, 49.655708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303629, 0.017105, -0.952637,
		0.950457, 0.064503, 0.304092,
		0.066650, -0.997771, 0.003327,
		34.329548, 35.779270, 49.656708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983337, 36.335365, 49.350689>,  <34.282890, 36.477711, 49.654377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983337, 36.335365, 49.350689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.732643, 36.028584, 49.295582>,  <34.582226, 35.844513, 49.262520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.732643, 36.028584, 49.295582>,  <34.983337, 36.335365, 49.350689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732643, 36.028584, 49.295582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286286, -0.062204, -0.956123,
		0.724733, -0.638680, 0.258554,
		-0.626740, -0.766954, -0.137764,
		34.544621, 35.798496, 49.254253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404255, 35.852539, 49.058754>,  <34.983337, 36.335365, 49.350689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404255, 35.852539, 49.058754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.032406, 35.750473, 48.952400>,  <34.809296, 35.689232, 48.888588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.032406, 35.750473, 48.952400>,  <35.404255, 35.852539, 49.058754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032406, 35.750473, 48.952400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267497, 0.029029, -0.963121,
		0.253474, -0.966462, 0.041270,
		-0.929622, -0.255165, -0.265884,
		34.753521, 35.673923, 48.872635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460533, 35.476242, 48.450680>,  <35.404255, 35.852539, 49.058754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460533, 35.476242, 48.450680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.068958, 35.557114, 48.461975>,  <34.834011, 35.605637, 48.468754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.068958, 35.557114, 48.461975>,  <35.460533, 35.476242, 48.450680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068958, 35.557114, 48.461975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010760, 0.189232, -0.981873,
		-0.203862, -0.960892, -0.187422,
		-0.978941, 0.202183, 0.028238,
		34.775276, 35.617767, 48.470448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079315, 35.021160, 47.949165>,  <35.460533, 35.476242, 48.450680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079315, 35.021160, 47.949165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.868736, 35.354172, 48.018162>,  <34.742390, 35.553978, 48.059559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.868736, 35.354172, 48.018162>,  <35.079315, 35.021160, 47.949165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868736, 35.354172, 48.018162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217244, 0.064429, -0.973988,
		-0.821984, -0.550228, 0.146943,
		-0.526448, 0.832525, 0.172494,
		34.710800, 35.603928, 48.069908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457226, 34.974892, 47.561630>,  <35.079315, 35.021160, 47.949165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457226, 34.974892, 47.561630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.487099, 35.371010, 47.608517>,  <34.505024, 35.608681, 47.636650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.487099, 35.371010, 47.608517>,  <34.457226, 34.974892, 47.561630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487099, 35.371010, 47.608517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181372, 0.129075, -0.974907,
		-0.980575, 0.051548, 0.189252,
		0.074682, 0.990294, 0.117218,
		34.509502, 35.668098, 47.643681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984467, 35.166664, 47.147858>,  <34.457226, 34.974892, 47.561630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984467, 35.166664, 47.147858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.187374, 35.504742, 47.215176>,  <34.309120, 35.707588, 47.255566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.187374, 35.504742, 47.215176>,  <33.984467, 35.166664, 47.147858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187374, 35.504742, 47.215176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031079, 0.213104, -0.976535,
		-0.861225, 0.490139, 0.134370,
		0.507273, 0.845193, 0.168298,
		34.339558, 35.758301, 47.265663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689407, 35.612103, 46.687229>,  <33.984467, 35.166664, 47.147858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689407, 35.612103, 46.687229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.031036, 35.776104, 46.815266>,  <34.236015, 35.874504, 46.892090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.031036, 35.776104, 46.815266>,  <33.689407, 35.612103, 46.687229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031036, 35.776104, 46.815266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253666, 0.208941, -0.944456,
		-0.454111, 0.887829, 0.074447,
		0.854071, 0.410003, 0.320094,
		34.287258, 35.899105, 46.911293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646877, 36.211620, 46.385712>,  <33.689407, 35.612103, 46.687229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646877, 36.211620, 46.385712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.031853, 36.159069, 46.480743>,  <34.262840, 36.127537, 46.537762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.031853, 36.159069, 46.480743>,  <33.646877, 36.211620, 46.385712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031853, 36.159069, 46.480743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253337, 0.120048, -0.959900,
		0.097592, 0.984036, 0.148823,
		0.962443, -0.131381, 0.237577,
		34.320587, 36.119656, 46.552017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028385, 36.877403, 46.304375>,  <33.646877, 36.211620, 46.385712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028385, 36.877403, 46.304375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.278568, 36.567886, 46.264267>,  <34.428677, 36.382175, 46.240204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.278568, 36.567886, 46.264267>,  <34.028385, 36.877403, 46.304375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278568, 36.567886, 46.264267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249527, 0.320115, -0.913927,
		0.739286, 0.546600, 0.393299,
		0.625454, -0.773792, -0.100265,
		34.466206, 36.335747, 46.234188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739761, 37.144043, 46.107338>,  <34.028385, 36.877403, 46.304375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739761, 37.144043, 46.107338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.723267, 36.762653, 45.987885>,  <34.713367, 36.533817, 45.916214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.723267, 36.762653, 45.987885>,  <34.739761, 37.144043, 46.107338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723267, 36.762653, 45.987885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368325, 0.263330, -0.891624,
		0.928782, -0.146766, 0.340329,
		-0.041241, -0.953476, -0.298634,
		34.710896, 36.476612, 45.898293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.865498, 40.490967, 30.179203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.541489, 40.267006, 30.248911>,  <40.347084, 40.132629, 30.290735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.541489, 40.267006, 30.248911>,  <40.865498, 40.490967, 30.179203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541489, 40.267006, 30.248911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417704, -0.342346, 0.841619,
		-0.411566, 0.754524, 0.511182,
		-0.810023, -0.559905, 0.174270,
		40.298481, 40.099033, 30.301191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655392, 40.576809, 30.919569>,  <40.865498, 40.490967, 30.179203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.655392, 40.576809, 30.919569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.513287, 40.223427, 30.797392>,  <40.428024, 40.011398, 30.724085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.513287, 40.223427, 30.797392>,  <40.655392, 40.576809, 30.919569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513287, 40.223427, 30.797392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428358, -0.444297, 0.786835,
		-0.830840, 0.148696, 0.536278,
		-0.355266, -0.883453, -0.305445,
		40.406708, 39.958389, 30.705759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495266, 40.139301, 31.566298>,  <40.655392, 40.576809, 30.919569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495266, 40.139301, 31.566298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.515354, 39.860378, 31.280294>,  <40.527409, 39.693024, 31.108692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.515354, 39.860378, 31.280294>,  <40.495266, 40.139301, 31.566298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.515354, 39.860378, 31.280294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507793, -0.598644, 0.619493,
		-0.860014, -0.394189, 0.324023,
		0.050223, -0.697309, -0.715009,
		40.530422, 39.651184, 31.065792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151089, 39.507843, 31.880766>,  <40.495266, 40.139301, 31.566298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.151089, 39.507843, 31.880766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.413300, 39.412064, 31.594284>,  <40.570625, 39.354595, 31.422396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.413300, 39.412064, 31.594284>,  <40.151089, 39.507843, 31.880766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.413300, 39.412064, 31.594284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414390, -0.678800, 0.606227,
		-0.631313, -0.694189, -0.345754,
		0.655534, -0.239442, -0.716201,
		40.609959, 39.340229, 31.379423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126053, 38.731186, 31.944073>,  <40.151089, 39.507843, 31.880766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126053, 38.731186, 31.944073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.462582, 38.831085, 31.752323>,  <40.664501, 38.891026, 31.637274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.462582, 38.831085, 31.752323>,  <40.126053, 38.731186, 31.944073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462582, 38.831085, 31.752323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523794, -0.595678, 0.608940,
		-0.133471, -0.763409, -0.631975,
		0.841323, 0.249749, -0.479374,
		40.714977, 38.906010, 31.608511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433128, 38.071617, 32.048962>,  <40.126053, 38.731186, 31.944073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.433128, 38.071617, 32.048962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.730633, 38.291168, 31.896358>,  <40.909138, 38.422897, 31.804796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.730633, 38.291168, 31.896358>,  <40.433128, 38.071617, 32.048962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.730633, 38.291168, 31.896358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668301, -0.598929, 0.441201,
		0.013670, -0.583111, -0.812278,
		0.743765, 0.548877, -0.381506,
		40.953762, 38.455830, 31.781906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937370, 37.636497, 31.618530>,  <40.433128, 38.071617, 32.048962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937370, 37.636497, 31.618530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.118454, 37.954239, 31.780546>,  <41.227104, 38.144882, 31.877756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.118454, 37.954239, 31.780546>,  <40.937370, 37.636497, 31.618530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.118454, 37.954239, 31.780546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715107, -0.594790, 0.367217,
		0.532614, 0.123405, -0.837314,
		0.452709, 0.794353, 0.405041,
		41.254265, 38.192543, 31.902058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.589985, 37.461704, 31.660019>,  <40.937370, 37.636497, 31.618530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.589985, 37.461704, 31.660019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.618206, 37.787365, 31.890556>,  <41.635139, 37.982761, 32.028877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.618206, 37.787365, 31.890556>,  <41.589985, 37.461704, 31.660019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.618206, 37.787365, 31.890556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743357, -0.428194, 0.513878,
		0.665164, 0.392173, -0.635419,
		0.070553, 0.814156, 0.576344,
		41.639374, 38.031612, 32.063461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.286240, 37.774643, 31.596365>,  <41.589985, 37.461704, 31.660019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.286240, 37.774643, 31.596365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.104095, 37.849991, 31.944426>,  <41.994808, 37.895199, 32.153263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.104095, 37.849991, 31.944426>,  <42.286240, 37.774643, 31.596365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.104095, 37.849991, 31.944426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723395, -0.491447, 0.484953,
		0.518986, 0.850291, 0.087517,
		-0.455361, 0.188374, 0.870150,
		41.967487, 37.906502, 32.205471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.862778, 37.872829, 32.018696>,  <42.286240, 37.774643, 31.596365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.862778, 37.872829, 32.018696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.576347, 37.864174, 32.297771>,  <42.404488, 37.858982, 32.465218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.576347, 37.864174, 32.297771>,  <42.862778, 37.872829, 32.018696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.576347, 37.864174, 32.297771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612388, -0.499152, 0.613048,
		0.334987, 0.866244, 0.370681,
		-0.716075, -0.021638, 0.697688,
		42.361526, 37.857681, 32.507076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.043808, 38.150375, 32.631207>,  <42.862778, 37.872829, 32.018696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.043808, 38.150375, 32.631207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.752613, 37.901810, 32.747055>,  <42.577896, 37.752670, 32.816563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.752613, 37.901810, 32.747055>,  <43.043808, 38.150375, 32.631207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.752613, 37.901810, 32.747055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586596, -0.345894, 0.732299,
		-0.354887, 0.702991, 0.616327,
		-0.727983, -0.621419, 0.289619,
		42.534218, 37.715385, 32.833942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.064560, 38.158264, 33.350540>,  <43.043808, 38.150375, 32.631207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.064560, 38.158264, 33.350540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.868073, 37.820793, 33.263908>,  <42.750179, 37.618309, 33.211929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.868073, 37.820793, 33.263908>,  <43.064560, 38.158264, 33.350540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.868073, 37.820793, 33.263908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549342, -0.493030, 0.674644,
		-0.675964, 0.212424, 0.705655,
		-0.491220, -0.843681, -0.216577,
		42.720707, 37.567688, 33.198936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.976532, 37.845726, 34.016384>,  <43.064560, 38.158264, 33.350540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.976532, 37.845726, 34.016384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.898895, 37.543335, 33.766319>,  <42.852310, 37.361900, 33.616280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.898895, 37.543335, 33.766319>,  <42.976532, 37.845726, 34.016384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.898895, 37.543335, 33.766319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642240, -0.579645, 0.501536,
		-0.741521, -0.304158, 0.598025,
		-0.194097, -0.755976, -0.625162,
		42.840668, 37.316544, 33.578770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.904076, 37.202339, 34.466080>,  <42.976532, 37.845726, 34.016384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.904076, 37.202339, 34.466080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.985699, 37.110016, 34.085537>,  <43.034672, 37.054623, 33.857212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.985699, 37.110016, 34.085537>,  <42.904076, 37.202339, 34.466080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.985699, 37.110016, 34.085537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780061, -0.548838, 0.300468,
		-0.591494, -0.803433, 0.068049,
		0.204058, -0.230807, -0.951361,
		43.046917, 37.040775, 33.800129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.745693, 36.472828, 34.428116>,  <42.904076, 37.202339, 34.466080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.745693, 36.472828, 34.428116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.008385, 36.577637, 34.145256>,  <43.166000, 36.640522, 33.975540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.008385, 36.577637, 34.145256>,  <42.745693, 36.472828, 34.428116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.008385, 36.577637, 34.145256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608859, -0.737513, 0.292174,
		-0.444976, -0.622432, -0.643875,
		0.656725, 0.262018, -0.707149,
		43.205402, 36.656242, 33.933113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.967964, 35.828140, 34.141788>,  <42.745693, 36.472828, 34.428116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.967964, 35.828140, 34.141788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.247696, 36.086819, 34.019981>,  <43.415535, 36.242023, 33.946896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.247696, 36.086819, 34.019981>,  <42.967964, 35.828140, 34.141788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.247696, 36.086819, 34.019981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706521, -0.690022, 0.157154,
		-0.108497, -0.325053, -0.939451,
		0.699325, 0.646692, -0.304522,
		43.457493, 36.280827, 33.928623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.496109, 35.449070, 33.719761>,  <42.967964, 35.828140, 34.141788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.496109, 35.449070, 33.719761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.672173, 35.786327, 33.843288>,  <43.777809, 35.988682, 33.917404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.672173, 35.786327, 33.843288>,  <43.496109, 35.449070, 33.719761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.672173, 35.786327, 33.843288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756124, -0.533535, 0.378968,
		0.484288, 0.066696, -0.872362,
		0.440160, 0.843144, 0.308815,
		43.804222, 36.039272, 33.935932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.274857, 35.344643, 33.627789>,  <43.496109, 35.449070, 33.719761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.274857, 35.344643, 33.627789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.224316, 35.616615, 33.916714>,  <44.193993, 35.779797, 34.090069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.224316, 35.616615, 33.916714>,  <44.274857, 35.344643, 33.627789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.224316, 35.616615, 33.916714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765486, -0.396289, 0.506938,
		0.630926, 0.616969, -0.470406,
		-0.126349, 0.679929, 0.722310,
		44.186413, 35.820595, 34.133408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.940857, 35.561970, 33.791973>,  <44.274857, 35.344643, 33.627789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.940857, 35.561970, 33.791973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.749615, 35.716629, 34.107422>,  <44.634869, 35.809425, 34.296692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.749615, 35.716629, 34.107422>,  <44.940857, 35.561970, 33.791973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.749615, 35.716629, 34.107422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701674, -0.371905, 0.607733,
		0.528268, 0.843915, -0.093488,
		-0.478107, 0.386644, 0.788619,
		44.606182, 35.832623, 34.344009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.387344, 36.014896, 34.156734>,  <44.940857, 35.561970, 33.791973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.387344, 36.014896, 34.156734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.109962, 35.936455, 34.434055>,  <44.943535, 35.889389, 34.600449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.109962, 35.936455, 34.434055>,  <45.387344, 36.014896, 34.156734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.109962, 35.936455, 34.434055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709664, -0.352159, 0.610215,
		0.124488, 0.915166, 0.383372,
		-0.693455, -0.196101, 0.693300,
		44.901924, 35.877625, 34.642044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.675617, 36.350323, 34.732635>,  <45.387344, 36.014896, 34.156734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.675617, 36.350323, 34.732635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.418156, 36.068901, 34.853119>,  <45.263680, 35.900047, 34.925407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.418156, 36.068901, 34.853119>,  <45.675617, 36.350323, 34.732635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.418156, 36.068901, 34.853119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712655, -0.407524, 0.571005,
		-0.278981, 0.582188, 0.763693,
		-0.643655, -0.703549, 0.301208,
		45.225060, 35.857838, 34.943481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.129181, 35.888195, 34.333000>,  <45.675617, 36.350323, 34.732635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.129181, 35.888195, 34.333000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.421051, 35.821712, 34.067684>,  <46.596172, 35.781822, 33.908493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.421051, 35.821712, 34.067684>,  <46.129181, 35.888195, 34.333000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.421051, 35.821712, 34.067684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326153, 0.767967, -0.551227,
		0.601000, 0.618549, 0.506158,
		0.729673, -0.166203, -0.663290,
		46.639954, 35.771851, 33.868698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.507980, 36.469704, 34.228184>,  <46.129181, 35.888195, 34.333000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.507980, 36.469704, 34.228184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.602142, 36.272335, 33.893253>,  <46.658642, 36.153912, 33.692295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.602142, 36.272335, 33.893253>,  <46.507980, 36.469704, 34.228184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.602142, 36.272335, 33.893253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199499, 0.818660, -0.538512,
		0.951201, 0.293816, 0.094281,
		0.235407, -0.493424, -0.837327,
		46.672764, 36.124310, 33.642056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.851467, 37.036201, 33.798401>,  <46.507980, 36.469704, 34.228184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.851467, 37.036201, 33.798401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.730091, 36.743465, 33.554325>,  <46.657265, 36.567822, 33.407879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.730091, 36.743465, 33.554325>,  <46.851467, 37.036201, 33.798401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.730091, 36.743465, 33.554325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289784, 0.680928, -0.672579,
		0.907718, -0.027261, -0.418694,
		-0.303435, -0.731843, -0.610191,
		46.639061, 36.523914, 33.371269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.957172, 37.370689, 33.156345>,  <46.851467, 37.036201, 33.798401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.957172, 37.370689, 33.156345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.720959, 37.057545, 33.077957>,  <46.579231, 36.869659, 33.030926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.720959, 37.057545, 33.077957>,  <46.957172, 37.370689, 33.156345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.720959, 37.057545, 33.077957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397706, 0.493607, -0.773422,
		0.702210, -0.378795, -0.602839,
		-0.590534, -0.782858, -0.195967,
		46.543797, 36.822689, 33.019169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.911137, 37.300056, 32.412827>,  <46.957172, 37.370689, 33.156345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.911137, 37.300056, 32.412827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.592197, 37.082283, 32.516994>,  <46.400833, 36.951618, 32.579494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.592197, 37.082283, 32.516994>,  <46.911137, 37.300056, 32.412827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.592197, 37.082283, 32.516994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510162, 0.377499, -0.772806,
		0.322432, -0.749057, -0.578749,
		-0.797353, -0.544433, 0.260422,
		46.352993, 36.918953, 32.595119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.666870, 36.824032, 31.792517>,  <46.911137, 37.300056, 32.412827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.666870, 36.824032, 31.792517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.366177, 36.913750, 32.040577>,  <46.185760, 36.967579, 32.189415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.366177, 36.913750, 32.040577>,  <46.666870, 36.824032, 31.792517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.366177, 36.913750, 32.040577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593099, 0.181197, -0.784475,
		-0.288322, -0.957528, -0.003184,
		-0.751734, 0.224293, 0.620153,
		46.140656, 36.981037, 32.226624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.151436, 36.652794, 31.384623>,  <46.666870, 36.824032, 31.792517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.151436, 36.652794, 31.384623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.973415, 36.860180, 31.676685>,  <45.866604, 36.984612, 31.851923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.973415, 36.860180, 31.676685>,  <46.151436, 36.652794, 31.384623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.973415, 36.860180, 31.676685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755210, 0.220866, -0.617152,
		-0.481236, -0.826085, 0.293250,
		-0.445051, 0.518461, 0.730157,
		45.839901, 37.015717, 31.895733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.426918, 36.509335, 31.331776>,  <46.151436, 36.652794, 31.384623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.426918, 36.509335, 31.331776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.453289, 36.846546, 31.545303>,  <45.469112, 37.048874, 31.673420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.453289, 36.846546, 31.545303>,  <45.426918, 36.509335, 31.331776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.453289, 36.846546, 31.545303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680778, 0.429133, -0.593622,
		-0.729517, -0.324275, 0.602205,
		0.065929, 0.843025, 0.533819,
		45.473068, 37.099453, 31.705448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.694302, 36.763683, 31.360781>,  <45.426918, 36.509335, 31.331776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.694302, 36.763683, 31.360781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.901836, 37.094299, 31.448084>,  <45.026356, 37.292671, 31.500465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.901836, 37.094299, 31.448084>,  <44.694302, 36.763683, 31.360781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.901836, 37.094299, 31.448084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574839, 0.526288, -0.626563,
		-0.632749, 0.199618, 0.748186,
		0.518835, 0.826543, 0.218260,
		45.057487, 37.342262, 31.513561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.213451, 37.236618, 31.510950>,  <44.694302, 36.763683, 31.360781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.213451, 37.236618, 31.510950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.549461, 37.421452, 31.397217>,  <44.751068, 37.532352, 31.328978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.549461, 37.421452, 31.397217>,  <44.213451, 37.236618, 31.510950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.549461, 37.421452, 31.397217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523821, 0.554209, -0.646888,
		-0.141335, 0.692339, 0.707595,
		0.840021, 0.462081, -0.284333,
		44.801468, 37.560078, 31.311916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.942669, 37.818108, 31.465628>,  <44.213451, 37.236618, 31.510950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.942669, 37.818108, 31.465628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.295929, 37.879448, 31.288301>,  <44.507885, 37.916252, 31.181906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.295929, 37.879448, 31.288301>,  <43.942669, 37.818108, 31.465628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.295929, 37.879448, 31.288301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426341, 0.656568, -0.622216,
		0.195649, 0.738513, 0.645228,
		0.883151, 0.153351, -0.443316,
		44.560875, 37.925453, 31.155306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.128098, 38.485634, 31.533922>,  <43.942669, 37.818108, 31.465628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.128098, 38.485634, 31.533922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.328094, 38.359299, 31.211369>,  <44.448093, 38.283497, 31.017838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.328094, 38.359299, 31.211369>,  <44.128098, 38.485634, 31.533922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.328094, 38.359299, 31.211369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396303, 0.744472, -0.537313,
		0.770031, 0.588225, 0.247067,
		0.499996, -0.315835, -0.806382,
		44.478092, 38.264549, 30.969454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.265224, 39.016682, 31.204954>,  <44.128098, 38.485634, 31.533922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.265224, 39.016682, 31.204954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.305222, 38.736637, 30.922153>,  <44.329220, 38.568611, 30.752474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.305222, 38.736637, 30.922153>,  <44.265224, 39.016682, 31.204954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.305222, 38.736637, 30.922153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495201, 0.581291, -0.645661,
		0.863005, 0.414670, -0.288568,
		0.099995, -0.700107, -0.707001,
		44.335220, 38.526604, 30.710052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.301594, 39.387432, 30.612013>,  <44.265224, 39.016682, 31.204954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.301594, 39.387432, 30.612013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.227421, 39.016663, 30.481525>,  <44.182919, 38.794201, 30.403233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.227421, 39.016663, 30.481525>,  <44.301594, 39.387432, 30.612013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.227421, 39.016663, 30.481525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359958, 0.372977, -0.855172,
		0.914355, -0.041151, -0.402817,
		-0.185432, -0.926928, -0.326221,
		44.171791, 38.738583, 30.383659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.540733, 39.384914, 29.948307>,  <44.301594, 39.387432, 30.612013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.540733, 39.384914, 29.948307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.301563, 39.065163, 29.971893>,  <44.158062, 38.873310, 29.986044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.301563, 39.065163, 29.971893>,  <44.540733, 39.384914, 29.948307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.301563, 39.065163, 29.971893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531115, 0.340021, -0.776082,
		0.600335, -0.495355, -0.627870,
		-0.597925, -0.799381, 0.058964,
		44.122185, 38.825348, 29.989582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.419666, 39.203724, 29.198400>,  <44.540733, 39.384914, 29.948307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.419666, 39.203724, 29.198400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.133503, 39.044224, 29.427898>,  <43.961803, 38.948524, 29.565598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.133503, 39.044224, 29.427898>,  <44.419666, 39.203724, 29.198400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.133503, 39.044224, 29.427898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660613, 0.118594, -0.741300,
		0.227555, -0.909357, -0.348266,
		-0.715408, -0.398755, 0.573746,
		43.918880, 38.924599, 29.600023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.999683, 38.799187, 28.700111>,  <44.419666, 39.203724, 29.198400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.999683, 38.799187, 28.700111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.761986, 38.832600, 29.020086>,  <43.619370, 38.852646, 29.212072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.761986, 38.832600, 29.020086>,  <43.999683, 38.799187, 28.700111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.761986, 38.832600, 29.020086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796275, 0.078940, -0.599761,
		-0.113245, -0.993374, 0.019603,
		-0.594240, 0.083530, 0.799939,
		43.583714, 38.857658, 29.260067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.313671, 38.506451, 28.462271>,  <43.999683, 38.799187, 28.700111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.313671, 38.506451, 28.462271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.230850, 38.715164, 28.793299>,  <43.181160, 38.840393, 28.991915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.230850, 38.715164, 28.793299>,  <43.313671, 38.506451, 28.462271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.230850, 38.715164, 28.793299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949799, 0.095592, -0.297901,
		-0.234550, -0.847703, 0.475801,
		-0.207049, 0.521787, 0.827568,
		43.168736, 38.871700, 29.041569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.672878, 38.174927, 28.797964>,  <43.313671, 38.506451, 28.462271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.672878, 38.174927, 28.797964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.722965, 38.552708, 28.919504>,  <42.753017, 38.779377, 28.992428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.722965, 38.552708, 28.919504>,  <42.672878, 38.174927, 28.797964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.722965, 38.552708, 28.919504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935469, 0.214410, -0.280939,
		-0.330483, -0.249064, 0.910356,
		0.125218, 0.944455, 0.303851,
		42.760532, 38.836044, 29.010660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.155163, 38.210346, 29.276737>,  <42.672878, 38.174927, 28.797964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.155163, 38.210346, 29.276737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.259983, 38.568546, 29.132845>,  <42.322876, 38.783466, 29.046509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.259983, 38.568546, 29.132845>,  <42.155163, 38.210346, 29.276737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259983, 38.568546, 29.132845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945460, 0.163495, -0.281736,
		-0.193480, 0.413943, 0.889504,
		0.262052, 0.895500, -0.359733,
		42.338600, 38.837196, 29.024925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614277, 38.549171, 29.451298>,  <42.155163, 38.210346, 29.276737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.614277, 38.549171, 29.451298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.754997, 38.811897, 29.184515>,  <41.839428, 38.969532, 29.024445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.754997, 38.811897, 29.184515>,  <41.614277, 38.549171, 29.451298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.754997, 38.811897, 29.184515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935152, 0.278250, -0.219244,
		0.041578, 0.700836, 0.712110,
		0.351798, 0.656815, -0.666957,
		41.860538, 39.008942, 28.984428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.729836, 37.811333, 42.781242> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469360, 37.508518, 42.759914>,  <39.313072, 37.326828, 42.747120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469360, 37.508518, 42.759914>,  <39.729836, 37.811333, 42.781242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469360, 37.508518, 42.759914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223473, -0.124141, -0.966772,
		0.725264, -0.641470, 0.250017,
		-0.651193, -0.757037, -0.053316,
		39.274002, 37.281406, 42.743919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087120, 37.245567, 42.464611>,  <39.729836, 37.811333, 42.781242>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087120, 37.245567, 42.464611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709843, 37.125156, 42.408356>,  <39.483479, 37.052910, 42.374603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709843, 37.125156, 42.408356>,  <40.087120, 37.245567, 42.464611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709843, 37.125156, 42.408356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237224, -0.313752, -0.919394,
		0.232634, -0.900525, 0.367337,
		-0.943189, -0.301023, -0.140637,
		39.426888, 37.034851, 42.366165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161358, 36.578957, 42.250896>,  <40.087120, 37.245567, 42.464611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161358, 36.578957, 42.250896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825657, 36.729977, 42.094379>,  <39.624237, 36.820587, 42.000469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825657, 36.729977, 42.094379>,  <40.161358, 36.578957, 42.250896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825657, 36.729977, 42.094379> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274829, -0.326399, -0.904396,
		-0.469175, -0.866555, 0.170168,
		-0.839252, 0.377553, -0.391293,
		39.573879, 36.843243, 41.976990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093987, 36.274548, 41.568779>,  <40.161358, 36.578957, 42.250896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.093987, 36.274548, 41.568779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791046, 36.535126, 41.550701>,  <39.609283, 36.691471, 41.539852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791046, 36.535126, 41.550701>,  <40.093987, 36.274548, 41.568779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791046, 36.535126, 41.550701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042698, -0.118467, -0.992039,
		-0.651616, -0.749388, 0.117536,
		-0.757346, 0.651447, -0.045198,
		39.563843, 36.730560, 41.537140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562889, 36.051872, 41.114288>,  <40.093987, 36.274548, 41.568779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562889, 36.051872, 41.114288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501297, 36.446243, 41.140316>,  <39.464340, 36.682865, 41.155933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501297, 36.446243, 41.140316>,  <39.562889, 36.051872, 41.114288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501297, 36.446243, 41.140316> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126921, 0.045573, -0.990865,
		-0.979888, -0.160836, 0.118118,
		-0.153984, 0.985928, 0.065070,
		39.455101, 36.742023, 41.159836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022404, 36.216793, 40.712029>,  <39.562889, 36.051872, 41.114288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022404, 36.216793, 40.712029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201187, 36.573547, 40.739647>,  <39.308456, 36.787601, 40.756218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201187, 36.573547, 40.739647>,  <39.022404, 36.216793, 40.712029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201187, 36.573547, 40.739647> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060772, 0.046735, -0.997057,
		-0.892489, 0.449836, -0.033314,
		0.446956, 0.891887, 0.069048,
		39.335274, 36.841114, 40.760361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707432, 36.682190, 40.177055>,  <39.022404, 36.216793, 40.712029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707432, 36.682190, 40.177055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074776, 36.801929, 40.280594>,  <39.295181, 36.873772, 40.342716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074776, 36.801929, 40.280594>,  <38.707432, 36.682190, 40.177055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074776, 36.801929, 40.280594> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226027, 0.140135, -0.963989,
		-0.324839, 0.943798, 0.061034,
		0.918364, 0.299345, 0.258845,
		39.350285, 36.891731, 40.358246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852272, 37.335468, 39.794506>,  <38.707432, 36.682190, 40.177055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852272, 37.335468, 39.794506> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193497, 37.154469, 39.898449>,  <39.398232, 37.045868, 39.960815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193497, 37.154469, 39.898449>,  <38.852272, 37.335468, 39.794506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193497, 37.154469, 39.898449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321271, 0.063054, -0.944886,
		0.411180, 0.889530, 0.199165,
		0.853063, -0.452504, 0.259854,
		39.449417, 37.018719, 39.976406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271664, 37.699158, 39.450951>,  <38.852272, 37.335468, 39.794506>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271664, 37.699158, 39.450951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490891, 37.379070, 39.548336>,  <39.622425, 37.187019, 39.606770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490891, 37.379070, 39.548336>,  <39.271664, 37.699158, 39.450951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490891, 37.379070, 39.548336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433316, 0.022661, -0.900957,
		0.715445, 0.599282, 0.359166,
		0.548066, -0.800217, 0.243466,
		39.655312, 37.139004, 39.621376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017509, 37.870342, 39.203056>,  <39.271664, 37.699158, 39.450951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.017509, 37.870342, 39.203056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992386, 37.472160, 39.231682>,  <39.977310, 37.233250, 39.248856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992386, 37.472160, 39.231682>,  <40.017509, 37.870342, 39.203056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992386, 37.472160, 39.231682> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369459, -0.089802, -0.924898,
		0.927122, -0.031653, 0.373421,
		-0.062810, -0.995457, 0.071563,
		39.973541, 37.173523, 39.253151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.603111, 37.646656, 38.805416>,  <40.017509, 37.870342, 39.203056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.603111, 37.646656, 38.805416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358929, 37.332912, 38.849472>,  <40.212418, 37.144669, 38.875904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358929, 37.332912, 38.849472>,  <40.603111, 37.646656, 38.805416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.358929, 37.332912, 38.849472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205462, -0.291113, -0.934365,
		0.764936, -0.547760, 0.338867,
		-0.610457, -0.784354, 0.110139,
		40.175793, 37.097607, 38.882515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.005821, 37.002647, 38.577515>,  <40.603111, 37.646656, 38.805416>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.005821, 37.002647, 38.577515> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622070, 36.893581, 38.548534>,  <40.391819, 36.828140, 38.531147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622070, 36.893581, 38.548534>,  <41.005821, 37.002647, 38.577515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622070, 36.893581, 38.548534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174662, -0.372356, -0.911507,
		0.221560, -0.887133, 0.404854,
		-0.959377, -0.272666, -0.072449,
		40.334259, 36.811783, 38.526798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982151, 36.284199, 38.250141>,  <41.005821, 37.002647, 38.577515>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.982151, 36.284199, 38.250141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.626400, 36.453720, 38.181553>,  <40.412949, 36.555435, 38.140400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.626400, 36.453720, 38.181553>,  <40.982151, 36.284199, 38.250141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.626400, 36.453720, 38.181553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034962, -0.310913, -0.949795,
		-0.455843, -0.850717, 0.261701,
		-0.889373, 0.423808, -0.171471,
		40.359589, 36.580864, 38.130112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690105, 35.910561, 37.648438>,  <40.982151, 36.284199, 38.250141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690105, 35.910561, 37.648438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470192, 36.243782, 37.672989>,  <40.338245, 36.443714, 37.687717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470192, 36.243782, 37.672989>,  <40.690105, 35.910561, 37.648438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470192, 36.243782, 37.672989> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193331, -0.055420, -0.979567,
		-0.812627, -0.550415, 0.191523,
		-0.549782, 0.833050, 0.061377,
		40.305256, 36.493698, 37.691402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.253265, 35.490627, 37.496326>,  <40.690105, 35.910561, 37.648438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.253265, 35.490627, 37.496326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.557346, 35.245331, 37.410511>,  <41.739796, 35.098152, 37.359020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.557346, 35.245331, 37.410511>,  <41.253265, 35.490627, 37.496326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.557346, 35.245331, 37.410511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085347, -0.421624, 0.902745,
		-0.644060, -0.667955, -0.372857,
		0.760199, -0.613245, -0.214543,
		41.785408, 35.061359, 37.346149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.116104, 34.689461, 37.423077>,  <41.253265, 35.490627, 37.496326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.116104, 34.689461, 37.423077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474670, 34.785831, 37.571884>,  <41.689812, 34.843655, 37.661167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474670, 34.785831, 37.571884>,  <41.116104, 34.689461, 37.423077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.474670, 34.785831, 37.571884> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268473, -0.372683, 0.888274,
		0.352652, -0.896138, -0.269396,
		0.896415, 0.240926, 0.372016,
		41.743595, 34.858109, 37.683487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.492767, 34.134163, 37.768997>,  <41.116104, 34.689461, 37.423077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.492767, 34.134163, 37.768997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.638420, 34.469173, 37.931946>,  <41.725811, 34.670181, 38.029716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.638420, 34.469173, 37.931946>,  <41.492767, 34.134163, 37.768997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.638420, 34.469173, 37.931946> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446787, -0.226698, 0.865442,
		0.817183, -0.497146, 0.291648,
		0.364135, 0.837528, 0.407372,
		41.747662, 34.720432, 38.054157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667191, 33.889950, 38.354980>,  <41.492767, 34.134163, 37.768997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.667191, 33.889950, 38.354980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.645992, 34.285805, 38.408371>,  <41.633274, 34.523315, 38.440403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.645992, 34.285805, 38.408371>,  <41.667191, 33.889950, 38.354980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.645992, 34.285805, 38.408371> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143204, -0.139812, 0.979768,
		0.988274, 0.032809, 0.149128,
		-0.052995, 0.989635, 0.133474,
		41.630093, 34.582695, 38.448414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911228, 33.971104, 38.935265>,  <41.667191, 33.889950, 38.354980>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.911228, 33.971104, 38.935265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.729988, 34.327129, 38.915321>,  <41.621246, 34.540745, 38.903355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.729988, 34.327129, 38.915321>,  <41.911228, 33.971104, 38.935265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.729988, 34.327129, 38.915321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225762, -0.060460, 0.972304,
		0.862401, 0.451804, 0.228338,
		-0.453097, 0.890066, -0.049859,
		41.594059, 34.594151, 38.900364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.167030, 34.331207, 39.513683>,  <41.911228, 33.971104, 38.935265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.167030, 34.331207, 39.513683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.842815, 34.549175, 39.427803>,  <41.648289, 34.679955, 39.376274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.842815, 34.549175, 39.427803>,  <42.167030, 34.331207, 39.513683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.842815, 34.549175, 39.427803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188103, 0.104964, 0.976524,
		0.554665, 0.831891, 0.017425,
		-0.810533, 0.544921, -0.214701,
		41.599655, 34.712650, 39.363392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292568, 34.880535, 39.856491>,  <42.167030, 34.331207, 39.513683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.292568, 34.880535, 39.856491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.897091, 34.870964, 39.797291>,  <41.659805, 34.865223, 39.761768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.897091, 34.870964, 39.797291>,  <42.292568, 34.880535, 39.856491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.897091, 34.870964, 39.797291> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149860, 0.128265, 0.980352,
		-0.004472, 0.991451, -0.130401,
		-0.988697, -0.023926, -0.148005,
		41.600483, 34.863785, 39.752888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.971497, 35.374039, 40.255894>,  <42.292568, 34.880535, 39.856491>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.971497, 35.374039, 40.255894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.638241, 35.167774, 40.175926>,  <41.438286, 35.044014, 40.127945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.638241, 35.167774, 40.175926>,  <41.971497, 35.374039, 40.255894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.638241, 35.167774, 40.175926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229795, -0.006042, 0.973220,
		-0.503061, 0.856771, -0.113462,
		-0.833141, -0.515662, -0.199922,
		41.388298, 35.013077, 40.115952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.404915, 35.782242, 40.487137>,  <41.971497, 35.374039, 40.255894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.404915, 35.782242, 40.487137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.280415, 35.402142, 40.482292>,  <41.205715, 35.174080, 40.479385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.280415, 35.402142, 40.482292>,  <41.404915, 35.782242, 40.487137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.280415, 35.402142, 40.482292> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423120, 0.127158, 0.897107,
		-0.850935, 0.284354, -0.441648,
		-0.311255, -0.950249, -0.012113,
		41.187038, 35.117065, 40.478657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707458, 35.746094, 40.715225>,  <41.404915, 35.782242, 40.487137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.707458, 35.746094, 40.715225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817902, 35.365639, 40.770504>,  <40.884167, 35.137367, 40.803673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817902, 35.365639, 40.770504>,  <40.707458, 35.746094, 40.715225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.817902, 35.365639, 40.770504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439054, 0.003089, 0.898456,
		-0.854983, -0.308748, -0.416748,
		0.276109, -0.951139, 0.138198,
		40.900734, 35.080296, 40.811962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108864, 35.376293, 41.175667>,  <40.707458, 35.746094, 40.715225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108864, 35.376293, 41.175667> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415863, 35.120380, 41.191799>,  <40.600063, 34.966831, 41.201481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415863, 35.120380, 41.191799>,  <40.108864, 35.376293, 41.175667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415863, 35.120380, 41.191799> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216902, -0.199961, 0.955494,
		-0.603243, -0.742088, -0.292239,
		0.767497, -0.639782, 0.040335,
		40.646111, 34.928448, 41.203899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837112, 34.769924, 41.450947>,  <40.108864, 35.376293, 41.175667>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837112, 34.769924, 41.450947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232746, 34.758873, 41.508846>,  <40.470127, 34.752243, 41.543587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232746, 34.758873, 41.508846>,  <39.837112, 34.769924, 41.450947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.232746, 34.758873, 41.508846> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147006, -0.252814, 0.956282,
		0.010176, -0.967121, -0.254115,
		0.989084, -0.027625, 0.144745,
		40.529472, 34.750584, 41.552269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967979, 34.122334, 41.760841>,  <39.837112, 34.769924, 41.450947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967979, 34.122334, 41.760841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284988, 34.346729, 41.856510>,  <40.475193, 34.481365, 41.913910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284988, 34.346729, 41.856510>,  <39.967979, 34.122334, 41.760841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284988, 34.346729, 41.856510> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244160, -0.067504, 0.967383,
		0.558837, -0.825066, 0.083473,
		0.792519, 0.560990, 0.239172,
		40.522743, 34.515026, 41.928261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329987, 33.776562, 42.248650>,  <39.967979, 34.122334, 41.760841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329987, 33.776562, 42.248650> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436035, 34.154987, 42.323128>,  <40.499664, 34.382042, 42.367817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436035, 34.154987, 42.323128>,  <40.329987, 33.776562, 42.248650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.436035, 34.154987, 42.323128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356933, -0.083096, 0.930427,
		0.895717, -0.313137, 0.315652,
		0.265122, 0.946066, 0.186199,
		40.515572, 34.438808, 42.378986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414570, 32.964470, 42.355213>,  <40.329987, 33.776562, 42.248650>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.414570, 32.964470, 42.355213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108150, 32.734226, 42.469654>,  <39.924301, 32.596081, 42.538319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108150, 32.734226, 42.469654>,  <40.414570, 32.964470, 42.355213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108150, 32.734226, 42.469654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122987, -0.305617, -0.944178,
		0.630911, -0.758470, 0.163325,
		-0.766045, -0.575605, 0.286099,
		39.878338, 32.561546, 42.555485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524464, 32.317707, 42.112312>,  <40.414570, 32.964470, 42.355213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524464, 32.317707, 42.112312> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128555, 32.353996, 42.156368>,  <39.891010, 32.375771, 42.182804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128555, 32.353996, 42.156368>,  <40.524464, 32.317707, 42.112312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128555, 32.353996, 42.156368> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131088, -0.273140, -0.953001,
		-0.056377, -0.957686, 0.282238,
		-0.989766, 0.090725, 0.110143,
		39.831627, 32.381214, 42.189411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220562, 31.912924, 41.582272>,  <40.524464, 32.317707, 42.112312>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.220562, 31.912924, 41.582272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878479, 32.096245, 41.679089>,  <39.673229, 32.206238, 41.737179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878479, 32.096245, 41.679089>,  <40.220562, 31.912924, 41.582272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878479, 32.096245, 41.679089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228431, 0.085902, -0.969763,
		-0.465237, -0.884635, 0.031227,
		-0.855204, 0.458303, 0.242043,
		39.621918, 32.233734, 41.751701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628571, 31.570141, 41.133244>,  <40.220562, 31.912924, 41.582272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628571, 31.570141, 41.133244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507210, 31.926659, 41.268028>,  <39.434395, 32.140568, 41.348900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507210, 31.926659, 41.268028>,  <39.628571, 31.570141, 41.133244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507210, 31.926659, 41.268028> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285432, 0.252375, -0.924573,
		-0.909107, -0.376695, 0.177834,
		-0.303401, 0.891296, 0.336957,
		39.416191, 32.194046, 41.369114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042290, 31.653896, 40.877098>,  <39.628571, 31.570141, 41.133244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042290, 31.653896, 40.877098> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180092, 32.021515, 40.953693>,  <39.262772, 32.242088, 40.999649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180092, 32.021515, 40.953693>,  <39.042290, 31.653896, 40.877098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180092, 32.021515, 40.953693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163239, 0.259511, -0.951844,
		-0.924483, 0.296656, 0.239428,
		0.344504, 0.919048, 0.191488,
		39.283443, 32.297230, 41.011139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578987, 32.063133, 40.690365>,  <39.042290, 31.653896, 40.877098>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578987, 32.063133, 40.690365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902748, 32.296959, 40.667931>,  <39.097004, 32.437256, 40.654472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902748, 32.296959, 40.667931>,  <38.578987, 32.063133, 40.690365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902748, 32.296959, 40.667931> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265859, 0.279604, -0.922573,
		-0.523625, 0.761645, 0.381725,
		0.809405, 0.584567, -0.056083,
		39.145569, 32.472328, 40.651104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348648, 32.747295, 40.461803>,  <38.578987, 32.063133, 40.690365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348648, 32.747295, 40.461803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739861, 32.787941, 40.389008>,  <38.974590, 32.812328, 40.345329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739861, 32.787941, 40.389008>,  <38.348648, 32.747295, 40.461803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739861, 32.787941, 40.389008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208250, 0.439355, -0.873842,
		-0.008841, 0.892548, 0.450867,
		0.978036, 0.101619, -0.181989,
		39.033272, 32.818428, 40.334412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342304, 33.280815, 40.049957>,  <38.348648, 32.747295, 40.461803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342304, 33.280815, 40.049957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719845, 33.169102, 39.979370>,  <38.946369, 33.102074, 39.937019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719845, 33.169102, 39.979370>,  <38.342304, 33.280815, 40.049957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719845, 33.169102, 39.979370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047794, 0.413103, -0.909429,
		0.326889, 0.866802, 0.376561,
		0.943853, -0.279285, -0.176467,
		39.003002, 33.085316, 39.926430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781349, 33.936951, 39.976521>,  <38.342304, 33.280815, 40.049957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781349, 33.936951, 39.976521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936230, 33.609417, 39.807007>,  <39.029156, 33.412899, 39.705299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936230, 33.609417, 39.807007>,  <38.781349, 33.936951, 39.976521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936230, 33.609417, 39.807007> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103413, 0.495310, -0.862539,
		0.916179, 0.290148, 0.276460,
		0.387197, -0.818830, -0.423788,
		39.052387, 33.363770, 39.679871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395176, 34.101273, 39.529198>,  <38.781349, 33.936951, 39.976521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395176, 34.101273, 39.529198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268040, 33.750656, 39.384609>,  <39.191757, 33.540287, 39.297855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268040, 33.750656, 39.384609>,  <39.395176, 34.101273, 39.529198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268040, 33.750656, 39.384609> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093768, 0.350309, -0.931929,
		0.943496, -0.330101, -0.029152,
		-0.317843, -0.876537, -0.361467,
		39.172688, 33.487694, 39.276169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798309, 34.034519, 38.981731>,  <39.395176, 34.101273, 39.529198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798309, 34.034519, 38.981731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512142, 33.763474, 38.913582>,  <39.340443, 33.600845, 38.872692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512142, 33.763474, 38.913582>,  <39.798309, 34.034519, 38.981731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512142, 33.763474, 38.913582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044177, 0.287228, -0.956843,
		0.697303, -0.677012, -0.235422,
		-0.715414, -0.677610, -0.170376,
		39.297520, 33.560192, 38.862469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995281, 33.809990, 38.383812>,  <39.798309, 34.034519, 38.981731>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995281, 33.809990, 38.383812> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603031, 33.741817, 38.422424>,  <39.367680, 33.700912, 38.445591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603031, 33.741817, 38.422424>,  <39.995281, 33.809990, 38.383812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.603031, 33.741817, 38.422424> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154662, 0.371360, -0.915517,
		0.120188, -0.912713, -0.390526,
		-0.980629, -0.170434, 0.096529,
		39.308842, 33.690685, 38.451382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.655838, 31.835274, 46.398384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.288551, 31.932163, 46.273037>,  <40.068180, 31.990297, 46.197830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.288551, 31.932163, 46.273037>,  <40.655838, 31.835274, 46.398384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.288551, 31.932163, 46.273037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269999, -0.196056, -0.942689,
		-0.289782, -0.950204, 0.114621,
		-0.918219, 0.242227, -0.313368,
		40.013084, 32.004829, 46.179028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521812, 31.416132, 45.845242>,  <40.655838, 31.835274, 46.398384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.521812, 31.416132, 45.845242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.239750, 31.695675, 45.797325>,  <40.070511, 31.863401, 45.768578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.239750, 31.695675, 45.797325>,  <40.521812, 31.416132, 45.845242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239750, 31.695675, 45.797325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100730, -0.068491, -0.992554,
		-0.701859, -0.711973, -0.022099,
		-0.705158, 0.698858, -0.119788,
		40.028202, 31.905333, 45.761391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154003, 31.247814, 45.209888>,  <40.521812, 31.416132, 45.845242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.154003, 31.247814, 45.209888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.084366, 31.640547, 45.240089>,  <40.042583, 31.876186, 45.258209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.084366, 31.640547, 45.240089>,  <40.154003, 31.247814, 45.209888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084366, 31.640547, 45.240089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169468, 0.105403, -0.979883,
		-0.970037, -0.157799, -0.184739,
		-0.174096, 0.981830, 0.075503,
		40.032139, 31.935095, 45.262741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626076, 31.388704, 44.733608>,  <40.154003, 31.247814, 45.209888>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626076, 31.388704, 44.733608> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.791161, 31.746708, 44.801285>,  <39.890213, 31.961510, 44.841888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.791161, 31.746708, 44.801285>,  <39.626076, 31.388704, 44.733608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791161, 31.746708, 44.801285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274390, 0.299279, -0.913861,
		-0.868550, 0.330737, 0.369098,
		0.412711, 0.895011, 0.169187,
		39.914974, 32.015213, 44.852039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101784, 31.905046, 44.582951>,  <39.626076, 31.388704, 44.733608>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101784, 31.905046, 44.582951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.456085, 32.090660, 44.578537>,  <39.668667, 32.202026, 44.575890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.456085, 32.090660, 44.578537>,  <39.101784, 31.905046, 44.582951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456085, 32.090660, 44.578537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148557, 0.260890, -0.953870,
		-0.439749, 0.846528, 0.300018,
		0.885749, 0.464033, -0.011031,
		39.721809, 32.229870, 44.575226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900150, 32.541424, 44.349239>,  <39.101784, 31.905046, 44.582951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900150, 32.541424, 44.349239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.294643, 32.507687, 44.292343>,  <39.531338, 32.487446, 44.258205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.294643, 32.507687, 44.292343>,  <38.900150, 32.541424, 44.349239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294643, 32.507687, 44.292343> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127723, 0.157859, -0.979167,
		0.105041, 0.983853, 0.144913,
		0.986232, -0.084344, -0.142243,
		39.590511, 32.482384, 44.249672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140480, 33.042366, 43.930561>,  <38.900150, 32.541424, 44.349239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140480, 33.042366, 43.930561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.451519, 32.796432, 43.877930>,  <39.638142, 32.648872, 43.846352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.451519, 32.796432, 43.877930>,  <39.140480, 33.042366, 43.930561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.451519, 32.796432, 43.877930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001100, 0.210596, -0.977573,
		0.628756, 0.760018, 0.164436,
		0.777602, -0.614836, -0.131578,
		39.684799, 32.611980, 43.838455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524254, 33.407364, 43.413330>,  <39.140480, 33.042366, 43.930561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524254, 33.407364, 43.413330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.631313, 33.022247, 43.398403>,  <39.695549, 32.791176, 43.389446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.631313, 33.022247, 43.398403>,  <39.524254, 33.407364, 43.413330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631313, 33.022247, 43.398403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046705, 0.025725, -0.998577,
		0.962384, 0.269012, -0.038081,
		0.267649, -0.962793, -0.037322,
		39.711609, 32.733410, 43.387207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168686, 33.284760, 42.949799>,  <39.524254, 33.407364, 43.413330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168686, 33.284760, 42.949799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.012302, 32.918518, 42.987347>,  <39.918472, 32.698772, 43.009876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.012302, 32.918518, 42.987347>,  <40.168686, 33.284760, 42.949799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.012302, 32.918518, 42.987347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035873, -0.117064, -0.992476,
		0.919707, -0.384654, 0.078614,
		-0.390962, -0.915608, 0.093866,
		39.895012, 32.643837, 43.015507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628624, 33.810341, 42.928238>,  <40.168686, 33.284760, 42.949799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.628624, 33.810341, 42.928238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.525452, 34.188873, 42.850342>,  <40.463551, 34.415993, 42.803604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.525452, 34.188873, 42.850342>,  <40.628624, 33.810341, 42.928238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525452, 34.188873, 42.850342> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317660, 0.107294, 0.942115,
		0.912450, 0.304859, 0.272938,
		-0.257927, 0.946334, -0.194742,
		40.448074, 34.472775, 42.791920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013020, 34.216805, 43.427349>,  <40.628624, 33.810341, 42.928238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013020, 34.216805, 43.427349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.710396, 34.456009, 43.321514>,  <40.528824, 34.599529, 43.258011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.710396, 34.456009, 43.321514>,  <41.013020, 34.216805, 43.427349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710396, 34.456009, 43.321514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114110, 0.277680, 0.953872,
		0.643895, 0.751851, -0.141842,
		-0.756557, 0.598008, -0.264590,
		40.483429, 34.635410, 43.242138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.113720, 34.714218, 43.902451>,  <41.013020, 34.216805, 43.427349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.113720, 34.714218, 43.902451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.735245, 34.743839, 43.776432>,  <40.508160, 34.761612, 43.700821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.735245, 34.743839, 43.776432>,  <41.113720, 34.714218, 43.902451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.735245, 34.743839, 43.776432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266927, 0.371859, 0.889084,
		0.182993, 0.925331, -0.332079,
		-0.946184, 0.074055, -0.315044,
		40.451389, 34.766056, 43.681919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.874104, 35.375423, 44.174572>,  <41.113720, 34.714218, 43.902451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.874104, 35.375423, 44.174572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.534809, 35.177227, 44.099762>,  <40.331230, 35.058308, 44.054874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.534809, 35.177227, 44.099762>,  <40.874104, 35.375423, 44.174572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534809, 35.177227, 44.099762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431773, 0.442475, 0.785995,
		-0.306700, 0.747464, -0.589264,
		-0.848238, -0.495492, -0.187028,
		40.280338, 35.028580, 44.043655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358368, 35.844437, 44.415176>,  <40.874104, 35.375423, 44.174572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.358368, 35.844437, 44.415176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.169125, 35.494667, 44.372196>,  <40.055576, 35.284805, 44.346409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.169125, 35.494667, 44.372196>,  <40.358368, 35.844437, 44.415176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.169125, 35.494667, 44.372196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555116, 0.201170, 0.807079,
		-0.684113, 0.441489, -0.580583,
		-0.473113, -0.874424, -0.107455,
		40.027191, 35.232338, 44.339958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609035, 35.972275, 44.638229>,  <40.358368, 35.844437, 44.415176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609035, 35.972275, 44.638229> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.656872, 35.575760, 44.660316>,  <39.685574, 35.337852, 44.673569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.656872, 35.575760, 44.660316>,  <39.609035, 35.972275, 44.638229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656872, 35.575760, 44.660316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357592, 0.008880, 0.933836,
		-0.926190, -0.131421, -0.353414,
		0.119587, -0.991287, 0.055219,
		39.692749, 35.278374, 44.676884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949242, 35.730053, 44.739269>,  <39.609035, 35.972275, 44.638229>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949242, 35.730053, 44.739269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.230968, 35.469269, 44.851608>,  <39.400005, 35.312798, 44.919010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.230968, 35.469269, 44.851608>,  <38.949242, 35.730053, 44.739269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230968, 35.469269, 44.851608> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261330, 0.129713, 0.956494,
		-0.660030, -0.747072, -0.079019,
		0.704320, -0.651965, 0.280847,
		39.442265, 35.273678, 44.935863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622734, 35.279034, 45.114185>,  <38.949242, 35.730053, 44.739269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622734, 35.279034, 45.114185> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.997013, 35.217754, 45.241306>,  <39.221581, 35.180988, 45.317581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.997013, 35.217754, 45.241306>,  <38.622734, 35.279034, 45.114185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997013, 35.217754, 45.241306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305055, 0.101199, 0.946942,
		-0.177230, -0.983000, 0.047958,
		0.935698, -0.153196, 0.317805,
		39.277721, 35.171795, 45.336647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557220, 34.803993, 45.575977>,  <38.622734, 35.279034, 45.114185>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557220, 34.803993, 45.575977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.910141, 34.971249, 45.662418>,  <39.121895, 35.071602, 45.714283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.910141, 34.971249, 45.662418>,  <38.557220, 34.803993, 45.575977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910141, 34.971249, 45.662418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247371, 0.021329, 0.968686,
		0.400435, -0.908133, 0.122254,
		0.882303, 0.418138, 0.216105,
		39.174831, 35.096691, 45.727249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589767, 34.613010, 46.337025>,  <38.557220, 34.803993, 45.575977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589767, 34.613010, 46.337025> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.901165, 34.860085, 46.292458>,  <39.088005, 35.008327, 46.265717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.901165, 34.860085, 46.292458>,  <38.589767, 34.613010, 46.337025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901165, 34.860085, 46.292458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121153, 0.026288, 0.992286,
		0.615845, -0.785989, -0.054369,
		0.778496, 0.617681, -0.111414,
		39.134712, 35.045387, 46.259033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067009, 34.403954, 46.867966>,  <38.589767, 34.613010, 46.337025>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067009, 34.403954, 46.867966> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.156425, 34.782734, 46.775604>,  <39.210075, 35.010002, 46.720188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.156425, 34.782734, 46.775604>,  <39.067009, 34.403954, 46.867966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156425, 34.782734, 46.775604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026031, 0.231009, 0.972603,
		0.974348, -0.223424, 0.026989,
		0.223537, 0.946951, -0.230899,
		39.223488, 35.066818, 46.706333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563080, 34.563541, 47.305565>,  <39.067009, 34.403954, 46.867966>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563080, 34.563541, 47.305565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.428085, 34.922607, 47.192219>,  <39.347088, 35.138046, 47.124210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.428085, 34.922607, 47.192219>,  <39.563080, 34.563541, 47.305565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428085, 34.922607, 47.192219> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037712, 0.287890, 0.956921,
		0.940573, 0.333637, -0.063307,
		-0.337490, 0.897667, -0.283364,
		39.326839, 35.191906, 47.107208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.918468, 34.889748, 47.802868>,  <39.563080, 34.563541, 47.305565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.918468, 34.889748, 47.802868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.633793, 35.144054, 47.683334>,  <39.462990, 35.296638, 47.611614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.633793, 35.144054, 47.683334>,  <39.918468, 34.889748, 47.802868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633793, 35.144054, 47.683334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054544, 0.374096, 0.925785,
		0.700377, 0.675168, -0.231562,
		-0.711686, 0.635768, -0.298835,
		39.420288, 35.334785, 47.593685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126091, 35.644661, 48.115562>,  <39.918468, 34.889748, 47.802868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126091, 35.644661, 48.115562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.734756, 35.634003, 48.033443>,  <39.499954, 35.627605, 47.984173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.734756, 35.634003, 48.033443>,  <40.126091, 35.644661, 48.115562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734756, 35.634003, 48.033443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176210, 0.627704, 0.758247,
		0.108656, 0.777996, -0.618802,
		-0.978337, -0.026650, -0.205294,
		39.441254, 35.626007, 47.971855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.040966, 34.422726, 46.916710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.250084, 34.082336, 46.896595>,  <33.375557, 33.878101, 46.884525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.250084, 34.082336, 46.896595>,  <33.040966, 34.422726, 46.916710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250084, 34.082336, 46.896595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208812, 0.185029, -0.960292,
		0.826487, 0.491538, 0.274426,
		0.522797, -0.850973, -0.050285,
		33.406921, 33.827045, 46.881508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671051, 34.616276, 46.462936>,  <33.040966, 34.422726, 46.916710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671051, 34.616276, 46.462936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.652721, 34.217403, 46.439163>,  <33.641724, 33.978081, 46.424900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.652721, 34.217403, 46.439163>,  <33.671051, 34.616276, 46.462936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652721, 34.217403, 46.439163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301687, 0.042907, -0.952441,
		0.952305, -0.061576, 0.298871,
		-0.045824, -0.997180, -0.059437,
		33.638973, 33.918251, 46.421333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357979, 34.366386, 46.094200>,  <33.671051, 34.616276, 46.462936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357979, 34.366386, 46.094200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.091835, 34.068394, 46.075031>,  <33.932148, 33.889599, 46.063530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.091835, 34.068394, 46.075031>,  <34.357979, 34.366386, 46.094200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091835, 34.068394, 46.075031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258501, -0.169704, -0.950988,
		0.700339, -0.645135, 0.305493,
		-0.665359, -0.744984, -0.047918,
		33.892227, 33.844898, 46.060658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729370, 33.847187, 45.841042>,  <34.357979, 34.366386, 46.094200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729370, 33.847187, 45.841042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.346764, 33.765953, 45.757298>,  <34.117199, 33.717213, 45.707050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.346764, 33.765953, 45.757298>,  <34.729370, 33.847187, 45.841042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346764, 33.765953, 45.757298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258203, -0.255718, -0.931633,
		0.135665, -0.945180, 0.297036,
		-0.956518, -0.203086, -0.209356,
		34.059807, 33.705029, 45.694492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681458, 33.228317, 45.449169>,  <34.729370, 33.847187, 45.841042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681458, 33.228317, 45.449169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.347584, 33.424408, 45.348778>,  <34.147259, 33.542061, 45.288544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.347584, 33.424408, 45.348778>,  <34.681458, 33.228317, 45.449169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347584, 33.424408, 45.348778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213448, -0.132141, -0.967977,
		-0.507690, -0.861521, 0.005658,
		-0.834680, 0.490224, -0.250977,
		34.097179, 33.571476, 45.273483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396553, 32.873077, 44.941719>,  <34.681458, 33.228317, 45.449169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396553, 32.873077, 44.941719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.221588, 33.230808, 44.904099>,  <34.116608, 33.445446, 44.881527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.221588, 33.230808, 44.904099>,  <34.396553, 32.873077, 44.941719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221588, 33.230808, 44.904099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101401, -0.054869, -0.993331,
		-0.893525, -0.444034, -0.066686,
		-0.437413, 0.894329, -0.094053,
		34.090363, 33.499107, 44.875881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931217, 32.718231, 44.495785>,  <34.396553, 32.873077, 44.941719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931217, 32.718231, 44.495785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.955437, 33.117008, 44.476017>,  <33.969967, 33.356274, 44.464157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.955437, 33.117008, 44.476017>,  <33.931217, 32.718231, 44.495785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955437, 33.117008, 44.476017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061070, -0.053118, -0.996719,
		-0.996295, 0.057331, -0.064100,
		0.060548, 0.996941, -0.049420,
		33.973602, 33.416092, 44.461189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452217, 32.992374, 43.946529>,  <33.931217, 32.718231, 44.495785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452217, 32.992374, 43.946529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.717655, 33.289837, 43.979076>,  <33.876919, 33.468315, 43.998604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.717655, 33.289837, 43.979076>,  <33.452217, 32.992374, 43.946529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717655, 33.289837, 43.979076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036893, 0.076107, -0.996417,
		-0.747183, 0.664218, 0.023069,
		0.663594, 0.743655, 0.081371,
		33.916733, 33.512932, 44.003487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142090, 33.466682, 43.493565>,  <33.452217, 32.992374, 43.946529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142090, 33.466682, 43.493565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.532394, 33.537388, 43.545170>,  <33.766579, 33.579811, 43.576134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.532394, 33.537388, 43.545170>,  <33.142090, 33.466682, 43.493565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532394, 33.537388, 43.545170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110635, 0.110173, -0.987736,
		-0.188808, 0.978068, 0.087946,
		0.975762, 0.176763, 0.129010,
		33.825123, 33.590416, 43.583874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228870, 34.035957, 43.126755>,  <33.142090, 33.466682, 43.493565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228870, 34.035957, 43.126755> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.584164, 33.857704, 43.171383>,  <33.797340, 33.750751, 43.198158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.584164, 33.857704, 43.171383>,  <33.228870, 34.035957, 43.126755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584164, 33.857704, 43.171383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205558, 0.168350, -0.964056,
		0.410836, 0.879242, 0.241138,
		0.888234, -0.445637, 0.111571,
		33.850636, 33.724014, 43.204853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653694, 34.400177, 42.657932>,  <33.228870, 34.035957, 43.126755>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653694, 34.400177, 42.657932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.893990, 34.095997, 42.756584>,  <34.038166, 33.913490, 42.815777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.893990, 34.095997, 42.756584>,  <33.653694, 34.400177, 42.657932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893990, 34.095997, 42.756584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466461, 0.082880, -0.880650,
		0.649249, 0.644087, 0.404509,
		0.600741, -0.760449, 0.246631,
		34.074211, 33.867863, 42.830574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271915, 34.590652, 42.407223>,  <33.653694, 34.400177, 42.657932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271915, 34.590652, 42.407223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.301777, 34.192131, 42.424217>,  <34.319695, 33.953018, 42.434414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.301777, 34.192131, 42.424217>,  <34.271915, 34.590652, 42.407223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301777, 34.192131, 42.424217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514086, 0.001946, -0.857736,
		0.854483, 0.085874, 0.512332,
		0.074654, -0.996304, 0.042484,
		34.324173, 33.893238, 42.436962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927540, 34.518829, 42.308727>,  <34.271915, 34.590652, 42.407223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927540, 34.518829, 42.308727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.767479, 34.171074, 42.192768>,  <34.671440, 33.962421, 42.123192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.767479, 34.171074, 42.192768>,  <34.927540, 34.518829, 42.308727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767479, 34.171074, 42.192768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519967, 0.045103, -0.852994,
		0.754658, -0.492068, 0.434005,
		-0.400156, -0.869387, -0.289897,
		34.647430, 33.910259, 42.105801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520035, 34.062305, 41.956295>,  <34.927540, 34.518829, 42.308727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520035, 34.062305, 41.956295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.163017, 33.931023, 41.832592>,  <34.948807, 33.852253, 41.758369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.163017, 33.931023, 41.832592>,  <35.520035, 34.062305, 41.956295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163017, 33.931023, 41.832592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306175, 0.062453, -0.949925,
		0.331091, -0.942537, 0.044748,
		-0.892544, -0.328212, -0.309258,
		34.895252, 33.832558, 41.739815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727570, 34.661297, 42.231262>,  <35.520035, 34.062305, 41.956295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727570, 34.661297, 42.231262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.576626, 35.021332, 42.144127>,  <35.486061, 35.237350, 42.091846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.576626, 35.021332, 42.144127>,  <35.727570, 34.661297, 42.231262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576626, 35.021332, 42.144127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213977, 0.144115, 0.966150,
		0.901009, 0.411193, 0.138214,
		-0.377356, 0.900084, -0.217835,
		35.463421, 35.291355, 42.078777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086174, 35.173733, 42.607590>,  <35.727570, 34.661297, 42.231262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086174, 35.173733, 42.607590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.765690, 35.391071, 42.507320>,  <35.573399, 35.521473, 42.447159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.765690, 35.391071, 42.507320>,  <36.086174, 35.173733, 42.607590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765690, 35.391071, 42.507320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140168, 0.236845, 0.961383,
		0.581736, 0.805405, -0.113602,
		-0.801209, 0.543348, -0.250674,
		35.525326, 35.554077, 42.432117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152203, 35.854095, 42.921661>,  <36.086174, 35.173733, 42.607590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152203, 35.854095, 42.921661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.760715, 35.801945, 42.858273>,  <35.525822, 35.770653, 42.820240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.760715, 35.801945, 42.858273>,  <36.152203, 35.854095, 42.921661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760715, 35.801945, 42.858273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204391, 0.550344, 0.809534,
		-0.018334, 0.824696, -0.565280,
		-0.978718, -0.130380, -0.158470,
		35.467102, 35.762829, 42.810730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928364, 36.480724, 43.067909>,  <36.152203, 35.854095, 42.921661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928364, 36.480724, 43.067909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.607597, 36.242680, 43.088974>,  <35.415138, 36.099854, 43.101612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.607597, 36.242680, 43.088974>,  <35.928364, 36.480724, 43.067909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607597, 36.242680, 43.088974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283727, 0.456928, 0.843039,
		-0.525763, 0.661107, -0.535267,
		-0.801918, -0.595109, 0.052662,
		35.367023, 36.064148, 43.104774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368668, 36.921070, 43.279831>,  <35.928364, 36.480724, 43.067909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368668, 36.921070, 43.279831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.237934, 36.557564, 43.383621>,  <35.159496, 36.339458, 43.445896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.237934, 36.557564, 43.383621>,  <35.368668, 36.921070, 43.279831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237934, 36.557564, 43.383621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307325, 0.361825, 0.880133,
		-0.893718, 0.207913, -0.397542,
		-0.326832, -0.908766, 0.259473,
		35.139885, 36.284935, 43.461464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826790, 37.024326, 43.699268>,  <35.368668, 36.921070, 43.279831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826790, 37.024326, 43.699268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.903278, 36.639683, 43.777996>,  <34.949173, 36.408897, 43.825233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.903278, 36.639683, 43.777996>,  <34.826790, 37.024326, 43.699268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903278, 36.639683, 43.777996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322313, 0.127883, 0.937955,
		-0.927118, -0.242798, -0.285486,
		0.191225, -0.961611, 0.196819,
		34.960648, 36.351200, 43.837040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348919, 36.890018, 44.166740>,  <34.826790, 37.024326, 43.699268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348919, 36.890018, 44.166740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.573803, 36.560760, 44.198624>,  <34.708733, 36.363205, 44.217754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.573803, 36.560760, 44.198624>,  <34.348919, 36.890018, 44.166740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573803, 36.560760, 44.198624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299858, -0.113076, 0.947259,
		-0.770716, -0.556461, -0.310399,
		0.562212, -0.823143, 0.079710,
		34.742466, 36.313816, 44.222538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944637, 36.329597, 44.560543>,  <34.348919, 36.890018, 44.166740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944637, 36.329597, 44.560543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.335926, 36.260639, 44.606785>,  <34.570698, 36.219265, 44.634529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.335926, 36.260639, 44.606785>,  <33.944637, 36.329597, 44.560543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335926, 36.260639, 44.606785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142244, -0.151170, 0.978220,
		-0.151170, -0.973358, -0.172400,
		-0.978220, 0.172400, -0.115602,
		34.629391, 36.208920, 44.641464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988464, 35.764717, 44.947021>,  <33.944637, 36.329597, 44.560543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988464, 35.764717, 44.947021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.346493, 35.931641, 45.009884>,  <34.561310, 36.031796, 45.047600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.346493, 35.931641, 45.009884>,  <33.988464, 35.764717, 44.947021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346493, 35.931641, 45.009884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081532, -0.193337, 0.977739,
		0.438399, -0.887962, -0.139027,
		0.895074, 0.417305, 0.157157,
		34.615017, 36.056831, 45.057030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292576, 35.302826, 45.354130>,  <33.988464, 35.764717, 44.947021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292576, 35.302826, 45.354130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.496662, 35.643318, 45.403263>,  <34.619114, 35.847614, 45.432743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.496662, 35.643318, 45.403263>,  <34.292576, 35.302826, 45.354130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496662, 35.643318, 45.403263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003252, -0.144729, 0.989466,
		0.860042, -0.504438, -0.076610,
		0.510212, 0.851232, 0.122833,
		34.649727, 35.898689, 45.440113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791145, 35.132442, 45.815269>,  <34.292576, 35.302826, 45.354130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791145, 35.132442, 45.815269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.730057, 35.527626, 45.805397>,  <34.693405, 35.764736, 45.799473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.730057, 35.527626, 45.805397>,  <34.791145, 35.132442, 45.815269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730057, 35.527626, 45.805397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005036, 0.025751, 0.999656,
		0.988257, 0.152543, -0.008908,
		-0.152720, 0.987961, -0.024681,
		34.684242, 35.824013, 45.797993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400440, 35.536034, 46.139565>,  <34.791145, 35.132442, 45.815269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400440, 35.536034, 46.139565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.055794, 35.737961, 46.160625>,  <34.849007, 35.859116, 46.173260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.055794, 35.737961, 46.160625>,  <35.400440, 35.536034, 46.139565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055794, 35.737961, 46.160625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127195, 0.114338, 0.985266,
		0.491358, 0.855621, -0.162726,
		-0.861620, 0.504816, 0.052649,
		34.797306, 35.889404, 46.176422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527836, 35.711674, 46.846119>,  <35.400440, 35.536034, 46.139565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527836, 35.711674, 46.846119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.163940, 35.831966, 46.731617>,  <34.945602, 35.904140, 46.662914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.163940, 35.831966, 46.731617>,  <35.527836, 35.711674, 46.846119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163940, 35.831966, 46.731617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176360, 0.344272, 0.922157,
		0.375867, 0.889404, -0.260161,
		-0.909737, 0.300727, -0.286256,
		34.891018, 35.922184, 46.645741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415112, 36.509140, 46.985603>,  <35.527836, 35.711674, 46.846119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415112, 36.509140, 46.985603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.063759, 36.318672, 46.969055>,  <34.852947, 36.204391, 46.959126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.063759, 36.318672, 46.969055>,  <35.415112, 36.509140, 46.985603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063759, 36.318672, 46.969055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142334, 0.177961, 0.973689,
		-0.456277, 0.861158, -0.224092,
		-0.878380, -0.476168, -0.041372,
		34.800243, 36.175823, 46.956642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518070, 37.283222, 47.167393>,  <35.415112, 36.509140, 46.985603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518070, 37.283222, 47.167393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.852833, 37.385033, 47.361217>,  <36.053692, 37.446117, 47.477512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.852833, 37.385033, 47.361217>,  <35.518070, 37.283222, 47.167393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852833, 37.385033, 47.361217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479999, 0.084154, -0.873223,
		-0.263033, 0.963398, -0.051742,
		0.836907, 0.254523, 0.484566,
		36.103905, 37.461391, 47.506588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646015, 37.808182, 46.801731>,  <35.518070, 37.283222, 47.167393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646015, 37.808182, 46.801731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.990818, 37.704811, 46.976158>,  <36.197701, 37.642788, 47.080814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.990818, 37.704811, 46.976158>,  <35.646015, 37.808182, 46.801731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990818, 37.704811, 46.976158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483367, 0.160025, -0.860667,
		0.152637, 0.952685, 0.262857,
		0.862008, -0.258426, 0.436071,
		36.249420, 37.627285, 47.106979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233685, 38.180981, 46.494247>,  <35.646015, 37.808182, 46.801731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233685, 38.180981, 46.494247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.417984, 37.866077, 46.658165>,  <36.528564, 37.677135, 46.756516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.417984, 37.866077, 46.658165>,  <36.233685, 38.180981, 46.494247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417984, 37.866077, 46.658165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643297, -0.021870, -0.765305,
		0.611455, 0.616235, 0.496364,
		0.460752, -0.787258, 0.409794,
		36.556210, 37.629898, 46.781105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890690, 38.371864, 46.462967>,  <36.233685, 38.180981, 46.494247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890690, 38.371864, 46.462967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.871952, 37.973194, 46.489635>,  <36.860710, 37.733994, 46.505634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.871952, 37.973194, 46.489635>,  <36.890690, 38.371864, 46.462967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871952, 37.973194, 46.489635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740192, -0.079453, -0.667684,
		0.670761, 0.018069, 0.741453,
		-0.046846, -0.996675, 0.066669,
		36.857899, 37.674191, 46.509636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613724, 38.138580, 46.516186>,  <36.890690, 38.371864, 46.462967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613724, 38.138580, 46.516186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.422581, 37.813713, 46.382305>,  <37.307896, 37.618793, 46.301975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.422581, 37.813713, 46.382305>,  <37.613724, 38.138580, 46.516186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422581, 37.813713, 46.382305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705853, -0.128206, -0.696660,
		0.522896, -0.569159, 0.634538,
		-0.477862, -0.812171, -0.334704,
		37.279221, 37.570061, 46.281895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127907, 37.654343, 46.306988>,  <37.613724, 38.138580, 46.516186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.127907, 37.654343, 46.306988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.804295, 37.512608, 46.119408>,  <37.610126, 37.427567, 46.006859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.804295, 37.512608, 46.119408>,  <38.127907, 37.654343, 46.306988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804295, 37.512608, 46.119408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542142, -0.141662, -0.828259,
		0.227052, -0.924324, 0.306711,
		-0.809030, -0.354339, -0.468951,
		37.561584, 37.406307, 45.978722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374088, 36.966133, 45.993011>,  <38.127907, 37.654343, 46.306988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374088, 36.966133, 45.993011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.048985, 37.089890, 45.795551>,  <37.853920, 37.164143, 45.677074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.048985, 37.089890, 45.795551>,  <38.374088, 36.966133, 45.993011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048985, 37.089890, 45.795551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386728, -0.347210, -0.854334,
		-0.435726, -0.885280, 0.162548,
		-0.812763, 0.309393, -0.493651,
		37.805157, 37.182709, 45.647457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194897, 36.440659, 45.648987>,  <38.374088, 36.966133, 45.993011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194897, 36.440659, 45.648987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.021267, 36.753551, 45.470238>,  <37.917088, 36.941288, 45.362988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.021267, 36.753551, 45.470238>,  <38.194897, 36.440659, 45.648987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021267, 36.753551, 45.470238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333576, -0.321225, -0.886308,
		-0.836844, -0.533789, -0.121498,
		-0.434073, 0.782230, -0.446875,
		37.891045, 36.988220, 45.336174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809277, 36.176456, 44.981937>,  <38.194897, 36.440659, 45.648987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809277, 36.176456, 44.981937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.903522, 36.565105, 44.973644>,  <37.960072, 36.798294, 44.968670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.903522, 36.565105, 44.973644>,  <37.809277, 36.176456, 44.981937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903522, 36.565105, 44.973644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466344, -0.131751, -0.874737,
		-0.852647, 0.196438, -0.484154,
		0.235620, 0.971624, -0.020729,
		37.974209, 36.856594, 44.967426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639324, 36.333603, 44.332775>,  <37.809277, 36.176456, 44.981937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639324, 36.333603, 44.332775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.894417, 36.621052, 44.443691>,  <38.047470, 36.793522, 44.510242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.894417, 36.621052, 44.443691>,  <37.639324, 36.333603, 44.332775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894417, 36.621052, 44.443691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418090, -0.020596, -0.908172,
		-0.646917, 0.695100, -0.313582,
		0.637729, 0.718618, 0.277291,
		38.085735, 36.836636, 44.526878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750309, 36.634579, 43.711273>,  <37.639324, 36.333603, 44.332775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750309, 36.634579, 43.711273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.022572, 36.822887, 43.935802>,  <38.185928, 36.935871, 44.070518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.022572, 36.822887, 43.935802>,  <37.750309, 36.634579, 43.711273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022572, 36.822887, 43.935802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460239, 0.321350, -0.827596,
		-0.569986, 0.821652, 0.002064,
		0.680659, 0.470768, 0.561321,
		38.226768, 36.964119, 44.104198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868713, 37.284336, 43.373543>,  <37.750309, 36.634579, 43.711273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868713, 37.284336, 43.373543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.197533, 37.214710, 43.590408>,  <38.394825, 37.172935, 43.720528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.197533, 37.214710, 43.590408>,  <37.868713, 37.284336, 43.373543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197533, 37.214710, 43.590408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566347, 0.151160, -0.810186,
		0.059067, 0.973064, 0.222839,
		0.822048, -0.174060, 0.542163,
		38.444145, 37.162491, 43.753056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218666, 37.822239, 43.221893>,  <37.868713, 37.284336, 43.373543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218666, 37.822239, 43.221893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.477478, 37.549603, 43.358589>,  <38.632767, 37.386021, 43.440609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.477478, 37.549603, 43.358589>,  <38.218666, 37.822239, 43.221893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477478, 37.549603, 43.358589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540668, 0.094120, -0.835954,
		0.537610, 0.725659, 0.429411,
		0.647034, -0.681587, 0.341741,
		38.671589, 37.345127, 43.461113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896729, 38.054901, 43.139309>,  <38.218666, 37.822239, 43.221893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896729, 38.054901, 43.139309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.915741, 37.655434, 43.131237>,  <38.927151, 37.415752, 43.126392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.915741, 37.655434, 43.131237>,  <38.896729, 38.054901, 43.139309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915741, 37.655434, 43.131237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553616, 0.043158, -0.831653,
		0.831414, 0.028359, 0.554929,
		0.047534, -0.998666, -0.020182,
		38.930000, 37.355835, 43.125183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.229450, 33.748379, 27.851255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.283901, 33.356514, 27.910223>,  <30.316572, 33.121395, 27.945604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.283901, 33.356514, 27.910223>,  <30.229450, 33.748379, 27.851255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.283901, 33.356514, 27.910223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718855, 0.004717, 0.695144,
		-0.681701, -0.200603, -0.703592,
		0.136129, -0.979661, 0.147419,
		30.324739, 33.062614, 27.954449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486364, 33.528286, 27.955952>,  <30.229450, 33.748379, 27.851255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.486364, 33.528286, 27.955952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.723005, 33.230022, 28.078590>,  <29.864990, 33.051064, 28.152174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.723005, 33.230022, 28.078590>,  <29.486364, 33.528286, 27.955952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.723005, 33.230022, 28.078590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655474, -0.223423, 0.721412,
		-0.469428, -0.627752, -0.620938,
		0.591600, -0.745660, 0.306595,
		29.900486, 33.006325, 28.170568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.973310, 32.883202, 28.229618>,  <29.486364, 33.528286, 27.955952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.973310, 32.883202, 28.229618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.342716, 32.853107, 28.380066>,  <29.564360, 32.835052, 28.470335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.342716, 32.853107, 28.380066>,  <28.973310, 32.883202, 28.229618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.342716, 32.853107, 28.380066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382997, -0.234340, 0.893531,
		0.020919, -0.969239, -0.245229,
		0.923513, -0.075230, 0.376118,
		29.619770, 32.830540, 28.492901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.904425, 32.295559, 28.563738>,  <28.973310, 32.883202, 28.229618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.904425, 32.295559, 28.563738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.212448, 32.499855, 28.716658>,  <29.397263, 32.622433, 28.808409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.212448, 32.499855, 28.716658>,  <28.904425, 32.295559, 28.563738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.212448, 32.499855, 28.716658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309692, -0.224639, 0.923920,
		0.557763, -0.829868, -0.014813,
		0.770059, 0.510741, 0.382299,
		29.443466, 32.653076, 28.831347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.975924, 32.039036, 29.192715>,  <28.904425, 32.295559, 28.563738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.975924, 32.039036, 29.192715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.214096, 32.355427, 29.249035>,  <29.357000, 32.545261, 29.282827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.214096, 32.355427, 29.249035>,  <28.975924, 32.039036, 29.192715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.214096, 32.355427, 29.249035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006454, -0.170538, 0.985330,
		0.803381, -0.587604, -0.096438,
		0.595431, 0.790973, 0.140799,
		29.392725, 32.592720, 29.291275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.390333, 31.864063, 29.805468>,  <28.975924, 32.039036, 29.192715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.390333, 31.864063, 29.805468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.405704, 32.262695, 29.776205>,  <29.414928, 32.501873, 29.758648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.405704, 32.262695, 29.776205>,  <29.390333, 31.864063, 29.805468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.405704, 32.262695, 29.776205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140361, 0.077866, 0.987034,
		0.989354, -0.027663, 0.142874,
		0.038429, 0.996580, -0.073154,
		29.417233, 32.561668, 29.754259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.675350, 32.073685, 30.425140>,  <29.390333, 31.864063, 29.805468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.675350, 32.073685, 30.425140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.504114, 32.404697, 30.279850>,  <29.401373, 32.603306, 30.192677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.504114, 32.404697, 30.279850>,  <29.675350, 32.073685, 30.425140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.504114, 32.404697, 30.279850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325319, 0.233866, 0.916228,
		0.843153, 0.510391, 0.169096,
		-0.428089, 0.827531, -0.363224,
		29.375687, 32.652958, 30.170883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.889519, 32.558254, 30.901096>,  <29.675350, 32.073685, 30.425140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.889519, 32.558254, 30.901096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.561647, 32.721516, 30.740332>,  <29.364923, 32.819473, 30.643873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.561647, 32.721516, 30.740332>,  <29.889519, 32.558254, 30.901096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.561647, 32.721516, 30.740332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142528, 0.534247, 0.833226,
		0.554807, 0.740263, -0.379738,
		-0.819680, 0.408156, -0.401912,
		29.315742, 32.843964, 30.619759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.807228, 33.146252, 31.213305>,  <29.889519, 32.558254, 30.901096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.807228, 33.146252, 31.213305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.442411, 33.104908, 31.054562>,  <29.223522, 33.080101, 30.959316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.442411, 33.104908, 31.054562>,  <29.807228, 33.146252, 31.213305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.442411, 33.104908, 31.054562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403455, 0.399585, 0.823138,
		0.073502, 0.910851, -0.406138,
		-0.912042, -0.103356, -0.396858,
		29.168798, 33.073902, 30.935505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.499449, 33.708984, 31.443300>,  <29.807228, 33.146252, 31.213305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.499449, 33.708984, 31.443300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.207239, 33.464844, 31.320791>,  <29.031914, 33.318359, 31.247286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.207239, 33.464844, 31.320791>,  <29.499449, 33.708984, 31.443300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.207239, 33.464844, 31.320791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637400, 0.448498, 0.626555,
		-0.245057, 0.652931, -0.716678,
		-0.730526, -0.610353, -0.306270,
		28.988081, 33.281738, 31.228910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.899113, 34.156521, 31.225649>,  <29.499449, 33.708984, 31.443300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.899113, 34.156521, 31.225649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.753393, 33.796528, 31.321413>,  <28.665960, 33.580532, 31.378872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.753393, 33.796528, 31.321413>,  <28.899113, 34.156521, 31.225649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.753393, 33.796528, 31.321413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478722, 0.401482, 0.780793,
		-0.798818, 0.169833, -0.577101,
		-0.364301, -0.899982, 0.239408,
		28.644102, 33.526531, 31.393236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.129316, 34.294552, 31.417202>,  <28.899113, 34.156521, 31.225649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.129316, 34.294552, 31.417202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.233437, 33.939812, 31.569902>,  <28.295908, 33.726967, 31.661522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.233437, 33.939812, 31.569902>,  <28.129316, 34.294552, 31.417202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.233437, 33.939812, 31.569902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591824, 0.165845, 0.788822,
		-0.762882, -0.431258, -0.481693,
		0.260299, -0.886855, 0.381749,
		28.311527, 33.673756, 31.684427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.579403, 33.853531, 31.661919>,  <28.129316, 34.294552, 31.417202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.579403, 33.853531, 31.661919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.874140, 33.706779, 31.889063>,  <28.050982, 33.618729, 32.025349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.874140, 33.706779, 31.889063>,  <27.579403, 33.853531, 31.661919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.874140, 33.706779, 31.889063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508300, 0.253169, 0.823126,
		-0.445754, -0.895155, 0.000059,
		0.736840, -0.366882, 0.567859,
		28.095192, 33.596714, 32.059422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.283184, 33.489204, 32.298214>,  <27.579403, 33.853531, 31.661919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.283184, 33.489204, 32.298214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.661541, 33.565304, 32.403358>,  <27.888556, 33.610966, 32.466446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.661541, 33.565304, 32.403358>,  <27.283184, 33.489204, 32.298214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.661541, 33.565304, 32.403358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316565, 0.363174, 0.876294,
		0.071254, -0.912090, 0.403751,
		0.945891, 0.190253, 0.262858,
		27.945309, 33.622379, 32.482216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.338234, 33.325478, 33.035667>,  <27.283184, 33.489204, 32.298214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.338234, 33.325478, 33.035667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.655012, 33.565102, 32.988426>,  <27.845079, 33.708878, 32.960079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.655012, 33.565102, 32.988426>,  <27.338234, 33.325478, 33.035667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.655012, 33.565102, 32.988426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194308, 0.430631, 0.881364,
		0.578854, -0.675040, 0.457437,
		0.791942, 0.599064, -0.118107,
		27.892595, 33.744820, 32.952995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.665007, 33.390430, 33.640106>,  <27.338234, 33.325478, 33.035667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.665007, 33.390430, 33.640106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.808254, 33.708111, 33.443745>,  <27.894203, 33.898720, 33.325928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.808254, 33.708111, 33.443745>,  <27.665007, 33.390430, 33.640106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.808254, 33.708111, 33.443745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116347, 0.559639, 0.820529,
		0.926399, -0.236732, 0.292820,
		0.358119, 0.794205, -0.490906,
		27.915689, 33.946373, 33.296474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.286072, 33.647484, 34.083218>,  <27.665007, 33.390430, 33.640106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.286072, 33.647484, 34.083218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.141304, 33.937668, 33.849049>,  <28.054443, 34.111778, 33.708546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.141304, 33.937668, 33.849049>,  <28.286072, 33.647484, 34.083218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.141304, 33.937668, 33.849049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083514, 0.650701, 0.754728,
		0.928460, 0.224261, -0.296088,
		-0.361921, 0.725462, -0.585421,
		28.032728, 34.155308, 33.673424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587919, 34.150356, 34.413918>,  <28.286072, 33.647484, 34.083218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.587919, 34.150356, 34.413918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.303921, 34.343735, 34.209103>,  <28.133522, 34.459763, 34.086212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.303921, 34.343735, 34.209103>,  <28.587919, 34.150356, 34.413918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.303921, 34.343735, 34.209103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010490, 0.719773, 0.694130,
		0.704127, 0.498202, -0.505965,
		-0.709996, 0.483448, -0.512038,
		28.090921, 34.488770, 34.055492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.128126, 34.725937, 34.144226>,  <28.587919, 34.150356, 34.413918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.128126, 34.725937, 34.144226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.405308, 34.481438, 34.297169>,  <29.571617, 34.334740, 34.388935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.405308, 34.481438, 34.297169>,  <29.128126, 34.725937, 34.144226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.405308, 34.481438, 34.297169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708502, 0.479056, -0.518200,
		0.133576, 0.629989, 0.765031,
		0.692952, -0.611245, 0.382358,
		29.613194, 34.298065, 34.411877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.627327, 35.053394, 34.175400>,  <29.128126, 34.725937, 34.144226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.627327, 35.053394, 34.175400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.830967, 34.711273, 34.213909>,  <29.953150, 34.506001, 34.237015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.830967, 34.711273, 34.213909>,  <29.627327, 35.053394, 34.175400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.830967, 34.711273, 34.213909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731710, 0.371181, -0.571687,
		0.453232, 0.361490, 0.814804,
		0.509099, -0.855307, 0.096275,
		29.983696, 34.454681, 34.242790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.267399, 35.211472, 34.557961>,  <29.627327, 35.053394, 34.175400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.267399, 35.211472, 34.557961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.234964, 34.932861, 34.272789>,  <30.215504, 34.765694, 34.101685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.234964, 34.932861, 34.272789>,  <30.267399, 35.211472, 34.557961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.234964, 34.932861, 34.272789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662634, 0.496649, -0.560585,
		0.744541, -0.517868, 0.421273,
		-0.081084, -0.696528, -0.712933,
		30.210640, 34.723904, 34.058910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.001616, 35.057575, 34.322010>,  <30.267399, 35.211472, 34.557961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.001616, 35.057575, 34.322010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.739140, 34.955818, 34.037842>,  <30.581654, 34.894764, 33.867340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.739140, 34.955818, 34.037842>,  <31.001616, 35.057575, 34.322010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.739140, 34.955818, 34.037842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672055, 0.231117, -0.703511,
		0.343157, -0.939080, 0.019307,
		-0.656190, -0.254390, -0.710422,
		30.542282, 34.879501, 33.824715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413105, 34.802860, 33.797909>,  <31.001616, 35.057575, 34.322010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413105, 34.802860, 33.797909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.065182, 34.872322, 33.613182>,  <30.856428, 34.913998, 33.502346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.065182, 34.872322, 33.613182>,  <31.413105, 34.802860, 33.797909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.065182, 34.872322, 33.613182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493287, 0.325061, -0.806848,
		0.010006, -0.929613, -0.368403,
		-0.869809, 0.173655, -0.461818,
		30.804239, 34.924419, 33.474636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449112, 34.443691, 33.012226>,  <31.413105, 34.802860, 33.797909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.449112, 34.443691, 33.012226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.155260, 34.715073, 33.010380>,  <30.978949, 34.877903, 33.009274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.155260, 34.715073, 33.010380>,  <31.449112, 34.443691, 33.012226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155260, 34.715073, 33.010380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301037, 0.319854, -0.898371,
		-0.608027, -0.661358, -0.439214,
		-0.734629, 0.678453, -0.004613,
		30.934872, 34.918610, 33.008995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187346, 34.491467, 32.310966>,  <31.449112, 34.443691, 33.012226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187346, 34.491467, 32.310966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.075071, 34.822487, 32.505440>,  <31.007708, 35.021099, 32.622124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.075071, 34.822487, 32.505440>,  <31.187346, 34.491467, 32.310966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.075071, 34.822487, 32.505440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256505, 0.552802, -0.792852,
		-0.924890, -0.097832, -0.367434,
		-0.280685, 0.827550, 0.486187,
		30.990866, 35.070751, 32.651295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819952, 34.881611, 31.872932>,  <31.187346, 34.491467, 32.310966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819952, 34.881611, 31.872932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.975414, 35.135178, 32.140392>,  <31.068691, 35.287319, 32.300869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.975414, 35.135178, 32.140392>,  <30.819952, 34.881611, 31.872932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.975414, 35.135178, 32.140392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290949, 0.604136, -0.741868,
		-0.874240, 0.482874, 0.050363,
		0.388655, 0.633918, 0.668652,
		31.092010, 35.325352, 32.340988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.529301, 35.470989, 31.724028>,  <30.819952, 34.881611, 31.872932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.529301, 35.470989, 31.724028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.874512, 35.549225, 31.910330>,  <31.081638, 35.596165, 32.022110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.874512, 35.549225, 31.910330>,  <30.529301, 35.470989, 31.724028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874512, 35.549225, 31.910330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274861, 0.591758, -0.757808,
		-0.423830, 0.782028, 0.456946,
		0.863029, 0.195585, 0.465754,
		31.133421, 35.607899, 32.050056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.804815, 36.157341, 31.469114>,  <30.529301, 35.470989, 31.724028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.804815, 36.157341, 31.469114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.141802, 36.086311, 31.672571>,  <31.343994, 36.043694, 31.794645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.141802, 36.086311, 31.672571>,  <30.804815, 36.157341, 31.469114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.141802, 36.086311, 31.672571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533446, 0.407108, -0.741417,
		-0.075414, 0.895952, 0.437702,
		0.842465, -0.177577, 0.508644,
		31.394541, 36.033039, 31.825165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.215546, 36.835560, 31.407902>,  <30.804815, 36.157341, 31.469114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.215546, 36.835560, 31.407902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.457987, 36.523438, 31.469563>,  <31.603451, 36.336163, 31.506559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.457987, 36.523438, 31.469563>,  <31.215546, 36.835560, 31.407902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.457987, 36.523438, 31.469563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468217, 0.193359, -0.862198,
		0.642971, 0.594756, 0.482548,
		0.606103, -0.780306, 0.154151,
		31.639818, 36.289345, 31.515808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824566, 37.077030, 31.047104>,  <31.215546, 36.835560, 31.407902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824566, 37.077030, 31.047104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.879158, 36.683498, 31.093506>,  <31.911913, 36.447380, 31.121347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.879158, 36.683498, 31.093506>,  <31.824566, 37.077030, 31.047104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879158, 36.683498, 31.093506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414085, -0.049727, -0.908879,
		0.899948, 0.172081, 0.400601,
		0.136480, -0.983827, 0.116007,
		31.920101, 36.388351, 31.128307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378487, 37.048244, 30.698080>,  <31.824566, 37.077030, 31.047104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378487, 37.048244, 30.698080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.260296, 36.667870, 30.734772>,  <32.189381, 36.439644, 30.756786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.260296, 36.667870, 30.734772>,  <32.378487, 37.048244, 30.698080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260296, 36.667870, 30.734772> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545974, -0.246876, -0.800602,
		0.783967, -0.186478, 0.592133,
		-0.295478, -0.950935, 0.091731,
		32.171654, 36.382587, 30.762291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016533, 36.620193, 30.588163>,  <32.378487, 37.048244, 30.698080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016533, 36.620193, 30.588163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.691360, 36.400330, 30.511200>,  <32.496258, 36.268414, 30.465021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.691360, 36.400330, 30.511200>,  <33.016533, 36.620193, 30.588163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691360, 36.400330, 30.511200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406129, -0.298297, -0.863758,
		0.417375, -0.780318, 0.465726,
		-0.812931, -0.549656, -0.192409,
		32.447479, 36.235432, 30.453478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303177, 35.991093, 30.391169>,  <33.016533, 36.620193, 30.588163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303177, 35.991093, 30.391169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.925877, 36.020428, 30.261612>,  <32.699497, 36.038029, 30.183878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.925877, 36.020428, 30.261612>,  <33.303177, 35.991093, 30.391169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925877, 36.020428, 30.261612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307642, -0.174337, -0.935395,
		-0.125065, -0.981951, 0.141882,
		-0.943247, 0.073336, -0.323893,
		32.642902, 36.042427, 30.164444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242153, 35.513897, 29.890448>,  <33.303177, 35.991093, 30.391169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242153, 35.513897, 29.890448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.910641, 35.722961, 29.810497>,  <32.711735, 35.848400, 29.762527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.910641, 35.722961, 29.810497>,  <33.242153, 35.513897, 29.890448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910641, 35.722961, 29.810497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055057, -0.279295, -0.958626,
		-0.556862, -0.805493, 0.202697,
		-0.828779, 0.522663, -0.199877,
		32.662006, 35.879761, 29.750534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740250, 35.075054, 29.623486>,  <33.242153, 35.513897, 29.890448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740250, 35.075054, 29.623486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.641422, 35.443871, 29.504290>,  <32.582127, 35.665161, 29.432772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.641422, 35.443871, 29.504290>,  <32.740250, 35.075054, 29.623486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641422, 35.443871, 29.504290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156291, -0.265581, -0.951336,
		-0.956311, -0.281619, -0.078490,
		-0.247069, 0.922040, -0.297992,
		32.567303, 35.720482, 29.414892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125927, 34.991692, 29.163401>,  <32.740250, 35.075054, 29.623486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125927, 34.991692, 29.163401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.304642, 35.336807, 29.068760>,  <32.411869, 35.543877, 29.011974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.304642, 35.336807, 29.068760>,  <32.125927, 34.991692, 29.163401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304642, 35.336807, 29.068760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034451, -0.247679, -0.968230,
		-0.893977, 0.440743, -0.080936,
		0.446787, 0.862787, -0.236603,
		32.438679, 35.595642, 28.997780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645735, 35.240105, 28.609703>,  <32.125927, 34.991692, 29.163401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645735, 35.240105, 28.609703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.995098, 35.432922, 28.582026>,  <32.204716, 35.548615, 28.565418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.995098, 35.432922, 28.582026>,  <31.645735, 35.240105, 28.609703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.995098, 35.432922, 28.582026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031875, -0.198369, -0.979609,
		-0.485945, 0.853392, -0.188623,
		0.873408, 0.482049, -0.069195,
		32.257122, 35.577538, 28.561268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599119, 35.437389, 27.951740>,  <31.645735, 35.240105, 28.609703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599119, 35.437389, 27.951740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.976055, 35.541126, 28.036343>,  <32.202217, 35.603371, 28.087105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.976055, 35.541126, 28.036343>,  <31.599119, 35.437389, 27.951740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.976055, 35.541126, 28.036343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213516, 0.020732, -0.976720,
		-0.257693, 0.965562, -0.035838,
		0.942340, 0.259346, 0.211506,
		32.258759, 35.618931, 28.099794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.812744, 36.174038, 27.693548>,  <31.599119, 35.437389, 27.951740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.812744, 36.174038, 27.693548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.148281, 35.960186, 27.734570>,  <32.349602, 35.831875, 27.759182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.148281, 35.960186, 27.734570>,  <31.812744, 36.174038, 27.693548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.148281, 35.960186, 27.734570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274427, 0.252603, -0.927837,
		0.470141, 0.806453, 0.358610,
		0.838843, -0.534627, 0.102553,
		32.399933, 35.799797, 27.765335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298405, 36.571564, 27.248144>,  <31.812744, 36.174038, 27.693548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298405, 36.571564, 27.248144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.457802, 36.208340, 27.299728>,  <32.553440, 35.990406, 27.330679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.457802, 36.208340, 27.299728>,  <32.298405, 36.571564, 27.248144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457802, 36.208340, 27.299728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510556, 0.102815, -0.853675,
		0.761929, 0.406025, 0.504586,
		0.398493, -0.908060, 0.128961,
		32.577351, 35.935921, 27.338417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036041, 36.568798, 27.317139>,  <32.298405, 36.571564, 27.248144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036041, 36.568798, 27.317139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.961304, 36.205372, 27.167690>,  <32.916462, 35.987316, 27.078020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.961304, 36.205372, 27.167690>,  <33.036041, 36.568798, 27.317139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961304, 36.205372, 27.167690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552964, 0.217085, -0.804429,
		0.811986, -0.356899, 0.461845,
		-0.186840, -0.908569, -0.373622,
		32.905251, 35.932800, 27.055603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701160, 36.381596, 26.921186>,  <33.036041, 36.568798, 27.317139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701160, 36.381596, 26.921186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.408428, 36.141495, 26.792114>,  <33.232788, 35.997433, 26.714670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.408428, 36.141495, 26.792114>,  <33.701160, 36.381596, 26.921186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408428, 36.141495, 26.792114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360637, 0.060650, -0.930732,
		0.578248, -0.797505, 0.172089,
		-0.731827, -0.600256, -0.322680,
		33.188881, 35.961418, 26.695311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.894707, 36.358379, 48.240204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.540855, 36.172253, 48.228104>,  <39.328545, 36.060577, 48.220844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.540855, 36.172253, 48.228104>,  <39.894707, 36.358379, 48.240204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540855, 36.172253, 48.228104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298311, 0.514880, 0.803685,
		-0.358390, 0.719987, -0.594285,
		-0.884628, -0.465315, -0.030252,
		39.275467, 36.032658, 48.219028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285057, 36.920399, 48.350403>,  <39.894707, 36.358379, 48.240204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285057, 36.920399, 48.350403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.152142, 36.551537, 48.429619>,  <39.072392, 36.330219, 48.477146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.152142, 36.551537, 48.429619>,  <39.285057, 36.920399, 48.350403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.152142, 36.551537, 48.429619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471844, 0.344334, 0.811663,
		-0.816668, 0.176264, -0.549531,
		-0.332289, -0.922152, 0.198037,
		39.052456, 36.274891, 48.489029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557430, 37.024418, 48.737247>,  <39.285057, 36.920399, 48.350403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557430, 37.024418, 48.737247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.697311, 36.659210, 48.821247>,  <38.781242, 36.440086, 48.871647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.697311, 36.659210, 48.821247>,  <38.557430, 37.024418, 48.737247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697311, 36.659210, 48.821247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402186, 0.056143, 0.913835,
		-0.846140, -0.404032, -0.347570,
		0.349705, -0.913021, 0.210001,
		38.802223, 36.385303, 48.884247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031525, 36.756130, 49.002808>,  <38.557430, 37.024418, 48.737247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031525, 36.756130, 49.002808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.341564, 36.540188, 49.134129>,  <38.527588, 36.410622, 49.212921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.341564, 36.540188, 49.134129>,  <38.031525, 36.756130, 49.002808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341564, 36.540188, 49.134129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383861, 0.010382, 0.923333,
		-0.501871, -0.841696, -0.199181,
		0.775098, -0.539851, 0.328304,
		38.574093, 36.378231, 49.232620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700546, 36.303314, 49.465359>,  <38.031525, 36.756130, 49.002808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700546, 36.303314, 49.465359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.085506, 36.315475, 49.573334>,  <38.316483, 36.322773, 49.638119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.085506, 36.315475, 49.573334>,  <37.700546, 36.303314, 49.465359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085506, 36.315475, 49.573334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268003, -0.055807, 0.961800,
		0.044310, -0.997978, -0.045559,
		0.962399, 0.030407, 0.269934,
		38.374226, 36.324596, 49.654312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837368, 35.640862, 49.795635>,  <37.700546, 36.303314, 49.465359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837368, 35.640862, 49.795635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.100815, 35.917797, 49.913548>,  <38.258884, 36.083958, 49.984295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.100815, 35.917797, 49.913548>,  <37.837368, 35.640862, 49.795635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100815, 35.917797, 49.913548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144747, -0.267858, 0.952523,
		0.738427, -0.670015, -0.076202,
		0.658616, 0.692339, 0.294777,
		38.298401, 36.125500, 50.001980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105228, 35.256935, 50.369411>,  <37.837368, 35.640862, 49.795635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105228, 35.256935, 50.369411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.222786, 35.638424, 50.394844>,  <38.293320, 35.867317, 50.410103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.222786, 35.638424, 50.394844>,  <38.105228, 35.256935, 50.369411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222786, 35.638424, 50.394844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098573, -0.096403, 0.990449,
		0.950740, -0.284824, -0.122343,
		0.293898, 0.953720, 0.063578,
		38.310955, 35.924541, 50.413918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775730, 35.149242, 50.721676>,  <38.105228, 35.256935, 50.369411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.775730, 35.149242, 50.721676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.601231, 35.505737, 50.771275>,  <38.496529, 35.719635, 50.801033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.601231, 35.505737, 50.771275>,  <38.775730, 35.149242, 50.721676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601231, 35.505737, 50.771275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084194, -0.096769, 0.991739,
		0.895878, 0.443087, -0.032822,
		-0.436250, 0.891241, 0.123998,
		38.470356, 35.773109, 50.808475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275517, 35.540028, 51.157089>,  <38.775730, 35.149242, 50.721676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275517, 35.540028, 51.157089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.926201, 35.732777, 51.185837>,  <38.716610, 35.848427, 51.203083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.926201, 35.732777, 51.185837>,  <39.275517, 35.540028, 51.157089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926201, 35.732777, 51.185837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090654, 0.015787, 0.995757,
		0.478694, 0.876099, -0.057471,
		-0.873289, 0.481873, 0.071865,
		38.664215, 35.877338, 51.207397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376339, 35.884647, 51.778984>,  <39.275517, 35.540028, 51.157089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376339, 35.884647, 51.778984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.979034, 35.920822, 51.749985>,  <38.740650, 35.942528, 51.732586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.979034, 35.920822, 51.749985>,  <39.376339, 35.884647, 51.778984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979034, 35.920822, 51.749985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078628, -0.066159, 0.994706,
		0.085161, 0.993702, 0.072824,
		-0.993260, 0.090437, -0.072499,
		38.681057, 35.947952, 51.728233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241840, 36.426304, 52.220795>,  <39.376339, 35.884647, 51.778984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241840, 36.426304, 52.220795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.915390, 36.199589, 52.175728>,  <38.719521, 36.063560, 52.148689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.915390, 36.199589, 52.175728>,  <39.241840, 36.426304, 52.220795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915390, 36.199589, 52.175728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074981, -0.089453, 0.993165,
		-0.572994, 0.818991, 0.030506,
		-0.816122, -0.566790, -0.112665,
		38.670555, 36.029552, 52.141930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851925, 36.509956, 52.753525>,  <39.241840, 36.426304, 52.220795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851925, 36.509956, 52.753525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.698429, 36.156979, 52.644688>,  <38.606331, 35.945190, 52.579384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.698429, 36.156979, 52.644688>,  <38.851925, 36.509956, 52.753525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698429, 36.156979, 52.644688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064043, -0.268512, 0.961145,
		-0.921217, 0.386257, 0.046525,
		-0.383742, -0.882444, -0.272094,
		38.583305, 35.892246, 52.563061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419407, 36.394497, 53.280968>,  <38.851925, 36.509956, 52.753525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419407, 36.394497, 53.280968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.457077, 36.031998, 53.116119>,  <38.479679, 35.814499, 53.017208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.457077, 36.031998, 53.116119>,  <38.419407, 36.394497, 53.280968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457077, 36.031998, 53.116119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096722, -0.420333, 0.902200,
		-0.990846, -0.045099, -0.127237,
		0.094171, -0.906248, -0.412123,
		38.485329, 35.760124, 52.992481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642223, 36.391151, 53.319668>,  <38.419407, 36.394497, 53.280968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642223, 36.391151, 53.319668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.289337, 36.417648, 53.506130>,  <37.077606, 36.433548, 53.618008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.289337, 36.417648, 53.506130>,  <37.642223, 36.391151, 53.319668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289337, 36.417648, 53.506130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307381, 0.830993, 0.463645,
		-0.356657, 0.552324, -0.753481,
		-0.882220, 0.066244, 0.466154,
		37.024670, 36.437523, 53.645977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061008, 36.745480, 52.908173>,  <37.642223, 36.391151, 53.319668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061008, 36.745480, 52.908173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.735394, 36.973927, 52.950451>,  <36.540024, 37.110992, 52.975819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.735394, 36.973927, 52.950451>,  <37.061008, 36.745480, 52.908173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735394, 36.973927, 52.950451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161609, -0.047932, -0.985690,
		-0.557876, -0.819469, 0.131316,
		-0.814038, 0.571115, 0.105693,
		36.491180, 37.145260, 52.982159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544201, 36.400455, 52.472980>,  <37.061008, 36.745480, 52.908173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544201, 36.400455, 52.472980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.409653, 36.772236, 52.533611>,  <36.328926, 36.995304, 52.569992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.409653, 36.772236, 52.533611>,  <36.544201, 36.400455, 52.472980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409653, 36.772236, 52.533611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347889, 0.026934, -0.937149,
		-0.875117, -0.367958, 0.314287,
		-0.336367, 0.929452, 0.151579,
		36.308743, 37.051071, 52.579086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973652, 36.366478, 52.127853>,  <36.544201, 36.400455, 52.472980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973652, 36.366478, 52.127853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.057938, 36.755871, 52.163464>,  <36.108509, 36.989506, 52.184830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.057938, 36.755871, 52.163464>,  <35.973652, 36.366478, 52.127853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057938, 36.755871, 52.163464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248639, 0.141450, -0.958212,
		-0.945398, 0.179776, 0.271852,
		0.210717, 0.973485, 0.089027,
		36.121151, 37.047916, 52.190170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428959, 36.635731, 51.743881>,  <35.973652, 36.366478, 52.127853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428959, 36.635731, 51.743881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.702503, 36.925510, 51.778522>,  <35.866631, 37.099380, 51.799305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.702503, 36.925510, 51.778522>,  <35.428959, 36.635731, 51.743881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702503, 36.925510, 51.778522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176944, 0.279828, -0.943603,
		-0.707829, 0.629972, 0.319551,
		0.683864, 0.724452, 0.086601,
		35.907661, 37.142845, 51.804504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173397, 37.338566, 51.672050>,  <35.428959, 36.635731, 51.743881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173397, 37.338566, 51.672050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.558773, 37.357899, 51.566631>,  <35.789997, 37.369499, 51.503380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.558773, 37.357899, 51.566631>,  <35.173397, 37.338566, 51.672050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558773, 37.357899, 51.566631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267887, 0.193230, -0.943875,
		0.005306, 0.979963, 0.199112,
		0.963436, 0.048331, -0.263544,
		35.847805, 37.372398, 51.487568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246418, 37.889290, 51.188538>,  <35.173397, 37.338566, 51.672050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246418, 37.889290, 51.188538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.582062, 37.675201, 51.149685>,  <35.783447, 37.546749, 51.126373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.582062, 37.675201, 51.149685>,  <35.246418, 37.889290, 51.188538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582062, 37.675201, 51.149685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050719, 0.100803, -0.993613,
		0.541592, 0.838677, 0.057439,
		0.839110, -0.535219, -0.097131,
		35.833794, 37.514637, 51.120544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680382, 38.288666, 50.843815>,  <35.246418, 37.889290, 51.188538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680382, 38.288666, 50.843815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.823860, 37.921463, 50.776161>,  <35.909946, 37.701141, 50.735569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.823860, 37.921463, 50.776161>,  <35.680382, 38.288666, 50.843815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823860, 37.921463, 50.776161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076497, 0.209495, -0.974813,
		0.930315, 0.336721, 0.145369,
		0.358694, -0.918004, -0.169138,
		35.931469, 37.646061, 50.725418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321007, 38.411713, 50.431343>,  <35.680382, 38.288666, 50.843815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321007, 38.411713, 50.431343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.196262, 38.033890, 50.390240>,  <36.121418, 37.807198, 50.365578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.196262, 38.033890, 50.390240>,  <36.321007, 38.411713, 50.431343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196262, 38.033890, 50.390240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034750, 0.119414, -0.992236,
		0.949493, -0.305866, -0.070064,
		-0.311858, -0.944556, -0.102754,
		36.102707, 37.750523, 50.359413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698177, 38.121414, 49.894035>,  <36.321007, 38.411713, 50.431343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698177, 38.121414, 49.894035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.424145, 37.831753, 49.925678>,  <36.259724, 37.657955, 49.944664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.424145, 37.831753, 49.925678>,  <36.698177, 38.121414, 49.894035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424145, 37.831753, 49.925678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017823, -0.091895, -0.995609,
		0.728245, -0.683486, 0.050050,
		-0.685085, -0.724156, 0.079104,
		36.218620, 37.614506, 49.949409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949230, 37.566570, 49.544033>,  <36.698177, 38.121414, 49.894035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949230, 37.566570, 49.544033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.551567, 37.537361, 49.575806>,  <36.312969, 37.519836, 49.594868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.551567, 37.537361, 49.575806>,  <36.949230, 37.566570, 49.544033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551567, 37.537361, 49.575806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061927, -0.216657, -0.974282,
		0.088355, -0.973513, 0.210870,
		-0.994162, -0.073024, 0.079430,
		36.253319, 37.515453, 49.599636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785530, 36.863369, 49.409908>,  <36.949230, 37.566570, 49.544033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785530, 36.863369, 49.409908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.478821, 37.114151, 49.354805>,  <36.294796, 37.264622, 49.321743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.478821, 37.114151, 49.354805>,  <36.785530, 36.863369, 49.409908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478821, 37.114151, 49.354805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008332, -0.204860, -0.978756,
		-0.641859, -0.751635, 0.151858,
		-0.766777, 0.626958, -0.137754,
		36.248787, 37.302238, 49.313480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281631, 36.513657, 49.091362>,  <36.785530, 36.863369, 49.409908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281631, 36.513657, 49.091362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.176090, 36.888954, 49.001842>,  <36.112766, 37.114132, 48.948132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.176090, 36.888954, 49.001842>,  <36.281631, 36.513657, 49.091362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176090, 36.888954, 49.001842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066510, -0.249166, -0.966174,
		-0.962268, -0.240040, 0.128144,
		-0.263849, 0.938242, -0.223800,
		36.096935, 37.170425, 48.934704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756084, 36.511749, 48.500347>,  <36.281631, 36.513657, 49.091362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756084, 36.511749, 48.500347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.889412, 36.888832, 48.494656>,  <35.969406, 37.115082, 48.491241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.889412, 36.888832, 48.494656>,  <35.756084, 36.511749, 48.500347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889412, 36.888832, 48.494656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049730, -0.032655, -0.998229,
		-0.941502, 0.332019, -0.057765,
		0.333317, 0.942707, -0.014233,
		35.989407, 37.171646, 48.490387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587738, 36.704941, 47.837658>,  <35.756084, 36.511749, 48.500347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587738, 36.704941, 47.837658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.842789, 37.000443, 47.924999>,  <35.995819, 37.177742, 47.977402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.842789, 37.000443, 47.924999>,  <35.587738, 36.704941, 47.837658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842789, 37.000443, 47.924999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364222, -0.039348, -0.930481,
		-0.678802, 0.672829, -0.294158,
		0.637628, 0.738751, 0.218349,
		36.034077, 37.222069, 47.990505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953201, 36.947216, 47.430157>,  <35.587738, 36.704941, 47.837658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953201, 36.947216, 47.430157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.784111, 36.586754, 47.391754>,  <34.682655, 36.370476, 47.368713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.784111, 36.586754, 47.391754>,  <34.953201, 36.947216, 47.430157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784111, 36.586754, 47.391754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339319, 0.059157, 0.938810,
		-0.840335, 0.429439, -0.330787,
		-0.422730, -0.901156, -0.096005,
		34.657291, 36.316406, 47.362953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352596, 36.929642, 47.782284>,  <34.953201, 36.947216, 47.430157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352596, 36.929642, 47.782284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.412296, 36.534981, 47.756245>,  <34.448116, 36.298183, 47.740620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.412296, 36.534981, 47.756245>,  <34.352596, 36.929642, 47.782284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412296, 36.534981, 47.756245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275949, -0.104785, 0.955443,
		-0.949514, -0.124631, -0.287905,
		0.149246, -0.986655, -0.065103,
		34.457069, 36.238983, 47.736713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898705, 36.641296, 48.265213>,  <34.352596, 36.929642, 47.782284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898705, 36.641296, 48.265213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.134289, 36.326599, 48.191288>,  <34.275639, 36.137779, 48.146931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.134289, 36.326599, 48.191288>,  <33.898705, 36.641296, 48.265213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134289, 36.326599, 48.191288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227942, -0.381120, 0.895985,
		-0.775347, -0.485576, -0.403798,
		0.588965, -0.786742, -0.184817,
		34.310978, 36.090576, 48.135841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536842, 36.054451, 48.376450>,  <33.898705, 36.641296, 48.265213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536842, 36.054451, 48.376450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.917542, 35.938671, 48.417236>,  <34.145962, 35.869205, 48.441708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.917542, 35.938671, 48.417236>,  <33.536842, 36.054451, 48.376450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917542, 35.938671, 48.417236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231157, -0.457638, 0.858565,
		-0.201846, -0.840707, -0.502463,
		0.951748, -0.289446, 0.101964,
		34.203068, 35.851837, 48.447826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534718, 35.344395, 48.595592>,  <33.536842, 36.054451, 48.376450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534718, 35.344395, 48.595592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.898849, 35.475586, 48.696579>,  <34.117329, 35.554298, 48.757172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.898849, 35.475586, 48.696579>,  <33.534718, 35.344395, 48.595592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898849, 35.475586, 48.696579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136225, -0.338567, 0.931029,
		0.390828, -0.881933, -0.263528,
		0.910327, 0.327973, 0.252463,
		34.171947, 35.573978, 48.772316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667480, 34.819569, 49.083710>,  <33.534718, 35.344395, 48.595592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667480, 34.819569, 49.083710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.956924, 35.091797, 49.129692>,  <34.130592, 35.255135, 49.157280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.956924, 35.091797, 49.129692>,  <33.667480, 34.819569, 49.083710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956924, 35.091797, 49.129692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070277, -0.093032, 0.993180,
		0.686621, -0.726754, -0.019490,
		0.723611, 0.680569, 0.114952,
		34.174007, 35.295967, 49.164177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141415, 34.515099, 49.438923>,  <33.667480, 34.819569, 49.083710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141415, 34.515099, 49.438923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.209560, 34.903797, 49.504257>,  <34.250446, 35.137016, 49.543457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.209560, 34.903797, 49.504257>,  <34.141415, 34.515099, 49.438923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209560, 34.903797, 49.504257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083320, -0.179371, 0.980247,
		0.981853, -0.153388, -0.111524,
		0.170362, 0.971750, 0.163336,
		34.260670, 35.195324, 49.553257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518616, 33.906380, 49.482578>,  <34.141415, 34.515099, 49.438923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518616, 33.906380, 49.482578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.265171, 33.598370, 49.512482>,  <34.113102, 33.413563, 49.530422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.265171, 33.598370, 49.512482>,  <34.518616, 33.906380, 49.482578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265171, 33.598370, 49.512482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245685, 0.108645, -0.963242,
		0.733603, -0.628690, -0.258024,
		-0.633613, -0.770030, 0.074757,
		34.075089, 33.367359, 49.534908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766232, 33.484890, 48.993431>,  <34.518616, 33.906380, 49.482578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766232, 33.484890, 48.993431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.381733, 33.397388, 49.060539>,  <34.151031, 33.344887, 49.100803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.381733, 33.397388, 49.060539>,  <34.766232, 33.484890, 48.993431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381733, 33.397388, 49.060539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213751, 0.207097, -0.954684,
		0.174083, -0.953553, -0.245829,
		-0.961252, -0.218741, 0.167770,
		34.093357, 33.331760, 49.110870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470665, 33.020802, 48.418934>,  <34.766232, 33.484890, 48.993431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470665, 33.020802, 48.418934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.117073, 33.075901, 48.597645>,  <33.904919, 33.108963, 48.704872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.117073, 33.075901, 48.597645>,  <34.470665, 33.020802, 48.418934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117073, 33.075901, 48.597645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465150, -0.162736, -0.870145,
		-0.047158, -0.977006, 0.207931,
		-0.883975, 0.137753, 0.446780,
		33.851879, 33.117226, 48.731678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966774, 32.375389, 48.210999>,  <34.470665, 33.020802, 48.418934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966774, 32.375389, 48.210999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.809895, 32.735882, 48.284710>,  <33.715767, 32.952179, 48.328938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.809895, 32.735882, 48.284710>,  <33.966774, 32.375389, 48.210999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809895, 32.735882, 48.284710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374131, 0.026732, -0.926991,
		-0.840363, -0.432505, 0.326695,
		-0.392195, 0.901236, 0.184278,
		33.692238, 33.006252, 48.339993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401516, 32.315163, 47.762138>,  <33.966774, 32.375389, 48.210999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401516, 32.315163, 47.762138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.475479, 32.694107, 47.866684>,  <33.519855, 32.921474, 47.929409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.475479, 32.694107, 47.866684>,  <33.401516, 32.315163, 47.762138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475479, 32.694107, 47.866684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330157, 0.310370, -0.891441,
		-0.925639, 0.078540, 0.370168,
		0.184903, 0.947366, 0.261360,
		33.530949, 32.978317, 47.945091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691357, 32.682178, 47.693073>,  <33.401516, 32.315163, 47.762138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691357, 32.682178, 47.693073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.024532, 32.898720, 47.647194>,  <33.224438, 33.028645, 47.619667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.024532, 32.898720, 47.647194>,  <32.691357, 32.682178, 47.693073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024532, 32.898720, 47.647194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263285, 0.205384, -0.942602,
		-0.486722, 0.815325, 0.313602,
		0.832936, 0.541352, -0.114698,
		33.274414, 33.061127, 47.612785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519493, 33.335052, 47.385345>,  <32.691357, 32.682178, 47.693073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519493, 33.335052, 47.385345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.902382, 33.257160, 47.299740>,  <33.132114, 33.210423, 47.248375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.902382, 33.257160, 47.299740>,  <32.519493, 33.335052, 47.385345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902382, 33.257160, 47.299740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184306, 0.159842, -0.969784,
		0.223058, 0.967745, 0.117114,
		0.957223, -0.194733, -0.214015,
		33.189548, 33.198742, 47.235535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.776848, 33.655712, 52.176414> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.088173, 33.887207, 52.273819>,  <37.274967, 34.026104, 52.332260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.088173, 33.887207, 52.273819>,  <36.776848, 33.655712, 52.176414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088173, 33.887207, 52.273819> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467401, -0.275078, -0.840160,
		-0.419248, 0.767721, -0.484598,
		0.778311, 0.578737, 0.243507,
		37.321667, 34.060829, 52.346870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909119, 34.035477, 51.589302>,  <36.776848, 33.655712, 52.176414>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909119, 34.035477, 51.589302> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.259392, 34.053165, 51.781643>,  <37.469555, 34.063778, 51.897049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.259392, 34.053165, 51.781643>,  <36.909119, 34.035477, 51.589302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259392, 34.053165, 51.781643> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464024, -0.352615, -0.812616,
		0.133623, 0.934723, -0.329299,
		0.875687, 0.044218, 0.480851,
		37.522099, 34.066429, 51.925900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404690, 34.332851, 51.094410>,  <36.909119, 34.035477, 51.589302>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404690, 34.332851, 51.094410> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.629879, 34.139656, 51.362675>,  <37.764992, 34.023739, 51.523632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.629879, 34.139656, 51.362675>,  <37.404690, 34.332851, 51.094410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629879, 34.139656, 51.362675> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542232, -0.396560, -0.740759,
		0.623735, 0.780680, 0.038639,
		0.562974, -0.482989, 0.670658,
		37.798771, 33.994759, 51.563873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156010, 34.409615, 50.914024>,  <37.404690, 34.332851, 51.094410>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156010, 34.409615, 50.914024> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.182659, 34.101414, 51.167603>,  <38.198650, 33.916492, 51.319748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.182659, 34.101414, 51.167603>,  <38.156010, 34.409615, 50.914024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182659, 34.101414, 51.167603> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606901, -0.473017, -0.638691,
		0.791980, 0.427295, 0.436104,
		0.066625, -0.770503, 0.633946,
		38.202648, 33.870262, 51.357788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885754, 34.374111, 50.988571>,  <38.156010, 34.409615, 50.914024>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885754, 34.374111, 50.988571> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.719501, 34.023766, 51.086643>,  <38.619751, 33.813557, 51.145485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.719501, 34.023766, 51.086643>,  <38.885754, 34.374111, 50.988571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719501, 34.023766, 51.086643> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555323, -0.457858, -0.694250,
		0.720327, -0.152397, 0.676687,
		-0.415628, -0.875866, 0.245177,
		38.594814, 33.761005, 51.160198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417534, 33.866970, 51.006615>,  <38.885754, 34.374111, 50.988571>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417534, 33.866970, 51.006615> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.100101, 33.630772, 50.947910>,  <38.909641, 33.489052, 50.912689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.100101, 33.630772, 50.947910>,  <39.417534, 33.866970, 51.006615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100101, 33.630772, 50.947910> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438658, -0.388071, -0.810543,
		0.421670, -0.707611, 0.566993,
		-0.793583, -0.590497, -0.146762,
		38.862026, 33.453621, 50.903881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695004, 33.244610, 50.777164>,  <39.417534, 33.866970, 51.006615>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695004, 33.244610, 50.777164> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.314453, 33.220314, 50.656372>,  <39.086121, 33.205738, 50.583897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.314453, 33.220314, 50.656372>,  <39.695004, 33.244610, 50.777164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314453, 33.220314, 50.656372> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298335, -0.425674, -0.854282,
		-0.076660, -0.902836, 0.423096,
		-0.951378, -0.060735, -0.301980,
		39.029041, 33.202095, 50.565777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651844, 32.571167, 50.634674>,  <39.695004, 33.244610, 50.777164>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651844, 32.571167, 50.634674> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.349773, 32.729679, 50.425800>,  <39.168533, 32.824787, 50.300476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.349773, 32.729679, 50.425800>,  <39.651844, 32.571167, 50.634674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349773, 32.729679, 50.425800> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299340, -0.500221, -0.812511,
		-0.583190, -0.769897, 0.259130,
		-0.755172, 0.396280, -0.522185,
		39.123222, 32.848564, 50.269146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483025, 32.094528, 50.207935>,  <39.651844, 32.571167, 50.634674>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483025, 32.094528, 50.207935> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.304310, 32.391369, 50.008072>,  <39.197079, 32.569473, 49.888153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.304310, 32.391369, 50.008072>,  <39.483025, 32.094528, 50.207935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.304310, 32.391369, 50.008072> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209798, -0.456018, -0.864889,
		-0.869692, -0.491251, 0.048052,
		-0.446789, 0.742105, -0.499659,
		39.170273, 32.614002, 49.858173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115948, 31.802393, 49.669373>,  <39.483025, 32.094528, 50.207935>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115948, 31.802393, 49.669373> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.135502, 32.182865, 49.547478>,  <39.147236, 32.411148, 49.474342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.135502, 32.182865, 49.547478>,  <39.115948, 31.802393, 49.669373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135502, 32.182865, 49.547478> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028287, -0.306295, -0.951517,
		-0.998404, 0.037897, -0.041880,
		0.048888, 0.951182, -0.304734,
		39.150169, 32.468220, 49.456059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755890, 31.705761, 49.080265>,  <39.115948, 31.802393, 49.669373>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755890, 31.705761, 49.080265> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.979233, 32.031319, 49.015999>,  <39.113239, 32.226654, 48.977440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.979233, 32.031319, 49.015999>,  <38.755890, 31.705761, 49.080265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979233, 32.031319, 49.015999> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040623, -0.220252, -0.974597,
		-0.828605, 0.537648, -0.156042,
		0.558358, 0.813894, -0.160661,
		39.146740, 32.275486, 48.967800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391102, 32.139000, 48.578018>,  <38.755890, 31.705761, 49.080265>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391102, 32.139000, 48.578018> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.775749, 32.247139, 48.596760>,  <39.006538, 32.312023, 48.608006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.775749, 32.247139, 48.596760>,  <38.391102, 32.139000, 48.578018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775749, 32.247139, 48.596760> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074533, -0.093032, -0.992870,
		-0.264061, 0.958257, -0.109611,
		0.961622, 0.270348, 0.046855,
		39.064236, 32.328243, 48.610817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619537, 32.096672, 48.684101>,  <38.391102, 32.139000, 48.578018>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619537, 32.096672, 48.684101> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.371235, 31.827963, 48.522415>,  <37.222256, 31.666739, 48.425404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.371235, 31.827963, 48.522415>,  <37.619537, 32.096672, 48.684101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371235, 31.827963, 48.522415> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264153, -0.306220, 0.914578,
		-0.738165, 0.674502, 0.012637,
		-0.620754, -0.671772, -0.404213,
		37.185009, 31.626431, 48.401150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958984, 32.121574, 49.070187>,  <37.619537, 32.096672, 48.684101>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958984, 32.121574, 49.070187> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.947762, 31.767042, 48.885303>,  <36.941029, 31.554323, 48.774372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.947762, 31.767042, 48.885303>,  <36.958984, 32.121574, 49.070187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947762, 31.767042, 48.885303> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323434, -0.429466, 0.843179,
		-0.945835, 0.173153, -0.274618,
		-0.028060, -0.886328, -0.462207,
		36.939342, 31.501144, 48.746643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329887, 31.943581, 49.148979>,  <36.958984, 32.121574, 49.070187>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329887, 31.943581, 49.148979> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.534748, 31.610518, 49.064713>,  <36.657665, 31.410679, 49.014153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.534748, 31.610518, 49.064713>,  <36.329887, 31.943581, 49.148979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534748, 31.610518, 49.064713> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418018, -0.455917, 0.785749,
		-0.750308, -0.314359, -0.581564,
		0.512152, -0.832658, -0.210670,
		36.688393, 31.360720, 49.001511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867569, 31.461100, 49.055302>,  <36.329887, 31.943581, 49.148979>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867569, 31.461100, 49.055302> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.205513, 31.265301, 49.141651>,  <36.408279, 31.147821, 49.193462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.205513, 31.265301, 49.141651>,  <35.867569, 31.461100, 49.055302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205513, 31.265301, 49.141651> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426940, -0.373742, 0.823431,
		-0.322378, -0.787855, -0.524744,
		0.844864, -0.489490, 0.215881,
		36.458973, 31.118452, 49.206413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681705, 30.816093, 49.328362>,  <35.867569, 31.461100, 49.055302>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681705, 30.816093, 49.328362> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.058548, 30.848797, 49.458443>,  <36.284653, 30.868418, 49.536491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.058548, 30.848797, 49.458443>,  <35.681705, 30.816093, 49.328362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058548, 30.848797, 49.458443> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224561, -0.566410, 0.792939,
		0.249029, -0.820058, -0.515256,
		0.942103, 0.081758, 0.325205,
		36.341179, 30.873323, 49.556004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770058, 30.100523, 49.497036>,  <35.681705, 30.816093, 49.328362>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770058, 30.100523, 49.497036> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.047844, 30.316381, 49.687405>,  <36.214516, 30.445896, 49.801624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.047844, 30.316381, 49.687405>,  <35.770058, 30.100523, 49.497036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047844, 30.316381, 49.687405> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144908, -0.542989, 0.827143,
		0.704787, -0.643384, -0.298885,
		0.694462, 0.539649, 0.475923,
		36.256184, 30.478275, 49.830181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189949, 29.604422, 49.967278>,  <35.770058, 30.100523, 49.497036>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189949, 29.604422, 49.967278> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.247917, 29.975254, 50.105560>,  <36.282700, 30.197754, 50.188530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.247917, 29.975254, 50.105560>,  <36.189949, 29.604422, 49.967278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247917, 29.975254, 50.105560> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161175, -0.322612, 0.932708,
		0.976227, -0.190891, 0.102669,
		0.144924, 0.927082, 0.345710,
		36.291393, 30.253378, 50.209274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573750, 29.615534, 50.535484>,  <36.189949, 29.604422, 49.967278>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573750, 29.615534, 50.535484> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.419266, 29.980560, 50.589249>,  <36.326576, 30.199575, 50.621506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.419266, 29.980560, 50.589249>,  <36.573750, 29.615534, 50.535484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419266, 29.980560, 50.589249> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178236, -0.216801, 0.959807,
		0.905028, 0.346727, 0.246383,
		-0.386207, 0.912567, 0.134412,
		36.303402, 30.254330, 50.629574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845356, 29.833696, 51.287796>,  <36.573750, 29.615534, 50.535484>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845356, 29.833696, 51.287796> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.546257, 30.075939, 51.178898>,  <36.366798, 30.221285, 51.113560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.546257, 30.075939, 51.178898>,  <36.845356, 29.833696, 51.287796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546257, 30.075939, 51.178898> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365688, -0.033385, 0.930139,
		0.554211, 0.795062, 0.246427,
		-0.747745, 0.605609, -0.272242,
		36.321934, 30.257622, 51.097225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870792, 30.381479, 51.792183>,  <36.845356, 29.833696, 51.287796>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870792, 30.381479, 51.792183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.503033, 30.381424, 51.634853>,  <36.282375, 30.381392, 51.540455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.503033, 30.381424, 51.634853>,  <36.870792, 30.381479, 51.792183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503033, 30.381424, 51.634853> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391186, 0.104542, 0.914355,
		0.040994, 0.994520, -0.096169,
		-0.919398, -0.000137, -0.393328,
		36.227215, 30.381382, 51.516853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675621, 31.029823, 51.918491>,  <36.870792, 30.381479, 51.792183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675621, 31.029823, 51.918491> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.371986, 30.773060, 51.875149>,  <36.189804, 30.619001, 51.849144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.371986, 30.773060, 51.875149>,  <36.675621, 31.029823, 51.918491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371986, 30.773060, 51.875149> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247441, 0.130541, 0.960069,
		-0.602129, 0.755589, -0.257926,
		-0.759087, -0.641907, -0.108361,
		36.144260, 30.580488, 51.842640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205185, 31.342463, 52.186192>,  <36.675621, 31.029823, 51.918491>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205185, 31.342463, 52.186192> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.054951, 30.971869, 52.195698>,  <35.964809, 30.749512, 52.201401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.054951, 30.971869, 52.195698>,  <36.205185, 31.342463, 52.186192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054951, 30.971869, 52.195698> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279233, 0.137576, 0.950317,
		-0.883724, 0.350284, -0.310376,
		-0.375581, -0.926485, 0.023768,
		35.942276, 30.693924, 52.202827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537441, 31.460281, 52.371914>,  <36.205185, 31.342463, 52.186192>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537441, 31.460281, 52.371914> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.647591, 31.085789, 52.459217>,  <35.713680, 30.861094, 52.511600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.647591, 31.085789, 52.459217>,  <35.537441, 31.460281, 52.371914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647591, 31.085789, 52.459217> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398538, 0.095428, 0.912174,
		-0.874835, -0.338175, -0.346845,
		0.275376, -0.936233, 0.218260,
		35.730202, 30.804918, 52.524696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932354, 31.294237, 52.669449>,  <35.537441, 31.460281, 52.371914>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932354, 31.294237, 52.669449> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.249973, 31.071976, 52.768024>,  <35.440544, 30.938618, 52.827171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.249973, 31.071976, 52.768024>,  <34.932354, 31.294237, 52.669449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249973, 31.071976, 52.768024> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107961, 0.270063, 0.956771,
		-0.598189, -0.786329, 0.154454,
		0.794049, -0.555655, 0.246442,
		35.488190, 30.905279, 52.841957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386269, 31.442362, 52.208305>,  <34.932354, 31.294237, 52.669449>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386269, 31.442362, 52.208305> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.277004, 31.823400, 52.261883>,  <34.211445, 32.052025, 52.294029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.277004, 31.823400, 52.261883>,  <34.386269, 31.442362, 52.208305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277004, 31.823400, 52.261883> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060921, 0.121833, -0.990679,
		-0.960037, -0.278776, 0.024753,
		-0.273162, 0.952597, 0.133947,
		34.195057, 32.109180, 52.302067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747658, 31.615696, 51.801746>,  <34.386269, 31.442362, 52.208305>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747658, 31.615696, 51.801746> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.887386, 31.985146, 51.864853>,  <33.971226, 32.206814, 51.902718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.887386, 31.985146, 51.864853>,  <33.747658, 31.615696, 51.801746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887386, 31.985146, 51.864853> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187413, 0.233839, -0.954042,
		-0.918068, 0.303703, 0.254785,
		0.349324, 0.923625, 0.157762,
		33.992184, 32.262234, 51.912182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255890, 32.084160, 51.379852>,  <33.747658, 31.615696, 51.801746>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255890, 32.084160, 51.379852> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.593132, 32.289631, 51.443489>,  <33.795479, 32.412914, 51.481670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.593132, 32.289631, 51.443489>,  <33.255890, 32.084160, 51.379852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593132, 32.289631, 51.443489> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084718, 0.419028, -0.904012,
		-0.531031, 0.748701, 0.396803,
		0.843107, 0.513675, 0.159088,
		33.846066, 32.443733, 51.491215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056427, 32.806629, 51.235638>,  <33.255890, 32.084160, 51.379852>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056427, 32.806629, 51.235638> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.453526, 32.774494, 51.199837>,  <33.691784, 32.755215, 51.178356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.453526, 32.774494, 51.199837>,  <33.056427, 32.806629, 51.235638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453526, 32.774494, 51.199837> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054973, 0.358791, -0.931798,
		0.106968, 0.929954, 0.351771,
		0.992742, -0.080335, -0.089501,
		33.751347, 32.750393, 51.172985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210068, 33.435371, 50.853054>,  <33.056427, 32.806629, 51.235638>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210068, 33.435371, 50.853054> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.546539, 33.226974, 50.795097>,  <33.748421, 33.101936, 50.760323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.546539, 33.226974, 50.795097>,  <33.210068, 33.435371, 50.853054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546539, 33.226974, 50.795097> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131860, 0.457463, -0.879398,
		0.524438, 0.720623, 0.453505,
		0.841176, -0.520989, -0.144890,
		33.798893, 33.070679, 50.751629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694988, 33.854000, 50.503372>,  <33.210068, 33.435371, 50.853054>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694988, 33.854000, 50.503372> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.858669, 33.495968, 50.432499>,  <33.956879, 33.281151, 50.389977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.858669, 33.495968, 50.432499>,  <33.694988, 33.854000, 50.503372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858669, 33.495968, 50.432499> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100461, 0.237201, -0.966252,
		0.906898, 0.377589, 0.186983,
		0.409198, -0.895077, -0.177184,
		33.981430, 33.227444, 50.379345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288418, 33.960602, 50.185410>,  <33.694988, 33.854000, 50.503372>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288418, 33.960602, 50.185410> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.160778, 33.592384, 50.095272>,  <34.084194, 33.371456, 50.041191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.160778, 33.592384, 50.095272>,  <34.288418, 33.960602, 50.185410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160778, 33.592384, 50.095272> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061996, 0.216988, -0.974204,
		0.945690, -0.324841, -0.012172,
		-0.319102, -0.920540, -0.225342,
		34.065048, 33.316223, 50.027668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635235, 34.576756, 50.046864>,  <34.288418, 33.960602, 50.185410>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635235, 34.576756, 50.046864> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.459351, 34.935246, 50.023441>,  <34.353821, 35.150341, 50.009388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.459351, 34.935246, 50.023441>,  <34.635235, 34.576756, 50.046864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459351, 34.935246, 50.023441> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192319, 0.157636, 0.968589,
		0.877307, 0.414638, -0.241676,
		-0.439710, 0.896229, -0.058553,
		34.327438, 35.204113, 50.005875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165081, 35.177170, 50.320946>,  <34.635235, 34.576756, 50.046864>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165081, 35.177170, 50.320946> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.782398, 35.292763, 50.334766>,  <34.552788, 35.362118, 50.343060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.782398, 35.292763, 50.334766>,  <35.165081, 35.177170, 50.320946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782398, 35.292763, 50.334766> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102150, 0.222230, 0.969628,
		0.272530, 0.931182, -0.242130,
		-0.956709, 0.288986, 0.034556,
		34.495384, 35.379459, 50.345135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178898, 35.676750, 50.800926>,  <35.165081, 35.177170, 50.320946>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178898, 35.676750, 50.800926> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.790512, 35.583683, 50.778706>,  <34.557480, 35.527843, 50.765373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.790512, 35.583683, 50.778706>,  <35.178898, 35.676750, 50.800926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790512, 35.583683, 50.778706> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093684, 0.156189, 0.983274,
		-0.220101, 0.959932, -0.173452,
		-0.970968, -0.232670, -0.055553,
		34.499222, 35.513882, 50.762039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853855, 36.119720, 51.215836>,  <35.178898, 35.676750, 50.800926>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853855, 36.119720, 51.215836> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.589340, 35.819717, 51.210373>,  <34.430630, 35.639717, 51.207096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.589340, 35.819717, 51.210373>,  <34.853855, 36.119720, 51.215836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589340, 35.819717, 51.210373> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105978, 0.075382, 0.991507,
		-0.742606, 0.657122, -0.129334,
		-0.661290, -0.750006, -0.013661,
		34.390953, 35.594715, 51.206276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290905, 36.418228, 51.495674>,  <34.853855, 36.119720, 51.215836>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290905, 36.418228, 51.495674> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.256458, 36.022018, 51.538460>,  <34.235790, 35.784290, 51.564133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.256458, 36.022018, 51.538460>,  <34.290905, 36.418228, 51.495674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256458, 36.022018, 51.538460> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128197, 0.117488, 0.984765,
		-0.988003, 0.071092, -0.137100,
		-0.086117, -0.990526, 0.106965,
		34.230625, 35.724861, 51.570549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748569, 36.373531, 51.838474>,  <34.290905, 36.418228, 51.495674>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748569, 36.373531, 51.838474> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.935051, 36.026302, 51.906719>,  <34.046940, 35.817966, 51.947666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.935051, 36.026302, 51.906719>,  <33.748569, 36.373531, 51.838474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935051, 36.026302, 51.906719> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015243, 0.184937, 0.982632,
		-0.884547, -0.460705, 0.072986,
		0.466201, -0.868072, 0.170608,
		34.074913, 35.765881, 51.957901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547562, 36.232788, 52.447338>,  <33.748569, 36.373531, 51.838474>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547562, 36.232788, 52.447338> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.847050, 35.968800, 52.422497>,  <34.026741, 35.810406, 52.407593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.847050, 35.968800, 52.422497>,  <33.547562, 36.232788, 52.447338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847050, 35.968800, 52.422497> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084649, 0.002268, 0.996408,
		-0.657459, -0.751288, 0.057564,
		0.748720, -0.659971, -0.062104,
		34.071667, 35.770809, 52.403866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322224, 35.581989, 52.818367>,  <33.547562, 36.232788, 52.447338>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322224, 35.581989, 52.818367> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.722164, 35.584229, 52.811825>,  <33.962128, 35.585571, 52.807899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.722164, 35.584229, 52.811825>,  <33.322224, 35.581989, 52.818367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722164, 35.584229, 52.811825> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016926, -0.124353, 0.992094,
		0.003517, -0.992222, -0.124430,
		0.999851, 0.005595, -0.016357,
		34.022118, 35.585907, 52.806919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612904, 34.996750, 53.217106>,  <33.322224, 35.581989, 52.818367>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612904, 34.996750, 53.217106> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.877029, 35.296829, 53.203293>,  <34.035503, 35.476875, 53.195007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.877029, 35.296829, 53.203293>,  <33.612904, 34.996750, 53.217106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877029, 35.296829, 53.203293> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067226, -0.013251, 0.997650,
		0.747977, -0.661080, -0.059182,
		0.660311, 0.750198, -0.034530,
		34.075123, 35.521889, 53.192932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.347385, 35.452213, 37.712582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607151, 35.693848, 37.897339>,  <37.763008, 35.838829, 38.008194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607151, 35.693848, 37.897339>,  <37.347385, 35.452213, 37.712582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607151, 35.693848, 37.897339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439247, -0.197840, 0.876311,
		0.620746, -0.771973, 0.136862,
		0.649412, 0.604083, 0.461895,
		37.801975, 35.875072, 38.035908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526459, 35.060909, 38.329441>,  <37.347385, 35.452213, 37.712582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526459, 35.060909, 38.329441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577969, 35.452019, 38.395622>,  <37.608875, 35.686684, 38.435329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577969, 35.452019, 38.395622>,  <37.526459, 35.060909, 38.329441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577969, 35.452019, 38.395622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497050, -0.080729, 0.863958,
		0.858113, -0.193497, 0.475607,
		0.128779, 0.977774, 0.165452,
		37.616604, 35.745350, 38.445259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772434, 35.181820, 39.011337>,  <37.526459, 35.060909, 38.329441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772434, 35.181820, 39.011337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.605415, 35.529888, 38.906681>,  <37.505203, 35.738731, 38.843887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.605415, 35.529888, 38.906681>,  <37.772434, 35.181820, 39.011337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605415, 35.529888, 38.906681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529021, 0.001306, 0.848608,
		0.738777, 0.492745, 0.459794,
		-0.417547, 0.870173, -0.261637,
		37.480152, 35.790939, 38.828190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897789, 35.527702, 39.550442>,  <37.772434, 35.181820, 39.011337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897789, 35.527702, 39.550442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590839, 35.692104, 39.353580>,  <37.406670, 35.790745, 39.235466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590839, 35.692104, 39.353580>,  <37.897789, 35.527702, 39.550442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590839, 35.692104, 39.353580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536857, 0.007848, 0.843637,
		0.350604, 0.911598, 0.214631,
		-0.767373, 0.411008, -0.492149,
		37.360626, 35.815407, 39.205936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756699, 36.123489, 39.937988>,  <37.897789, 35.527702, 39.550442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756699, 36.123489, 39.937988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419250, 36.049240, 39.736450>,  <37.216782, 36.004692, 39.615528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419250, 36.049240, 39.736450>,  <37.756699, 36.123489, 39.937988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419250, 36.049240, 39.736450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531238, 0.152065, 0.833464,
		-0.078094, 0.970783, -0.226894,
		-0.843616, -0.185623, -0.503842,
		37.166164, 35.993553, 39.585297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265785, 36.603554, 40.220024>,  <37.756699, 36.123489, 39.937988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265785, 36.603554, 40.220024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067051, 36.314224, 40.028214>,  <36.947811, 36.140625, 39.913128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067051, 36.314224, 40.028214>,  <37.265785, 36.603554, 40.220024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067051, 36.314224, 40.028214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598523, -0.114525, 0.792878,
		-0.628428, 0.680943, -0.376026,
		-0.496840, -0.723326, -0.479530,
		36.917999, 36.097225, 39.884354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612949, 36.683853, 40.376163>,  <37.265785, 36.603554, 40.220024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612949, 36.683853, 40.376163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580116, 36.304512, 40.253605>,  <36.560417, 36.076908, 40.180069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580116, 36.304512, 40.253605>,  <36.612949, 36.683853, 40.376163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580116, 36.304512, 40.253605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723982, -0.154543, 0.672284,
		-0.684918, 0.277010, -0.673909,
		-0.082081, -0.948357, -0.306400,
		36.555492, 36.020004, 40.161686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822124, 36.596310, 40.304550>,  <36.612949, 36.683853, 40.376163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822124, 36.596310, 40.304550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029716, 36.259804, 40.365135>,  <36.154270, 36.057899, 40.401485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029716, 36.259804, 40.365135>,  <35.822124, 36.596310, 40.304550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029716, 36.259804, 40.365135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720279, -0.334978, 0.607444,
		-0.460283, -0.424345, -0.779789,
		0.518978, -0.841262, 0.151462,
		36.185410, 36.007427, 40.410576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300213, 36.016914, 40.198078>,  <35.822124, 36.596310, 40.304550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300213, 36.016914, 40.198078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.613960, 35.865788, 40.394855>,  <35.802208, 35.775112, 40.512924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.613960, 35.865788, 40.394855>,  <35.300213, 36.016914, 40.198078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613960, 35.865788, 40.394855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617310, -0.397819, 0.678725,
		-0.060731, -0.836057, -0.545271,
		0.784372, -0.377821, 0.491947,
		35.849274, 35.752441, 40.542439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064705, 35.478954, 40.559826>,  <35.300213, 36.016914, 40.198078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064705, 35.478954, 40.559826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415199, 35.537479, 40.743481>,  <35.625496, 35.572594, 40.853672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415199, 35.537479, 40.743481>,  <35.064705, 35.478954, 40.559826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415199, 35.537479, 40.743481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387309, -0.353064, 0.851667,
		0.286716, -0.924087, -0.252698,
		0.876233, 0.146315, 0.459137,
		35.678070, 35.581375, 40.881222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073338, 34.958260, 41.028751>,  <35.064705, 35.478954, 40.559826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073338, 34.958260, 41.028751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317467, 35.243961, 41.165779>,  <35.463943, 35.415382, 41.247997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317467, 35.243961, 41.165779>,  <35.073338, 34.958260, 41.028751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317467, 35.243961, 41.165779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458639, -0.033986, 0.887972,
		0.645877, -0.699064, 0.306841,
		0.610322, 0.714250, 0.342569,
		35.500565, 35.458237, 41.268551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326084, 34.631538, 41.544350>,  <35.073338, 34.958260, 41.028751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326084, 34.631538, 41.544350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.375999, 35.023026, 41.609512>,  <35.405949, 35.257919, 41.648609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.375999, 35.023026, 41.609512>,  <35.326084, 34.631538, 41.544350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375999, 35.023026, 41.609512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406430, -0.099364, 0.908263,
		0.905120, -0.179550, 0.385382,
		0.124785, 0.978718, 0.162911,
		35.413437, 35.316643, 41.658386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456577, 33.940380, 41.196571>,  <35.326084, 34.631538, 41.544350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456577, 33.940380, 41.196571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057053, 33.920925, 41.197208>,  <34.817337, 33.909252, 41.197590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057053, 33.920925, 41.197208>,  <35.456577, 33.940380, 41.196571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057053, 33.920925, 41.197208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008848, -0.213703, -0.976859,
		0.047851, -0.975687, 0.213881,
		-0.998815, -0.048636, 0.001593,
		34.757408, 33.906334, 41.197685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366573, 33.343166, 40.744106>,  <35.456577, 33.940380, 41.196571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366573, 33.343166, 40.744106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.025116, 33.551197, 40.755478>,  <34.820240, 33.676018, 40.762299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.025116, 33.551197, 40.755478>,  <35.366573, 33.343166, 40.744106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025116, 33.551197, 40.755478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206722, -0.288207, -0.934988,
		-0.478076, -0.804023, 0.353538,
		-0.853645, 0.520080, 0.028424,
		34.769024, 33.707222, 40.764004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804901, 32.898235, 40.491390>,  <35.366573, 33.343166, 40.744106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804901, 32.898235, 40.491390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669167, 33.272549, 40.453091>,  <34.587727, 33.497135, 40.430111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669167, 33.272549, 40.453091>,  <34.804901, 32.898235, 40.491390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669167, 33.272549, 40.453091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277127, -0.196720, -0.940479,
		-0.898917, -0.292604, 0.326085,
		-0.339336, 0.935780, -0.095747,
		34.567368, 33.553284, 40.424366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138134, 32.791153, 40.136116>,  <34.804901, 32.898235, 40.491390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138134, 32.791153, 40.136116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195179, 33.185040, 40.096142>,  <34.229404, 33.421371, 40.072159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195179, 33.185040, 40.096142>,  <34.138134, 32.791153, 40.136116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195179, 33.185040, 40.096142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471224, -0.021241, -0.881758,
		-0.870408, 0.172840, 0.460995,
		0.142611, 0.984721, -0.099935,
		34.237961, 33.480457, 40.066162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406895, 33.132233, 40.015766>,  <34.138134, 32.791153, 40.136116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406895, 33.132233, 40.015766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704235, 33.342159, 39.849880>,  <33.882641, 33.468117, 39.750347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704235, 33.342159, 39.849880>,  <33.406895, 33.132233, 40.015766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704235, 33.342159, 39.849880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536221, 0.096915, -0.838495,
		-0.399863, 0.845681, 0.353460,
		0.743355, 0.524815, -0.414719,
		33.927242, 33.499603, 39.725464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108147, 33.715321, 39.738510>,  <33.406895, 33.132233, 40.015766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108147, 33.715321, 39.738510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471622, 33.702297, 39.572029>,  <33.689709, 33.694481, 39.472141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471622, 33.702297, 39.572029>,  <33.108147, 33.715321, 39.738510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471622, 33.702297, 39.572029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410724, 0.108772, -0.905248,
		0.074746, 0.993533, 0.085467,
		0.908691, -0.032560, -0.416198,
		33.744228, 33.692528, 39.447170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103642, 34.170887, 39.250755>,  <33.108147, 33.715321, 39.738510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103642, 34.170887, 39.250755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395618, 33.935596, 39.111519>,  <33.570805, 33.794422, 39.027977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395618, 33.935596, 39.111519>,  <33.103642, 34.170887, 39.250755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395618, 33.935596, 39.111519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413669, 0.025214, -0.910078,
		0.544111, 0.808301, -0.224927,
		0.729946, -0.588229, -0.348088,
		33.614601, 33.759129, 39.007092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053944, 34.393585, 38.545341>,  <33.103642, 34.170887, 39.250755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053944, 34.393585, 38.545341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296875, 34.075840, 38.540531>,  <33.442635, 33.885193, 38.537643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296875, 34.075840, 38.540531>,  <33.053944, 34.393585, 38.545341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296875, 34.075840, 38.540531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245095, -0.172941, -0.953950,
		0.755701, 0.582307, -0.299726,
		0.607326, -0.794362, -0.012029,
		33.479073, 33.837532, 38.536922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312077, 34.441303, 37.947750>,  <33.053944, 34.393585, 38.545341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312077, 34.441303, 37.947750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387779, 34.054150, 38.013943>,  <33.433201, 33.821857, 38.053658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387779, 34.054150, 38.013943>,  <33.312077, 34.441303, 37.947750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387779, 34.054150, 38.013943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215119, -0.205300, -0.954765,
		0.958074, 0.145100, -0.247064,
		0.189259, -0.967883, 0.165478,
		33.444557, 33.763786, 38.063587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636971, 34.124813, 37.313641>,  <33.312077, 34.441303, 37.947750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636971, 34.124813, 37.313641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507706, 33.803040, 37.513020>,  <33.430145, 33.609974, 37.632648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507706, 33.803040, 37.513020>,  <33.636971, 34.124813, 37.313641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507706, 33.803040, 37.513020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284956, -0.419551, -0.861845,
		0.902422, -0.420553, -0.093645,
		-0.323162, -0.804433, 0.498451,
		33.410755, 33.561710, 37.662556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945232, 33.583389, 36.885658>,  <33.636971, 34.124813, 37.313641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945232, 33.583389, 36.885658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649174, 33.437580, 37.111687>,  <33.471539, 33.350094, 37.247303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649174, 33.437580, 37.111687>,  <33.945232, 33.583389, 36.885658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649174, 33.437580, 37.111687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445753, -0.363199, -0.818163,
		0.503472, -0.857443, 0.106333,
		-0.740149, -0.364524, 0.565068,
		33.427128, 33.328224, 37.281208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973392, 32.835556, 36.611404>,  <33.945232, 33.583389, 36.885658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973392, 32.835556, 36.611404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615231, 32.905411, 36.775234>,  <33.400333, 32.947323, 36.873531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615231, 32.905411, 36.775234>,  <33.973392, 32.835556, 36.611404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615231, 32.905411, 36.775234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415135, -0.660007, -0.626141,
		0.160978, -0.730680, 0.663470,
		-0.895404, 0.174635, 0.409578,
		33.346611, 32.957802, 36.898109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354771, 32.231113, 36.828220>,  <33.973392, 32.835556, 36.611404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354771, 32.231113, 36.828220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606071, 32.354679, 36.542599>,  <34.756851, 32.428818, 36.371227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606071, 32.354679, 36.542599>,  <34.354771, 32.231113, 36.828220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606071, 32.354679, 36.542599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251632, 0.787780, 0.562213,
		0.736192, -0.532890, 0.417192,
		0.628253, 0.308918, -0.714050,
		34.794548, 32.447353, 36.328384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106773, 32.131100, 37.005074>,  <34.354771, 32.231113, 36.828220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106773, 32.131100, 37.005074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981632, 32.442776, 36.787823>,  <34.906548, 32.629780, 36.657471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981632, 32.442776, 36.787823>,  <35.106773, 32.131100, 37.005074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981632, 32.442776, 36.787823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241430, 0.618293, 0.747948,
		0.918604, 0.102871, -0.381555,
		-0.312855, 0.779187, -0.543130,
		34.887775, 32.676533, 36.624886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193478, 32.308079, 37.720493>,  <35.106773, 32.131100, 37.005074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193478, 32.308079, 37.720493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226662, 32.260277, 38.116238>,  <35.246571, 32.231598, 38.353683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226662, 32.260277, 38.116238>,  <35.193478, 32.308079, 37.720493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226662, 32.260277, 38.116238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338490, -0.930382, -0.140762,
		0.937306, 0.346567, -0.036733,
		0.082959, -0.119503, 0.989362,
		35.251549, 32.224426, 38.413048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517437, 31.694559, 37.772861>,  <35.193478, 32.308079, 37.720493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517437, 31.694559, 37.772861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398037, 31.764290, 38.148201>,  <35.326397, 31.806128, 38.373405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398037, 31.764290, 38.148201>,  <35.517437, 31.694559, 37.772861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398037, 31.764290, 38.148201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223710, -0.943007, 0.246356,
		0.927820, 0.283457, 0.242491,
		-0.298502, 0.174327, 0.938353,
		35.308487, 31.816587, 38.429707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222439, 31.967897, 37.919891>,  <35.517437, 31.694559, 37.772861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222439, 31.967897, 37.919891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468666, 32.255276, 38.049450>,  <36.616402, 32.427704, 38.127186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468666, 32.255276, 38.049450>,  <36.222439, 31.967897, 37.919891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468666, 32.255276, 38.049450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153777, -0.512591, 0.844750,
		0.772934, -0.470195, -0.426016,
		0.615569, 0.718448, 0.323893,
		36.653336, 32.470810, 38.146618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854446, 31.668209, 38.187286>,  <36.222439, 31.967897, 37.919891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854446, 31.668209, 38.187286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.747490, 32.016079, 38.353260>,  <36.683315, 32.224800, 38.452843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.747490, 32.016079, 38.353260>,  <36.854446, 31.668209, 38.187286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747490, 32.016079, 38.353260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153166, -0.386775, 0.909365,
		0.951336, 0.306713, -0.029783,
		-0.267395, 0.869674, 0.414931,
		36.667271, 32.276981, 38.477737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236183, 31.674366, 38.828281>,  <36.854446, 31.668209, 38.187286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236183, 31.674366, 38.828281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.021194, 32.002792, 38.905197>,  <36.892200, 32.199848, 38.951347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.021194, 32.002792, 38.905197>,  <37.236183, 31.674366, 38.828281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021194, 32.002792, 38.905197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150033, -0.131281, 0.979926,
		0.829828, 0.555532, -0.052627,
		-0.537472, 0.821066, 0.192289,
		36.859955, 32.249111, 38.962883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611809, 32.120678, 39.346882>,  <37.236183, 31.674366, 38.828281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611809, 32.120678, 39.346882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220215, 32.198963, 39.369808>,  <36.985260, 32.245934, 39.383564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220215, 32.198963, 39.369808>,  <37.611809, 32.120678, 39.346882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220215, 32.198963, 39.369808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071957, 0.068523, 0.995051,
		0.190816, 0.978265, -0.081166,
		-0.978985, 0.195712, 0.057317,
		36.926517, 32.257675, 39.387005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636681, 32.656570, 39.821487>,  <37.611809, 32.120678, 39.346882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636681, 32.656570, 39.821487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257568, 32.531460, 39.796551>,  <37.030102, 32.456394, 39.781590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257568, 32.531460, 39.796551>,  <37.636681, 32.656570, 39.821487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257568, 32.531460, 39.796551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073159, 0.022966, 0.997056,
		-0.310426, 0.949549, -0.044649,
		-0.947778, -0.312778, -0.062339,
		36.973236, 32.437626, 39.777847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388699, 33.011684, 40.417549>,  <37.636681, 32.656570, 39.821487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388699, 33.011684, 40.417549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137299, 32.719845, 40.309715>,  <36.986458, 32.544743, 40.245014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137299, 32.719845, 40.309715>,  <37.388699, 33.011684, 40.417549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137299, 32.719845, 40.309715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276686, -0.114212, 0.954149,
		-0.726933, 0.674274, -0.130087,
		-0.628501, -0.729596, -0.269587,
		36.948750, 32.500965, 40.228840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632710, 33.164356, 40.676346>,  <37.388699, 33.011684, 40.417549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632710, 33.164356, 40.676346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.713612, 32.775829, 40.626331>,  <36.762154, 32.542713, 40.596325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.713612, 32.775829, 40.626331>,  <36.632710, 33.164356, 40.676346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713612, 32.775829, 40.626331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149335, -0.156767, 0.976281,
		-0.967879, -0.178789, -0.176759,
		0.202259, -0.971318, -0.125032,
		36.774288, 32.484432, 40.588821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267212, 32.861137, 41.235584>,  <36.632710, 33.164356, 40.676346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267212, 32.861137, 41.235584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500332, 32.558086, 41.118046>,  <36.640205, 32.376255, 41.047523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500332, 32.558086, 41.118046>,  <36.267212, 32.861137, 41.235584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500332, 32.558086, 41.118046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003547, -0.363970, 0.931404,
		-0.812608, -0.541780, -0.214809,
		0.582800, -0.757628, -0.293843,
		36.675171, 32.330799, 41.029892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892838, 32.161964, 41.303871>,  <36.267212, 32.861137, 41.235584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892838, 32.161964, 41.303871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.291634, 32.136051, 41.320919>,  <36.530910, 32.120502, 41.331146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.291634, 32.136051, 41.320919>,  <35.892838, 32.161964, 41.303871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291634, 32.136051, 41.320919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062428, -0.344584, 0.936678,
		-0.045992, -0.936518, -0.347590,
		0.996990, -0.064779, 0.042616,
		36.590729, 32.116619, 41.333702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019527, 31.601854, 41.666573>,  <35.892838, 32.161964, 41.303871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019527, 31.601854, 41.666573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383202, 31.768328, 41.671825>,  <36.601406, 31.868212, 41.674976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383202, 31.768328, 41.671825>,  <36.019527, 31.601854, 41.666573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383202, 31.768328, 41.671825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036478, -0.111032, 0.993147,
		0.414789, -0.902477, -0.116130,
		0.909186, 0.416183, 0.013134,
		36.655956, 31.893183, 41.675766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327927, 31.290632, 42.206802>,  <36.019527, 31.601854, 41.666573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327927, 31.290632, 42.206802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578457, 31.598370, 42.156490>,  <36.728775, 31.783012, 42.126301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578457, 31.598370, 42.156490>,  <36.327927, 31.290632, 42.206802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578457, 31.598370, 42.156490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107278, 0.074756, 0.991415,
		0.772143, -0.634444, -0.035713,
		0.626327, 0.769346, -0.125784,
		36.766354, 31.829174, 42.118755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904144, 31.115513, 42.544441>,  <36.327927, 31.290632, 42.206802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904144, 31.115513, 42.544441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.896687, 31.515072, 42.527225>,  <36.892212, 31.754808, 42.516895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.896687, 31.515072, 42.527225>,  <36.904144, 31.115513, 42.544441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896687, 31.515072, 42.527225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208718, 0.045987, 0.976894,
		0.977798, 0.009232, -0.209346,
		-0.018646, 0.998899, -0.043039,
		36.891094, 31.814741, 42.514313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445694, 31.347771, 43.054893>,  <36.904144, 31.115513, 42.544441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445694, 31.347771, 43.054893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.226608, 31.674900, 42.984261>,  <37.095158, 31.871178, 42.941879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.226608, 31.674900, 42.984261>,  <37.445694, 31.347771, 43.054893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226608, 31.674900, 42.984261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284880, 0.380732, 0.879708,
		0.786674, 0.431521, -0.441512,
		-0.547710, 0.817822, -0.176581,
		37.062294, 31.920246, 42.931286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794109, 31.981983, 43.426983>,  <37.445694, 31.347771, 43.054893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794109, 31.981983, 43.426983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400169, 32.043411, 43.394768>,  <37.163807, 32.080269, 43.375439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400169, 32.043411, 43.394768>,  <37.794109, 31.981983, 43.426983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400169, 32.043411, 43.394768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020389, 0.358670, 0.933242,
		0.172205, 0.920745, -0.350105,
		-0.984850, 0.153570, -0.080538,
		37.104713, 32.089481, 43.370605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772385, 32.593075, 43.785591>,  <37.794109, 31.981983, 43.426983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772385, 32.593075, 43.785591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389011, 32.481060, 43.763763>,  <37.158985, 32.413853, 43.750668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389011, 32.481060, 43.763763>,  <37.772385, 32.593075, 43.785591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389011, 32.481060, 43.763763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135256, 0.277573, 0.951136,
		-0.251203, 0.918985, -0.303913,
		-0.958438, -0.280034, -0.054571,
		37.101479, 32.397049, 43.747391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343327, 33.232983, 44.011784>,  <37.772385, 32.593075, 43.785591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343327, 33.232983, 44.011784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.097164, 32.919060, 44.041039>,  <36.949467, 32.730705, 44.058594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.097164, 32.919060, 44.041039>,  <37.343327, 33.232983, 44.011784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097164, 32.919060, 44.041039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288092, 0.310335, 0.905922,
		-0.733672, 0.536442, -0.417079,
		-0.615409, -0.784807, 0.073140,
		36.912540, 32.683617, 44.062981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709103, 33.505268, 44.334347>,  <37.343327, 33.232983, 44.011784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709103, 33.505268, 44.334347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733688, 33.109940, 44.390121>,  <36.748440, 32.872742, 44.423588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733688, 33.109940, 44.390121>,  <36.709103, 33.505268, 44.334347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733688, 33.109940, 44.390121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102552, 0.132708, 0.985835,
		-0.992827, -0.074895, -0.093197,
		0.061466, -0.988321, 0.139436,
		36.752129, 32.813442, 44.431953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270855, 33.402916, 44.994427>,  <36.709103, 33.505268, 44.334347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270855, 33.402916, 44.994427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467503, 33.063072, 44.918041>,  <36.585491, 32.859165, 44.872211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467503, 33.063072, 44.918041>,  <36.270855, 33.402916, 44.994427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467503, 33.063072, 44.918041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081029, -0.173709, 0.981458,
		-0.867031, -0.497979, -0.016555,
		0.491621, -0.849613, -0.190962,
		36.614990, 32.808189, 44.860752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917271, 32.980515, 45.387325>,  <36.270855, 33.402916, 44.994427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917271, 32.980515, 45.387325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.273354, 32.804047, 45.341900>,  <36.487003, 32.698166, 45.314644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.273354, 32.804047, 45.341900>,  <35.917271, 32.980515, 45.387325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273354, 32.804047, 45.341900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049758, -0.153624, 0.986876,
		-0.452824, -0.884178, -0.114806,
		0.890211, -0.441168, -0.113559,
		36.540417, 32.671696, 45.307831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744419, 32.343246, 45.626553>,  <35.917271, 32.980515, 45.387325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744419, 32.343246, 45.626553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137756, 32.413300, 45.646030>,  <36.373756, 32.455330, 45.657719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137756, 32.413300, 45.646030>,  <35.744419, 32.343246, 45.626553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137756, 32.413300, 45.646030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007173, -0.305074, 0.952301,
		0.181635, -0.936087, -0.301248,
		0.983340, 0.175132, 0.048698,
		36.432758, 32.465839, 45.660641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931862, 31.770479, 46.112453>,  <35.744419, 32.343246, 45.626553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931862, 31.770479, 46.112453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252483, 32.008961, 46.094337>,  <36.444855, 32.152050, 46.083466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252483, 32.008961, 46.094337>,  <35.931862, 31.770479, 46.112453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252483, 32.008961, 46.094337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261998, -0.282125, 0.922909,
		0.537466, -0.751628, -0.382343,
		0.801553, 0.596205, -0.045292,
		36.492950, 32.187820, 46.080750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492081, 31.364328, 46.175194>,  <35.931862, 31.770479, 46.112453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492081, 31.364328, 46.175194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610939, 31.730431, 46.284016>,  <36.682255, 31.950092, 46.349308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610939, 31.730431, 46.284016>,  <36.492081, 31.364328, 46.175194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610939, 31.730431, 46.284016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407893, -0.379294, 0.830517,
		0.863323, -0.135817, -0.486032,
		0.297148, 0.915254, 0.272054,
		36.700085, 32.005005, 46.365631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216141, 31.381277, 46.183582>,  <36.492081, 31.364328, 46.175194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216141, 31.381277, 46.183582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079086, 31.654886, 46.441177>,  <36.996853, 31.819052, 46.595734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079086, 31.654886, 46.441177>,  <37.216141, 31.381277, 46.183582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079086, 31.654886, 46.441177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393663, -0.517861, 0.759506,
		0.853014, 0.513745, -0.091839,
		-0.342632, 0.684022, 0.643985,
		36.976295, 31.860092, 46.634373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784328, 31.521442, 46.636082>,  <37.216141, 31.381277, 46.183582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784328, 31.521442, 46.636082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.455441, 31.651737, 46.822781>,  <37.258110, 31.729914, 46.934799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.455441, 31.651737, 46.822781>,  <37.784328, 31.521442, 46.636082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455441, 31.651737, 46.822781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289181, -0.467249, 0.835496,
		0.490240, 0.821934, 0.289983,
		-0.822216, 0.325736, 0.466751,
		37.208775, 31.749458, 46.962807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959621, 31.797043, 47.341084>,  <37.784328, 31.521442, 46.636082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959621, 31.797043, 47.341084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575115, 31.687141, 47.349895>,  <37.344414, 31.621201, 47.355183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575115, 31.687141, 47.349895>,  <37.959621, 31.797043, 47.341084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575115, 31.687141, 47.349895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097266, -0.263326, 0.959791,
		-0.257905, 0.924753, 0.279850,
		-0.961262, -0.274755, 0.022034,
		37.286736, 31.604715, 47.356506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952766, 32.014938, 48.035763>,  <37.959621, 31.797043, 47.341084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952766, 32.014938, 48.035763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.612484, 31.815790, 47.968315>,  <37.408314, 31.696302, 47.927845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.612484, 31.815790, 47.968315>,  <37.952766, 32.014938, 48.035763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612484, 31.815790, 47.968315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017466, -0.293842, 0.955694,
		-0.525358, 0.815956, 0.241277,
		-0.850702, -0.497867, -0.168624,
		37.357273, 31.666430, 47.917728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424587, 32.668270, 47.819351>,  <37.952766, 32.014938, 48.035763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424587, 32.668270, 47.819351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785297, 32.550255, 47.945690>,  <39.001724, 32.479446, 48.021492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785297, 32.550255, 47.945690>,  <38.424587, 32.668270, 47.819351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785297, 32.550255, 47.945690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369368, 0.146603, -0.917646,
		0.224436, 0.944172, 0.241180,
		0.901774, -0.295037, 0.315844,
		39.055828, 32.461742, 48.040443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934734, 33.170853, 47.559608>,  <38.424587, 32.668270, 47.819351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934734, 33.170853, 47.559608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140636, 32.832455, 47.615204>,  <39.264179, 32.629417, 47.648563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140636, 32.832455, 47.615204>,  <38.934734, 33.170853, 47.559608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140636, 32.832455, 47.615204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177281, -0.053582, -0.982701,
		0.838806, 0.530494, 0.122397,
		0.514759, -0.845993, 0.138991,
		39.295063, 32.578655, 47.656902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487759, 33.219711, 47.160831>,  <38.934734, 33.170853, 47.559608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487759, 33.219711, 47.160831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495716, 32.821194, 47.194309>,  <39.500492, 32.582085, 47.214397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495716, 32.821194, 47.194309>,  <39.487759, 33.219711, 47.160831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495716, 32.821194, 47.194309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273153, -0.075113, -0.959033,
		0.961765, 0.041943, 0.270646,
		0.019895, -0.996292, 0.083697,
		39.501686, 32.522305, 47.219418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204563, 33.018913, 46.763535>,  <39.487759, 33.219711, 47.160831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204563, 33.018913, 46.763535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.974834, 32.692318, 46.787216>,  <39.836998, 32.496361, 46.801426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.974834, 32.692318, 46.787216>,  <40.204563, 33.018913, 46.763535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974834, 32.692318, 46.787216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361680, -0.317960, -0.876407,
		0.734401, -0.481923, 0.477918,
		-0.574319, -0.816488, 0.059208,
		39.802540, 32.447372, 46.804977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539436, 32.543770, 46.516350>,  <40.204563, 33.018913, 46.763535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539436, 32.543770, 46.516350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.177399, 32.376011, 46.488327>,  <39.960175, 32.275356, 46.471512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.177399, 32.376011, 46.488327>,  <40.539436, 32.543770, 46.516350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.177399, 32.376011, 46.488327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228669, -0.341177, -0.911761,
		0.358489, -0.841251, 0.404701,
		-0.905095, -0.419399, -0.070059,
		39.905869, 32.250191, 46.467308>
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
