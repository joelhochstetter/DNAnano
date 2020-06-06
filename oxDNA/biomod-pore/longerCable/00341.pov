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
	<24.500229, 35.378258, 34.957466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.176302, 35.194103, 34.812004>,  <23.981947, 35.083611, 34.724728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.176302, 35.194103, 34.812004>,  <24.500229, 35.378258, 34.957466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.176302, 35.194103, 34.812004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542403, 0.823757, 0.164999,
		0.223602, 0.330867, -0.916804,
		-0.809816, -0.460383, -0.363656,
		23.933357, 35.055988, 34.702908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.185545, 35.018360, 35.537243>,  <24.500229, 35.378258, 34.957466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.185545, 35.018360, 35.537243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.567528, 34.942154, 35.628250>,  <24.796717, 34.896431, 35.682854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.567528, 34.942154, 35.628250>,  <24.185545, 35.018360, 35.537243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.567528, 34.942154, 35.628250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192663, 0.981180, 0.012932,
		-0.225697, 0.031484, 0.973689,
		0.954956, -0.190513, 0.227515,
		24.854015, 34.884998, 35.696503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.278696, 35.414745, 36.063438>,  <24.185545, 35.018360, 35.537243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.278696, 35.414745, 36.063438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.643250, 35.336857, 35.918407>,  <24.861980, 35.290123, 35.831387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.643250, 35.336857, 35.918407>,  <24.278696, 35.414745, 36.063438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.643250, 35.336857, 35.918407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318152, 0.892207, 0.320542,
		0.261080, -0.407492, 0.875093,
		0.911382, -0.194725, -0.362582,
		24.916664, 35.278439, 35.809631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.814301, 35.546604, 36.610718>,  <24.278696, 35.414745, 36.063438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.814301, 35.546604, 36.610718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.990097, 35.574715, 36.252522>,  <25.095575, 35.591579, 36.037601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.990097, 35.574715, 36.252522>,  <24.814301, 35.546604, 36.610718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.990097, 35.574715, 36.252522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374766, 0.891675, 0.253903,
		0.816332, -0.447188, 0.365548,
		0.439492, 0.070274, -0.895493,
		25.121944, 35.595798, 35.983875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.484900, 35.827507, 36.746880>,  <24.814301, 35.546604, 36.610718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.484900, 35.827507, 36.746880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.460749, 35.894089, 36.353199>,  <25.446259, 35.934036, 36.116993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.460749, 35.894089, 36.353199>,  <25.484900, 35.827507, 36.746880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.460749, 35.894089, 36.353199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478357, 0.870224, 0.117832,
		0.876087, -0.463683, -0.132168,
		-0.060380, 0.166455, -0.984199,
		25.442635, 35.944027, 36.057938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.154049, 35.778744, 36.453026>,  <25.484900, 35.827507, 36.746880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.154049, 35.778744, 36.453026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.897995, 36.044491, 36.298702>,  <25.744362, 36.203938, 36.206108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.897995, 36.044491, 36.298702>,  <26.154049, 35.778744, 36.453026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.897995, 36.044491, 36.298702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644562, 0.737697, 0.200855,
		0.418048, -0.120100, -0.900451,
		-0.640137, 0.664364, -0.385805,
		25.705954, 36.243801, 36.182961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.583313, 36.166351, 36.003696>,  <26.154049, 35.778744, 36.453026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.583313, 36.166351, 36.003696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270649, 36.379639, 36.133114>,  <26.083050, 36.507610, 36.210762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270649, 36.379639, 36.133114>,  <26.583313, 36.166351, 36.003696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.270649, 36.379639, 36.133114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599479, 0.785476, 0.153789,
		-0.172129, 0.314166, -0.933633,
		-0.781662, 0.533222, 0.323540,
		26.036150, 36.539604, 36.230175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.532352, 36.788322, 35.525200>,  <26.583313, 36.166351, 36.003696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.532352, 36.788322, 35.525200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.393202, 36.828506, 35.898056>,  <26.309711, 36.852615, 36.121769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.393202, 36.828506, 35.898056>,  <26.532352, 36.788322, 35.525200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.393202, 36.828506, 35.898056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622560, 0.768148, 0.149557,
		-0.701001, 0.632342, -0.329759,
		-0.347875, 0.100456, 0.932144,
		26.288839, 36.858643, 36.177700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.324219, 37.523666, 35.640274>,  <26.532352, 36.788322, 35.525200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.324219, 37.523666, 35.640274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.392776, 37.397945, 36.013763>,  <26.433912, 37.322514, 36.237858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.392776, 37.397945, 36.013763>,  <26.324219, 37.523666, 35.640274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.392776, 37.397945, 36.013763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606831, 0.780304, 0.151268,
		-0.776131, 0.540685, 0.324469,
		0.171397, -0.314302, 0.933722,
		26.444195, 37.303654, 36.293880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.546625, 38.122963, 36.027775>,  <26.324219, 37.523666, 35.640274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.546625, 38.122963, 36.027775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.649662, 37.820717, 36.268673>,  <26.711485, 37.639370, 36.413212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.649662, 37.820717, 36.268673>,  <26.546625, 38.122963, 36.027775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.649662, 37.820717, 36.268673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724500, 0.563435, 0.397039,
		-0.639332, 0.334051, 0.692578,
		0.257592, -0.755613, 0.602242,
		26.726940, 37.594032, 36.449345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.675613, 38.374088, 36.659981>,  <26.546625, 38.122963, 36.027775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.675613, 38.374088, 36.659981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.883770, 38.033131, 36.639488>,  <27.008663, 37.828556, 36.627193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.883770, 38.033131, 36.639488>,  <26.675613, 38.374088, 36.659981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.883770, 38.033131, 36.639488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763939, 0.437901, 0.473962,
		-0.381565, -0.285786, 0.879053,
		0.520390, -0.852390, -0.051236,
		27.039886, 37.777412, 36.624119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.181047, 38.455292, 37.178223>,  <26.675613, 38.374088, 36.659981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.181047, 38.455292, 37.178223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.311029, 38.149246, 36.955872>,  <27.389019, 37.965618, 36.822460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.311029, 38.149246, 36.955872>,  <27.181047, 38.455292, 37.178223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.311029, 38.149246, 36.955872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938789, 0.332044, 0.091767,
		0.114363, -0.551672, 0.826184,
		0.324954, -0.765118, -0.555877,
		27.408516, 37.919712, 36.789108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.902966, 38.799355, 36.938179>,  <27.181047, 38.455292, 37.178223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.902966, 38.799355, 36.938179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.193804, 38.551750, 37.056942>,  <28.368307, 38.403187, 37.128201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.193804, 38.551750, 37.056942>,  <27.902966, 38.799355, 36.938179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.193804, 38.551750, 37.056942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537419, -0.782306, -0.314924,
		0.427218, 0.069414, -0.901480,
		0.727094, -0.619014, 0.296911,
		28.411932, 38.366047, 37.146015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.826002, 38.286762, 36.493572>,  <27.902966, 38.799355, 36.938179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.826002, 38.286762, 36.493572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.039955, 38.110348, 36.781845>,  <28.168327, 38.004498, 36.954811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.039955, 38.110348, 36.781845>,  <27.826002, 38.286762, 36.493572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.039955, 38.110348, 36.781845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247649, -0.897329, -0.365336,
		0.807818, 0.016936, -0.589189,
		0.534884, -0.441037, 0.720684,
		28.200420, 37.978035, 36.998051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.296827, 37.747925, 36.201824>,  <27.826002, 38.286762, 36.493572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.296827, 37.747925, 36.201824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.164154, 37.685341, 36.573956>,  <28.084551, 37.647789, 36.797234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.164154, 37.685341, 36.573956>,  <28.296827, 37.747925, 36.201824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.164154, 37.685341, 36.573956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791228, -0.490905, -0.364652,
		0.513755, -0.857049, 0.039028,
		-0.331684, -0.156461, 0.930326,
		28.064650, 37.638401, 36.853054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.020264, 37.056923, 36.171276>,  <28.296827, 37.747925, 36.201824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.020264, 37.056923, 36.171276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.827675, 37.275021, 36.445763>,  <27.712122, 37.405880, 36.610455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.827675, 37.275021, 36.445763>,  <28.020264, 37.056923, 36.171276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.827675, 37.275021, 36.445763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873586, -0.361919, -0.325366,
		0.070954, -0.756127, 0.650567,
		-0.481470, 0.545240, 0.686221,
		27.683233, 37.438591, 36.651630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.541752, 36.603279, 36.572693>,  <28.020264, 37.056923, 36.171276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.541752, 36.603279, 36.572693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.411011, 36.980206, 36.601543>,  <27.332565, 37.206364, 36.618855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.411011, 36.980206, 36.601543>,  <27.541752, 36.603279, 36.572693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.411011, 36.980206, 36.601543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916920, -0.297703, -0.265765,
		-0.228962, -0.153002, 0.961336,
		-0.326855, 0.942318, 0.072128,
		27.312954, 37.262901, 36.623180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.103247, 36.532101, 37.072109>,  <27.541752, 36.603279, 36.572693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.103247, 36.532101, 37.072109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.993170, 36.859215, 36.869923>,  <26.927124, 37.055485, 36.748611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.993170, 36.859215, 36.869923>,  <27.103247, 36.532101, 37.072109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.993170, 36.859215, 36.869923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858546, -0.445642, -0.253579,
		-0.432629, 0.364179, 0.824746,
		-0.275193, 0.817789, -0.505462,
		26.910612, 37.104549, 36.718285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.575983, 36.965416, 37.497787>,  <27.103247, 36.532101, 37.072109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.575983, 36.965416, 37.497787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.555902, 37.064671, 37.110817>,  <26.543854, 37.124222, 36.878635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.555902, 37.064671, 37.110817>,  <26.575983, 36.965416, 37.497787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.555902, 37.064671, 37.110817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924601, -0.377783, -0.048920,
		-0.377615, 0.892021, 0.248406,
		-0.050206, 0.248149, -0.967420,
		26.540842, 37.139111, 36.820591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.841501, 37.024948, 37.430981>,  <26.575983, 36.965416, 37.497787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.841501, 37.024948, 37.430981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.986187, 36.948795, 37.065922>,  <26.072998, 36.903103, 36.846886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.986187, 36.948795, 37.065922>,  <25.841501, 37.024948, 37.430981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.986187, 36.948795, 37.065922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796490, -0.571871, -0.196385,
		-0.484526, 0.797946, -0.358492,
		0.361716, -0.190382, -0.912643,
		26.094702, 36.891682, 36.792130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.316067, 37.234253, 36.975307>,  <25.841501, 37.024948, 37.430981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.316067, 37.234253, 36.975307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.557140, 36.959793, 36.812351>,  <25.701784, 36.795116, 36.714577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.557140, 36.959793, 36.812351>,  <25.316067, 37.234253, 36.975307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.557140, 36.959793, 36.812351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796775, -0.545482, -0.259999,
		-0.043823, 0.481293, -0.875464,
		0.602686, -0.686153, -0.407387,
		25.737946, 36.753948, 36.690136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.948647, 37.435802, 36.390892>,  <25.316067, 37.234253, 36.975307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.948647, 37.435802, 36.390892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.282074, 37.227257, 36.317856>,  <25.482130, 37.102127, 36.274033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.282074, 37.227257, 36.317856>,  <24.948647, 37.435802, 36.390892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.282074, 37.227257, 36.317856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517079, -0.620074, -0.590032,
		0.194403, 0.586246, -0.786462,
		0.833569, -0.521367, -0.182591,
		25.532145, 37.070847, 36.263077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.864408, 37.139217, 35.727280>,  <24.948647, 37.435802, 36.390892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.864408, 37.139217, 35.727280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.148457, 36.892437, 35.862988>,  <25.318886, 36.744370, 35.944412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.148457, 36.892437, 35.862988>,  <24.864408, 37.139217, 35.727280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.148457, 36.892437, 35.862988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448659, -0.767869, -0.457254,
		0.542621, 0.172486, -0.822078,
		0.710118, -0.616948, 0.339274,
		25.361492, 36.707352, 35.964771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.297159, 36.781925, 35.233429>,  <24.864408, 37.139217, 35.727280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.297159, 36.781925, 35.233429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.258158, 36.562588, 35.565647>,  <25.234756, 36.430984, 35.764980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.258158, 36.562588, 35.565647>,  <25.297159, 36.781925, 35.233429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.258158, 36.562588, 35.565647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322632, -0.772043, -0.547593,
		0.941489, -0.321354, -0.101635,
		-0.097505, -0.548344, 0.830549,
		25.228907, 36.398087, 35.814812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.278326, 36.143650, 34.796284>,  <25.297159, 36.781925, 35.233429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.278326, 36.143650, 34.796284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.366974, 36.082596, 35.181530>,  <25.420162, 36.045963, 35.412678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.366974, 36.082596, 35.181530>,  <25.278326, 36.143650, 34.796284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.366974, 36.082596, 35.181530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249564, -0.963658, -0.095293,
		0.942657, -0.219240, -0.251659,
		0.221621, -0.152634, 0.963113,
		25.433460, 36.036804, 35.470463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.741295, 35.628174, 34.822906>,  <25.278326, 36.143650, 34.796284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.741295, 35.628174, 34.822906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.555946, 35.635128, 35.177303>,  <25.444736, 35.639301, 35.389942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.555946, 35.635128, 35.177303>,  <25.741295, 35.628174, 34.822906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.555946, 35.635128, 35.177303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288032, -0.948476, -0.132030,
		0.838048, -0.316373, 0.444504,
		-0.463372, 0.017384, 0.885994,
		25.416935, 35.640343, 35.443100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.097410, 35.042656, 35.257408>,  <25.741295, 35.628174, 34.822906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.097410, 35.042656, 35.257408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.734167, 35.112389, 35.409698>,  <25.516222, 35.154228, 35.501072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.734167, 35.112389, 35.409698>,  <26.097410, 35.042656, 35.257408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.734167, 35.112389, 35.409698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262448, -0.945432, -0.193077,
		0.326288, -0.275255, 0.904307,
		-0.908106, 0.174335, 0.380724,
		25.461735, 35.164688, 35.523914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.003292, 34.699726, 35.868149>,  <26.097410, 35.042656, 35.257408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.003292, 34.699726, 35.868149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.656364, 34.743378, 35.673893>,  <25.448208, 34.769569, 35.557339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.656364, 34.743378, 35.673893>,  <26.003292, 34.699726, 35.868149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.656364, 34.743378, 35.673893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057762, -0.991145, -0.119563,
		-0.494387, -0.075648, 0.865944,
		-0.867320, 0.109129, -0.485640,
		25.396168, 34.776115, 35.528202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.375551, 34.167038, 35.471584>,  <26.003292, 34.699726, 35.868149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.375551, 34.167038, 35.471584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.701155, 34.232586, 35.694489>,  <26.896517, 34.271915, 35.828232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.701155, 34.232586, 35.694489>,  <26.375551, 34.167038, 35.471584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.701155, 34.232586, 35.694489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109868, -0.898625, 0.424738,
		0.570368, -0.406966, -0.713484,
		0.814009, 0.163868, 0.557259,
		26.945356, 34.281746, 35.861668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.839598, 33.725410, 35.261124>,  <26.375551, 34.167038, 35.471584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.839598, 33.725410, 35.261124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.818346, 33.848431, 35.641144>,  <26.805595, 33.922241, 35.869156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.818346, 33.848431, 35.641144>,  <26.839598, 33.725410, 35.261124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.818346, 33.848431, 35.641144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199106, -0.935550, 0.291724,
		0.978537, -0.173661, 0.110941,
		-0.053130, 0.307552, 0.950047,
		26.802406, 33.940697, 35.926159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.266245, 33.304546, 35.717224>,  <26.839598, 33.725410, 35.261124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.266245, 33.304546, 35.717224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.003487, 33.462444, 35.974178>,  <26.845831, 33.557182, 36.128353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.003487, 33.462444, 35.974178>,  <27.266245, 33.304546, 35.717224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.003487, 33.462444, 35.974178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034352, -0.866781, 0.497504,
		0.753199, 0.304741, 0.582945,
		-0.656895, 0.394745, 0.642390,
		26.806417, 33.580868, 36.166897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.523067, 33.208576, 36.382786>,  <27.266245, 33.304546, 35.717224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.523067, 33.208576, 36.382786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.123947, 33.225391, 36.362270>,  <26.884476, 33.235481, 36.349960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.123947, 33.225391, 36.362270>,  <27.523067, 33.208576, 36.382786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.123947, 33.225391, 36.362270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061562, -0.874753, 0.480642,
		-0.024658, 0.482741, 0.875416,
		-0.997799, 0.042041, -0.051288,
		26.824608, 33.238003, 36.346886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.205940, 33.048870, 37.065239>,  <27.523067, 33.208576, 36.382786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.205940, 33.048870, 37.065239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.921658, 32.978401, 36.792809>,  <26.751089, 32.936119, 36.629349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.921658, 32.978401, 36.792809>,  <27.205940, 33.048870, 37.065239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.921658, 32.978401, 36.792809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098971, -0.933468, 0.344734,
		-0.696494, 0.312411, 0.645984,
		-0.710704, -0.176171, -0.681075,
		26.708447, 32.925549, 36.588486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.823761, 32.708401, 37.431595>,  <27.205940, 33.048870, 37.065239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.823761, 32.708401, 37.431595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740620, 32.614784, 37.051697>,  <26.690735, 32.558613, 36.823757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740620, 32.614784, 37.051697>,  <26.823761, 32.708401, 37.431595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.740620, 32.614784, 37.051697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004181, -0.970733, 0.240126,
		-0.978151, 0.053882, 0.200793,
		-0.207855, -0.234040, -0.949748,
		26.678263, 32.544571, 36.766773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.306070, 33.206554, 37.288197>,  <26.823761, 32.708401, 37.431595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.306070, 33.206554, 37.288197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.527401, 33.407784, 37.022640>,  <26.660200, 33.528522, 36.863308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.527401, 33.407784, 37.022640>,  <26.306070, 33.206554, 37.288197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.527401, 33.407784, 37.022640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358641, 0.575472, 0.734989,
		0.751801, -0.644786, 0.138002,
		0.553327, 0.503072, -0.663887,
		26.693399, 33.558704, 36.823475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.118601, 32.848557, 37.948143>,  <26.306070, 33.206554, 37.288197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.118601, 32.848557, 37.948143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.494389, 32.767639, 38.058762>,  <26.719860, 32.719090, 38.125134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.494389, 32.767639, 38.058762>,  <26.118601, 32.848557, 37.948143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.494389, 32.767639, 38.058762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174418, -0.412369, -0.894164,
		0.294923, 0.888273, -0.352124,
		0.939467, -0.202292, 0.276548,
		26.776228, 32.706951, 38.141727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.178934, 32.266281, 37.361629>,  <26.118601, 32.848557, 37.948143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.178934, 32.266281, 37.361629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.386259, 32.174290, 37.032154>,  <26.510654, 32.119095, 36.834469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.386259, 32.174290, 37.032154>,  <26.178934, 32.266281, 37.361629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.386259, 32.174290, 37.032154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096361, -0.972734, 0.210957,
		-0.849744, -0.029970, -0.526342,
		0.518313, -0.229978, -0.823688,
		26.541754, 32.105297, 36.785049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.722475, 31.793865, 37.020741>,  <26.178934, 32.266281, 37.361629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.722475, 31.793865, 37.020741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.083584, 31.714647, 36.868015>,  <26.300249, 31.667116, 36.776382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.083584, 31.714647, 36.868015>,  <25.722475, 31.793865, 37.020741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.083584, 31.714647, 36.868015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186137, -0.980148, 0.068287,
		-0.387754, 0.009422, -0.921715,
		0.902773, -0.198043, -0.381810,
		26.354416, 31.655233, 36.753471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.605791, 31.416607, 36.446415>,  <25.722475, 31.793865, 37.020741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.605791, 31.416607, 36.446415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.964106, 31.329182, 36.601231>,  <26.179094, 31.276728, 36.694118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.964106, 31.329182, 36.601231>,  <25.605791, 31.416607, 36.446415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.964106, 31.329182, 36.601231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321617, -0.919752, 0.224984,
		0.306807, -0.326016, -0.894194,
		0.895786, -0.218562, 0.387038,
		26.232841, 31.263613, 36.717342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.879128, 30.806368, 36.188545>,  <25.605791, 31.416607, 36.446415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.879128, 30.806368, 36.188545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.065773, 30.865288, 36.537388>,  <26.177759, 30.900640, 36.746693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.065773, 30.865288, 36.537388>,  <25.879128, 30.806368, 36.188545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.065773, 30.865288, 36.537388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073383, -0.976186, 0.204144,
		0.881412, -0.159255, -0.444691,
		0.466612, 0.147302, 0.872110,
		26.205757, 30.909479, 36.799019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.504385, 30.364975, 36.314846>,  <25.879128, 30.806368, 36.188545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.504385, 30.364975, 36.314846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.288164, 30.459133, 36.637928>,  <26.158432, 30.515627, 36.831779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.288164, 30.459133, 36.637928>,  <26.504385, 30.364975, 36.314846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.288164, 30.459133, 36.637928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232887, -0.964410, 0.125204,
		0.808436, -0.120426, 0.576133,
		-0.540551, 0.235393, 0.807709,
		26.125999, 30.529751, 36.880241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.724720, 30.159967, 36.952103>,  <26.504385, 30.364975, 36.314846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.724720, 30.159967, 36.952103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.334272, 30.169928, 37.038422>,  <26.100004, 30.175903, 37.090214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.334272, 30.169928, 37.038422>,  <26.724720, 30.159967, 36.952103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.334272, 30.169928, 37.038422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022500, -0.976475, 0.214455,
		0.216066, 0.214189, 0.952596,
		-0.976120, 0.024903, 0.215802,
		26.041437, 30.177399, 37.103161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.136656, 30.656452, 37.454472>,  <26.724720, 30.159967, 36.952103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.136656, 30.656452, 37.454472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.895433, 30.711327, 37.140144>,  <26.750700, 30.744251, 36.951550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.895433, 30.711327, 37.140144>,  <27.136656, 30.656452, 37.454472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.895433, 30.711327, 37.140144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394097, 0.907722, -0.143971,
		0.693549, -0.396509, -0.601473,
		-0.603056, 0.137188, -0.785813,
		26.714516, 30.752483, 36.904400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.464733, 31.007654, 36.938786>,  <27.136656, 30.656452, 37.454472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.464733, 31.007654, 36.938786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.078302, 31.081879, 36.866943>,  <26.846443, 31.126413, 36.823837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.078302, 31.081879, 36.866943>,  <27.464733, 31.007654, 36.938786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.078302, 31.081879, 36.866943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240316, 0.900605, -0.362159,
		0.094553, -0.393037, -0.914648,
		-0.966078, 0.185561, -0.179608,
		26.788479, 31.137547, 36.813061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.466619, 31.374460, 36.184875>,  <27.464733, 31.007654, 36.938786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.466619, 31.374460, 36.184875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.120937, 31.476814, 36.358158>,  <26.913528, 31.538227, 36.462128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.120937, 31.476814, 36.358158>,  <27.466619, 31.374460, 36.184875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.120937, 31.476814, 36.358158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049803, 0.900292, -0.432429,
		-0.500668, -0.352132, -0.790781,
		-0.864206, 0.255886, 0.433210,
		26.861675, 31.553579, 36.488121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.966295, 31.709169, 35.660179>,  <27.466619, 31.374460, 36.184875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.966295, 31.709169, 35.660179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.823896, 31.852325, 36.005474>,  <26.738457, 31.938219, 36.212650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.823896, 31.852325, 36.005474>,  <26.966295, 31.709169, 35.660179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.823896, 31.852325, 36.005474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089585, 0.906432, -0.412742,
		-0.930184, -0.224268, -0.290625,
		-0.355996, 0.357890, 0.863239,
		26.717098, 31.959692, 36.264446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.452379, 32.211891, 35.488503>,  <26.966295, 31.709169, 35.660179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.452379, 32.211891, 35.488503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.520540, 32.321743, 35.867035>,  <26.561438, 32.387653, 36.094154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.520540, 32.321743, 35.867035>,  <26.452379, 32.211891, 35.488503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.520540, 32.321743, 35.867035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231215, 0.944709, -0.232520,
		-0.957863, -0.179183, 0.224479,
		0.170404, 0.274625, 0.946332,
		26.571661, 32.404129, 36.150936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.890165, 32.624912, 35.657799>,  <26.452379, 32.211891, 35.488503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.890165, 32.624912, 35.657799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.133514, 32.735497, 35.955376>,  <26.279524, 32.801849, 36.133923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.133514, 32.735497, 35.955376>,  <25.890165, 32.624912, 35.657799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.133514, 32.735497, 35.955376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200161, 0.960513, -0.193261,
		-0.767995, -0.031333, 0.639689,
		0.608375, 0.276464, 0.743941,
		26.316027, 32.818436, 36.178558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.492592, 33.184025, 36.135082>,  <25.890165, 32.624912, 35.657799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.492592, 33.184025, 36.135082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.890596, 33.201645, 36.170883>,  <26.129400, 33.212215, 36.192364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.890596, 33.201645, 36.170883>,  <25.492592, 33.184025, 36.135082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.890596, 33.201645, 36.170883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037150, 0.996315, -0.077313,
		-0.092574, 0.073602, 0.992982,
		0.995013, 0.044047, 0.089498,
		26.189100, 33.214859, 36.197731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.695324, 33.679752, 36.727993>,  <25.492592, 33.184025, 36.135082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.695324, 33.679752, 36.727993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.954031, 33.652313, 36.424152>,  <26.109255, 33.635849, 36.241848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.954031, 33.652313, 36.424152>,  <25.695324, 33.679752, 36.727993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.954031, 33.652313, 36.424152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012592, 0.994851, -0.100564,
		0.762584, 0.074606, 0.642572,
		0.646766, -0.068598, -0.759597,
		26.148062, 33.631733, 36.196274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.080299, 33.997066, 37.141388>,  <25.695324, 33.679752, 36.727993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.080299, 33.997066, 37.141388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.259384, 33.892151, 36.799450>,  <26.366835, 33.829201, 36.594288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.259384, 33.892151, 36.799450>,  <26.080299, 33.997066, 37.141388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.259384, 33.892151, 36.799450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408567, 0.910386, -0.065347,
		0.795378, -0.320005, 0.514753,
		0.447713, -0.262286, -0.854845,
		26.393698, 33.813465, 36.542995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.654182, 34.289356, 37.135197>,  <26.080299, 33.997066, 37.141388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.654182, 34.289356, 37.135197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.671782, 34.206249, 36.744320>,  <26.682341, 34.156387, 36.509796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.671782, 34.206249, 36.744320>,  <26.654182, 34.289356, 37.135197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.671782, 34.206249, 36.744320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667302, 0.734047, -0.126025,
		0.743487, -0.646535, 0.170939,
		0.043997, -0.207766, -0.977189,
		26.684980, 34.143921, 36.451164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.455198, 34.296856, 36.940765>,  <26.654182, 34.289356, 37.135197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.455198, 34.296856, 36.940765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.207575, 34.319988, 36.627480>,  <27.059000, 34.333866, 36.439510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.207575, 34.319988, 36.627480>,  <27.455198, 34.296856, 36.940765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.207575, 34.319988, 36.627480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446491, 0.846345, -0.290422,
		0.646073, -0.529486, -0.549758,
		-0.619059, 0.057828, -0.783212,
		27.021856, 34.337337, 36.392517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.879856, 34.767872, 37.351791>,  <27.455198, 34.296856, 36.940765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.879856, 34.767872, 37.351791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.861702, 34.987675, 37.685493>,  <27.850809, 35.119556, 37.885715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.861702, 34.987675, 37.685493>,  <27.879856, 34.767872, 37.351791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.861702, 34.987675, 37.685493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982506, 0.175545, -0.062179,
		-0.180617, 0.816837, -0.547864,
		-0.045385, 0.549510, 0.834254,
		27.848087, 35.152527, 37.935768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.303331, 35.415272, 37.216099>,  <27.879856, 34.767872, 37.351791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.303331, 35.415272, 37.216099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.236736, 35.353996, 37.605728>,  <28.196779, 35.317230, 37.839504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.236736, 35.353996, 37.605728>,  <28.303331, 35.415272, 37.216099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.236736, 35.353996, 37.605728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944763, 0.258058, 0.202063,
		-0.282320, 0.953908, 0.101760,
		-0.166489, -0.153185, 0.974072,
		28.186789, 35.308041, 37.897949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.721167, 36.079781, 37.551876>,  <28.303331, 35.415272, 37.216099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.721167, 36.079781, 37.551876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.663218, 35.767872, 37.795502>,  <28.628448, 35.580727, 37.941677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.663218, 35.767872, 37.795502>,  <28.721167, 36.079781, 37.551876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.663218, 35.767872, 37.795502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878721, 0.181559, 0.441458,
		-0.454819, 0.599157, 0.658901,
		-0.144873, -0.779774, 0.609069,
		28.619755, 35.533939, 37.978222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914127, 36.343792, 38.189110>,  <28.721167, 36.079781, 37.551876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914127, 36.343792, 38.189110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.965401, 35.947433, 38.172657>,  <28.996164, 35.709618, 38.162785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.965401, 35.947433, 38.172657>,  <28.914127, 36.343792, 38.189110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.965401, 35.947433, 38.172657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963465, 0.114584, 0.242088,
		-0.235171, -0.070664, 0.969382,
		0.128183, -0.990897, -0.041135,
		29.003855, 35.650166, 38.160316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.057817, 35.954601, 38.905113>,  <28.914127, 36.343792, 38.189110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.057817, 35.954601, 38.905113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.237082, 35.836952, 38.567440>,  <29.344639, 35.766365, 38.364834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.237082, 35.836952, 38.567440>,  <29.057817, 35.954601, 38.905113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.237082, 35.836952, 38.567440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868351, 0.367610, 0.332911,
		0.212416, -0.882246, 0.420145,
		0.448159, -0.294118, -0.844185,
		29.371529, 35.748718, 38.314186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666901, 35.596306, 39.007484>,  <29.057817, 35.954601, 38.905113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.666901, 35.596306, 39.007484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.698750, 35.746967, 38.638313>,  <29.717859, 35.837364, 38.416813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.698750, 35.746967, 38.638313>,  <29.666901, 35.596306, 39.007484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.698750, 35.746967, 38.638313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879611, 0.409048, 0.242825,
		0.468982, -0.831149, -0.298742,
		0.079624, 0.376657, -0.922924,
		29.722637, 35.859966, 38.361435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.343224, 35.470665, 38.851131>,  <29.666901, 35.596306, 39.007484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.343224, 35.470665, 38.851131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.126249, 35.776283, 38.711414>,  <29.996065, 35.959652, 38.627583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.126249, 35.776283, 38.711414>,  <30.343224, 35.470665, 38.851131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.126249, 35.776283, 38.711414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654131, 0.645011, 0.395062,
		0.527142, -0.014188, -0.849659,
		-0.542434, 0.764042, -0.349293,
		29.963518, 36.005497, 38.606625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835285, 36.025421, 38.538574>,  <30.343224, 35.470665, 38.851131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835285, 36.025421, 38.538574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.487921, 36.187496, 38.652897>,  <30.279503, 36.284740, 38.721489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.487921, 36.187496, 38.652897>,  <30.835285, 36.025421, 38.538574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.487921, 36.187496, 38.652897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489097, 0.794758, 0.359367,
		-0.081533, 0.451864, -0.888353,
		-0.868410, 0.405191, 0.285804,
		30.227398, 36.309052, 38.738640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.657907, 36.725342, 38.204247>,  <30.835285, 36.025421, 38.538574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.657907, 36.725342, 38.204247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.538366, 36.690327, 38.584358>,  <30.466642, 36.669315, 38.812424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.538366, 36.690327, 38.584358>,  <30.657907, 36.725342, 38.204247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.538366, 36.690327, 38.584358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607660, 0.750354, 0.260226,
		-0.735824, 0.655214, -0.171050,
		-0.298852, -0.087540, 0.950276,
		30.448711, 36.664066, 38.869442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.851297, 37.425434, 38.449791>,  <30.657907, 36.725342, 38.204247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.851297, 37.425434, 38.449791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882004, 37.175304, 38.760422>,  <30.900427, 37.025227, 38.946800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882004, 37.175304, 38.760422>,  <30.851297, 37.425434, 38.449791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882004, 37.175304, 38.760422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759150, 0.541594, 0.361064,
		-0.646373, 0.561822, 0.516293,
		0.076767, -0.625326, 0.776579,
		30.905033, 36.987705, 38.993397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.766758, 37.788376, 39.225658>,  <30.851297, 37.425434, 38.449791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.766758, 37.788376, 39.225658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.034510, 37.496887, 39.167828>,  <31.195160, 37.321995, 39.133129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.034510, 37.496887, 39.167828>,  <30.766758, 37.788376, 39.225658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.034510, 37.496887, 39.167828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742914, 0.655752, 0.134417,
		-0.003146, -0.197384, 0.980321,
		0.669380, -0.728717, -0.144577,
		31.235323, 37.278271, 39.124454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285259, 37.762562, 39.722679>,  <30.766758, 37.788376, 39.225658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285259, 37.762562, 39.722679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.457390, 37.631962, 39.386059>,  <31.560669, 37.553600, 39.184086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.457390, 37.631962, 39.386059>,  <31.285259, 37.762562, 39.722679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.457390, 37.631962, 39.386059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823698, 0.523393, 0.218131,
		0.369244, -0.787055, 0.494169,
		0.430326, -0.326502, -0.841555,
		31.586487, 37.534012, 39.133591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955713, 37.587639, 39.938442>,  <31.285259, 37.762562, 39.722679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955713, 37.587639, 39.938442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954279, 37.659233, 39.544903>,  <31.953419, 37.702190, 39.308781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954279, 37.659233, 39.544903>,  <31.955713, 37.587639, 39.938442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954279, 37.659233, 39.544903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828336, 0.551708, 0.097354,
		0.560220, -0.814605, -0.150239,
		-0.003583, 0.178988, -0.983845,
		31.953203, 37.712929, 39.249748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690559, 37.714916, 39.765007>,  <31.955713, 37.587639, 39.938442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690559, 37.714916, 39.765007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434170, 37.916622, 39.533535>,  <32.280334, 38.037643, 39.394653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434170, 37.916622, 39.533535>,  <32.690559, 37.714916, 39.765007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434170, 37.916622, 39.533535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596841, 0.801491, 0.037328,
		0.482629, -0.321453, -0.814701,
		-0.640976, 0.504262, -0.578679,
		32.241879, 38.067902, 39.359932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029648, 37.941742, 39.008259>,  <32.690559, 37.714916, 39.765007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029648, 37.941742, 39.008259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775784, 38.220867, 39.141075>,  <32.623463, 38.388344, 39.220764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775784, 38.220867, 39.141075>,  <33.029648, 37.941742, 39.008259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775784, 38.220867, 39.141075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645170, 0.714970, -0.269393,
		-0.425389, 0.043251, -0.903976,
		-0.634665, 0.697816, 0.332045,
		32.585384, 38.430210, 39.240688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782009, 38.159943, 39.188725>,  <33.029648, 37.941742, 39.008259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782009, 38.159943, 39.188725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.179169, 38.177162, 39.144348>,  <34.417465, 38.187492, 39.117722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.179169, 38.177162, 39.144348>,  <33.782009, 38.159943, 39.188725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179169, 38.177162, 39.144348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118048, 0.238718, -0.963887,
		-0.015010, 0.970134, 0.242104,
		0.992894, 0.043048, -0.110940,
		34.477036, 38.190075, 39.111065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824757, 38.656590, 38.754936>,  <33.782009, 38.159943, 39.188725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824757, 38.656590, 38.754936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198376, 38.518566, 38.718094>,  <34.422546, 38.435753, 38.695988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198376, 38.518566, 38.718094>,  <33.824757, 38.656590, 38.754936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198376, 38.518566, 38.718094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035937, 0.347388, -0.937033,
		0.355330, 0.871925, 0.336878,
		0.934050, -0.345063, -0.092103,
		34.478592, 38.415047, 38.690464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114079, 39.114185, 38.314770>,  <33.824757, 38.656590, 38.754936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114079, 39.114185, 38.314770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348839, 38.791176, 38.291264>,  <34.489693, 38.597370, 38.277161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348839, 38.791176, 38.291264>,  <34.114079, 39.114185, 38.314770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348839, 38.791176, 38.291264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179183, -0.058760, -0.982059,
		0.789586, 0.586897, -0.179181,
		0.586897, -0.807527, -0.058767,
		34.524906, 38.548920, 38.273632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516499, 39.201935, 37.708023>,  <34.114079, 39.114185, 38.314770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516499, 39.201935, 37.708023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531963, 38.806519, 37.766388>,  <34.541241, 38.569267, 37.801407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531963, 38.806519, 37.766388>,  <34.516499, 39.201935, 37.708023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531963, 38.806519, 37.766388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168494, -0.150383, -0.974164,
		0.984944, 0.013078, -0.172377,
		0.038663, -0.988541, 0.145915,
		34.543564, 38.509956, 37.810162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837879, 38.949238, 37.009686>,  <34.516499, 39.201935, 37.708023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837879, 38.949238, 37.009686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680134, 38.637482, 37.204430>,  <34.585487, 38.450428, 37.321278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680134, 38.637482, 37.204430>,  <34.837879, 38.949238, 37.009686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680134, 38.637482, 37.204430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183616, -0.452289, -0.872766,
		0.900425, -0.433581, 0.035258,
		-0.394361, -0.779386, 0.486865,
		34.561825, 38.403667, 37.350491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172375, 38.361389, 36.789425>,  <34.837879, 38.949238, 37.009686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172375, 38.361389, 36.789425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808094, 38.250042, 36.911499>,  <34.589527, 38.183231, 36.984745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808094, 38.250042, 36.911499>,  <35.172375, 38.361389, 36.789425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808094, 38.250042, 36.911499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164293, -0.433771, -0.885918,
		0.378994, -0.856944, 0.349301,
		-0.910698, -0.278370, 0.305187,
		34.534885, 38.166531, 37.003056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147514, 37.654873, 36.427132>,  <35.172375, 38.361389, 36.789425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147514, 37.654873, 36.427132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771393, 37.748936, 36.525543>,  <34.545719, 37.805374, 36.584591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771393, 37.748936, 36.525543>,  <35.147514, 37.654873, 36.427132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771393, 37.748936, 36.525543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270493, -0.077634, -0.959587,
		-0.206558, -0.968851, 0.136609,
		-0.940302, 0.235163, 0.246032,
		34.489304, 37.819485, 36.599354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650856, 37.079937, 36.335243>,  <35.147514, 37.654873, 36.427132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650856, 37.079937, 36.335243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441330, 37.420204, 36.317406>,  <34.315613, 37.624363, 36.306702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441330, 37.420204, 36.317406>,  <34.650856, 37.079937, 36.335243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441330, 37.420204, 36.317406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529407, -0.366113, -0.765303,
		-0.667341, -0.377271, 0.642123,
		-0.523816, 0.850663, -0.044592,
		34.284184, 37.675404, 36.304028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000919, 36.843681, 36.244823>,  <34.650856, 37.079937, 36.335243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000919, 36.843681, 36.244823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043388, 37.213348, 36.098049>,  <34.068871, 37.435150, 36.009987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043388, 37.213348, 36.098049>,  <34.000919, 36.843681, 36.244823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043388, 37.213348, 36.098049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275864, -0.327156, -0.903808,
		-0.955315, 0.197187, 0.220208,
		0.106177, 0.924168, -0.366933,
		34.075241, 37.490601, 35.987968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412083, 36.870689, 35.702133>,  <34.000919, 36.843681, 36.244823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412083, 36.870689, 35.702133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660503, 37.167385, 35.600842>,  <33.809555, 37.345402, 35.540066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660503, 37.167385, 35.600842>,  <33.412083, 36.870689, 35.702133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660503, 37.167385, 35.600842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274073, -0.097164, -0.956788,
		-0.734291, 0.663613, 0.142946,
		0.621048, 0.741739, -0.253225,
		33.846817, 37.389908, 35.524876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033226, 37.265301, 35.193195>,  <33.412083, 36.870689, 35.702133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033226, 37.265301, 35.193195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394371, 37.424984, 35.129356>,  <33.611057, 37.520794, 35.091053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394371, 37.424984, 35.129356>,  <33.033226, 37.265301, 35.193195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394371, 37.424984, 35.129356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247663, 0.179496, -0.952074,
		-0.351428, 0.899119, 0.260930,
		0.902863, 0.399208, -0.159598,
		33.665230, 37.544746, 35.081478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893639, 37.897465, 34.844135>,  <33.033226, 37.265301, 35.193195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893639, 37.897465, 34.844135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276546, 37.823151, 34.755493>,  <33.506290, 37.778561, 34.702309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276546, 37.823151, 34.755493>,  <32.893639, 37.897465, 34.844135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276546, 37.823151, 34.755493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171552, 0.252070, -0.952382,
		0.232803, 0.949707, 0.209427,
		0.957273, -0.185790, -0.221607,
		33.563728, 37.767414, 34.689011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150517, 38.490643, 34.513050>,  <32.893639, 37.897465, 34.844135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150517, 38.490643, 34.513050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397102, 38.197723, 34.397324>,  <33.545055, 38.021973, 34.327888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397102, 38.197723, 34.397324>,  <33.150517, 38.490643, 34.513050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397102, 38.197723, 34.397324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089859, 0.299611, -0.949820,
		0.782237, 0.611530, 0.118897,
		0.616466, -0.732301, -0.289318,
		33.582043, 37.978035, 34.310528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555286, 38.829834, 33.978127>,  <33.150517, 38.490643, 34.513050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555286, 38.829834, 33.978127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562378, 38.437298, 33.901543>,  <33.566631, 38.201775, 33.855595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562378, 38.437298, 33.901543>,  <33.555286, 38.829834, 33.978127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562378, 38.437298, 33.901543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053896, 0.190272, -0.980251,
		0.998389, 0.027697, -0.049518,
		0.017728, -0.981341, -0.191458,
		33.567696, 38.142895, 33.844105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022144, 38.649948, 33.476440>,  <33.555286, 38.829834, 33.978127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022144, 38.649948, 33.476440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777695, 38.335491, 33.439564>,  <33.631023, 38.146816, 33.417439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777695, 38.335491, 33.439564>,  <34.022144, 38.649948, 33.476440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777695, 38.335491, 33.439564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129045, 0.213873, -0.968300,
		0.780944, -0.579855, -0.232151,
		-0.611125, -0.786147, -0.092195,
		33.594357, 38.099648, 33.411903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035496, 38.525127, 32.829380>,  <34.022144, 38.649948, 33.476440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035496, 38.525127, 32.829380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749111, 38.259510, 32.915588>,  <33.577282, 38.100140, 32.967316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749111, 38.259510, 32.915588>,  <34.035496, 38.525127, 32.829380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749111, 38.259510, 32.915588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264678, -0.027491, -0.963945,
		0.646028, -0.747187, -0.156076,
		-0.715957, -0.664045, 0.215524,
		33.534325, 38.060295, 32.980247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017078, 38.111767, 32.181793>,  <34.035496, 38.525127, 32.829380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017078, 38.111767, 32.181793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687588, 38.079834, 32.406330>,  <33.489895, 38.060677, 32.541054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687588, 38.079834, 32.406330>,  <34.017078, 38.111767, 32.181793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687588, 38.079834, 32.406330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566975, 0.108797, -0.816518,
		0.004108, -0.990853, -0.134879,
		-0.823725, -0.079828, 0.561343,
		33.440472, 38.055885, 32.574734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619122, 37.674866, 31.650360>,  <34.017078, 38.111767, 32.181793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619122, 37.674866, 31.650360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381741, 37.865383, 31.909885>,  <33.239311, 37.979694, 32.065601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381741, 37.865383, 31.909885>,  <33.619122, 37.674866, 31.650360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381741, 37.865383, 31.909885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582581, 0.302012, -0.754578,
		-0.555348, -0.825794, 0.098248,
		-0.593454, 0.476291, 0.648814,
		33.203705, 38.008270, 32.104530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011883, 37.553368, 31.362474>,  <33.619122, 37.674866, 31.650360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011883, 37.553368, 31.362474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954460, 37.857666, 31.615662>,  <32.920006, 38.040245, 31.767574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954460, 37.857666, 31.615662>,  <33.011883, 37.553368, 31.362474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954460, 37.857666, 31.615662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784950, 0.301986, -0.540979,
		-0.602698, -0.574512, 0.553798,
		-0.143560, 0.760750, 0.632969,
		32.911392, 38.085892, 31.805552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327942, 37.662754, 31.368044>,  <33.011883, 37.553368, 31.362474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327942, 37.662754, 31.368044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.463482, 38.012959, 31.505833>,  <32.544807, 38.223080, 31.588507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.463482, 38.012959, 31.505833>,  <32.327942, 37.662754, 31.368044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463482, 38.012959, 31.505833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748997, 0.472599, -0.464385,
		-0.569372, -0.100653, 0.815895,
		0.338849, 0.875511, 0.344474,
		32.565136, 38.275612, 31.609175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.678738, 38.026939, 31.644112>,  <32.327942, 37.662754, 31.368044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.678738, 38.026939, 31.644112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966946, 38.297535, 31.583176>,  <32.139870, 38.459892, 31.546614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966946, 38.297535, 31.583176>,  <31.678738, 38.026939, 31.644112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966946, 38.297535, 31.583176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659857, 0.601353, -0.450515,
		-0.213160, 0.425127, 0.879676,
		0.720521, 0.676492, -0.152339,
		32.183102, 38.500484, 31.537474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308142, 38.662525, 31.763687>,  <31.678738, 38.026939, 31.644112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.308142, 38.662525, 31.763687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.639065, 38.728897, 31.549015>,  <31.837620, 38.768719, 31.420212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.639065, 38.728897, 31.549015>,  <31.308142, 38.662525, 31.763687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.639065, 38.728897, 31.549015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522437, 0.578379, -0.626528,
		0.206444, 0.798714, 0.565187,
		0.827309, 0.165931, -0.536680,
		31.887259, 38.778675, 31.388010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.289995, 39.320835, 31.710556>,  <31.308142, 38.662525, 31.763687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.289995, 39.320835, 31.710556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534977, 39.174965, 31.430010>,  <31.681965, 39.087440, 31.261683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534977, 39.174965, 31.430010>,  <31.289995, 39.320835, 31.710556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534977, 39.174965, 31.430010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502728, 0.505018, -0.701585,
		0.610054, 0.782283, 0.125966,
		0.612453, -0.364678, -0.701364,
		31.718712, 39.065563, 31.219601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376278, 39.863716, 31.338818>,  <31.289995, 39.320835, 31.710556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376278, 39.863716, 31.338818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.456575, 39.546146, 31.109249>,  <31.504755, 39.355606, 30.971508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.456575, 39.546146, 31.109249>,  <31.376278, 39.863716, 31.338818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456575, 39.546146, 31.109249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553477, 0.391471, -0.735128,
		0.808310, 0.465226, -0.360832,
		0.200746, -0.793924, -0.573922,
		31.516800, 39.307968, 30.937073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.437695, 40.180473, 30.706287>,  <31.376278, 39.863716, 31.338818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.437695, 40.180473, 30.706287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.380602, 39.791790, 30.631025>,  <31.346346, 39.558578, 30.585867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.380602, 39.791790, 30.631025>,  <31.437695, 40.180473, 30.706287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.380602, 39.791790, 30.631025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632002, 0.235780, -0.738228,
		0.761709, 0.013546, -0.647778,
		-0.142733, -0.971712, -0.188157,
		31.337782, 39.500275, 30.574579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609739, 40.116302, 29.996387>,  <31.437695, 40.180473, 30.706287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.609739, 40.116302, 29.996387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418289, 39.768078, 30.042076>,  <31.303419, 39.559143, 30.069490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418289, 39.768078, 30.042076>,  <31.609739, 40.116302, 29.996387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418289, 39.768078, 30.042076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641781, 0.258092, -0.722153,
		0.599196, -0.418946, -0.682237,
		-0.478624, -0.870559, 0.114224,
		31.274702, 39.506908, 30.076344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.565979, 39.834282, 29.328703>,  <31.609739, 40.116302, 29.996387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.565979, 39.834282, 29.328703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259628, 39.677975, 29.532953>,  <31.075819, 39.584190, 29.655502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259628, 39.677975, 29.532953>,  <31.565979, 39.834282, 29.328703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.259628, 39.677975, 29.532953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606310, 0.174513, -0.775844,
		0.214066, -0.903795, -0.370582,
		-0.765874, -0.390770, 0.510622,
		31.029865, 39.560745, 29.686140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.279446, 39.335762, 28.889723>,  <31.565979, 39.834282, 29.328703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.279446, 39.335762, 28.889723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.992567, 39.446941, 29.145338>,  <30.820440, 39.513649, 29.298708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.992567, 39.446941, 29.145338>,  <31.279446, 39.335762, 28.889723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.992567, 39.446941, 29.145338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646744, 0.076017, -0.758909,
		-0.259519, -0.957582, 0.125245,
		-0.717197, 0.277953, 0.639038,
		30.777409, 39.530327, 29.337049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819471, 38.852497, 28.901667>,  <31.279446, 39.335762, 28.889723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819471, 38.852497, 28.901667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704205, 39.233353, 28.942446>,  <30.635044, 39.461864, 28.966913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704205, 39.233353, 28.942446>,  <30.819471, 38.852497, 28.901667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704205, 39.233353, 28.942446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227407, 0.035373, -0.973157,
		-0.930185, -0.303616, 0.206330,
		-0.288168, 0.952137, 0.101948,
		30.617754, 39.518993, 28.973030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.160067, 38.959541, 28.436098>,  <30.819471, 38.852497, 28.901667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.160067, 38.959541, 28.436098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.277641, 39.337833, 28.491518>,  <30.348186, 39.564808, 28.524769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.277641, 39.337833, 28.491518>,  <30.160067, 38.959541, 28.436098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.277641, 39.337833, 28.491518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149885, 0.188764, -0.970517,
		-0.944000, 0.264504, 0.197235,
		0.293936, 0.945730, 0.138548,
		30.365822, 39.621552, 28.533083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.668243, 39.199879, 28.107328>,  <30.160067, 38.959541, 28.436098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.668243, 39.199879, 28.107328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.965679, 39.466488, 28.128588>,  <30.144140, 39.626453, 28.141344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.965679, 39.466488, 28.128588>,  <29.668243, 39.199879, 28.107328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.965679, 39.466488, 28.128588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175555, 0.271318, -0.946344,
		-0.645179, 0.694360, 0.318761,
		0.743589, 0.666521, 0.053150,
		30.188755, 39.666443, 28.144533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.422047, 39.844574, 27.790594>,  <29.668243, 39.199879, 28.107328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.422047, 39.844574, 27.790594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.818794, 39.877190, 27.751518>,  <30.056843, 39.896759, 27.728073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.818794, 39.877190, 27.751518>,  <29.422047, 39.844574, 27.790594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.818794, 39.877190, 27.751518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114927, 0.244435, -0.962831,
		-0.054634, 0.966231, 0.251819,
		0.991870, 0.081544, -0.097691,
		30.116356, 39.901653, 27.722212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.559921, 40.536198, 27.401896>,  <29.422047, 39.844574, 27.790594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.559921, 40.536198, 27.401896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.894627, 40.324184, 27.346912>,  <30.095449, 40.196976, 27.313923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.894627, 40.324184, 27.346912>,  <29.559921, 40.536198, 27.401896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.894627, 40.324184, 27.346912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008832, 0.237937, -0.971240,
		0.547492, 0.813913, 0.194416,
		0.836764, -0.530030, -0.137458,
		30.145657, 40.165176, 27.305676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.025404, 40.977509, 27.049860>,  <29.559921, 40.536198, 27.401896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.025404, 40.977509, 27.049860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.161058, 40.607574, 26.980970>,  <30.242451, 40.385612, 26.939636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.161058, 40.607574, 26.980970>,  <30.025404, 40.977509, 27.049860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.161058, 40.607574, 26.980970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130727, 0.227628, -0.964933,
		0.931609, 0.304731, 0.198099,
		0.339138, -0.924838, -0.172224,
		30.262800, 40.330124, 26.929304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.585485, 41.008621, 26.635958>,  <30.025404, 40.977509, 27.049860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.585485, 41.008621, 26.635958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.464613, 40.635902, 26.555510>,  <30.392090, 40.412273, 26.507240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.464613, 40.635902, 26.555510>,  <30.585485, 41.008621, 26.635958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.464613, 40.635902, 26.555510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282348, 0.114025, -0.952511,
		0.910477, -0.344614, 0.228634,
		-0.302179, -0.931793, -0.201118,
		30.373959, 40.356365, 26.495174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101501, 40.610706, 26.311569>,  <30.585485, 41.008621, 26.635958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101501, 40.610706, 26.311569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.766987, 40.431187, 26.185583>,  <30.566278, 40.323475, 26.109991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.766987, 40.431187, 26.185583>,  <31.101501, 40.610706, 26.311569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.766987, 40.431187, 26.185583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332260, 0.042136, -0.942246,
		0.436150, -0.892639, 0.113879,
		-0.836287, -0.448798, -0.314966,
		30.516100, 40.296547, 26.091093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.321657, 40.110264, 25.900713>,  <31.101501, 40.610706, 26.311569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.321657, 40.110264, 25.900713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937353, 40.144779, 25.795267>,  <30.706770, 40.165489, 25.732000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937353, 40.144779, 25.795267>,  <31.321657, 40.110264, 25.900713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.937353, 40.144779, 25.795267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270153, 0.075628, -0.959843,
		-0.062883, -0.993396, -0.095970,
		-0.960761, 0.086285, -0.263613,
		30.649124, 40.170666, 25.716183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242598, 39.718548, 25.186827>,  <31.321657, 40.110264, 25.900713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242598, 39.718548, 25.186827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905769, 39.933674, 25.203203>,  <30.703672, 40.062748, 25.213030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905769, 39.933674, 25.203203>,  <31.242598, 39.718548, 25.186827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905769, 39.933674, 25.203203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045524, 0.146502, -0.988162,
		-0.537443, -0.830238, -0.147848,
		-0.842070, 0.537812, 0.040941,
		30.653149, 40.095016, 25.215485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.830818, 39.427422, 24.654568>,  <31.242598, 39.718548, 25.186827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.830818, 39.427422, 24.654568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.715624, 39.804108, 24.724119>,  <30.646507, 40.030121, 24.765850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.715624, 39.804108, 24.724119>,  <30.830818, 39.427422, 24.654568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.715624, 39.804108, 24.724119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031602, 0.172127, -0.984568,
		-0.957113, -0.289037, -0.019810,
		-0.287986, 0.941716, 0.173879,
		30.629229, 40.086624, 24.776283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.415501, 39.554688, 24.145819>,  <30.830818, 39.427422, 24.654568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.415501, 39.554688, 24.145819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.448355, 39.936050, 24.261932>,  <30.468067, 40.164867, 24.331600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.448355, 39.936050, 24.261932>,  <30.415501, 39.554688, 24.145819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448355, 39.936050, 24.261932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194582, 0.270320, -0.942902,
		-0.977441, 0.133929, -0.163313,
		0.082135, 0.953410, 0.290283,
		30.472996, 40.222073, 24.349018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.954540, 39.922916, 23.760284>,  <30.415501, 39.554688, 24.145819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.954540, 39.922916, 23.760284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.224007, 40.192242, 23.882154>,  <30.385687, 40.353836, 23.955276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.224007, 40.192242, 23.882154>,  <29.954540, 39.922916, 23.760284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.224007, 40.192242, 23.882154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024011, 0.392100, -0.919609,
		-0.738646, 0.626825, 0.247977,
		0.673666, 0.673311, 0.304674,
		30.426107, 40.394234, 23.973557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703472, 40.589233, 23.580254>,  <29.954540, 39.922916, 23.760284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703472, 40.589233, 23.580254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.101715, 40.616158, 23.606283>,  <30.340660, 40.632313, 23.621901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.101715, 40.616158, 23.606283>,  <29.703472, 40.589233, 23.580254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.101715, 40.616158, 23.606283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065133, 0.001314, -0.997876,
		-0.067253, 0.997731, -0.003076,
		0.995608, 0.067310, 0.065073,
		30.400398, 40.636353, 23.625805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.964691, 41.207035, 23.265331>,  <29.703472, 40.589233, 23.580254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.964691, 41.207035, 23.265331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.259245, 40.936630, 23.254364>,  <30.435978, 40.774387, 23.247784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.259245, 40.936630, 23.254364>,  <29.964691, 41.207035, 23.265331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.259245, 40.936630, 23.254364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040985, 0.085026, -0.995535,
		0.675322, 0.731972, 0.090318,
		0.736384, -0.676008, -0.027420,
		30.480160, 40.733829, 23.246138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352615, 41.362762, 22.633312>,  <29.964691, 41.207035, 23.265331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352615, 41.362762, 22.633312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459660, 41.000214, 22.764080>,  <30.523886, 40.782684, 22.842541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459660, 41.000214, 22.764080>,  <30.352615, 41.362762, 22.633312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.459660, 41.000214, 22.764080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023719, -0.345390, -0.938159,
		0.963235, 0.243309, -0.113929,
		0.267613, -0.906370, 0.326921,
		30.539944, 40.728302, 22.862156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964138, 41.137451, 22.326818>,  <30.352615, 41.362762, 22.633312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964138, 41.137451, 22.326818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711048, 40.845810, 22.431183>,  <30.559195, 40.670826, 22.493801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711048, 40.845810, 22.431183>,  <30.964138, 41.137451, 22.326818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711048, 40.845810, 22.431183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045082, -0.301677, -0.952344,
		0.773064, -0.614333, 0.158009,
		-0.632724, -0.729099, 0.260910,
		30.521231, 40.627079, 22.509457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.353125, 41.689384, 22.730543>,  <30.964138, 41.137451, 22.326818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.353125, 41.689384, 22.730543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708590, 41.865681, 22.781183>,  <31.921869, 41.971458, 22.811567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708590, 41.865681, 22.781183>,  <31.353125, 41.689384, 22.730543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708590, 41.865681, 22.781183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185542, 0.598068, -0.779672,
		-0.419347, 0.669376, 0.613256,
		0.888663, 0.440738, 0.126601,
		31.975189, 41.997902, 22.819164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177536, 42.468914, 22.728710>,  <31.353125, 41.689384, 22.730543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177536, 42.468914, 22.728710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568207, 42.422638, 22.656363>,  <31.802610, 42.394871, 22.612953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568207, 42.422638, 22.656363>,  <31.177536, 42.468914, 22.728710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.568207, 42.422638, 22.656363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078418, 0.592002, -0.802112,
		0.199870, 0.797590, 0.569124,
		0.976679, -0.115689, -0.180869,
		31.861210, 42.387932, 22.602102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452366, 42.563015, 22.091959>,  <31.177536, 42.468914, 22.728710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452366, 42.563015, 22.091959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.403154, 42.666309, 21.708672>,  <31.373629, 42.728287, 21.478699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.403154, 42.666309, 21.708672>,  <31.452366, 42.563015, 22.091959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403154, 42.666309, 21.708672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701686, 0.705432, 0.100017,
		0.701784, -0.660062, -0.267985,
		-0.123028, 0.258232, -0.958217,
		31.366245, 42.743778, 21.421206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052437, 42.134357, 21.588791>,  <31.452366, 42.563015, 22.091959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052437, 42.134357, 21.588791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156853, 42.479645, 21.761631>,  <32.219501, 42.686817, 21.865335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156853, 42.479645, 21.761631>,  <32.052437, 42.134357, 21.588791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156853, 42.479645, 21.761631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673628, -0.483506, 0.558970,
		0.691437, 0.145162, -0.707703,
		0.261037, 0.863221, 0.432099,
		32.235165, 42.738609, 21.891260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851215, 42.145042, 21.784639>,  <32.052437, 42.134357, 21.588791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851215, 42.145042, 21.784639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598183, 42.351471, 22.015640>,  <32.446362, 42.475327, 22.154240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598183, 42.351471, 22.015640>,  <32.851215, 42.145042, 21.784639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598183, 42.351471, 22.015640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410134, -0.409305, 0.815021,
		0.656984, 0.752422, 0.047261,
		-0.632584, 0.516072, 0.577501,
		32.408409, 42.506294, 22.188890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146683, 42.314449, 22.373495>,  <32.851215, 42.145042, 21.784639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146683, 42.314449, 22.373495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756611, 42.332989, 22.460100>,  <32.522568, 42.344112, 22.512064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756611, 42.332989, 22.460100>,  <33.146683, 42.314449, 22.373495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756611, 42.332989, 22.460100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185381, -0.363813, 0.912838,
		0.121082, 0.930318, 0.346190,
		-0.975178, 0.046351, 0.216514,
		32.464058, 42.346893, 22.525055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116604, 42.620415, 22.980854>,  <33.146683, 42.314449, 22.373495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116604, 42.620415, 22.980854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756813, 42.448833, 22.947533>,  <32.540939, 42.345882, 22.927540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756813, 42.448833, 22.947533>,  <33.116604, 42.620415, 22.980854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756813, 42.448833, 22.947533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012293, -0.215407, 0.976447,
		-0.436797, 0.877267, 0.199027,
		-0.899476, -0.428956, -0.083305,
		32.486969, 42.320148, 22.922541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741592, 42.925220, 23.496578>,  <33.116604, 42.620415, 22.980854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741592, 42.925220, 23.496578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616875, 42.556122, 23.405964>,  <32.542042, 42.334663, 23.351595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616875, 42.556122, 23.405964>,  <32.741592, 42.925220, 23.496578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616875, 42.556122, 23.405964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088718, -0.265652, 0.959978,
		-0.945997, 0.279222, 0.164694,
		-0.311799, -0.922748, -0.226534,
		32.523335, 42.279297, 23.338003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363785, 42.774704, 24.020529>,  <32.741592, 42.925220, 23.496578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363785, 42.774704, 24.020529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436073, 42.410999, 23.870554>,  <32.479446, 42.192776, 23.780569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436073, 42.410999, 23.870554>,  <32.363785, 42.774704, 24.020529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436073, 42.410999, 23.870554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001997, -0.381554, 0.924344,
		-0.983532, -0.166303, -0.070772,
		0.180725, -0.909263, -0.374939,
		32.490292, 42.138222, 23.758072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002445, 42.309727, 24.528696>,  <32.363785, 42.774704, 24.020529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002445, 42.309727, 24.528696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230549, 42.081421, 24.292381>,  <32.367413, 41.944435, 24.150593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230549, 42.081421, 24.292381>,  <32.002445, 42.309727, 24.528696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.230549, 42.081421, 24.292381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128287, -0.648484, 0.750341,
		-0.811387, -0.503678, -0.296580,
		0.570258, -0.570769, -0.590786,
		32.401627, 41.910191, 24.115145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798500, 41.652229, 24.731831>,  <32.002445, 42.309727, 24.528696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798500, 41.652229, 24.731831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151936, 41.618374, 24.547611>,  <32.363998, 41.598061, 24.437080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151936, 41.618374, 24.547611>,  <31.798500, 41.652229, 24.731831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151936, 41.618374, 24.547611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302495, -0.647589, 0.699375,
		-0.357443, -0.757274, -0.546599,
		0.883590, -0.084643, -0.460548,
		32.417011, 41.592979, 24.409447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041683, 40.949982, 24.767403>,  <31.798500, 41.652229, 24.731831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041683, 40.949982, 24.767403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379013, 41.157848, 24.712633>,  <32.581409, 41.282570, 24.679771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379013, 41.157848, 24.712633>,  <32.041683, 40.949982, 24.767403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379013, 41.157848, 24.712633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476163, -0.604433, 0.638693,
		0.249149, -0.603823, -0.757181,
		0.843323, 0.519671, -0.136924,
		32.632011, 41.313751, 24.671556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432079, 40.511116, 25.103724>,  <32.041683, 40.949982, 24.767403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432079, 40.511116, 25.103724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698372, 40.803307, 25.042791>,  <32.858147, 40.978622, 25.006233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698372, 40.803307, 25.042791>,  <32.432079, 40.511116, 25.103724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698372, 40.803307, 25.042791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555046, -0.348328, 0.755375,
		0.498724, -0.587427, -0.637342,
		0.665732, 0.730477, -0.152329,
		32.898090, 41.022449, 24.997093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059814, 40.204315, 25.199326>,  <32.432079, 40.511116, 25.103724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059814, 40.204315, 25.199326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155956, 40.586094, 25.270056>,  <33.213642, 40.815159, 25.312494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155956, 40.586094, 25.270056>,  <33.059814, 40.204315, 25.199326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155956, 40.586094, 25.270056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681864, -0.295667, 0.669061,
		0.690863, -0.040240, -0.721865,
		0.240355, 0.954443, 0.176827,
		33.228062, 40.872425, 25.323105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767742, 40.188812, 25.236067>,  <33.059814, 40.204315, 25.199326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767742, 40.188812, 25.236067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667828, 40.538910, 25.401741>,  <33.607880, 40.748970, 25.501146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667828, 40.538910, 25.401741>,  <33.767742, 40.188812, 25.236067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667828, 40.538910, 25.401741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730719, -0.110280, 0.673712,
		0.635342, 0.470936, -0.612013,
		-0.249782, 0.875247, 0.414187,
		33.592892, 40.801483, 25.525997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468422, 40.513302, 25.404379>,  <33.767742, 40.188812, 25.236067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468422, 40.513302, 25.404379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171555, 40.685833, 25.609570>,  <33.993435, 40.789352, 25.732683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171555, 40.685833, 25.609570>,  <34.468422, 40.513302, 25.404379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171555, 40.685833, 25.609570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581255, 0.033190, 0.813044,
		0.333665, 0.901583, -0.275346,
		-0.742166, 0.431330, 0.512975,
		33.948906, 40.815231, 25.763462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838470, 40.970825, 25.889950>,  <34.468422, 40.513302, 25.404379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838470, 40.970825, 25.889950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464916, 40.912895, 26.020723>,  <34.240784, 40.878136, 26.099188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464916, 40.912895, 26.020723>,  <34.838470, 40.970825, 25.889950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464916, 40.912895, 26.020723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346099, -0.136332, 0.928240,
		-0.089861, 0.980020, 0.177443,
		-0.933885, -0.144825, 0.326933,
		34.184750, 40.869446, 26.118803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809780, 41.420109, 26.523624>,  <34.838470, 40.970825, 25.889950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809780, 41.420109, 26.523624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498772, 41.170486, 26.554655>,  <34.312168, 41.020714, 26.573273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498772, 41.170486, 26.554655>,  <34.809780, 41.420109, 26.523624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498772, 41.170486, 26.554655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216681, -0.150053, 0.964642,
		-0.590352, 0.766835, 0.251890,
		-0.777518, -0.624058, 0.077575,
		34.265518, 40.983269, 26.577927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497822, 41.563461, 27.126951>,  <34.809780, 41.420109, 26.523624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497822, 41.563461, 27.126951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391567, 41.183487, 27.061155>,  <34.327816, 40.955502, 27.021677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391567, 41.183487, 27.061155>,  <34.497822, 41.563461, 27.126951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391567, 41.183487, 27.061155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170449, -0.214208, 0.961801,
		-0.948887, 0.227449, 0.218817,
		-0.265633, -0.949938, -0.164491,
		34.311878, 40.898506, 27.011808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812492, 41.389942, 27.595108>,  <34.497822, 41.563461, 27.126951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812492, 41.389942, 27.595108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985352, 41.040798, 27.504461>,  <34.089066, 40.831310, 27.450073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985352, 41.040798, 27.504461>,  <33.812492, 41.389942, 27.595108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985352, 41.040798, 27.504461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338712, -0.390000, 0.856256,
		-0.835776, -0.293272, -0.464188,
		0.432149, -0.872864, -0.226618,
		34.114998, 40.778938, 27.436476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352642, 40.804955, 27.837391>,  <33.812492, 41.389942, 27.595108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352642, 40.804955, 27.837391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730503, 40.673912, 27.830387>,  <33.957218, 40.595287, 27.826185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730503, 40.673912, 27.830387>,  <33.352642, 40.804955, 27.837391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730503, 40.673912, 27.830387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120216, -0.395316, 0.910645,
		-0.305250, -0.858139, -0.412820,
		0.944654, -0.327602, -0.017508,
		34.013901, 40.575630, 27.825134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319813, 40.226719, 28.225189>,  <33.352642, 40.804955, 27.837391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319813, 40.226719, 28.225189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708385, 40.321144, 28.234856>,  <33.941528, 40.377800, 28.240656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708385, 40.321144, 28.234856>,  <33.319813, 40.226719, 28.225189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708385, 40.321144, 28.234856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079345, -0.419111, 0.904462,
		0.223643, -0.876709, -0.425870,
		0.971436, 0.236067, 0.024168,
		33.999817, 40.391964, 28.242105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569111, 39.707844, 28.622587>,  <33.319813, 40.226719, 28.225189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569111, 39.707844, 28.622587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862225, 39.979973, 28.616985>,  <34.038094, 40.143250, 28.613625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862225, 39.979973, 28.616985>,  <33.569111, 39.707844, 28.622587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862225, 39.979973, 28.616985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167305, -0.160184, 0.972805,
		0.659576, -0.715197, -0.231201,
		0.732782, 0.680320, -0.014003,
		34.082058, 40.184071, 28.612785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133839, 39.463940, 29.009592>,  <33.569111, 39.707844, 28.622587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133839, 39.463940, 29.009592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181072, 39.860966, 29.021347>,  <34.209412, 40.099182, 29.028400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181072, 39.860966, 29.021347>,  <34.133839, 39.463940, 29.009592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181072, 39.860966, 29.021347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318775, -0.065918, 0.945536,
		0.940446, -0.102283, -0.324190,
		0.118082, 0.992569, 0.029387,
		34.216496, 40.158737, 29.030163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851158, 39.543869, 29.145224>,  <34.133839, 39.463940, 29.009592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851158, 39.543869, 29.145224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684479, 39.896030, 29.235777>,  <34.584469, 40.107327, 29.290108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684479, 39.896030, 29.235777>,  <34.851158, 39.543869, 29.145224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684479, 39.896030, 29.235777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582994, 0.067748, 0.809647,
		0.697479, 0.469362, -0.541500,
		-0.416703, 0.880403, 0.226382,
		34.559467, 40.160152, 29.303692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367538, 39.795345, 29.488012>,  <34.851158, 39.543869, 29.145224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367538, 39.795345, 29.488012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.067738, 40.041550, 29.585497>,  <34.887856, 40.189270, 29.643988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.067738, 40.041550, 29.585497>,  <35.367538, 39.795345, 29.488012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067738, 40.041550, 29.585497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450492, 0.204457, 0.869054,
		0.485081, 0.761149, -0.430522,
		-0.749503, 0.615508, 0.243713,
		34.842888, 40.226204, 29.658611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610699, 40.473686, 29.537403>,  <35.367538, 39.795345, 29.488012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610699, 40.473686, 29.537403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272423, 40.509136, 29.747908>,  <35.069458, 40.530407, 29.874210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272423, 40.509136, 29.747908>,  <35.610699, 40.473686, 29.537403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272423, 40.509136, 29.747908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522401, 0.339075, 0.782384,
		-0.109099, 0.936575, -0.333053,
		-0.845692, 0.088630, 0.526261,
		35.018715, 40.535725, 29.905787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689064, 41.093830, 30.022331>,  <35.610699, 40.473686, 29.537403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689064, 41.093830, 30.022331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381409, 40.889526, 30.175982>,  <35.196815, 40.766945, 30.268171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381409, 40.889526, 30.175982>,  <35.689064, 41.093830, 30.022331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381409, 40.889526, 30.175982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311226, 0.225619, 0.923166,
		-0.558185, 0.829589, -0.014569,
		-0.769135, -0.510763, 0.384126,
		35.150669, 40.736298, 30.291220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325512, 41.519260, 30.503971>,  <35.689064, 41.093830, 30.022331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325512, 41.519260, 30.503971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239571, 41.137985, 30.589071>,  <35.188004, 40.909218, 30.640131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239571, 41.137985, 30.589071>,  <35.325512, 41.519260, 30.503971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239571, 41.137985, 30.589071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300091, 0.142864, 0.943152,
		-0.929398, 0.266488, 0.255349,
		-0.214858, -0.953192, 0.212748,
		35.175114, 40.852028, 30.652895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025040, 41.582108, 31.175932>,  <35.325512, 41.519260, 30.503971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025040, 41.582108, 31.175932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114025, 41.193569, 31.142454>,  <35.167416, 40.960445, 31.122368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114025, 41.193569, 31.142454>,  <35.025040, 41.582108, 31.175932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114025, 41.193569, 31.142454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174823, -0.044711, 0.983584,
		-0.959140, -0.233441, 0.159866,
		0.222461, -0.971343, -0.083695,
		35.180763, 40.902168, 31.117346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758980, 41.288509, 31.830133>,  <35.025040, 41.582108, 31.175932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758980, 41.288509, 31.830133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013882, 41.017429, 31.683369>,  <35.166821, 40.854782, 31.595310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013882, 41.017429, 31.683369>,  <34.758980, 41.288509, 31.830133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013882, 41.017429, 31.683369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278899, -0.241030, 0.929580,
		-0.718418, -0.694710, 0.035414,
		0.637253, -0.677704, -0.366914,
		35.205059, 40.814117, 31.573294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595490, 40.722767, 32.154041>,  <34.758980, 41.288509, 31.830133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595490, 40.722767, 32.154041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980453, 40.726471, 32.045464>,  <35.211433, 40.728695, 31.980316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980453, 40.726471, 32.045464>,  <34.595490, 40.722767, 32.154041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980453, 40.726471, 32.045464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270095, -0.137855, 0.952914,
		-0.028591, -0.990409, -0.135175,
		0.962409, 0.009266, -0.271446,
		35.269176, 40.729252, 31.964029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868477, 40.352604, 32.634842>,  <34.595490, 40.722767, 32.154041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868477, 40.352604, 32.634842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.192173, 40.513878, 32.463932>,  <35.386391, 40.610641, 32.361385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.192173, 40.513878, 32.463932>,  <34.868477, 40.352604, 32.634842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192173, 40.513878, 32.463932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537005, -0.212748, 0.816311,
		0.238222, -0.890045, -0.388677,
		0.809244, 0.403185, -0.427277,
		35.434948, 40.634834, 32.335751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350433, 39.921391, 32.855061>,  <34.868477, 40.352604, 32.634842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350433, 39.921391, 32.855061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522739, 40.271191, 32.765892>,  <35.626122, 40.481071, 32.712391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522739, 40.271191, 32.765892>,  <35.350433, 39.921391, 32.855061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522739, 40.271191, 32.765892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457739, 0.001165, 0.889086,
		0.777765, -0.485024, -0.399791,
		0.430762, 0.874500, -0.222920,
		35.651970, 40.533539, 32.699017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964603, 39.830490, 33.030251>,  <35.350433, 39.921391, 32.855061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964603, 39.830490, 33.030251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920753, 40.227947, 33.020004>,  <35.894444, 40.466423, 33.013855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920753, 40.227947, 33.020004>,  <35.964603, 39.830490, 33.030251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920753, 40.227947, 33.020004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419719, 0.069637, 0.904979,
		0.901010, 0.088454, -0.424685,
		-0.109623, 0.993643, -0.025617,
		35.887867, 40.526039, 33.012318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532413, 40.151730, 33.296169>,  <35.964603, 39.830490, 33.030251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532413, 40.151730, 33.296169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277977, 40.459171, 33.323433>,  <36.125317, 40.643635, 33.339790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277977, 40.459171, 33.323433>,  <36.532413, 40.151730, 33.296169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277977, 40.459171, 33.323433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195102, 0.074742, 0.977931,
		0.746543, 0.635348, -0.197498,
		-0.636088, 0.768600, 0.068159,
		36.087151, 40.689751, 33.343880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901108, 40.545338, 33.786545>,  <36.532413, 40.151730, 33.296169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901108, 40.545338, 33.786545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542492, 40.722000, 33.772949>,  <36.327324, 40.827999, 33.764793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542492, 40.722000, 33.772949>,  <36.901108, 40.545338, 33.786545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542492, 40.722000, 33.772949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046912, 0.170968, 0.984159,
		0.440473, 0.880743, -0.173999,
		-0.896539, 0.441659, -0.033989,
		36.273529, 40.854496, 33.762753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927174, 41.235569, 34.028465>,  <36.901108, 40.545338, 33.786545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927174, 41.235569, 34.028465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557621, 41.097755, 34.095085>,  <36.335888, 41.015068, 34.135056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557621, 41.097755, 34.095085>,  <36.927174, 41.235569, 34.028465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557621, 41.097755, 34.095085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154509, 0.062329, 0.986023,
		-0.350095, 0.936704, -0.004352,
		-0.923883, -0.344529, 0.166550,
		36.280457, 40.994396, 34.145050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807972, 41.475067, 34.727867>,  <36.927174, 41.235569, 34.028465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807972, 41.475067, 34.727867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512497, 41.215122, 34.656300>,  <36.335213, 41.059155, 34.613361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512497, 41.215122, 34.656300>,  <36.807972, 41.475067, 34.727867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512497, 41.215122, 34.656300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124993, -0.128766, 0.983766,
		-0.662353, 0.749063, 0.013890,
		-0.738692, -0.649864, -0.178916,
		36.290890, 41.020164, 34.602623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161552, 41.709694, 35.132103>,  <36.807972, 41.475067, 34.727867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161552, 41.709694, 35.132103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132988, 41.320312, 35.045124>,  <36.115849, 41.086681, 34.992935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132988, 41.320312, 35.045124>,  <36.161552, 41.709694, 35.132103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132988, 41.320312, 35.045124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134925, -0.206576, 0.969083,
		-0.988279, 0.098547, -0.116591,
		-0.071415, -0.973455, -0.217451,
		36.111565, 41.028275, 34.979889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736115, 41.514595, 35.755703>,  <36.161552, 41.709694, 35.132103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736115, 41.514595, 35.755703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879902, 41.186359, 35.577980>,  <35.966175, 40.989418, 35.471348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879902, 41.186359, 35.577980>,  <35.736115, 41.514595, 35.755703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879902, 41.186359, 35.577980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031462, -0.465206, 0.884643,
		-0.932627, -0.331980, -0.141410,
		0.359469, -0.820593, -0.444309,
		35.987743, 40.940182, 35.444687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337341, 41.023273, 35.899136>,  <35.736115, 41.514595, 35.755703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337341, 41.023273, 35.899136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707844, 40.891541, 35.825832>,  <35.930145, 40.812500, 35.781849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707844, 40.891541, 35.825832>,  <35.337341, 41.023273, 35.899136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707844, 40.891541, 35.825832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019552, -0.443606, 0.896008,
		-0.376375, -0.833521, -0.404456,
		0.926261, -0.329327, -0.183259,
		35.985722, 40.792744, 35.770855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217117, 40.463802, 36.169762>,  <35.337341, 41.023273, 35.899136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217117, 40.463802, 36.169762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614849, 40.497364, 36.143635>,  <35.853489, 40.517502, 36.127960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614849, 40.497364, 36.143635>,  <35.217117, 40.463802, 36.169762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614849, 40.497364, 36.143635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106332, -0.786083, 0.608907,
		-0.000253, -0.612400, -0.790548,
		0.994330, 0.083906, -0.065317,
		35.913147, 40.522537, 36.124039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374622, 39.739944, 36.015839>,  <35.217117, 40.463802, 36.169762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374622, 39.739944, 36.015839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687904, 39.933029, 36.172596>,  <35.875874, 40.048878, 36.266651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687904, 39.933029, 36.172596>,  <35.374622, 39.739944, 36.015839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687904, 39.933029, 36.172596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084186, -0.706818, 0.702368,
		0.616034, -0.517109, -0.594223,
		0.783208, 0.482708, 0.391890,
		35.922867, 40.077843, 36.290161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858727, 39.267735, 36.073868>,  <35.374622, 39.739944, 36.015839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858727, 39.267735, 36.073868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945896, 39.568108, 36.323223>,  <35.998199, 39.748333, 36.472836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945896, 39.568108, 36.323223>,  <35.858727, 39.267735, 36.073868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945896, 39.568108, 36.323223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127735, -0.655188, 0.744589,
		0.967571, -0.082635, -0.238701,
		0.217923, 0.750933, 0.623385,
		36.011272, 39.793388, 36.510239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332127, 38.955902, 36.592300>,  <35.858727, 39.267735, 36.073868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332127, 38.955902, 36.592300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239948, 39.299194, 36.775753>,  <36.184643, 39.505169, 36.885822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239948, 39.299194, 36.775753>,  <36.332127, 38.955902, 36.592300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239948, 39.299194, 36.775753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118243, -0.443123, 0.888628,
		0.965874, 0.259011, 0.000637,
		-0.230447, 0.858228, 0.458628,
		36.170815, 39.556664, 36.913342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720779, 39.249741, 37.160076>,  <36.332127, 38.955902, 36.592300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720779, 39.249741, 37.160076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853275, 38.872364, 37.165676>,  <36.932774, 38.645939, 37.169037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853275, 38.872364, 37.165676>,  <36.720779, 39.249741, 37.160076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853275, 38.872364, 37.165676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245460, 0.071834, -0.966742,
		0.911058, 0.323664, 0.255372,
		0.331243, -0.943441, 0.014002,
		36.952648, 38.589333, 37.169876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295059, 39.214046, 36.772549>,  <36.720779, 39.249741, 37.160076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295059, 39.214046, 36.772549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206467, 38.824062, 36.780548>,  <37.153313, 38.590073, 36.785347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206467, 38.824062, 36.780548>,  <37.295059, 39.214046, 36.772549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206467, 38.824062, 36.780548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167652, -0.058268, -0.984123,
		0.960646, -0.214609, 0.176359,
		-0.221477, -0.974960, 0.019995,
		37.140022, 38.531574, 36.786545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809551, 38.964977, 36.472496>,  <37.295059, 39.214046, 36.772549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809551, 38.964977, 36.472496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522324, 38.689377, 36.433201>,  <37.349987, 38.524017, 36.409622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522324, 38.689377, 36.433201>,  <37.809551, 38.964977, 36.472496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522324, 38.689377, 36.433201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340763, -0.224988, -0.912831,
		0.606841, -0.688953, 0.396344,
		-0.718071, -0.689002, -0.098237,
		37.306904, 38.482677, 36.403728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149082, 38.434101, 36.057270>,  <37.809551, 38.964977, 36.472496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149082, 38.434101, 36.057270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754330, 38.375420, 36.030319>,  <37.517479, 38.340210, 36.014149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754330, 38.375420, 36.030319>,  <38.149082, 38.434101, 36.057270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754330, 38.375420, 36.030319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111510, -0.317685, -0.941616,
		0.116732, -0.936779, 0.329877,
		-0.986883, -0.146701, -0.067376,
		37.458263, 38.331409, 36.010105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043850, 37.733097, 35.628540>,  <38.149082, 38.434101, 36.057270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043850, 37.733097, 35.628540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691368, 37.918362, 35.590691>,  <37.479877, 38.029522, 35.567982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691368, 37.918362, 35.590691>,  <38.043850, 37.733097, 35.628540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691368, 37.918362, 35.590691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013425, -0.224612, -0.974356,
		-0.472539, -0.857339, 0.204148,
		-0.881207, 0.463162, -0.094628,
		37.427006, 38.057308, 35.562302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667892, 37.303471, 35.234459>,  <38.043850, 37.733097, 35.628540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667892, 37.303471, 35.234459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.476597, 37.648006, 35.165901>,  <37.361820, 37.854729, 35.124767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.476597, 37.648006, 35.165901>,  <37.667892, 37.303471, 35.234459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476597, 37.648006, 35.165901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044539, -0.218701, -0.974775,
		-0.877097, -0.458545, 0.142955,
		-0.478243, 0.861340, -0.171398,
		37.333122, 37.906410, 35.114483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075939, 37.031811, 34.819660>,  <37.667892, 37.303471, 35.234459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075939, 37.031811, 34.819660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.128967, 37.426495, 34.782078>,  <37.160782, 37.663307, 34.759529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.128967, 37.426495, 34.782078>,  <37.075939, 37.031811, 34.819660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128967, 37.426495, 34.782078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247046, -0.058905, -0.967212,
		-0.959893, 0.151430, 0.235955,
		0.132566, 0.986711, -0.093953,
		37.168736, 37.722507, 34.753891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621765, 37.232594, 34.409920>,  <37.075939, 37.031811, 34.819660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621765, 37.232594, 34.409920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857754, 37.553753, 34.375786>,  <36.999348, 37.746449, 34.355305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857754, 37.553753, 34.375786>,  <36.621765, 37.232594, 34.409920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857754, 37.553753, 34.375786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146684, 0.002651, -0.989180,
		-0.793987, 0.596107, 0.119337,
		0.589973, 0.802901, -0.085335,
		37.034744, 37.794624, 34.350185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331745, 37.784901, 33.981842>,  <36.621765, 37.232594, 34.409920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331745, 37.784901, 33.981842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.725361, 37.855606, 33.973675>,  <36.961533, 37.898029, 33.968773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.725361, 37.855606, 33.973675>,  <36.331745, 37.784901, 33.981842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725361, 37.855606, 33.973675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055863, 0.197955, -0.978618,
		-0.168941, 0.964141, 0.204670,
		0.984042, 0.176763, -0.020417,
		37.020573, 37.908634, 33.967548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426704, 38.403069, 33.587498>,  <36.331745, 37.784901, 33.981842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426704, 38.403069, 33.587498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787674, 38.230728, 33.587578>,  <37.004257, 38.127323, 33.587624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787674, 38.230728, 33.587578>,  <36.426704, 38.403069, 33.587498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787674, 38.230728, 33.587578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034791, 0.072411, -0.996768,
		0.429444, 0.899514, 0.080335,
		0.902424, -0.430850, 0.000198,
		37.058399, 38.101475, 33.587639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667664, 38.694897, 33.035698>,  <36.426704, 38.403069, 33.587498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667664, 38.694897, 33.035698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924866, 38.396305, 33.104187>,  <37.079185, 38.217152, 33.145279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924866, 38.396305, 33.104187>,  <36.667664, 38.694897, 33.035698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924866, 38.396305, 33.104187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300863, 0.040617, -0.952802,
		0.704290, 0.664171, 0.250704,
		0.643006, -0.746476, 0.171218,
		37.117767, 38.172363, 33.155552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262894, 39.013580, 32.784260>,  <36.667664, 38.694897, 33.035698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262894, 39.013580, 32.784260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285961, 38.614368, 32.774330>,  <37.299801, 38.374844, 32.768372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285961, 38.614368, 32.774330>,  <37.262894, 39.013580, 32.784260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285961, 38.614368, 32.774330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357464, 0.043859, -0.932897,
		0.932145, 0.044927, 0.359288,
		0.057670, -0.998027, -0.024824,
		37.303261, 38.314960, 32.766884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938042, 38.855152, 32.699017>,  <37.262894, 39.013580, 32.784260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938042, 38.855152, 32.699017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718452, 38.552532, 32.556885>,  <37.586697, 38.370960, 32.471607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718452, 38.552532, 32.556885>,  <37.938042, 38.855152, 32.699017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718452, 38.552532, 32.556885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411389, 0.125489, -0.902780,
		0.727589, -0.641781, 0.242347,
		-0.548975, -0.756551, -0.355326,
		37.553761, 38.325565, 32.450287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192642, 38.585487, 32.062763>,  <37.938042, 38.855152, 32.699017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192642, 38.585487, 32.062763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.841621, 38.398159, 32.021626>,  <37.631008, 38.285763, 31.996943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.841621, 38.398159, 32.021626>,  <38.192642, 38.585487, 32.062763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841621, 38.398159, 32.021626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058508, 0.108300, -0.992395,
		0.475900, -0.876895, -0.067639,
		-0.877551, -0.468323, -0.102846,
		37.578358, 38.257664, 31.990772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222733, 38.357311, 31.353292>,  <38.192642, 38.585487, 32.062763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222733, 38.357311, 31.353292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836517, 38.317036, 31.449293>,  <37.604790, 38.292870, 31.506893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836517, 38.317036, 31.449293>,  <38.222733, 38.357311, 31.353292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836517, 38.317036, 31.449293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242554, 0.013722, -0.970041,
		0.094384, -0.994823, -0.037673,
		-0.965536, -0.100694, 0.240003,
		37.546856, 38.286827, 31.521294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885075, 37.867130, 30.917507>,  <38.222733, 38.357311, 31.353292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885075, 37.867130, 30.917507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.560589, 38.067062, 31.038897>,  <37.365898, 38.187023, 31.111731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.560589, 38.067062, 31.038897>,  <37.885075, 37.867130, 30.917507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560589, 38.067062, 31.038897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368634, -0.034274, -0.928942,
		-0.453914, -0.865444, 0.212059,
		-0.811216, 0.499832, 0.303475,
		37.317223, 38.217010, 31.129938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181267, 37.571732, 30.711298>,  <37.885075, 37.867130, 30.917507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181267, 37.571732, 30.711298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118755, 37.965347, 30.745319>,  <37.081249, 38.201519, 30.765732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118755, 37.965347, 30.745319>,  <37.181267, 37.571732, 30.711298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118755, 37.965347, 30.745319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504948, -0.005592, -0.863132,
		-0.848884, -0.177838, 0.497765,
		-0.156281, 0.984044, 0.085052,
		37.071873, 38.260559, 30.770836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512375, 37.644558, 30.495691>,  <37.181267, 37.571732, 30.711298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512375, 37.644558, 30.495691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652351, 38.019222, 30.489971>,  <36.736340, 38.244022, 30.486540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652351, 38.019222, 30.489971>,  <36.512375, 37.644558, 30.495691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652351, 38.019222, 30.489971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491714, 0.170674, -0.853866,
		-0.797343, 0.305836, 0.520296,
		0.349944, 0.936661, -0.014298,
		36.757336, 38.300220, 30.485682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963478, 38.115746, 30.222183>,  <36.512375, 37.644558, 30.495691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963478, 38.115746, 30.222183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300163, 38.328751, 30.186514>,  <36.502174, 38.456554, 30.165112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300163, 38.328751, 30.186514>,  <35.963478, 38.115746, 30.222183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300163, 38.328751, 30.186514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365298, 0.440036, -0.820320,
		-0.397590, 0.723049, 0.564909,
		0.841712, 0.532511, -0.089175,
		36.552677, 38.488503, 30.159761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808628, 38.784100, 30.163843>,  <35.963478, 38.115746, 30.222183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808628, 38.784100, 30.163843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186001, 38.797310, 30.031872>,  <36.412422, 38.805237, 29.952688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186001, 38.797310, 30.031872>,  <35.808628, 38.784100, 30.163843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186001, 38.797310, 30.031872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273874, 0.638514, -0.719230,
		0.186913, 0.768901, 0.611436,
		0.943428, 0.033023, -0.329929,
		36.469028, 38.807217, 29.932894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941147, 39.387054, 29.775154>,  <35.808628, 38.784100, 30.163843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941147, 39.387054, 29.775154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217731, 39.131340, 29.640574>,  <36.383682, 38.977913, 29.559824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217731, 39.131340, 29.640574>,  <35.941147, 39.387054, 29.775154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217731, 39.131340, 29.640574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065863, 0.408007, -0.910600,
		0.719407, 0.651803, 0.240015,
		0.691460, -0.639283, -0.336453,
		36.425171, 38.939556, 29.539639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122269, 39.722485, 29.168753>,  <35.941147, 39.387054, 29.775154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122269, 39.722485, 29.168753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.268555, 39.351540, 29.137142>,  <36.356327, 39.128971, 29.118176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.268555, 39.351540, 29.137142>,  <36.122269, 39.722485, 29.168753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268555, 39.351540, 29.137142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115483, 0.039039, -0.992542,
		0.923533, 0.372117, -0.092817,
		0.365718, -0.927364, -0.079027,
		36.378269, 39.073330, 29.113434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615452, 39.778465, 28.752178>,  <36.122269, 39.722485, 29.168753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615452, 39.778465, 28.752178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490349, 39.400154, 28.717089>,  <36.415287, 39.173168, 28.696035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490349, 39.400154, 28.717089>,  <36.615452, 39.778465, 28.752178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490349, 39.400154, 28.717089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213061, 0.159858, -0.963873,
		0.925628, -0.282768, -0.251504,
		-0.312758, -0.945773, -0.087722,
		36.396523, 39.116421, 28.690773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985729, 39.490074, 28.206053>,  <36.615452, 39.778465, 28.752178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985729, 39.490074, 28.206053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686260, 39.230331, 28.259453>,  <36.506577, 39.074486, 28.291492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686260, 39.230331, 28.259453>,  <36.985729, 39.490074, 28.206053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686260, 39.230331, 28.259453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116173, -0.069749, -0.990777,
		0.652677, -0.757281, -0.023218,
		-0.748677, -0.649354, 0.133499,
		36.461658, 39.035526, 28.299503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956741, 38.887302, 27.598110>,  <36.985729, 39.490074, 28.206053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956741, 38.887302, 27.598110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581326, 38.836617, 27.726536>,  <36.356075, 38.806206, 27.803591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581326, 38.836617, 27.726536>,  <36.956741, 38.887302, 27.598110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581326, 38.836617, 27.726536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312061, -0.085979, -0.946164,
		0.147496, -0.988206, 0.041152,
		-0.938543, -0.126713, 0.321062,
		36.299763, 38.798603, 27.822855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651394, 38.228695, 27.311628>,  <36.956741, 38.887302, 27.598110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651394, 38.228695, 27.311628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324570, 38.421070, 27.438820>,  <36.128475, 38.536495, 27.515135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324570, 38.421070, 27.438820>,  <36.651394, 38.228695, 27.311628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324570, 38.421070, 27.438820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470301, -0.236925, -0.850108,
		-0.333514, -0.844135, 0.419768,
		-0.817059, 0.480940, 0.317979,
		36.079453, 38.565353, 27.534214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104607, 37.726048, 27.245285>,  <36.651394, 38.228695, 27.311628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104607, 37.726048, 27.245285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949581, 38.094749, 27.240173>,  <35.856567, 38.315971, 27.237106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949581, 38.094749, 27.240173>,  <36.104607, 37.726048, 27.245285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949581, 38.094749, 27.240173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593304, -0.260023, -0.761825,
		-0.705539, -0.287673, 0.647656,
		-0.387563, 0.921755, -0.012779,
		35.833313, 38.371277, 27.236340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484562, 37.674870, 27.416313>,  <36.104607, 37.726048, 27.245285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484562, 37.674870, 27.416313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474667, 38.016586, 27.208630>,  <35.468731, 38.221615, 27.084021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474667, 38.016586, 27.208630>,  <35.484562, 37.674870, 27.416313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474667, 38.016586, 27.208630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661901, -0.403215, -0.631906,
		-0.749183, 0.328034, 0.575429,
		-0.024735, 0.854290, -0.519208,
		35.467247, 38.272873, 27.052868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711567, 37.799381, 27.270498>,  <35.484562, 37.674870, 27.416313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711567, 37.799381, 27.270498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926632, 38.026604, 27.021263>,  <35.055672, 38.162937, 26.871723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926632, 38.026604, 27.021263>,  <34.711567, 37.799381, 27.270498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926632, 38.026604, 27.021263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649101, -0.192785, -0.735868,
		-0.538133, 0.800094, 0.265070,
		0.537662, 0.568053, -0.623086,
		35.087929, 38.197018, 26.834337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179310, 38.043213, 26.878311>,  <34.711567, 37.799381, 27.270498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179310, 38.043213, 26.878311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502502, 38.167820, 26.678263>,  <34.696419, 38.242584, 26.558233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502502, 38.167820, 26.678263>,  <34.179310, 38.043213, 26.878311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502502, 38.167820, 26.678263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510536, -0.053592, -0.858185,
		-0.294146, 0.948727, 0.115742,
		0.807980, 0.311522, -0.500123,
		34.744896, 38.261276, 26.528225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014549, 38.671021, 26.547693>,  <34.179310, 38.043213, 26.878311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014549, 38.671021, 26.547693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292217, 38.470963, 26.340624>,  <34.458817, 38.350929, 26.216383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292217, 38.470963, 26.340624>,  <34.014549, 38.671021, 26.547693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292217, 38.470963, 26.340624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528706, 0.133768, -0.838198,
		0.488468, 0.855548, -0.171572,
		0.694168, -0.500144, -0.517674,
		34.500469, 38.320919, 26.185322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075939, 39.042904, 25.949146>,  <34.014549, 38.671021, 26.547693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075939, 39.042904, 25.949146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221191, 38.679829, 25.865015>,  <34.308342, 38.461983, 25.814537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221191, 38.679829, 25.865015>,  <34.075939, 39.042904, 25.949146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221191, 38.679829, 25.865015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425421, 0.039311, -0.904142,
		0.828947, 0.417798, -0.371875,
		0.363130, -0.907689, -0.210327,
		34.330132, 38.407520, 25.801916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079136, 39.037464, 25.306131>,  <34.075939, 39.042904, 25.949146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079136, 39.037464, 25.306131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.178303, 38.653294, 25.356916>,  <34.237804, 38.422791, 25.387386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.178303, 38.653294, 25.356916>,  <34.079136, 39.037464, 25.306131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.178303, 38.653294, 25.356916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352967, -0.211591, -0.911396,
		0.902193, 0.181137, -0.391455,
		0.247916, -0.960426, 0.126961,
		34.252678, 38.365166, 25.395004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366375, 38.813011, 24.716959>,  <34.079136, 39.037464, 25.306131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366375, 38.813011, 24.716959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236221, 38.489170, 24.912371>,  <34.158131, 38.294865, 25.029617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236221, 38.489170, 24.912371>,  <34.366375, 38.813011, 24.716959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236221, 38.489170, 24.912371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673051, -0.164592, -0.721050,
		0.664175, -0.563424, -0.491351,
		-0.325384, -0.809607, 0.488530,
		34.138607, 38.246288, 25.058929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255337, 38.312664, 24.212042>,  <34.366375, 38.813011, 24.716959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255337, 38.312664, 24.212042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023720, 38.196846, 24.516903>,  <33.884750, 38.127357, 24.699820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023720, 38.196846, 24.516903>,  <34.255337, 38.312664, 24.212042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023720, 38.196846, 24.516903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690643, -0.322589, -0.647262,
		0.433273, -0.901166, -0.013179,
		-0.579039, -0.289543, 0.762153,
		33.850006, 38.109982, 24.745548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972267, 37.715477, 23.967058>,  <34.255337, 38.312664, 24.212042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972267, 37.715477, 23.967058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730522, 37.824280, 24.266594>,  <33.585476, 37.889561, 24.446316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730522, 37.824280, 24.266594>,  <33.972267, 37.715477, 23.967058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730522, 37.824280, 24.266594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795227, -0.263332, -0.546141,
		0.048638, -0.925563, 0.375457,
		-0.604358, 0.272010, 0.748840,
		33.549213, 37.905884, 24.491245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457684, 37.182770, 23.974970>,  <33.972267, 37.715477, 23.967058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457684, 37.182770, 23.974970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302742, 37.498047, 24.166262>,  <33.209778, 37.687214, 24.281036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302742, 37.498047, 24.166262>,  <33.457684, 37.182770, 23.974970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.302742, 37.498047, 24.166262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887696, -0.178824, -0.424285,
		-0.248902, -0.588869, 0.768948,
		-0.387354, 0.788198, 0.478226,
		33.186535, 37.734505, 24.309731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807514, 36.961288, 24.216213>,  <33.457684, 37.182770, 23.974970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807514, 36.961288, 24.216213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799126, 37.360989, 24.203201>,  <32.794090, 37.600807, 24.195395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799126, 37.360989, 24.203201>,  <32.807514, 36.961288, 24.216213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799126, 37.360989, 24.203201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863904, -0.034493, -0.502474,
		-0.503220, 0.017563, 0.863980,
		-0.020976, 0.999250, -0.032531,
		32.792831, 37.660763, 24.193441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626888, 36.501987, 23.625336>,  <32.807514, 36.961288, 24.216213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626888, 36.501987, 23.625336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772900, 36.157780, 23.483198>,  <32.860504, 35.951256, 23.397917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772900, 36.157780, 23.483198>,  <32.626888, 36.501987, 23.625336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772900, 36.157780, 23.483198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643045, -0.042968, 0.764622,
		-0.673238, -0.507608, 0.537666,
		0.365025, -0.860516, -0.355343,
		32.882408, 35.899624, 23.376595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900928, 36.139610, 24.219873>,  <32.626888, 36.501987, 23.625336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900928, 36.139610, 24.219873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063049, 35.936787, 23.915606>,  <33.160324, 35.815090, 23.733046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063049, 35.936787, 23.915606>,  <32.900928, 36.139610, 24.219873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063049, 35.936787, 23.915606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811185, -0.184213, 0.555018,
		-0.421553, -0.841994, 0.336658,
		0.405305, -0.507062, -0.760668,
		33.184639, 35.784668, 23.687405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996536, 35.481678, 24.471212>,  <32.900928, 36.139610, 24.219873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996536, 35.481678, 24.471212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.260601, 35.547073, 24.177965>,  <33.419041, 35.586311, 24.002016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.260601, 35.547073, 24.177965>,  <32.996536, 35.481678, 24.471212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.260601, 35.547073, 24.177965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750035, -0.196052, 0.631673,
		-0.040460, -0.966869, -0.252045,
		0.660160, 0.163485, -0.733118,
		33.458649, 35.596119, 23.958031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613346, 34.921963, 24.612576>,  <32.996536, 35.481678, 24.471212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613346, 34.921963, 24.612576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741879, 35.224239, 24.384300>,  <33.818996, 35.405605, 24.247335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741879, 35.224239, 24.384300>,  <33.613346, 34.921963, 24.612576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741879, 35.224239, 24.384300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834747, 0.058530, 0.547515,
		0.447152, -0.652313, -0.612000,
		0.321330, 0.755687, -0.570688,
		33.838276, 35.450947, 24.213095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415848, 34.849201, 24.518419>,  <33.613346, 34.921963, 24.612576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415848, 34.849201, 24.518419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349720, 35.231995, 24.423048>,  <34.310043, 35.461670, 24.365826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349720, 35.231995, 24.423048>,  <34.415848, 34.849201, 24.518419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349720, 35.231995, 24.423048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813545, 0.268986, 0.515549,
		0.557506, -0.108741, -0.823020,
		-0.165320, 0.956986, -0.238427,
		34.300125, 35.519089, 24.351521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098976, 35.159096, 24.228453>,  <34.415848, 34.849201, 24.518419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098976, 35.159096, 24.228453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856144, 35.452335, 24.351105>,  <34.710445, 35.628277, 24.424696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856144, 35.452335, 24.351105>,  <35.098976, 35.159096, 24.228453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856144, 35.452335, 24.351105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726506, 0.355718, 0.587923,
		0.321930, 0.579686, -0.748549,
		-0.607083, 0.733096, 0.306629,
		34.674019, 35.672264, 24.443094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416836, 35.738350, 24.063316>,  <35.098976, 35.159096, 24.228453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416836, 35.738350, 24.063316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185532, 35.832703, 24.375721>,  <35.046749, 35.889313, 24.563164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185532, 35.832703, 24.375721>,  <35.416836, 35.738350, 24.063316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185532, 35.832703, 24.375721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803519, 0.330499, 0.495104,
		-0.141337, 0.913855, -0.380649,
		-0.578257, 0.235882, 0.781011,
		35.012054, 35.903465, 24.610023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796688, 36.241203, 24.323910>,  <35.416836, 35.738350, 24.063316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796688, 36.241203, 24.323910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517921, 36.169922, 24.601772>,  <35.350662, 36.127155, 24.768490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517921, 36.169922, 24.601772>,  <35.796688, 36.241203, 24.323910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517921, 36.169922, 24.601772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683037, 0.130255, 0.718675,
		-0.218551, 0.975335, 0.030941,
		-0.696918, -0.178201, 0.694658,
		35.308846, 36.116463, 24.810169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884357, 36.750832, 24.873802>,  <35.796688, 36.241203, 24.323910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884357, 36.750832, 24.873802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675819, 36.441437, 25.017979>,  <35.550697, 36.255802, 25.104485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675819, 36.441437, 25.017979>,  <35.884357, 36.750832, 24.873802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675819, 36.441437, 25.017979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534481, 0.033289, 0.844525,
		-0.665225, 0.632941, 0.396058,
		-0.521350, -0.773484, 0.360439,
		35.519413, 36.209393, 25.126110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645542, 36.974075, 25.419260>,  <35.884357, 36.750832, 24.873802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645542, 36.974075, 25.419260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.645771, 36.576927, 25.466949>,  <35.645908, 36.338638, 25.495564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.645771, 36.576927, 25.466949>,  <35.645542, 36.974075, 25.419260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645771, 36.576927, 25.466949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452369, 0.106587, 0.885439,
		-0.891831, 0.053425, 0.449204,
		0.000575, -0.992867, 0.119226,
		35.645943, 36.279068, 25.502718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331406, 36.794392, 26.049162>,  <35.645542, 36.974075, 25.419260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331406, 36.794392, 26.049162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539845, 36.459156, 25.984573>,  <35.664906, 36.258015, 25.945820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539845, 36.459156, 25.984573>,  <35.331406, 36.794392, 26.049162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539845, 36.459156, 25.984573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521902, 0.163190, 0.837250,
		-0.675335, -0.520560, 0.522436,
		0.521095, -0.838085, -0.161474,
		35.696175, 36.207729, 25.936131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420849, 36.398952, 26.727774>,  <35.331406, 36.794392, 26.049162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420849, 36.398952, 26.727774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727211, 36.274261, 26.502844>,  <35.911030, 36.199448, 26.367886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727211, 36.274261, 26.502844>,  <35.420849, 36.398952, 26.727774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727211, 36.274261, 26.502844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626664, 0.166331, 0.761332,
		-0.143796, -0.935500, 0.322743,
		0.765908, -0.311728, -0.562326,
		35.956982, 36.180744, 26.334146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668274, 35.764362, 27.029470>,  <35.420849, 36.398952, 26.727774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668274, 35.764362, 27.029470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968605, 35.925426, 26.820044>,  <36.148804, 36.022064, 26.694387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968605, 35.925426, 26.820044>,  <35.668274, 35.764362, 27.029470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968605, 35.925426, 26.820044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595049, -0.068334, 0.800779,
		0.286666, -0.912794, -0.290911,
		0.750826, 0.402663, -0.523568,
		36.193851, 36.046227, 26.662973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235794, 35.396721, 27.156628>,  <35.668274, 35.764362, 27.029470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235794, 35.396721, 27.156628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416042, 35.733883, 27.039019>,  <36.524193, 35.936180, 26.968452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416042, 35.733883, 27.039019>,  <36.235794, 35.396721, 27.156628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416042, 35.733883, 27.039019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612013, -0.051916, 0.789142,
		0.649909, -0.535550, -0.539264,
		0.450621, 0.842907, -0.294023,
		36.551228, 35.986755, 26.950811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812836, 35.287331, 27.454470>,  <36.235794, 35.396721, 27.156628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812836, 35.287331, 27.454470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824184, 35.677330, 27.366316>,  <36.830994, 35.911331, 27.313423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824184, 35.677330, 27.366316>,  <36.812836, 35.287331, 27.454470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824184, 35.677330, 27.366316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640832, 0.151465, 0.752591,
		0.767157, -0.162578, -0.620515,
		0.028368, 0.975001, -0.220382,
		36.832695, 35.969830, 27.300201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488091, 35.498966, 27.533752>,  <36.812836, 35.287331, 27.454470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488091, 35.498966, 27.533752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312672, 35.858353, 27.542103>,  <37.207420, 36.073986, 27.547113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312672, 35.858353, 27.542103>,  <37.488091, 35.498966, 27.533752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312672, 35.858353, 27.542103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577631, 0.263998, 0.772430,
		0.688489, 0.350807, -0.634757,
		-0.438548, 0.898465, 0.020877,
		37.181107, 36.127892, 27.548367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982853, 35.954819, 27.790564>,  <37.488091, 35.498966, 27.533752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982853, 35.954819, 27.790564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650528, 36.163666, 27.867643>,  <37.451134, 36.288975, 27.913891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650528, 36.163666, 27.867643>,  <37.982853, 35.954819, 27.790564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650528, 36.163666, 27.867643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301318, 0.130882, 0.944499,
		0.467923, 0.842768, -0.266064,
		-0.830816, 0.522122, 0.192698,
		37.401283, 36.320301, 27.925453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275669, 36.571369, 28.033255>,  <37.982853, 35.954819, 27.790564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275669, 36.571369, 28.033255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904552, 36.530178, 28.176695>,  <37.681881, 36.505463, 28.262758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904552, 36.530178, 28.176695>,  <38.275669, 36.571369, 28.033255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904552, 36.530178, 28.176695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351401, 0.081763, 0.932648,
		-0.125366, 0.991317, -0.039672,
		-0.927793, -0.102981, 0.358600,
		37.626213, 36.499283, 28.284275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111687, 37.090752, 28.513849>,  <38.275669, 36.571369, 28.033255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111687, 37.090752, 28.513849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.876102, 36.788239, 28.627811>,  <37.734753, 36.606731, 28.696188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.876102, 36.788239, 28.627811>,  <38.111687, 37.090752, 28.513849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876102, 36.788239, 28.627811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258844, 0.157437, 0.953002,
		-0.765590, 0.635025, 0.103035,
		-0.588959, -0.756279, 0.284904,
		37.699413, 36.561356, 28.713284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819496, 37.348866, 29.171515>,  <38.111687, 37.090752, 28.513849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819496, 37.348866, 29.171515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744785, 36.956059, 29.182526>,  <37.699959, 36.720375, 29.189133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744785, 36.956059, 29.182526>,  <37.819496, 37.348866, 29.171515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744785, 36.956059, 29.182526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184975, -0.007634, 0.982714,
		-0.964831, 0.188638, 0.183075,
		-0.186775, -0.982017, 0.027528,
		37.688751, 36.661453, 29.190784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366226, 37.212246, 29.755520>,  <37.819496, 37.348866, 29.171515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366226, 37.212246, 29.755520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526901, 36.855255, 29.673410>,  <37.623306, 36.641060, 29.624146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526901, 36.855255, 29.673410>,  <37.366226, 37.212246, 29.755520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526901, 36.855255, 29.673410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013153, -0.218505, 0.975747,
		-0.915680, -0.394650, -0.076033,
		0.401692, -0.892472, -0.205271,
		37.647408, 36.587513, 29.611830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902943, 36.676624, 30.048178>,  <37.366226, 37.212246, 29.755520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902943, 36.676624, 30.048178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261608, 36.501488, 30.021990>,  <37.476807, 36.396408, 30.006277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261608, 36.501488, 30.021990>,  <36.902943, 36.676624, 30.048178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261608, 36.501488, 30.021990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066936, -0.280270, 0.957585,
		-0.437618, -0.854251, -0.280616,
		0.896666, -0.437839, -0.065471,
		37.530609, 36.370136, 30.002348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783245, 35.952457, 30.393229>,  <36.902943, 36.676624, 30.048178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783245, 35.952457, 30.393229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.176834, 36.022785, 30.381363>,  <37.412987, 36.064983, 30.374245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.176834, 36.022785, 30.381363>,  <36.783245, 35.952457, 30.393229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176834, 36.022785, 30.381363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088549, -0.337448, 0.937170,
		0.154767, -0.924779, -0.347609,
		0.983975, 0.175823, -0.029663,
		37.472027, 36.075531, 30.372463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053360, 35.427807, 30.684355>,  <36.783245, 35.952457, 30.393229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053360, 35.427807, 30.684355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337238, 35.708603, 30.708157>,  <37.507565, 35.877079, 30.722439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337238, 35.708603, 30.708157>,  <37.053360, 35.427807, 30.684355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337238, 35.708603, 30.708157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233979, -0.314529, 0.919960,
		0.664520, -0.638968, -0.387470,
		0.709695, 0.701992, 0.059506,
		37.550148, 35.919201, 30.726007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591335, 35.067368, 31.048414>,  <37.053360, 35.427807, 30.684355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591335, 35.067368, 31.048414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.710426, 35.447720, 31.082304>,  <37.781883, 35.675930, 31.102638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.710426, 35.447720, 31.082304>,  <37.591335, 35.067368, 31.048414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710426, 35.447720, 31.082304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360653, -0.194207, 0.912257,
		0.883903, -0.241052, -0.400760,
		0.297731, 0.950883, 0.084724,
		37.799747, 35.732983, 31.107721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299000, 35.162766, 31.231207>,  <37.591335, 35.067368, 31.048414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299000, 35.162766, 31.231207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125774, 35.501545, 31.354584>,  <38.021839, 35.704811, 31.428610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125774, 35.501545, 31.354584>,  <38.299000, 35.162766, 31.231207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125774, 35.501545, 31.354584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333230, -0.167515, 0.927845,
		0.837503, 0.504601, -0.209683,
		-0.433067, 0.846945, 0.308442,
		37.995853, 35.755630, 31.447117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830791, 35.513958, 31.549265>,  <38.299000, 35.162766, 31.231207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830791, 35.513958, 31.549265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474339, 35.625687, 31.692301>,  <38.260468, 35.692722, 31.778122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474339, 35.625687, 31.692301>,  <38.830791, 35.513958, 31.549265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474339, 35.625687, 31.692301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336663, -0.121349, 0.933773,
		0.304217, 0.952498, 0.014100,
		-0.891128, 0.279323, 0.357588,
		38.207001, 35.709484, 31.799578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017181, 35.588409, 32.176861>,  <38.830791, 35.513958, 31.549265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017181, 35.588409, 32.176861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618702, 35.623070, 32.180260>,  <38.379612, 35.643867, 32.182301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618702, 35.623070, 32.180260>,  <39.017181, 35.588409, 32.176861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618702, 35.623070, 32.180260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005780, -0.031570, 0.999485,
		0.086876, 0.995738, 0.030949,
		-0.996202, 0.086653, 0.008498,
		38.319839, 35.649067, 32.182808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861107, 36.145725, 32.669605>,  <39.017181, 35.588409, 32.176861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861107, 36.145725, 32.669605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563744, 35.883507, 32.616543>,  <38.385326, 35.726177, 32.584705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563744, 35.883507, 32.616543>,  <38.861107, 36.145725, 32.669605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563744, 35.883507, 32.616543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054402, -0.256943, 0.964894,
		-0.666618, 0.710097, 0.226677,
		-0.743412, -0.655547, -0.132652,
		38.340721, 35.686844, 32.576748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321117, 36.396095, 33.037003>,  <38.861107, 36.145725, 32.669605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321117, 36.396095, 33.037003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.294861, 35.999176, 32.994968>,  <38.279106, 35.761024, 32.969749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.294861, 35.999176, 32.994968>,  <38.321117, 36.396095, 33.037003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294861, 35.999176, 32.994968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177789, -0.115254, 0.977296,
		-0.981877, 0.045471, 0.183985,
		-0.065644, -0.992295, -0.105081,
		38.275169, 35.701488, 32.963444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076862, 36.230644, 33.644451>,  <38.321117, 36.396095, 33.037003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076862, 36.230644, 33.644451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.140942, 35.860630, 33.506672>,  <38.179390, 35.638622, 33.424004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.140942, 35.860630, 33.506672>,  <38.076862, 36.230644, 33.644451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140942, 35.860630, 33.506672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030545, -0.353435, 0.934961,
		-0.986612, -0.139261, -0.084876,
		0.160202, -0.925035, -0.344449,
		38.189003, 35.583118, 33.403336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577240, 35.734360, 33.846058>,  <38.076862, 36.230644, 33.644451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577240, 35.734360, 33.846058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.916798, 35.531570, 33.786243>,  <38.120533, 35.409897, 33.750355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.916798, 35.531570, 33.786243>,  <37.577240, 35.734360, 33.846058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916798, 35.531570, 33.786243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083008, -0.407256, 0.909534,
		-0.522011, -0.759682, -0.387799,
		0.848890, -0.506977, -0.149532,
		38.171463, 35.379478, 33.741383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478561, 35.068188, 34.192848>,  <37.577240, 35.734360, 33.846058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478561, 35.068188, 34.192848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.873211, 35.102863, 34.137634>,  <38.110001, 35.123669, 34.104504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.873211, 35.102863, 34.137634>,  <37.478561, 35.068188, 34.192848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873211, 35.102863, 34.137634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161682, -0.412915, 0.896304,
		0.020705, -0.906635, -0.421409,
		0.986626, 0.086692, -0.138038,
		38.169197, 35.128872, 34.096222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653732, 34.470863, 34.622364>,  <37.478561, 35.068188, 34.192848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653732, 34.470863, 34.622364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003391, 34.628963, 34.509487>,  <38.213188, 34.723824, 34.441761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003391, 34.628963, 34.509487>,  <37.653732, 34.470863, 34.622364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003391, 34.628963, 34.509487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477515, -0.593595, 0.647784,
		0.088528, -0.701014, -0.707632,
		0.874152, 0.395252, -0.282195,
		38.265636, 34.747540, 34.424828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127617, 33.935665, 34.411530>,  <37.653732, 34.470863, 34.622364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.127617, 33.935665, 34.411530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332390, 34.250729, 34.548656>,  <38.455254, 34.439766, 34.630932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332390, 34.250729, 34.548656>,  <38.127617, 33.935665, 34.411530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332390, 34.250729, 34.548656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379596, -0.565421, 0.732261,
		0.770606, -0.244735, -0.588448,
		0.511931, 0.787657, 0.342816,
		38.485970, 34.487026, 34.651501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765293, 33.669746, 34.518749>,  <38.127617, 33.935665, 34.411530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765293, 33.669746, 34.518749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.730415, 33.991924, 34.753239>,  <38.709488, 34.185230, 34.893932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.730415, 33.991924, 34.753239>,  <38.765293, 33.669746, 34.518749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730415, 33.991924, 34.753239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364016, -0.522007, 0.771363,
		0.927302, 0.280652, -0.247679,
		-0.087194, 0.805446, 0.586220,
		38.704258, 34.233559, 34.929104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417408, 33.719486, 34.901039>,  <38.765293, 33.669746, 34.518749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417408, 33.719486, 34.901039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156853, 33.948875, 35.099766>,  <39.000519, 34.086510, 35.219002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156853, 33.948875, 35.099766>,  <39.417408, 33.719486, 34.901039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156853, 33.948875, 35.099766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420343, -0.272372, 0.865520,
		0.631670, 0.772621, -0.063635,
		-0.651387, 0.573472, 0.496815,
		38.961437, 34.120918, 35.248810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833969, 34.027065, 35.564716>,  <39.417408, 33.719486, 34.901039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833969, 34.027065, 35.564716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443951, 34.041241, 35.652382>,  <39.209938, 34.049747, 35.704979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443951, 34.041241, 35.652382>,  <39.833969, 34.027065, 35.564716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443951, 34.041241, 35.652382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162036, -0.561225, 0.811647,
		0.151763, 0.826905, 0.541477,
		-0.975045, 0.035439, 0.219162,
		39.151436, 34.051872, 35.718132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854176, 34.307896, 36.196682>,  <39.833969, 34.027065, 35.564716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854176, 34.307896, 36.196682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516121, 34.105274, 36.128387>,  <39.313290, 33.983700, 36.087410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516121, 34.105274, 36.128387>,  <39.854176, 34.307896, 36.196682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516121, 34.105274, 36.128387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071833, -0.424127, 0.902750,
		-0.529705, 0.750681, 0.394831,
		-0.845135, -0.506553, -0.170738,
		39.262581, 33.953308, 36.077168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470516, 34.401588, 36.720497>,  <39.854176, 34.307896, 36.196682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470516, 34.401588, 36.720497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280674, 34.075912, 36.586727>,  <39.166767, 33.880508, 36.506466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280674, 34.075912, 36.586727>,  <39.470516, 34.401588, 36.720497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280674, 34.075912, 36.586727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192345, -0.466699, 0.863247,
		-0.858923, 0.345380, 0.378105,
		-0.474610, -0.814190, -0.334426,
		39.138290, 33.831657, 36.486401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847637, 34.219841, 37.156635>,  <39.470516, 34.401588, 36.720497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847637, 34.219841, 37.156635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977409, 33.880054, 36.990192>,  <39.055275, 33.676182, 36.890327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977409, 33.880054, 36.990192>,  <38.847637, 34.219841, 37.156635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977409, 33.880054, 36.990192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129817, -0.395758, 0.909133,
		-0.936958, -0.348971, -0.018122,
		0.324433, -0.849467, -0.416111,
		39.074738, 33.625214, 36.865360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507595, 33.659203, 37.437092>,  <38.847637, 34.219841, 37.156635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507595, 33.659203, 37.437092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.832962, 33.469837, 37.301903>,  <39.028183, 33.356216, 37.220791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.832962, 33.469837, 37.301903>,  <38.507595, 33.659203, 37.437092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832962, 33.469837, 37.301903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045837, -0.631395, 0.774106,
		-0.579865, -0.614183, -0.535290,
		0.813422, -0.473413, -0.337972,
		39.076988, 33.327812, 37.200512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297943, 32.994370, 37.522305>,  <38.507595, 33.659203, 37.437092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297943, 32.994370, 37.522305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.695644, 32.984013, 37.480770>,  <38.934265, 32.977798, 37.455849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.695644, 32.984013, 37.480770>,  <38.297943, 32.994370, 37.522305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695644, 32.984013, 37.480770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072971, -0.545722, 0.834783,
		-0.078284, -0.837566, -0.540698,
		0.994257, -0.025894, -0.103840,
		38.993923, 32.976246, 37.449619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390213, 32.182339, 37.416359>,  <38.297943, 32.994370, 37.522305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390213, 32.182339, 37.416359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.737976, 32.356071, 37.510574>,  <38.946636, 32.460312, 37.567104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.737976, 32.356071, 37.510574>,  <38.390213, 32.182339, 37.416359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737976, 32.356071, 37.510574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151143, -0.687658, 0.710129,
		0.470403, -0.581794, -0.663504,
		0.869412, 0.434331, 0.235542,
		38.998798, 32.486370, 37.581238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792191, 31.581352, 37.456997>,  <38.390213, 32.182339, 37.416359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792191, 31.581352, 37.456997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977974, 31.870895, 37.661079>,  <39.089443, 32.044621, 37.783527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977974, 31.870895, 37.661079>,  <38.792191, 31.581352, 37.456997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977974, 31.870895, 37.661079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160193, -0.635282, 0.755484,
		0.870984, -0.269164, -0.411021,
		0.464463, 0.723856, 0.510202,
		39.117313, 32.088051, 37.814140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487919, 31.354065, 37.700783>,  <38.792191, 31.581352, 37.456997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487919, 31.354065, 37.700783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374874, 31.640793, 37.955750>,  <39.307049, 31.812830, 38.108730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374874, 31.640793, 37.955750>,  <39.487919, 31.354065, 37.700783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374874, 31.640793, 37.955750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370740, -0.531244, 0.761795,
		0.884695, 0.451605, -0.115621,
		-0.282607, 0.716821, 0.637417,
		39.290092, 31.855839, 38.146976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992386, 31.364574, 38.199982>,  <39.487919, 31.354065, 37.700783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992386, 31.364574, 38.199982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699192, 31.580465, 38.365601>,  <39.523277, 31.709999, 38.464970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699192, 31.580465, 38.365601>,  <39.992386, 31.364574, 38.199982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699192, 31.580465, 38.365601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344926, -0.229729, 0.910083,
		0.586314, 0.809888, -0.017779,
		-0.732981, 0.539727, 0.414045,
		39.479298, 31.742384, 38.489815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280270, 31.900745, 38.684910>,  <39.992386, 31.364574, 38.199982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280270, 31.900745, 38.684910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905201, 31.813244, 38.792923>,  <39.680161, 31.760744, 38.857731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905201, 31.813244, 38.792923>,  <40.280270, 31.900745, 38.684910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905201, 31.813244, 38.792923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307710, -0.161506, 0.937673,
		-0.161506, 0.962322, 0.218752,
		-0.937673, -0.218752, 0.270032,
		39.623898, 31.747618, 38.873932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126492, 32.228817, 39.341942>,  <40.280270, 31.900745, 38.684910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126492, 32.228817, 39.341942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.887463, 31.909634, 39.310539>,  <39.744045, 31.718122, 39.291698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.887463, 31.909634, 39.310539>,  <40.126492, 32.228817, 39.341942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887463, 31.909634, 39.310539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186453, -0.233524, 0.954307,
		-0.779833, 0.555631, 0.288330,
		-0.597575, -0.797960, -0.078511,
		39.708191, 31.670246, 39.286987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765499, 32.207687, 39.880859>,  <40.126492, 32.228817, 39.341942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765499, 32.207687, 39.880859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.757454, 31.822155, 39.774551>,  <39.752628, 31.590837, 39.710766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.757454, 31.822155, 39.774551>,  <39.765499, 32.207687, 39.880859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757454, 31.822155, 39.774551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007842, -0.265968, 0.963950,
		-0.999767, 0.017300, 0.012907,
		-0.020109, -0.963827, -0.265770,
		39.751423, 31.533007, 39.694820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218029, 31.936890, 40.279144>,  <39.765499, 32.207687, 39.880859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218029, 31.936890, 40.279144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529606, 31.704750, 40.184113>,  <39.716553, 31.565466, 40.127094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529606, 31.704750, 40.184113>,  <39.218029, 31.936890, 40.279144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529606, 31.704750, 40.184113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033302, -0.340039, 0.939821,
		-0.626213, -0.739977, -0.245543,
		0.778941, -0.580352, -0.237580,
		39.763287, 31.530645, 40.112839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971016, 31.446941, 39.886646>,  <39.218029, 31.936890, 40.279144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971016, 31.446941, 39.886646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120926, 31.078476, 39.844692>,  <39.210873, 30.857397, 39.819519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120926, 31.078476, 39.844692>,  <38.971016, 31.446941, 39.886646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120926, 31.078476, 39.844692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119146, -0.160047, 0.979892,
		-0.919428, -0.354743, -0.169734,
		0.374775, -0.921163, -0.104885,
		39.233360, 30.802126, 39.813225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469913, 31.084518, 40.229614>,  <38.971016, 31.446941, 39.886646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469913, 31.084518, 40.229614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.823502, 30.899813, 40.200306>,  <39.035656, 30.788990, 40.182720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.823502, 30.899813, 40.200306>,  <38.469913, 31.084518, 40.229614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823502, 30.899813, 40.200306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017657, -0.189575, 0.981708,
		-0.467208, -0.866508, -0.175732,
		0.883972, -0.461764, -0.073271,
		39.088692, 30.761284, 40.178326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413754, 30.372179, 40.370758>,  <38.469913, 31.084518, 40.229614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413754, 30.372179, 40.370758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793823, 30.479239, 40.434677>,  <39.021866, 30.543474, 40.473030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793823, 30.479239, 40.434677>,  <38.413754, 30.372179, 40.370758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793823, 30.479239, 40.434677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094395, -0.241516, 0.965795,
		0.297087, -0.932756, -0.204217,
		0.950173, 0.267648, 0.159799,
		39.078876, 30.559532, 40.482616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785393, 29.794960, 40.670368>,  <38.413754, 30.372179, 40.370758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785393, 29.794960, 40.670368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964252, 30.136059, 40.778351>,  <39.071568, 30.340717, 40.843140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964252, 30.136059, 40.778351>,  <38.785393, 29.794960, 40.670368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964252, 30.136059, 40.778351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145879, -0.228248, 0.962612,
		0.882481, -0.469817, 0.022336,
		0.447153, 0.852745, 0.269961,
		39.098400, 30.391882, 40.859341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358459, 29.569799, 41.158157>,  <38.785393, 29.794960, 40.670368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358459, 29.569799, 41.158157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.257214, 29.951128, 41.224018>,  <39.196468, 30.179926, 41.263535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.257214, 29.951128, 41.224018>,  <39.358459, 29.569799, 41.158157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257214, 29.951128, 41.224018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221663, -0.222811, 0.949326,
		0.941701, 0.203787, 0.267713,
		-0.253110, 0.953324, 0.164649,
		39.181282, 30.237125, 41.273415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949966, 29.803099, 41.570587>,  <39.358459, 29.569799, 41.158157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949966, 29.803099, 41.570587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669994, 30.081335, 41.635391>,  <39.502010, 30.248276, 41.674274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669994, 30.081335, 41.635391>,  <39.949966, 29.803099, 41.570587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669994, 30.081335, 41.635391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263012, 0.040141, 0.963957,
		0.664016, 0.717317, -0.211044,
		-0.699934, 0.695590, 0.162009,
		39.460014, 30.290012, 41.683994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273499, 30.275831, 42.077652>,  <39.949966, 29.803099, 41.570587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273499, 30.275831, 42.077652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883629, 30.364996, 42.070469>,  <39.649708, 30.418495, 42.066158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883629, 30.364996, 42.070469>,  <40.273499, 30.275831, 42.077652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883629, 30.364996, 42.070469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008394, 0.043782, 0.999006,
		0.223477, 0.973855, -0.040802,
		-0.974673, 0.222913, -0.017958,
		39.591228, 30.431870, 42.065083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157387, 31.030134, 42.395607>,  <40.273499, 30.275831, 42.077652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.157387, 31.030134, 42.395607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856102, 30.769651, 42.432701>,  <39.675331, 30.613361, 42.454956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856102, 30.769651, 42.432701>,  <40.157387, 31.030134, 42.395607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856102, 30.769651, 42.432701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236613, 0.399785, 0.885543,
		-0.613746, 0.645060, -0.455207,
		-0.753213, -0.651206, 0.092737,
		39.630138, 30.574289, 42.460522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544014, 31.421392, 42.534542>,  <40.157387, 31.030134, 42.395607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544014, 31.421392, 42.534542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.624146, 31.052952, 42.668076>,  <39.672222, 30.831888, 42.748196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.624146, 31.052952, 42.668076>,  <39.544014, 31.421392, 42.534542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624146, 31.052952, 42.668076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275371, 0.379941, 0.883072,
		-0.940234, -0.084974, 0.329757,
		0.200326, -0.921099, 0.333834,
		39.684242, 30.776623, 42.768227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130375, 31.305462, 43.197071>,  <39.544014, 31.421392, 42.534542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130375, 31.305462, 43.197071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435841, 31.047499, 43.184963>,  <39.619118, 30.892721, 43.177696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435841, 31.047499, 43.184963>,  <39.130375, 31.305462, 43.197071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435841, 31.047499, 43.184963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267437, 0.273307, 0.924003,
		-0.587621, -0.713722, 0.381186,
		0.763662, -0.644907, -0.030274,
		39.664940, 30.854027, 43.175880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084789, 30.976971, 43.853466>,  <39.130375, 31.305462, 43.197071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084789, 30.976971, 43.853466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.446354, 31.014584, 43.686562>,  <39.663292, 31.037151, 43.586418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.446354, 31.014584, 43.686562>,  <39.084789, 30.976971, 43.853466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446354, 31.014584, 43.686562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361405, 0.353854, 0.862655,
		0.228765, -0.930562, 0.285869,
		0.903910, 0.094031, -0.417259,
		39.717525, 31.042793, 43.561382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310715, 30.284243, 44.156586>,  <39.084789, 30.976971, 43.853466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310715, 30.284243, 44.156586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142345, 29.937420, 44.049973>,  <39.041325, 29.729326, 43.986004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142345, 29.937420, 44.049973>,  <39.310715, 30.284243, 44.156586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142345, 29.937420, 44.049973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083955, 0.329803, -0.940309,
		0.903203, -0.373421, -0.211616,
		-0.420923, -0.867056, -0.266529,
		39.016068, 29.677303, 43.970013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708645, 29.869720, 43.633736>,  <39.310715, 30.284243, 44.156586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708645, 29.869720, 43.633736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309929, 29.848322, 43.609924>,  <39.070698, 29.835482, 43.595638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309929, 29.848322, 43.609924>,  <39.708645, 29.869720, 43.633736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309929, 29.848322, 43.609924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015142, 0.604328, -0.796592,
		0.078593, -0.794938, -0.601579,
		-0.996792, -0.053498, -0.059532,
		39.010891, 29.832273, 43.592064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535374, 29.444868, 43.022655>,  <39.708645, 29.869720, 43.633736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535374, 29.444868, 43.022655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.294697, 29.742270, 43.139389>,  <39.150291, 29.920712, 43.209431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.294697, 29.742270, 43.139389>,  <39.535374, 29.444868, 43.022655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294697, 29.742270, 43.139389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065845, 0.410300, -0.909570,
		-0.796010, -0.528066, -0.295830,
		-0.601692, 0.743505, 0.291833,
		39.114189, 29.965321, 43.226940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874603, 29.424717, 42.702446>,  <39.535374, 29.444868, 43.022655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874603, 29.424717, 42.702446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964783, 29.806362, 42.781273>,  <39.018890, 30.035351, 42.828568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964783, 29.806362, 42.781273>,  <38.874603, 29.424717, 42.702446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964783, 29.806362, 42.781273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007715, 0.200518, -0.979660,
		-0.974223, 0.222388, 0.037846,
		0.225453, 0.954115, 0.197065,
		39.032417, 30.092596, 42.840393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480865, 30.015242, 42.371525>,  <38.874603, 29.424717, 42.702446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480865, 30.015242, 42.371525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826904, 30.209913, 42.420105>,  <39.034527, 30.326715, 42.449253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826904, 30.209913, 42.420105>,  <38.480865, 30.015242, 42.371525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826904, 30.209913, 42.420105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061216, 0.342748, -0.937431,
		-0.497855, 0.803534, 0.326303,
		0.865097, 0.486679, 0.121450,
		39.086433, 30.355917, 42.456539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351109, 30.690355, 42.074471>,  <38.480865, 30.015242, 42.371525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351109, 30.690355, 42.074471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.743629, 30.613588, 42.080265>,  <38.979141, 30.567528, 42.083740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.743629, 30.613588, 42.080265>,  <38.351109, 30.690355, 42.074471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743629, 30.613588, 42.080265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050793, 0.185638, -0.981304,
		0.185638, 0.963694, 0.191916,
		0.981304, -0.191916, 0.014488,
		39.038021, 30.556013, 42.084610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662846, 31.293991, 41.912373>,  <38.351109, 30.690355, 42.074471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662846, 31.293991, 41.912373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896362, 30.977049, 41.841534>,  <39.036472, 30.786884, 41.799030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896362, 30.977049, 41.841534>,  <38.662846, 31.293991, 41.912373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896362, 30.977049, 41.841534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022913, 0.234113, -0.971940,
		0.811579, 0.563354, 0.154828,
		0.583793, -0.792353, -0.177093,
		39.071499, 30.739344, 41.788406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088699, 31.516790, 41.389900>,  <38.662846, 31.293991, 41.912373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088699, 31.516790, 41.389900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.159271, 31.123249, 41.377876>,  <39.201614, 30.887123, 41.370663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.159271, 31.123249, 41.377876>,  <39.088699, 31.516790, 41.389900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159271, 31.123249, 41.377876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148507, 0.056797, -0.987279,
		0.973046, 0.169721, 0.156129,
		0.176430, -0.983854, -0.030062,
		39.212200, 30.828093, 41.368858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723640, 31.437330, 41.209087>,  <39.088699, 31.516790, 41.389900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723640, 31.437330, 41.209087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548954, 31.094908, 41.098492>,  <39.444141, 30.889454, 41.032135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548954, 31.094908, 41.098492>,  <39.723640, 31.437330, 41.209087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548954, 31.094908, 41.098492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366096, 0.111626, -0.923858,
		0.821737, -0.504688, 0.264649,
		-0.436718, -0.856055, -0.276492,
		39.417938, 30.838091, 41.015545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442802, 31.600655, 41.124111>,  <39.723640, 31.437330, 41.209087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442802, 31.600655, 41.124111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452057, 31.593355, 41.523937>,  <40.457611, 31.588976, 41.763832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452057, 31.593355, 41.523937>,  <40.442802, 31.600655, 41.124111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452057, 31.593355, 41.523937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834179, -0.551417, 0.009240,
		0.551009, -0.834030, -0.027975,
		0.023132, -0.018245, 0.999566,
		40.458996, 31.587881, 41.823807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281143, 30.942158, 40.862030>,  <40.442802, 31.600655, 41.124111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.281143, 30.942158, 40.862030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.922340, 30.811409, 40.743019>,  <39.707058, 30.732960, 40.671612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.922340, 30.811409, 40.743019>,  <40.281143, 30.942158, 40.862030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922340, 30.811409, 40.743019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288192, 0.077865, -0.954402,
		0.335137, -0.941854, 0.024357,
		-0.897011, -0.326875, -0.297530,
		39.653236, 30.713346, 40.653759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386654, 30.568754, 40.272079>,  <40.281143, 30.942158, 40.862030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386654, 30.568754, 40.272079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.993004, 30.635881, 40.248985>,  <39.756813, 30.676159, 40.235130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.993004, 30.635881, 40.248985>,  <40.386654, 30.568754, 40.272079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993004, 30.635881, 40.248985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087564, 0.176180, -0.980456,
		-0.154369, -0.969947, -0.188078,
		-0.984125, 0.167821, -0.057735,
		39.697765, 30.686228, 40.231663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080574, 30.322702, 39.680874>,  <40.386654, 30.568754, 40.272079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080574, 30.322702, 39.680874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.841377, 30.626556, 39.783138>,  <39.697861, 30.808868, 39.844498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.841377, 30.626556, 39.783138>,  <40.080574, 30.322702, 39.680874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.841377, 30.626556, 39.783138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056194, 0.278453, -0.958804,
		-0.799532, -0.587721, -0.123824,
		-0.597988, 0.759637, 0.255659,
		39.661980, 30.854448, 39.859837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552158, 30.325348, 39.284306>,  <40.080574, 30.322702, 39.680874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552158, 30.325348, 39.284306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.581749, 30.700584, 39.419666>,  <39.599503, 30.925726, 39.500881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.581749, 30.700584, 39.419666>,  <39.552158, 30.325348, 39.284306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581749, 30.700584, 39.419666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088085, 0.344149, -0.934774,
		-0.993363, 0.039340, 0.108089,
		0.073972, 0.938091, 0.338399,
		39.603939, 30.982012, 39.521187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873947, 30.655956, 39.200039>,  <39.552158, 30.325348, 39.284306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873947, 30.655956, 39.200039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140789, 30.953821, 39.208546>,  <39.300896, 31.132540, 39.213650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140789, 30.953821, 39.208546>,  <38.873947, 30.655956, 39.200039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140789, 30.953821, 39.208546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298452, 0.293304, -0.908239,
		-0.682569, 0.599542, 0.417910,
		0.667103, 0.744662, 0.021266,
		39.340919, 31.177219, 39.214924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550888, 31.237228, 38.928650>,  <38.873947, 30.655956, 39.200039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550888, 31.237228, 38.928650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.944218, 31.296518, 38.886509>,  <39.180218, 31.332092, 38.861225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.944218, 31.296518, 38.886509>,  <38.550888, 31.237228, 38.928650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944218, 31.296518, 38.886509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148031, 0.315931, -0.937163,
		-0.105626, 0.937132, 0.332605,
		0.983326, 0.148225, -0.105354,
		39.239216, 31.340986, 38.854904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413712, 31.825464, 39.305042>,  <38.550888, 31.237228, 38.928650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413712, 31.825464, 39.305042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794479, 31.805473, 39.184139>,  <39.022938, 31.793478, 39.111599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794479, 31.805473, 39.184139>,  <38.413712, 31.825464, 39.305042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794479, 31.805473, 39.184139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242245, 0.481192, -0.842480,
		0.187550, 0.875189, 0.445946,
		0.951915, -0.049979, -0.302258,
		39.080055, 31.790480, 39.093460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548656, 32.450169, 38.966312>,  <38.413712, 31.825464, 39.305042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548656, 32.450169, 38.966312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837112, 32.206707, 38.833958>,  <39.010185, 32.060631, 38.754543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837112, 32.206707, 38.833958>,  <38.548656, 32.450169, 38.966312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837112, 32.206707, 38.833958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085696, 0.395580, -0.914425,
		0.687464, 0.687788, 0.233111,
		0.721144, -0.608658, -0.330888,
		39.053455, 32.024109, 38.734692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928055, 32.931915, 38.792175>,  <38.548656, 32.450169, 38.966312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928055, 32.931915, 38.792175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071983, 32.605274, 38.611649>,  <39.158340, 32.409290, 38.503330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071983, 32.605274, 38.611649>,  <38.928055, 32.931915, 38.792175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071983, 32.605274, 38.611649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030543, 0.493769, -0.869056,
		0.932521, 0.298921, 0.202610,
		0.359821, -0.816602, -0.451320,
		39.179928, 32.360294, 38.476254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647305, 33.018623, 38.571957>,  <38.928055, 32.931915, 38.792175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647305, 33.018623, 38.571957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495312, 32.734283, 38.335213>,  <39.404118, 32.563679, 38.193165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495312, 32.734283, 38.335213>,  <39.647305, 33.018623, 38.571957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495312, 32.734283, 38.335213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204146, 0.559632, -0.803204,
		0.902187, -0.426026, -0.067529,
		-0.379977, -0.710854, -0.591865,
		39.381317, 32.521027, 38.157654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186474, 32.975163, 38.008278>,  <39.647305, 33.018623, 38.571957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186474, 32.975163, 38.008278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819717, 32.853199, 37.905251>,  <39.599663, 32.780022, 37.843433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819717, 32.853199, 37.905251>,  <40.186474, 32.975163, 38.008278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819717, 32.853199, 37.905251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036395, 0.578755, -0.814689,
		0.397474, -0.756355, -0.519559,
		-0.916891, -0.304909, -0.257568,
		39.544651, 32.761726, 37.827980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290607, 33.012512, 37.353386>,  <40.186474, 32.975163, 38.008278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290607, 33.012512, 37.353386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.891388, 32.988979, 37.361740>,  <39.651855, 32.974861, 37.366753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.891388, 32.988979, 37.361740>,  <40.290607, 33.012512, 37.353386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.891388, 32.988979, 37.361740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052013, 0.598542, -0.799401,
		0.034526, -0.798928, -0.600434,
		-0.998049, -0.058831, 0.020889,
		39.591972, 32.971329, 37.368008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100994, 32.764713, 36.701141>,  <40.290607, 33.012512, 37.353386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100994, 32.764713, 36.701141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761627, 32.933990, 36.828327>,  <39.558006, 33.035557, 36.904636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761627, 32.933990, 36.828327>,  <40.100994, 32.764713, 36.701141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761627, 32.933990, 36.828327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070579, 0.504880, -0.860299,
		-0.524608, -0.752330, -0.398479,
		-0.848413, 0.423195, 0.317962,
		39.507103, 33.060947, 36.923717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625832, 32.656277, 36.159046>,  <40.100994, 32.764713, 36.701141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625832, 32.656277, 36.159046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.476898, 32.962585, 36.368793>,  <39.387539, 33.146370, 36.494644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.476898, 32.962585, 36.368793>,  <39.625832, 32.656277, 36.159046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.476898, 32.962585, 36.368793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270218, 0.451073, -0.850597,
		-0.887891, -0.458399, 0.038976,
		-0.372332, 0.765770, 0.524371,
		39.365200, 33.192318, 36.526104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375256, 32.614037, 36.047863>,  <39.625832, 32.656277, 36.159046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.375256, 32.614037, 36.047863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.766464, 32.697414, 36.046375>,  <41.001190, 32.747440, 36.045483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.766464, 32.697414, 36.046375>,  <40.375256, 32.614037, 36.047863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.766464, 32.697414, 36.046375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179547, -0.851218, -0.493143,
		-0.105961, 0.481639, -0.869940,
		0.978026, 0.208449, -0.003719,
		41.059872, 32.759949, 36.045261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826283, 32.511772, 35.342331>,  <40.375256, 32.614037, 36.047863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.826283, 32.511772, 35.342331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039845, 32.447491, 35.674385>,  <41.167980, 32.408924, 35.873619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039845, 32.447491, 35.674385>,  <40.826283, 32.511772, 35.342331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.039845, 32.447491, 35.674385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060268, -0.972043, -0.226935,
		0.843395, 0.171192, -0.509292,
		0.533903, -0.160702, 0.830134,
		41.200016, 32.399281, 35.923424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477562, 33.193493, 35.137264>,  <40.826283, 32.511772, 35.342331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.477562, 33.193493, 35.137264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472897, 32.804993, 35.042156>,  <40.470097, 32.571892, 34.985092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472897, 32.804993, 35.042156>,  <40.477562, 33.193493, 35.137264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.472897, 32.804993, 35.042156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366492, -0.217084, 0.904742,
		-0.930348, 0.097692, -0.353424,
		-0.011663, -0.971252, -0.237767,
		40.469398, 32.513618, 34.970825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.046162, 33.413284, 34.593071>,  <40.477562, 33.193493, 35.137264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.046162, 33.413284, 34.593071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.243290, 33.325199, 34.256351>,  <41.361568, 33.272346, 34.054317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.243290, 33.325199, 34.256351>,  <41.046162, 33.413284, 34.593071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.243290, 33.325199, 34.256351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844866, 0.110324, -0.523479,
		0.208147, 0.969193, -0.131680,
		0.492825, -0.220213, -0.841802,
		41.391136, 33.259136, 34.003811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.861458, 33.759628, 33.920277>,  <41.046162, 33.413284, 34.593071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.861458, 33.759628, 33.920277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.996586, 33.386295, 33.871655>,  <41.077663, 33.162296, 33.842480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.996586, 33.386295, 33.871655>,  <40.861458, 33.759628, 33.920277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.996586, 33.386295, 33.871655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862426, -0.255220, -0.437132,
		0.376965, 0.252504, -0.891145,
		0.337816, -0.933330, -0.121557,
		41.097931, 33.106297, 33.835186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140743, 33.664146, 33.236038>,  <40.861458, 33.759628, 33.920277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.140743, 33.664146, 33.236038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970852, 33.342686, 33.402767>,  <40.868916, 33.149807, 33.502804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970852, 33.342686, 33.402767>,  <41.140743, 33.664146, 33.236038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.970852, 33.342686, 33.402767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657407, -0.042755, -0.752322,
		0.622429, -0.593556, -0.510170,
		-0.424733, -0.803657, 0.416820,
		40.843433, 33.101589, 33.527813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.042229, 33.088802, 32.669285>,  <41.140743, 33.664146, 33.236038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.042229, 33.088802, 32.669285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782097, 33.132683, 32.969963>,  <40.626019, 33.159012, 33.150368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782097, 33.132683, 32.969963>,  <41.042229, 33.088802, 32.669285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.782097, 33.132683, 32.969963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730370, 0.181804, -0.658413,
		-0.208888, -0.977197, -0.038111,
		-0.650327, 0.109699, 0.751692,
		40.586998, 33.165592, 33.195469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.795971, 33.433842, 32.581009>,  <41.042229, 33.088802, 32.669285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.795971, 33.433842, 32.581009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.192295, 33.445110, 32.528095>,  <42.430088, 33.451874, 32.496346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.192295, 33.445110, 32.528095>,  <41.795971, 33.433842, 32.581009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.192295, 33.445110, 32.528095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134754, -0.121991, 0.983341,
		0.011568, -0.992131, -0.124667,
		0.990812, 0.028174, -0.132283,
		42.489540, 33.453564, 32.488411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.144440, 32.897278, 32.937828>,  <41.795971, 33.433842, 32.581009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.144440, 32.897278, 32.937828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.436844, 33.170006, 32.926968>,  <42.612286, 33.333645, 32.920452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.436844, 33.170006, 32.926968>,  <42.144440, 32.897278, 32.937828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.436844, 33.170006, 32.926968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106390, -0.074576, 0.991524,
		0.674020, -0.727704, -0.127055,
		0.731012, 0.681825, -0.027155,
		42.656147, 33.374554, 32.918819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.877056, 32.731430, 33.338989>,  <42.144440, 32.897278, 32.937828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.877056, 32.731430, 33.338989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.821255, 33.127293, 33.352417>,  <42.787773, 33.364811, 33.360474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.821255, 33.127293, 33.352417>,  <42.877056, 32.731430, 33.338989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.821255, 33.127293, 33.352417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068962, -0.024113, 0.997328,
		0.987818, 0.141443, -0.064885,
		-0.139500, 0.989653, 0.033574,
		42.779404, 33.424187, 33.362488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.373306, 33.007484, 33.874859>,  <42.877056, 32.731430, 33.338989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.373306, 33.007484, 33.874859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.065548, 33.260540, 33.839531>,  <42.880894, 33.412373, 33.818333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.065548, 33.260540, 33.839531>,  <43.373306, 33.007484, 33.874859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.065548, 33.260540, 33.839531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034988, 0.096323, 0.994735,
		0.637817, 0.768432, -0.051976,
		-0.769393, 0.632640, -0.088322,
		42.834728, 33.450333, 33.813034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.086494, 33.010685, 34.120979>,  <43.373306, 33.007484, 33.874859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.086494, 33.010685, 34.120979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.160301, 32.625164, 34.197964>,  <44.204586, 32.393852, 34.244156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.160301, 32.625164, 34.197964>,  <44.086494, 33.010685, 34.120979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.160301, 32.625164, 34.197964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959534, 0.219041, 0.176963,
		-0.212714, 0.152019, 0.965217,
		0.184520, -0.963801, 0.192460,
		44.215656, 32.336025, 34.255703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.289940, 32.821606, 34.910156>,  <44.086494, 33.010685, 34.120979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.289940, 32.821606, 34.910156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.439201, 32.580757, 34.627819>,  <44.528759, 32.436249, 34.458416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.439201, 32.580757, 34.627819>,  <44.289940, 32.821606, 34.910156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.439201, 32.580757, 34.627819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926103, 0.196146, 0.322274,
		-0.055600, -0.773937, 0.630817,
		0.373152, -0.602120, -0.705839,
		44.551147, 32.400120, 34.416069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.770107, 32.422062, 35.248444>,  <44.289940, 32.821606, 34.910156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.770107, 32.422062, 35.248444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.878361, 32.465687, 34.865849>,  <44.943314, 32.491863, 34.636292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.878361, 32.465687, 34.865849>,  <44.770107, 32.422062, 35.248444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.878361, 32.465687, 34.865849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950205, 0.129176, 0.283590,
		0.154484, -0.985606, -0.068673,
		0.270637, 0.109063, -0.956484,
		44.959553, 32.498405, 34.578903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.377434, 32.073723, 35.260490>,  <44.770107, 32.422062, 35.248444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.377434, 32.073723, 35.260490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.372875, 32.343178, 34.964897>,  <45.370140, 32.504848, 34.787544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.372875, 32.343178, 34.964897>,  <45.377434, 32.073723, 35.260490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.372875, 32.343178, 34.964897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853466, 0.391626, 0.343839,
		0.521024, -0.626776, -0.579384,
		-0.011392, 0.673633, -0.738978,
		45.369457, 32.545269, 34.743202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.077114, 32.062290, 34.940327>,  <45.377434, 32.073723, 35.260490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.077114, 32.062290, 34.940327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.905266, 32.417770, 34.876266>,  <45.802158, 32.631058, 34.837830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.905266, 32.417770, 34.876266>,  <46.077114, 32.062290, 34.940327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.905266, 32.417770, 34.876266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792377, 0.456065, 0.405145,
		0.433090, 0.047157, -0.900116,
		-0.429617, 0.888696, -0.160151,
		45.776382, 32.684380, 34.828220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.357758, 32.627140, 34.430687>,  <46.077114, 32.062290, 34.940327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.357758, 32.627140, 34.430687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.188061, 32.833340, 34.728489>,  <46.086243, 32.957058, 34.907169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.188061, 32.833340, 34.728489>,  <46.357758, 32.627140, 34.430687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.188061, 32.833340, 34.728489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903517, 0.296031, 0.309877,
		-0.060656, 0.804134, -0.591346,
		-0.424239, 0.515495, 0.744504,
		46.060787, 32.987988, 34.951839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.515419, 33.361897, 34.332966>,  <46.357758, 32.627140, 34.430687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.515419, 33.361897, 34.332966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.477940, 33.248825, 34.714817>,  <46.455452, 33.180981, 34.943928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.477940, 33.248825, 34.714817>,  <46.515419, 33.361897, 34.332966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.477940, 33.248825, 34.714817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913140, 0.357683, 0.195545,
		-0.396730, 0.890031, 0.224610,
		-0.093702, -0.282679, 0.954627,
		46.449829, 33.164021, 35.001205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.576023, 33.920052, 34.700237>,  <46.515419, 33.361897, 34.332966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.576023, 33.920052, 34.700237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.695713, 33.573704, 34.860607>,  <46.767529, 33.365894, 34.956829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.695713, 33.573704, 34.860607>,  <46.576023, 33.920052, 34.700237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.695713, 33.573704, 34.860607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882789, 0.410683, 0.228086,
		-0.362144, 0.285681, 0.887264,
		0.299225, -0.865867, 0.400923,
		46.785480, 33.313942, 34.980885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.140675, 34.147705, 35.171150>,  <46.576023, 33.920052, 34.700237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.140675, 34.147705, 35.171150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.130695, 33.748894, 35.141972>,  <47.124706, 33.509609, 35.124466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.130695, 33.748894, 35.141972>,  <47.140675, 34.147705, 35.171150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.130695, 33.748894, 35.141972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970216, -0.041738, 0.238620,
		-0.240954, -0.064821, 0.968369,
		-0.024950, -0.997024, -0.072947,
		47.123211, 33.449787, 35.120087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.472412, 34.641819, 34.664566>,  <47.140675, 34.147705, 35.171150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.472412, 34.641819, 34.664566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.635689, 34.970745, 34.823151>,  <47.733654, 35.168098, 34.918301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.635689, 34.970745, 34.823151>,  <47.472412, 34.641819, 34.664566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.635689, 34.970745, 34.823151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385535, -0.548942, 0.741637,
		0.827493, -0.149878, -0.541103,
		0.408189, 0.822313, 0.396462,
		47.758144, 35.217438, 34.942089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.732159, 35.385410, 29.621748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.560535, 35.716084, 29.767349>,  <32.457561, 35.914490, 29.854710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.560535, 35.716084, 29.767349>,  <32.732159, 35.385410, 29.621748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560535, 35.716084, 29.767349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474615, -0.136543, 0.869538,
		0.768536, 0.545847, -0.333771,
		-0.429060, 0.826685, 0.364005,
		32.431816, 35.964088, 29.876551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256207, 35.638855, 29.940769>,  <32.732159, 35.385410, 29.621748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256207, 35.638855, 29.940769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.945904, 35.840721, 30.092300>,  <32.759720, 35.961842, 30.183220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.945904, 35.840721, 30.092300>,  <33.256207, 35.638855, 29.940769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945904, 35.840721, 30.092300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450715, 0.022967, 0.892372,
		0.441648, 0.863010, -0.245276,
		-0.775760, 0.504664, 0.378829,
		32.713177, 35.992119, 30.205950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545834, 36.294533, 30.271278>,  <33.256207, 35.638855, 29.940769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545834, 36.294533, 30.271278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.201294, 36.186447, 30.443357>,  <32.994572, 36.121597, 30.546604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.201294, 36.186447, 30.443357>,  <33.545834, 36.294533, 30.271278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201294, 36.186447, 30.443357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423703, 0.085093, 0.901795,
		-0.280282, 0.959033, 0.041195,
		-0.861346, -0.270212, 0.430195,
		32.942890, 36.105385, 30.572416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453075, 36.717949, 30.889940>,  <33.545834, 36.294533, 30.271278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453075, 36.717949, 30.889940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.207077, 36.412788, 30.969700>,  <33.059479, 36.229691, 31.017555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.207077, 36.412788, 30.969700>,  <33.453075, 36.717949, 30.889940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207077, 36.412788, 30.969700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380160, -0.065311, 0.922612,
		-0.690840, 0.643205, 0.330192,
		-0.614994, -0.762903, 0.199401,
		33.022579, 36.183918, 31.029520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243843, 36.856220, 31.545782>,  <33.453075, 36.717949, 30.889940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243843, 36.856220, 31.545782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.197559, 36.460983, 31.505211>,  <33.169788, 36.223843, 31.480867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.197559, 36.460983, 31.505211>,  <33.243843, 36.856220, 31.545782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197559, 36.460983, 31.505211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144538, -0.117777, 0.982465,
		-0.982711, 0.099021, 0.156445,
		-0.115710, -0.988091, -0.101428,
		33.162846, 36.164555, 31.474783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982830, 36.746948, 32.176765>,  <33.243843, 36.856220, 31.545782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982830, 36.746948, 32.176765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.123146, 36.398533, 32.039223>,  <33.207336, 36.189484, 31.956697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.123146, 36.398533, 32.039223>,  <32.982830, 36.746948, 32.176765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123146, 36.398533, 32.039223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336776, -0.225281, 0.914238,
		-0.873800, -0.436511, 0.214318,
		0.350793, -0.871038, -0.343857,
		33.228382, 36.137222, 31.936066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923447, 36.254734, 32.702888>,  <32.982830, 36.746948, 32.176765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923447, 36.254734, 32.702888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.207714, 36.070358, 32.490292>,  <33.378277, 35.959732, 32.362736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.207714, 36.070358, 32.490292>,  <32.923447, 36.254734, 32.702888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207714, 36.070358, 32.490292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314840, -0.467223, 0.826183,
		-0.629144, -0.754479, -0.186920,
		0.710671, -0.460938, -0.531490,
		33.420918, 35.932076, 32.330845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802288, 35.641727, 32.965965>,  <32.923447, 36.254734, 32.702888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802288, 35.641727, 32.965965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.165085, 35.653519, 32.797920>,  <33.382763, 35.660591, 32.697094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.165085, 35.653519, 32.797920>,  <32.802288, 35.641727, 32.965965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.165085, 35.653519, 32.797920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405021, -0.334401, 0.850961,
		-0.115402, -0.941970, -0.315239,
		0.906995, 0.029476, -0.420108,
		33.437183, 35.662361, 32.671886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111500, 35.026684, 33.124397>,  <32.802288, 35.641727, 32.965965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111500, 35.026684, 33.124397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.409630, 35.275555, 33.028572>,  <33.588509, 35.424877, 32.971077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.409630, 35.275555, 33.028572>,  <33.111500, 35.026684, 33.124397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409630, 35.275555, 33.028572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492000, -0.270795, 0.827409,
		0.449924, -0.734550, -0.507942,
		0.745322, 0.622178, -0.239562,
		33.633224, 35.462208, 32.956703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729378, 34.661076, 33.270020>,  <33.111500, 35.026684, 33.124397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729378, 34.661076, 33.270020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.866817, 35.036572, 33.259384>,  <33.949284, 35.261868, 33.253002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.866817, 35.036572, 33.259384>,  <33.729378, 34.661076, 33.270020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866817, 35.036572, 33.259384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639816, -0.213274, 0.738343,
		0.687439, -0.270710, -0.673902,
		0.343603, 0.938738, -0.026591,
		33.969898, 35.318192, 33.251408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431694, 34.624161, 33.079987>,  <33.729378, 34.661076, 33.270020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431694, 34.624161, 33.079987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.382042, 34.957542, 33.295372>,  <34.352253, 35.157574, 33.424603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.382042, 34.957542, 33.295372>,  <34.431694, 34.624161, 33.079987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382042, 34.957542, 33.295372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687126, -0.319294, 0.652617,
		0.715856, 0.450998, -0.533058,
		-0.124127, 0.833458, 0.538461,
		34.344803, 35.207581, 33.456909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110416, 34.889446, 33.344196>,  <34.431694, 34.624161, 33.079987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110416, 34.889446, 33.344196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.817055, 35.044456, 33.567604>,  <34.641037, 35.137463, 33.701649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.817055, 35.044456, 33.567604>,  <35.110416, 34.889446, 33.344196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817055, 35.044456, 33.567604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583010, -0.063975, 0.809942,
		0.349604, 0.919637, -0.179012,
		-0.733400, 0.387525, 0.558523,
		34.597034, 35.160713, 33.735161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426468, 35.427147, 33.814045>,  <35.110416, 34.889446, 33.344196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426468, 35.427147, 33.814045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.083179, 35.325092, 33.992195>,  <34.877205, 35.263859, 34.099083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.083179, 35.325092, 33.992195>,  <35.426468, 35.427147, 33.814045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083179, 35.325092, 33.992195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495639, -0.186433, 0.848284,
		-0.133398, 0.948761, 0.286458,
		-0.858223, -0.255139, 0.445373,
		34.825714, 35.248550, 34.125809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473717, 35.635796, 34.530869>,  <35.426468, 35.427147, 33.814045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473717, 35.635796, 34.530869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.144691, 35.409637, 34.555237>,  <34.947277, 35.273941, 34.569859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.144691, 35.409637, 34.555237>,  <35.473717, 35.635796, 34.530869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144691, 35.409637, 34.555237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300698, -0.341520, 0.890474,
		-0.482666, 0.750792, 0.450937,
		-0.822565, -0.565398, 0.060922,
		34.897923, 35.240017, 34.573513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354004, 35.690136, 35.251514>,  <35.473717, 35.635796, 34.530869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354004, 35.690136, 35.251514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.163586, 35.362217, 35.124203>,  <35.049332, 35.165466, 35.047817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.163586, 35.362217, 35.124203>,  <35.354004, 35.690136, 35.251514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163586, 35.362217, 35.124203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360602, -0.512063, 0.779588,
		-0.802086, 0.256351, 0.539390,
		-0.476050, -0.819802, -0.318278,
		35.020771, 35.116276, 35.028721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171200, 35.438080, 35.823425>,  <35.354004, 35.690136, 35.251514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171200, 35.438080, 35.823425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.136478, 35.112885, 35.593113>,  <35.115646, 34.917767, 35.454926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.136478, 35.112885, 35.593113>,  <35.171200, 35.438080, 35.823425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136478, 35.112885, 35.593113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257867, -0.576599, 0.775266,
		-0.962273, -0.081177, 0.259694,
		-0.086805, -0.812984, -0.575779,
		35.110435, 34.868988, 35.420380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981960, 35.031551, 36.326553>,  <35.171200, 35.438080, 35.823425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981960, 35.031551, 36.326553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.102203, 34.807800, 36.017559>,  <35.174347, 34.673550, 35.832161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.102203, 34.807800, 36.017559>,  <34.981960, 35.031551, 36.326553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102203, 34.807800, 36.017559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266200, -0.728553, 0.631147,
		-0.915846, -0.395362, -0.070101,
		0.300604, -0.559373, -0.772488,
		35.192383, 34.639988, 35.785812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857197, 34.387367, 36.608295>,  <34.981960, 35.031551, 36.326553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857197, 34.387367, 36.608295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.119198, 34.365036, 36.306870>,  <35.276398, 34.351639, 36.126015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.119198, 34.365036, 36.306870>,  <34.857197, 34.387367, 36.608295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119198, 34.365036, 36.306870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614335, -0.541318, 0.574080,
		-0.439965, -0.838963, -0.320268,
		0.654999, -0.055824, -0.753565,
		35.315697, 34.348289, 36.080799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094906, 33.738491, 36.730446>,  <34.857197, 34.387367, 36.608295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094906, 33.738491, 36.730446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.367344, 33.877941, 36.472897>,  <35.530807, 33.961609, 36.318367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.367344, 33.877941, 36.472897>,  <35.094906, 33.738491, 36.730446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367344, 33.877941, 36.472897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705943, -0.546029, 0.451108,
		-0.194308, -0.761785, -0.618004,
		0.681095, 0.348621, -0.643874,
		35.571671, 33.982529, 36.279736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381931, 33.238205, 36.341145>,  <35.094906, 33.738491, 36.730446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381931, 33.238205, 36.341145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.654007, 33.526222, 36.396118>,  <35.817253, 33.699032, 36.429104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.654007, 33.526222, 36.396118>,  <35.381931, 33.238205, 36.341145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654007, 33.526222, 36.396118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607873, -0.658823, 0.443217,
		0.409681, -0.217926, -0.885816,
		0.680185, 0.720041, 0.137436,
		35.858063, 33.742233, 36.437347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977367, 32.902130, 36.462669>,  <35.381931, 33.238205, 36.341145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977367, 32.902130, 36.462669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.077782, 33.270329, 36.582455>,  <36.138031, 33.491245, 36.654324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.077782, 33.270329, 36.582455>,  <35.977367, 32.902130, 36.462669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077782, 33.270329, 36.582455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825064, -0.365258, 0.431109,
		0.506213, 0.138851, -0.851157,
		0.251033, 0.920493, 0.299459,
		36.153091, 33.546474, 36.672291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655918, 32.957958, 36.220394>,  <35.977367, 32.902130, 36.462669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655918, 32.957958, 36.220394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.591122, 33.222469, 36.513374>,  <36.552246, 33.381176, 36.689163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.591122, 33.222469, 36.513374>,  <36.655918, 32.957958, 36.220394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591122, 33.222469, 36.513374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810336, -0.334436, 0.481153,
		0.563130, 0.671469, -0.481679,
		-0.161989, 0.661273, 0.732446,
		36.542526, 33.420853, 36.733109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248219, 32.813999, 35.777542>,  <36.655918, 32.957958, 36.220394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248219, 32.813999, 35.777542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.438400, 32.517677, 35.587742>,  <37.552509, 32.339882, 35.473862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.438400, 32.517677, 35.587742>,  <37.248219, 32.813999, 35.777542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438400, 32.517677, 35.587742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142553, 0.467358, -0.872500,
		0.868116, 0.482471, 0.116600,
		0.475450, -0.740809, -0.474499,
		37.581036, 32.295433, 35.445393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721764, 33.117668, 35.266911>,  <37.248219, 32.813999, 35.777542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721764, 33.117668, 35.266911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.618084, 32.756733, 35.129158>,  <37.555874, 32.540173, 35.046505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.618084, 32.756733, 35.129158>,  <37.721764, 33.117668, 35.266911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618084, 32.756733, 35.129158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219424, 0.402263, -0.888840,
		0.940568, -0.154823, -0.302262,
		-0.259202, -0.902338, -0.344384,
		37.540325, 32.486031, 35.025845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830151, 33.191177, 34.582592>,  <37.721764, 33.117668, 35.266911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830151, 33.191177, 34.582592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.576126, 32.882347, 34.592388>,  <37.423714, 32.697048, 34.598267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.576126, 32.882347, 34.592388>,  <37.830151, 33.191177, 34.582592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576126, 32.882347, 34.592388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290939, 0.209699, -0.933478,
		0.715581, -0.599938, -0.357798,
		-0.635058, -0.772076, 0.024489,
		37.385609, 32.650723, 34.599735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890072, 32.888744, 33.883957>,  <37.830151, 33.191177, 34.582592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890072, 32.888744, 33.883957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.544174, 32.777912, 34.051498>,  <37.336636, 32.711414, 34.152023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.544174, 32.777912, 34.051498>,  <37.890072, 32.888744, 33.883957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544174, 32.777912, 34.051498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480371, 0.213097, -0.850784,
		0.146474, -0.936920, -0.317373,
		-0.864748, -0.277074, 0.418856,
		37.284748, 32.694790, 34.177155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451008, 32.552834, 33.368855>,  <37.890072, 32.888744, 33.883957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451008, 32.552834, 33.368855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.172886, 32.619617, 33.648476>,  <37.006012, 32.659687, 33.816250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.172886, 32.619617, 33.648476>,  <37.451008, 32.552834, 33.368855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172886, 32.619617, 33.648476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663243, 0.225636, -0.713580,
		-0.276870, -0.959798, -0.046151,
		-0.695306, 0.166960, 0.699052,
		36.964294, 32.669704, 33.858192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958702, 32.062050, 33.244316>,  <37.451008, 32.552834, 33.368855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958702, 32.062050, 33.244316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.801884, 32.370605, 33.444820>,  <36.707794, 32.555740, 33.565121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.801884, 32.370605, 33.444820>,  <36.958702, 32.062050, 33.244316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801884, 32.370605, 33.444820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651770, 0.151628, -0.743105,
		-0.649227, -0.618037, 0.443323,
		-0.392046, 0.771388, 0.501259,
		36.684269, 32.602020, 33.595200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259136, 32.004570, 33.099709>,  <36.958702, 32.062050, 33.244316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259136, 32.004570, 33.099709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.314495, 32.377892, 33.232250>,  <36.347710, 32.601883, 33.311775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.314495, 32.377892, 33.232250>,  <36.259136, 32.004570, 33.099709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314495, 32.377892, 33.232250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594267, 0.345905, -0.726083,
		-0.792271, -0.096426, 0.602501,
		0.138395, 0.933302, 0.331353,
		36.356014, 32.657883, 33.331657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631645, 32.300362, 33.359962>,  <36.259136, 32.004570, 33.099709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631645, 32.300362, 33.359962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.859753, 32.606354, 33.240227>,  <35.996616, 32.789948, 33.168385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.859753, 32.606354, 33.240227>,  <35.631645, 32.300362, 33.359962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859753, 32.606354, 33.240227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711777, 0.278237, -0.644947,
		-0.410087, 0.580850, 0.703165,
		0.570265, 0.764982, -0.299335,
		36.030830, 32.835850, 33.150425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124523, 32.751015, 33.003174>,  <35.631645, 32.300362, 33.359962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124523, 32.751015, 33.003174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.484520, 32.904160, 32.919819>,  <35.700520, 32.996044, 32.869808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.484520, 32.904160, 32.919819>,  <35.124523, 32.751015, 33.003174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484520, 32.904160, 32.919819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342110, 0.324156, -0.881977,
		-0.270124, 0.865067, 0.422720,
		0.899996, 0.382860, -0.208385,
		35.754520, 33.019016, 32.857304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096813, 33.532974, 32.886204>,  <35.124523, 32.751015, 33.003174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096813, 33.532974, 32.886204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.413246, 33.391304, 32.686707>,  <35.603107, 33.306301, 32.567009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.413246, 33.391304, 32.686707>,  <35.096813, 33.532974, 32.886204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413246, 33.391304, 32.686707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392895, 0.330720, -0.858054,
		0.468844, 0.874748, 0.122475,
		0.791087, -0.354174, -0.498741,
		35.650574, 33.285053, 32.537083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202682, 34.108864, 32.470978>,  <35.096813, 33.532974, 32.886204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202682, 34.108864, 32.470978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.429348, 33.811871, 32.328087>,  <35.565346, 33.633675, 32.242352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.429348, 33.811871, 32.328087>,  <35.202682, 34.108864, 32.470978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429348, 33.811871, 32.328087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176004, 0.314472, -0.932808,
		0.804932, 0.591461, 0.047519,
		0.566663, -0.742483, -0.357228,
		35.599346, 33.589127, 32.220917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677513, 34.413540, 31.938118>,  <35.202682, 34.108864, 32.470978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677513, 34.413540, 31.938118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.677876, 34.020390, 31.864412>,  <35.678093, 33.784500, 31.820189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.677876, 34.020390, 31.864412>,  <35.677513, 34.413540, 31.938118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677876, 34.020390, 31.864412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144960, 0.182190, -0.972519,
		0.989437, 0.027594, -0.142313,
		0.000908, -0.982876, -0.184265,
		35.678146, 33.725525, 31.809134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065445, 34.351505, 31.404589>,  <35.677513, 34.413540, 31.938118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065445, 34.351505, 31.404589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.859070, 34.008858, 31.405392>,  <35.735245, 33.803268, 31.405874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.859070, 34.008858, 31.405392>,  <36.065445, 34.351505, 31.404589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859070, 34.008858, 31.405392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354763, 0.211538, -0.910711,
		0.779710, -0.470587, -0.413039,
		-0.515942, -0.856621, 0.002009,
		35.704288, 33.751873, 31.405994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298519, 33.974270, 30.826693>,  <36.065445, 34.351505, 31.404589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298519, 33.974270, 30.826693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.932487, 33.852474, 30.932455>,  <35.712868, 33.779396, 30.995913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.932487, 33.852474, 30.932455>,  <36.298519, 33.974270, 30.826693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932487, 33.852474, 30.932455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310841, 0.114885, -0.943493,
		0.256908, -0.945562, -0.199777,
		-0.915083, -0.304490, 0.264404,
		35.657963, 33.761127, 31.011776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102997, 33.501122, 30.328291>,  <36.298519, 33.974270, 30.826693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102997, 33.501122, 30.328291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.748573, 33.605793, 30.481352>,  <35.535919, 33.668594, 30.573189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.748573, 33.605793, 30.481352>,  <36.102997, 33.501122, 30.328291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748573, 33.605793, 30.481352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318608, 0.255836, -0.912709,
		-0.336735, -0.930629, -0.143312,
		-0.886058, 0.261680, 0.382655,
		35.482758, 33.684296, 30.596148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634945, 33.246479, 29.956875>,  <36.102997, 33.501122, 30.328291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634945, 33.246479, 29.956875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.390499, 33.517849, 30.119986>,  <35.243832, 33.680672, 30.217854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.390499, 33.517849, 30.119986>,  <35.634945, 33.246479, 29.956875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390499, 33.517849, 30.119986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388091, 0.192193, -0.901358,
		-0.689876, -0.709085, 0.145840,
		-0.611110, 0.678425, 0.407779,
		35.207165, 33.721378, 30.242319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974274, 33.115238, 29.678061>,  <35.634945, 33.246479, 29.956875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974274, 33.115238, 29.678061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.961575, 33.495407, 29.801790>,  <34.953957, 33.723511, 29.876028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.961575, 33.495407, 29.801790>,  <34.974274, 33.115238, 29.678061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961575, 33.495407, 29.801790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418030, 0.268486, -0.867851,
		-0.907878, -0.156857, 0.388784,
		-0.031746, 0.950427, 0.309324,
		34.952049, 33.780537, 29.894587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367874, 33.337399, 29.452719>,  <34.974274, 33.115238, 29.678061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367874, 33.337399, 29.452719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.558609, 33.681900, 29.522995>,  <34.673050, 33.888599, 29.565161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.558609, 33.681900, 29.522995>,  <34.367874, 33.337399, 29.452719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558609, 33.681900, 29.522995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460252, 0.414929, -0.784858,
		-0.748862, 0.293386, 0.594248,
		0.476837, 0.861254, 0.175693,
		34.701660, 33.940277, 29.575703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.771736, 33.751328, 29.552752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.092232, 33.976105, 29.470547>,  <34.284531, 34.110970, 29.421225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.092232, 33.976105, 29.470547>,  <33.771736, 33.751328, 29.552752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092232, 33.976105, 29.470547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482752, 0.404202, -0.776899,
		-0.353503, 0.721694, 0.595142,
		0.801240, 0.561942, -0.205512,
		34.332603, 34.144688, 29.408894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465698, 34.477669, 29.534922>,  <33.771736, 33.751328, 29.552752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465698, 34.477669, 29.534922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.817127, 34.479160, 29.343885>,  <34.027985, 34.480053, 29.229263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.817127, 34.479160, 29.343885>,  <33.465698, 34.477669, 29.534922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817127, 34.479160, 29.343885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444115, 0.374221, -0.814076,
		0.175693, 0.927332, 0.330435,
		0.878575, 0.003724, -0.477590,
		34.080700, 34.480278, 29.200609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568420, 35.164562, 29.227312>,  <33.465698, 34.477669, 29.534922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568420, 35.164562, 29.227312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.805435, 34.913574, 29.025251>,  <33.947643, 34.762981, 28.904015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.805435, 34.913574, 29.025251>,  <33.568420, 35.164562, 29.227312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.805435, 34.913574, 29.025251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347652, 0.366491, -0.863031,
		0.726659, 0.686997, -0.000981,
		0.592541, -0.627470, -0.505150,
		33.983196, 34.725334, 28.873707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868362, 35.601299, 28.654385>,  <33.568420, 35.164562, 29.227312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868362, 35.601299, 28.654385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.904705, 35.210487, 28.577284>,  <33.926510, 34.975998, 28.531023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.904705, 35.210487, 28.577284>,  <33.868362, 35.601299, 28.654385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904705, 35.210487, 28.577284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226961, 0.168145, -0.959279,
		0.969656, 0.130907, -0.206470,
		0.090859, -0.977032, -0.192753,
		33.931961, 34.917377, 28.519459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313637, 35.522778, 28.059898>,  <33.868362, 35.601299, 28.654385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313637, 35.522778, 28.059898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.107628, 35.180698, 28.083202>,  <33.984024, 34.975452, 28.097185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.107628, 35.180698, 28.083202>,  <34.313637, 35.522778, 28.059898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107628, 35.180698, 28.083202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219017, 0.065576, -0.973515,
		0.828724, -0.514142, -0.221075,
		-0.515022, -0.855195, 0.058261,
		33.953121, 34.924141, 28.100681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440483, 35.083481, 27.501482>,  <34.313637, 35.522778, 28.059898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440483, 35.083481, 27.501482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.090523, 34.915009, 27.597111>,  <33.880547, 34.813927, 27.654488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.090523, 34.915009, 27.597111>,  <34.440483, 35.083481, 27.501482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090523, 34.915009, 27.597111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298830, 0.081020, -0.950861,
		0.381115, -0.903351, -0.196746,
		-0.874901, -0.421181, 0.239070,
		33.828053, 34.788654, 27.668831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226849, 34.811001, 26.897066>,  <34.440483, 35.083481, 27.501482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226849, 34.811001, 26.897066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.907345, 34.777607, 27.135399>,  <33.715641, 34.757572, 27.278399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.907345, 34.777607, 27.135399>,  <34.226849, 34.811001, 26.897066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907345, 34.777607, 27.135399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590319, -0.082567, -0.802936,
		0.116227, -0.993083, 0.016669,
		-0.798758, -0.083483, 0.595832,
		33.667717, 34.752563, 27.314148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770782, 34.209957, 26.718130>,  <34.226849, 34.811001, 26.897066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770782, 34.209957, 26.718130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.521252, 34.458115, 26.908268>,  <33.371532, 34.607010, 27.022350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.521252, 34.458115, 26.908268>,  <33.770782, 34.209957, 26.718130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521252, 34.458115, 26.908268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658761, -0.090099, -0.746938,
		-0.420568, -0.779097, 0.464898,
		-0.623824, 0.620395, 0.475346,
		33.334103, 34.644234, 27.050873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109962, 33.916080, 26.848539>,  <33.770782, 34.209957, 26.718130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109962, 33.916080, 26.848539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.030472, 34.306805, 26.880423>,  <32.982777, 34.541237, 26.899553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.030472, 34.306805, 26.880423>,  <33.109962, 33.916080, 26.848539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030472, 34.306805, 26.880423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747152, -0.098367, -0.657334,
		-0.634248, -0.190187, 0.749372,
		-0.198730, 0.976807, 0.079710,
		32.970852, 34.599846, 26.904335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328468, 33.940468, 26.795998>,  <33.109962, 33.916080, 26.848539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328468, 33.940468, 26.795998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.473991, 34.306366, 26.725702>,  <32.561306, 34.525906, 26.683525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.473991, 34.306366, 26.725702>,  <32.328468, 33.940468, 26.795998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473991, 34.306366, 26.725702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623558, 0.099013, -0.775482,
		-0.691969, 0.391707, 0.606419,
		0.363805, 0.914747, -0.175738,
		32.583134, 34.580791, 26.672981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.744207, 34.326729, 26.829126>,  <32.328468, 33.940468, 26.795998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.744207, 34.326729, 26.829126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.022568, 34.515461, 26.612574>,  <32.189583, 34.628700, 26.482641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.022568, 34.515461, 26.612574>,  <31.744207, 34.326729, 26.829126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.022568, 34.515461, 26.612574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702360, 0.290020, -0.650060,
		-0.149708, 0.832624, 0.533222,
		0.695901, 0.471833, -0.541384,
		32.231339, 34.657009, 26.450159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667606, 35.095341, 26.786112>,  <31.744207, 34.326729, 26.829126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667606, 35.095341, 26.786112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.857660, 34.952503, 26.464434>,  <31.971693, 34.866802, 26.271427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.857660, 34.952503, 26.464434>,  <31.667606, 35.095341, 26.786112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857660, 34.952503, 26.464434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694813, 0.408514, -0.591905,
		0.539892, 0.840000, -0.054015,
		0.475134, -0.357094, -0.804196,
		32.000202, 34.845375, 26.223175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343933, 35.492771, 26.289667>,  <31.667606, 35.095341, 26.786112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343933, 35.492771, 26.289667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.569897, 35.253838, 26.061956>,  <31.705475, 35.110477, 25.925331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.569897, 35.253838, 26.061956>,  <31.343933, 35.492771, 26.289667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.569897, 35.253838, 26.061956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488519, 0.313894, -0.814137,
		0.665001, 0.738015, -0.114486,
		0.564909, -0.597331, -0.569274,
		31.739368, 35.074638, 25.891174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.585274, 35.929546, 25.753193>,  <31.343933, 35.492771, 26.289667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.585274, 35.929546, 25.753193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.661715, 35.586346, 25.562481>,  <31.707579, 35.380424, 25.448053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.661715, 35.586346, 25.562481>,  <31.585274, 35.929546, 25.753193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661715, 35.586346, 25.562481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463167, 0.349434, -0.814476,
		0.865422, 0.376478, -0.330618,
		0.191103, -0.857998, -0.476780,
		31.719046, 35.328945, 25.419447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828295, 36.163967, 25.137751>,  <31.585274, 35.929546, 25.753193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828295, 36.163967, 25.137751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.728746, 35.778343, 25.100538>,  <31.669018, 35.546970, 25.078211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.728746, 35.778343, 25.100538>,  <31.828295, 36.163967, 25.137751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.728746, 35.778343, 25.100538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529593, 0.215874, -0.820323,
		0.810921, -0.154889, -0.564283,
		-0.248873, -0.964058, -0.093029,
		31.654085, 35.489124, 25.072630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000080, 36.018551, 24.450813>,  <31.828295, 36.163967, 25.137751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000080, 36.018551, 24.450813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.725422, 35.755283, 24.574314>,  <31.560627, 35.597321, 24.648415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.725422, 35.755283, 24.574314>,  <32.000080, 36.018551, 24.450813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725422, 35.755283, 24.574314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551858, 0.195419, -0.810719,
		0.473257, -0.727063, -0.497401,
		-0.686645, -0.658173, 0.308752,
		31.519428, 35.557831, 24.666939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940992, 35.672253, 23.789270>,  <32.000080, 36.018551, 24.450813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940992, 35.672253, 23.789270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.616564, 35.620174, 24.017380>,  <31.421906, 35.588928, 24.154245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.616564, 35.620174, 24.017380>,  <31.940992, 35.672253, 23.789270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616564, 35.620174, 24.017380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567647, -0.060156, -0.821071,
		0.141204, -0.989662, -0.025114,
		-0.811072, -0.130194, 0.570273,
		31.373241, 35.581116, 24.188461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653973, 34.969349, 23.494450>,  <31.940992, 35.672253, 23.789270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653973, 34.969349, 23.494450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.391464, 35.197830, 23.691647>,  <31.233959, 35.334919, 23.809965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.391464, 35.197830, 23.691647>,  <31.653973, 34.969349, 23.494450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391464, 35.197830, 23.691647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653046, -0.102722, -0.750319,
		-0.377940, -0.814359, 0.440433,
		-0.656271, 0.571199, 0.492991,
		31.194582, 35.369190, 23.839544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.132896, 34.575397, 23.463806>,  <31.653973, 34.969349, 23.494450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.132896, 34.575397, 23.463806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.001633, 34.946186, 23.536501>,  <30.922874, 35.168659, 23.580118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.001633, 34.946186, 23.536501>,  <31.132896, 34.575397, 23.463806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.001633, 34.946186, 23.536501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721056, -0.121526, -0.682136,
		-0.610237, -0.354893, 0.708281,
		-0.328160, 0.926974, 0.181739,
		30.903185, 35.224277, 23.591022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.429867, 34.471371, 23.349947>,  <31.132896, 34.575397, 23.463806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.429867, 34.471371, 23.349947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.500357, 34.864952, 23.338804>,  <30.542650, 35.101101, 23.332119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.500357, 34.864952, 23.338804>,  <30.429867, 34.471371, 23.349947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.500357, 34.864952, 23.338804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601988, 0.085338, -0.793932,
		-0.778817, 0.156682, 0.607368,
		0.176226, 0.983956, -0.027858,
		30.553225, 35.160137, 23.330446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.732491, 34.776478, 23.167171>,  <30.429867, 34.471371, 23.349947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.732491, 34.776478, 23.167171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.023872, 35.043053, 23.103661>,  <30.198702, 35.202999, 23.065554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.023872, 35.043053, 23.103661>,  <29.732491, 34.776478, 23.167171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.023872, 35.043053, 23.103661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343075, 0.154250, -0.926556,
		-0.593003, 0.729427, 0.341003,
		0.728455, 0.666441, -0.158777,
		30.242409, 35.242985, 23.056028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.390888, 35.356102, 22.884014>,  <29.732491, 34.776478, 23.167171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.390888, 35.356102, 22.884014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.772535, 35.405163, 22.774752>,  <30.001524, 35.434597, 22.709194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.772535, 35.405163, 22.774752>,  <29.390888, 35.356102, 22.884014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.772535, 35.405163, 22.774752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282767, 0.069003, -0.956703,
		-0.098490, 0.990048, 0.100519,
		0.954119, 0.122649, -0.273157,
		30.058771, 35.441959, 22.692804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.324160, 35.736073, 22.209564>,  <29.390888, 35.356102, 22.884014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.324160, 35.736073, 22.209564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.707855, 35.623810, 22.222786>,  <29.938072, 35.556454, 22.230719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.707855, 35.623810, 22.222786>,  <29.324160, 35.736073, 22.209564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.707855, 35.623810, 22.222786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020670, -0.186338, -0.982268,
		0.281839, 0.941547, -0.184544,
		0.959239, -0.280656, 0.033056,
		29.995626, 35.539612, 22.232702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.052000, 36.413849, 22.568510>,  <29.324160, 35.736073, 22.209564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.052000, 36.413849, 22.568510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.062841, 36.813698, 22.566593>,  <29.069347, 37.053608, 22.565443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.062841, 36.813698, 22.566593>,  <29.052000, 36.413849, 22.568510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.062841, 36.813698, 22.566593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595731, -0.012302, 0.803090,
		0.802727, -0.024624, -0.595839,
		0.027105, 0.999621, -0.004794,
		29.070972, 37.113583, 22.565155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.661516, 36.670609, 22.889523>,  <29.052000, 36.413849, 22.568510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.661516, 36.670609, 22.889523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.424847, 36.992268, 22.912413>,  <29.282845, 37.185261, 22.926147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.424847, 36.992268, 22.912413>,  <29.661516, 36.670609, 22.889523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.424847, 36.992268, 22.912413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385727, 0.220047, 0.895988,
		0.707911, 0.552206, -0.440376,
		-0.591673, 0.804145, 0.057227,
		29.247345, 37.233513, 22.929581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.990965, 37.263775, 23.158506>,  <29.661516, 36.670609, 22.889523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.990965, 37.263775, 23.158506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.606844, 37.346619, 23.233255>,  <29.376371, 37.396324, 23.278105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.606844, 37.346619, 23.233255>,  <29.990965, 37.263775, 23.158506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.606844, 37.346619, 23.233255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258084, 0.405402, 0.876950,
		0.105869, 0.890367, -0.442762,
		-0.960304, 0.207111, 0.186870,
		29.318752, 37.408752, 23.289316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.894234, 37.876842, 23.356539>,  <29.990965, 37.263775, 23.158506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.894234, 37.876842, 23.356539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.559347, 37.733181, 23.521503>,  <29.358416, 37.646984, 23.620481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.559347, 37.733181, 23.521503>,  <29.894234, 37.876842, 23.356539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.559347, 37.733181, 23.521503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306056, 0.317261, 0.897594,
		-0.453213, 0.877700, -0.155696,
		-0.837214, -0.359150, 0.412412,
		29.308184, 37.625435, 23.645227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.779169, 38.296280, 23.933266>,  <29.894234, 37.876842, 23.356539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.779169, 38.296280, 23.933266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.554678, 37.979385, 24.029087>,  <29.419983, 37.789249, 24.086580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.554678, 37.979385, 24.029087>,  <29.779169, 38.296280, 23.933266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.554678, 37.979385, 24.029087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169085, 0.173584, 0.970196,
		-0.810206, 0.585006, 0.036534,
		-0.561229, -0.792235, 0.239554,
		29.386309, 37.741714, 24.100954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.367456, 38.513298, 24.396687>,  <29.779169, 38.296280, 23.933266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.367456, 38.513298, 24.396687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.380064, 38.116436, 24.445072>,  <29.387629, 37.878319, 24.474104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.380064, 38.116436, 24.445072>,  <29.367456, 38.513298, 24.396687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.380064, 38.116436, 24.445072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028110, 0.120097, 0.992364,
		-0.999108, -0.034679, -0.024104,
		0.031519, -0.992156, 0.120965,
		29.389521, 37.818790, 24.481361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.851244, 38.447632, 24.927734>,  <29.367456, 38.513298, 24.396687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.851244, 38.447632, 24.927734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.082544, 38.121357, 24.921085>,  <29.221325, 37.925591, 24.917097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.082544, 38.121357, 24.921085>,  <28.851244, 38.447632, 24.927734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.082544, 38.121357, 24.921085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237710, 0.148956, 0.959847,
		-0.780462, -0.558982, 0.280031,
		0.578250, -0.815690, -0.016621,
		29.256020, 37.876652, 24.916100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.711618, 38.180367, 25.613390>,  <28.851244, 38.447632, 24.927734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.711618, 38.180367, 25.613390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.045349, 37.984055, 25.512962>,  <29.245588, 37.866268, 25.452705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.045349, 37.984055, 25.512962>,  <28.711618, 38.180367, 25.613390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.045349, 37.984055, 25.512962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317206, 0.054913, 0.946766,
		-0.450865, -0.869552, 0.201493,
		0.834327, -0.490778, -0.251069,
		29.295647, 37.836823, 25.437641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.784901, 37.542759, 26.104767>,  <28.711618, 38.180367, 25.613390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.784901, 37.542759, 26.104767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.144009, 37.653408, 25.967661>,  <29.359474, 37.719799, 25.885397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.144009, 37.653408, 25.967661>,  <28.784901, 37.542759, 26.104767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.144009, 37.653408, 25.967661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420330, -0.305450, 0.854414,
		0.131653, -0.911142, -0.390497,
		0.897769, 0.276624, -0.342767,
		29.413340, 37.736397, 25.864830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.294329, 36.956078, 26.284534>,  <28.784901, 37.542759, 26.104767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.294329, 36.956078, 26.284534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.524858, 37.277824, 26.226788>,  <29.663177, 37.470871, 26.192139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.524858, 37.277824, 26.226788>,  <29.294329, 36.956078, 26.284534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.524858, 37.277824, 26.226788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572319, -0.271166, 0.773899,
		0.583351, -0.528642, -0.616635,
		0.576326, 0.804367, -0.144367,
		29.697756, 37.519135, 26.183477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.927456, 36.677525, 26.045057>,  <29.294329, 36.956078, 26.284534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.927456, 36.677525, 26.045057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.976210, 37.024189, 26.238571>,  <30.005463, 37.232185, 26.354679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.976210, 37.024189, 26.238571>,  <29.927456, 36.677525, 26.045057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.976210, 37.024189, 26.238571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713281, -0.415423, 0.564495,
		0.690199, 0.276270, -0.668805,
		0.121884, 0.866659, 0.483783,
		30.012775, 37.284187, 26.383705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.655151, 36.806892, 26.020346>,  <29.927456, 36.677525, 26.045057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.655151, 36.806892, 26.020346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.596159, 37.107414, 26.277653>,  <30.560764, 37.287727, 26.432037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.596159, 37.107414, 26.277653>,  <30.655151, 36.806892, 26.020346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.596159, 37.107414, 26.277653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603415, -0.446974, 0.660382,
		0.783671, 0.485551, -0.387428,
		-0.147479, 0.751302, 0.643270,
		30.551916, 37.332806, 26.470634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.354836, 37.023445, 26.236124>,  <30.655151, 36.806892, 26.020346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.354836, 37.023445, 26.236124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.101540, 37.165833, 26.511017>,  <30.949562, 37.251266, 26.675953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.101540, 37.165833, 26.511017>,  <31.354836, 37.023445, 26.236124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.101540, 37.165833, 26.511017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525467, -0.454188, 0.719442,
		0.568233, 0.816700, 0.100560,
		-0.633242, 0.355970, 0.687234,
		30.911568, 37.272625, 26.717188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715534, 37.443157, 26.626644>,  <31.354836, 37.023445, 26.236124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715534, 37.443157, 26.626644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.410666, 37.326900, 26.858030>,  <31.227743, 37.257149, 26.996862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.410666, 37.326900, 26.858030>,  <31.715534, 37.443157, 26.626644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.410666, 37.326900, 26.858030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639232, -0.196604, 0.743458,
		-0.102349, 0.936417, 0.335632,
		-0.762173, -0.290639, 0.578465,
		31.182014, 37.239708, 27.031570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011646, 37.745201, 27.140358>,  <31.715534, 37.443157, 26.626644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011646, 37.745201, 27.140358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.742786, 37.468441, 27.245796>,  <31.581470, 37.302383, 27.309059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.742786, 37.468441, 27.245796>,  <32.011646, 37.745201, 27.140358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742786, 37.468441, 27.245796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556815, -0.237709, 0.795897,
		-0.488024, 0.681738, 0.545038,
		-0.672153, -0.691902, 0.263594,
		31.541140, 37.260872, 27.324875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922548, 37.845341, 27.870794>,  <32.011646, 37.745201, 27.140358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922548, 37.845341, 27.870794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.770309, 37.478245, 27.825380>,  <31.678967, 37.257988, 27.798132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.770309, 37.478245, 27.825380>,  <31.922548, 37.845341, 27.870794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770309, 37.478245, 27.825380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229802, -0.212788, 0.949691,
		-0.895732, 0.335361, 0.291886,
		-0.380599, -0.917744, -0.113535,
		31.656130, 37.202923, 27.791321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366394, 37.724602, 28.383810>,  <31.922548, 37.845341, 27.870794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366394, 37.724602, 28.383810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.494120, 37.362083, 28.273056>,  <31.570755, 37.144573, 28.206604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.494120, 37.362083, 28.273056>,  <31.366394, 37.724602, 28.383810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.494120, 37.362083, 28.273056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010795, -0.288684, 0.957364,
		-0.947587, -0.308689, -0.082398,
		0.319315, -0.906296, -0.276885,
		31.589914, 37.090195, 28.189991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929306, 37.167389, 28.805634>,  <31.366394, 37.724602, 28.383810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929306, 37.167389, 28.805634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.223312, 36.942978, 28.653322>,  <31.399717, 36.808331, 28.561935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.223312, 36.942978, 28.653322>,  <30.929306, 37.167389, 28.805634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.223312, 36.942978, 28.653322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155066, -0.407613, 0.899892,
		-0.660078, -0.720483, -0.212606,
		0.735018, -0.561031, -0.380779,
		31.443817, 36.774670, 28.539089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840824, 36.471203, 29.093819>,  <30.929306, 37.167389, 28.805634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840824, 36.471203, 29.093819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.224451, 36.513977, 28.988935>,  <31.454628, 36.539642, 28.926006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.224451, 36.513977, 28.988935>,  <30.840824, 36.471203, 29.093819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.224451, 36.513977, 28.988935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282690, -0.307285, 0.908660,
		0.016599, -0.945590, -0.324937,
		0.959067, 0.106940, -0.262208,
		31.512171, 36.546059, 28.910273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.099642, 35.870701, 29.245295>,  <30.840824, 36.471203, 29.093819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.099642, 35.870701, 29.245295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.443268, 36.075138, 29.256548>,  <31.649443, 36.197800, 29.263300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.443268, 36.075138, 29.256548>,  <31.099642, 35.870701, 29.245295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443268, 36.075138, 29.256548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248098, -0.463825, 0.850478,
		0.447725, -0.723635, -0.525257,
		0.859063, 0.511096, 0.028134,
		31.700987, 36.228466, 29.264988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.634148, 35.402550, 29.539759>,  <31.099642, 35.870701, 29.245295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.634148, 35.402550, 29.539759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.755667, 35.777164, 29.609734>,  <31.828577, 36.001934, 29.651718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.755667, 35.777164, 29.609734>,  <31.634148, 35.402550, 29.539759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.755667, 35.777164, 29.609734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363179, -0.283589, 0.887512,
		0.880800, -0.206088, -0.426284,
		0.303796, 0.936539, 0.174938,
		31.846806, 36.058125, 29.662214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<35.524738, 32.508335, 31.597170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.554165, 32.899776, 31.674030>,  <35.571819, 33.134640, 31.720146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.554165, 32.899776, 31.674030>,  <35.524738, 32.508335, 31.597170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554165, 32.899776, 31.674030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553232, -0.200355, 0.808574,
		0.829772, 0.046823, -0.556134,
		0.073565, 0.978604, 0.192153,
		35.576233, 33.193359, 31.731676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270981, 32.560429, 31.807741>,  <35.524738, 32.508335, 31.597170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270981, 32.560429, 31.807741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.058029, 32.881859, 31.914202>,  <35.930260, 33.074718, 31.978079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.058029, 32.881859, 31.914202>,  <36.270981, 32.560429, 31.807741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058029, 32.881859, 31.914202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500083, 0.044875, 0.864814,
		0.683001, 0.593507, -0.425746,
		-0.532378, 0.803577, 0.266153,
		35.898315, 33.122932, 31.994047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785122, 33.096832, 31.818171>,  <36.270981, 32.560429, 31.807741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785122, 33.096832, 31.818171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.454460, 33.136650, 32.039703>,  <36.256062, 33.160542, 32.172623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.454460, 33.136650, 32.039703>,  <36.785122, 33.096832, 31.818171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454460, 33.136650, 32.039703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550876, -0.057595, 0.832597,
		0.114778, 0.993365, -0.007225,
		-0.826657, 0.099544, 0.553831,
		36.206463, 33.166512, 32.205853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950371, 33.360222, 32.426666>,  <36.785122, 33.096832, 31.818171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950371, 33.360222, 32.426666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.592613, 33.247963, 32.565971>,  <36.377956, 33.180607, 32.649555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.592613, 33.247963, 32.565971>,  <36.950371, 33.360222, 32.426666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592613, 33.247963, 32.565971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383829, -0.081846, 0.919770,
		-0.229631, 0.956314, 0.180925,
		-0.894396, -0.280652, 0.348266,
		36.324295, 33.163769, 32.670452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933453, 33.776302, 33.012760>,  <36.950371, 33.360222, 32.426666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933453, 33.776302, 33.012760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.662041, 33.486183, 33.059296>,  <36.499195, 33.312111, 33.087219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.662041, 33.486183, 33.059296>,  <36.933453, 33.776302, 33.012760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662041, 33.486183, 33.059296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190072, -0.020369, 0.981559,
		-0.709557, 0.688130, 0.151681,
		-0.678529, -0.725302, 0.116341,
		36.458481, 33.268593, 33.094196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483124, 33.906689, 33.682602>,  <36.933453, 33.776302, 33.012760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483124, 33.906689, 33.682602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.465965, 33.518757, 33.586605>,  <36.455669, 33.285999, 33.529007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.465965, 33.518757, 33.586605>,  <36.483124, 33.906689, 33.682602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465965, 33.518757, 33.586605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293478, -0.241852, 0.924866,
		-0.955003, -0.030759, 0.294998,
		-0.042898, -0.969825, -0.239997,
		36.453094, 33.227810, 33.514606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063290, 33.586903, 34.266685>,  <36.483124, 33.906689, 33.682602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063290, 33.586903, 34.266685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.251156, 33.292862, 34.071117>,  <36.363876, 33.116440, 33.953777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.251156, 33.292862, 34.071117>,  <36.063290, 33.586903, 34.266685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251156, 33.292862, 34.071117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350231, -0.353222, 0.867510,
		-0.810404, -0.578673, 0.091559,
		0.469664, -0.735100, -0.488921,
		36.392056, 33.072330, 33.924442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931286, 32.933914, 34.574184>,  <36.063290, 33.586903, 34.266685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931286, 32.933914, 34.574184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.262558, 32.864124, 34.361141>,  <36.461323, 32.822250, 34.233315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.262558, 32.864124, 34.361141>,  <35.931286, 32.933914, 34.574184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262558, 32.864124, 34.361141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416076, -0.445274, 0.792850,
		-0.375483, -0.878232, -0.296178,
		0.828187, -0.174470, -0.532604,
		36.511013, 32.811783, 34.201359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105656, 32.239746, 34.637867>,  <35.931286, 32.933914, 34.574184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105656, 32.239746, 34.637867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.457386, 32.383099, 34.512424>,  <36.668423, 32.469112, 34.437160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.457386, 32.383099, 34.512424>,  <36.105656, 32.239746, 34.637867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457386, 32.383099, 34.512424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460300, -0.470769, 0.752662,
		0.122107, -0.806187, -0.578924,
		0.879326, 0.358384, -0.313604,
		36.721184, 32.490612, 34.418343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571999, 31.647814, 34.565849>,  <36.105656, 32.239746, 34.637867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571999, 31.647814, 34.565849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.830074, 31.953327, 34.573460>,  <36.984921, 32.136635, 34.578026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.830074, 31.953327, 34.573460>,  <36.571999, 31.647814, 34.565849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830074, 31.953327, 34.573460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492773, -0.435033, 0.753605,
		0.583868, -0.476844, -0.657052,
		0.645192, 0.763784, 0.019026,
		37.023632, 32.182461, 34.579166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218254, 31.336588, 34.525040>,  <36.571999, 31.647814, 34.565849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218254, 31.336588, 34.525040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.279694, 31.687243, 34.707432>,  <37.316559, 31.897635, 34.816868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.279694, 31.687243, 34.707432>,  <37.218254, 31.336588, 34.525040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279694, 31.687243, 34.707432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595275, -0.450412, 0.665414,
		0.788705, 0.169227, -0.591022,
		0.153598, 0.876636, 0.455979,
		37.325771, 31.950233, 34.844227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863335, 31.219019, 34.806061>,  <37.218254, 31.336588, 34.525040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863335, 31.219019, 34.806061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.726276, 31.540827, 35.000111>,  <37.644043, 31.733912, 35.116539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.726276, 31.540827, 35.000111>,  <37.863335, 31.219019, 34.806061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726276, 31.540827, 35.000111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425999, -0.327189, 0.843488,
		0.837329, 0.495678, -0.230615,
		-0.342643, 0.804519, 0.485124,
		37.623482, 31.782183, 35.145649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390148, 31.455374, 35.228542>,  <37.863335, 31.219019, 34.806061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390148, 31.455374, 35.228542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.044773, 31.595150, 35.374069>,  <37.837547, 31.679016, 35.461384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.044773, 31.595150, 35.374069>,  <38.390148, 31.455374, 35.228542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044773, 31.595150, 35.374069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230120, -0.368947, 0.900513,
		0.448905, 0.861260, 0.238151,
		-0.863441, 0.349441, 0.363815,
		37.785740, 31.699982, 35.483215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427700, 31.990442, 35.820789>,  <38.390148, 31.455374, 35.228542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427700, 31.990442, 35.820789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.110268, 31.747305, 35.831749>,  <37.919807, 31.601423, 35.838326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.110268, 31.747305, 35.831749>,  <38.427700, 31.990442, 35.820789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110268, 31.747305, 35.831749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224318, -0.250418, 0.941792,
		-0.565601, 0.753537, 0.335078,
		-0.793584, -0.607843, 0.027395,
		37.872192, 31.564953, 35.839966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685780, 32.761677, 35.859512>,  <38.427700, 31.990442, 35.820789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685780, 32.761677, 35.859512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.819298, 33.083366, 36.056202>,  <38.899410, 33.276382, 36.174217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.819298, 33.083366, 36.056202>,  <38.685780, 32.761677, 35.859512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819298, 33.083366, 36.056202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373531, 0.591791, -0.714323,
		-0.865478, 0.054766, 0.497944,
		0.333800, 0.804229, 0.491725,
		38.919437, 33.324635, 36.203720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212807, 33.205742, 35.761471>,  <38.685780, 32.761677, 35.859512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212807, 33.205742, 35.761471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.513798, 33.443027, 35.875927>,  <38.694393, 33.585400, 35.944603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.513798, 33.443027, 35.875927>,  <38.212807, 33.205742, 35.761471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513798, 33.443027, 35.875927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286082, 0.685727, -0.669280,
		-0.593240, 0.421758, 0.685701,
		0.752478, 0.593211, 0.286143,
		38.739540, 33.620991, 35.961769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882820, 33.958733, 35.931122>,  <38.212807, 33.205742, 35.761471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882820, 33.958733, 35.931122> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.274452, 33.981743, 35.853058>,  <38.509434, 33.995548, 35.806217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.274452, 33.981743, 35.853058>,  <37.882820, 33.958733, 35.931122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274452, 33.981743, 35.853058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179399, 0.696572, -0.694696,
		0.095985, 0.715177, 0.692321,
		0.979083, 0.057522, -0.195163,
		38.568176, 33.999001, 35.794510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063385, 34.754498, 35.921192>,  <37.882820, 33.958733, 35.931122>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063385, 34.754498, 35.921192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.337452, 34.559227, 35.704956>,  <38.501892, 34.442066, 35.575214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.337452, 34.559227, 35.704956>,  <38.063385, 34.754498, 35.921192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337452, 34.559227, 35.704956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114834, 0.660495, -0.741997,
		0.719278, 0.570469, 0.396490,
		0.685166, -0.488172, -0.540588,
		38.543003, 34.412777, 35.542778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539288, 35.306519, 35.662785>,  <38.063385, 34.754498, 35.921192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539288, 35.306519, 35.662785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.592113, 34.991352, 35.422203>,  <38.623810, 34.802254, 35.277855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.592113, 34.991352, 35.422203>,  <38.539288, 35.306519, 35.662785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592113, 34.991352, 35.422203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087151, 0.613648, -0.784755,
		0.987402, 0.051224, 0.149712,
		0.132069, -0.787916, -0.601453,
		38.631733, 34.754978, 35.241768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013268, 35.540394, 35.220352>,  <38.539288, 35.306519, 35.662785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013268, 35.540394, 35.220352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.846260, 35.224686, 35.040249>,  <38.746056, 35.035263, 34.932186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.846260, 35.224686, 35.040249>,  <39.013268, 35.540394, 35.220352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846260, 35.224686, 35.040249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012969, 0.500643, -0.865557,
		0.908574, -0.355549, -0.219265,
		-0.417522, -0.789266, -0.450260,
		38.721004, 34.987907, 34.905170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346916, 35.455296, 34.516464>,  <39.013268, 35.540394, 35.220352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346916, 35.455296, 34.516464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.022755, 35.225388, 34.471062>,  <38.828259, 35.087440, 34.443821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.022755, 35.225388, 34.471062>,  <39.346916, 35.455296, 34.516464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022755, 35.225388, 34.471062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086361, 0.308810, -0.947195,
		0.579473, -0.757808, -0.299898,
		-0.810403, -0.574773, -0.113502,
		38.779633, 35.052956, 34.437012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466644, 35.132557, 33.864769>,  <39.346916, 35.455296, 34.516464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466644, 35.132557, 33.864769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.075401, 35.107426, 33.944122>,  <38.840656, 35.092346, 33.991734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.075401, 35.107426, 33.944122>,  <39.466644, 35.132557, 33.864769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075401, 35.107426, 33.944122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205784, 0.150486, -0.966958,
		0.030892, -0.986614, -0.160119,
		-0.978110, -0.062821, 0.198380,
		38.781967, 35.088577, 34.003635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177994, 34.789345, 33.269203>,  <39.466644, 35.132557, 33.864769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177994, 34.789345, 33.269203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.864059, 34.972923, 33.435764>,  <38.675697, 35.083073, 33.535702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.864059, 34.972923, 33.435764>,  <39.177994, 34.789345, 33.269203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864059, 34.972923, 33.435764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461729, 0.015082, -0.886893,
		-0.413319, -0.888334, 0.200073,
		-0.784840, 0.458949, 0.416403,
		38.628609, 35.110607, 33.560684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664436, 34.425747, 32.994350>,  <39.177994, 34.789345, 33.269203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664436, 34.425747, 32.994350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.513687, 34.775490, 33.116642>,  <38.423237, 34.985336, 33.190018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.513687, 34.775490, 33.116642>,  <38.664436, 34.425747, 32.994350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513687, 34.775490, 33.116642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616920, 0.009259, -0.786972,
		-0.690924, -0.485198, 0.535917,
		-0.376875, 0.874356, 0.305726,
		38.400623, 35.037796, 33.208359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014965, 34.429008, 32.734322>,  <38.664436, 34.425747, 32.994350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014965, 34.429008, 32.734322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.092258, 34.815453, 32.802784>,  <38.138634, 35.047318, 32.843861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.092258, 34.815453, 32.802784>,  <38.014965, 34.429008, 32.734322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092258, 34.815453, 32.802784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431769, 0.240382, -0.869363,
		-0.881042, 0.094092, 0.463586,
		0.193238, 0.966107, 0.171160,
		38.150230, 35.105286, 32.854134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328243, 34.867489, 32.568901>,  <38.014965, 34.429008, 32.734322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328243, 34.867489, 32.568901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.651970, 35.102383, 32.574047>,  <37.846207, 35.243320, 32.577137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.651970, 35.102383, 32.574047>,  <37.328243, 34.867489, 32.568901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651970, 35.102383, 32.574047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277529, 0.401609, -0.872747,
		-0.517679, 0.702753, 0.488003,
		0.809312, 0.587238, 0.012870,
		37.894764, 35.278553, 32.577908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015308, 35.646194, 32.430138>,  <37.328243, 34.867489, 32.568901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015308, 35.646194, 32.430138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.401688, 35.628403, 32.328178>,  <37.633514, 35.617729, 32.267002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.401688, 35.628403, 32.328178>,  <37.015308, 35.646194, 32.430138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401688, 35.628403, 32.328178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191645, 0.538906, -0.820276,
		0.173851, 0.841191, 0.512029,
		0.965944, -0.044478, -0.254899,
		37.691471, 35.615059, 32.251709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189159, 36.332916, 32.243565>,  <37.015308, 35.646194, 32.430138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189159, 36.332916, 32.243565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.472073, 36.105759, 32.075161>,  <37.641819, 35.969463, 31.974119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.472073, 36.105759, 32.075161>,  <37.189159, 36.332916, 32.243565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472073, 36.105759, 32.075161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194444, 0.416292, -0.888196,
		0.679663, 0.710068, 0.184013,
		0.707283, -0.567894, -0.421007,
		37.684258, 35.935390, 31.948858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370586, 36.981831, 32.664417>,  <37.189159, 36.332916, 32.243565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370586, 36.981831, 32.664417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.371445, 37.380890, 32.691799>,  <37.371960, 37.620327, 32.708229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.371445, 37.380890, 32.691799>,  <37.370586, 36.981831, 32.664417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371445, 37.380890, 32.691799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000096, -0.068459, 0.997654,
		0.999998, -0.002136, -0.000242,
		0.002147, 0.997652, 0.068459,
		37.372089, 37.680187, 32.712337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935688, 37.142067, 33.116066>,  <37.370586, 36.981831, 32.664417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935688, 37.142067, 33.116066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.702625, 37.466900, 33.128941>,  <37.562786, 37.661800, 33.136665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.702625, 37.466900, 33.128941>,  <37.935688, 37.142067, 33.116066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702625, 37.466900, 33.128941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036993, -0.013065, 0.999230,
		0.811876, 0.583399, -0.022429,
		-0.582657, 0.812080, 0.032188,
		37.527828, 37.710526, 33.138596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279419, 37.547863, 33.563095>,  <37.935688, 37.142067, 33.116066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279419, 37.547863, 33.563095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.924496, 37.732155, 33.571175>,  <37.711540, 37.842731, 33.576023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.924496, 37.732155, 33.571175>,  <38.279419, 37.547863, 33.563095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924496, 37.732155, 33.571175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109754, 0.168432, 0.979584,
		0.447924, 0.871411, -0.200019,
		-0.887309, 0.460732, 0.020196,
		37.658302, 37.870373, 33.577232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330982, 38.115860, 34.094353>,  <38.279419, 37.547863, 33.563095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330982, 38.115860, 34.094353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.937588, 38.068832, 34.039330>,  <37.701550, 38.040615, 34.006317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.937588, 38.068832, 34.039330>,  <38.330982, 38.115860, 34.094353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937588, 38.068832, 34.039330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155559, 0.160942, 0.974628,
		-0.092451, 0.979936, -0.176574,
		-0.983491, -0.117573, -0.137558,
		37.642540, 38.033562, 33.998062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882130, 38.761990, 34.210629>,  <38.330982, 38.115860, 34.094353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882130, 38.761990, 34.210629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.630856, 38.454536, 34.258923>,  <37.480091, 38.270065, 34.287899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.630856, 38.454536, 34.258923>,  <37.882130, 38.761990, 34.210629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.630856, 38.454536, 34.258923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163202, 0.281893, 0.945464,
		-0.760753, 0.574224, -0.302525,
		-0.628188, -0.768637, 0.120736,
		37.442398, 38.223946, 34.295143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233047, 39.030048, 34.579662>,  <37.882130, 38.761990, 34.210629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233047, 39.030048, 34.579662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.194012, 38.638992, 34.654167>,  <37.170589, 38.404358, 34.698872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.194012, 38.638992, 34.654167>,  <37.233047, 39.030048, 34.579662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194012, 38.638992, 34.654167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473300, 0.210228, 0.855448,
		-0.875479, -0.004676, -0.483233,
		-0.097590, -0.977641, 0.186263,
		37.164734, 38.345699, 34.710045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565575, 38.940285, 34.939350>,  <37.233047, 39.030048, 34.579662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565575, 38.940285, 34.939350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.806557, 38.627869, 35.005096>,  <36.951145, 38.440418, 35.044544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.806557, 38.627869, 35.005096>,  <36.565575, 38.940285, 34.939350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806557, 38.627869, 35.005096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239495, 0.019540, 0.970701,
		-0.761372, -0.624170, -0.175285,
		0.602458, -0.781044, 0.164363,
		36.987293, 38.393555, 35.054405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255657, 38.408707, 35.296471>,  <36.565575, 38.940285, 34.939350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255657, 38.408707, 35.296471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.637112, 38.343109, 35.397419>,  <36.865982, 38.303753, 35.457989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.637112, 38.343109, 35.397419>,  <36.255657, 38.408707, 35.296471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637112, 38.343109, 35.397419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282307, -0.196712, 0.938939,
		-0.104330, -0.966650, -0.233886,
		0.953634, -0.163987, 0.252369,
		36.923203, 38.293911, 35.473129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185268, 38.064995, 35.962852>,  <36.255657, 38.408707, 35.296471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185268, 38.064995, 35.962852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.583065, 38.106197, 35.970699>,  <36.821743, 38.130920, 35.975407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.583065, 38.106197, 35.970699>,  <36.185268, 38.064995, 35.962852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583065, 38.106197, 35.970699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013553, -0.059231, 0.998152,
		0.103978, -0.992915, -0.057509,
		0.994487, 0.103007, 0.019616,
		36.881413, 38.137100, 35.976585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489819, 37.453735, 36.379234>,  <36.185268, 38.064995, 35.962852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489819, 37.453735, 36.379234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.750561, 37.756893, 36.389660>,  <36.907005, 37.938789, 36.395916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.750561, 37.756893, 36.389660>,  <36.489819, 37.453735, 36.379234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750561, 37.756893, 36.389660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009575, -0.042591, 0.999047,
		0.758283, -0.650985, -0.035020,
		0.651855, 0.757895, 0.026063,
		36.946117, 37.984261, 36.397480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938564, 37.264404, 36.888115>,  <36.489819, 37.453735, 36.379234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938564, 37.264404, 36.888115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.982113, 37.661530, 36.868279>,  <37.008244, 37.899807, 36.856377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.982113, 37.661530, 36.868279>,  <36.938564, 37.264404, 36.888115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982113, 37.661530, 36.868279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015595, 0.051590, 0.998546,
		0.993933, -0.107941, 0.021099,
		0.108872, 0.992818, -0.049594,
		37.014774, 37.959373, 36.853401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344376, 37.403198, 37.504215>,  <36.938564, 37.264404, 36.888115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344376, 37.403198, 37.504215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.237499, 37.765186, 37.371773>,  <37.173374, 37.982380, 37.292305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.237499, 37.765186, 37.371773>,  <37.344376, 37.403198, 37.504215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237499, 37.765186, 37.371773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337051, 0.234135, 0.911909,
		0.902777, 0.355254, 0.242463,
		-0.267190, 0.904972, -0.331111,
		37.157341, 38.036678, 37.272438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.412907, 38.185345, 29.163122> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105186, 38.414368, 29.276503>,  <36.920555, 38.551781, 29.344530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105186, 38.414368, 29.276503>,  <37.412907, 38.185345, 29.163122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105186, 38.414368, 29.276503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463787, 0.195355, 0.864140,
		0.439399, 0.796248, -0.415834,
		-0.769305, 0.572560, 0.283451,
		36.874393, 38.586136, 29.361538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698029, 38.726234, 29.515488>,  <37.412907, 38.185345, 29.163122>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698029, 38.726234, 29.515488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314423, 38.739746, 29.628025>,  <37.084259, 38.747852, 29.695547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314423, 38.739746, 29.628025>,  <37.698029, 38.726234, 29.515488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314423, 38.739746, 29.628025> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277741, -0.084761, 0.956909,
		0.056172, 0.995828, 0.071904,
		-0.959012, 0.033781, 0.281344,
		37.026718, 38.749882, 29.712429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573822, 39.262138, 30.057558>,  <37.698029, 38.726234, 29.515488>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573822, 39.262138, 30.057558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257095, 39.021626, 30.100420>,  <37.067059, 38.877319, 30.126137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257095, 39.021626, 30.100420>,  <37.573822, 39.262138, 30.057558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257095, 39.021626, 30.100420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137097, -0.004018, 0.990549,
		-0.595168, 0.799028, 0.085615,
		-0.791820, -0.601281, 0.107153,
		37.019550, 38.841240, 30.132566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268276, 39.547031, 30.600739>,  <37.573822, 39.262138, 30.057558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268276, 39.547031, 30.600739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109505, 39.182907, 30.553764>,  <37.014244, 38.964432, 30.525579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109505, 39.182907, 30.553764>,  <37.268276, 39.547031, 30.600739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109505, 39.182907, 30.553764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028522, -0.140120, 0.989724,
		-0.917408, 0.389497, 0.081581,
		-0.396926, -0.910307, -0.117437,
		36.990429, 38.909817, 30.518534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887016, 39.461643, 31.147820>,  <37.268276, 39.547031, 30.600739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887016, 39.461643, 31.147820> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937141, 39.087330, 31.015995>,  <36.967216, 38.862743, 30.936899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937141, 39.087330, 31.015995>,  <36.887016, 39.461643, 31.147820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937141, 39.087330, 31.015995> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044094, -0.326600, 0.944133,
		-0.991137, -0.132845, 0.000334,
		0.125314, -0.935780, -0.329563,
		36.974735, 38.806595, 30.917126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483074, 39.099621, 31.593292>,  <36.887016, 39.461643, 31.147820>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483074, 39.099621, 31.593292> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716873, 38.813885, 31.439369>,  <36.857151, 38.642445, 31.347015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716873, 38.813885, 31.439369>,  <36.483074, 39.099621, 31.593292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716873, 38.813885, 31.439369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009260, -0.468353, 0.883493,
		-0.811343, -0.519963, -0.267136,
		0.584498, -0.714342, -0.384809,
		36.892223, 38.599583, 31.323927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268932, 38.465424, 31.780296>,  <36.483074, 39.099621, 31.593292>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268932, 38.465424, 31.780296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657883, 38.391476, 31.723297>,  <36.891254, 38.347107, 31.689096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657883, 38.391476, 31.723297>,  <36.268932, 38.465424, 31.780296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657883, 38.391476, 31.723297> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062847, -0.380592, 0.922605,
		-0.224794, -0.906076, -0.358460,
		0.972377, -0.184868, -0.142499,
		36.949596, 38.336014, 31.680548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399689, 37.771976, 31.880369>,  <36.268932, 38.465424, 31.780296>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399689, 37.771976, 31.880369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759583, 37.936104, 31.939863>,  <36.975517, 38.034580, 31.975559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759583, 37.936104, 31.939863>,  <36.399689, 37.771976, 31.880369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759583, 37.936104, 31.939863> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059613, -0.453135, 0.889446,
		0.432350, -0.791398, -0.432161,
		0.899733, 0.410314, 0.148735,
		37.029503, 38.059196, 31.984484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825714, 37.230907, 32.089348>,  <36.399689, 37.771976, 31.880369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825714, 37.230907, 32.089348> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025551, 37.556438, 32.208065>,  <37.145454, 37.751759, 32.279297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025551, 37.556438, 32.208065>,  <36.825714, 37.230907, 32.089348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025551, 37.556438, 32.208065> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008480, -0.347194, 0.937755,
		0.866218, -0.465980, -0.180357,
		0.499594, 0.813830, 0.296794,
		37.175430, 37.800587, 32.297104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500851, 36.873539, 31.882568>,  <36.825714, 37.230907, 32.089348>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500851, 36.873539, 31.882568> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661942, 36.528633, 31.759729>,  <37.758598, 36.321690, 31.686026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661942, 36.528633, 31.759729>,  <37.500851, 36.873539, 31.882568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661942, 36.528633, 31.759729> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002195, 0.334600, -0.942358,
		0.915317, 0.380189, 0.132860,
		0.402729, -0.862264, -0.307100,
		37.782761, 36.269955, 31.667599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042183, 36.965702, 31.405245>,  <37.500851, 36.873539, 31.882568>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042183, 36.965702, 31.405245> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997070, 36.579784, 31.310202>,  <37.970001, 36.348236, 31.253176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997070, 36.579784, 31.310202>,  <38.042183, 36.965702, 31.405245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997070, 36.579784, 31.310202> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018552, 0.237050, -0.971320,
		0.993446, -0.113955, -0.008837,
		-0.112782, -0.964791, -0.237610,
		37.963234, 36.290348, 31.238918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470692, 36.837593, 30.787029>,  <38.042183, 36.965702, 31.405245>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470692, 36.837593, 30.787029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215916, 36.529388, 30.777052>,  <38.063049, 36.344467, 30.771067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215916, 36.529388, 30.777052>,  <38.470692, 36.837593, 30.787029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215916, 36.529388, 30.777052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070000, -0.025584, -0.997219,
		0.767731, -0.636912, 0.070231,
		-0.636937, -0.770512, -0.024942,
		38.024834, 36.298233, 30.769569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806950, 36.200119, 30.408339>,  <38.470692, 36.837593, 30.787029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806950, 36.200119, 30.408339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408234, 36.183796, 30.380812>,  <38.169003, 36.174000, 30.364296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408234, 36.183796, 30.380812>,  <38.806950, 36.200119, 30.408339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408234, 36.183796, 30.380812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070500, -0.041313, -0.996656,
		0.037835, -0.998312, 0.044058,
		-0.996794, -0.040815, -0.068818,
		38.109196, 36.171551, 30.360167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645187, 35.834911, 29.859533>,  <38.806950, 36.200119, 30.408339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645187, 35.834911, 29.859533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276661, 35.983273, 29.906193>,  <38.055546, 36.072289, 29.934189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276661, 35.983273, 29.906193>,  <38.645187, 35.834911, 29.859533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276661, 35.983273, 29.906193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028530, 0.234718, -0.971645,
		-0.387763, -0.898521, -0.205668,
		-0.921318, 0.370900, 0.116649,
		38.000267, 36.094543, 29.941187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180771, 35.443802, 29.356546>,  <38.645187, 35.834911, 29.859533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180771, 35.443802, 29.356546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000549, 35.790070, 29.443827>,  <37.892414, 35.997829, 29.496195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000549, 35.790070, 29.443827>,  <38.180771, 35.443802, 29.356546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000549, 35.790070, 29.443827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389531, 0.029296, -0.920547,
		-0.803284, -0.499754, 0.324006,
		-0.450556, 0.865671, 0.218202,
		37.865383, 36.049770, 29.509287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460968, 35.373653, 29.197680>,  <38.180771, 35.443802, 29.356546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460968, 35.373653, 29.197680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525536, 35.768234, 29.185917>,  <37.564274, 36.004982, 29.178860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525536, 35.768234, 29.185917>,  <37.460968, 35.373653, 29.197680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525536, 35.768234, 29.185917> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417330, 0.041226, -0.907819,
		-0.894305, 0.158807, 0.418329,
		0.161414, 0.986448, -0.029407,
		37.573959, 36.064167, 29.177095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776970, 35.713505, 29.007965>,  <37.460968, 35.373653, 29.197680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776970, 35.713505, 29.007965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079220, 35.957661, 28.912928>,  <37.260571, 36.104153, 28.855906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079220, 35.957661, 28.912928>,  <36.776970, 35.713505, 29.007965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079220, 35.957661, 28.912928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446567, 0.214722, -0.868604,
		-0.479171, 0.762442, 0.434830,
		0.755627, 0.610391, -0.237593,
		37.305908, 36.140778, 28.841650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433823, 36.349464, 28.751373>,  <36.776970, 35.713505, 29.007965>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433823, 36.349464, 28.751373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802975, 36.373001, 28.599144>,  <37.024464, 36.387123, 28.507807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802975, 36.373001, 28.599144>,  <36.433823, 36.349464, 28.751373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802975, 36.373001, 28.599144> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384666, 0.187675, -0.903776,
		0.018241, 0.980467, 0.195837,
		0.922876, 0.058846, -0.380575,
		37.079838, 36.390656, 28.484972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416843, 36.985027, 28.342871>,  <36.433823, 36.349464, 28.751373>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416843, 36.985027, 28.342871> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688972, 36.721928, 28.213545>,  <36.852249, 36.564068, 28.135950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688972, 36.721928, 28.213545>,  <36.416843, 36.985027, 28.342871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688972, 36.721928, 28.213545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443584, -0.018360, -0.896044,
		0.583433, 0.753016, -0.304256,
		0.680323, -0.657745, -0.323314,
		36.893070, 36.524605, 28.116550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521645, 37.205208, 27.723408>,  <36.416843, 36.985027, 28.342871>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521645, 37.205208, 27.723408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732952, 36.869537, 27.671707>,  <36.859737, 36.668133, 27.640688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732952, 36.869537, 27.671707>,  <36.521645, 37.205208, 27.723408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732952, 36.869537, 27.671707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437696, -0.138710, -0.888359,
		0.727565, 0.525867, -0.440582,
		0.528272, -0.839180, -0.129249,
		36.891434, 36.617783, 27.632933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883888, 37.260540, 27.087723>,  <36.521645, 37.205208, 27.723408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883888, 37.260540, 27.087723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845940, 36.866280, 27.143572>,  <36.823170, 36.629723, 27.177082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845940, 36.866280, 27.143572>,  <36.883888, 37.260540, 27.087723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845940, 36.866280, 27.143572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356817, -0.097267, -0.929097,
		0.929345, -0.137963, -0.342469,
		-0.094871, -0.985650, 0.139622,
		36.817478, 36.570583, 27.185459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117908, 37.000294, 26.488964>,  <36.883888, 37.260540, 27.087723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117908, 37.000294, 26.488964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914230, 36.700588, 26.658350>,  <36.792023, 36.520763, 26.759981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914230, 36.700588, 26.658350>,  <37.117908, 37.000294, 26.488964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914230, 36.700588, 26.658350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490705, -0.151468, -0.858060,
		0.707053, -0.644719, -0.290540,
		-0.509200, -0.749263, 0.423463,
		36.761471, 36.475811, 26.785389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098259, 36.519936, 25.903423>,  <37.117908, 37.000294, 26.488964>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098259, 36.519936, 25.903423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831921, 36.382664, 26.168413>,  <36.672119, 36.300301, 26.327408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831921, 36.382664, 26.168413>,  <37.098259, 36.519936, 25.903423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831921, 36.382664, 26.168413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616512, -0.246994, -0.747601,
		0.420192, -0.906211, -0.047117,
		-0.665847, -0.343184, 0.662475,
		36.632168, 36.279709, 26.367155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.073784, 38.940163, 30.309942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.371805, 39.122566, 30.115234>,  <30.550619, 39.232010, 29.998409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.371805, 39.122566, 30.115234>,  <30.073784, 38.940163, 30.309942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.371805, 39.122566, 30.115234> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627901, -0.233312, 0.742499,
		0.225020, -0.858847, -0.460161,
		0.745054, 0.456013, -0.486771,
		30.595322, 39.259369, 29.969202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.552717, 38.465729, 30.360216>,  <30.073784, 38.940163, 30.309942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.552717, 38.465729, 30.360216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.770981, 38.788002, 30.268023>,  <30.901939, 38.981365, 30.212708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.770981, 38.788002, 30.268023>,  <30.552717, 38.465729, 30.360216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.770981, 38.788002, 30.268023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752747, -0.350372, 0.557326,
		0.368276, -0.477605, -0.797663,
		0.545660, 0.805688, -0.230482,
		30.934679, 39.029709, 30.198877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187685, 38.222965, 30.307102>,  <30.552717, 38.465729, 30.360216>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187685, 38.222965, 30.307102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.238039, 38.615372, 30.366106>,  <31.268251, 38.850815, 30.401508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.238039, 38.615372, 30.366106>,  <31.187685, 38.222965, 30.307102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238039, 38.615372, 30.366106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833190, -0.185261, 0.521030,
		0.538467, 0.057311, -0.840695,
		0.125887, 0.981017, 0.147508,
		31.275805, 38.909676, 30.410358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902472, 38.337204, 30.220703>,  <31.187685, 38.222965, 30.307102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902472, 38.337204, 30.220703> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.804031, 38.663788, 30.429634>,  <31.744967, 38.859737, 30.554993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.804031, 38.663788, 30.429634>,  <31.902472, 38.337204, 30.220703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804031, 38.663788, 30.429634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875654, -0.043744, 0.480954,
		0.415529, 0.575741, -0.704171,
		-0.246102, 0.816461, 0.522327,
		31.730200, 38.908726, 30.586332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492043, 38.734871, 30.256752>,  <31.902472, 38.337204, 30.220703>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492043, 38.734871, 30.256752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.253757, 38.832508, 30.562838>,  <32.110786, 38.891090, 30.746489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.253757, 38.832508, 30.562838>,  <32.492043, 38.734871, 30.256752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.253757, 38.832508, 30.562838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762364, -0.128080, 0.634347,
		0.252849, 0.961256, -0.109790,
		-0.595708, 0.244094, 0.765212,
		32.075047, 38.905735, 30.792400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922077, 39.079494, 30.724552>,  <32.492043, 38.734871, 30.256752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922077, 39.079494, 30.724552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.596657, 38.975021, 30.932365>,  <32.401405, 38.912338, 31.057055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.596657, 38.975021, 30.932365>,  <32.922077, 39.079494, 30.724552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596657, 38.975021, 30.932365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579013, -0.281458, 0.765196,
		-0.053626, 0.923345, 0.380208,
		-0.813553, -0.261180, 0.519535,
		32.352592, 38.896667, 31.088226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012184, 39.424686, 31.374390>,  <32.922077, 39.079494, 30.724552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012184, 39.424686, 31.374390> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.760654, 39.117374, 31.422283>,  <32.609737, 38.932987, 31.451019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.760654, 39.117374, 31.422283>,  <33.012184, 39.424686, 31.374390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760654, 39.117374, 31.422283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501847, -0.283394, 0.817213,
		-0.593914, 0.573967, 0.563761,
		-0.628820, -0.768277, 0.119732,
		32.572010, 38.886890, 31.458202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028450, 39.360252, 32.176090>,  <33.012184, 39.424686, 31.374390>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028450, 39.360252, 32.176090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.891891, 39.035378, 31.986860>,  <32.809956, 38.840454, 31.873323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.891891, 39.035378, 31.986860>,  <33.028450, 39.360252, 32.176090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.891891, 39.035378, 31.986860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472349, -0.583392, 0.660712,
		-0.812608, 0.002113, 0.582806,
		-0.341400, -0.812188, -0.473071,
		32.789471, 38.791721, 31.844938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628311, 38.941689, 32.739838>,  <33.028450, 39.360252, 32.176090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628311, 38.941689, 32.739838> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.720280, 38.687260, 32.445206>,  <32.775459, 38.534603, 32.268425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.720280, 38.687260, 32.445206>,  <32.628311, 38.941689, 32.739838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720280, 38.687260, 32.445206> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305064, -0.671607, 0.675189,
		-0.924160, -0.379944, 0.039627,
		0.229920, -0.636072, -0.736580,
		32.789257, 38.496437, 32.224232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166920, 38.358036, 32.754749>,  <32.628311, 38.941689, 32.739838>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166920, 38.358036, 32.754749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.528503, 38.290268, 32.597698>,  <32.745453, 38.249607, 32.503468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.528503, 38.290268, 32.597698>,  <32.166920, 38.358036, 32.754749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528503, 38.290268, 32.597698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198704, -0.646608, 0.736488,
		-0.378649, -0.743771, -0.550844,
		0.903959, -0.169416, -0.392628,
		32.799690, 38.239445, 32.479908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250435, 37.684780, 32.936108>,  <32.166920, 38.358036, 32.754749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250435, 37.684780, 32.936108> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.620785, 37.808880, 32.849850>,  <32.842995, 37.883339, 32.798096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.620785, 37.808880, 32.849850>,  <32.250435, 37.684780, 32.936108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620785, 37.808880, 32.849850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346400, -0.469087, 0.812382,
		0.150881, -0.826864, -0.541785,
		0.925874, 0.310247, -0.215649,
		32.898548, 37.901955, 32.785156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572933, 37.213772, 33.215809>,  <32.250435, 37.684780, 32.936108>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572933, 37.213772, 33.215809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.875134, 37.466927, 33.148075>,  <33.056454, 37.618820, 33.107433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.875134, 37.466927, 33.148075>,  <32.572933, 37.213772, 33.215809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875134, 37.466927, 33.148075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446494, -0.308237, 0.840020,
		0.479445, -0.710239, -0.515454,
		0.755497, 0.632890, -0.169335,
		33.101784, 37.656792, 33.097275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061943, 36.908188, 33.467556>,  <32.572933, 37.213772, 33.215809>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061943, 36.908188, 33.467556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.232403, 37.268711, 33.436478>,  <33.334679, 37.485027, 33.417831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.232403, 37.268711, 33.436478>,  <33.061943, 36.908188, 33.467556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232403, 37.268711, 33.436478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505633, -0.166091, 0.846610,
		0.750154, -0.400068, -0.526512,
		0.426150, 0.901310, -0.077694,
		33.360249, 37.539104, 33.413170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.753120, 36.832897, 33.590057>,  <33.061943, 36.908188, 33.467556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.753120, 36.832897, 33.590057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.683643, 37.221054, 33.657192>,  <33.641956, 37.453949, 33.697472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.683643, 37.221054, 33.657192>,  <33.753120, 36.832897, 33.590057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683643, 37.221054, 33.657192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510657, -0.056978, 0.857895,
		0.842058, 0.234713, -0.485641,
		-0.173688, 0.970393, 0.167837,
		33.631538, 37.512173, 33.707542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174561, 36.561424, 33.161411>,  <33.753120, 36.832897, 33.590057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174561, 36.561424, 33.161411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.156368, 36.165695, 33.216793>,  <34.145454, 35.928257, 33.250023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.156368, 36.165695, 33.216793>,  <34.174561, 36.561424, 33.161411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156368, 36.165695, 33.216793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258455, -0.122227, -0.958260,
		0.964952, -0.079368, -0.250136,
		-0.045482, -0.989324, 0.138456,
		34.142723, 35.868896, 33.258331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703495, 36.170609, 32.648125>,  <34.174561, 36.561424, 33.161411>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703495, 36.170609, 32.648125> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.374744, 35.960026, 32.735180>,  <34.177494, 35.833675, 32.787415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.374744, 35.960026, 32.735180>,  <34.703495, 36.170609, 32.648125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374744, 35.960026, 32.735180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272198, 0.027302, -0.961854,
		0.500429, -0.849766, -0.165738,
		-0.821875, -0.526453, 0.217642,
		34.128181, 35.802090, 32.800472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623482, 35.633907, 32.160347>,  <34.703495, 36.170609, 32.648125>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623482, 35.633907, 32.160347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.255157, 35.654552, 32.314976>,  <34.034161, 35.666939, 32.407753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.255157, 35.654552, 32.314976>,  <34.623482, 35.633907, 32.160347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255157, 35.654552, 32.314976> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383939, 0.054141, -0.921770,
		-0.068509, -0.997198, -0.030036,
		-0.920814, 0.051618, 0.386572,
		33.978912, 35.670036, 32.430946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284592, 35.316856, 31.612667>,  <34.623482, 35.633907, 32.160347>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284592, 35.316856, 31.612667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.993904, 35.478348, 31.834972>,  <33.819492, 35.575245, 31.968355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.993904, 35.478348, 31.834972>,  <34.284592, 35.316856, 31.612667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993904, 35.478348, 31.834972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553722, 0.134510, -0.821766,
		-0.406530, -0.904935, 0.125805,
		-0.726722, 0.403733, 0.555765,
		33.775887, 35.599468, 32.001701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595028, 34.953056, 31.425894>,  <34.284592, 35.316856, 31.612667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595028, 34.953056, 31.425894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.522598, 35.310429, 31.590328>,  <33.479141, 35.524853, 31.688990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.522598, 35.310429, 31.590328>,  <33.595028, 34.953056, 31.425894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522598, 35.310429, 31.590328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576509, 0.242220, -0.780363,
		-0.796774, -0.378299, 0.471212,
		-0.181073, 0.893431, 0.411088,
		33.468277, 35.578457, 31.713655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897247, 34.910152, 31.307312>,  <33.595028, 34.953056, 31.425894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897247, 34.910152, 31.307312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.984852, 35.296768, 31.360723>,  <33.037415, 35.528740, 31.392771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.984852, 35.296768, 31.360723>,  <32.897247, 34.910152, 31.307312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984852, 35.296768, 31.360723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706541, 0.251479, -0.661482,
		-0.672930, 0.050529, 0.737978,
		0.219010, 0.966543, 0.133527,
		33.050556, 35.586731, 31.400782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175961, 35.172535, 31.106535>,  <32.897247, 34.910152, 31.307312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175961, 35.172535, 31.106535> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.425655, 35.484646, 31.091057>,  <32.575470, 35.671913, 31.081770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.425655, 35.484646, 31.091057>,  <32.175961, 35.172535, 31.106535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425655, 35.484646, 31.091057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501838, 0.362531, -0.785322,
		-0.598742, 0.509642, 0.617877,
		0.624233, 0.780279, -0.038695,
		32.612926, 35.718731, 31.079449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756334, 35.791931, 31.136126>,  <32.175961, 35.172535, 31.106535>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.756334, 35.791931, 31.136126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.103653, 35.893303, 30.965557>,  <32.312042, 35.954128, 30.863216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.103653, 35.893303, 30.965557>,  <31.756334, 35.791931, 31.136126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103653, 35.893303, 30.965557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493913, 0.362084, -0.790535,
		-0.045948, 0.897032, 0.439570,
		0.868297, 0.253432, -0.426419,
		32.364143, 35.969334, 30.837631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658220, 36.452404, 30.858770>,  <31.756334, 35.791931, 31.136126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658220, 36.452404, 30.858770> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.978689, 36.311661, 30.665144>,  <32.170971, 36.227215, 30.548967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.978689, 36.311661, 30.665144>,  <31.658220, 36.452404, 30.858770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978689, 36.311661, 30.665144> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388828, 0.308817, -0.868012,
		0.454903, 0.883646, 0.110604,
		0.801172, -0.351856, -0.484068,
		32.219040, 36.206104, 30.519924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889585, 36.989262, 30.397923>,  <31.658220, 36.452404, 30.858770>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889585, 36.989262, 30.397923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.049671, 36.661137, 30.234505>,  <32.145721, 36.464260, 30.136454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.049671, 36.661137, 30.234505>,  <31.889585, 36.989262, 30.397923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.049671, 36.661137, 30.234505> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338995, 0.281662, -0.897635,
		0.851416, 0.497743, -0.165357,
		0.400217, -0.820316, -0.408544,
		32.169735, 36.415043, 30.111942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373421, 37.211010, 29.890474>,  <31.889585, 36.989262, 30.397923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373421, 37.211010, 29.890474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.217846, 36.850861, 29.812447>,  <32.124500, 36.634769, 29.765629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.217846, 36.850861, 29.812447>,  <32.373421, 37.211010, 29.890474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217846, 36.850861, 29.812447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249048, 0.306617, -0.918674,
		0.886963, -0.308724, -0.343491,
		-0.388936, -0.900375, -0.195071,
		32.101166, 36.580750, 29.753925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780514, 36.897041, 29.338285>,  <32.373421, 37.211010, 29.890474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780514, 36.897041, 29.338285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.420147, 36.724556, 29.318703>,  <32.203926, 36.621063, 29.306953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.420147, 36.724556, 29.318703>,  <32.780514, 36.897041, 29.338285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420147, 36.724556, 29.318703> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100063, 0.316168, -0.943411,
		0.422295, -0.845038, -0.327991,
		-0.900919, -0.431217, -0.048959,
		32.149872, 36.595192, 29.304016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745922, 36.598740, 28.696835>,  <32.780514, 36.897041, 29.338285>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745922, 36.598740, 28.696835> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.352982, 36.566917, 28.764547>,  <32.117218, 36.547825, 28.805176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.352982, 36.566917, 28.764547>,  <32.745922, 36.598740, 28.696835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.352982, 36.566917, 28.764547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170788, 0.012438, -0.985229,
		0.076275, -0.996753, -0.025806,
		-0.982351, -0.079555, 0.169284,
		32.058277, 36.543049, 28.815332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511463, 36.097729, 28.221710>,  <32.745922, 36.598740, 28.696835>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511463, 36.097729, 28.221710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.187996, 36.316528, 28.308292>,  <31.993917, 36.447807, 28.360243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.187996, 36.316528, 28.308292>,  <32.511463, 36.097729, 28.221710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187996, 36.316528, 28.308292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273751, -0.024222, -0.961496,
		-0.520696, -0.836781, 0.169330,
		-0.808663, 0.547001, 0.216457,
		31.945396, 36.480629, 28.373230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.788376, 35.539272, 27.787792>,  <32.511463, 36.097729, 28.221710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.788376, 35.539272, 27.787792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.931160, 35.244537, 27.558130>,  <33.016830, 35.067696, 27.420334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.931160, 35.244537, 27.558130>,  <32.788376, 35.539272, 27.787792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931160, 35.244537, 27.558130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647765, -0.247597, 0.720483,
		-0.673035, -0.629104, 0.388912,
		0.356965, -0.736834, -0.574153,
		33.038250, 35.023487, 27.385883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590595, 34.882889, 28.071791>,  <32.788376, 35.539272, 27.787792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590595, 34.882889, 28.071791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.927105, 34.840710, 27.859697>,  <33.129009, 34.815403, 27.732441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.927105, 34.840710, 27.859697>,  <32.590595, 34.882889, 28.071791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927105, 34.840710, 27.859697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472133, -0.334480, 0.815607,
		-0.263351, -0.936486, -0.231605,
		0.841271, -0.105443, -0.530231,
		33.179485, 34.809078, 27.700628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782478, 34.222580, 28.167377>,  <32.590595, 34.882889, 28.071791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782478, 34.222580, 28.167377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.105625, 34.405560, 28.018736>,  <33.299515, 34.515347, 27.929550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.105625, 34.405560, 28.018736>,  <32.782478, 34.222580, 28.167377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105625, 34.405560, 28.018736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543024, -0.332680, 0.771005,
		0.229067, -0.824662, -0.517166,
		0.807869, 0.457445, -0.371606,
		33.347984, 34.542793, 27.907253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384357, 33.775433, 28.162096>,  <32.782478, 34.222580, 28.167377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384357, 33.775433, 28.162096> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.542435, 34.142872, 28.161674>,  <33.637283, 34.363335, 28.161421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.542435, 34.142872, 28.161674>,  <33.384357, 33.775433, 28.162096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542435, 34.142872, 28.161674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509978, -0.218445, 0.831988,
		0.764031, -0.329336, -0.554793,
		0.395195, 0.918597, -0.001055,
		33.660992, 34.418449, 28.161358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129581, 33.619999, 28.192020>,  <33.384357, 33.775433, 28.162096>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129581, 33.619999, 28.192020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.095379, 34.013176, 28.257151>,  <34.074856, 34.249081, 28.296228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.095379, 34.013176, 28.257151>,  <34.129581, 33.619999, 28.192020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095379, 34.013176, 28.257151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638992, -0.071282, 0.765903,
		0.764445, 0.169536, -0.621998,
		-0.085511, 0.982943, 0.162824,
		34.069725, 34.308060, 28.305998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762402, 33.930397, 28.165054>,  <34.129581, 33.619999, 28.192020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762402, 33.930397, 28.165054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.543705, 34.186298, 28.381124>,  <34.412487, 34.339840, 28.510767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.543705, 34.186298, 28.381124>,  <34.762402, 33.930397, 28.165054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543705, 34.186298, 28.381124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649429, -0.083196, 0.755857,
		0.528502, 0.764065, -0.369987,
		-0.546743, 0.639752, 0.540175,
		34.379681, 34.378223, 28.543177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256649, 34.366581, 28.555645>,  <34.762402, 33.930397, 28.165054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256649, 34.366581, 28.555645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.905167, 34.426636, 28.736900>,  <34.694279, 34.462669, 28.845654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.905167, 34.426636, 28.736900>,  <35.256649, 34.366581, 28.555645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905167, 34.426636, 28.736900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440977, -0.108201, 0.890972,
		0.182795, 0.982727, 0.028872,
		-0.878707, 0.150133, 0.453138,
		34.641556, 34.471676, 28.872841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297752, 34.971134, 29.027224>,  <35.256649, 34.366581, 28.555645>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297752, 34.971134, 29.027224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.015812, 34.716248, 29.151894>,  <34.846649, 34.563316, 29.226696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.015812, 34.716248, 29.151894>,  <35.297752, 34.971134, 29.027224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015812, 34.716248, 29.151894> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423186, -0.025109, 0.905695,
		-0.569301, 0.770273, 0.287360,
		-0.704848, -0.637220, 0.311674,
		34.804359, 34.525082, 29.245396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450462, 34.958420, 29.757315>,  <35.297752, 34.971134, 29.027224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450462, 34.958420, 29.757315> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.180660, 34.666817, 29.710690>,  <35.018780, 34.491856, 29.682714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.180660, 34.666817, 29.710690>,  <35.450462, 34.958420, 29.757315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180660, 34.666817, 29.710690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182612, -0.317731, 0.930430,
		-0.715325, 0.606298, 0.347438,
		-0.674510, -0.729006, -0.116563,
		34.978306, 34.448116, 29.675720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932777, 34.966026, 30.365976>,  <35.450462, 34.958420, 29.757315>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932777, 34.966026, 30.365976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.926437, 34.595032, 30.216564>,  <34.922634, 34.372437, 30.126917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.926437, 34.595032, 30.216564>,  <34.932777, 34.966026, 30.365976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926437, 34.595032, 30.216564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206235, -0.368576, 0.906432,
		-0.978374, -0.062670, 0.197120,
		-0.015847, -0.927482, -0.373531,
		34.921684, 34.316788, 30.104506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474606, 34.625488, 30.891232>,  <34.932777, 34.966026, 30.365976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474606, 34.625488, 30.891232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.725262, 34.381786, 30.696857>,  <34.875656, 34.235565, 30.580233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.725262, 34.381786, 30.696857>,  <34.474606, 34.625488, 30.891232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725262, 34.381786, 30.696857> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032531, -0.602553, 0.797415,
		-0.778627, -0.515502, -0.357767,
		0.626643, -0.609251, -0.485934,
		34.913254, 34.199013, 30.551077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531700, 34.089687, 31.362045>,  <34.474606, 34.625488, 30.891232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531700, 34.089687, 31.362045> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.763374, 33.885681, 31.107664>,  <34.902378, 33.763279, 30.955036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.763374, 33.885681, 31.107664>,  <34.531700, 34.089687, 31.362045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763374, 33.885681, 31.107664> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459829, -0.439774, 0.771464,
		-0.673132, -0.739247, -0.020191,
		0.579182, -0.510012, -0.635953,
		34.937130, 33.732677, 30.916878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488808, 33.351292, 31.503284>,  <34.531700, 34.089687, 31.362045>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488808, 33.351292, 31.503284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.836720, 33.434021, 31.324087>,  <35.045467, 33.483658, 31.216568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.836720, 33.434021, 31.324087>,  <34.488808, 33.351292, 31.503284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836720, 33.434021, 31.324087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493345, -0.381563, 0.781678,
		-0.009265, -0.900906, -0.433915,
		0.869784, 0.206828, -0.447993,
		35.097656, 33.496071, 31.189690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817150, 32.805737, 31.572485>,  <34.488808, 33.351292, 31.503284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817150, 32.805737, 31.572485> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.090668, 33.090870, 31.510149>,  <35.254780, 33.261951, 31.472748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.090668, 33.090870, 31.510149>,  <34.817150, 32.805737, 31.572485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090668, 33.090870, 31.510149> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533328, -0.342506, 0.773467,
		0.497978, -0.612009, -0.614380,
		0.683798, 0.712835, -0.155841,
		35.295807, 33.304722, 31.463396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.870029, 35.689533, 25.618607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.584251, 35.829681, 25.860865>,  <36.412785, 35.913769, 26.006220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.584251, 35.829681, 25.860865>,  <36.870029, 35.689533, 25.618607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584251, 35.829681, 25.860865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698037, -0.297451, -0.651358,
		-0.048064, -0.888125, 0.457082,
		-0.714447, 0.350367, 0.605648,
		36.369919, 35.934792, 26.042559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339939, 35.198761, 25.548306>,  <36.870029, 35.689533, 25.618607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339939, 35.198761, 25.548306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.149780, 35.519676, 25.692715>,  <36.035686, 35.712223, 25.779360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.149780, 35.519676, 25.692715>,  <36.339939, 35.198761, 25.548306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149780, 35.519676, 25.692715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795057, -0.216081, -0.566739,
		-0.376676, -0.556459, 0.740586,
		-0.475394, 0.802286, 0.361024,
		36.007160, 35.760361, 25.801022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563282, 34.972012, 25.585264>,  <36.339939, 35.198761, 25.548306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563282, 34.972012, 25.585264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.603508, 35.369736, 25.571215>,  <35.627644, 35.608372, 25.562786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.603508, 35.369736, 25.571215>,  <35.563282, 34.972012, 25.585264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603508, 35.369736, 25.571215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863206, 0.069646, -0.500024,
		-0.494733, 0.080604, 0.865299,
		0.100569, 0.994310, -0.035122,
		35.633678, 35.668030, 25.560678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901012, 35.194031, 25.466183>,  <35.563282, 34.972012, 25.585264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901012, 35.194031, 25.466183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.106319, 35.532516, 25.408939>,  <35.229504, 35.735607, 25.374594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.106319, 35.532516, 25.408939>,  <34.901012, 35.194031, 25.466183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106319, 35.532516, 25.408939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796915, 0.408038, -0.445456,
		-0.318557, 0.342684, 0.883793,
		0.513272, 0.846210, -0.143107,
		35.260300, 35.786381, 25.366007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427216, 35.785580, 25.709789>,  <34.901012, 35.194031, 25.466183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427216, 35.785580, 25.709789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.689938, 35.865608, 25.418976>,  <34.847572, 35.913624, 25.244488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.689938, 35.865608, 25.418976>,  <34.427216, 35.785580, 25.709789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689938, 35.865608, 25.418976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753969, 0.159287, -0.637306,
		-0.011699, 0.966747, 0.255468,
		0.656806, 0.200071, -0.727033,
		34.886978, 35.925629, 25.200867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140072, 36.374916, 25.422760>,  <34.427216, 35.785580, 25.709789>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140072, 36.374916, 25.422760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.399227, 36.222191, 25.159107>,  <34.554722, 36.130554, 25.000916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.399227, 36.222191, 25.159107>,  <34.140072, 36.374916, 25.422760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399227, 36.222191, 25.159107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722061, -0.032228, -0.691078,
		0.242621, 0.923677, -0.296573,
		0.647891, -0.381814, -0.659132,
		34.593594, 36.107647, 24.961367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900867, 36.634701, 24.802454>,  <34.140072, 36.374916, 25.422760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900867, 36.634701, 24.802454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.155228, 36.345142, 24.695419>,  <34.307846, 36.171406, 24.631199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.155228, 36.345142, 24.695419>,  <33.900867, 36.634701, 24.802454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155228, 36.345142, 24.695419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522796, -0.148992, -0.839337,
		0.567724, 0.673630, -0.473194,
		0.635904, -0.723895, -0.267585,
		34.346001, 36.127975, 24.615145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077396, 36.748234, 24.119865>,  <33.900867, 36.634701, 24.802454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077396, 36.748234, 24.119865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.153172, 36.360085, 24.179859>,  <34.198635, 36.127197, 24.215857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.153172, 36.360085, 24.179859>,  <34.077396, 36.748234, 24.119865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153172, 36.360085, 24.179859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518299, -0.228560, -0.824091,
		0.833954, 0.078378, -0.546240,
		0.189439, -0.970369, 0.149986,
		34.210003, 36.068974, 24.224855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255909, 36.410530, 23.425819>,  <34.077396, 36.748234, 24.119865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255909, 36.410530, 23.425819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.129208, 36.122723, 23.673033>,  <34.053188, 35.950039, 23.821362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.129208, 36.122723, 23.673033>,  <34.255909, 36.410530, 23.425819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129208, 36.122723, 23.673033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607344, -0.346636, -0.714826,
		0.728562, -0.601779, -0.327198,
		-0.316749, -0.719517, 0.618033,
		34.034184, 35.906868, 23.858442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289177, 35.745701, 23.031618>,  <34.255909, 36.410530, 23.425819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289177, 35.745701, 23.031618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.006470, 35.678467, 23.306492>,  <33.836845, 35.638126, 23.471416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.006470, 35.678467, 23.306492>,  <34.289177, 35.745701, 23.031618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006470, 35.678467, 23.306492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681916, -0.096712, -0.725009,
		0.188321, -0.981017, -0.046266,
		-0.706772, -0.168084, 0.687184,
		33.794437, 35.628040, 23.512648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856068, 35.530937, 22.621527>,  <34.289177, 35.745701, 23.031618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856068, 35.530937, 22.621527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.649475, 35.582001, 22.960220>,  <33.525520, 35.612637, 23.163437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.649475, 35.582001, 22.960220>,  <33.856068, 35.530937, 22.621527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649475, 35.582001, 22.960220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849661, -0.199294, -0.488219,
		0.106425, -0.971589, 0.211395,
		-0.516478, 0.127655, 0.846732,
		33.494534, 35.620296, 23.214239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400299, 34.846909, 22.747864>,  <33.856068, 35.530937, 22.621527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400299, 34.846909, 22.747864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.243908, 35.171680, 22.921261>,  <33.150074, 35.366543, 23.025299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.243908, 35.171680, 22.921261>,  <33.400299, 34.846909, 22.747864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243908, 35.171680, 22.921261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841154, -0.124008, -0.526386,
		-0.373630, -0.570438, 0.731438,
		-0.390975, 0.811925, 0.433492,
		33.126614, 35.415257, 23.051310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622791, 34.836086, 22.728378>,  <33.400299, 34.846909, 22.747864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622791, 34.836086, 22.728378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.703907, 35.225002, 22.774908>,  <32.752579, 35.458351, 22.802826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.703907, 35.225002, 22.774908>,  <32.622791, 34.836086, 22.728378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703907, 35.225002, 22.774908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702471, 0.227208, -0.674470,
		-0.682209, 0.055064, 0.729081,
		0.202792, 0.972288, 0.116322,
		32.764744, 35.516689, 22.809805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938444, 35.333500, 22.822144>,  <32.622791, 34.836086, 22.728378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938444, 35.333500, 22.822144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.256039, 35.507351, 22.652115>,  <32.446594, 35.611660, 22.550098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.256039, 35.507351, 22.652115>,  <31.938444, 35.333500, 22.822144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256039, 35.507351, 22.652115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576863, 0.317950, -0.752420,
		-0.191870, 0.842619, 0.503169,
		0.793986, 0.434627, -0.425071,
		32.494236, 35.637737, 22.524593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326876, 35.464493, 22.377090>,  <31.938444, 35.333500, 22.822144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326876, 35.464493, 22.377090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.941406, 35.496628, 22.478975>,  <30.710125, 35.515911, 22.540106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.941406, 35.496628, 22.478975>,  <31.326876, 35.464493, 22.377090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.941406, 35.496628, 22.478975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258142, 0.035521, 0.965454,
		0.068516, 0.996135, -0.054970,
		-0.963674, 0.080339, 0.254710,
		30.652304, 35.520729, 22.555387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061575, 36.154373, 22.762119>,  <31.326876, 35.464493, 22.377090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061575, 36.154373, 22.762119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.828642, 35.843163, 22.856407>,  <30.688883, 35.656437, 22.912979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.828642, 35.843163, 22.856407>,  <31.061575, 36.154373, 22.762119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.828642, 35.843163, 22.856407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254514, 0.100896, 0.961791,
		-0.772082, 0.620077, 0.139264,
		-0.582333, -0.778026, 0.235718,
		30.653942, 35.609756, 22.927122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.733042, 36.468716, 23.309317>,  <31.061575, 36.154373, 22.762119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.733042, 36.468716, 23.309317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.672930, 36.073666, 23.327263>,  <30.636862, 35.836636, 23.338030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.672930, 36.073666, 23.327263>,  <30.733042, 36.468716, 23.309317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.672930, 36.073666, 23.327263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152502, 0.021679, 0.988066,
		-0.976811, 0.155329, 0.147357,
		-0.150281, -0.987625, 0.044864,
		30.627846, 35.777378, 23.340723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.372427, 36.354927, 23.887037>,  <30.733042, 36.468716, 23.309317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.372427, 36.354927, 23.887037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.543417, 36.003632, 23.801281>,  <30.646011, 35.792854, 23.749826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.543417, 36.003632, 23.801281>,  <30.372427, 36.354927, 23.887037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.543417, 36.003632, 23.801281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330327, -0.069012, 0.941340,
		-0.841516, -0.473218, 0.260605,
		0.427475, -0.878238, -0.214392,
		30.671659, 35.740162, 23.736963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.335138, 36.042057, 24.530716>,  <30.372427, 36.354927, 23.887037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.335138, 36.042057, 24.530716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.595188, 35.825134, 24.317833>,  <30.751217, 35.694981, 24.190104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.595188, 35.825134, 24.317833>,  <30.335138, 36.042057, 24.530716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.595188, 35.825134, 24.317833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451802, -0.287250, 0.844607,
		-0.610914, -0.789550, 0.058268,
		0.650123, -0.542308, -0.532206,
		30.790224, 35.662441, 24.158171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.335060, 35.312168, 24.918926>,  <30.335138, 36.042057, 24.530716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.335060, 35.312168, 24.918926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.651402, 35.421764, 24.700027>,  <30.841208, 35.487522, 24.568687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.651402, 35.421764, 24.700027>,  <30.335060, 35.312168, 24.918926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.651402, 35.421764, 24.700027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610995, -0.302155, 0.731702,
		0.035126, -0.913034, -0.406367,
		0.790855, 0.273990, -0.547246,
		30.888659, 35.503960, 24.535854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.720171, 34.693558, 25.116043>,  <30.335060, 35.312168, 24.918926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.720171, 34.693558, 25.116043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.968405, 34.959740, 24.950129>,  <31.117344, 35.119450, 24.850580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.968405, 34.959740, 24.950129>,  <30.720171, 34.693558, 25.116043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968405, 34.959740, 24.950129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730252, -0.297752, 0.614878,
		0.285671, -0.684481, -0.670730,
		0.620583, 0.665455, -0.414784,
		31.154579, 35.159374, 24.825693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270277, 34.291904, 24.776337>,  <30.720171, 34.693558, 25.116043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270277, 34.291904, 24.776337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.398651, 34.655457, 24.882870>,  <31.475676, 34.873589, 24.946791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.398651, 34.655457, 24.882870>,  <31.270277, 34.291904, 24.776337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.398651, 34.655457, 24.882870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805973, -0.409780, 0.427187,
		0.497400, 0.077558, -0.864047,
		0.320937, 0.908881, 0.266334,
		31.494932, 34.928120, 24.962770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833563, 34.074829, 25.130074>,  <31.270277, 34.291904, 24.776337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833563, 34.074829, 25.130074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.823542, 34.470852, 25.185432>,  <31.817530, 34.708466, 25.218649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.823542, 34.470852, 25.185432>,  <31.833563, 34.074829, 25.130074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.823542, 34.470852, 25.185432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779521, -0.067328, 0.622746,
		0.625874, 0.123486, -0.770086,
		-0.025052, 0.990060, 0.138399,
		31.816027, 34.767868, 25.226952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494152, 34.316414, 25.103765>,  <31.833563, 34.074829, 25.130074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494152, 34.316414, 25.103765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.277081, 34.557606, 25.337660>,  <32.146839, 34.702320, 25.477997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.277081, 34.557606, 25.337660>,  <32.494152, 34.316414, 25.103765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277081, 34.557606, 25.337660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734906, 0.003771, 0.678159,
		0.406709, 0.797749, -0.445178,
		-0.542679, 0.602978, 0.584737,
		32.114277, 34.738499, 25.513081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.962540, 34.848331, 25.390333>,  <32.494152, 34.316414, 25.103765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.962540, 34.848331, 25.390333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.651737, 34.865868, 25.641518>,  <32.465256, 34.876389, 25.792229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.651737, 34.865868, 25.641518>,  <32.962540, 34.848331, 25.390333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651737, 34.865868, 25.641518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629422, 0.039608, 0.776053,
		0.009153, 0.998253, -0.058373,
		-0.777010, 0.043845, 0.627960,
		32.418633, 34.879021, 25.829906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053837, 35.404102, 25.894049>,  <32.962540, 34.848331, 25.390333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053837, 35.404102, 25.894049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.784676, 35.159740, 26.060900>,  <32.623177, 35.013123, 26.161011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.784676, 35.159740, 26.060900>,  <33.053837, 35.404102, 25.894049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784676, 35.159740, 26.060900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522050, 0.007321, 0.852883,
		-0.524083, 0.791671, 0.313996,
		-0.672905, -0.610903, 0.417129,
		32.582806, 34.976471, 26.186039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985569, 35.771801, 26.454874>,  <33.053837, 35.404102, 25.894049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985569, 35.771801, 26.454874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.832092, 35.411140, 26.534683>,  <32.740005, 35.194744, 26.582569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.832092, 35.411140, 26.534683>,  <32.985569, 35.771801, 26.454874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832092, 35.411140, 26.534683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419594, 0.022249, 0.907439,
		-0.822630, 0.431897, 0.369790,
		-0.383693, -0.901648, 0.199525,
		32.716984, 35.140644, 26.594540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586037, 35.790642, 27.138145>,  <32.985569, 35.771801, 26.454874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586037, 35.790642, 27.138145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.694946, 35.411854, 27.069899>,  <32.760292, 35.184582, 27.028950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.694946, 35.411854, 27.069899>,  <32.586037, 35.790642, 27.138145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694946, 35.411854, 27.069899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556812, 0.010447, 0.830573,
		-0.784747, -0.321145, 0.530130,
		0.272272, -0.946972, -0.170619,
		32.776627, 35.127762, 27.018713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077145, 36.002781, 27.663897>,  <32.586037, 35.790642, 27.138145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077145, 36.002781, 27.663897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.913149, 36.326881, 27.831417>,  <31.814751, 36.521343, 27.931929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.913149, 36.326881, 27.831417>,  <32.077145, 36.002781, 27.663897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913149, 36.326881, 27.831417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482763, 0.196796, -0.853353,
		-0.773851, -0.552051, 0.310475,
		-0.409994, 0.810254, 0.418801,
		31.790152, 36.569958, 27.957058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255638, 35.946213, 27.440006>,  <32.077145, 36.002781, 27.663897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255638, 35.946213, 27.440006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.381866, 36.313480, 27.535828>,  <31.457603, 36.533840, 27.593321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.381866, 36.313480, 27.535828>,  <31.255638, 35.946213, 27.440006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381866, 36.313480, 27.535828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713400, 0.396028, -0.578120,
		-0.625680, 0.011539, 0.779994,
		0.315571, 0.918166, 0.239555,
		31.476538, 36.588928, 27.607695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593777, 36.385983, 27.628345>,  <31.255638, 35.946213, 27.440006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.593777, 36.385983, 27.628345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.875046, 36.660332, 27.553379>,  <31.043808, 36.824940, 27.508400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.875046, 36.660332, 27.553379>,  <30.593777, 36.385983, 27.628345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.875046, 36.660332, 27.553379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660885, 0.533255, -0.528081,
		-0.262257, 0.495193, 0.828254,
		0.703173, 0.685874, -0.187416,
		31.085999, 36.866093, 27.497154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.298935, 36.939568, 27.872965>,  <30.593777, 36.385983, 27.628345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.298935, 36.939568, 27.872965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.570143, 37.038158, 27.595970>,  <30.732868, 37.097313, 27.429773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.570143, 37.038158, 27.595970>,  <30.298935, 36.939568, 27.872965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.570143, 37.038158, 27.595970> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686446, 0.549191, -0.476635,
		0.262829, 0.798524, 0.541553,
		0.678021, 0.246474, -0.692487,
		30.773548, 37.112103, 27.388224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.165005, 37.660763, 27.745272>,  <30.298935, 36.939568, 27.872965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.165005, 37.660763, 27.745272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.366377, 37.530521, 27.425137>,  <30.487202, 37.452377, 27.233055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.366377, 37.530521, 27.425137>,  <30.165005, 37.660763, 27.745272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.366377, 37.530521, 27.425137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555268, 0.587762, -0.588399,
		0.661992, 0.740621, 0.115102,
		0.503433, -0.325603, -0.800336,
		30.517406, 37.432842, 27.185036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.329454, 38.269539, 27.334021>,  <30.165005, 37.660763, 27.745272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.329454, 38.269539, 27.334021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.381601, 37.966656, 27.078009>,  <30.412889, 37.784927, 26.924400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.381601, 37.966656, 27.078009>,  <30.329454, 38.269539, 27.334021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.381601, 37.966656, 27.078009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565473, 0.473467, -0.675329,
		0.814398, 0.449961, -0.366457,
		0.130367, -0.757208, -0.640031,
		30.420712, 37.739494, 26.886000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.381901, 38.547672, 26.694176>,  <30.329454, 38.269539, 27.334021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.381901, 38.547672, 26.694176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.308819, 38.168987, 26.588079>,  <30.264971, 37.941776, 26.524422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.308819, 38.168987, 26.588079>,  <30.381901, 38.547672, 26.694176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.308819, 38.168987, 26.588079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497583, 0.321718, -0.805548,
		0.847957, -0.015196, -0.529848,
		-0.182703, -0.946713, -0.265241,
		30.254007, 37.884972, 26.508507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.795347, 39.174896, 26.631548>,  <30.381901, 38.547672, 26.694176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.795347, 39.174896, 26.631548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.595222, 39.507080, 26.729551>,  <30.475147, 39.706390, 26.788353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.595222, 39.507080, 26.729551>,  <30.795347, 39.174896, 26.631548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.595222, 39.507080, 26.729551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163803, -0.187078, 0.968592,
		0.850210, 0.524730, -0.042434,
		-0.500311, 0.830458, 0.245008,
		30.445129, 39.756218, 26.803053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.211264, 39.461971, 27.146231>,  <30.795347, 39.174896, 26.631548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.211264, 39.461971, 27.146231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.883739, 39.687019, 27.191858>,  <30.687225, 39.822048, 27.219234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.883739, 39.687019, 27.191858>,  <31.211264, 39.461971, 27.146231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.883739, 39.687019, 27.191858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037648, -0.145651, 0.988619,
		0.572828, 0.813787, 0.098079,
		-0.818811, 0.562616, 0.114070,
		30.638096, 39.855804, 27.226080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366173, 39.995140, 27.672993>,  <31.211264, 39.461971, 27.146231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366173, 39.995140, 27.672993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.969019, 40.028736, 27.706762>,  <30.730726, 40.048893, 27.727024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.969019, 40.028736, 27.706762>,  <31.366173, 39.995140, 27.672993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.969019, 40.028736, 27.706762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083265, -0.017218, 0.996379,
		0.085138, 0.996318, 0.010102,
		-0.992884, 0.083988, 0.084424,
		30.671154, 40.053932, 27.732090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.141390, 40.589996, 28.179937>,  <31.366173, 39.995140, 27.672993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.141390, 40.589996, 28.179937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.867764, 40.299206, 28.156065>,  <30.703588, 40.124733, 28.141743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.867764, 40.299206, 28.156065>,  <31.141390, 40.589996, 28.179937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.867764, 40.299206, 28.156065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030317, -0.110084, 0.993460,
		-0.728792, 0.677781, 0.097344,
		-0.684064, -0.726976, -0.059680,
		30.662544, 40.081112, 28.138161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.832769, 40.783997, 28.729197>,  <31.141390, 40.589996, 28.179937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.832769, 40.783997, 28.729197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.638432, 40.439579, 28.669125>,  <30.521830, 40.232929, 28.633081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.638432, 40.439579, 28.669125>,  <30.832769, 40.783997, 28.729197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.638432, 40.439579, 28.669125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012039, -0.165214, 0.986184,
		-0.873963, 0.480939, 0.069902,
		-0.485843, -0.861047, -0.150181,
		30.492678, 40.181267, 28.624071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.231997, 40.773869, 29.087652>,  <30.832769, 40.783997, 28.729197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.231997, 40.773869, 29.087652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.322138, 40.388256, 29.031290>,  <30.376223, 40.156887, 28.997473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.322138, 40.388256, 29.031290>,  <30.231997, 40.773869, 29.087652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.322138, 40.388256, 29.031290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010303, -0.146974, 0.989086,
		-0.974223, -0.221441, -0.043054,
		0.225352, -0.964034, -0.140904,
		30.389744, 40.099045, 28.989019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.889759, 40.364212, 29.701912>,  <30.231997, 40.773869, 29.087652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.889759, 40.364212, 29.701912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.206570, 40.176495, 29.545729>,  <30.396656, 40.063862, 29.452019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.206570, 40.176495, 29.545729>,  <29.889759, 40.364212, 29.701912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.206570, 40.176495, 29.545729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121458, -0.505664, 0.854138,
		-0.598287, -0.723922, -0.343498,
		0.792023, -0.469299, -0.390458,
		30.444178, 40.035706, 29.428591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<32.594059, 38.920307, 24.241516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.621548, 38.521374, 24.251387>,  <32.638039, 38.282013, 24.257309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.621548, 38.521374, 24.251387>,  <32.594059, 38.920307, 24.241516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621548, 38.521374, 24.251387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825740, 0.070740, 0.559598,
		-0.559850, -0.018079, 0.828397,
		0.068718, -0.997331, 0.024676,
		32.642162, 38.222176, 24.258789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621708, 38.751072, 24.864943>,  <32.594059, 38.920307, 24.241516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621708, 38.751072, 24.864943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.802910, 38.434227, 24.701315>,  <32.911633, 38.244118, 24.603138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.802910, 38.434227, 24.701315>,  <32.621708, 38.751072, 24.864943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802910, 38.434227, 24.701315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682898, 0.013352, 0.730392,
		-0.573092, -0.610226, 0.546981,
		0.453008, -0.792114, -0.409071,
		32.938812, 38.196594, 24.578594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773018, 38.301537, 25.410412>,  <32.621708, 38.751072, 24.864943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773018, 38.301537, 25.410412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.021881, 38.179798, 25.121887>,  <33.171200, 38.106754, 24.948772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.021881, 38.179798, 25.121887>,  <32.773018, 38.301537, 25.410412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021881, 38.179798, 25.121887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771326, 0.080530, 0.631325,
		-0.134054, -0.949152, 0.284852,
		0.622162, -0.304345, -0.721310,
		33.208530, 38.088493, 24.905495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156918, 37.752407, 25.778074>,  <32.773018, 38.301537, 25.410412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156918, 37.752407, 25.778074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.357262, 37.850185, 25.445957>,  <33.477467, 37.908852, 25.246687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.357262, 37.850185, 25.445957>,  <33.156918, 37.752407, 25.778074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357262, 37.850185, 25.445957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862080, -0.055324, 0.503743,
		0.077204, -0.968083, -0.238443,
		0.500857, 0.244448, -0.830293,
		33.507519, 37.923519, 25.196869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636925, 37.270744, 25.727896>,  <33.156918, 37.752407, 25.778074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636925, 37.270744, 25.727896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.810040, 37.551064, 25.501066>,  <33.913910, 37.719254, 25.364967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.810040, 37.551064, 25.501066>,  <33.636925, 37.270744, 25.727896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810040, 37.551064, 25.501066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811618, -0.029099, 0.583463,
		0.392388, -0.712767, -0.581374,
		0.432791, 0.700798, -0.567076,
		33.939877, 37.761303, 25.330944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296516, 37.113934, 25.667746>,  <33.636925, 37.270744, 25.727896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296516, 37.113934, 25.667746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.307285, 37.500088, 25.563978>,  <34.313747, 37.731781, 25.501717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.307285, 37.500088, 25.563978>,  <34.296516, 37.113934, 25.667746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307285, 37.500088, 25.563978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852637, 0.113292, 0.510074,
		0.521811, -0.234923, -0.820076,
		0.026920, 0.965389, -0.259421,
		34.315361, 37.789703, 25.486153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963402, 37.287064, 25.468670>,  <34.296516, 37.113934, 25.667746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963402, 37.287064, 25.468670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.788013, 37.627529, 25.584089>,  <34.682781, 37.831810, 25.653341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.788013, 37.627529, 25.584089>,  <34.963402, 37.287064, 25.468670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788013, 37.627529, 25.584089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810031, 0.235180, 0.537160,
		0.389351, 0.469262, -0.792590,
		-0.438470, 0.851166, 0.288550,
		34.656471, 37.882877, 25.670654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548794, 37.736553, 25.716793>,  <34.963402, 37.287064, 25.468670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548794, 37.736553, 25.716793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.220848, 37.919189, 25.854982>,  <35.024082, 38.028770, 25.937897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.220848, 37.919189, 25.854982>,  <35.548794, 37.736553, 25.716793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220848, 37.919189, 25.854982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491386, 0.251402, 0.833869,
		0.293884, 0.853418, -0.430477,
		-0.819861, 0.456591, 0.345475,
		34.974892, 38.056168, 25.958624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769543, 38.418591, 25.752840>,  <35.548794, 37.736553, 25.716793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769543, 38.418591, 25.752840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.457226, 38.358223, 25.995354>,  <35.269836, 38.322002, 26.140862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.457226, 38.358223, 25.995354>,  <35.769543, 38.418591, 25.752840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457226, 38.358223, 25.995354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534587, 0.340875, 0.773318,
		-0.323377, 0.927915, -0.185473,
		-0.780797, -0.150922, 0.606283,
		35.222988, 38.312946, 26.177238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809727, 38.962231, 26.042633>,  <35.769543, 38.418591, 25.752840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809727, 38.962231, 26.042633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.592262, 38.729683, 26.284769>,  <35.461784, 38.590153, 26.430052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.592262, 38.729683, 26.284769>,  <35.809727, 38.962231, 26.042633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592262, 38.729683, 26.284769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468213, 0.388504, 0.793626,
		-0.696571, 0.714891, 0.060993,
		-0.543660, -0.581374, 0.605342,
		35.429165, 38.555271, 26.466372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587349, 39.408249, 26.510525>,  <35.809727, 38.962231, 26.042633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587349, 39.408249, 26.510525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.536018, 39.045441, 26.670952>,  <35.505222, 38.827755, 26.767208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.536018, 39.045441, 26.670952>,  <35.587349, 39.408249, 26.510525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536018, 39.045441, 26.670952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196941, 0.373049, 0.906669,
		-0.971981, 0.195334, 0.130757,
		-0.128324, -0.907016, 0.401066,
		35.497520, 38.773335, 26.791271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278004, 39.607544, 27.164509>,  <35.587349, 39.408249, 26.510525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278004, 39.607544, 27.164509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.425659, 39.236351, 27.184820>,  <35.514252, 39.013634, 27.197008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.425659, 39.236351, 27.184820>,  <35.278004, 39.607544, 27.164509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425659, 39.236351, 27.184820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358122, 0.192450, 0.913626,
		-0.857604, -0.319070, 0.403373,
		0.369139, -0.927986, 0.050780,
		35.536400, 38.957954, 27.200054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605556, 39.641010, 27.143337>,  <35.278004, 39.607544, 27.164509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605556, 39.641010, 27.143337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.467567, 40.002857, 27.243460>,  <34.384773, 40.219967, 27.303534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.467567, 40.002857, 27.243460>,  <34.605556, 39.641010, 27.143337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467567, 40.002857, 27.243460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299825, 0.146500, -0.942678,
		-0.889436, -0.400250, 0.220689,
		-0.344976, 0.904620, 0.250308,
		34.364075, 40.274242, 27.318552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001068, 39.691399, 26.700712>,  <34.605556, 39.641010, 27.143337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001068, 39.691399, 26.700712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.075214, 40.069069, 26.809649>,  <34.119701, 40.295670, 26.875011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.075214, 40.069069, 26.809649>,  <34.001068, 39.691399, 26.700712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075214, 40.069069, 26.809649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488098, 0.329006, -0.808403,
		-0.852877, 0.016919, 0.521837,
		0.185365, 0.944177, 0.272343,
		34.130825, 40.352322, 26.891352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388088, 40.053257, 26.800838>,  <34.001068, 39.691399, 26.700712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388088, 40.053257, 26.800838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.654785, 40.341381, 26.724312>,  <33.814804, 40.514256, 26.678396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.654785, 40.341381, 26.724312>,  <33.388088, 40.053257, 26.800838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654785, 40.341381, 26.724312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577329, 0.336838, -0.743795,
		-0.471322, 0.606374, 0.640442,
		0.666743, 0.720313, -0.191318,
		33.854809, 40.557476, 26.666916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963406, 40.683426, 26.575703>,  <33.388088, 40.053257, 26.800838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963406, 40.683426, 26.575703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.330795, 40.752029, 26.433161>,  <33.551231, 40.793190, 26.347635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.330795, 40.752029, 26.433161>,  <32.963406, 40.683426, 26.575703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330795, 40.752029, 26.433161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395462, 0.390679, -0.831252,
		-0.003344, 0.904409, 0.426653,
		0.918476, 0.171505, -0.356353,
		33.606339, 40.803482, 26.326256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974571, 41.350391, 26.429707>,  <32.963406, 40.683426, 26.575703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974571, 41.350391, 26.429707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.279404, 41.188034, 26.227922>,  <33.462303, 41.090622, 26.106852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.279404, 41.188034, 26.227922>,  <32.974571, 41.350391, 26.429707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279404, 41.188034, 26.227922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321241, 0.439434, -0.838869,
		0.562165, 0.801343, 0.204497,
		0.762085, -0.405890, -0.504459,
		33.508030, 41.066265, 26.076584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166191, 41.888714, 26.130398>,  <32.974571, 41.350391, 26.429707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166191, 41.888714, 26.130398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.278847, 41.552547, 25.945194>,  <33.346439, 41.350845, 25.834072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.278847, 41.552547, 25.945194>,  <33.166191, 41.888714, 26.130398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278847, 41.552547, 25.945194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282075, 0.388701, -0.877123,
		0.917123, 0.377632, -0.127590,
		0.281635, -0.840420, -0.463007,
		33.363338, 41.300423, 25.806292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297791, 42.132305, 25.556627>,  <33.166191, 41.888714, 26.130398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297791, 42.132305, 25.556627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.311119, 41.739220, 25.483793>,  <33.319115, 41.503368, 25.440092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.311119, 41.739220, 25.483793>,  <33.297791, 42.132305, 25.556627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311119, 41.739220, 25.483793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387887, 0.155192, -0.908548,
		0.921105, 0.100903, -0.376012,
		0.033321, -0.982718, -0.182087,
		33.321114, 41.444405, 25.429167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708393, 41.989574, 24.977068>,  <33.297791, 42.132305, 25.556627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708393, 41.989574, 24.977068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.455498, 41.679920, 24.989601>,  <33.303761, 41.494125, 24.997122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.455498, 41.679920, 24.989601>,  <33.708393, 41.989574, 24.977068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455498, 41.679920, 24.989601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403185, 0.294209, -0.866535,
		0.661599, -0.560493, -0.498132,
		-0.632241, -0.774138, 0.031334,
		33.265827, 41.447678, 24.999001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745293, 41.904514, 24.321863>,  <33.708393, 41.989574, 24.977068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745293, 41.904514, 24.321863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.411713, 41.723022, 24.447502>,  <33.211567, 41.614128, 24.522886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.411713, 41.723022, 24.447502>,  <33.745293, 41.904514, 24.321863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411713, 41.723022, 24.447502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438303, 0.198777, -0.876572,
		0.335294, -0.868685, -0.364642,
		-0.833947, -0.453733, 0.314099,
		33.161530, 41.586903, 24.541733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552681, 41.467319, 23.791645>,  <33.745293, 41.904514, 24.321863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552681, 41.467319, 23.791645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.215229, 41.506321, 24.002846>,  <33.012756, 41.529720, 24.129566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.215229, 41.506321, 24.002846>,  <33.552681, 41.467319, 23.791645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215229, 41.506321, 24.002846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523892, 0.065896, -0.849232,
		-0.117596, -0.993051, -0.004510,
		-0.843628, 0.097504, 0.528000,
		32.962139, 41.535572, 24.161245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077354, 40.966030, 23.536320>,  <33.552681, 41.467319, 23.791645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077354, 40.966030, 23.536320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.884636, 41.283363, 23.685181>,  <32.769005, 41.473763, 23.774496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.884636, 41.283363, 23.685181>,  <33.077354, 40.966030, 23.536320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884636, 41.283363, 23.685181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493468, 0.105315, -0.863365,
		-0.724127, -0.599613, 0.340742,
		-0.481799, 0.793331, 0.372151,
		32.740097, 41.521362, 23.796825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468201, 40.938339, 23.112148>,  <33.077354, 40.966030, 23.536320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468201, 40.938339, 23.112148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.445816, 41.288307, 23.304558>,  <32.432384, 41.498287, 23.420004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.445816, 41.288307, 23.304558>,  <32.468201, 40.938339, 23.112148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445816, 41.288307, 23.304558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480019, 0.398870, -0.781335,
		-0.875471, -0.274624, 0.397657,
		-0.055960, 0.874920, 0.481024,
		32.429028, 41.550781, 23.448866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826841, 41.230919, 23.139036>,  <32.468201, 40.938339, 23.112148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826841, 41.230919, 23.139036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.063015, 41.551319, 23.178612>,  <32.204720, 41.743557, 23.202356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.063015, 41.551319, 23.178612>,  <31.826841, 41.230919, 23.139036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.063015, 41.551319, 23.178612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388341, 0.389417, -0.835192,
		-0.707515, 0.454706, 0.540985,
		0.590436, 0.800997, 0.098937,
		32.240147, 41.791618, 23.208292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.704134, 40.772476, 23.723745>,  <31.826841, 41.230919, 23.139036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.704134, 40.772476, 23.723745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.310890, 40.706207, 23.692636>,  <31.074944, 40.666447, 23.673971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.310890, 40.706207, 23.692636>,  <31.704134, 40.772476, 23.723745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.310890, 40.706207, 23.692636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049598, -0.167869, 0.984561,
		-0.176166, 0.971789, 0.156817,
		-0.983110, -0.165668, -0.077771,
		31.015957, 40.656506, 23.669306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402235, 41.129978, 24.439112>,  <31.704134, 40.772476, 23.723745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.402235, 41.129978, 24.439112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.107250, 40.909416, 24.283112>,  <30.930260, 40.777077, 24.189512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.107250, 40.909416, 24.283112>,  <31.402235, 41.129978, 24.439112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.107250, 40.909416, 24.283112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331629, -0.207404, 0.920329,
		-0.588365, 0.808042, -0.029910,
		-0.737461, -0.551409, -0.390000,
		30.886011, 40.743992, 24.166111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.851749, 41.365944, 24.756468>,  <31.402235, 41.129978, 24.439112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.851749, 41.365944, 24.756468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.730522, 41.005859, 24.631395>,  <30.657785, 40.789810, 24.556353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.730522, 41.005859, 24.631395>,  <30.851749, 41.365944, 24.756468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.730522, 41.005859, 24.631395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473230, -0.142630, 0.869316,
		-0.827166, 0.411429, -0.382781,
		-0.303066, -0.900213, -0.312679,
		30.639603, 40.735794, 24.537592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.158726, 41.288307, 25.020681>,  <30.851749, 41.365944, 24.756468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.158726, 41.288307, 25.020681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.305538, 40.924030, 24.944868>,  <30.393625, 40.705463, 24.899380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.305538, 40.924030, 24.944868>,  <30.158726, 41.288307, 25.020681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.305538, 40.924030, 24.944868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349384, -0.323799, 0.879253,
		-0.862102, -0.256492, -0.437026,
		0.367030, -0.910696, -0.189534,
		30.415648, 40.650822, 24.888008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.557962, 40.830334, 25.110470>,  <30.158726, 41.288307, 25.020681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.557962, 40.830334, 25.110470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.893417, 40.616180, 25.150576>,  <30.094690, 40.487690, 25.174639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.893417, 40.616180, 25.150576>,  <29.557962, 40.830334, 25.110470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.893417, 40.616180, 25.150576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360779, -0.408077, 0.838637,
		-0.408077, -0.739485, -0.535383,
		-0.838637, 0.535383, -0.100264,
		30.145008, 40.455566, 25.180655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.437368, 40.050549, 25.300247>,  <29.557962, 40.830334, 25.110470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.437368, 40.050549, 25.300247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.806400, 40.121155, 25.437471>,  <30.027819, 40.163517, 25.519806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.806400, 40.121155, 25.437471>,  <29.437368, 40.050549, 25.300247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.806400, 40.121155, 25.437471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204642, -0.529914, 0.822990,
		0.327065, -0.829478, -0.452764,
		0.922578, 0.176516, 0.343062,
		30.083174, 40.174110, 25.540390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.506458, 39.509380, 25.826431>,  <29.437368, 40.050549, 25.300247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.506458, 39.509380, 25.826431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.822002, 39.743362, 25.901831>,  <30.011330, 39.883751, 25.947069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.822002, 39.743362, 25.901831>,  <29.506458, 39.509380, 25.826431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.822002, 39.743362, 25.901831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088036, -0.411105, 0.907327,
		0.608235, -0.699160, -0.375801,
		0.788860, 0.584952, 0.188497,
		30.058661, 39.918850, 25.958380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.986622, 39.116566, 26.271034>,  <29.506458, 39.509380, 25.826431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.986622, 39.116566, 26.271034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.070127, 39.504597, 26.320610>,  <30.120232, 39.737415, 26.350355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.070127, 39.504597, 26.320610>,  <29.986622, 39.116566, 26.271034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.070127, 39.504597, 26.320610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217612, -0.169632, 0.961182,
		0.953448, -0.173691, -0.246514,
		0.208765, 0.970081, 0.123938,
		30.132757, 39.795620, 26.357792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.508913, 38.519760, 25.939526>,  <29.986622, 39.116566, 26.271034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.508913, 38.519760, 25.939526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.271551, 38.209106, 26.024109>,  <30.129135, 38.022713, 26.074858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.271551, 38.209106, 26.024109>,  <30.508913, 38.519760, 25.939526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.271551, 38.209106, 26.024109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226380, -0.091072, -0.969772,
		0.772415, -0.623335, -0.121772,
		-0.593403, -0.776633, 0.211456,
		30.093531, 37.976116, 26.087545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.591764, 38.032330, 25.412800>,  <30.508913, 38.519760, 25.939526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.591764, 38.032330, 25.412800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.229332, 37.948837, 25.560011>,  <30.011873, 37.898743, 25.648338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.229332, 37.948837, 25.560011>,  <30.591764, 38.032330, 25.412800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.229332, 37.948837, 25.560011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293065, -0.317761, -0.901743,
		0.305170, -0.924910, 0.226745,
		-0.906081, -0.208734, 0.368030,
		29.957508, 37.886215, 25.670420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.417582, 37.310898, 25.095526>,  <30.591764, 38.032330, 25.412800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.417582, 37.310898, 25.095526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.065025, 37.474510, 25.190052>,  <29.853493, 37.572678, 25.246767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.065025, 37.474510, 25.190052>,  <30.417582, 37.310898, 25.095526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.065025, 37.474510, 25.190052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374464, -0.300016, -0.877363,
		-0.287955, -0.861798, 0.417595,
		-0.881396, 0.409015, 0.236322,
		29.800608, 37.597221, 25.260946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.977497, 36.773502, 24.880632>,  <30.417582, 37.310898, 25.095526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.977497, 36.773502, 24.880632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.772064, 37.116283, 24.897865>,  <29.648804, 37.321953, 24.908205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.772064, 37.116283, 24.897865>,  <29.977497, 36.773502, 24.880632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.772064, 37.116283, 24.897865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383007, -0.184033, -0.905228,
		-0.767813, -0.481411, 0.422737,
		-0.513584, 0.856957, 0.043081,
		29.617989, 37.373371, 24.910789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311316, 36.541214, 24.711498>,  <29.977497, 36.773502, 24.880632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.311316, 36.541214, 24.711498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.365088, 36.928246, 24.625967>,  <29.397350, 37.160465, 24.574648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.365088, 36.928246, 24.625967>,  <29.311316, 36.541214, 24.711498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365088, 36.928246, 24.625967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571025, -0.100717, -0.814731,
		-0.809852, 0.231624, 0.538972,
		0.134428, 0.967578, -0.213829,
		29.405416, 37.218517, 24.561819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.712749, 36.669918, 24.356823>,  <29.311316, 36.541214, 24.711498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.712749, 36.669918, 24.356823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.915638, 37.005337, 24.277256>,  <29.037371, 37.206589, 24.229515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.915638, 37.005337, 24.277256>,  <28.712749, 36.669918, 24.356823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.915638, 37.005337, 24.277256> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480484, 0.083538, -0.873016,
		-0.715447, 0.538388, 0.445280,
		0.507219, 0.838546, -0.198919,
		29.067804, 37.256901, 24.217581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.237329, 37.019169, 24.003355>,  <28.712749, 36.669918, 24.356823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.237329, 37.019169, 24.003355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.581362, 37.191471, 23.894020>,  <28.787781, 37.294853, 23.828419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.581362, 37.191471, 23.894020>,  <28.237329, 37.019169, 24.003355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.581362, 37.191471, 23.894020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411264, 0.268397, -0.871105,
		-0.301867, 0.861635, 0.407996,
		0.860080, 0.430753, -0.273340,
		28.839386, 37.320698, 23.812017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.105864, 37.663036, 23.637346>,  <28.237329, 37.019169, 24.003355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.105864, 37.663036, 23.637346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.475903, 37.562916, 23.523123>,  <28.697926, 37.502846, 23.454588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.475903, 37.562916, 23.523123>,  <28.105864, 37.663036, 23.637346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.475903, 37.562916, 23.523123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217761, 0.266378, -0.938947,
		0.311083, 0.930803, 0.191921,
		0.925099, -0.250297, -0.285559,
		28.753431, 37.487827, 23.437456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.474344, 38.198441, 23.287960>,  <28.105864, 37.663036, 23.637346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.474344, 38.198441, 23.287960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.609837, 37.855007, 23.134029>,  <28.691132, 37.648945, 23.041670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.609837, 37.855007, 23.134029>,  <28.474344, 38.198441, 23.287960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.609837, 37.855007, 23.134029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180781, 0.341996, -0.922148,
		0.923353, 0.381929, -0.039371,
		0.338730, -0.858585, -0.384829,
		28.711456, 37.597431, 23.018581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.316906, 34.295639, 37.729851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.383907, 34.037312, 37.431896>,  <36.424110, 33.882317, 37.253124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.383907, 34.037312, 37.431896>,  <36.316906, 34.295639, 37.729851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383907, 34.037312, 37.431896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520541, 0.583721, -0.623143,
		0.837245, 0.492126, -0.238397,
		0.167508, -0.645819, -0.744889,
		36.434158, 33.843567, 37.208431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357910, 34.729015, 37.109024>,  <36.316906, 34.295639, 37.729851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357910, 34.729015, 37.109024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.333885, 34.360207, 36.956039>,  <36.319469, 34.138924, 36.864250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.333885, 34.360207, 36.956039>,  <36.357910, 34.729015, 37.109024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333885, 34.360207, 36.956039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539865, 0.352283, -0.764488,
		0.839606, 0.160562, -0.518923,
		-0.060060, -0.922017, -0.382461,
		36.315868, 34.083603, 36.841301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684967, 34.757404, 36.477787>,  <36.357910, 34.729015, 37.109024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684967, 34.757404, 36.477787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.433277, 34.447048, 36.459614>,  <36.282261, 34.260834, 36.448708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.433277, 34.447048, 36.459614>,  <36.684967, 34.757404, 36.477787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433277, 34.447048, 36.459614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428735, 0.395265, -0.812374,
		0.648274, -0.491687, -0.581364,
		-0.629227, -0.775893, -0.045437,
		36.244511, 34.214279, 36.445984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574348, 34.617008, 35.777912>,  <36.684967, 34.757404, 36.477787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574348, 34.617008, 35.777912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.256294, 34.407974, 35.900982>,  <36.065460, 34.282555, 35.974823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.256294, 34.407974, 35.900982>,  <36.574348, 34.617008, 35.777912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256294, 34.407974, 35.900982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512622, 0.308142, -0.801416,
		0.324023, -0.794941, -0.512912,
		-0.795128, -0.522607, 0.307659,
		36.017754, 34.251198, 35.993282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197662, 34.346947, 35.147743>,  <36.574348, 34.617008, 35.777912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197662, 34.346947, 35.147743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.936470, 34.325928, 35.449963>,  <35.779755, 34.313316, 35.631294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.936470, 34.325928, 35.449963>,  <36.197662, 34.346947, 35.147743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936470, 34.325928, 35.449963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745149, 0.223103, -0.628473,
		-0.135542, -0.973378, -0.184835,
		-0.652979, -0.052545, 0.755551,
		35.740578, 34.310165, 35.676628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727936, 34.055828, 34.783039>,  <36.197662, 34.346947, 35.147743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727936, 34.055828, 34.783039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.534206, 34.212296, 35.096069>,  <35.417969, 34.306175, 35.283886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.534206, 34.212296, 35.096069>,  <35.727936, 34.055828, 34.783039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534206, 34.212296, 35.096069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702911, 0.358599, -0.614266,
		-0.520912, -0.847581, 0.101280,
		-0.484321, 0.391169, 0.782573,
		35.388908, 34.329647, 35.330841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112595, 33.836761, 34.668835>,  <35.727936, 34.055828, 34.783039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112595, 33.836761, 34.668835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.092152, 34.165249, 34.896164>,  <35.079887, 34.362343, 35.032562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.092152, 34.165249, 34.896164>,  <35.112595, 33.836761, 34.668835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092152, 34.165249, 34.896164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764569, 0.333938, -0.551289,
		-0.642512, -0.462693, 0.610813,
		-0.051104, 0.821219, 0.568320,
		35.076820, 34.411613, 35.066662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397163, 33.989277, 34.768677>,  <35.112595, 33.836761, 34.668835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397163, 33.989277, 34.768677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.597755, 34.329357, 34.832775>,  <34.718113, 34.533405, 34.871235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.597755, 34.329357, 34.832775>,  <34.397163, 33.989277, 34.768677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597755, 34.329357, 34.832775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630828, 0.486080, -0.604800,
		-0.592090, 0.202211, 0.780090,
		0.501483, 0.850198, 0.160242,
		34.748199, 34.584415, 34.880848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914265, 34.451263, 34.833229>,  <34.397163, 33.989277, 34.768677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914265, 34.451263, 34.833229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.228409, 34.683819, 34.748188>,  <34.416893, 34.823353, 34.697163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.228409, 34.683819, 34.748188>,  <33.914265, 34.451263, 34.833229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228409, 34.683819, 34.748188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597260, 0.621326, -0.507184,
		-0.162773, 0.525301, 0.835203,
		0.785357, 0.581389, -0.212606,
		34.464016, 34.858234, 34.684406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615635, 35.073177, 34.596775>,  <33.914265, 34.451263, 34.833229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615635, 35.073177, 34.596775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.990074, 35.131092, 34.468555>,  <34.214737, 35.165840, 34.391624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.990074, 35.131092, 34.468555>,  <33.615635, 35.073177, 34.596775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990074, 35.131092, 34.468555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342889, 0.578709, -0.739948,
		0.078369, 0.802579, 0.591377,
		0.936101, 0.144787, -0.320548,
		34.270905, 35.174530, 34.372391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730587, 35.784775, 34.451878>,  <33.615635, 35.073177, 34.596775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730587, 35.784775, 34.451878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.011730, 35.589928, 34.244534>,  <34.180416, 35.473019, 34.120125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.011730, 35.589928, 34.244534>,  <33.730587, 35.784775, 34.451878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011730, 35.589928, 34.244534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222172, 0.541938, -0.810520,
		0.675741, 0.684849, 0.272683,
		0.702861, -0.487119, -0.518364,
		34.222588, 35.443790, 34.089024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248108, 36.300499, 34.137707>,  <33.730587, 35.784775, 34.451878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248108, 36.300499, 34.137707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.244839, 35.946201, 33.952065>,  <34.242878, 35.733624, 33.840679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.244839, 35.946201, 33.952065>,  <34.248108, 36.300499, 34.137707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244839, 35.946201, 33.952065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114201, 0.461908, -0.879545,
		0.993424, 0.045816, -0.104926,
		-0.008169, -0.885744, -0.464103,
		34.242390, 35.680477, 33.812832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398960, 37.046875, 33.958084>,  <34.248108, 36.300499, 34.137707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398960, 37.046875, 33.958084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.138916, 37.335526, 34.053265>,  <33.982891, 37.508717, 34.110371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.138916, 37.335526, 34.053265>,  <34.398960, 37.046875, 33.958084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138916, 37.335526, 34.053265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388267, 0.046303, 0.920383,
		0.653152, 0.690736, -0.310285,
		-0.650109, 0.721623, 0.237947,
		33.943882, 37.552013, 34.124649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787041, 37.578838, 34.286358>,  <34.398960, 37.046875, 33.958084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787041, 37.578838, 34.286358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.409073, 37.616695, 34.411686>,  <34.182293, 37.639412, 34.486885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.409073, 37.616695, 34.411686>,  <34.787041, 37.578838, 34.286358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409073, 37.616695, 34.411686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314458, -0.003047, 0.949266,
		0.090799, 0.995506, -0.026882,
		-0.944919, 0.094646, 0.313322,
		34.125599, 37.645088, 34.505684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883575, 37.972664, 34.943073>,  <34.787041, 37.578838, 34.286358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883575, 37.972664, 34.943073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.502407, 37.870117, 35.007843>,  <34.273705, 37.808590, 35.046703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.502407, 37.870117, 35.007843>,  <34.883575, 37.972664, 34.943073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502407, 37.870117, 35.007843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128582, 0.141964, 0.981485,
		-0.274609, 0.956097, -0.102316,
		-0.952920, -0.256368, 0.161922,
		34.216530, 37.793205, 35.056419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612293, 38.468037, 35.387878>,  <34.883575, 37.972664, 34.943073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612293, 38.468037, 35.387878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.362633, 38.157616, 35.424068>,  <34.212837, 37.971363, 35.445782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.362633, 38.157616, 35.424068>,  <34.612293, 38.468037, 35.387878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362633, 38.157616, 35.424068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033081, 0.141950, 0.989321,
		-0.780606, 0.614489, -0.114270,
		-0.624148, -0.776050, 0.090479,
		34.175388, 37.924801, 35.451214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.930256, 38.738232, 35.656868>,  <34.612293, 38.468037, 35.387878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.930256, 38.738232, 35.656868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.964127, 38.349903, 35.746616>,  <33.984451, 38.116905, 35.800465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.964127, 38.349903, 35.746616>,  <33.930256, 38.738232, 35.656868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964127, 38.349903, 35.746616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082987, 0.217525, 0.972520,
		-0.992946, -0.100974, -0.062145,
		0.084681, -0.970817, 0.224371,
		33.989532, 38.058659, 35.813927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445679, 38.696419, 36.304729>,  <33.930256, 38.738232, 35.656868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445679, 38.696419, 36.304729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.684341, 38.375431, 36.307323>,  <33.827541, 38.182838, 36.308880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.684341, 38.375431, 36.307323>,  <33.445679, 38.696419, 36.304729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684341, 38.375431, 36.307323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183797, 0.144518, 0.972283,
		-0.781163, -0.578929, 0.233720,
		0.596659, -0.802469, 0.006486,
		33.863338, 38.134689, 36.309269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233227, 38.116348, 36.792862>,  <33.445679, 38.696419, 36.304729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233227, 38.116348, 36.792862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.623272, 38.049335, 36.734772>,  <33.857300, 38.009129, 36.699917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.623272, 38.049335, 36.734772>,  <33.233227, 38.116348, 36.792862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623272, 38.049335, 36.734772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169290, 0.139642, 0.975623,
		-0.143170, -0.975927, 0.164528,
		0.975112, -0.167533, -0.145222,
		33.915806, 37.999077, 36.691204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455170, 37.662674, 37.332016>,  <33.233227, 38.116348, 36.792862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455170, 37.662674, 37.332016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.796822, 37.840080, 37.223389>,  <34.001812, 37.946526, 37.158215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.796822, 37.840080, 37.223389>,  <33.455170, 37.662674, 37.332016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796822, 37.840080, 37.223389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204156, 0.194309, 0.959461,
		0.478304, -0.874950, 0.075419,
		0.854134, 0.443517, -0.271565,
		34.053062, 37.973137, 37.141918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907597, 37.492813, 37.960312>,  <33.455170, 37.662674, 37.332016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907597, 37.492813, 37.960312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.131046, 37.754620, 37.756527>,  <34.265118, 37.911701, 37.634258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.131046, 37.754620, 37.756527>,  <33.907597, 37.492813, 37.960312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131046, 37.754620, 37.756527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564530, 0.149963, 0.811676,
		0.607653, -0.741028, -0.285720,
		0.558627, 0.654514, -0.509458,
		34.298634, 37.950974, 37.603691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596684, 37.210602, 38.025211>,  <33.907597, 37.492813, 37.960312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596684, 37.210602, 38.025211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.578243, 37.605968, 37.967384>,  <34.567181, 37.843189, 37.932690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.578243, 37.605968, 37.967384>,  <34.596684, 37.210602, 38.025211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578243, 37.605968, 37.967384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490482, 0.148470, 0.858711,
		0.870231, -0.031320, -0.491647,
		-0.046100, 0.988421, -0.144565,
		34.564415, 37.902496, 37.924015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307549, 37.516579, 38.055008>,  <34.596684, 37.210602, 38.025211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307549, 37.516579, 38.055008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.043289, 37.805706, 38.136082>,  <34.884735, 37.979183, 38.184727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.043289, 37.805706, 38.136082>,  <35.307549, 37.516579, 38.055008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043289, 37.805706, 38.136082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334366, 0.041594, 0.941525,
		0.672120, 0.689786, -0.269164,
		-0.660647, 0.722817, 0.202685,
		34.845097, 38.022552, 38.196888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649807, 37.915241, 38.494686>,  <35.307549, 37.516579, 38.055008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649807, 37.915241, 38.494686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.280376, 38.045887, 38.575024>,  <35.058720, 38.124275, 38.623226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.280376, 38.045887, 38.575024>,  <35.649807, 37.915241, 38.494686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280376, 38.045887, 38.575024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219252, 0.020147, 0.975460,
		0.314551, 0.944944, -0.090218,
		-0.923573, 0.326612, 0.200843,
		35.003304, 38.143871, 38.635277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739410, 38.593288, 38.908318>,  <35.649807, 37.915241, 38.494686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739410, 38.593288, 38.908318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.381901, 38.423355, 38.965851>,  <35.167397, 38.321396, 39.000370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.381901, 38.423355, 38.965851>,  <35.739410, 38.593288, 38.908318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381901, 38.423355, 38.965851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098786, 0.126364, 0.987053,
		-0.437506, 0.896410, -0.070974,
		-0.893773, -0.424830, 0.143838,
		35.113770, 38.295906, 39.009003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014793, 38.929668, 38.207798>,  <35.739410, 38.593288, 38.908318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014793, 38.929668, 38.207798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.191528, 39.257072, 38.354675>,  <36.297569, 39.453514, 38.442802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.191528, 39.257072, 38.354675>,  <36.014793, 38.929668, 38.207798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191528, 39.257072, 38.354675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030250, 0.422672, -0.905778,
		-0.896586, 0.389097, 0.211511,
		0.441835, 0.818506, 0.367192,
		36.324078, 39.502625, 38.464832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626740, 39.470688, 37.948635>,  <36.014793, 38.929668, 38.207798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626740, 39.470688, 37.948635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.987957, 39.638981, 37.983269>,  <36.204685, 39.739956, 38.004047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.987957, 39.638981, 37.983269>,  <35.626740, 39.470688, 37.948635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987957, 39.638981, 37.983269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075658, 0.354200, -0.932104,
		-0.422838, 0.835178, 0.351690,
		0.903042, 0.420737, 0.086581,
		36.258869, 39.765202, 38.009243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515480, 40.096352, 37.826477>,  <35.626740, 39.470688, 37.948635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515480, 40.096352, 37.826477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.848824, 39.944054, 37.666203>,  <36.048828, 39.852676, 37.570038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.848824, 39.944054, 37.666203>,  <35.515480, 40.096352, 37.826477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848824, 39.944054, 37.666203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234962, 0.412139, -0.880304,
		0.500309, 0.827754, 0.253998,
		0.833357, -0.380744, -0.400687,
		36.098831, 39.829830, 37.545998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855152, 40.646671, 37.579529>,  <35.515480, 40.096352, 37.826477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855152, 40.646671, 37.579529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.989372, 40.334633, 37.368301>,  <36.069904, 40.147408, 37.241566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.989372, 40.334633, 37.368301>,  <35.855152, 40.646671, 37.579529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989372, 40.334633, 37.368301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040346, 0.548150, -0.835406,
		0.941158, 0.301625, 0.152457,
		0.335549, -0.780098, -0.528066,
		36.090038, 40.100605, 37.209881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473846, 40.836193, 37.262623>,  <35.855152, 40.646671, 37.579529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473846, 40.836193, 37.262623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.377937, 40.521118, 37.035622>,  <36.320393, 40.332073, 36.899422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.377937, 40.521118, 37.035622>,  <36.473846, 40.836193, 37.262623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377937, 40.521118, 37.035622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118258, 0.556502, -0.822387,
		0.963598, -0.264301, -0.040286,
		-0.239777, -0.787687, -0.567500,
		36.306004, 40.284813, 36.865372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002258, 40.741779, 36.722530>,  <36.473846, 40.836193, 37.262623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002258, 40.741779, 36.722530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.685783, 40.540070, 36.584122>,  <36.495899, 40.419044, 36.501076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.685783, 40.540070, 36.584122>,  <37.002258, 40.741779, 36.722530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685783, 40.540070, 36.584122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167776, 0.365107, -0.915723,
		0.588106, -0.782564, -0.204265,
		-0.791190, -0.504271, -0.346017,
		36.448425, 40.388790, 36.480316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259060, 40.454990, 36.155449>,  <37.002258, 40.741779, 36.722530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259060, 40.454990, 36.155449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.861515, 40.498035, 36.145237>,  <36.622986, 40.523861, 36.139111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.861515, 40.498035, 36.145237>,  <37.259060, 40.454990, 36.155449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861515, 40.498035, 36.145237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062040, 0.351356, -0.934184,
		-0.091560, -0.930037, -0.355877,
		-0.993865, 0.107613, -0.025530,
		36.563354, 40.530319, 36.137577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076336, 40.253807, 35.492714>,  <37.259060, 40.454990, 36.155449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076336, 40.253807, 35.492714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.706116, 40.383556, 35.570827>,  <36.483982, 40.461407, 35.617695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.706116, 40.383556, 35.570827>,  <37.076336, 40.253807, 35.492714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706116, 40.383556, 35.570827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126307, 0.221717, -0.966896,
		-0.356933, -0.919578, -0.164240,
		-0.925551, 0.324373, 0.195287,
		36.428452, 40.480869, 35.629414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604839, 39.866974, 35.045574>,  <37.076336, 40.253807, 35.492714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604839, 39.866974, 35.045574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.420162, 40.206814, 35.147568>,  <36.309357, 40.410717, 35.208763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.420162, 40.206814, 35.147568>,  <36.604839, 39.866974, 35.045574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420162, 40.206814, 35.147568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096860, 0.237450, -0.966559,
		-0.881736, -0.470951, -0.027336,
		-0.461693, 0.849601, 0.254985,
		36.281654, 40.461693, 35.224064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976234, 39.791695, 34.696491>,  <36.604839, 39.866974, 35.045574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976234, 39.791695, 34.696491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.031185, 40.177700, 34.785824>,  <36.064156, 40.409302, 34.839424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.031185, 40.177700, 34.785824>,  <35.976234, 39.791695, 34.696491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031185, 40.177700, 34.785824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065796, 0.233860, -0.970041,
		-0.988331, 0.118567, 0.095621,
		0.137376, 0.965014, 0.223330,
		36.072399, 40.467205, 34.852821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344540, 40.136017, 34.386200>,  <35.976234, 39.791695, 34.696491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344540, 40.136017, 34.386200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.618153, 40.419289, 34.456150>,  <35.782322, 40.589252, 34.498119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.618153, 40.419289, 34.456150>,  <35.344540, 40.136017, 34.386200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618153, 40.419289, 34.456150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230696, 0.437448, -0.869148,
		-0.692010, 0.554184, 0.462604,
		0.684033, 0.708180, 0.174871,
		35.823364, 40.631744, 34.508610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984299, 40.769955, 34.307247>,  <35.344540, 40.136017, 34.386200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984299, 40.769955, 34.307247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.375298, 40.830624, 34.248592>,  <35.609898, 40.867023, 34.213398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.375298, 40.830624, 34.248592>,  <34.984299, 40.769955, 34.307247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375298, 40.830624, 34.248592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176822, 0.209882, -0.961605,
		-0.115071, 0.965891, 0.231977,
		0.977493, 0.151671, -0.146640,
		35.668545, 40.876125, 34.204601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989594, 41.090225, 33.748695>,  <34.984299, 40.769955, 34.307247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989594, 41.090225, 33.748695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.387352, 41.048004, 33.746197>,  <35.626007, 41.022671, 33.744698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.387352, 41.048004, 33.746197>,  <34.989594, 41.090225, 33.748695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387352, 41.048004, 33.746197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014789, 0.197378, -0.980216,
		0.104696, 0.974629, 0.197833,
		0.994394, -0.105550, -0.006250,
		35.685669, 41.016338, 33.744320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376637, 41.736504, 33.419315>,  <34.989594, 41.090225, 33.748695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376637, 41.736504, 33.419315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.623474, 41.422981, 33.391460>,  <35.771576, 41.234867, 33.374748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.623474, 41.422981, 33.391460>,  <35.376637, 41.736504, 33.419315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623474, 41.422981, 33.391460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014911, 0.100126, -0.994863,
		0.786751, 0.612882, 0.073474,
		0.617090, -0.783805, -0.069635,
		35.808601, 41.187840, 33.370571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975536, 41.851723, 32.913498>,  <35.376637, 41.736504, 33.419315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975536, 41.851723, 32.913498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.925564, 41.455128, 32.928200>,  <35.895580, 41.217171, 32.937019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.925564, 41.455128, 32.928200>,  <35.975536, 41.851723, 32.913498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925564, 41.455128, 32.928200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092032, -0.048467, -0.994576,
		0.987887, -0.120875, 0.097304,
		-0.124936, -0.991484, 0.036756,
		35.888084, 41.157684, 32.939228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390598, 41.570210, 32.398705>,  <35.975536, 41.851723, 32.913498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390598, 41.570210, 32.398705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.129284, 41.278313, 32.479393>,  <35.972496, 41.103176, 32.527805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.129284, 41.278313, 32.479393>,  <36.390598, 41.570210, 32.398705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129284, 41.278313, 32.479393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074913, -0.202824, -0.976345,
		0.753395, -0.652945, 0.077835,
		-0.653287, -0.729743, 0.201721,
		35.933296, 41.059391, 32.539909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617546, 41.014664, 31.957468>,  <36.390598, 41.570210, 32.398705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.617546, 41.014664, 31.957468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.253731, 40.886002, 32.062748>,  <36.035442, 40.808804, 32.125916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.253731, 40.886002, 32.062748>,  <36.617546, 41.014664, 31.957468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253731, 40.886002, 32.062748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176602, -0.274150, -0.945332,
		0.376230, -0.906299, 0.192545,
		-0.909540, -0.321659, 0.263198,
		35.980869, 40.789505, 32.141708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409336, 40.651917, 31.452282>,  <36.617546, 41.014664, 31.957468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409336, 40.651917, 31.452282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.053135, 40.640343, 31.633904>,  <35.839413, 40.633396, 31.742876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.053135, 40.640343, 31.633904>,  <36.409336, 40.651917, 31.452282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053135, 40.640343, 31.633904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440133, -0.198025, -0.875825,
		0.115261, -0.979770, 0.163604,
		-0.890504, -0.028941, 0.454053,
		35.785984, 40.631660, 31.770119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120144, 40.078972, 31.126881>,  <36.409336, 40.651917, 31.452282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120144, 40.078972, 31.126881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.815197, 40.281036, 31.288670>,  <35.632229, 40.402275, 31.385742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.815197, 40.281036, 31.288670>,  <36.120144, 40.078972, 31.126881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815197, 40.281036, 31.288670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563155, -0.209963, -0.799232,
		-0.318820, -0.837093, 0.444556,
		-0.762372, 0.505165, 0.404472,
		35.586487, 40.432587, 31.410011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614067, 39.697025, 30.978693>,  <36.120144, 40.078972, 31.126881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614067, 39.697025, 30.978693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.451958, 40.057961, 31.037399>,  <35.354691, 40.274521, 31.072624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.451958, 40.057961, 31.037399>,  <35.614067, 39.697025, 30.978693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451958, 40.057961, 31.037399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563644, -0.120229, -0.817221,
		-0.719764, -0.413922, 0.557323,
		-0.405272, 0.902338, 0.146768,
		35.330376, 40.328663, 31.081430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887360, 39.687206, 31.013737>,  <35.614067, 39.697025, 30.978693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887360, 39.687206, 31.013737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.961731, 40.063560, 30.900482>,  <35.006355, 40.289371, 30.832529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.961731, 40.063560, 30.900482>,  <34.887360, 39.687206, 31.013737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961731, 40.063560, 30.900482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583288, -0.126198, -0.802402,
		-0.790700, 0.314338, 0.525343,
		0.185928, 0.940885, -0.283134,
		35.017509, 40.345825, 30.815542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214233, 40.049526, 30.930305>,  <34.887360, 39.687206, 31.013737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214233, 40.049526, 30.930305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.498573, 40.230053, 30.714527>,  <34.669178, 40.338367, 30.585060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.498573, 40.230053, 30.714527>,  <34.214233, 40.049526, 30.930305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498573, 40.230053, 30.714527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627865, 0.061538, -0.775885,
		-0.316973, 0.890240, 0.327111,
		0.710854, 0.451316, -0.539445,
		34.711830, 40.365448, 30.552694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842770, 40.541740, 30.578012>,  <34.214233, 40.049526, 30.930305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842770, 40.541740, 30.578012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.190147, 40.518902, 30.381016>,  <34.398575, 40.505199, 30.262817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.190147, 40.518902, 30.381016>,  <33.842770, 40.541740, 30.578012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190147, 40.518902, 30.381016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488766, 0.068003, -0.869761,
		0.083150, 0.996050, 0.031150,
		0.868443, -0.057095, -0.492490,
		34.450680, 40.501774, 30.233269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809650, 40.959003, 30.076818>,  <33.842770, 40.541740, 30.578012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809650, 40.959003, 30.076818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.113434, 40.731899, 29.949778>,  <34.295704, 40.595638, 29.873552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.113434, 40.731899, 29.949778>,  <33.809650, 40.959003, 30.076818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113434, 40.731899, 29.949778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353939, 0.049024, -0.933983,
		0.545845, 0.821736, -0.163719,
		0.759461, -0.567757, -0.317603,
		34.341270, 40.561573, 29.854496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263233, 41.366886, 29.604265>,  <33.809650, 40.959003, 30.076818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263233, 41.366886, 29.604265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.292336, 40.977627, 29.516920>,  <34.309799, 40.744072, 29.464514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.292336, 40.977627, 29.516920>,  <34.263233, 41.366886, 29.604265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292336, 40.977627, 29.516920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337438, 0.182010, -0.923584,
		0.938532, 0.140882, -0.315136,
		0.072758, -0.973152, -0.218361,
		34.314163, 40.685680, 29.451412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450432, 41.405342, 28.936625>,  <34.263233, 41.366886, 29.604265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450432, 41.405342, 28.936625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.362553, 41.017879, 28.982994>,  <34.309826, 40.785400, 29.010817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.362553, 41.017879, 28.982994>,  <34.450432, 41.405342, 28.936625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362553, 41.017879, 28.982994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166634, -0.079820, -0.982783,
		0.961231, -0.235235, -0.143875,
		-0.219701, -0.968655, 0.115923,
		34.296642, 40.727283, 29.017771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062389, 41.041557, 28.636808>,  <34.450432, 41.405342, 28.936625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062389, 41.041557, 28.636808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.760536, 40.779099, 28.636227>,  <34.579426, 40.621624, 28.635878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.760536, 40.779099, 28.636227>,  <35.062389, 41.041557, 28.636808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760536, 40.779099, 28.636227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154652, -0.175712, -0.972218,
		0.637664, -0.733890, 0.234073,
		-0.754631, -0.656148, -0.001452,
		34.534145, 40.582253, 28.635792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258854, 40.600842, 28.144821>,  <35.062389, 41.041557, 28.636808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258854, 40.600842, 28.144821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.868572, 40.521358, 28.181719>,  <34.634403, 40.473667, 28.203857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.868572, 40.521358, 28.181719>,  <35.258854, 40.600842, 28.144821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868572, 40.521358, 28.181719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083173, -0.053544, -0.995096,
		0.202672, -0.978595, 0.035716,
		-0.975708, -0.198707, 0.092245,
		34.575859, 40.461746, 28.209393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164677, 40.066368, 27.765703>,  <35.258854, 40.600842, 28.144821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164677, 40.066368, 27.765703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.811111, 40.253307, 27.772474>,  <34.598972, 40.365471, 27.776537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.811111, 40.253307, 27.772474>,  <35.164677, 40.066368, 27.765703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811111, 40.253307, 27.772474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011917, 0.013678, -0.999835,
		-0.467506, -0.883966, -0.006520,
		-0.883910, 0.467351, 0.016928,
		34.545940, 40.393513, 27.777554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077610, 39.344658, 27.815109>,  <35.164677, 40.066368, 27.765703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077610, 39.344658, 27.815109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.378273, 39.095573, 27.728180>,  <35.558670, 38.946121, 27.676022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.378273, 39.095573, 27.728180>,  <35.077610, 39.344658, 27.815109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378273, 39.095573, 27.728180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250770, -0.034928, 0.967416,
		-0.610016, -0.781668, 0.129905,
		0.751661, -0.622716, -0.217325,
		35.603771, 38.908760, 27.662983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075123, 38.692043, 28.276377>,  <35.077610, 39.344658, 27.815109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075123, 38.692043, 28.276377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.449966, 38.743034, 28.146410>,  <35.674873, 38.773628, 28.068430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.449966, 38.743034, 28.146410>,  <35.075123, 38.692043, 28.276377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449966, 38.743034, 28.146410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341764, -0.146170, 0.928349,
		0.070847, -0.981012, -0.180543,
		0.937111, 0.127474, -0.324919,
		35.731098, 38.781277, 28.048935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515335, 38.163868, 28.585760>,  <35.075123, 38.692043, 28.276377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515335, 38.163868, 28.585760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.778316, 38.448502, 28.486637>,  <35.936104, 38.619282, 28.427164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.778316, 38.448502, 28.486637>,  <35.515335, 38.163868, 28.585760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778316, 38.448502, 28.486637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417756, -0.070532, 0.905817,
		0.627083, -0.699056, -0.343639,
		0.657454, 0.711580, -0.247805,
		35.975552, 38.661976, 28.412296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057648, 37.914825, 28.894003>,  <35.515335, 38.163868, 28.585760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057648, 37.914825, 28.894003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.194836, 38.276043, 28.790554>,  <36.277149, 38.492775, 28.728485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.194836, 38.276043, 28.790554>,  <36.057648, 37.914825, 28.894003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194836, 38.276043, 28.790554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574248, 0.016319, 0.818519,
		0.743378, -0.429240, -0.512974,
		0.342969, 0.903043, -0.258621,
		36.297726, 38.546955, 28.712967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786312, 37.861660, 28.935030>,  <36.057648, 37.914825, 28.894003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786312, 37.861660, 28.935030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.652794, 38.234211, 28.993149>,  <36.572681, 38.457741, 29.028019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.652794, 38.234211, 28.993149>,  <36.786312, 37.861660, 28.935030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652794, 38.234211, 28.993149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368388, -0.012988, 0.929582,
		0.867681, 0.363817, -0.338774,
		-0.333798, 0.931380, 0.145295,
		36.552654, 38.513626, 29.036737>
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
