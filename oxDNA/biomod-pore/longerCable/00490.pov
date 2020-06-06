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
	<24.263544, 35.289894, 34.952801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.156216, 35.276318, 35.337894>,  <24.091818, 35.268173, 35.568951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.156216, 35.276318, 35.337894>,  <24.263544, 35.289894, 34.952801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.156216, 35.276318, 35.337894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707550, 0.671261, 0.220864,
		-0.653740, 0.740443, -0.156100,
		-0.268321, -0.033939, 0.962732,
		24.075720, 35.266136, 35.626713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.075830, 35.924847, 35.144405>,  <24.263544, 35.289894, 34.952801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.075830, 35.924847, 35.144405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.215609, 35.705772, 35.448490>,  <24.299475, 35.574326, 35.630943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.215609, 35.705772, 35.448490>,  <24.075830, 35.924847, 35.144405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.215609, 35.705772, 35.448490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744225, 0.655172, 0.129919,
		-0.569227, 0.520371, 0.636549,
		0.349443, -0.547689, 0.760215,
		24.320442, 35.541466, 35.676556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.199354, 36.430634, 35.728367>,  <24.075830, 35.924847, 35.144405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.199354, 36.430634, 35.728367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.433670, 36.107517, 35.754700>,  <24.574259, 35.913647, 35.770500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.433670, 36.107517, 35.754700>,  <24.199354, 36.430634, 35.728367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.433670, 36.107517, 35.754700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808940, 0.577776, -0.108588,
		0.049682, 0.116862, 0.991905,
		0.585788, -0.807786, 0.065830,
		24.609407, 35.865181, 35.774448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.791431, 36.721153, 36.062580>,  <24.199354, 36.430634, 35.728367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.791431, 36.721153, 36.062580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.922993, 36.385906, 35.888512>,  <25.001928, 36.184757, 35.784069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.922993, 36.385906, 35.888512>,  <24.791431, 36.721153, 36.062580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.922993, 36.385906, 35.888512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921313, 0.385966, -0.047029,
		0.207378, -0.385462, 0.899118,
		0.328901, -0.838122, -0.435173,
		25.021664, 36.134468, 35.757961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.317600, 36.455315, 36.394341>,  <24.791431, 36.721153, 36.062580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.317600, 36.455315, 36.394341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.344971, 36.368771, 36.004776>,  <25.361393, 36.316845, 35.771038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.344971, 36.368771, 36.004776>,  <25.317600, 36.455315, 36.394341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.344971, 36.368771, 36.004776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909707, 0.414296, -0.028120,
		0.409572, -0.884052, 0.225172,
		0.068428, -0.216358, -0.973913,
		25.365499, 36.303864, 35.712601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.987316, 36.076702, 36.162289>,  <25.317600, 36.455315, 36.394341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.987316, 36.076702, 36.162289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.849539, 36.319565, 35.875870>,  <25.766872, 36.465282, 35.704018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.849539, 36.319565, 35.875870>,  <25.987316, 36.076702, 36.162289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.849539, 36.319565, 35.875870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859466, 0.510813, 0.019697,
		0.377725, -0.608634, -0.697774,
		-0.344444, 0.607153, -0.716047,
		25.746206, 36.501709, 35.661057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.497087, 36.196369, 35.685814>,  <25.987316, 36.076702, 36.162289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.497087, 36.196369, 35.685814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.267424, 36.511101, 35.595268>,  <26.129625, 36.699940, 35.540943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.267424, 36.511101, 35.595268>,  <26.497087, 36.196369, 35.685814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.267424, 36.511101, 35.595268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817909, 0.538742, -0.201944,
		-0.036946, -0.301091, -0.952880,
		-0.574160, 0.786830, -0.226360,
		26.095175, 36.747150, 35.527359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.673971, 36.418713, 35.025650>,  <26.497087, 36.196369, 35.685814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.673971, 36.418713, 35.025650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.524630, 36.740570, 35.210323>,  <26.435024, 36.933685, 35.321129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.524630, 36.740570, 35.210323>,  <26.673971, 36.418713, 35.025650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.524630, 36.740570, 35.210323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855282, 0.491312, -0.164638,
		-0.359306, 0.333402, -0.871632,
		-0.373353, 0.804646, 0.461684,
		26.412624, 36.981964, 35.348827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.781403, 37.049313, 34.595009>,  <26.673971, 36.418713, 35.025650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.781403, 37.049313, 34.595009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.694855, 37.215855, 34.948242>,  <26.642927, 37.315781, 35.160183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.694855, 37.215855, 34.948242>,  <26.781403, 37.049313, 34.595009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.694855, 37.215855, 34.948242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787166, 0.609460, -0.094485,
		-0.577542, 0.674687, -0.459612,
		-0.216367, 0.416360, 0.883080,
		26.629944, 37.340763, 35.213165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.916641, 37.668049, 34.401062>,  <26.781403, 37.049313, 34.595009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.916641, 37.668049, 34.401062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.896763, 37.705620, 34.798798>,  <26.884836, 37.728161, 35.037437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.896763, 37.705620, 34.798798>,  <26.916641, 37.668049, 34.401062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.896763, 37.705620, 34.798798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608415, 0.792374, -0.044438,
		-0.792061, 0.602762, -0.096522,
		-0.049696, 0.093923, 0.994338,
		26.881853, 37.733795, 35.097099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.757801, 38.389084, 34.522472>,  <26.916641, 37.668049, 34.401062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.757801, 38.389084, 34.522472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.944942, 38.249512, 34.847275>,  <27.057228, 38.165768, 35.042156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.944942, 38.249512, 34.847275>,  <26.757801, 38.389084, 34.522472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.944942, 38.249512, 34.847275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649833, 0.758530, -0.048464,
		-0.599024, 0.550346, 0.581627,
		0.467853, -0.348929, 0.812011,
		27.085299, 38.144833, 35.090878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.920980, 38.952244, 35.036144>,  <26.757801, 38.389084, 34.522472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.920980, 38.952244, 35.036144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.174553, 38.665913, 35.153255>,  <27.326696, 38.494114, 35.223522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.174553, 38.665913, 35.153255>,  <26.920980, 38.952244, 35.036144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.174553, 38.665913, 35.153255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705716, 0.690275, 0.159644,
		-0.316378, 0.105418, 0.942758,
		0.633932, -0.715827, 0.292783,
		27.364733, 38.451164, 35.241089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.203075, 39.123405, 35.594898>,  <26.920980, 38.952244, 35.036144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.203075, 39.123405, 35.594898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.474203, 38.861282, 35.461552>,  <27.636879, 38.704010, 35.381542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.474203, 38.861282, 35.461552>,  <27.203075, 39.123405, 35.594898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.474203, 38.861282, 35.461552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699855, 0.436122, 0.565685,
		-0.225310, -0.616740, 0.754233,
		0.677818, -0.655309, -0.333366,
		27.677549, 38.664688, 35.361542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.586840, 38.798264, 36.218018>,  <27.203075, 39.123405, 35.594898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.586840, 38.798264, 36.218018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837151, 38.781292, 35.906479>,  <27.987337, 38.771107, 35.719555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837151, 38.781292, 35.906479>,  <27.586840, 38.798264, 36.218018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.837151, 38.781292, 35.906479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760599, 0.254516, 0.597253,
		0.172886, -0.966137, 0.191545,
		0.625779, -0.042432, -0.778845,
		28.024885, 38.768562, 35.672825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.181622, 38.298927, 36.306202>,  <27.586840, 38.798264, 36.218018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.181622, 38.298927, 36.306202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.301435, 38.593239, 36.063251>,  <28.373323, 38.769825, 35.917480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.301435, 38.593239, 36.063251>,  <28.181622, 38.298927, 36.306202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.301435, 38.593239, 36.063251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682945, 0.279192, 0.675009,
		0.666233, -0.616995, -0.418869,
		0.299532, 0.735778, -0.607381,
		28.391294, 38.813972, 35.881039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.679951, 38.018116, 36.813618>,  <28.181622, 38.298927, 36.306202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.679951, 38.018116, 36.813618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.645664, 38.415745, 36.786854>,  <27.625092, 38.654320, 36.770794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.645664, 38.415745, 36.786854>,  <27.679951, 38.018116, 36.813618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.645664, 38.415745, 36.786854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963434, 0.065590, -0.259796,
		-0.253867, -0.086731, -0.963343,
		-0.085718, 0.994070, -0.066908,
		27.619949, 38.713966, 36.766781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.633442, 37.641872, 36.152699>,  <27.679951, 38.018116, 36.813618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.633442, 37.641872, 36.152699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.461336, 37.827419, 35.842937>,  <27.358072, 37.938747, 35.657082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.461336, 37.827419, 35.842937>,  <27.633442, 37.641872, 36.152699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.461336, 37.827419, 35.842937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824322, -0.551548, 0.127622,
		-0.367919, 0.693266, 0.619692,
		-0.430266, 0.463872, -0.774399,
		27.332256, 37.966579, 35.610619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.035572, 38.015736, 36.382698>,  <27.633442, 37.641872, 36.152699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.035572, 38.015736, 36.382698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.004175, 37.908844, 35.998524>,  <26.985338, 37.844707, 35.768021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.004175, 37.908844, 35.998524>,  <27.035572, 38.015736, 36.382698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.004175, 37.908844, 35.998524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777817, -0.586193, 0.226667,
		-0.623571, 0.764831, -0.161845,
		-0.078490, -0.267229, -0.960431,
		26.980629, 37.828674, 35.710396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.354738, 37.848400, 36.341927>,  <27.035572, 38.015736, 36.382698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.354738, 37.848400, 36.341927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.439009, 37.723988, 35.971226>,  <26.489571, 37.649342, 35.748806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.439009, 37.723988, 35.971226>,  <26.354738, 37.848400, 36.341927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.439009, 37.723988, 35.971226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853903, -0.520064, -0.019575,
		-0.475884, 0.795484, -0.375154,
		0.210676, -0.311030, -0.926756,
		26.502211, 37.630680, 35.693199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.751678, 37.997044, 35.936806>,  <26.354738, 37.848400, 36.341927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.751678, 37.997044, 35.936806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.944141, 37.690693, 35.766197>,  <26.059620, 37.506882, 35.663830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.944141, 37.690693, 35.766197>,  <25.751678, 37.997044, 35.936806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.944141, 37.690693, 35.766197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818238, -0.566973, 0.095017,
		-0.314599, 0.303280, -0.899471,
		0.481159, -0.765874, -0.426525,
		26.088490, 37.460930, 35.638241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.081385, 37.619370, 35.956837>,  <25.751678, 37.997044, 35.936806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.081385, 37.619370, 35.956837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.377619, 37.352943, 35.921314>,  <25.555359, 37.193089, 35.900002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.377619, 37.352943, 35.921314>,  <25.081385, 37.619370, 35.956837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.377619, 37.352943, 35.921314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661886, -0.745883, 0.074599,
		-0.115929, 0.003535, -0.993251,
		0.740586, -0.666067, -0.088810,
		25.599794, 37.153122, 35.894672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.282055, 37.705063, 35.234303>,  <25.081385, 37.619370, 35.956837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.282055, 37.705063, 35.234303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.546083, 37.413185, 35.305695>,  <25.704500, 37.238060, 35.348530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.546083, 37.413185, 35.305695>,  <25.282055, 37.705063, 35.234303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.546083, 37.413185, 35.305695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704935, -0.683772, -0.188475,
		0.259567, -0.001409, -0.965724,
		0.660069, -0.729694, 0.178478,
		25.744104, 37.194275, 35.359238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.220352, 37.239090, 34.685112>,  <25.282055, 37.705063, 35.234303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.220352, 37.239090, 34.685112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.367857, 37.042797, 35.000885>,  <25.456360, 36.925022, 35.190350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.367857, 37.042797, 35.000885>,  <25.220352, 37.239090, 34.685112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.367857, 37.042797, 35.000885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761499, -0.646519, -0.046177,
		0.533042, -0.584122, -0.612101,
		0.368761, -0.490728, 0.789431,
		25.478485, 36.895580, 35.237713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.404005, 36.586407, 34.522854>,  <25.220352, 37.239090, 34.685112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.404005, 36.586407, 34.522854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.275465, 36.600418, 34.901379>,  <25.198341, 36.608826, 35.128494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.275465, 36.600418, 34.901379>,  <25.404005, 36.586407, 34.522854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.275465, 36.600418, 34.901379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647074, -0.737746, -0.192422,
		0.691398, -0.674169, 0.259741,
		-0.321348, 0.035031, 0.946313,
		25.179060, 36.610928, 35.185272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.596333, 36.081814, 35.033112>,  <25.404005, 36.586407, 34.522854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.596333, 36.081814, 35.033112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.225613, 36.173653, 35.151993>,  <25.003181, 36.228756, 35.223320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.225613, 36.173653, 35.151993>,  <25.596333, 36.081814, 35.033112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.225613, 36.173653, 35.151993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321627, -0.893824, -0.312467,
		0.193903, -0.385182, 0.902240,
		-0.926800, 0.229596, 0.297199,
		24.947573, 36.242531, 35.241154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.755325, 35.455750, 34.699738>,  <25.596333, 36.081814, 35.033112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.755325, 35.455750, 34.699738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.985929, 35.136616, 34.770275>,  <26.124292, 34.945137, 34.812599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.985929, 35.136616, 34.770275>,  <25.755325, 35.455750, 34.699738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.985929, 35.136616, 34.770275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782801, -0.601165, -0.160696,
		0.234221, -0.045400, -0.971123,
		0.576510, -0.797834, 0.176344,
		26.158882, 34.897266, 34.823177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.404013, 35.760429, 35.109852>,  <25.755325, 35.455750, 34.699738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.404013, 35.760429, 35.109852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.608389, 35.435627, 35.222694>,  <26.731014, 35.240746, 35.290398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.608389, 35.435627, 35.222694>,  <26.404013, 35.760429, 35.109852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.608389, 35.435627, 35.222694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535537, -0.557392, -0.634440,
		0.672413, 0.173085, -0.719655,
		0.510942, -0.812007, 0.282104,
		26.761671, 35.192024, 35.307327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.490494, 35.343204, 34.475994>,  <26.404013, 35.760429, 35.109852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.490494, 35.343204, 34.475994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.566957, 35.073570, 34.761391>,  <26.612835, 34.911789, 34.932629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.566957, 35.073570, 34.761391>,  <26.490494, 35.343204, 34.475994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.566957, 35.073570, 34.761391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444206, -0.707612, -0.549514,
		0.875294, -0.211894, -0.434697,
		0.191158, -0.674082, 0.713494,
		26.624306, 34.871346, 34.975437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.854364, 34.835464, 34.154209>,  <26.490494, 35.343204, 34.475994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.854364, 34.835464, 34.154209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.690161, 34.685635, 34.486755>,  <26.591639, 34.595737, 34.686283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.690161, 34.685635, 34.486755>,  <26.854364, 34.835464, 34.154209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.690161, 34.685635, 34.486755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356988, -0.772940, -0.524522,
		0.839072, -0.512110, 0.183580,
		-0.410509, -0.374576, 0.831370,
		26.567009, 34.573261, 34.736168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.988184, 34.111542, 34.171650>,  <26.854364, 34.835464, 34.154209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.988184, 34.111542, 34.171650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.647785, 34.180283, 34.370152>,  <26.443546, 34.221527, 34.489254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.647785, 34.180283, 34.370152>,  <26.988184, 34.111542, 34.171650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.647785, 34.180283, 34.370152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446040, -0.735328, -0.510236,
		0.277225, -0.655560, 0.702416,
		-0.850996, 0.171855, 0.496257,
		26.392487, 34.231838, 34.519028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.806847, 33.481365, 34.535473>,  <26.988184, 34.111542, 34.171650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.806847, 33.481365, 34.535473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.491917, 33.698326, 34.418224>,  <26.302959, 33.828503, 34.347878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.491917, 33.698326, 34.418224>,  <26.806847, 33.481365, 34.535473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.491917, 33.698326, 34.418224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368242, -0.795014, -0.482028,
		-0.494486, -0.271574, 0.825670,
		-0.787325, 0.542403, -0.293118,
		26.255718, 33.861046, 34.330288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.167583, 33.142216, 34.862396>,  <26.806847, 33.481365, 34.535473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.167583, 33.142216, 34.862396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.156000, 33.332951, 34.510990>,  <26.149050, 33.447392, 34.300148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.156000, 33.332951, 34.510990>,  <26.167583, 33.142216, 34.862396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.156000, 33.332951, 34.510990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255646, -0.853186, -0.454663,
		-0.966337, 0.211423, 0.146607,
		-0.028956, 0.476837, -0.878515,
		26.147314, 33.476002, 34.247437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.599369, 32.904526, 34.490467>,  <26.167583, 33.142216, 34.862396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.599369, 32.904526, 34.490467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.805771, 33.054958, 34.182621>,  <25.929611, 33.145218, 33.997913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.805771, 33.054958, 34.182621>,  <25.599369, 32.904526, 34.490467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.805771, 33.054958, 34.182621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285367, -0.771667, -0.568414,
		-0.807654, 0.512927, -0.290864,
		0.516005, 0.376079, -0.769613,
		25.960573, 33.167782, 33.951736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.087202, 33.095619, 33.919899>,  <25.599369, 32.904526, 34.490467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.087202, 33.095619, 33.919899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.444672, 33.011406, 33.761391>,  <25.659153, 32.960880, 33.666286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.444672, 33.011406, 33.761391>,  <25.087202, 33.095619, 33.919899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.444672, 33.011406, 33.761391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391157, -0.798233, -0.458061,
		-0.219879, 0.564359, -0.795708,
		0.893672, -0.210529, -0.396268,
		25.712772, 32.948246, 33.642509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.034426, 32.915123, 33.102791>,  <25.087202, 33.095619, 33.919899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.034426, 32.915123, 33.102791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.303995, 32.727295, 33.330940>,  <25.465736, 32.614597, 33.467831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.303995, 32.727295, 33.330940>,  <25.034426, 32.915123, 33.102791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.303995, 32.727295, 33.330940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423232, -0.878173, -0.222906,
		0.605558, -0.091179, -0.790561,
		0.673924, -0.469573, 0.570374,
		25.506172, 32.586422, 33.502052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.290283, 32.477108, 32.667141>,  <25.034426, 32.915123, 33.102791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.290283, 32.477108, 32.667141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.304790, 32.346191, 33.044830>,  <25.313494, 32.267639, 33.271446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.304790, 32.346191, 33.044830>,  <25.290283, 32.477108, 32.667141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.304790, 32.346191, 33.044830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426539, -0.859530, -0.281555,
		0.903742, -0.392538, -0.170776,
		0.036266, -0.327295, 0.944226,
		25.315670, 32.248001, 33.328098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.598391, 32.317562, 32.015526>,  <25.290283, 32.477108, 32.667141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.598391, 32.317562, 32.015526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.753683, 32.261593, 32.379875>,  <25.846859, 32.228012, 32.598484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.753683, 32.261593, 32.379875>,  <25.598391, 32.317562, 32.015526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.753683, 32.261593, 32.379875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038688, -0.985060, -0.167807,
		0.920749, 0.100388, -0.377020,
		0.388233, -0.139922, 0.910877,
		25.870153, 32.219616, 32.653137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.235720, 31.897062, 31.941509>,  <25.598391, 32.317562, 32.015526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.235720, 31.897062, 31.941509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.123024, 31.846756, 32.321995>,  <26.055407, 31.816572, 32.550285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.123024, 31.846756, 32.321995>,  <26.235720, 31.897062, 31.941509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.123024, 31.846756, 32.321995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018472, -0.991899, -0.125676,
		0.959313, -0.017837, 0.281782,
		-0.281741, -0.125768, 0.951212,
		26.038502, 31.809025, 32.607357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.653786, 31.313633, 32.176773>,  <26.235720, 31.897062, 31.941509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.653786, 31.313633, 32.176773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.319395, 31.350836, 32.393105>,  <26.118761, 31.373158, 32.522903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.319395, 31.350836, 32.393105>,  <26.653786, 31.313633, 32.176773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.319395, 31.350836, 32.393105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219625, -0.959867, -0.174415,
		0.502901, -0.264586, 0.822852,
		-0.835976, 0.093005, 0.540828,
		26.068602, 31.378736, 32.555351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.688715, 30.743568, 32.641006>,  <26.653786, 31.313633, 32.176773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.688715, 30.743568, 32.641006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.325764, 30.875923, 32.537331>,  <26.107992, 30.955336, 32.475124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.325764, 30.875923, 32.537331>,  <26.688715, 30.743568, 32.641006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.325764, 30.875923, 32.537331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228528, -0.905924, -0.356478,
		-0.352757, -0.264229, 0.897633,
		-0.907379, 0.330884, -0.259187,
		26.053551, 30.975189, 32.459576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.016693, 30.418791, 32.511547>,  <26.688715, 30.743568, 32.641006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.016693, 30.418791, 32.511547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.873781, 30.456120, 32.883278>,  <25.788034, 30.478516, 33.106316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.873781, 30.456120, 32.883278>,  <26.016693, 30.418791, 32.511547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.873781, 30.456120, 32.883278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133905, 0.989835, -0.047916,
		-0.924348, 0.107322, -0.366146,
		-0.357281, 0.093320, 0.929323,
		25.766596, 30.484116, 33.162075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.367775, 30.789183, 32.550125>,  <26.016693, 30.418791, 32.511547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.367775, 30.789183, 32.550125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.631804, 30.825975, 32.848343>,  <25.790220, 30.848051, 33.027275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.631804, 30.825975, 32.848343>,  <25.367775, 30.789183, 32.550125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.631804, 30.825975, 32.848343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161828, 0.951760, -0.260700,
		-0.733563, 0.292732, 0.613346,
		0.660073, 0.091983, 0.745548,
		25.829826, 30.853571, 33.072006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.148226, 31.395823, 33.101620>,  <25.367775, 30.789183, 32.550125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.148226, 31.395823, 33.101620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.542818, 31.337036, 33.072628>,  <25.779573, 31.301765, 33.055233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.542818, 31.337036, 33.072628>,  <25.148226, 31.395823, 33.101620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.542818, 31.337036, 33.072628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149814, 0.988075, 0.035554,
		0.066394, -0.045933, 0.996736,
		0.986483, -0.146964, -0.072484,
		25.838762, 31.292948, 33.050884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.645285, 31.493986, 33.797680>,  <25.148226, 31.395823, 33.101620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.645285, 31.493986, 33.797680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.787455, 31.592346, 33.436970>,  <25.872757, 31.651361, 33.220543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.787455, 31.592346, 33.436970>,  <25.645285, 31.493986, 33.797680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.787455, 31.592346, 33.436970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143528, 0.938975, 0.312612,
		0.923620, -0.240540, 0.298441,
		0.355424, 0.245900, -0.901780,
		25.894083, 31.666117, 33.166435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.214846, 31.844646, 33.933193>,  <25.645285, 31.493986, 33.797680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.214846, 31.844646, 33.933193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.089052, 31.969360, 33.574554>,  <26.013577, 32.044189, 33.359371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.089052, 31.969360, 33.574554>,  <26.214846, 31.844646, 33.933193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.089052, 31.969360, 33.574554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250398, 0.938315, 0.238463,
		0.915642, -0.149514, -0.373156,
		-0.314485, 0.311785, -0.896599,
		25.994707, 32.062897, 33.305576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.808985, 32.268265, 33.492958>,  <26.214846, 31.844646, 33.933193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.808985, 32.268265, 33.492958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.449516, 32.393875, 33.370464>,  <26.233835, 32.469242, 33.296967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.449516, 32.393875, 33.370464>,  <26.808985, 32.268265, 33.492958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.449516, 32.393875, 33.370464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188981, 0.907248, 0.375748,
		0.395826, 0.279801, -0.874662,
		-0.898670, 0.314025, -0.306236,
		26.179914, 32.488083, 33.278595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.895067, 32.872265, 33.175034>,  <26.808985, 32.268265, 33.492958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.895067, 32.872265, 33.175034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.508200, 32.884087, 33.276001>,  <26.276079, 32.891178, 33.336582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.508200, 32.884087, 33.276001>,  <26.895067, 32.872265, 33.175034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.508200, 32.884087, 33.276001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082084, 0.976306, 0.200219,
		-0.240520, 0.214365, -0.946677,
		-0.967167, 0.029550, 0.252417,
		26.218050, 32.892952, 33.351727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.749128, 33.524971, 32.975353>,  <26.895067, 32.872265, 33.175034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.749128, 33.524971, 32.975353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.487606, 33.427338, 33.261837>,  <26.330692, 33.368755, 33.433727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.487606, 33.427338, 33.261837>,  <26.749128, 33.524971, 32.975353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.487606, 33.427338, 33.261837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055203, 0.928632, 0.366874,
		-0.754647, 0.279401, -0.593669,
		-0.653805, -0.244088, 0.716213,
		26.291464, 33.354111, 33.476700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.266323, 34.049252, 33.050117>,  <26.749128, 33.524971, 32.975353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.266323, 34.049252, 33.050117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.221909, 33.874493, 33.407169>,  <26.195259, 33.769638, 33.621403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.221909, 33.874493, 33.407169>,  <26.266323, 34.049252, 33.050117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.221909, 33.874493, 33.407169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038085, 0.895656, 0.443114,
		-0.993086, 0.083198, -0.082813,
		-0.111038, -0.436897, 0.892632,
		26.188597, 33.743423, 33.674957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.847738, 34.481758, 33.273914>,  <26.266323, 34.049252, 33.050117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.847738, 34.481758, 33.273914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.001198, 34.285206, 33.586674>,  <26.093273, 34.167274, 33.774330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.001198, 34.285206, 33.586674>,  <25.847738, 34.481758, 33.273914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.001198, 34.285206, 33.586674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181531, 0.870295, 0.457858,
		-0.905462, -0.033717, 0.423086,
		0.383647, -0.491376, 0.781898,
		26.116291, 34.137794, 33.821243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.204256, 34.343987, 33.833031>,  <25.847738, 34.481758, 33.273914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.204256, 34.343987, 33.833031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.892265, 34.093903, 33.822052>,  <24.705070, 33.943851, 33.815464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.892265, 34.093903, 33.822052>,  <25.204256, 34.343987, 33.833031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.892265, 34.093903, 33.822052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460018, -0.602530, 0.652181,
		-0.424289, 0.496058, 0.757566,
		-0.779976, -0.625207, -0.027451,
		24.658272, 33.906342, 33.813816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.167328, 34.386707, 34.604965>,  <25.204256, 34.343987, 33.833031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.167328, 34.386707, 34.604965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.416918, 34.087814, 34.696445>,  <25.566671, 33.908478, 34.751331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.416918, 34.087814, 34.696445>,  <25.167328, 34.386707, 34.604965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.416918, 34.087814, 34.696445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595772, 0.644273, 0.479549,
		-0.505678, -0.162974, 0.847189,
		0.623976, -0.747229, 0.228699,
		25.604111, 33.863647, 34.765057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.427624, 34.281738, 35.380959>,  <25.167328, 34.386707, 34.604965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.427624, 34.281738, 35.380959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.717787, 34.200047, 35.118027>,  <25.891884, 34.151031, 34.960270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.717787, 34.200047, 35.118027>,  <25.427624, 34.281738, 35.380959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.717787, 34.200047, 35.118027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615295, 0.620463, 0.486249,
		0.308540, -0.757177, 0.575748,
		0.725407, -0.204228, -0.657325,
		25.935410, 34.138779, 34.920830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.116318, 34.021339, 35.779190>,  <25.427624, 34.281738, 35.380959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.116318, 34.021339, 35.779190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.228575, 34.206795, 35.443027>,  <26.295929, 34.318069, 35.241329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.228575, 34.206795, 35.443027>,  <26.116318, 34.021339, 35.779190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.228575, 34.206795, 35.443027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663261, 0.539220, 0.518967,
		0.693776, -0.703051, -0.156186,
		0.280641, 0.463639, -0.840404,
		26.312767, 34.345886, 35.190907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.767076, 33.864475, 35.802364>,  <26.116318, 34.021339, 35.779190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.767076, 33.864475, 35.802364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.695738, 34.206604, 35.607788>,  <26.652935, 34.411880, 35.491043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.695738, 34.206604, 35.607788>,  <26.767076, 33.864475, 35.802364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.695738, 34.206604, 35.607788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788873, 0.419768, 0.448859,
		0.588109, -0.303687, -0.749601,
		-0.178346, 0.855318, -0.486440,
		26.642235, 34.463200, 35.461857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.443798, 34.139706, 35.714138>,  <26.767076, 33.864475, 35.802364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.443798, 34.139706, 35.714138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.207497, 34.453358, 35.638088>,  <27.065716, 34.641548, 35.592461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.207497, 34.453358, 35.638088>,  <27.443798, 34.139706, 35.714138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.207497, 34.453358, 35.638088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774355, 0.617195, 0.139446,
		0.226687, -0.064844, -0.971807,
		-0.590752, 0.784134, -0.190122,
		27.030272, 34.688599, 35.581051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.741425, 34.555683, 35.271385>,  <27.443798, 34.139706, 35.714138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.741425, 34.555683, 35.271385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.510656, 34.795578, 35.493191>,  <27.372196, 34.939514, 35.626274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.510656, 34.795578, 35.493191>,  <27.741425, 34.555683, 35.271385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.510656, 34.795578, 35.493191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795177, 0.567565, 0.213456,
		-0.186704, 0.564080, -0.804335,
		-0.576919, 0.599735, 0.554510,
		27.337580, 34.975498, 35.659542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.685522, 35.303513, 35.106159>,  <27.741425, 34.555683, 35.271385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.685522, 35.303513, 35.106159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.635723, 35.250435, 35.499481>,  <27.605843, 35.218590, 35.735474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.635723, 35.250435, 35.499481>,  <27.685522, 35.303513, 35.106159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.635723, 35.250435, 35.499481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768706, 0.613709, 0.180146,
		-0.627369, 0.778301, 0.025597,
		-0.124499, -0.132694, 0.983307,
		27.598373, 35.210625, 35.794472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.678734, 35.977570, 35.529709>,  <27.685522, 35.303513, 35.106159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.678734, 35.977570, 35.529709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.831892, 35.692112, 35.764351>,  <27.923786, 35.520836, 35.905136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.831892, 35.692112, 35.764351>,  <27.678734, 35.977570, 35.529709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.831892, 35.692112, 35.764351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757583, 0.605949, 0.242682,
		-0.528641, 0.351479, 0.772659,
		0.382894, -0.713644, 0.586604,
		27.946760, 35.478020, 35.940331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.956713, 36.273254, 36.194851>,  <27.678734, 35.977570, 35.529709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.956713, 36.273254, 36.194851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.173920, 35.953480, 36.092056>,  <28.304243, 35.761616, 36.030380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.173920, 35.953480, 36.092056>,  <27.956713, 36.273254, 36.194851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.173920, 35.953480, 36.092056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828233, 0.459434, 0.320860,
		-0.138437, -0.387077, 0.911596,
		0.543015, -0.799432, -0.256987,
		28.336824, 35.713650, 36.014961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.461142, 36.244549, 35.703331>,  <27.956713, 36.273254, 36.194851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.461142, 36.244549, 35.703331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.362900, 36.628838, 35.755013>,  <28.303955, 36.859409, 35.786022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.362900, 36.628838, 35.755013>,  <28.461142, 36.244549, 35.703331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.362900, 36.628838, 35.755013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902219, 0.275297, -0.331982,
		-0.354512, 0.035032, -0.934395,
		-0.245606, 0.960721, 0.129202,
		28.289217, 36.917053, 35.793774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.323181, 36.690315, 35.044273>,  <28.461142, 36.244549, 35.703331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.323181, 36.690315, 35.044273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.479034, 36.869347, 35.366234>,  <28.572546, 36.976765, 35.559410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.479034, 36.869347, 35.366234>,  <28.323181, 36.690315, 35.044273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.479034, 36.869347, 35.366234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893138, 0.029598, -0.448808,
		-0.224700, 0.893755, -0.388216,
		0.389634, 0.447577, 0.804898,
		28.595924, 37.003620, 35.607704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.595655, 37.363823, 34.863815>,  <28.323181, 36.690315, 35.044273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.595655, 37.363823, 34.863815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.803852, 37.229313, 35.177761>,  <28.928770, 37.148605, 35.366127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.803852, 37.229313, 35.177761>,  <28.595655, 37.363823, 34.863815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.803852, 37.229313, 35.177761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846761, 0.084945, -0.525147,
		0.109924, 0.937925, 0.328958,
		0.520492, -0.336275, 0.784861,
		28.959999, 37.128429, 35.413219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.184731, 37.844852, 34.966820>,  <28.595655, 37.363823, 34.863815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.184731, 37.844852, 34.966820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.269945, 37.466099, 35.063175>,  <29.321074, 37.238846, 35.120987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.269945, 37.466099, 35.063175>,  <29.184731, 37.844852, 34.966820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.269945, 37.466099, 35.063175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696978, -0.025502, -0.716639,
		0.684716, 0.320564, 0.654524,
		0.213037, -0.946884, 0.240888,
		29.333857, 37.182034, 35.135441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.881598, 37.744122, 35.276020>,  <29.184731, 37.844852, 34.966820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.881598, 37.744122, 35.276020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.727886, 37.443935, 35.060936>,  <29.635660, 37.263824, 34.931885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.727886, 37.443935, 35.060936>,  <29.881598, 37.744122, 35.276020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.727886, 37.443935, 35.060936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481826, 0.333791, -0.810202,
		0.787512, -0.570424, 0.233326,
		-0.384277, -0.750466, -0.537709,
		29.612602, 37.218796, 34.899624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352337, 37.788036, 34.762459>,  <29.881598, 37.744122, 35.276020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352337, 37.788036, 34.762459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042353, 37.560726, 34.651825>,  <29.856363, 37.424339, 34.585445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042353, 37.560726, 34.651825>,  <30.352337, 37.788036, 34.762459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042353, 37.560726, 34.651825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251428, 0.124297, -0.959862,
		0.579848, -0.813394, 0.046557,
		-0.774958, -0.568279, -0.276583,
		29.809864, 37.390244, 34.568851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.504930, 37.015484, 34.449821>,  <30.352337, 37.788036, 34.762459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.504930, 37.015484, 34.449821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.209938, 37.239391, 34.298676>,  <30.032944, 37.373737, 34.207989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.209938, 37.239391, 34.298676>,  <30.504930, 37.015484, 34.449821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.209938, 37.239391, 34.298676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437938, -0.029563, -0.898519,
		-0.514134, -0.828121, -0.223343,
		-0.737480, 0.559770, -0.377865,
		29.988693, 37.407322, 34.185318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.371199, 36.819424, 33.850025>,  <30.504930, 37.015484, 34.449821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.371199, 36.819424, 33.850025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.273169, 37.207214, 33.852760>,  <30.214350, 37.439888, 33.854401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.273169, 37.207214, 33.852760>,  <30.371199, 36.819424, 33.850025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.273169, 37.207214, 33.852760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250765, 0.070197, -0.965500,
		-0.936512, -0.234907, -0.260315,
		-0.245076, 0.969480, 0.006834,
		30.199646, 37.498058, 33.854809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.894762, 36.971832, 33.330254>,  <30.371199, 36.819424, 33.850025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.894762, 36.971832, 33.330254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.131313, 37.282688, 33.416351>,  <30.273243, 37.469200, 33.468010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.131313, 37.282688, 33.416351>,  <29.894762, 36.971832, 33.330254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.131313, 37.282688, 33.416351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231917, 0.091732, -0.968401,
		-0.772327, 0.622607, -0.125984,
		0.591376, 0.777140, 0.215240,
		30.308725, 37.515831, 33.480923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.729259, 37.401722, 32.812805>,  <29.894762, 36.971832, 33.330254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.729259, 37.401722, 32.812805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.074982, 37.554256, 32.943989>,  <30.282415, 37.645779, 33.022697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.074982, 37.554256, 32.943989>,  <29.729259, 37.401722, 32.812805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074982, 37.554256, 32.943989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333381, 0.053887, -0.941251,
		-0.376608, 0.922863, -0.080556,
		0.864305, 0.381339, 0.327960,
		30.334272, 37.668659, 33.042377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.883360, 37.772247, 32.299614>,  <29.729259, 37.401722, 32.812805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.883360, 37.772247, 32.299614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.225994, 37.700581, 32.493176>,  <30.431574, 37.657581, 32.609314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.225994, 37.700581, 32.493176>,  <29.883360, 37.772247, 32.299614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.225994, 37.700581, 32.493176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490367, -0.009310, -0.871466,
		0.160641, 0.983775, 0.079882,
		0.856583, -0.179164, 0.483906,
		30.482969, 37.646832, 32.638348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.348125, 38.302074, 32.098747>,  <29.883360, 37.772247, 32.299614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.348125, 38.302074, 32.098747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.560511, 37.983196, 32.213680>,  <30.687943, 37.791870, 32.282639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.560511, 37.983196, 32.213680>,  <30.348125, 38.302074, 32.098747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.560511, 37.983196, 32.213680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371086, -0.086095, -0.924599,
		0.761821, 0.597555, 0.250114,
		0.530964, -0.797193, 0.287333,
		30.719799, 37.744038, 32.299881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.001186, 38.359131, 31.816099>,  <30.348125, 38.302074, 32.098747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.001186, 38.359131, 31.816099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.975740, 37.970181, 31.905935>,  <30.960472, 37.736809, 31.959837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.975740, 37.970181, 31.905935>,  <31.001186, 38.359131, 31.816099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.975740, 37.970181, 31.905935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351388, -0.232458, -0.906913,
		0.934066, 0.021223, 0.356469,
		-0.063616, -0.972375, 0.224589,
		30.956656, 37.678467, 31.973312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658924, 38.086704, 31.706522>,  <31.001186, 38.359131, 31.816099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658924, 38.086704, 31.706522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.397562, 37.788128, 31.656109>,  <31.240746, 37.608982, 31.625860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.397562, 37.788128, 31.656109>,  <31.658924, 38.086704, 31.706522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.397562, 37.788128, 31.656109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365635, -0.165409, -0.915942,
		0.662853, -0.644563, 0.381005,
		-0.653404, -0.746444, -0.126033,
		31.201540, 37.564194, 31.618299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962900, 37.722530, 31.228504>,  <31.658924, 38.086704, 31.706522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962900, 37.722530, 31.228504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.603405, 37.547165, 31.231649>,  <31.387707, 37.441944, 31.233536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.603405, 37.547165, 31.231649>,  <31.962900, 37.722530, 31.228504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603405, 37.547165, 31.231649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200343, -0.426519, -0.882011,
		0.390039, -0.791123, 0.471162,
		-0.898739, -0.438413, 0.007863,
		31.333784, 37.415642, 31.234009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094635, 37.126591, 30.871134>,  <31.962900, 37.722530, 31.228504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094635, 37.126591, 30.871134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697773, 37.174015, 30.855246>,  <31.459656, 37.202469, 30.845713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697773, 37.174015, 30.855246>,  <32.094635, 37.126591, 30.871134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697773, 37.174015, 30.855246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004143, -0.348670, -0.937236,
		-0.124971, -0.929716, 0.346425,
		-0.992152, 0.118563, -0.039722,
		31.400127, 37.209583, 30.843328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005001, 36.748577, 30.376734>,  <32.094635, 37.126591, 30.871134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005001, 36.748577, 30.376734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.646917, 36.925056, 30.401865>,  <31.432068, 37.030945, 30.416945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.646917, 36.925056, 30.401865>,  <32.005001, 36.748577, 30.376734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.646917, 36.925056, 30.401865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217990, -0.310558, -0.925221,
		-0.388696, -0.841960, 0.374190,
		-0.895207, 0.441199, 0.062827,
		31.378355, 37.057415, 30.420713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.597712, 36.262222, 30.145176>,  <32.005001, 36.748577, 30.376734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.597712, 36.262222, 30.145176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418167, 36.615692, 30.092043>,  <31.310440, 36.827774, 30.060163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418167, 36.615692, 30.092043>,  <31.597712, 36.262222, 30.145176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418167, 36.615692, 30.092043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429022, -0.343503, -0.835432,
		-0.783877, -0.318005, 0.533301,
		-0.448861, 0.883673, -0.132833,
		31.283508, 36.880795, 30.052193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.040152, 36.219524, 29.673750>,  <31.597712, 36.262222, 30.145176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.040152, 36.219524, 29.673750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074778, 36.617096, 29.646582>,  <31.095554, 36.855640, 29.630281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074778, 36.617096, 29.646582>,  <31.040152, 36.219524, 29.673750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.074778, 36.617096, 29.646582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459868, -0.020612, -0.887748,
		-0.883757, 0.108084, 0.455292,
		0.086567, 0.993928, -0.067920,
		31.100748, 36.915276, 29.626205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.404802, 36.394161, 29.404339>,  <31.040152, 36.219524, 29.673750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.404802, 36.394161, 29.404339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.638834, 36.703865, 29.307842>,  <30.779253, 36.889687, 29.249945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.638834, 36.703865, 29.307842>,  <30.404802, 36.394161, 29.404339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.638834, 36.703865, 29.307842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505967, 0.116031, -0.854713,
		-0.633782, 0.622135, 0.459639,
		0.585079, 0.774264, -0.241242,
		30.814358, 36.936146, 29.235470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.894955, 36.898098, 29.108351>,  <30.404802, 36.394161, 29.404339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.894955, 36.898098, 29.108351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.259396, 37.023632, 29.001469>,  <30.478062, 37.098953, 28.937340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.259396, 37.023632, 29.001469>,  <29.894955, 36.898098, 29.108351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.259396, 37.023632, 29.001469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387957, 0.434013, -0.813094,
		-0.139204, 0.844477, 0.517185,
		0.911105, 0.313832, -0.267204,
		30.532726, 37.117783, 28.921307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.783062, 37.594795, 28.910618>,  <29.894955, 36.898098, 29.108351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.783062, 37.594795, 28.910618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.114487, 37.464333, 28.728582>,  <30.313341, 37.386055, 28.619362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.114487, 37.464333, 28.728582>,  <29.783062, 37.594795, 28.910618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.114487, 37.464333, 28.728582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344283, 0.344192, -0.873499,
		0.441534, 0.880429, 0.172895,
		0.828563, -0.326155, -0.455089,
		30.363056, 37.366486, 28.592056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.829033, 38.023590, 28.321278>,  <29.783062, 37.594795, 28.910618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.829033, 38.023590, 28.321278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083824, 37.729977, 28.227087>,  <30.236698, 37.553806, 28.170572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083824, 37.729977, 28.227087>,  <29.829033, 38.023590, 28.321278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.083824, 37.729977, 28.227087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154724, 0.177512, -0.971880,
		0.755196, 0.655499, -0.000502,
		0.636977, -0.734037, -0.235477,
		30.274918, 37.509766, 28.156445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.278822, 38.344227, 27.763414>,  <29.829033, 38.023590, 28.321278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.278822, 38.344227, 27.763414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.254309, 37.944992, 27.766748>,  <30.239601, 37.705452, 27.768749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.254309, 37.944992, 27.766748>,  <30.278822, 38.344227, 27.763414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.254309, 37.944992, 27.766748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043254, -0.005686, -0.999048,
		0.997183, -0.061583, -0.042823,
		-0.061281, -0.998086, 0.008333,
		30.235924, 37.645565, 27.769249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.584734, 38.153721, 27.100769>,  <30.278822, 38.344227, 27.763414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.584734, 38.153721, 27.100769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.387796, 37.827232, 27.221685>,  <30.269634, 37.631340, 27.294235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.387796, 37.827232, 27.221685>,  <30.584734, 38.153721, 27.100769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.387796, 37.827232, 27.221685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296178, -0.169469, -0.939978,
		0.818458, -0.552326, -0.158309,
		-0.492346, -0.816221, 0.302290,
		30.240093, 37.582367, 27.312372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.741455, 37.643642, 26.587309>,  <30.584734, 38.153721, 27.100769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.741455, 37.643642, 26.587309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.388174, 37.556465, 26.753418>,  <30.176205, 37.504158, 26.853085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.388174, 37.556465, 26.753418>,  <30.741455, 37.643642, 26.587309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.388174, 37.556465, 26.753418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422429, -0.014963, -0.906272,
		0.203730, -0.975847, -0.078850,
		-0.883203, -0.217943, 0.415275,
		30.123213, 37.491081, 26.878000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.519531, 37.258625, 26.122934>,  <30.741455, 37.643642, 26.587309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.519531, 37.258625, 26.122934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.190393, 37.334053, 26.337362>,  <29.992910, 37.379311, 26.466019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.190393, 37.334053, 26.337362>,  <30.519531, 37.258625, 26.122934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.190393, 37.334053, 26.337362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535541, 0.058205, -0.842501,
		-0.190069, -0.980334, 0.053091,
		-0.822843, 0.188566, 0.536072,
		29.943541, 37.390621, 26.498184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.983095, 36.848743, 25.868938>,  <30.519531, 37.258625, 26.122934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.983095, 36.848743, 25.868938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.773914, 37.127155, 26.065737>,  <29.648405, 37.294205, 26.183815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.773914, 37.127155, 26.065737>,  <29.983095, 36.848743, 25.868938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.773914, 37.127155, 26.065737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657328, 0.038136, -0.752639,
		-0.542624, -0.716997, 0.437578,
		-0.522953, 0.696032, 0.491996,
		29.617029, 37.335964, 26.213335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.363592, 36.557930, 25.936983>,  <29.983095, 36.848743, 25.868938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.363592, 36.557930, 25.936983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.272293, 36.945457, 25.975552>,  <29.217514, 37.177975, 25.998692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.272293, 36.945457, 25.975552>,  <29.363592, 36.557930, 25.936983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.272293, 36.945457, 25.975552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379660, 0.002626, -0.925122,
		-0.896527, -0.247764, 0.367222,
		-0.228248, 0.968817, 0.096420,
		29.203819, 37.236103, 26.004478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.610062, 36.671177, 25.834597>,  <29.363592, 36.557930, 25.936983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.610062, 36.671177, 25.834597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.772238, 37.026512, 25.748362>,  <28.869543, 37.239712, 25.696621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.772238, 37.026512, 25.748362>,  <28.610062, 36.671177, 25.834597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.772238, 37.026512, 25.748362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570240, 0.061458, -0.819176,
		-0.714453, 0.455064, 0.531482,
		0.405441, 0.888335, -0.215587,
		28.893869, 37.293015, 25.683685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.069576, 37.000946, 25.645355>,  <28.610062, 36.671177, 25.834597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.069576, 37.000946, 25.645355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.387728, 37.183273, 25.485554>,  <28.578619, 37.292667, 25.389673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.387728, 37.183273, 25.485554>,  <28.069576, 37.000946, 25.645355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.387728, 37.183273, 25.485554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421296, -0.058103, -0.905060,
		-0.435751, 0.888176, 0.145819,
		0.795381, 0.455814, -0.399503,
		28.626343, 37.320019, 25.365704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.805922, 37.302368, 25.059320>,  <28.069576, 37.000946, 25.645355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.805922, 37.302368, 25.059320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.192688, 37.349239, 24.968683>,  <28.424747, 37.377361, 24.914301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.192688, 37.349239, 24.968683>,  <27.805922, 37.302368, 25.059320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.192688, 37.349239, 24.968683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230204, 0.018090, -0.972974,
		-0.109909, 0.992947, 0.044466,
		0.966916, 0.117174, -0.226592,
		28.482763, 37.384392, 24.900705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.766804, 37.814293, 24.583361>,  <27.805922, 37.302368, 25.059320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.766804, 37.814293, 24.583361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.111570, 37.620922, 24.522173>,  <28.318430, 37.504898, 24.485460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.111570, 37.620922, 24.522173>,  <27.766804, 37.814293, 24.583361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.111570, 37.620922, 24.522173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234865, -0.113262, -0.965407,
		0.449379, 0.868026, -0.211163,
		0.861915, -0.483428, -0.152971,
		28.370144, 37.475895, 24.476282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.183840, 38.144684, 24.071789>,  <27.766804, 37.814293, 24.583361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.183840, 38.144684, 24.071789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304596, 37.763359, 24.068779>,  <28.377050, 37.534565, 24.066973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304596, 37.763359, 24.068779>,  <28.183840, 38.144684, 24.071789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.304596, 37.763359, 24.068779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282886, -0.082042, -0.955638,
		0.910405, 0.290628, -0.294447,
		0.301892, -0.953313, -0.007523,
		28.395164, 37.477364, 24.066523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.419807, 38.091309, 23.423128>,  <28.183840, 38.144684, 24.071789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.419807, 38.091309, 23.423128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.368071, 37.708721, 23.527767>,  <28.337029, 37.479168, 23.590551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.368071, 37.708721, 23.527767>,  <28.419807, 38.091309, 23.423128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.368071, 37.708721, 23.527767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179109, -0.236939, -0.954872,
		0.975290, -0.170360, -0.140667,
		-0.129343, -0.956471, 0.261597,
		28.329268, 37.421780, 23.606247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.810570, 37.674732, 22.977270>,  <28.419807, 38.091309, 23.423128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.810570, 37.674732, 22.977270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.511745, 37.456520, 23.129217>,  <28.332451, 37.325592, 23.220385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.511745, 37.456520, 23.129217>,  <28.810570, 37.674732, 22.977270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.511745, 37.456520, 23.129217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258856, -0.287605, -0.922105,
		0.612288, -0.787197, 0.073644,
		-0.747059, -0.545531, 0.379867,
		28.287628, 37.292862, 23.243177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.819662, 37.151569, 22.566404>,  <28.810570, 37.674732, 22.977270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.819662, 37.151569, 22.566404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.457699, 37.127144, 22.734886>,  <28.240520, 37.112488, 22.835976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.457699, 37.127144, 22.734886>,  <28.819662, 37.151569, 22.566404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.457699, 37.127144, 22.734886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425074, 0.080103, -0.901607,
		0.021318, -0.994914, -0.098443,
		-0.904907, -0.061066, 0.421205,
		28.186226, 37.108826, 22.861248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.554274, 36.595070, 22.134775>,  <28.819662, 37.151569, 22.566404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.554274, 36.595070, 22.134775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254618, 36.792599, 22.311375>,  <28.074823, 36.911118, 22.417336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254618, 36.792599, 22.311375>,  <28.554274, 36.595070, 22.134775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.254618, 36.792599, 22.311375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535343, -0.058818, -0.842584,
		-0.390123, -0.867568, 0.308430,
		-0.749141, 0.493827, 0.441501,
		28.029875, 36.940746, 22.443825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.948328, 36.407845, 21.682495>,  <28.554274, 36.595070, 22.134775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.948328, 36.407845, 21.682495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.794418, 36.721943, 21.876539>,  <27.702072, 36.910404, 21.992966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.794418, 36.721943, 21.876539>,  <27.948328, 36.407845, 21.682495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.794418, 36.721943, 21.876539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427009, 0.314510, -0.847789,
		-0.818298, -0.533355, 0.214293,
		-0.384775, 0.785249, 0.485111,
		27.678986, 36.957516, 22.022072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.291063, 36.467899, 21.374365>,  <27.948328, 36.407845, 21.682495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.291063, 36.467899, 21.374365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.387926, 36.819813, 21.537992>,  <27.446043, 37.030960, 21.636169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.387926, 36.819813, 21.537992>,  <27.291063, 36.467899, 21.374365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.387926, 36.819813, 21.537992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358200, 0.472897, -0.805023,
		-0.901695, 0.048413, 0.429654,
		0.242156, 0.879787, 0.409067,
		27.460573, 37.083748, 21.660713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.651106, 36.859982, 21.478930>,  <27.291063, 36.467899, 21.374365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.651106, 36.859982, 21.478930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.950336, 37.117767, 21.415625>,  <27.129875, 37.272438, 21.377642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.950336, 37.117767, 21.415625>,  <26.651106, 36.859982, 21.478930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.950336, 37.117767, 21.415625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611350, 0.576507, -0.542117,
		-0.258139, 0.502296, 0.825265,
		0.748074, 0.644468, -0.158260,
		27.174759, 37.311108, 21.368147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.358398, 37.478657, 21.304804>,  <26.651106, 36.859982, 21.478930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.358398, 37.478657, 21.304804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.734892, 37.582470, 21.218346>,  <26.960789, 37.644756, 21.166470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.734892, 37.582470, 21.218346>,  <26.358398, 37.478657, 21.304804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.734892, 37.582470, 21.218346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330780, 0.578960, -0.745245,
		-0.068275, 0.772948, 0.630786,
		0.941235, 0.259532, -0.216147,
		27.017262, 37.660328, 21.153502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.366013, 38.187534, 21.305527>,  <26.358398, 37.478657, 21.304804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.366013, 38.187534, 21.305527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.682949, 38.072037, 21.090559>,  <26.873112, 38.002739, 20.961578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.682949, 38.072037, 21.090559>,  <26.366013, 38.187534, 21.305527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.682949, 38.072037, 21.090559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142806, 0.768651, -0.623523,
		0.593126, 0.570791, 0.567801,
		0.792343, -0.288743, -0.537420,
		26.920652, 37.985413, 20.929333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.770100, 38.821140, 21.202818>,  <26.366013, 38.187534, 21.305527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.770100, 38.821140, 21.202818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.909763, 38.576981, 20.918423>,  <26.993563, 38.430485, 20.747786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.909763, 38.576981, 20.918423>,  <26.770100, 38.821140, 21.202818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.909763, 38.576981, 20.918423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006274, 0.760246, -0.649605,
		0.937042, 0.222356, 0.269278,
		0.349161, -0.610397, -0.710987,
		27.014511, 38.393860, 20.705126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.336399, 39.143150, 20.966228>,  <26.770100, 38.821140, 21.202818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.336399, 39.143150, 20.966228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.211765, 38.891552, 20.681332>,  <27.136986, 38.740593, 20.510393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.211765, 38.891552, 20.681332>,  <27.336399, 39.143150, 20.966228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.211765, 38.891552, 20.681332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079415, 0.729693, -0.679147,
		0.946894, -0.268174, -0.177409,
		-0.311583, -0.628991, -0.712240,
		27.118290, 38.702854, 20.467659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.793198, 39.275551, 20.459023>,  <27.336399, 39.143150, 20.966228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.793198, 39.275551, 20.459023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.478224, 39.092049, 20.294346>,  <27.289240, 38.981949, 20.195539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.478224, 39.092049, 20.294346>,  <27.793198, 39.275551, 20.459023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.478224, 39.092049, 20.294346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035875, 0.700877, -0.712380,
		0.615350, -0.546185, -0.568354,
		-0.787437, -0.458752, -0.411690,
		27.241993, 38.954422, 20.170837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.963306, 39.124924, 19.717569>,  <27.793198, 39.275551, 20.459023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.963306, 39.124924, 19.717569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.565914, 39.143383, 19.759268>,  <27.327478, 39.154457, 19.784286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.565914, 39.143383, 19.759268>,  <27.963306, 39.124924, 19.717569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.565914, 39.143383, 19.759268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033744, 0.754406, -0.655540,
		-0.108896, -0.654784, -0.747930,
		-0.993480, 0.046147, 0.104247,
		27.267870, 39.157227, 19.790543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.740416, 39.034786, 18.996319>,  <27.963306, 39.124924, 19.717569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.740416, 39.034786, 18.996319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455439, 39.209610, 19.215919>,  <27.284452, 39.314503, 19.347679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455439, 39.209610, 19.215919>,  <27.740416, 39.034786, 18.996319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.455439, 39.209610, 19.215919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231825, 0.591837, -0.772001,
		-0.662332, -0.677279, -0.320328,
		-0.712442, 0.437061, 0.549003,
		27.241707, 39.340729, 19.380621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.357962, 39.306175, 18.538521>,  <27.740416, 39.034786, 18.996319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.357962, 39.306175, 18.538521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.167219, 39.464657, 18.852369>,  <27.052774, 39.559746, 19.040678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.167219, 39.464657, 18.852369>,  <27.357962, 39.306175, 18.538521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.167219, 39.464657, 18.852369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345035, 0.736628, -0.581661,
		-0.808430, -0.548091, -0.214562,
		-0.476855, 0.396201, 0.784624,
		27.024162, 39.583515, 19.087757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.680025, 39.403252, 18.350721>,  <27.357962, 39.306175, 18.538521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.680025, 39.403252, 18.350721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.738403, 39.677258, 18.636227>,  <26.773430, 39.841660, 18.807529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.738403, 39.677258, 18.636227>,  <26.680025, 39.403252, 18.350721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.738403, 39.677258, 18.636227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408646, 0.698803, -0.587098,
		-0.900949, -0.205992, 0.381915,
		0.145946, 0.685013, 0.713763,
		26.782187, 39.882763, 18.850355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.024370, 39.799320, 18.488832>,  <26.680025, 39.403252, 18.350721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.024370, 39.799320, 18.488832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.313557, 40.063915, 18.568588>,  <26.487068, 40.222672, 18.616442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.313557, 40.063915, 18.568588>,  <26.024370, 39.799320, 18.488832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.313557, 40.063915, 18.568588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444336, 0.666181, -0.598973,
		-0.529041, 0.344442, 0.775549,
		0.722967, 0.661485, 0.199389,
		26.530447, 40.262360, 18.628405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.786814, 40.403027, 18.677780>,  <26.024370, 39.799320, 18.488832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.786814, 40.403027, 18.677780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.147087, 40.474541, 18.519384>,  <26.363251, 40.517448, 18.424347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.147087, 40.474541, 18.519384>,  <25.786814, 40.403027, 18.677780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.147087, 40.474541, 18.519384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402749, 0.685445, -0.606596,
		0.162981, 0.705835, 0.689373,
		0.900683, 0.178781, -0.395988,
		26.417292, 40.528175, 18.400587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.797567, 41.033073, 18.535210>,  <25.786814, 40.403027, 18.677780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.797567, 41.033073, 18.535210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.090490, 40.891819, 18.302309>,  <26.266245, 40.807064, 18.162569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.090490, 40.891819, 18.302309>,  <25.797567, 41.033073, 18.535210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.090490, 40.891819, 18.302309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279192, 0.624164, -0.729706,
		0.621108, 0.696930, 0.358487,
		0.732309, -0.353139, -0.582251,
		26.310183, 40.785877, 18.127634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.027077, 41.633011, 18.168585>,  <25.797567, 41.033073, 18.535210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.027077, 41.633011, 18.168585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.106665, 41.316410, 17.937439>,  <26.154417, 41.126450, 17.798752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.106665, 41.316410, 17.937439>,  <26.027077, 41.633011, 18.168585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.106665, 41.316410, 17.937439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235362, 0.533804, -0.812194,
		0.951323, 0.297610, -0.080079,
		0.198970, -0.791506, -0.577866,
		26.166355, 41.078957, 17.764080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.660776, 41.608086, 17.711412>,  <26.027077, 41.633011, 18.168585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.660776, 41.608086, 17.711412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.331274, 41.431309, 17.569359>,  <26.133574, 41.325241, 17.484127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.331274, 41.431309, 17.569359>,  <26.660776, 41.608086, 17.711412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.331274, 41.431309, 17.569359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135234, 0.761477, -0.633927,
		0.550583, -0.474174, -0.687035,
		-0.823753, -0.441941, -0.355132,
		26.084148, 41.298725, 17.462818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.367525, 41.899448, 17.481222>,  <26.660776, 41.608086, 17.711412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.367525, 41.899448, 17.481222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.105234, 42.112434, 17.695324>,  <26.947861, 42.240227, 17.823786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.105234, 42.112434, 17.695324>,  <27.367525, 41.899448, 17.481222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.105234, 42.112434, 17.695324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441625, -0.304510, 0.843944,
		0.612365, 0.789778, -0.035477,
		-0.655726, 0.532470, 0.535257,
		26.908516, 42.272175, 17.855902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.546284, 41.942516, 18.201273>,  <27.367525, 41.899448, 17.481222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.546284, 41.942516, 18.201273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.248125, 42.201313, 18.265511>,  <27.069229, 42.356590, 18.304052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.248125, 42.201313, 18.265511>,  <27.546284, 41.942516, 18.201273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.248125, 42.201313, 18.265511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235705, 0.030454, 0.971348,
		0.623559, 0.761892, -0.175199,
		-0.745398, 0.646988, 0.160592,
		27.024506, 42.395409, 18.313688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.743738, 42.548672, 18.543470>,  <27.546284, 41.942516, 18.201273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.743738, 42.548672, 18.543470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.360792, 42.488293, 18.641994>,  <27.131025, 42.452065, 18.701109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.360792, 42.488293, 18.641994>,  <27.743738, 42.548672, 18.543470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.360792, 42.488293, 18.641994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274090, -0.205257, 0.939545,
		-0.091269, 0.966997, 0.237880,
		-0.957363, -0.150952, 0.246311,
		27.073584, 42.443008, 18.715887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.664465, 42.961555, 19.166170>,  <27.743738, 42.548672, 18.543470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.664465, 42.961555, 19.166170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.452610, 42.626911, 19.110228>,  <27.325497, 42.426125, 19.076662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.452610, 42.626911, 19.110228>,  <27.664465, 42.961555, 19.166170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.452610, 42.626911, 19.110228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555189, -0.466577, 0.688528,
		-0.641287, 0.287022, 0.711596,
		-0.529637, -0.836615, -0.139858,
		27.293718, 42.375927, 19.068270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.887011, 43.270512, 19.151325>,  <27.664465, 42.961555, 19.166170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.887011, 43.270512, 19.151325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.631199, 42.964428, 19.180864>,  <26.477713, 42.780777, 19.198587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.631199, 42.964428, 19.180864>,  <26.887011, 43.270512, 19.151325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.631199, 42.964428, 19.180864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269848, -0.133499, 0.953604,
		-0.719850, 0.629785, 0.291867,
		-0.639529, -0.765212, 0.073847,
		26.439341, 42.734863, 19.203018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.371521, 43.309696, 19.756710>,  <26.887011, 43.270512, 19.151325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.371521, 43.309696, 19.756710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.464064, 42.930565, 19.668983>,  <26.519588, 42.703087, 19.616346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.464064, 42.930565, 19.668983>,  <26.371521, 43.309696, 19.756710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.464064, 42.930565, 19.668983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321649, -0.138235, 0.936714,
		-0.918159, -0.287257, 0.272886,
		0.231356, -0.947826, -0.219318,
		26.533470, 42.646217, 19.603188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.077127, 42.915634, 20.287319>,  <26.371521, 43.309696, 19.756710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.077127, 42.915634, 20.287319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.369141, 42.703587, 20.114796>,  <26.544350, 42.576359, 20.011282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.369141, 42.703587, 20.114796>,  <26.077127, 42.915634, 20.287319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.369141, 42.703587, 20.114796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429446, -0.135102, 0.892930,
		-0.531626, -0.837093, 0.129026,
		0.730034, -0.530115, -0.431310,
		26.588150, 42.544552, 19.985403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.243158, 42.211197, 20.640137>,  <26.077127, 42.915634, 20.287319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.243158, 42.211197, 20.640137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.566935, 42.355278, 20.454638>,  <26.761200, 42.441727, 20.343338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.566935, 42.355278, 20.454638>,  <26.243158, 42.211197, 20.640137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.566935, 42.355278, 20.454638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518749, -0.068578, 0.852172,
		0.275152, -0.930350, -0.242364,
		0.809439, 0.360203, -0.463748,
		26.809767, 42.463337, 20.315514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.670246, 41.954475, 21.050289>,  <26.243158, 42.211197, 20.640137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.670246, 41.954475, 21.050289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.914177, 42.195232, 20.844053>,  <27.060535, 42.339687, 20.720312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.914177, 42.195232, 20.844053>,  <26.670246, 41.954475, 21.050289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.914177, 42.195232, 20.844053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619047, 0.044458, 0.784094,
		0.494864, -0.797337, -0.345490,
		0.609828, 0.601894, -0.515590,
		27.097126, 42.375801, 20.689377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.357914, 41.649284, 21.025864>,  <26.670246, 41.954475, 21.050289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.357914, 41.649284, 21.025864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.393875, 42.042454, 20.961634>,  <27.415451, 42.278355, 20.923096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.393875, 42.042454, 20.961634>,  <27.357914, 41.649284, 21.025864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.393875, 42.042454, 20.961634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703105, 0.051550, 0.709215,
		0.705380, -0.176659, -0.686463,
		0.089902, 0.982921, -0.160573,
		27.420845, 42.337330, 20.913462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.068630, 41.894753, 21.047844>,  <27.357914, 41.649284, 21.025864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.068630, 41.894753, 21.047844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.842171, 42.216175, 21.121355>,  <27.706295, 42.409027, 21.165461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.842171, 42.216175, 21.121355>,  <28.068630, 41.894753, 21.047844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.842171, 42.216175, 21.121355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613292, 0.261652, 0.745260,
		0.550773, 0.534635, -0.640948,
		-0.566147, 0.803557, 0.183776,
		27.672327, 42.457241, 21.176489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.604496, 42.267532, 21.407410>,  <28.068630, 41.894753, 21.047844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.604496, 42.267532, 21.407410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.292955, 42.510372, 21.470419>,  <28.106031, 42.656078, 21.508224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.292955, 42.510372, 21.470419>,  <28.604496, 42.267532, 21.407410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.292955, 42.510372, 21.470419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406221, 0.296908, 0.864194,
		0.477885, 0.737069, -0.477866,
		-0.778852, 0.607104, 0.157525,
		28.059299, 42.692505, 21.517675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.854395, 42.958179, 21.498041>,  <28.604496, 42.267532, 21.407410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.854395, 42.958179, 21.498041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.508596, 42.894527, 21.688755>,  <28.301117, 42.856335, 21.803183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.508596, 42.894527, 21.688755>,  <28.854395, 42.958179, 21.498041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.508596, 42.894527, 21.688755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443926, 0.203161, 0.872729,
		-0.235743, 0.966128, -0.104989,
		-0.864497, -0.159132, 0.476783,
		28.249247, 42.846786, 21.831789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.726601, 43.528309, 21.833673>,  <28.854395, 42.958179, 21.498041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.726601, 43.528309, 21.833673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.499508, 43.256138, 22.019018>,  <28.363253, 43.092834, 22.130224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.499508, 43.256138, 22.019018>,  <28.726601, 43.528309, 21.833673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.499508, 43.256138, 22.019018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192916, 0.437225, 0.878418,
		-0.800290, 0.588096, -0.116962,
		-0.567732, -0.680425, 0.463360,
		28.329187, 43.052010, 22.158026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.487421, 43.938141, 22.367352>,  <28.726601, 43.528309, 21.833673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.487421, 43.938141, 22.367352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.431208, 43.557213, 22.475677>,  <28.397480, 43.328655, 22.540674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.431208, 43.557213, 22.475677>,  <28.487421, 43.938141, 22.367352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.431208, 43.557213, 22.475677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198556, 0.240866, 0.950031,
		-0.969962, 0.187282, 0.155239,
		-0.140532, -0.952318, 0.270817,
		28.389048, 43.271519, 22.556923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.134857, 43.987522, 22.988531>,  <28.487421, 43.938141, 22.367352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.134857, 43.987522, 22.988531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.285225, 43.617271, 23.005978>,  <28.375446, 43.395123, 23.016445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.285225, 43.617271, 23.005978>,  <28.134857, 43.987522, 22.988531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.285225, 43.617271, 23.005978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203446, 0.128363, 0.970635,
		-0.904043, -0.356007, 0.236569,
		0.375919, -0.925625, 0.043617,
		28.398001, 43.339584, 23.019062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.879299, 43.633568, 23.552513>,  <28.134857, 43.987522, 22.988531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.879299, 43.633568, 23.552513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.193485, 43.396725, 23.480450>,  <28.381996, 43.254620, 23.437212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.193485, 43.396725, 23.480450>,  <27.879299, 43.633568, 23.552513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.193485, 43.396725, 23.480450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166768, -0.077842, 0.982919,
		-0.596017, -0.802091, 0.037602,
		0.785463, -0.592107, -0.180158,
		28.429125, 43.219093, 23.426403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.804909, 43.051464, 23.997221>,  <27.879299, 43.633568, 23.552513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.804909, 43.051464, 23.997221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.177879, 42.977551, 23.873003>,  <28.401661, 42.933201, 23.798473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.177879, 42.977551, 23.873003>,  <27.804909, 43.051464, 23.997221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.177879, 42.977551, 23.873003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280143, -0.173198, 0.944205,
		-0.228261, -0.967397, -0.109728,
		0.932425, -0.184785, -0.310544,
		28.457607, 42.922115, 23.779840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.973698, 42.311848, 24.039639>,  <27.804909, 43.051464, 23.997221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.973698, 42.311848, 24.039639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.308529, 42.529556, 24.061777>,  <28.509428, 42.660183, 24.075060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.308529, 42.529556, 24.061777>,  <27.973698, 42.311848, 24.039639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.308529, 42.529556, 24.061777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185160, -0.377048, 0.907497,
		0.514796, -0.749399, -0.416397,
		0.837079, 0.544275, 0.055344,
		28.559652, 42.692841, 24.078381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.312683, 41.883739, 24.551313>,  <27.973698, 42.311848, 24.039639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.312683, 41.883739, 24.551313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.482632, 42.245007, 24.526720>,  <28.584600, 42.461765, 24.511965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.482632, 42.245007, 24.526720>,  <28.312683, 41.883739, 24.551313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.482632, 42.245007, 24.526720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254908, -0.054193, 0.965446,
		0.868624, -0.425860, -0.253249,
		0.424869, 0.903165, -0.061482,
		28.610092, 42.515957, 24.508276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.992508, 41.806847, 24.833639>,  <28.312683, 41.883739, 24.551313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.992508, 41.806847, 24.833639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.862194, 42.183441, 24.868202>,  <28.784006, 42.409397, 24.888941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.862194, 42.183441, 24.868202>,  <28.992508, 41.806847, 24.833639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.862194, 42.183441, 24.868202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073455, -0.065913, 0.995118,
		0.942585, 0.330544, -0.047683,
		-0.325787, 0.941486, 0.086408,
		28.764458, 42.465889, 24.894125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.423485, 42.168358, 25.202646>,  <28.992508, 41.806847, 24.833639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.423485, 42.168358, 25.202646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.099218, 42.400311, 25.235056>,  <28.904659, 42.539482, 25.254501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.099218, 42.400311, 25.235056>,  <29.423485, 42.168358, 25.202646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.099218, 42.400311, 25.235056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182554, 0.118839, 0.975987,
		0.556324, 0.805990, -0.202197,
		-0.810665, 0.579877, 0.081024,
		28.856018, 42.574272, 25.259363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.637342, 42.767395, 25.582872>,  <29.423485, 42.168358, 25.202646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.637342, 42.767395, 25.582872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.240322, 42.736843, 25.620850>,  <29.002110, 42.718513, 25.643635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.240322, 42.736843, 25.620850>,  <29.637342, 42.767395, 25.582872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.240322, 42.736843, 25.620850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080879, 0.169835, 0.982148,
		-0.091136, 0.982509, -0.162392,
		-0.992549, -0.076375, 0.094942,
		28.942558, 42.713932, 25.649332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.488338, 43.369972, 25.872887>,  <29.637342, 42.767395, 25.582872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.488338, 43.369972, 25.872887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.208481, 43.096104, 25.954596>,  <29.040567, 42.931782, 26.003620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.208481, 43.096104, 25.954596>,  <29.488338, 43.369972, 25.872887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.208481, 43.096104, 25.954596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032947, 0.254677, 0.966465,
		-0.713733, 0.682909, -0.155625,
		-0.699642, -0.684671, 0.204271,
		28.998589, 42.890701, 26.015877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.238852, 43.640377, 26.506474>,  <29.488338, 43.369972, 25.872887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.238852, 43.640377, 26.506474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.021313, 43.305916, 26.477945>,  <28.890789, 43.105240, 26.460829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.021313, 43.305916, 26.477945>,  <29.238852, 43.640377, 26.506474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.021313, 43.305916, 26.477945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145609, 0.010325, 0.989289,
		-0.826456, 0.548405, -0.127366,
		-0.543846, -0.836149, -0.071319,
		28.858158, 43.055073, 26.456549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.593826, 43.670460, 27.040134>,  <29.238852, 43.640377, 26.506474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.593826, 43.670460, 27.040134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.668642, 43.291325, 26.936890>,  <28.713531, 43.063843, 26.874943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.668642, 43.291325, 26.936890>,  <28.593826, 43.670460, 27.040134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.668642, 43.291325, 26.936890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076334, -0.247929, 0.965766,
		-0.979382, -0.200339, 0.025980,
		0.187039, -0.947837, -0.258110,
		28.724754, 43.006973, 26.859457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.290363, 43.422096, 27.529951>,  <28.593826, 43.670460, 27.040134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.290363, 43.422096, 27.529951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.523510, 43.125446, 27.397131>,  <28.663399, 42.947456, 27.317440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.523510, 43.125446, 27.397131>,  <28.290363, 43.422096, 27.529951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.523510, 43.125446, 27.397131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306902, -0.177448, 0.935053,
		-0.752381, -0.646918, 0.124178,
		0.582868, -0.741626, -0.332049,
		28.698370, 42.902958, 27.297516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.028624, 42.833675, 27.927805>,  <28.290363, 43.422096, 27.529951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.028624, 42.833675, 27.927805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.410063, 42.780689, 27.819654>,  <28.638926, 42.748898, 27.754765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.410063, 42.780689, 27.819654>,  <28.028624, 42.833675, 27.927805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.410063, 42.780689, 27.819654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233686, -0.240608, 0.942071,
		-0.189844, -0.961541, -0.198489,
		0.953598, -0.132462, -0.270377,
		28.696142, 42.740952, 27.738541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.210903, 42.205330, 28.275681>,  <28.028624, 42.833675, 27.927805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.210903, 42.205330, 28.275681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.565363, 42.355442, 28.166941>,  <28.778038, 42.445511, 28.101696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.565363, 42.355442, 28.166941>,  <28.210903, 42.205330, 28.275681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.565363, 42.355442, 28.166941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394036, -0.301482, 0.868242,
		0.243880, -0.876510, -0.415033,
		0.886148, 0.375285, -0.271851,
		28.831207, 42.468029, 28.085384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.667824, 41.680023, 28.298834>,  <28.210903, 42.205330, 28.275681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.667824, 41.680023, 28.298834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.908678, 41.999298, 28.306137>,  <29.053190, 42.190865, 28.310518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.908678, 41.999298, 28.306137>,  <28.667824, 41.680023, 28.298834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.908678, 41.999298, 28.306137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510237, -0.402299, 0.760141,
		0.614079, -0.448391, -0.649502,
		0.602135, 0.798186, 0.018257,
		29.089319, 42.238754, 28.311615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.359550, 41.378662, 28.269875>,  <28.667824, 41.680023, 28.298834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.359550, 41.378662, 28.269875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.349876, 41.741875, 28.437157>,  <29.344072, 41.959801, 28.537525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.349876, 41.741875, 28.437157>,  <29.359550, 41.378662, 28.269875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.349876, 41.741875, 28.437157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454181, -0.362684, 0.813744,
		0.890581, 0.209620, -0.403639,
		-0.024184, 0.908030, 0.418206,
		29.342621, 42.014282, 28.562618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.058100, 41.468899, 28.495588>,  <29.359550, 41.378662, 28.269875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.058100, 41.468899, 28.495588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.843891, 41.742031, 28.694372>,  <29.715366, 41.905910, 28.813643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.843891, 41.742031, 28.694372>,  <30.058100, 41.468899, 28.495588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.843891, 41.742031, 28.694372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479202, -0.238856, 0.844579,
		0.695402, 0.690432, -0.199299,
		-0.535520, 0.682826, 0.496957,
		29.683235, 41.946880, 28.843460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.530098, 41.718594, 28.960169>,  <30.058100, 41.468899, 28.495588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.530098, 41.718594, 28.960169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.186403, 41.865410, 29.102713>,  <29.980186, 41.953499, 29.188238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.186403, 41.865410, 29.102713>,  <30.530098, 41.718594, 28.960169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.186403, 41.865410, 29.102713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359625, -0.062058, 0.931031,
		0.363845, 0.928131, -0.078676,
		-0.859236, 0.367045, 0.356358,
		29.928633, 41.975525, 29.209620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.666039, 42.290096, 29.383718>,  <30.530098, 41.718594, 28.960169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.666039, 42.290096, 29.383718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.330341, 42.088917, 29.466394>,  <30.128923, 41.968208, 29.516001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.330341, 42.088917, 29.466394>,  <30.666039, 42.290096, 29.383718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.330341, 42.088917, 29.466394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347453, -0.203617, 0.915323,
		-0.418271, 0.839992, 0.345634,
		-0.839241, -0.502945, 0.206691,
		30.078569, 41.938034, 29.528402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.702301, 42.306683, 30.029818>,  <30.666039, 42.290096, 29.383718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.702301, 42.306683, 30.029818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.375694, 42.076160, 30.043530>,  <30.179729, 41.937847, 30.051756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.375694, 42.076160, 30.043530>,  <30.702301, 42.306683, 30.029818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.375694, 42.076160, 30.043530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228908, -0.268669, 0.935638,
		-0.529999, 0.771812, 0.351293,
		-0.816518, -0.576301, 0.034280,
		30.130739, 41.903271, 30.053814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.351845, 42.403702, 30.649467>,  <30.702301, 42.306683, 30.029818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.351845, 42.403702, 30.649467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.241783, 42.040466, 30.523190>,  <30.175745, 41.822525, 30.447422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.241783, 42.040466, 30.523190>,  <30.351845, 42.403702, 30.649467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.241783, 42.040466, 30.523190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227249, -0.380499, 0.896425,
		-0.934156, 0.174914, 0.311059,
		-0.275155, -0.908089, -0.315697,
		30.159237, 41.768040, 30.428480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.882816, 42.188568, 31.163204>,  <30.351845, 42.403702, 30.649467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.882816, 42.188568, 31.163204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.039780, 41.867577, 30.983404>,  <30.133957, 41.674984, 30.875525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.039780, 41.867577, 30.983404>,  <29.882816, 42.188568, 31.163204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.039780, 41.867577, 30.983404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176418, -0.413960, 0.893036,
		-0.902714, -0.429734, -0.020870,
		0.392408, -0.802474, -0.449501,
		30.157501, 41.626835, 30.848555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.650646, 41.647350, 31.534136>,  <29.882816, 42.188568, 31.163204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.650646, 41.647350, 31.534136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.927891, 41.433624, 31.340597>,  <30.094238, 41.305389, 31.224474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.927891, 41.433624, 31.340597>,  <29.650646, 41.647350, 31.534136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.927891, 41.433624, 31.340597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127099, -0.570128, 0.811665,
		-0.709537, -0.624071, -0.327251,
		0.693111, -0.534313, -0.483845,
		30.135824, 41.273331, 31.195444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.565081, 40.995701, 31.689049>,  <29.650646, 41.647350, 31.534136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.565081, 40.995701, 31.689049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.947762, 40.996445, 31.572626>,  <30.177370, 40.996891, 31.502771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.947762, 40.996445, 31.572626>,  <29.565081, 40.995701, 31.689049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.947762, 40.996445, 31.572626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230032, -0.617527, 0.752161,
		-0.178336, -0.786547, -0.591219,
		0.956703, 0.001862, -0.291058,
		30.234772, 40.997002, 31.485308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.710482, 40.292961, 31.808119>,  <29.565081, 40.995701, 31.689049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.710482, 40.292961, 31.808119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.045834, 40.507347, 31.768406>,  <30.247046, 40.635979, 31.744579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.045834, 40.507347, 31.768406>,  <29.710482, 40.292961, 31.808119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.045834, 40.507347, 31.768406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401605, -0.484217, 0.777334,
		0.368551, -0.691574, -0.621205,
		0.838382, 0.535966, -0.099281,
		30.297348, 40.668137, 31.738621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.289600, 39.833744, 31.702702>,  <29.710482, 40.292961, 31.808119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.289600, 39.833744, 31.702702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.449606, 40.179569, 31.824373>,  <30.545610, 40.387062, 31.897377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.449606, 40.179569, 31.824373>,  <30.289600, 39.833744, 31.702702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449606, 40.179569, 31.824373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436458, -0.471536, 0.766263,
		0.805911, -0.173755, -0.565965,
		0.400015, 0.864560, 0.304179,
		30.569611, 40.438938, 31.915627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.948948, 39.672714, 31.955008>,  <30.289600, 39.833744, 31.702702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.948948, 39.672714, 31.955008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.872084, 40.023479, 32.131233>,  <30.825966, 40.233940, 32.236969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.872084, 40.023479, 32.131233>,  <30.948948, 39.672714, 31.955008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872084, 40.023479, 32.131233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371422, -0.350548, 0.859745,
		0.908362, 0.328843, -0.258344,
		-0.192159, 0.876914, 0.440564,
		30.814436, 40.286552, 32.263401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.494577, 39.679878, 32.384895>,  <30.948948, 39.672714, 31.955008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.494577, 39.679878, 32.384895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235367, 39.946106, 32.532993>,  <31.079840, 40.105843, 32.621853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235367, 39.946106, 32.532993>,  <31.494577, 39.679878, 32.384895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.235367, 39.946106, 32.532993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379675, -0.139104, 0.914602,
		0.660234, 0.733257, -0.162557,
		-0.648026, 0.665570, 0.370241,
		31.040958, 40.145779, 32.644066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.825327, 40.081039, 32.925537>,  <31.494577, 39.679878, 32.384895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.825327, 40.081039, 32.925537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440289, 40.151783, 33.007637>,  <31.209265, 40.194229, 33.056896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440289, 40.151783, 33.007637>,  <31.825327, 40.081039, 32.925537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440289, 40.151783, 33.007637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187294, -0.113029, 0.975779,
		0.195773, 0.977725, 0.075677,
		-0.962597, 0.176857, 0.205250,
		31.151508, 40.204842, 33.069214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591354, 40.056313, 33.181973>,  <31.825327, 40.081039, 32.925537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591354, 40.056313, 33.181973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935326, 39.993233, 32.987793>,  <33.141708, 39.955383, 32.871284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935326, 39.993233, 32.987793>,  <32.591354, 40.056313, 33.181973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935326, 39.993233, 32.987793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275109, 0.657900, -0.701058,
		0.429932, 0.736409, 0.522361,
		0.859927, -0.157701, -0.485445,
		33.193302, 39.945923, 32.842159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838200, 40.703480, 32.986149>,  <32.591354, 40.056313, 33.181973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838200, 40.703480, 32.986149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996014, 40.437607, 32.732365>,  <33.090702, 40.278084, 32.580093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996014, 40.437607, 32.732365>,  <32.838200, 40.703480, 32.986149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996014, 40.437607, 32.732365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102545, 0.654304, -0.749247,
		0.913141, 0.360664, 0.189985,
		0.394534, -0.664687, -0.634456,
		33.114372, 40.238201, 32.542027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256317, 41.165081, 32.654224>,  <32.838200, 40.703480, 32.986149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256317, 41.165081, 32.654224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252064, 40.833652, 32.430309>,  <33.249512, 40.634796, 32.295959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252064, 40.833652, 32.430309>,  <33.256317, 41.165081, 32.654224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252064, 40.833652, 32.430309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019917, 0.559882, -0.828333,
		0.999745, 0.002343, -0.022456,
		-0.010632, -0.828569, -0.559786,
		33.248875, 40.585083, 32.262375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755093, 41.302330, 32.174473>,  <33.256317, 41.165081, 32.654224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755093, 41.302330, 32.174473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521027, 41.022640, 32.010197>,  <33.380589, 40.854824, 31.911633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521027, 41.022640, 32.010197>,  <33.755093, 41.302330, 32.174473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521027, 41.022640, 32.010197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148976, 0.405134, -0.902038,
		0.797113, -0.589023, -0.132902,
		-0.585165, -0.699227, -0.410688,
		33.345478, 40.812874, 31.886990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106735, 41.314816, 31.493536>,  <33.755093, 41.302330, 32.174473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106735, 41.314816, 31.493536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749802, 41.134914, 31.478258>,  <33.535641, 41.026974, 31.469091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749802, 41.134914, 31.478258>,  <34.106735, 41.314816, 31.493536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749802, 41.134914, 31.478258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198550, 0.467108, -0.861619,
		0.405354, -0.761272, -0.506116,
		-0.892337, -0.449750, -0.038194,
		33.482101, 40.999989, 31.466799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016918, 40.850128, 30.813791>,  <34.106735, 41.314816, 31.493536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016918, 40.850128, 30.813791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667301, 41.003563, 30.933060>,  <33.457531, 41.095623, 31.004622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667301, 41.003563, 30.933060>,  <34.016918, 40.850128, 30.813791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667301, 41.003563, 30.933060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169046, 0.335265, -0.926834,
		-0.455484, -0.860501, -0.228194,
		-0.874047, 0.383583, 0.298173,
		33.405087, 41.118637, 31.022511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677391, 40.955765, 30.301558>,  <34.016918, 40.850128, 30.813791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677391, 40.955765, 30.301558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364403, 41.122555, 30.486540>,  <33.176609, 41.222630, 30.597528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364403, 41.122555, 30.486540>,  <33.677391, 40.955765, 30.301558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364403, 41.122555, 30.486540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280793, 0.426599, -0.859749,
		-0.555780, -0.802585, -0.216718,
		-0.782473, 0.416979, 0.462455,
		33.129662, 41.247646, 30.625277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051689, 40.769348, 29.918777>,  <33.677391, 40.955765, 30.301558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051689, 40.769348, 29.918777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967514, 41.092476, 30.139009>,  <32.917007, 41.286354, 30.271149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967514, 41.092476, 30.139009>,  <33.051689, 40.769348, 29.918777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967514, 41.092476, 30.139009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410629, 0.438061, -0.799679,
		-0.887186, -0.394370, 0.239528,
		-0.210442, 0.807821, 0.550581,
		32.904381, 41.334824, 30.304184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330601, 40.961552, 29.794086>,  <33.051689, 40.769348, 29.918777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330601, 40.961552, 29.794086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529881, 41.285839, 29.917074>,  <32.649448, 41.480412, 29.990868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529881, 41.285839, 29.917074>,  <32.330601, 40.961552, 29.794086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529881, 41.285839, 29.917074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334951, 0.507030, -0.794184,
		-0.799755, 0.292672, 0.524152,
		0.498196, 0.810718, 0.307469,
		32.679340, 41.529053, 30.009315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800488, 41.509247, 29.724087>,  <32.330601, 40.961552, 29.794086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800488, 41.509247, 29.724087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155891, 41.691376, 29.746820>,  <32.369133, 41.800655, 29.760460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155891, 41.691376, 29.746820>,  <31.800488, 41.509247, 29.724087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155891, 41.691376, 29.746820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278458, 0.633483, -0.721914,
		-0.364708, 0.625602, 0.689644,
		0.888509, 0.455325, 0.056833,
		32.422443, 41.827972, 29.763870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666151, 42.205715, 29.629166>,  <31.800488, 41.509247, 29.724087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666151, 42.205715, 29.629166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.057549, 42.169731, 29.554916>,  <32.292389, 42.148140, 29.510366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.057549, 42.169731, 29.554916>,  <31.666151, 42.205715, 29.629166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057549, 42.169731, 29.554916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047308, 0.778017, -0.626459,
		0.200775, 0.621768, 0.757030,
		0.978494, -0.089964, -0.185621,
		32.351097, 42.142742, 29.499229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955477, 42.904926, 29.654827>,  <31.666151, 42.205715, 29.629166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955477, 42.904926, 29.654827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.211063, 42.685123, 29.439508>,  <32.364414, 42.553242, 29.310316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.211063, 42.685123, 29.439508>,  <31.955477, 42.904926, 29.654827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.211063, 42.685123, 29.439508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081219, 0.744065, -0.663152,
		0.764936, 0.380011, 0.520062,
		0.638966, -0.549508, -0.538298,
		32.402752, 42.520271, 29.278019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398560, 43.388142, 29.398382>,  <31.955477, 42.904926, 29.654827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398560, 43.388142, 29.398382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465290, 43.068249, 29.167700>,  <32.505329, 42.876312, 29.029289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465290, 43.068249, 29.167700>,  <32.398560, 43.388142, 29.398382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465290, 43.068249, 29.167700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091441, 0.569835, -0.816656,
		0.981737, 0.188975, 0.021935,
		0.166827, -0.799735, -0.576708,
		32.515339, 42.828327, 28.994688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877399, 43.546593, 28.837160>,  <32.398560, 43.388142, 29.398382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877399, 43.546593, 28.837160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696335, 43.214645, 28.706671>,  <32.587696, 43.015476, 28.628376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696335, 43.214645, 28.706671>,  <32.877399, 43.546593, 28.837160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696335, 43.214645, 28.706671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134138, 0.425062, -0.895170,
		0.881538, -0.361445, -0.303724,
		-0.452657, -0.829867, -0.326225,
		32.560539, 42.965687, 28.608803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079517, 43.433434, 28.096924>,  <32.877399, 43.546593, 28.837160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079517, 43.433434, 28.096924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769798, 43.182236, 28.128132>,  <32.583965, 43.031517, 28.146856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769798, 43.182236, 28.128132>,  <33.079517, 43.433434, 28.096924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769798, 43.182236, 28.128132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226413, 0.159791, -0.960835,
		0.590931, -0.761637, -0.265912,
		-0.774298, -0.627993, 0.078019,
		32.537510, 42.993839, 28.151537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208645, 43.036995, 27.562717>,  <33.079517, 43.433434, 28.096924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208645, 43.036995, 27.562717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818439, 43.000286, 27.642670>,  <32.584316, 42.978260, 27.690641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818439, 43.000286, 27.642670>,  <33.208645, 43.036995, 27.562717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818439, 43.000286, 27.642670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213792, 0.182289, -0.959721,
		0.051641, -0.978953, -0.197446,
		-0.975513, -0.091774, 0.199879,
		32.525787, 42.972755, 27.702633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931381, 42.626972, 27.005880>,  <33.208645, 43.036995, 27.562717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931381, 42.626972, 27.005880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628242, 42.831772, 27.167637>,  <32.446362, 42.954651, 27.264690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628242, 42.831772, 27.167637>,  <32.931381, 42.626972, 27.005880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628242, 42.831772, 27.167637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362744, 0.184534, -0.913435,
		-0.542299, -0.838932, 0.045876,
		-0.757845, 0.511996, 0.404390,
		32.400890, 42.985371, 27.288954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434856, 42.396908, 26.667999>,  <32.931381, 42.626972, 27.005880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434856, 42.396908, 26.667999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283653, 42.750793, 26.777103>,  <32.192932, 42.963123, 26.842566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283653, 42.750793, 26.777103>,  <32.434856, 42.396908, 26.667999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283653, 42.750793, 26.777103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427661, 0.094436, -0.898993,
		-0.821107, -0.456474, 0.342658,
		-0.378008, 0.884710, 0.272758,
		32.170250, 43.016205, 26.858931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715857, 42.384834, 26.482653>,  <32.434856, 42.396908, 26.667999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715857, 42.384834, 26.482653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837086, 42.765465, 26.503229>,  <31.909824, 42.993843, 26.515575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837086, 42.765465, 26.503229>,  <31.715857, 42.384834, 26.482653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837086, 42.765465, 26.503229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465516, 0.194933, -0.863305,
		-0.831529, 0.237700, 0.502054,
		0.303074, 0.951578, 0.051439,
		31.928007, 43.050938, 26.518661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.191586, 42.728897, 26.197746>,  <31.715857, 42.384834, 26.482653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.191586, 42.728897, 26.197746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492691, 42.991886, 26.184591>,  <31.673353, 43.149677, 26.176699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492691, 42.991886, 26.184591>,  <31.191586, 42.728897, 26.197746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492691, 42.991886, 26.184591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384609, 0.398708, -0.832531,
		-0.534252, 0.639347, 0.553001,
		0.752762, 0.657471, -0.032888,
		31.718519, 43.189129, 26.174725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.888723, 43.217876, 25.768982>,  <31.191586, 42.728897, 26.197746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.888723, 43.217876, 25.768982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269379, 43.337112, 25.798708>,  <31.497772, 43.408653, 25.816544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269379, 43.337112, 25.798708>,  <30.888723, 43.217876, 25.768982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269379, 43.337112, 25.798708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032663, 0.338706, -0.940325,
		-0.305474, 0.892424, 0.332063,
		0.951640, 0.298090, 0.074317,
		31.554871, 43.426540, 25.821003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840858, 43.980606, 25.692133>,  <30.888723, 43.217876, 25.768982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840858, 43.980606, 25.692133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193142, 43.817013, 25.596560>,  <31.404512, 43.718857, 25.539215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193142, 43.817013, 25.596560>,  <30.840858, 43.980606, 25.692133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193142, 43.817013, 25.596560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137789, 0.261405, -0.955344,
		0.453174, 0.874301, 0.173869,
		0.880708, -0.408980, -0.238931,
		31.457354, 43.694321, 25.524879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170069, 44.443562, 25.204365>,  <30.840858, 43.980606, 25.692133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170069, 44.443562, 25.204365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334789, 44.082375, 25.155258>,  <31.433620, 43.865662, 25.125793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334789, 44.082375, 25.155258>,  <31.170069, 44.443562, 25.204365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334789, 44.082375, 25.155258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106713, 0.086010, -0.990563,
		0.905004, 0.421015, -0.060940,
		0.411800, -0.902967, -0.122767,
		31.458330, 43.811485, 25.118427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676298, 44.431194, 24.712709>,  <31.170069, 44.443562, 25.204365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676298, 44.431194, 24.712709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.613258, 44.036194, 24.712402>,  <31.575434, 43.799194, 24.712217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.613258, 44.036194, 24.712402>,  <31.676298, 44.431194, 24.712709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613258, 44.036194, 24.712402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029768, -0.003972, -0.999549,
		0.987054, -0.157551, 0.030022,
		-0.157599, -0.987503, -0.000769,
		31.565979, 43.739944, 24.712172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973915, 44.237598, 24.078257>,  <31.676298, 44.431194, 24.712709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973915, 44.237598, 24.078257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740482, 43.923553, 24.161230>,  <31.600422, 43.735126, 24.211014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740482, 43.923553, 24.161230>,  <31.973915, 44.237598, 24.078257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740482, 43.923553, 24.161230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164909, -0.135542, -0.976951,
		0.795132, -0.604341, -0.050371,
		-0.583584, -0.785112, 0.207435,
		31.565407, 43.688019, 24.223461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051903, 43.696667, 23.522137>,  <31.973915, 44.237598, 24.078257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051903, 43.696667, 23.522137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703207, 43.579121, 23.678957>,  <31.493988, 43.508591, 23.773050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703207, 43.579121, 23.678957>,  <32.051903, 43.696667, 23.522137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703207, 43.579121, 23.678957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305513, -0.299541, -0.903846,
		0.383046, -0.907699, 0.171343,
		-0.871744, -0.293867, 0.392052,
		31.441685, 43.490959, 23.796574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964233, 43.229233, 23.164192>,  <32.051903, 43.696667, 23.522137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964233, 43.229233, 23.164192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587259, 43.276600, 23.289282>,  <31.361074, 43.305019, 23.364336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587259, 43.276600, 23.289282>,  <31.964233, 43.229233, 23.164192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587259, 43.276600, 23.289282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334138, -0.296842, -0.894560,
		-0.013101, -0.947556, 0.319321,
		-0.942433, 0.118417, 0.312725,
		31.304529, 43.312126, 23.383099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.616550, 42.636265, 23.014189>,  <31.964233, 43.229233, 23.164192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.616550, 42.636265, 23.014189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.325262, 42.907421, 23.054514>,  <31.150490, 43.070114, 23.078709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.325262, 42.907421, 23.054514>,  <31.616550, 42.636265, 23.014189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.325262, 42.907421, 23.054514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390393, -0.289407, -0.873977,
		-0.563284, -0.675804, 0.475395,
		-0.728220, 0.677888, 0.100811,
		31.106796, 43.110786, 23.084757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.017405, 42.310310, 22.727638>,  <31.616550, 42.636265, 23.014189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.017405, 42.310310, 22.727638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944757, 42.703110, 22.706854>,  <30.901169, 42.938789, 22.694384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944757, 42.703110, 22.706854>,  <31.017405, 42.310310, 22.727638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.944757, 42.703110, 22.706854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381627, -0.119083, -0.916613,
		-0.906298, -0.146645, 0.396383,
		-0.181619, 0.981995, -0.051961,
		30.890272, 42.997707, 22.691265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.368626, 42.381710, 22.447248>,  <31.017405, 42.310310, 22.727638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.368626, 42.381710, 22.447248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.557808, 42.726902, 22.376171>,  <30.671318, 42.934017, 22.333525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.557808, 42.726902, 22.376171>,  <30.368626, 42.381710, 22.447248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.557808, 42.726902, 22.376171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380811, 0.018348, -0.924471,
		-0.794541, 0.504901, 0.337311,
		0.472956, 0.862982, -0.177694,
		30.699694, 42.985798, 22.322863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.895681, 42.885258, 22.270777>,  <30.368626, 42.381710, 22.447248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.895681, 42.885258, 22.270777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.246548, 42.980190, 22.103802>,  <30.457067, 43.037151, 22.003616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.246548, 42.980190, 22.103802>,  <29.895681, 42.885258, 22.270777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.246548, 42.980190, 22.103802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419603, -0.043859, -0.906647,
		-0.233485, 0.970438, 0.061114,
		0.877165, 0.237332, -0.417439,
		30.509697, 43.051392, 21.978569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682749, 43.471859, 21.825529>,  <29.895681, 42.885258, 22.270777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682749, 43.471859, 21.825529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047535, 43.379562, 21.689835>,  <30.266407, 43.324184, 21.608418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047535, 43.379562, 21.689835>,  <29.682749, 43.471859, 21.825529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.047535, 43.379562, 21.689835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287093, 0.231776, -0.929440,
		0.293087, 0.945007, 0.145127,
		0.911964, -0.230742, -0.339235,
		30.321123, 43.310341, 21.588064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.075405, 44.139862, 21.350212>,  <29.682749, 43.471859, 21.825529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.075405, 44.139862, 21.350212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.246937, 43.785770, 21.278139>,  <30.349855, 43.573315, 21.234896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.246937, 43.785770, 21.278139>,  <30.075405, 44.139862, 21.350212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.246937, 43.785770, 21.278139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032536, 0.214459, -0.976191,
		0.902799, 0.412758, 0.120769,
		0.428831, -0.885233, -0.180184,
		30.375586, 43.520199, 21.224085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.442537, 44.294930, 20.785625>,  <30.075405, 44.139862, 21.350212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.442537, 44.294930, 20.785625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.424574, 43.895416, 20.777464>,  <30.413795, 43.655708, 20.772568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.424574, 43.895416, 20.777464>,  <30.442537, 44.294930, 20.785625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.424574, 43.895416, 20.777464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056454, 0.017853, -0.998245,
		0.997395, -0.045982, 0.055583,
		-0.044909, -0.998783, -0.020403,
		30.411100, 43.595783, 20.771343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.678047, 44.104012, 20.206799>,  <30.442537, 44.294930, 20.785625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.678047, 44.104012, 20.206799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.500023, 43.751308, 20.269312>,  <30.393208, 43.539688, 20.306820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.500023, 43.751308, 20.269312>,  <30.678047, 44.104012, 20.206799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.500023, 43.751308, 20.269312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135875, -0.106008, -0.985038,
		0.885132, -0.459638, -0.072629,
		-0.445062, -0.881757, 0.156284,
		30.366505, 43.486782, 20.316196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.969513, 43.707325, 19.681732>,  <30.678047, 44.104012, 20.206799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.969513, 43.707325, 19.681732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.636131, 43.515350, 19.791288>,  <30.436102, 43.400166, 19.857023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.636131, 43.515350, 19.791288>,  <30.969513, 43.707325, 19.681732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.636131, 43.515350, 19.791288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210928, -0.181816, -0.960444,
		0.510747, -0.858258, 0.050304,
		-0.833455, -0.479933, 0.273893,
		30.386095, 43.371372, 19.873457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006304, 43.115036, 19.421471>,  <30.969513, 43.707325, 19.681732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006304, 43.115036, 19.421471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.612226, 43.132923, 19.487680>,  <30.375780, 43.143654, 19.527407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.612226, 43.132923, 19.487680>,  <31.006304, 43.115036, 19.421471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.612226, 43.132923, 19.487680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170510, -0.154124, -0.973228,
		-0.018005, -0.987039, 0.159465,
		-0.985191, 0.044713, 0.165525,
		30.316669, 43.146339, 19.537338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.720776, 42.545891, 19.099634>,  <31.006304, 43.115036, 19.421471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.720776, 42.545891, 19.099634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.421875, 42.804150, 19.162560>,  <30.242535, 42.959106, 19.200314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.421875, 42.804150, 19.162560>,  <30.720776, 42.545891, 19.099634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.421875, 42.804150, 19.162560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375535, -0.214976, -0.901531,
		-0.548257, -0.732748, 0.403106,
		-0.747253, 0.645651, 0.157311,
		30.197699, 42.997845, 19.209753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.162773, 42.078819, 19.564745>,  <30.720776, 42.545891, 19.099634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.162773, 42.078819, 19.564745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.323446, 42.167614, 19.209358>,  <31.419849, 42.220890, 18.996126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.323446, 42.167614, 19.209358>,  <31.162773, 42.078819, 19.564745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.323446, 42.167614, 19.209358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910566, -0.200188, 0.361654,
		-0.097579, -0.954279, -0.282542,
		0.401681, 0.221984, -0.888468,
		31.443951, 42.234207, 18.942818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587650, 41.542706, 19.353409>,  <31.162773, 42.078819, 19.564745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587650, 41.542706, 19.353409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713758, 41.875977, 19.171673>,  <31.789423, 42.075939, 19.062632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713758, 41.875977, 19.171673>,  <31.587650, 41.542706, 19.353409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713758, 41.875977, 19.171673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889620, -0.092778, 0.447178,
		0.330424, -0.545174, -0.770458,
		0.315272, 0.833173, -0.454342,
		31.808340, 42.125927, 19.035370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184147, 41.330898, 18.941051>,  <31.587650, 41.542706, 19.353409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184147, 41.330898, 18.941051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192154, 41.720692, 19.030479>,  <32.196957, 41.954567, 19.084137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192154, 41.720692, 19.030479>,  <32.184147, 41.330898, 18.941051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192154, 41.720692, 19.030479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799523, -0.149862, 0.581639,
		0.600302, 0.167109, -0.782120,
		0.020013, 0.974482, 0.223570,
		32.198158, 42.013035, 19.097549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884884, 41.442108, 19.067698>,  <32.184147, 41.330898, 18.941051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884884, 41.442108, 19.067698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711102, 41.767406, 19.222553>,  <32.606834, 41.962585, 19.315466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711102, 41.767406, 19.222553>,  <32.884884, 41.442108, 19.067698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711102, 41.767406, 19.222553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715818, 0.050873, 0.696431,
		0.546677, 0.579688, -0.604240,
		-0.434452, 0.813249, 0.387140,
		32.580765, 42.011383, 19.338696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379364, 41.925285, 19.164049>,  <32.884884, 41.442108, 19.067698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379364, 41.925285, 19.164049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093311, 42.050652, 19.413961>,  <32.921680, 42.125874, 19.563910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093311, 42.050652, 19.413961>,  <33.379364, 41.925285, 19.164049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093311, 42.050652, 19.413961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636500, -0.077414, 0.767381,
		0.288878, 0.946455, -0.144129,
		-0.715134, 0.313417, 0.624782,
		32.878773, 42.144676, 19.601397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735466, 42.389755, 19.608845>,  <33.379364, 41.925285, 19.164049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735466, 42.389755, 19.608845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404491, 42.285469, 19.807795>,  <33.205906, 42.222897, 19.927164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404491, 42.285469, 19.807795>,  <33.735466, 42.389755, 19.608845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404491, 42.285469, 19.807795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503890, 0.046270, 0.862528,
		-0.247890, 0.964305, 0.093088,
		-0.827433, -0.260719, 0.497374,
		33.156261, 42.207253, 19.957006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819744, 42.755802, 20.282642>,  <33.735466, 42.389755, 19.608845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819744, 42.755802, 20.282642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552971, 42.461430, 20.329306>,  <33.392906, 42.284805, 20.357304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552971, 42.461430, 20.329306>,  <33.819744, 42.755802, 20.282642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552971, 42.461430, 20.329306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323057, -0.144512, 0.935281,
		-0.671444, 0.661455, 0.334127,
		-0.666931, -0.735931, 0.116656,
		33.352890, 42.240650, 20.364302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661819, 42.742516, 21.003462>,  <33.819744, 42.755802, 20.282642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661819, 42.742516, 21.003462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506584, 42.382500, 20.924149>,  <33.413441, 42.166489, 20.876560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506584, 42.382500, 20.924149>,  <33.661819, 42.742516, 21.003462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506584, 42.382500, 20.924149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203695, -0.293591, 0.933977,
		-0.898829, 0.322078, 0.297274,
		-0.388091, -0.900039, -0.198282,
		33.390156, 42.112488, 20.864664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271133, 42.533512, 21.482210>,  <33.661819, 42.742516, 21.003462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271133, 42.533512, 21.482210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347401, 42.174931, 21.322203>,  <33.393162, 41.959782, 21.226198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347401, 42.174931, 21.322203>,  <33.271133, 42.533512, 21.482210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347401, 42.174931, 21.322203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077509, -0.392473, 0.916491,
		-0.978590, -0.205749, -0.005348,
		0.190666, -0.896455, -0.400018,
		33.404602, 41.905994, 21.202198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844193, 42.140408, 21.873287>,  <33.271133, 42.533512, 21.482210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844193, 42.140408, 21.873287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092281, 41.878296, 21.700806>,  <33.241135, 41.721031, 21.597317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092281, 41.878296, 21.700806>,  <32.844193, 42.140408, 21.873287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092281, 41.878296, 21.700806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009868, -0.543145, 0.839581,
		-0.784364, -0.524982, -0.330405,
		0.620223, -0.655276, -0.431204,
		33.278347, 41.681713, 21.571444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.535290, 41.462196, 21.816595>,  <32.844193, 42.140408, 21.873287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.535290, 41.462196, 21.816595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933521, 41.428608, 21.833397>,  <33.172462, 41.408455, 21.843477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933521, 41.428608, 21.833397>,  <32.535290, 41.462196, 21.816595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933521, 41.428608, 21.833397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078066, -0.491799, 0.867202,
		-0.052158, -0.866651, -0.496181,
		0.995583, -0.083967, 0.042005,
		33.232197, 41.403419, 21.845999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704964, 40.806873, 22.126186>,  <32.535290, 41.462196, 21.816595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704964, 40.806873, 22.126186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066532, 40.974194, 22.161846>,  <33.283474, 41.074585, 22.183243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066532, 40.974194, 22.161846>,  <32.704964, 40.806873, 22.126186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066532, 40.974194, 22.161846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210423, -0.616426, 0.758776,
		0.372349, -0.667116, -0.645222,
		0.903924, 0.418299, 0.089149,
		33.337708, 41.099682, 22.188591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161209, 40.217155, 22.290733>,  <32.704964, 40.806873, 22.126186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161209, 40.217155, 22.290733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306168, 40.555679, 22.446903>,  <33.393143, 40.758793, 22.540606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306168, 40.555679, 22.446903>,  <33.161209, 40.217155, 22.290733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306168, 40.555679, 22.446903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152986, -0.467232, 0.870798,
		0.919383, -0.255843, -0.298796,
		0.362395, 0.846309, 0.390425,
		33.414886, 40.809570, 22.564032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583912, 39.978287, 22.814161>,  <33.161209, 40.217155, 22.290733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583912, 39.978287, 22.814161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569443, 40.368675, 22.900114>,  <33.560760, 40.602909, 22.951685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569443, 40.368675, 22.900114>,  <33.583912, 39.978287, 22.814161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569443, 40.368675, 22.900114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097666, -0.210541, 0.972694,
		0.994562, 0.056174, -0.087702,
		-0.036175, 0.975970, 0.214883,
		33.558590, 40.661465, 22.964579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116451, 40.035301, 23.345949>,  <33.583912, 39.978287, 22.814161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116451, 40.035301, 23.345949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894184, 40.366756, 23.373030>,  <33.760822, 40.565632, 23.389278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894184, 40.366756, 23.373030>,  <34.116451, 40.035301, 23.345949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894184, 40.366756, 23.373030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217565, 0.066335, 0.973789,
		0.802432, 0.555835, -0.217143,
		-0.555670, 0.828642, 0.067701,
		33.727482, 40.615349, 23.393339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471027, 40.507282, 23.795753>,  <34.116451, 40.035301, 23.345949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471027, 40.507282, 23.795753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090981, 40.630054, 23.773605>,  <33.862953, 40.703716, 23.760317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090981, 40.630054, 23.773605>,  <34.471027, 40.507282, 23.795753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090981, 40.630054, 23.773605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023550, 0.247628, 0.968569,
		0.310995, 0.918952, -0.242505,
		-0.950120, 0.306931, -0.055370,
		33.805946, 40.722134, 23.756994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441341, 41.201504, 24.092970>,  <34.471027, 40.507282, 23.795753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441341, 41.201504, 24.092970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052647, 41.108437, 24.108946>,  <33.819431, 41.052597, 24.118532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052647, 41.108437, 24.108946>,  <34.441341, 41.201504, 24.092970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052647, 41.108437, 24.108946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050548, 0.370343, 0.927519,
		-0.230594, 0.899284, -0.371636,
		-0.971736, -0.232666, 0.039942,
		33.761127, 41.038635, 24.120928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068516, 41.776196, 24.267725>,  <34.441341, 41.201504, 24.092970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068516, 41.776196, 24.267725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815685, 41.482250, 24.366072>,  <33.663986, 41.305882, 24.425079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815685, 41.482250, 24.366072>,  <34.068516, 41.776196, 24.267725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815685, 41.482250, 24.366072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147109, 0.425312, 0.893011,
		-0.760811, 0.528285, -0.376937,
		-0.632080, -0.734864, 0.245867,
		33.626060, 41.261791, 24.439831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418358, 42.084599, 24.526934>,  <34.068516, 41.776196, 24.267725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418358, 42.084599, 24.526934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484661, 41.722630, 24.683722>,  <33.524445, 41.505447, 24.777794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484661, 41.722630, 24.683722>,  <33.418358, 42.084599, 24.526934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484661, 41.722630, 24.683722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242415, 0.347881, 0.905657,
		-0.955907, -0.245141, -0.161702,
		0.165760, -0.904923, 0.391968,
		33.534389, 41.451153, 24.801311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296303, 42.143230, 25.273064>,  <33.418358, 42.084599, 24.526934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296303, 42.143230, 25.273064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451752, 41.774723, 25.279325>,  <33.545021, 41.553619, 25.283083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451752, 41.774723, 25.279325>,  <33.296303, 42.143230, 25.273064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451752, 41.774723, 25.279325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044943, 0.035925, 0.998343,
		-0.920301, -0.387273, 0.055366,
		0.388621, -0.921265, 0.015657,
		33.568336, 41.498344, 25.284023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000729, 41.810078, 25.874483>,  <33.296303, 42.143230, 25.273064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000729, 41.810078, 25.874483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289730, 41.553768, 25.770643>,  <33.463131, 41.399982, 25.708340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289730, 41.553768, 25.770643>,  <33.000729, 41.810078, 25.874483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289730, 41.553768, 25.770643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060547, -0.315401, 0.947025,
		-0.688709, -0.699949, -0.189082,
		0.722505, -0.640776, -0.259599,
		33.506481, 41.361534, 25.692764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782185, 41.253544, 26.119892>,  <33.000729, 41.810078, 25.874483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782185, 41.253544, 26.119892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181053, 41.247131, 26.090544>,  <33.420376, 41.243282, 26.072935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181053, 41.247131, 26.090544>,  <32.782185, 41.253544, 26.119892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181053, 41.247131, 26.090544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070036, -0.154141, 0.985564,
		-0.027111, -0.987919, -0.152582,
		0.997176, -0.016033, -0.073369,
		33.480206, 41.242321, 26.068533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964390, 40.585953, 26.293087>,  <32.782185, 41.253544, 26.119892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964390, 40.585953, 26.293087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296391, 40.799541, 26.357557>,  <33.495590, 40.927692, 26.396240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296391, 40.799541, 26.357557>,  <32.964390, 40.585953, 26.293087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296391, 40.799541, 26.357557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010990, -0.273257, 0.961878,
		0.557657, -0.800129, -0.220934,
		0.829999, 0.533970, 0.161177,
		33.545391, 40.959732, 26.405910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300293, 40.142990, 26.699642>,  <32.964390, 40.585953, 26.293087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300293, 40.142990, 26.699642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469517, 40.499310, 26.765982>,  <33.571049, 40.713100, 26.805784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469517, 40.499310, 26.765982>,  <33.300293, 40.142990, 26.699642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469517, 40.499310, 26.765982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263749, -0.296171, 0.917997,
		0.866867, -0.344624, -0.360244,
		0.423057, 0.890796, 0.165847,
		33.596436, 40.766548, 26.815737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888683, 40.016838, 26.960144>,  <33.300293, 40.142990, 26.699642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888683, 40.016838, 26.960144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837387, 40.388985, 27.097528>,  <33.806610, 40.612274, 27.179960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837387, 40.388985, 27.097528>,  <33.888683, 40.016838, 26.960144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837387, 40.388985, 27.097528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433231, -0.258978, 0.863274,
		0.892114, 0.259502, -0.369854,
		-0.128237, 0.930370, 0.343462,
		33.798916, 40.668095, 27.200567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476776, 40.113518, 27.408895>,  <33.888683, 40.016838, 26.960144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476776, 40.113518, 27.408895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257183, 40.430977, 27.513779>,  <34.125427, 40.621452, 27.576708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257183, 40.430977, 27.513779>,  <34.476776, 40.113518, 27.408895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257183, 40.430977, 27.513779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304184, -0.102491, 0.947084,
		0.778521, 0.599688, -0.185148,
		-0.548979, 0.793643, 0.262207,
		34.092491, 40.669071, 27.592442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937351, 40.628551, 27.661184>,  <34.476776, 40.113518, 27.408895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937351, 40.628551, 27.661184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.578236, 40.713024, 27.815781>,  <34.362766, 40.763706, 27.908539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.578236, 40.713024, 27.815781>,  <34.937351, 40.628551, 27.661184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578236, 40.713024, 27.815781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367215, -0.125556, 0.921623,
		0.243151, 0.969350, 0.035176,
		-0.897792, 0.211177, 0.386489,
		34.308899, 40.776379, 27.931726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968552, 41.255901, 28.077551>,  <34.937351, 40.628551, 27.661184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968552, 41.255901, 28.077551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.668297, 41.021343, 28.199335>,  <34.488144, 40.880608, 28.272406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.668297, 41.021343, 28.199335>,  <34.968552, 41.255901, 28.077551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668297, 41.021343, 28.199335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549783, -0.298762, 0.780051,
		-0.366453, 0.752919, 0.546649,
		-0.750633, -0.586391, 0.304460,
		34.443108, 40.845425, 28.290672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956432, 41.280949, 28.869183>,  <34.968552, 41.255901, 28.077551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956432, 41.280949, 28.869183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.709320, 40.981586, 28.772663>,  <34.561050, 40.801968, 28.714750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.709320, 40.981586, 28.772663>,  <34.956432, 41.280949, 28.869183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709320, 40.981586, 28.772663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331420, -0.526091, 0.783192,
		-0.713094, 0.403872, 0.573048,
		-0.617785, -0.748409, -0.241301,
		34.523983, 40.757065, 28.700274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564167, 41.006023, 29.516893>,  <34.956432, 41.280949, 28.869183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564167, 41.006023, 29.516893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533520, 40.702271, 29.258444>,  <34.515133, 40.520020, 29.103374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533520, 40.702271, 29.258444>,  <34.564167, 41.006023, 29.516893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533520, 40.702271, 29.258444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350758, -0.627133, 0.695466,
		-0.933327, -0.173351, 0.314405,
		-0.076614, -0.759378, -0.646124,
		34.510536, 40.474457, 29.064606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245754, 40.466423, 29.859016>,  <34.564167, 41.006023, 29.516893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245754, 40.466423, 29.859016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425995, 40.265846, 29.563580>,  <34.534138, 40.145500, 29.386316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425995, 40.265846, 29.563580>,  <34.245754, 40.466423, 29.859016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425995, 40.265846, 29.563580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388356, -0.634856, 0.667935,
		-0.803829, -0.587807, -0.091327,
		0.450597, -0.501439, -0.738594,
		34.561172, 40.115414, 29.342001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125961, 39.637280, 29.965954>,  <34.245754, 40.466423, 29.859016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125961, 39.637280, 29.965954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462540, 39.715607, 29.764509>,  <34.664486, 39.762604, 29.643642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462540, 39.715607, 29.764509>,  <34.125961, 39.637280, 29.965954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462540, 39.715607, 29.764509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492644, -0.660899, 0.566139,
		-0.221973, -0.724476, -0.652581,
		0.841445, 0.195823, -0.503611,
		34.714973, 39.774353, 29.613426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310417, 38.930244, 29.745392>,  <34.125961, 39.637280, 29.965954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310417, 38.930244, 29.745392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629986, 39.170429, 29.731768>,  <34.821728, 39.314541, 29.723593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629986, 39.170429, 29.731768>,  <34.310417, 38.930244, 29.745392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629986, 39.170429, 29.731768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552273, -0.710025, 0.436875,
		0.238145, -0.367841, -0.898877,
		0.798926, 0.600465, -0.034059,
		34.869663, 39.350567, 29.721550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953041, 38.560425, 29.496016>,  <34.310417, 38.930244, 29.745392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953041, 38.560425, 29.496016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102875, 38.893875, 29.658375>,  <35.192776, 39.093945, 29.755791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102875, 38.893875, 29.658375>,  <34.953041, 38.560425, 29.496016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102875, 38.893875, 29.658375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608301, -0.551340, 0.570959,
		0.699755, 0.033037, -0.713619,
		0.374584, 0.833626, 0.405899,
		35.215248, 39.143963, 29.780144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723419, 38.513958, 29.395420>,  <34.953041, 38.560425, 29.496016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723419, 38.513958, 29.395420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699745, 38.776630, 29.696157>,  <35.685539, 38.934235, 29.876600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699745, 38.776630, 29.696157>,  <35.723419, 38.513958, 29.395420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699745, 38.776630, 29.696157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592879, -0.582814, 0.555718,
		0.803113, 0.478645, -0.354835,
		-0.059189, 0.656678, 0.751845,
		35.681988, 38.973633, 29.921711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412598, 38.746994, 29.554676>,  <35.723419, 38.513958, 29.395420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412598, 38.746994, 29.554676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.197475, 38.815899, 29.884789>,  <36.068401, 38.857243, 30.082857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.197475, 38.815899, 29.884789>,  <36.412598, 38.746994, 29.554676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197475, 38.815899, 29.884789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552774, -0.667069, 0.499460,
		0.636558, 0.724807, 0.263533,
		-0.537806, 0.172261, 0.825282,
		36.036133, 38.867577, 30.132374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893246, 38.724773, 30.086132>,  <36.412598, 38.746994, 29.554676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893246, 38.724773, 30.086132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563431, 38.720001, 30.312405>,  <36.365543, 38.717136, 30.448168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563431, 38.720001, 30.312405>,  <36.893246, 38.724773, 30.086132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563431, 38.720001, 30.312405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525685, -0.385930, 0.758098,
		0.209269, 0.922451, 0.324486,
		-0.824537, -0.011931, 0.565682,
		36.316071, 38.716423, 30.482109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042313, 39.026505, 30.780184>,  <36.893246, 38.724773, 30.086132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042313, 39.026505, 30.780184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727921, 38.780041, 30.800480>,  <36.539284, 38.632160, 30.812658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727921, 38.780041, 30.800480>,  <37.042313, 39.026505, 30.780184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727921, 38.780041, 30.800480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444955, -0.506784, 0.738367,
		-0.429241, 0.602920, 0.672488,
		-0.785982, -0.616164, 0.050740,
		36.492126, 38.595192, 30.815702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963436, 38.902027, 31.471128>,  <37.042313, 39.026505, 30.780184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963436, 38.902027, 31.471128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767021, 38.590389, 31.315233>,  <36.649174, 38.403408, 31.221695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767021, 38.590389, 31.315233>,  <36.963436, 38.902027, 31.471128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767021, 38.590389, 31.315233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250680, -0.554837, 0.793294,
		-0.834294, 0.291834, 0.467747,
		-0.491033, -0.779095, -0.389740,
		36.619713, 38.356659, 31.198311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528267, 38.619041, 31.983513>,  <36.963436, 38.902027, 31.471128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528267, 38.619041, 31.983513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621689, 38.344597, 31.707916>,  <36.677742, 38.179932, 31.542559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621689, 38.344597, 31.707916>,  <36.528267, 38.619041, 31.983513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621689, 38.344597, 31.707916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483205, -0.533000, 0.694568,
		-0.843781, -0.495141, 0.207048,
		0.233552, -0.686110, -0.688990,
		36.691753, 38.138763, 31.501219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574032, 38.000080, 32.370483>,  <36.528267, 38.619041, 31.983513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574032, 38.000080, 32.370483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756737, 37.928352, 32.021950>,  <36.866360, 37.885315, 31.812830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756737, 37.928352, 32.021950>,  <36.574032, 38.000080, 32.370483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756737, 37.928352, 32.021950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494018, -0.763429, 0.416079,
		-0.739808, -0.620501, -0.260120,
		0.456761, -0.179315, -0.871330,
		36.893764, 37.874557, 31.760551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491554, 37.423786, 32.536884>,  <36.574032, 38.000080, 32.370483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491554, 37.423786, 32.536884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769531, 37.157902, 32.646591>,  <36.936317, 36.998371, 32.712414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769531, 37.157902, 32.646591>,  <36.491554, 37.423786, 32.536884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769531, 37.157902, 32.646591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083892, -0.303862, -0.949015,
		0.714155, 0.682520, -0.155403,
		0.694943, -0.664706, 0.274263,
		36.978016, 36.958488, 32.728870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169334, 37.575348, 32.287209>,  <36.491554, 37.423786, 32.536884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169334, 37.575348, 32.287209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.048969, 37.195118, 32.317833>,  <36.976749, 36.966980, 32.336208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.048969, 37.195118, 32.317833>,  <37.169334, 37.575348, 32.287209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048969, 37.195118, 32.317833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025868, -0.088388, -0.995750,
		0.953301, -0.297653, 0.051187,
		-0.300913, -0.950574, 0.076560,
		36.958694, 36.909946, 32.340801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642406, 37.055943, 31.956118>,  <37.169334, 37.575348, 32.287209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642406, 37.055943, 31.956118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255505, 36.954533, 31.951342>,  <37.023365, 36.893684, 31.948475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255505, 36.954533, 31.951342>,  <37.642406, 37.055943, 31.956118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255505, 36.954533, 31.951342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024904, 0.141625, -0.989607,
		0.252587, -0.956904, -0.143301,
		-0.967254, -0.253530, -0.011942,
		36.965328, 36.878475, 31.947760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530586, 36.503075, 31.421440>,  <37.642406, 37.055943, 31.956118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530586, 36.503075, 31.421440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180222, 36.684246, 31.487930>,  <36.970001, 36.792950, 31.527824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180222, 36.684246, 31.487930>,  <37.530586, 36.503075, 31.421440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180222, 36.684246, 31.487930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190297, -0.007729, -0.981696,
		-0.443354, -0.891513, 0.092960,
		-0.875913, 0.452929, 0.166226,
		36.917446, 36.820126, 31.537798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092884, 37.040298, 31.171667>,  <37.530586, 36.503075, 31.421440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092884, 37.040298, 31.171667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.472370, 37.063477, 31.047352>,  <38.700062, 37.077381, 30.972763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.472370, 37.063477, 31.047352>,  <38.092884, 37.040298, 31.171667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472370, 37.063477, 31.047352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234061, 0.789552, -0.567295,
		0.212513, 0.610942, 0.762619,
		0.948711, 0.057942, -0.310788,
		38.756985, 37.080860, 30.954115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397560, 37.717216, 31.323233>,  <38.092884, 37.040298, 31.171667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397560, 37.717216, 31.323233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.601318, 37.584873, 31.005478>,  <38.723572, 37.505466, 30.814825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.601318, 37.584873, 31.005478>,  <38.397560, 37.717216, 31.323233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601318, 37.584873, 31.005478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141072, 0.878538, -0.456366,
		0.848893, 0.344535, 0.400845,
		0.509391, -0.330858, -0.794389,
		38.754135, 37.485615, 30.767160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759617, 38.252365, 31.114361>,  <38.397560, 37.717216, 31.323233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759617, 38.252365, 31.114361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860756, 38.021255, 30.803944>,  <38.921440, 37.882587, 30.617693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860756, 38.021255, 30.803944>,  <38.759617, 38.252365, 31.114361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860756, 38.021255, 30.803944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052874, 0.792655, -0.607373,
		0.966061, 0.194604, 0.169870,
		0.252845, -0.577778, -0.776043,
		38.936611, 37.847923, 30.571131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168415, 38.643066, 30.777353>,  <38.759617, 38.252365, 31.114361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168415, 38.643066, 30.777353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074032, 38.374043, 30.496788>,  <39.017403, 38.212627, 30.328449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074032, 38.374043, 30.496788>,  <39.168415, 38.643066, 30.777353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074032, 38.374043, 30.496788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085470, 0.704633, -0.704405,
		0.967997, -0.226161, -0.108780,
		-0.235959, -0.672564, -0.701413,
		39.003242, 38.172272, 30.286364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746254, 38.686295, 30.240231>,  <39.168415, 38.643066, 30.777353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746254, 38.686295, 30.240231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.379772, 38.577763, 30.122280>,  <39.159882, 38.512646, 30.051510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.379772, 38.577763, 30.122280>,  <39.746254, 38.686295, 30.240231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379772, 38.577763, 30.122280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070435, 0.833468, -0.548060,
		0.394475, -0.481365, -0.782737,
		-0.916203, -0.271328, -0.294877,
		39.104912, 38.496365, 30.033817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730804, 38.946945, 29.601261>,  <39.746254, 38.686295, 30.240231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.730804, 38.946945, 29.601261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759380, 39.027130, 29.210424>,  <39.776527, 39.075241, 28.975922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759380, 39.027130, 29.210424>,  <39.730804, 38.946945, 29.601261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759380, 39.027130, 29.210424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253587, 0.951060, 0.176577,
		0.964671, 0.235163, 0.118781,
		0.071444, 0.200460, -0.977093,
		39.780815, 39.087269, 28.917295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639313, 38.244144, 29.255047>,  <39.730804, 38.946945, 29.601261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639313, 38.244144, 29.255047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248989, 38.158176, 29.271034>,  <39.014793, 38.106594, 29.280626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248989, 38.158176, 29.271034>,  <39.639313, 38.244144, 29.255047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248989, 38.158176, 29.271034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209570, 0.867676, -0.450797,
		0.062206, -0.448270, -0.891731,
		-0.975813, -0.214922, 0.039969,
		38.956245, 38.093700, 29.283026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378521, 38.542137, 28.582411>,  <39.639313, 38.244144, 29.255047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378521, 38.542137, 28.582411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079906, 38.463482, 28.836662>,  <38.900738, 38.416290, 28.989214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079906, 38.463482, 28.836662>,  <39.378521, 38.542137, 28.582411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079906, 38.463482, 28.836662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569315, 0.683198, -0.457297,
		-0.344340, -0.703260, -0.621976,
		-0.746532, -0.196634, 0.635629,
		38.855946, 38.404491, 29.027351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670982, 38.432869, 28.193689>,  <39.378521, 38.542137, 28.582411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670982, 38.432869, 28.193689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580441, 38.524906, 28.572281>,  <38.526115, 38.580128, 28.799437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580441, 38.524906, 28.572281>,  <38.670982, 38.432869, 28.193689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580441, 38.524906, 28.572281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561031, 0.763531, -0.319788,
		-0.796247, -0.603389, -0.043735,
		-0.226350, 0.230094, 0.946479,
		38.512535, 38.593933, 28.856224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865620, 38.614040, 28.297838>,  <38.670982, 38.432869, 28.193689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865620, 38.614040, 28.297838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.090961, 38.802269, 28.569485>,  <38.226166, 38.915207, 28.732473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.090961, 38.802269, 28.569485>,  <37.865620, 38.614040, 28.297838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090961, 38.802269, 28.569485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415061, 0.871897, -0.259847,
		-0.714396, -0.135490, 0.686499,
		0.563350, 0.470572, 0.679116,
		38.259968, 38.943439, 28.773220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375225, 39.107761, 28.616070>,  <37.865620, 38.614040, 28.297838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375225, 39.107761, 28.616070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752747, 39.238480, 28.635834>,  <37.979259, 39.316910, 28.647692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752747, 39.238480, 28.635834>,  <37.375225, 39.107761, 28.616070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752747, 39.238480, 28.635834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284737, 0.879852, -0.380506,
		-0.167822, 0.345053, 0.923458,
		0.943801, 0.326800, 0.049410,
		38.035889, 39.336521, 28.650656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248287, 39.763699, 28.707952>,  <37.375225, 39.107761, 28.616070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248287, 39.763699, 28.707952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646461, 39.783875, 28.675535>,  <37.885365, 39.795982, 28.656084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646461, 39.783875, 28.675535>,  <37.248287, 39.763699, 28.707952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646461, 39.783875, 28.675535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066030, 0.976962, -0.202941,
		0.068940, 0.207366, 0.975831,
		0.995433, 0.050443, -0.081044,
		37.945091, 39.799007, 28.651222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312187, 40.390522, 28.729633>,  <37.248287, 39.763699, 28.707952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312187, 40.390522, 28.729633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684425, 40.277622, 28.636398>,  <37.907768, 40.209881, 28.580458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684425, 40.277622, 28.636398>,  <37.312187, 40.390522, 28.729633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684425, 40.277622, 28.636398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195753, 0.921783, -0.334661,
		0.309315, 0.265805, 0.913056,
		0.930594, -0.282249, -0.233089,
		37.963604, 40.192947, 28.566471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792656, 40.824417, 29.234692>,  <37.312187, 40.390522, 28.729633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792656, 40.824417, 29.234692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972946, 40.703922, 28.898573>,  <38.081120, 40.631626, 28.696901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972946, 40.703922, 28.898573>,  <37.792656, 40.824417, 29.234692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972946, 40.703922, 28.898573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284993, 0.940636, -0.184345,
		0.845946, -0.156389, 0.509821,
		0.450727, -0.301241, -0.840297,
		38.108166, 40.613548, 28.646484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486988, 40.902603, 29.248510>,  <37.792656, 40.824417, 29.234692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486988, 40.902603, 29.248510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326702, 40.939587, 28.883900>,  <38.230530, 40.961777, 28.665134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326702, 40.939587, 28.883900>,  <38.486988, 40.902603, 29.248510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326702, 40.939587, 28.883900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336402, 0.940253, -0.052508,
		0.852210, -0.327680, -0.407877,
		-0.400714, 0.092463, -0.911526,
		38.206490, 40.967327, 28.610441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093033, 41.069408, 28.842148>,  <38.486988, 40.902603, 29.248510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093033, 41.069408, 28.842148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736446, 41.208061, 28.725441>,  <38.522495, 41.291252, 28.655416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736446, 41.208061, 28.725441>,  <39.093033, 41.069408, 28.842148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736446, 41.208061, 28.725441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286138, 0.930016, 0.230640,
		0.351298, 0.122121, -0.928265,
		-0.891468, 0.346635, -0.291769,
		38.469006, 41.312054, 28.637911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102184, 41.734764, 28.353825>,  <39.093033, 41.069408, 28.842148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102184, 41.734764, 28.353825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821011, 41.675961, 28.632185>,  <38.652306, 41.640678, 28.799200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821011, 41.675961, 28.632185>,  <39.102184, 41.734764, 28.353825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821011, 41.675961, 28.632185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202586, 0.896497, 0.394020,
		-0.681796, 0.417948, -0.600394,
		-0.702932, -0.147010, 0.695899,
		38.610130, 41.631859, 28.840954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417950, 42.190063, 28.161083>,  <39.102184, 41.734764, 28.353825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417950, 42.190063, 28.161083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382854, 42.066246, 27.782351>,  <38.361797, 41.991955, 27.555111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382854, 42.066246, 27.782351>,  <38.417950, 42.190063, 28.161083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382854, 42.066246, 27.782351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521859, -0.795343, 0.308372,
		-0.848508, 0.521166, -0.091759,
		-0.087734, -0.309541, -0.946830,
		38.356533, 41.973385, 27.498302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804981, 41.782921, 28.042412>,  <38.417950, 42.190063, 28.161083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804981, 41.782921, 28.042412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080822, 41.682465, 27.770712>,  <38.246326, 41.622192, 27.607693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080822, 41.682465, 27.770712>,  <37.804981, 41.782921, 28.042412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080822, 41.682465, 27.770712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151613, -0.967225, 0.203687,
		-0.708140, -0.037480, -0.705077,
		0.689602, -0.251138, -0.679249,
		38.287704, 41.607124, 27.566936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566307, 41.132118, 27.648556>,  <37.804981, 41.782921, 28.042412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566307, 41.132118, 27.648556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.965351, 41.155502, 27.663258>,  <38.204777, 41.169533, 27.672079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.965351, 41.155502, 27.663258>,  <37.566307, 41.132118, 27.648556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965351, 41.155502, 27.663258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045173, -0.955046, 0.292995,
		0.052233, -0.290635, -0.955407,
		0.997613, 0.058462, 0.036756,
		38.264633, 41.173042, 27.674284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077347, 40.557381, 27.318459>,  <37.566307, 41.132118, 27.648556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077347, 40.557381, 27.318459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275925, 40.678932, 27.643715>,  <38.395073, 40.751865, 27.838869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275925, 40.678932, 27.643715>,  <38.077347, 40.557381, 27.318459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275925, 40.678932, 27.643715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154694, -0.952701, 0.261592,
		0.854171, -0.004079, -0.519976,
		0.496449, 0.303881, 0.813139,
		38.424858, 40.770096, 27.887657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717068, 40.276962, 27.482420>,  <38.077347, 40.557381, 27.318459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717068, 40.276962, 27.482420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547813, 40.391541, 27.826260>,  <38.446262, 40.460289, 28.032562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547813, 40.391541, 27.826260>,  <38.717068, 40.276962, 27.482420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547813, 40.391541, 27.826260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005062, -0.949444, 0.313895,
		0.906054, 0.128467, 0.403190,
		-0.423132, 0.286446, 0.859597,
		38.420876, 40.477474, 28.084139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.061241, 39.804352, 27.965099>,  <38.717068, 40.276962, 27.482420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.061241, 39.804352, 27.965099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753784, 39.953640, 28.172905>,  <38.569309, 40.043213, 28.297588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753784, 39.953640, 28.172905>,  <39.061241, 39.804352, 27.965099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753784, 39.953640, 28.172905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032577, -0.833932, 0.550905,
		0.638852, 0.406523, 0.653151,
		-0.768639, 0.373224, 0.519516,
		38.523193, 40.065609, 28.328760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213295, 39.812935, 28.642738>,  <39.061241, 39.804352, 27.965099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213295, 39.812935, 28.642738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.813435, 39.802380, 28.643948>,  <38.573521, 39.796047, 28.644674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.813435, 39.802380, 28.643948>,  <39.213295, 39.812935, 28.642738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813435, 39.802380, 28.643948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022326, -0.772962, 0.634059,
		-0.014397, 0.633903, 0.773279,
		-0.999647, -0.026393, 0.003025,
		38.513542, 39.794460, 28.644855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064034, 39.962425, 29.293684>,  <39.213295, 39.812935, 28.642738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064034, 39.962425, 29.293684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753689, 39.761570, 29.140896>,  <38.567482, 39.641056, 29.049223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753689, 39.761570, 29.140896>,  <39.064034, 39.962425, 29.293684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753689, 39.761570, 29.140896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280147, -0.816667, 0.504553,
		-0.565298, 0.284453, 0.774290,
		-0.775858, -0.502138, -0.381972,
		38.520931, 39.610928, 29.026304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812981, 39.508976, 29.792442>,  <39.064034, 39.962425, 29.293684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812981, 39.508976, 29.792442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.644676, 39.335300, 29.473835>,  <38.543694, 39.231094, 29.282671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.644676, 39.335300, 29.473835>,  <38.812981, 39.508976, 29.792442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.644676, 39.335300, 29.473835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292551, -0.896057, 0.333909,
		-0.858704, -0.092525, 0.504050,
		-0.420762, -0.434190, -0.796516,
		38.518448, 39.205044, 29.234880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331764, 39.109112, 30.060843>,  <38.812981, 39.508976, 29.792442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331764, 39.109112, 30.060843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.429039, 38.958256, 29.703381>,  <38.487404, 38.867741, 29.488903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.429039, 38.958256, 29.703381>,  <38.331764, 39.109112, 30.060843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429039, 38.958256, 29.703381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297952, -0.847727, 0.438843,
		-0.923084, -0.372988, -0.093788,
		0.243190, -0.377145, -0.893656,
		38.501995, 38.845112, 29.435284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015541, 38.455093, 29.830238>,  <38.331764, 39.109112, 30.060843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015541, 38.455093, 29.830238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.368359, 38.487667, 29.644609>,  <38.580051, 38.507210, 29.533232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.368359, 38.487667, 29.644609>,  <38.015541, 38.455093, 29.830238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368359, 38.487667, 29.644609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291862, -0.867655, 0.402483,
		-0.369881, -0.490453, -0.789078,
		0.882046, 0.081431, -0.464074,
		38.632973, 38.512096, 29.505386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134304, 37.765594, 29.494158>,  <38.015541, 38.455093, 29.830238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134304, 37.765594, 29.494158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.482513, 37.946190, 29.572493>,  <38.691437, 38.054546, 29.619493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.482513, 37.946190, 29.572493>,  <38.134304, 37.765594, 29.494158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482513, 37.946190, 29.572493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240099, -0.736997, 0.631814,
		0.429587, -0.502987, -0.749973,
		0.870521, 0.451487, 0.195838,
		38.743671, 38.081635, 29.631245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697533, 37.312260, 29.396152>,  <38.134304, 37.765594, 29.494158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697533, 37.312260, 29.396152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.817623, 37.587360, 29.660536>,  <38.889679, 37.752419, 29.819166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.817623, 37.587360, 29.660536>,  <38.697533, 37.312260, 29.396152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817623, 37.587360, 29.660536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130766, -0.716057, 0.685684,
		0.944861, -0.119432, -0.304916,
		0.300230, 0.687749, 0.660957,
		38.907692, 37.793686, 29.858822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185596, 36.932293, 29.655859>,  <38.697533, 37.312260, 29.396152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185596, 36.932293, 29.655859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112209, 37.234051, 29.907965>,  <39.068176, 37.415104, 30.059227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112209, 37.234051, 29.907965>,  <39.185596, 36.932293, 29.655859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112209, 37.234051, 29.907965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168636, -0.607488, 0.776222,
		0.968453, 0.248698, -0.015761,
		-0.183470, 0.754392, 0.630263,
		39.057167, 37.460369, 30.097044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759510, 37.281849, 29.956198>,  <39.185596, 36.932293, 29.655859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759510, 37.281849, 29.956198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435722, 37.264133, 30.190393>,  <39.241451, 37.253506, 30.330912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435722, 37.264133, 30.190393>,  <39.759510, 37.281849, 29.956198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435722, 37.264133, 30.190393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457609, -0.672383, 0.581803,
		0.367906, 0.738877, 0.564541,
		-0.809469, -0.044290, 0.585490,
		39.192883, 37.250847, 30.366041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057598, 37.216888, 30.619511>,  <39.759510, 37.281849, 29.956198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057598, 37.216888, 30.619511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.671616, 37.170860, 30.713850>,  <39.440025, 37.143246, 30.770454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.671616, 37.170860, 30.713850>,  <40.057598, 37.216888, 30.619511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.671616, 37.170860, 30.713850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226147, -0.820558, 0.524921,
		0.133128, 0.559861, 0.817822,
		-0.964953, -0.115066, 0.235851,
		39.382130, 37.136341, 30.784605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051205, 37.165474, 31.316654>,  <40.057598, 37.216888, 30.619511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051205, 37.165474, 31.316654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727718, 36.978420, 31.173939>,  <39.533627, 36.866188, 31.088308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727718, 36.978420, 31.173939>,  <40.051205, 37.165474, 31.316654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727718, 36.978420, 31.173939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251311, -0.823126, 0.509222,
		-0.531814, 0.322149, 0.783194,
		-0.808713, -0.467637, -0.356790,
		39.485104, 36.838131, 31.066902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831062, 36.728264, 31.873835>,  <40.051205, 37.165474, 31.316654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831062, 36.728264, 31.873835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699303, 36.561527, 31.534956>,  <39.620247, 36.461487, 31.331629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699303, 36.561527, 31.534956>,  <39.831062, 36.728264, 31.873835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699303, 36.561527, 31.534956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278943, -0.900184, 0.334452,
		-0.902045, -0.126151, 0.412796,
		-0.329401, -0.416838, -0.847196,
		39.600483, 36.436478, 31.280798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365807, 36.105129, 32.011391>,  <39.831062, 36.728264, 31.873835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365807, 36.105129, 32.011391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565262, 36.097481, 31.664751>,  <39.684937, 36.092892, 31.456768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565262, 36.097481, 31.664751>,  <39.365807, 36.105129, 32.011391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565262, 36.097481, 31.664751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366321, -0.901442, 0.230676,
		-0.785599, -0.432477, -0.442490,
		0.498641, -0.019125, -0.866597,
		39.714855, 36.091743, 31.404772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288368, 35.453659, 31.525309>,  <39.365807, 36.105129, 32.011391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288368, 35.453659, 31.525309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650188, 35.620045, 31.487865>,  <39.867279, 35.719875, 31.465399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650188, 35.620045, 31.487865>,  <39.288368, 35.453659, 31.525309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650188, 35.620045, 31.487865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425419, -0.865856, 0.263272,
		0.028459, -0.277966, -0.960169,
		0.904549, 0.415967, -0.093610,
		39.921555, 35.744835, 31.459782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623161, 34.986938, 31.117832>,  <39.288368, 35.453659, 31.525309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623161, 34.986938, 31.117832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872536, 35.192322, 31.353695>,  <40.022160, 35.315552, 31.495213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872536, 35.192322, 31.353695>,  <39.623161, 34.986938, 31.117832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872536, 35.192322, 31.353695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321836, -0.855822, 0.404956,
		0.712569, -0.062690, -0.698796,
		0.623431, 0.513457, 0.589657,
		40.059566, 35.346359, 31.530592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341431, 34.704479, 31.024601>,  <39.623161, 34.986938, 31.117832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341431, 34.704479, 31.024601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314362, 34.890160, 31.377857>,  <40.298119, 35.001568, 31.589811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314362, 34.890160, 31.377857>,  <40.341431, 34.704479, 31.024601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314362, 34.890160, 31.377857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566638, -0.710672, 0.416973,
		0.821183, 0.528639, -0.214940,
		-0.067676, 0.464205, 0.883139,
		40.294060, 35.029423, 31.642799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.016869, 34.831539, 31.339079>,  <40.341431, 34.704479, 31.024601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.016869, 34.831539, 31.339079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764862, 34.838795, 31.649626>,  <40.613659, 34.843147, 31.835955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764862, 34.838795, 31.649626>,  <41.016869, 34.831539, 31.339079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764862, 34.838795, 31.649626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626808, -0.578323, 0.522163,
		0.458464, 0.815606, 0.352982,
		-0.630017, 0.018141, 0.776369,
		40.575855, 34.844238, 31.882536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.255047, 34.920464, 32.045620>,  <41.016869, 34.831539, 31.339079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.255047, 34.920464, 32.045620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.937439, 34.682102, 31.997570>,  <40.746876, 34.539085, 31.968740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.937439, 34.682102, 31.997570>,  <41.255047, 34.920464, 32.045620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.937439, 34.682102, 31.997570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477385, -0.733598, 0.483671,
		-0.376343, 0.326700, 0.866967,
		-0.794021, -0.595904, -0.120123,
		40.699234, 34.503330, 31.961533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065632, 34.725964, 32.733742>,  <41.255047, 34.920464, 32.045620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.065632, 34.725964, 32.733742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.921288, 34.470791, 32.461617>,  <40.834679, 34.317688, 32.298340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.921288, 34.470791, 32.461617>,  <41.065632, 34.725964, 32.733742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.921288, 34.470791, 32.461617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615713, -0.710856, 0.339972,
		-0.700482, -0.296194, 0.649303,
		-0.360863, -0.637928, -0.680313,
		40.813030, 34.279411, 32.257523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041969, 34.024876, 33.139240>,  <41.065632, 34.725964, 32.733742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.041969, 34.024876, 33.139240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.073242, 33.972927, 32.743862>,  <41.092007, 33.941757, 32.506638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.073242, 33.972927, 32.743862>,  <41.041969, 34.024876, 33.139240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.073242, 33.972927, 32.743862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708551, -0.690234, 0.146738,
		-0.701315, -0.711835, 0.038055,
		0.078187, -0.129874, -0.988443,
		41.096699, 33.933964, 32.447330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.942616, 33.249744, 32.988159>,  <41.041969, 34.024876, 33.139240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.942616, 33.249744, 32.988159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.142551, 33.463966, 32.715881>,  <41.262512, 33.592499, 32.552517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.142551, 33.463966, 32.715881>,  <40.942616, 33.249744, 32.988159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.142551, 33.463966, 32.715881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806316, -0.574692, 0.139938,
		-0.316244, -0.618800, -0.719080,
		0.499843, 0.535552, -0.680692,
		41.292503, 33.624630, 32.511673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.235931, 32.867500, 32.447140>,  <40.942616, 33.249744, 32.988159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.235931, 32.867500, 32.447140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.462688, 33.193035, 32.498215>,  <41.598743, 33.388355, 32.528858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.462688, 33.193035, 32.498215>,  <41.235931, 32.867500, 32.447140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.462688, 33.193035, 32.498215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820078, -0.572217, 0.006248,
		0.078148, 0.101169, -0.991795,
		0.566890, 0.813838, 0.127684,
		41.632755, 33.437187, 32.536518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834805, 32.910828, 31.929392>,  <41.235931, 32.867500, 32.447140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.834805, 32.910828, 31.929392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.925503, 33.073647, 32.283318>,  <41.979923, 33.171337, 32.495674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.925503, 33.073647, 32.283318>,  <41.834805, 32.910828, 31.929392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.925503, 33.073647, 32.283318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654823, -0.736212, 0.170878,
		0.720967, 0.540650, -0.433479,
		0.226747, 0.407050, 0.884814,
		41.993526, 33.195763, 32.548763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.041660, 32.407806, 32.358292>,  <41.834805, 32.910828, 31.929392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.041660, 32.407806, 32.358292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.078129, 32.515289, 31.974731>,  <42.100010, 32.579781, 31.744596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.078129, 32.515289, 31.974731>,  <42.041660, 32.407806, 32.358292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.078129, 32.515289, 31.974731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433173, 0.856336, 0.281156,
		0.896687, -0.441002, -0.038324,
		0.091172, 0.268710, -0.958896,
		42.105480, 32.595901, 31.687063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.762005, 32.537720, 32.177917>,  <42.041660, 32.407806, 32.358292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.762005, 32.537720, 32.177917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.529411, 32.726196, 31.912630>,  <42.389854, 32.839283, 31.753458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.529411, 32.726196, 31.912630>,  <42.762005, 32.537720, 32.177917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.529411, 32.726196, 31.912630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464809, 0.861467, 0.204515,
		0.667703, -0.189345, -0.719945,
		-0.581485, 0.471192, -0.663214,
		42.354965, 32.867554, 31.713665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.158245, 32.735416, 31.489584>,  <42.762005, 32.537720, 32.177917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.158245, 32.735416, 31.489584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.863777, 32.993977, 31.569801>,  <42.687096, 33.149113, 31.617931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.863777, 32.993977, 31.569801>,  <43.158245, 32.735416, 31.489584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.863777, 32.993977, 31.569801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673783, 0.727897, 0.127210,
		-0.063747, 0.228773, -0.971390,
		-0.736174, 0.646397, 0.200545,
		42.642925, 33.187897, 31.629965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.552734, 33.410427, 31.496700>,  <43.158245, 32.735416, 31.489584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.552734, 33.410427, 31.496700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.190403, 33.548668, 31.594713>,  <42.973003, 33.631611, 31.653521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.190403, 33.548668, 31.594713>,  <43.552734, 33.410427, 31.496700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.190403, 33.548668, 31.594713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374590, 0.923542, 0.082171,
		-0.197901, 0.166219, -0.966026,
		-0.905824, 0.345602, 0.245034,
		42.918655, 33.652348, 31.668222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.642479, 33.828915, 32.214970>,  <43.552734, 33.410427, 31.496700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.642479, 33.828915, 32.214970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.598106, 34.125038, 32.480190>,  <43.571484, 34.302711, 32.639320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.598106, 34.125038, 32.480190>,  <43.642479, 33.828915, 32.214970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.598106, 34.125038, 32.480190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686630, 0.539421, -0.487406,
		-0.718495, 0.401202, -0.568157,
		-0.110928, 0.740312, 0.663049,
		43.564827, 34.347130, 32.679104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.707634, 34.458797, 31.644136>,  <43.642479, 33.828915, 32.214970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.707634, 34.458797, 31.644136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.824245, 34.183666, 31.378235>,  <43.894215, 34.018585, 31.218695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.824245, 34.183666, 31.378235>,  <43.707634, 34.458797, 31.644136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.824245, 34.183666, 31.378235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419135, -0.716530, 0.557593,
		-0.859846, 0.116065, -0.497185,
		0.291531, -0.687832, -0.664753,
		43.911705, 33.977318, 31.178808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.307571, 34.624310, 32.072186>,  <43.707634, 34.458797, 31.644136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.307571, 34.624310, 32.072186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.237675, 34.343967, 32.348812>,  <44.195736, 34.175762, 32.514786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.237675, 34.343967, 32.348812>,  <44.307571, 34.624310, 32.072186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.237675, 34.343967, 32.348812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793090, 0.316049, 0.520694,
		-0.583501, 0.639461, 0.500616,
		-0.174744, -0.700858, 0.691565,
		44.185253, 34.133709, 32.556282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.117924, 34.878914, 32.815777>,  <44.307571, 34.624310, 32.072186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.117924, 34.878914, 32.815777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.319954, 34.533978, 32.801502>,  <44.441170, 34.327015, 32.792938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.319954, 34.533978, 32.801502>,  <44.117924, 34.878914, 32.815777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.319954, 34.533978, 32.801502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661753, 0.360383, 0.657424,
		-0.554062, -0.355663, 0.752675,
		0.505072, -0.862339, -0.035687,
		44.471478, 34.275276, 32.790794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.118805, 34.485840, 33.468670>,  <44.117924, 34.878914, 32.815777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.118805, 34.485840, 33.468670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.455879, 34.481216, 33.253357>,  <44.658123, 34.478443, 33.124168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.455879, 34.481216, 33.253357>,  <44.118805, 34.485840, 33.468670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.455879, 34.481216, 33.253357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502730, 0.374776, 0.778977,
		0.192730, -0.927043, 0.321630,
		0.842685, -0.011560, -0.538283,
		44.708683, 34.477749, 33.091873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.700752, 34.286301, 33.923565>,  <44.118805, 34.485840, 33.468670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.700752, 34.286301, 33.923565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.773117, 34.559116, 33.640129>,  <44.816536, 34.722805, 33.470070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.773117, 34.559116, 33.640129>,  <44.700752, 34.286301, 33.923565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.773117, 34.559116, 33.640129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313462, 0.642915, 0.698858,
		0.932208, -0.348548, -0.097481,
		0.180913, 0.682037, -0.708587,
		44.827393, 34.763729, 33.427551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.378784, 34.444298, 33.909225>,  <44.700752, 34.286301, 33.923565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.378784, 34.444298, 33.909225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.144348, 34.748993, 33.798771>,  <45.003685, 34.931808, 33.732498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.144348, 34.748993, 33.798771>,  <45.378784, 34.444298, 33.909225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.144348, 34.748993, 33.798771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305502, 0.523412, 0.795429,
		0.750441, 0.381835, -0.539481,
		-0.586094, 0.761736, -0.276139,
		44.968521, 34.977512, 33.715931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.542503, 34.090382, 34.474693>,  <45.378784, 34.444298, 33.909225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.542503, 34.090382, 34.474693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.884338, 34.189610, 34.292206>,  <46.089439, 34.249146, 34.182713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.884338, 34.189610, 34.292206>,  <45.542503, 34.090382, 34.474693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.884338, 34.189610, 34.292206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316602, 0.447474, 0.836379,
		0.411627, -0.859202, 0.303867,
		0.854592, 0.248071, -0.456218,
		46.140717, 34.264030, 34.155342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.957958, 34.129879, 35.002731>,  <45.542503, 34.090382, 34.474693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.957958, 34.129879, 35.002731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.179039, 34.327312, 34.734138>,  <46.311687, 34.445774, 34.572983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.179039, 34.327312, 34.734138>,  <45.957958, 34.129879, 35.002731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.179039, 34.327312, 34.734138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392398, 0.556696, 0.732198,
		0.735214, -0.668178, 0.114007,
		0.552706, 0.493586, -0.671483,
		46.344852, 34.475388, 34.532692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.731609, 34.096943, 35.055332>,  <45.957958, 34.129879, 35.002731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.731609, 34.096943, 35.055332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.693661, 34.467419, 34.909359>,  <46.670891, 34.689705, 34.821774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.693661, 34.467419, 34.909359>,  <46.731609, 34.096943, 35.055332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.693661, 34.467419, 34.909359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597386, 0.346210, 0.723373,
		0.796323, -0.149380, -0.586136,
		-0.094869, 0.926188, -0.364933,
		46.665199, 34.745274, 34.799877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.403851, 34.431870, 34.811653>,  <46.731609, 34.096943, 35.055332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.403851, 34.431870, 34.811653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.130024, 34.685829, 34.954914>,  <46.965729, 34.838207, 35.040871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.130024, 34.685829, 34.954914>,  <47.403851, 34.431870, 34.811653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.130024, 34.685829, 34.954914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634495, 0.277090, 0.721552,
		0.358874, 0.721194, -0.592528,
		-0.684562, 0.634902, 0.358154,
		46.924656, 34.876301, 35.062359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.668961, 35.182667, 34.661922>,  <47.403851, 34.431870, 34.811653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.668961, 35.182667, 34.661922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.441517, 35.098690, 34.980068>,  <47.305050, 35.048306, 35.170956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.441517, 35.098690, 34.980068>,  <47.668961, 35.182667, 34.661922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.441517, 35.098690, 34.980068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781299, 0.164720, 0.602030,
		-0.257402, 0.963739, 0.070363,
		-0.568609, -0.209938, 0.795367,
		47.270935, 35.035709, 35.218678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.466301, 36.556133, 23.640711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.093662, 36.552734, 23.786068>,  <31.870079, 36.550694, 23.873281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.093662, 36.552734, 23.786068>,  <32.466301, 36.556133, 23.640711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093662, 36.552734, 23.786068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362586, 0.048810, 0.930671,
		-0.025648, 0.998772, -0.042389,
		-0.931597, -0.008501, 0.363392,
		31.814182, 36.550182, 23.895086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439240, 37.096111, 24.183558>,  <32.466301, 36.556133, 23.640711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439240, 37.096111, 24.183558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.156715, 36.824261, 24.262787>,  <31.987200, 36.661152, 24.310324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.156715, 36.824261, 24.262787>,  <32.439240, 37.096111, 24.183558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156715, 36.824261, 24.262787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225101, 0.049656, 0.973069,
		-0.671156, 0.731879, 0.117911,
		-0.706314, -0.679623, 0.198074,
		31.944820, 36.620373, 24.322208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.339542, 37.284130, 24.809660>,  <32.439240, 37.096111, 24.183558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.339542, 37.284130, 24.809660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.103970, 36.961021, 24.799385>,  <31.962626, 36.767155, 24.793221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.103970, 36.961021, 24.799385>,  <32.339542, 37.284130, 24.809660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103970, 36.961021, 24.799385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256018, -0.216615, 0.942089,
		-0.766557, 0.548254, 0.334376,
		-0.588936, -0.807772, -0.025685,
		31.927288, 36.718689, 24.791679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.928677, 37.225662, 25.418314>,  <32.339542, 37.284130, 24.809660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.928677, 37.225662, 25.418314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.989309, 36.853428, 25.285027>,  <32.025688, 36.630089, 25.205053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.989309, 36.853428, 25.285027>,  <31.928677, 37.225662, 25.418314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989309, 36.853428, 25.285027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213743, -0.298279, 0.930238,
		-0.965058, -0.212232, 0.153692,
		0.151583, -0.930585, -0.333220,
		32.034786, 36.574253, 25.185061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373610, 36.906048, 25.650003>,  <31.928677, 37.225662, 25.418314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373610, 36.906048, 25.650003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.684528, 36.663754, 25.582006>,  <31.871080, 36.518379, 25.541208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.684528, 36.663754, 25.582006>,  <31.373610, 36.906048, 25.650003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684528, 36.663754, 25.582006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139121, -0.098022, 0.985412,
		-0.613560, -0.789607, 0.008078,
		0.777296, -0.605733, -0.169993,
		31.917717, 36.482033, 25.531008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.152540, 36.482647, 26.107077>,  <31.373610, 36.906048, 25.650003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.152540, 36.482647, 26.107077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.534073, 36.422939, 26.002831>,  <31.762993, 36.387115, 25.940283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.534073, 36.422939, 26.002831>,  <31.152540, 36.482647, 26.107077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534073, 36.422939, 26.002831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252742, -0.069830, 0.965010,
		-0.162248, -0.986327, -0.028879,
		0.953833, -0.149272, -0.260617,
		31.820223, 36.378159, 25.924646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.323736, 35.948196, 26.561586>,  <31.152540, 36.482647, 26.107077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.323736, 35.948196, 26.561586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.669092, 36.104992, 26.434526>,  <31.876307, 36.199070, 26.358292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.669092, 36.104992, 26.434526>,  <31.323736, 35.948196, 26.561586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669092, 36.104992, 26.434526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336628, 0.021407, 0.941394,
		0.375818, -0.919720, -0.113473,
		0.863390, 0.391991, -0.317649,
		31.928110, 36.222588, 26.339231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.822485, 35.542568, 26.837589>,  <31.323736, 35.948196, 26.561586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.822485, 35.542568, 26.837589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.009026, 35.888260, 26.762093>,  <32.120949, 36.095676, 26.716795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.009026, 35.888260, 26.762093>,  <31.822485, 35.542568, 26.837589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009026, 35.888260, 26.762093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373049, 0.001323, 0.927810,
		0.802092, -0.503095, -0.321783,
		0.466351, 0.864230, -0.188741,
		32.148930, 36.147530, 26.705471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372749, 35.324093, 27.021650>,  <31.822485, 35.542568, 26.837589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372749, 35.324093, 27.021650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.386261, 35.723862, 27.020363>,  <32.394367, 35.963722, 27.019590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.386261, 35.723862, 27.020363>,  <32.372749, 35.324093, 27.021650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386261, 35.723862, 27.020363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587024, -0.017236, 0.809386,
		0.808864, -0.029233, -0.587268,
		0.033783, 0.999424, -0.003219,
		32.396397, 36.023689, 27.019398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027611, 35.433506, 27.211765>,  <32.372749, 35.324093, 27.021650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027611, 35.433506, 27.211765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.845871, 35.784279, 27.274445>,  <32.736828, 35.994743, 27.312052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.845871, 35.784279, 27.274445>,  <33.027611, 35.433506, 27.211765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845871, 35.784279, 27.274445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487125, 0.097302, 0.867895,
		0.745840, 0.470658, -0.471386,
		-0.454348, 0.876934, 0.156698,
		32.709568, 36.047359, 27.321453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587563, 35.976608, 27.383986>,  <33.027611, 35.433506, 27.211765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587563, 35.976608, 27.383986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.262333, 36.138248, 27.551613>,  <33.067196, 36.235233, 27.652189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.262333, 36.138248, 27.551613>,  <33.587563, 35.976608, 27.383986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262333, 36.138248, 27.551613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534142, 0.231534, 0.813071,
		0.231534, 0.884927, -0.404100,
		-0.813071, 0.404100, 0.419069,
		33.018410, 36.259480, 27.677334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885380, 36.420990, 27.813128>,  <33.587563, 35.976608, 27.383986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885380, 36.420990, 27.813128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.508148, 36.406822, 27.945396>,  <33.281807, 36.398323, 28.024757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.508148, 36.406822, 27.945396>,  <33.885380, 36.420990, 27.813128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508148, 36.406822, 27.945396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326248, 0.094291, 0.940570,
		-0.064492, 0.994914, -0.077370,
		-0.943082, -0.035417, 0.330670,
		33.225224, 36.396198, 28.044598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774460, 36.962631, 28.360722>,  <33.885380, 36.420990, 27.813128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774460, 36.962631, 28.360722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.489063, 36.701302, 28.461988>,  <33.317825, 36.544502, 28.522749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.489063, 36.701302, 28.461988>,  <33.774460, 36.962631, 28.360722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489063, 36.701302, 28.461988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384044, -0.062441, 0.921201,
		-0.586036, 0.754497, 0.295457,
		-0.713492, -0.653326, 0.253168,
		33.275017, 36.505302, 28.537939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257008, 37.256622, 28.927691>,  <33.774460, 36.962631, 28.360722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257008, 37.256622, 28.927691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.341522, 36.866901, 28.896452>,  <33.392231, 36.633068, 28.877708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.341522, 36.866901, 28.896452>,  <33.257008, 37.256622, 28.927691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341522, 36.866901, 28.896452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288541, -0.014165, 0.957362,
		-0.933864, -0.224813, 0.278133,
		0.211287, -0.974299, -0.078096,
		33.404907, 36.574612, 28.873024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136696, 37.073322, 29.577433>,  <33.257008, 37.256622, 28.927691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136696, 37.073322, 29.577433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.260269, 36.711140, 29.461012>,  <33.334412, 36.493832, 29.391159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.260269, 36.711140, 29.461012>,  <33.136696, 37.073322, 29.577433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.260269, 36.711140, 29.461012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358166, -0.172737, 0.917540,
		-0.881068, -0.387700, 0.270940,
		0.308929, -0.905456, -0.291054,
		33.352947, 36.439503, 29.373695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844090, 36.513977, 30.071571>,  <33.136696, 37.073322, 29.577433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844090, 36.513977, 30.071571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.178638, 36.379272, 29.898561>,  <33.379368, 36.298450, 29.794756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.178638, 36.379272, 29.898561>,  <32.844090, 36.513977, 30.071571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178638, 36.379272, 29.898561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406029, -0.149511, 0.901547,
		-0.368276, -0.929643, 0.011690,
		0.836369, -0.336765, -0.432523,
		33.429550, 36.278244, 29.768805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020802, 36.027405, 30.523983>,  <32.844090, 36.513977, 30.071571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020802, 36.027405, 30.523983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.345585, 36.122368, 30.310682>,  <33.540455, 36.179344, 30.182703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.345585, 36.122368, 30.310682>,  <33.020802, 36.027405, 30.523983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345585, 36.122368, 30.310682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552309, -0.016877, 0.833468,
		0.188873, -0.971263, -0.144827,
		0.811961, 0.237409, -0.533250,
		33.589172, 36.193592, 30.150707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502346, 35.664608, 30.862091>,  <33.020802, 36.027405, 30.523983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502346, 35.664608, 30.862091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.737797, 35.903488, 30.644148>,  <33.879066, 36.046818, 30.513382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.737797, 35.903488, 30.644148>,  <33.502346, 35.664608, 30.862091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737797, 35.903488, 30.644148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667159, 0.021760, 0.744598,
		0.456533, -0.801795, -0.385621,
		0.588623, 0.597203, -0.544858,
		33.914383, 36.082649, 30.480690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110584, 35.309353, 30.994570>,  <33.502346, 35.664608, 30.862091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110584, 35.309353, 30.994570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.182102, 35.680687, 30.864201>,  <34.225014, 35.903488, 30.785980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.182102, 35.680687, 30.864201>,  <34.110584, 35.309353, 30.994570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182102, 35.680687, 30.864201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601418, 0.159046, 0.782944,
		0.778672, -0.335999, -0.529882,
		0.178793, 0.928337, -0.325921,
		34.235741, 35.959187, 30.766424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836437, 35.346581, 31.037712>,  <34.110584, 35.309353, 30.994570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836437, 35.346581, 31.037712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.675503, 35.712654, 31.047180>,  <34.578941, 35.932301, 31.052862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.675503, 35.712654, 31.047180>,  <34.836437, 35.346581, 31.037712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675503, 35.712654, 31.047180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378514, 0.142748, 0.914522,
		0.833579, 0.376903, -0.403843,
		-0.402334, 0.915187, 0.023671,
		34.554802, 35.987209, 31.054281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329449, 35.742702, 31.225880>,  <34.836437, 35.346581, 31.037712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329449, 35.742702, 31.225880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.981525, 35.916538, 31.319311>,  <34.772770, 36.020840, 31.375370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.981525, 35.916538, 31.319311>,  <35.329449, 35.742702, 31.225880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981525, 35.916538, 31.319311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315753, 0.126545, 0.940365,
		0.379112, 0.891695, -0.247293,
		-0.869812, 0.434588, 0.233581,
		34.720581, 36.046913, 31.389385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647366, 36.430702, 31.130445>,  <35.329449, 35.742702, 31.225880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647366, 36.430702, 31.130445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.998512, 36.542027, 30.974550>,  <36.209198, 36.608822, 30.881012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.998512, 36.542027, 30.974550>,  <35.647366, 36.430702, 31.130445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998512, 36.542027, 30.974550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262812, -0.400356, -0.877864,
		-0.400356, 0.873073, -0.278314,
		0.877864, 0.278314, -0.389739,
		36.261871, 36.625519, 30.857628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423313, 36.655884, 30.541525>,  <35.647366, 36.430702, 31.130445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423313, 36.655884, 30.541525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.808819, 36.561813, 30.491177>,  <36.040123, 36.505371, 30.460968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.808819, 36.561813, 30.491177>,  <35.423313, 36.655884, 30.541525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808819, 36.561813, 30.491177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206902, -0.361266, -0.909219,
		0.168350, 0.902320, -0.396835,
		0.963769, -0.235173, -0.125872,
		36.097950, 36.491261, 30.453415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649506, 37.075203, 29.987080>,  <35.423313, 36.655884, 30.541525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649506, 37.075203, 29.987080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.904694, 36.767540, 30.001989>,  <36.057808, 36.582943, 30.010935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.904694, 36.767540, 30.001989>,  <35.649506, 37.075203, 29.987080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904694, 36.767540, 30.001989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126785, -0.152656, -0.980113,
		0.759553, 0.620556, -0.194908,
		0.637969, -0.769159, 0.037273,
		36.096085, 36.536793, 30.013172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011719, 37.156788, 29.366808>,  <35.649506, 37.075203, 29.987080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011719, 37.156788, 29.366808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.081669, 36.788994, 29.507641>,  <36.123638, 36.568317, 29.592140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.081669, 36.788994, 29.507641>,  <36.011719, 37.156788, 29.366808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081669, 36.788994, 29.507641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053886, -0.348120, -0.935900,
		0.983116, 0.182635, -0.011329,
		0.174872, -0.919487, 0.352084,
		36.134129, 36.513149, 29.613266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732536, 36.909531, 28.963171>,  <36.011719, 37.156788, 29.366808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732536, 36.909531, 28.963171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.483849, 36.623245, 29.090427>,  <36.334637, 36.451473, 29.166780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.483849, 36.623245, 29.090427>,  <36.732536, 36.909531, 28.963171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483849, 36.623245, 29.090427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057328, -0.446679, -0.892856,
		0.781140, -0.536866, 0.318739,
		-0.621718, -0.715718, 0.318141,
		36.297333, 36.408531, 29.185869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010674, 36.337032, 28.586988>,  <36.732536, 36.909531, 28.963171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010674, 36.337032, 28.586988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.658154, 36.206501, 28.723707>,  <36.446644, 36.128181, 28.805738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.658154, 36.206501, 28.723707>,  <37.010674, 36.337032, 28.586988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658154, 36.206501, 28.723707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192905, -0.411852, -0.890598,
		0.431397, -0.850816, 0.300014,
		-0.881297, -0.326328, 0.341798,
		36.393764, 36.108604, 28.826246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021770, 35.579727, 28.576000>,  <37.010674, 36.337032, 28.586988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021770, 35.579727, 28.576000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.646355, 35.717262, 28.563923>,  <36.421104, 35.799786, 28.556677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.646355, 35.717262, 28.563923>,  <37.021770, 35.579727, 28.576000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646355, 35.717262, 28.563923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053938, -0.232501, -0.971099,
		-0.340927, -0.909788, 0.236758,
		-0.938541, 0.343844, -0.030194,
		36.364792, 35.820415, 28.554865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496418, 34.977013, 28.222158>,  <37.021770, 35.579727, 28.576000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496418, 34.977013, 28.222158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.373837, 35.357540, 28.209047>,  <36.300289, 35.585857, 28.201181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.373837, 35.357540, 28.209047>,  <36.496418, 34.977013, 28.222158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373837, 35.357540, 28.209047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369184, -0.150526, -0.917085,
		-0.877376, -0.268942, 0.397342,
		-0.306453, 0.951321, -0.032779,
		36.281902, 35.642937, 28.199213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023705, 34.890327, 27.805592>,  <36.496418, 34.977013, 28.222158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023705, 34.890327, 27.805592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.055679, 35.289040, 27.803225>,  <36.074863, 35.528267, 27.801804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.055679, 35.289040, 27.803225>,  <36.023705, 34.890327, 27.805592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055679, 35.289040, 27.803225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425484, 0.028750, -0.904509,
		-0.901429, 0.074819, 0.426413,
		0.079934, 0.996783, -0.005918,
		36.079659, 35.588074, 27.801449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389488, 35.150055, 27.661882>,  <36.023705, 34.890327, 27.805592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389488, 35.150055, 27.661882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.646118, 35.446976, 27.584551>,  <35.800095, 35.625126, 27.538153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.646118, 35.446976, 27.584551>,  <35.389488, 35.150055, 27.661882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646118, 35.446976, 27.584551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406543, 0.115331, -0.906323,
		-0.650466, 0.660069, 0.375770,
		0.641574, 0.742299, -0.193327,
		35.838589, 35.669666, 27.526552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050041, 35.704861, 27.211447>,  <35.389488, 35.150055, 27.661882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050041, 35.704861, 27.211447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.436420, 35.795536, 27.161551>,  <35.668247, 35.849941, 27.131613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.436420, 35.795536, 27.161551>,  <35.050041, 35.704861, 27.211447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436420, 35.795536, 27.161551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164598, 0.166373, -0.972228,
		-0.199642, 0.959651, 0.198020,
		0.965945, 0.226692, -0.124742,
		35.726204, 35.863544, 27.124128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015804, 36.347500, 26.968552>,  <35.050041, 35.704861, 27.211447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015804, 36.347500, 26.968552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.368412, 36.198196, 26.852898>,  <35.579975, 36.108616, 26.783504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.368412, 36.198196, 26.852898>,  <35.015804, 36.347500, 26.968552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368412, 36.198196, 26.852898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207104, 0.244639, -0.947238,
		0.424299, 0.894891, 0.138351,
		0.881521, -0.373259, -0.289135,
		35.632870, 36.086220, 26.766157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346237, 36.803352, 26.590767>,  <35.015804, 36.347500, 26.968552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346237, 36.803352, 26.590767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.565197, 36.494770, 26.461020>,  <35.696575, 36.309620, 26.383171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.565197, 36.494770, 26.461020>,  <35.346237, 36.803352, 26.590767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565197, 36.494770, 26.461020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162968, 0.281912, -0.945499,
		0.820849, 0.570429, 0.028597,
		0.547401, -0.771451, -0.324368,
		35.729416, 36.263336, 26.363708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848789, 37.107872, 26.112736>,  <35.346237, 36.803352, 26.590767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848789, 37.107872, 26.112736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.807499, 36.714794, 26.051208>,  <35.782726, 36.478947, 26.014292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.807499, 36.714794, 26.051208>,  <35.848789, 37.107872, 26.112736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807499, 36.714794, 26.051208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030558, 0.157706, -0.987013,
		0.994189, -0.097182, -0.046309,
		-0.103223, -0.982692, -0.153820,
		35.776531, 36.419987, 26.005062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252819, 37.068115, 25.573641>,  <35.848789, 37.107872, 26.112736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252819, 37.068115, 25.573641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.049747, 36.723495, 25.574179>,  <35.927906, 36.516724, 25.574501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.049747, 36.723495, 25.574179>,  <36.252819, 37.068115, 25.573641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049747, 36.723495, 25.574179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187928, 0.109218, -0.976092,
		0.840801, -0.495791, -0.217357,
		-0.507677, -0.861547, 0.001342,
		35.897446, 36.465031, 25.574581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542164, 36.709080, 24.971714>,  <36.252819, 37.068115, 25.573641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542164, 36.709080, 24.971714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.172432, 36.589863, 25.067028>,  <35.950592, 36.518333, 25.124216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.172432, 36.589863, 25.067028>,  <36.542164, 36.709080, 24.971714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172432, 36.589863, 25.067028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258444, 0.029546, -0.965574,
		0.280742, -0.954095, -0.104337,
		-0.924333, -0.298043, 0.238286,
		35.895134, 36.500450, 25.138514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343643, 36.275520, 24.446058>,  <36.542164, 36.709080, 24.971714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343643, 36.275520, 24.446058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.007298, 36.402706, 24.621260>,  <35.805489, 36.479015, 24.726379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.007298, 36.402706, 24.621260>,  <36.343643, 36.275520, 24.446058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007298, 36.402706, 24.621260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434418, 0.086220, -0.896575,
		-0.322840, -0.944175, 0.065628,
		-0.840866, 0.317961, 0.438002,
		35.755039, 36.498093, 24.752661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901295, 36.086391, 24.022182>,  <36.343643, 36.275520, 24.446058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901295, 36.086391, 24.022182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.665039, 36.331005, 24.232773>,  <35.523285, 36.477772, 24.359127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.665039, 36.331005, 24.232773>,  <35.901295, 36.086391, 24.022182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665039, 36.331005, 24.232773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547121, 0.176077, -0.818325,
		-0.593131, -0.771380, 0.230583,
		-0.590639, 0.611531, 0.526475,
		35.487846, 36.514465, 24.390715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269608, 35.863544, 23.891607>,  <35.901295, 36.086391, 24.022182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269608, 35.863544, 23.891607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.233692, 36.246365, 24.001867>,  <35.212143, 36.476059, 24.068024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.233692, 36.246365, 24.001867>,  <35.269608, 35.863544, 23.891607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233692, 36.246365, 24.001867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713165, 0.131411, -0.688569,
		-0.695222, -0.258413, 0.670738,
		-0.089793, 0.957055, 0.275650,
		35.206753, 36.533482, 24.084562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.408222, 35.997910, 24.149101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.583557, 36.338158, 24.032963>,  <34.688759, 36.542305, 23.963280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.583557, 36.338158, 24.032963>,  <34.408222, 35.997910, 24.149101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583557, 36.338158, 24.032963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682978, 0.105227, -0.722820,
		-0.584293, 0.515142, 0.627081,
		0.438341, 0.850621, -0.290347,
		34.715061, 36.593346, 23.945858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866257, 36.311188, 23.862276>,  <34.408222, 35.997910, 24.149101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866257, 36.311188, 23.862276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.157200, 36.557678, 23.741470>,  <34.331764, 36.705574, 23.668987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.157200, 36.557678, 23.741470>,  <33.866257, 36.311188, 23.862276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157200, 36.557678, 23.741470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538591, 0.239857, -0.807705,
		-0.425292, 0.750152, 0.506358,
		0.727355, 0.616231, -0.302016,
		34.375408, 36.742546, 23.650866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563126, 37.017437, 23.871361>,  <33.866257, 36.311188, 23.862276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563126, 37.017437, 23.871361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.871437, 36.976151, 23.619884>,  <34.056423, 36.951378, 23.469000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.871437, 36.976151, 23.619884>,  <33.563126, 37.017437, 23.871361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871437, 36.976151, 23.619884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589444, 0.258959, -0.765177,
		0.241783, 0.960357, 0.138760,
		0.770777, -0.103215, -0.628689,
		34.102669, 36.945187, 23.431278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430584, 37.575672, 23.440487>,  <33.563126, 37.017437, 23.871361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430584, 37.575672, 23.440487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.676422, 37.342930, 23.227430>,  <33.823925, 37.203285, 23.099596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.676422, 37.342930, 23.227430>,  <33.430584, 37.575672, 23.440487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676422, 37.342930, 23.227430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451840, 0.293814, -0.842327,
		0.646614, 0.758362, -0.082329,
		0.614599, -0.581860, -0.532642,
		33.860802, 37.168373, 23.067638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729424, 37.958744, 22.888552>,  <33.430584, 37.575672, 23.440487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729424, 37.958744, 22.888552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.716671, 37.574589, 22.777811>,  <33.709019, 37.344097, 22.711367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.716671, 37.574589, 22.777811>,  <33.729424, 37.958744, 22.888552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716671, 37.574589, 22.777811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449877, 0.261137, -0.854060,
		0.892521, 0.097317, -0.440381,
		-0.031885, -0.960384, -0.276851,
		33.707104, 37.286472, 22.694756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887005, 37.928032, 22.202347>,  <33.729424, 37.958744, 22.888552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887005, 37.928032, 22.202347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.688637, 37.582825, 22.240856>,  <33.569614, 37.375702, 22.263962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.688637, 37.582825, 22.240856>,  <33.887005, 37.928032, 22.202347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688637, 37.582825, 22.240856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451604, 0.161625, -0.877457,
		0.741699, -0.478626, -0.469894,
		-0.495920, -0.863015, 0.096272,
		33.539860, 37.323921, 22.269737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648373, 37.765163, 21.592026>,  <33.887005, 37.928032, 22.202347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648373, 37.765163, 21.592026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.443657, 37.452484, 21.734585>,  <33.320827, 37.264877, 21.820120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.443657, 37.452484, 21.734585>,  <33.648373, 37.765163, 21.592026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443657, 37.452484, 21.734585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431196, -0.125084, -0.893546,
		0.743064, -0.610982, -0.273050,
		-0.511787, -0.781700, 0.356398,
		33.290119, 37.217976, 21.841505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743015, 37.209946, 21.134752>,  <33.648373, 37.765163, 21.592026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743015, 37.209946, 21.134752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.410610, 37.134335, 21.344013>,  <33.211166, 37.088966, 21.469570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.410610, 37.134335, 21.344013>,  <33.743015, 37.209946, 21.134752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410610, 37.134335, 21.344013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486085, -0.210495, -0.848183,
		0.270453, -0.959145, 0.083039,
		-0.831009, -0.189030, 0.523155,
		33.161308, 37.077625, 21.500959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501152, 36.601776, 20.788275>,  <33.743015, 37.209946, 21.134752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501152, 36.601776, 20.788275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.220142, 36.808876, 20.983580>,  <33.051537, 36.933136, 21.100763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.220142, 36.808876, 20.983580>,  <33.501152, 36.601776, 20.788275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.220142, 36.808876, 20.983580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504128, 0.122206, -0.854939,
		-0.502310, -0.846761, 0.175158,
		-0.702524, 0.517746, 0.488261,
		33.009384, 36.964199, 21.130058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839638, 36.416927, 20.454836>,  <33.501152, 36.601776, 20.788275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839638, 36.416927, 20.454836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.734283, 36.747402, 20.654049>,  <32.671070, 36.945686, 20.773577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.734283, 36.747402, 20.654049>,  <32.839638, 36.416927, 20.454836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.734283, 36.747402, 20.654049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563469, 0.287288, -0.774576,
		-0.783027, -0.484637, 0.389867,
		-0.263384, 0.826192, 0.498032,
		32.655270, 36.995258, 20.803459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206966, 36.515411, 20.166853>,  <32.839638, 36.416927, 20.454836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206966, 36.515411, 20.166853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.319992, 36.856529, 20.342531>,  <32.387810, 37.061199, 20.447939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.319992, 36.856529, 20.342531>,  <32.206966, 36.515411, 20.166853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319992, 36.856529, 20.342531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539986, 0.519835, -0.661956,
		-0.792824, -0.050113, 0.607387,
		0.282569, 0.852795, 0.439198,
		32.404762, 37.112370, 20.474291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722452, 36.832855, 19.913286>,  <32.206966, 36.515411, 20.166853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722452, 36.832855, 19.913286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.957396, 37.111973, 20.077282>,  <32.098362, 37.279442, 20.175680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.957396, 37.111973, 20.077282>,  <31.722452, 36.832855, 19.913286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.957396, 37.111973, 20.077282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412461, 0.693948, -0.590179,
		-0.696336, 0.177543, 0.695410,
		0.587361, 0.697793, 0.409991,
		32.133602, 37.321312, 20.200279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.289272, 37.417477, 19.990099>,  <31.722452, 36.832855, 19.913286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.289272, 37.417477, 19.990099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.665794, 37.549652, 19.962513>,  <31.891706, 37.628960, 19.945961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.665794, 37.549652, 19.962513>,  <31.289272, 37.417477, 19.990099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.665794, 37.549652, 19.962513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317793, 0.798597, -0.511127,
		-0.113822, 0.503042, 0.856734,
		0.941304, 0.330441, -0.068965,
		31.948185, 37.648785, 19.941824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362286, 38.145927, 20.108044>,  <31.289272, 37.417477, 19.990099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362286, 38.145927, 20.108044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.708076, 38.096069, 19.913256>,  <31.915552, 38.066154, 19.796383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.708076, 38.096069, 19.913256>,  <31.362286, 38.145927, 20.108044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708076, 38.096069, 19.913256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138160, 0.872539, -0.468602,
		0.483310, 0.472376, 0.737071,
		0.864479, -0.124646, -0.486970,
		31.967421, 38.058674, 19.767164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645348, 38.800892, 20.114626>,  <31.362286, 38.145927, 20.108044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645348, 38.800892, 20.114626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.843908, 38.618462, 19.819174>,  <31.963045, 38.509003, 19.641903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.843908, 38.618462, 19.819174>,  <31.645348, 38.800892, 20.114626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843908, 38.618462, 19.819174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186551, 0.774942, -0.603873,
		0.847812, 0.437556, 0.299600,
		0.496401, -0.456080, -0.738632,
		31.992828, 38.481636, 19.597584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984926, 39.291821, 19.810066>,  <31.645348, 38.800892, 20.114626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984926, 39.291821, 19.810066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.997337, 39.006153, 19.530354>,  <32.004784, 38.834751, 19.362526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.997337, 39.006153, 19.530354>,  <31.984926, 39.291821, 19.810066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997337, 39.006153, 19.530354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226608, 0.676375, -0.700833,
		0.973492, 0.180208, -0.140850,
		0.031028, -0.714173, -0.699282,
		32.006645, 38.791901, 19.320570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388214, 39.590172, 19.343645>,  <31.984926, 39.291821, 19.810066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388214, 39.590172, 19.343645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.217720, 39.304359, 19.121738>,  <32.115421, 39.132874, 18.988594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.217720, 39.304359, 19.121738>,  <32.388214, 39.590172, 19.343645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217720, 39.304359, 19.121738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166863, 0.664847, -0.728104,
		0.889088, -0.217775, -0.402612,
		-0.426239, -0.714530, -0.554769,
		32.089848, 39.090000, 18.955307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696564, 39.638767, 18.597548>,  <32.388214, 39.590172, 19.343645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696564, 39.638767, 18.597548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.336464, 39.464706, 18.591938>,  <32.120403, 39.360268, 18.588572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.336464, 39.464706, 18.591938>,  <32.696564, 39.638767, 18.597548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336464, 39.464706, 18.591938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266864, 0.576968, -0.771940,
		0.344004, -0.691194, -0.635540,
		-0.900247, -0.435153, -0.014025,
		32.066391, 39.334160, 18.587730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453323, 39.409885, 17.929607>,  <32.696564, 39.638767, 18.597548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453323, 39.409885, 17.929607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.104767, 39.443611, 18.122921>,  <31.895632, 39.463848, 18.238909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.104767, 39.443611, 18.122921>,  <32.453323, 39.409885, 17.929607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104767, 39.443611, 18.122921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383326, 0.497758, -0.778009,
		-0.306157, -0.863208, -0.401423,
		-0.871395, 0.084317, 0.483282,
		31.843348, 39.468906, 18.267906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977507, 39.541039, 17.359695>,  <32.453323, 39.409885, 17.929607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977507, 39.541039, 17.359695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.737572, 39.587036, 17.676422>,  <31.593611, 39.614635, 17.866459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.737572, 39.587036, 17.676422>,  <31.977507, 39.541039, 17.359695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737572, 39.587036, 17.676422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681040, 0.446067, -0.580697,
		-0.419979, -0.887582, -0.189253,
		-0.599835, 0.114992, 0.791818,
		31.557621, 39.621532, 17.913967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.372206, 39.366714, 17.182951>,  <31.977507, 39.541039, 17.359695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.372206, 39.366714, 17.182951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.290812, 39.607971, 17.491447>,  <31.241974, 39.752724, 17.676546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.290812, 39.607971, 17.491447>,  <31.372206, 39.366714, 17.182951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.290812, 39.607971, 17.491447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634176, 0.518948, -0.573160,
		-0.745931, -0.605734, 0.276899,
		-0.203486, 0.603141, 0.771242,
		31.229765, 39.788914, 17.722820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.695425, 39.174259, 17.284266>,  <31.372206, 39.366714, 17.182951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.695425, 39.174259, 17.284266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.784597, 39.540718, 17.417517>,  <30.838100, 39.760593, 17.497467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.784597, 39.540718, 17.417517>,  <30.695425, 39.174259, 17.284266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784597, 39.540718, 17.417517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652104, 0.394162, -0.647609,
		-0.724612, -0.072863, 0.685294,
		0.222931, 0.916148, 0.333129,
		30.851477, 39.815563, 17.517456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.546085, 38.681526, 16.691216>,  <30.695425, 39.174259, 17.284266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.546085, 38.681526, 16.691216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.628880, 38.468235, 17.019320>,  <30.678556, 38.340260, 17.216183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.628880, 38.468235, 17.019320>,  <30.546085, 38.681526, 16.691216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628880, 38.468235, 17.019320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520139, -0.650130, -0.553882,
		0.828620, 0.541296, 0.142782,
		0.206987, -0.533225, 0.820261,
		30.690975, 38.308266, 17.265398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.171255, 37.950249, 16.626736>,  <30.546085, 38.681526, 16.691216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.171255, 37.950249, 16.626736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.037228, 38.326897, 16.613531>,  <29.956812, 38.552883, 16.605608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.037228, 38.326897, 16.613531>,  <30.171255, 37.950249, 16.626736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.037228, 38.326897, 16.613531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444205, -0.126976, 0.886881,
		0.830910, 0.311830, 0.460816,
		-0.335068, 0.941615, -0.033011,
		29.936707, 38.609383, 16.603628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.351767, 38.218025, 16.884100>,  <30.171255, 37.950249, 16.626736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.351767, 38.218025, 16.884100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.054878, 37.964966, 16.795683>,  <28.876745, 37.813129, 16.742632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.054878, 37.964966, 16.795683>,  <29.351767, 38.218025, 16.884100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.054878, 37.964966, 16.795683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069944, -0.254908, 0.964432,
		-0.666497, 0.731281, 0.144947,
		-0.742219, -0.632653, -0.221044,
		28.832212, 37.775169, 16.729370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.692474, 38.414783, 17.181553>,  <29.351767, 38.218025, 16.884100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.692474, 38.414783, 17.181553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.658756, 38.021786, 17.115099>,  <28.638525, 37.785988, 17.075228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.658756, 38.021786, 17.115099>,  <28.692474, 38.414783, 17.181553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.658756, 38.021786, 17.115099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099982, -0.157546, 0.982437,
		-0.991412, 0.099424, -0.084951,
		-0.084294, -0.982494, -0.166134,
		28.633469, 37.727039, 17.065258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.113705, 38.213814, 17.411434>,  <28.692474, 38.414783, 17.181553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.113705, 38.213814, 17.411434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.301779, 37.860855, 17.418430>,  <28.414623, 37.649082, 17.422628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.301779, 37.860855, 17.418430>,  <28.113705, 38.213814, 17.411434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.301779, 37.860855, 17.418430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214727, -0.095152, 0.972028,
		-0.856048, -0.460789, -0.234213,
		0.470185, -0.882394, 0.017489,
		28.442835, 37.596138, 17.423677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.802212, 37.888191, 17.946749>,  <28.113705, 38.213814, 17.411434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.802212, 37.888191, 17.946749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.134350, 37.672153, 17.891867>,  <28.333633, 37.542530, 17.858938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.134350, 37.672153, 17.891867>,  <27.802212, 37.888191, 17.946749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.134350, 37.672153, 17.891867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123150, -0.062277, 0.990432,
		-0.543470, -0.839298, 0.014801,
		0.830346, -0.540092, -0.137205,
		28.383453, 37.510124, 17.850706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.760391, 37.286304, 18.329805>,  <27.802212, 37.888191, 17.946749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.760391, 37.286304, 18.329805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.154938, 37.299732, 18.265358>,  <28.391665, 37.307789, 18.226688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.154938, 37.299732, 18.265358>,  <27.760391, 37.286304, 18.329805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.154938, 37.299732, 18.265358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164400, -0.246603, 0.955070,
		-0.007674, -0.968535, -0.248759,
		0.986364, 0.033566, -0.161119,
		28.450848, 37.309803, 18.217022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.071907, 36.801453, 18.813745>,  <27.760391, 37.286304, 18.329805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.071907, 36.801453, 18.813745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.395138, 37.021717, 18.730047>,  <28.589077, 37.153873, 18.679829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.395138, 37.021717, 18.730047>,  <28.071907, 36.801453, 18.813745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.395138, 37.021717, 18.730047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360472, -0.181299, 0.914981,
		0.465907, -0.814804, -0.345000,
		0.808079, 0.550659, -0.209246,
		28.637562, 37.186916, 18.667273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.660791, 36.497730, 19.001659>,  <28.071907, 36.801453, 18.813745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.660791, 36.497730, 19.001659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.802944, 36.871620, 19.001513>,  <28.888235, 37.095955, 19.001425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.802944, 36.871620, 19.001513>,  <28.660791, 36.497730, 19.001659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.802944, 36.871620, 19.001513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416847, -0.158133, 0.895116,
		0.836627, -0.318260, -0.445833,
		0.355380, 0.934722, -0.000367,
		28.909557, 37.152039, 19.001402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.275694, 36.441872, 19.337700>,  <28.660791, 36.497730, 19.001659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.275694, 36.441872, 19.337700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.255756, 36.841293, 19.329567>,  <29.243793, 37.080944, 19.324688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.255756, 36.841293, 19.329567>,  <29.275694, 36.441872, 19.337700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.255756, 36.841293, 19.329567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582145, 0.045588, 0.811806,
		0.811555, 0.028630, -0.583574,
		-0.049846, 0.998550, -0.020330,
		29.240803, 37.140858, 19.323467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.895035, 36.518589, 19.490343>,  <29.275694, 36.441872, 19.337700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.895035, 36.518589, 19.490343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.695173, 36.846951, 19.600954>,  <29.575256, 37.043968, 19.667320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.695173, 36.846951, 19.600954>,  <29.895035, 36.518589, 19.490343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.695173, 36.846951, 19.600954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600963, 0.098599, 0.793172,
		0.623851, 0.562494, -0.542597,
		-0.499654, 0.820901, 0.276527,
		29.545277, 37.093220, 19.683912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.354919, 37.056190, 19.551067>,  <29.895035, 36.518589, 19.490343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.354919, 37.056190, 19.551067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.033302, 37.135548, 19.775265>,  <29.840332, 37.183163, 19.909782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.033302, 37.135548, 19.775265>,  <30.354919, 37.056190, 19.551067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.033302, 37.135548, 19.775265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593006, 0.199285, 0.780147,
		0.043081, 0.959648, -0.277884,
		-0.804045, 0.198397, 0.560492,
		29.792089, 37.195068, 19.943413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.570793, 37.567436, 20.125525>,  <30.354919, 37.056190, 19.551067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.570793, 37.567436, 20.125525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.208755, 37.448509, 20.247116>,  <29.991533, 37.377151, 20.320072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.208755, 37.448509, 20.247116>,  <30.570793, 37.567436, 20.125525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208755, 37.448509, 20.247116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278286, 0.126332, 0.952154,
		-0.321495, 0.946384, -0.031603,
		-0.905096, -0.297318, 0.303980,
		29.937227, 37.359314, 20.338310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.444309, 37.987350, 20.823048>,  <30.570793, 37.567436, 20.125525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.444309, 37.987350, 20.823048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.191406, 37.677448, 20.822651>,  <30.039663, 37.491508, 20.822412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.191406, 37.677448, 20.822651>,  <30.444309, 37.987350, 20.823048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.191406, 37.677448, 20.822651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171743, -0.141403, 0.974941,
		-0.755482, 0.616244, 0.222462,
		-0.632258, -0.774757, -0.000992,
		30.001728, 37.445023, 20.822353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.996675, 38.060116, 21.351179>,  <30.444309, 37.987350, 20.823048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.996675, 38.060116, 21.351179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.022078, 37.668049, 21.276093>,  <30.037319, 37.432808, 21.231041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.022078, 37.668049, 21.276093>,  <29.996675, 38.060116, 21.351179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.022078, 37.668049, 21.276093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251254, -0.166337, 0.953521,
		-0.965836, -0.107718, 0.235708,
		0.063504, -0.980168, -0.187718,
		30.041128, 37.373997, 21.219776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.602859, 37.663422, 21.913485>,  <29.996675, 38.060116, 21.351179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.602859, 37.663422, 21.913485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.877155, 37.419224, 21.754961>,  <30.041733, 37.272705, 21.659847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.877155, 37.419224, 21.754961>,  <29.602859, 37.663422, 21.913485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.877155, 37.419224, 21.754961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320907, -0.235119, 0.917463,
		-0.653284, -0.756318, 0.034681,
		0.685740, -0.610493, -0.396307,
		30.082878, 37.236076, 21.636068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.752396, 37.399364, 22.468983>,  <29.602859, 37.663422, 21.913485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.752396, 37.399364, 22.468983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.021940, 37.216679, 22.236666>,  <30.183666, 37.107067, 22.097275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.021940, 37.216679, 22.236666>,  <29.752396, 37.399364, 22.468983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.021940, 37.216679, 22.236666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462663, -0.352044, 0.813638,
		-0.576069, -0.816990, -0.025921,
		0.673859, -0.456720, -0.580793,
		30.224098, 37.079662, 22.062428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.789955, 36.738503, 22.652227>,  <29.752396, 37.399364, 22.468983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.789955, 36.738503, 22.652227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.142698, 36.788620, 22.470402>,  <30.354343, 36.818691, 22.361307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.142698, 36.788620, 22.470402>,  <29.789955, 36.738503, 22.652227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.142698, 36.788620, 22.470402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440842, -0.561115, 0.700577,
		-0.167287, -0.818200, -0.550057,
		0.881858, 0.125291, -0.454564,
		30.407255, 36.826206, 22.334032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186798, 36.085655, 22.744404>,  <29.789955, 36.738503, 22.652227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.186798, 36.085655, 22.744404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.445295, 36.375443, 22.648470>,  <30.600393, 36.549313, 22.590910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.445295, 36.375443, 22.648470>,  <30.186798, 36.085655, 22.744404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.445295, 36.375443, 22.648470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622821, -0.319092, 0.714335,
		0.440981, -0.611008, -0.657423,
		0.646243, 0.724465, -0.239835,
		30.639168, 36.592781, 22.576519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.841064, 35.772987, 22.804802>,  <30.186798, 36.085655, 22.744404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.841064, 35.772987, 22.804802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.874176, 36.169086, 22.849621>,  <30.894043, 36.406746, 22.876513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.874176, 36.169086, 22.849621>,  <30.841064, 35.772987, 22.804802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874176, 36.169086, 22.849621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521924, -0.138858, 0.841614,
		0.848966, -0.011190, -0.528329,
		0.082780, 0.990249, 0.112045,
		30.899010, 36.466160, 22.883234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640930, 35.877560, 22.874708>,  <30.841064, 35.772987, 22.804802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640930, 35.877560, 22.874708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.442795, 36.183418, 23.039610>,  <31.323914, 36.366936, 23.138552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.442795, 36.183418, 23.039610>,  <31.640930, 35.877560, 22.874708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442795, 36.183418, 23.039610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510119, -0.128092, 0.850512,
		0.703149, 0.631589, -0.326613,
		-0.495337, 0.764649, 0.412254,
		31.294193, 36.412811, 23.163286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081017, 35.934639, 23.358906>,  <31.640930, 35.877560, 22.874708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081017, 35.934639, 23.358906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.810390, 36.211052, 23.460680>,  <31.648016, 36.376900, 23.521744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.810390, 36.211052, 23.460680>,  <32.081017, 35.934639, 23.358906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810390, 36.211052, 23.460680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416541, 0.074204, 0.906083,
		0.607253, 0.719004, -0.338048,
		-0.676563, 0.691033, 0.254434,
		31.607422, 36.418362, 23.537010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<36.486366, 35.352123, 25.940691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.218571, 35.613537, 26.081932>,  <36.057896, 35.770386, 26.166677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.218571, 35.613537, 26.081932>,  <36.486366, 35.352123, 25.940691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218571, 35.613537, 26.081932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323842, -0.171014, 0.930527,
		0.668517, 0.737324, -0.097151,
		-0.669485, 0.653535, 0.353102,
		36.017727, 35.809597, 26.187862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807751, 35.598129, 26.562342>,  <36.486366, 35.352123, 25.940691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807751, 35.598129, 26.562342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.462177, 35.791935, 26.617270>,  <36.254833, 35.908218, 26.650227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.462177, 35.791935, 26.617270>,  <36.807751, 35.598129, 26.562342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462177, 35.791935, 26.617270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093018, -0.114454, 0.989064,
		0.494936, 0.867262, 0.053812,
		-0.863937, 0.484518, 0.137318,
		36.202995, 35.937290, 26.658464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977291, 36.155617, 26.976530>,  <36.807751, 35.598129, 26.562342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977291, 36.155617, 26.976530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.587364, 36.074692, 27.014059>,  <36.353409, 36.026138, 27.036577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.587364, 36.074692, 27.014059>,  <36.977291, 36.155617, 26.976530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587364, 36.074692, 27.014059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060928, 0.163104, 0.984726,
		-0.214524, 0.965643, -0.146671,
		-0.974817, -0.202311, 0.093824,
		36.294918, 36.014000, 27.042206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641357, 36.684822, 27.298513>,  <36.977291, 36.155617, 26.976530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641357, 36.684822, 27.298513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.387547, 36.385590, 27.376230>,  <36.235260, 36.206051, 27.422861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.387547, 36.385590, 27.376230>,  <36.641357, 36.684822, 27.298513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387547, 36.385590, 27.376230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048037, 0.289067, 0.956103,
		-0.771403, 0.597344, -0.219358,
		-0.634531, -0.748078, 0.194293,
		36.197186, 36.161167, 27.434519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169682, 36.913719, 27.815699>,  <36.641357, 36.684822, 27.298513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169682, 36.913719, 27.815699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.105610, 36.518883, 27.815977>,  <36.067165, 36.281982, 27.816143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.105610, 36.518883, 27.815977>,  <36.169682, 36.913719, 27.815699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105610, 36.518883, 27.815977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013683, -0.001516, 0.999905,
		-0.986992, 0.160178, 0.013749,
		-0.160183, -0.987087, 0.000695,
		36.057556, 36.222755, 27.816185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513599, 36.677212, 28.146799>,  <36.169682, 36.913719, 27.815699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513599, 36.677212, 28.146799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.773758, 36.373718, 28.161201>,  <35.929855, 36.191620, 28.169842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.773758, 36.373718, 28.161201>,  <35.513599, 36.677212, 28.146799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773758, 36.373718, 28.161201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030503, 0.021273, 0.999308,
		-0.758979, -0.651049, -0.009308,
		0.650400, -0.758738, 0.036004,
		35.968880, 36.146095, 28.172003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160748, 36.244820, 28.582869>,  <35.513599, 36.677212, 28.146799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160748, 36.244820, 28.582869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.532967, 36.098412, 28.578621>,  <35.756298, 36.010567, 28.576073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.532967, 36.098412, 28.578621>,  <35.160748, 36.244820, 28.582869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532967, 36.098412, 28.578621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024045, -0.090017, 0.995650,
		-0.365384, -0.926243, -0.092566,
		0.930546, -0.366021, -0.010619,
		35.812130, 35.988605, 28.575436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193558, 35.697250, 29.025379>,  <35.160748, 36.244820, 28.582869>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193558, 35.697250, 29.025379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.560551, 35.851082, 28.984747>,  <35.780746, 35.943382, 28.960367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.560551, 35.851082, 28.984747>,  <35.193558, 35.697250, 29.025379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560551, 35.851082, 28.984747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100003, 0.024155, 0.994694,
		0.384991, -0.922776, -0.016297,
		0.917487, 0.384578, -0.101580,
		35.835796, 35.966454, 28.954273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581310, 35.425827, 29.641356>,  <35.193558, 35.697250, 29.025379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581310, 35.425827, 29.641356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.794010, 35.728889, 29.489988>,  <35.921631, 35.910725, 29.399168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.794010, 35.728889, 29.489988>,  <35.581310, 35.425827, 29.641356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794010, 35.728889, 29.489988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294947, 0.253176, 0.921362,
		0.793880, -0.601550, -0.088840,
		0.531753, 0.757654, -0.378416,
		35.953537, 35.956184, 29.376463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312088, 35.253574, 29.867210>,  <35.581310, 35.425827, 29.641356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312088, 35.253574, 29.867210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.242012, 35.642357, 29.804459>,  <36.199966, 35.875626, 29.766808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.242012, 35.642357, 29.804459>,  <36.312088, 35.253574, 29.867210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242012, 35.642357, 29.804459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492665, 0.224502, 0.840762,
		0.852403, 0.070001, -0.518178,
		-0.175187, 0.971956, -0.156879,
		36.189457, 35.933945, 29.757395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903114, 35.561184, 30.187586>,  <36.312088, 35.253574, 29.867210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903114, 35.561184, 30.187586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.669579, 35.880924, 30.130764>,  <36.529457, 36.072769, 30.096670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.669579, 35.880924, 30.130764>,  <36.903114, 35.561184, 30.187586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669579, 35.880924, 30.130764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302793, 0.376733, 0.875436,
		0.753295, 0.468097, -0.461987,
		-0.583835, 0.799348, -0.142054,
		36.494427, 36.120728, 30.088148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357372, 36.186695, 30.259541>,  <36.903114, 35.561184, 30.187586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357372, 36.186695, 30.259541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.974831, 36.280582, 30.329157>,  <36.745304, 36.336914, 30.370928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.974831, 36.280582, 30.329157>,  <37.357372, 36.186695, 30.259541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974831, 36.280582, 30.329157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285433, 0.622957, 0.728322,
		0.062527, 0.746213, -0.662764,
		-0.956357, 0.234715, 0.174043,
		36.687923, 36.350998, 30.381371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420055, 36.901279, 30.293306>,  <37.357372, 36.186695, 30.259541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420055, 36.901279, 30.293306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.070293, 36.802113, 30.460135>,  <36.860435, 36.742611, 30.560232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.070293, 36.802113, 30.460135>,  <37.420055, 36.901279, 30.293306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070293, 36.802113, 30.460135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186979, 0.621020, 0.761166,
		-0.447717, 0.743552, -0.496668,
		-0.874407, -0.247921, 0.417070,
		36.807972, 36.727737, 30.585255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360405, 37.318283, 30.910770>,  <37.420055, 36.901279, 30.293306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360405, 37.318283, 30.910770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.007622, 37.141499, 30.976267>,  <36.795952, 37.035427, 31.015564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.007622, 37.141499, 30.976267>,  <37.360405, 37.318283, 30.910770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007622, 37.141499, 30.976267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134356, 0.568750, 0.811463,
		-0.451764, 0.693680, -0.560996,
		-0.881962, -0.441963, 0.163740,
		36.743034, 37.008911, 31.025389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673180, 37.258522, 30.496567>,  <37.360405, 37.318283, 30.910770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673180, 37.258522, 30.496567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.676281, 37.480839, 30.829081>,  <36.678143, 37.614227, 31.028589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.676281, 37.480839, 30.829081>,  <36.673180, 37.258522, 30.496567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676281, 37.480839, 30.829081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651160, 0.633709, -0.417617,
		-0.758901, -0.538061, 0.366823,
		0.007756, 0.555791, 0.831286,
		36.678608, 37.647575, 31.078466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956646, 37.421898, 30.538128>,  <36.673180, 37.258522, 30.496567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956646, 37.421898, 30.538128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.156006, 37.687069, 30.761604>,  <36.275620, 37.846172, 30.895689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.156006, 37.687069, 30.761604>,  <35.956646, 37.421898, 30.538128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156006, 37.687069, 30.761604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452088, 0.748607, -0.484978,
		-0.739743, -0.010866, 0.672802,
		0.498395, 0.662925, 0.558689,
		36.305523, 37.885948, 30.929211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523544, 37.826107, 31.036770>,  <35.956646, 37.421898, 30.538128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523544, 37.826107, 31.036770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.829906, 38.060135, 30.930126>,  <36.013725, 38.200554, 30.866140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.829906, 38.060135, 30.930126>,  <35.523544, 37.826107, 31.036770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829906, 38.060135, 30.930126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641713, 0.669848, -0.373508,
		-0.039941, 0.457158, 0.888488,
		0.765904, 0.585072, -0.266610,
		36.059677, 38.235657, 30.850143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286552, 38.500587, 31.165424>,  <35.523544, 37.826107, 31.036770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286552, 38.500587, 31.165424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.614281, 38.604504, 30.960981>,  <35.810917, 38.666855, 30.838316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.614281, 38.604504, 30.960981>,  <35.286552, 38.500587, 31.165424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614281, 38.604504, 30.960981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494864, 0.770611, -0.401582,
		0.289535, 0.581950, 0.759936,
		0.819316, 0.259793, -0.511106,
		35.860077, 38.682442, 30.807650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367603, 39.187096, 31.234480>,  <35.286552, 38.500587, 31.165424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367603, 39.187096, 31.234480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.552479, 39.079346, 30.896528>,  <35.663403, 39.014694, 30.693758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.552479, 39.079346, 30.896528>,  <35.367603, 39.187096, 31.234480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552479, 39.079346, 30.896528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526806, 0.683000, -0.505951,
		0.713344, 0.678930, 0.173762,
		0.462185, -0.269378, -0.844879,
		35.691135, 38.998531, 30.643064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598137, 39.774338, 30.917381>,  <35.367603, 39.187096, 31.234480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598137, 39.774338, 30.917381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.601803, 39.510788, 30.616505>,  <35.604004, 39.352657, 30.435978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.601803, 39.510788, 30.616505>,  <35.598137, 39.774338, 30.917381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601803, 39.510788, 30.616505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493835, 0.651110, -0.576354,
		0.869508, 0.376743, -0.319408,
		0.009168, -0.658879, -0.752194,
		35.604553, 39.313126, 30.390846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794445, 40.218220, 30.308344>,  <35.598137, 39.774338, 30.917381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794445, 40.218220, 30.308344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.643162, 39.882469, 30.152187>,  <35.552391, 39.681019, 30.058493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.643162, 39.882469, 30.152187>,  <35.794445, 40.218220, 30.308344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643162, 39.882469, 30.152187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291150, 0.508173, -0.810550,
		0.878742, -0.192896, -0.436581,
		-0.378211, -0.839376, -0.390392,
		35.529697, 39.630657, 30.035070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983776, 40.136784, 29.602207>,  <35.794445, 40.218220, 30.308344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983776, 40.136784, 29.602207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.663307, 39.899834, 29.636211>,  <35.471027, 39.757664, 29.656614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.663307, 39.899834, 29.636211>,  <35.983776, 40.136784, 29.602207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663307, 39.899834, 29.636211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468591, 0.532616, -0.704799,
		0.372225, -0.604498, -0.704295,
		-0.801168, -0.592370, 0.085010,
		35.422958, 39.722122, 29.661715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763535, 39.923843, 28.846287>,  <35.983776, 40.136784, 29.602207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763535, 39.923843, 28.846287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.447468, 39.893211, 29.089523>,  <35.257828, 39.874832, 29.235466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.447468, 39.893211, 29.089523>,  <35.763535, 39.923843, 28.846287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447468, 39.893211, 29.089523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567477, 0.466239, -0.678668,
		-0.231542, -0.881338, -0.411864,
		-0.790163, -0.076583, 0.608093,
		35.210419, 39.870235, 29.271952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227970, 39.650074, 28.344912>,  <35.763535, 39.923843, 28.846287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227970, 39.650074, 28.344912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.017708, 39.780445, 28.659225>,  <34.891552, 39.858669, 28.847813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.017708, 39.780445, 28.659225>,  <35.227970, 39.650074, 28.344912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017708, 39.780445, 28.659225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584575, 0.532665, -0.611997,
		-0.618028, -0.781049, -0.089468,
		-0.525656, 0.325931, 0.785783,
		34.860012, 39.878223, 28.894960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492680, 39.493690, 28.177792>,  <35.227970, 39.650074, 28.344912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492680, 39.493690, 28.177792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.527763, 39.797508, 28.435596>,  <34.548813, 39.979801, 28.590279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.527763, 39.797508, 28.435596>,  <34.492680, 39.493690, 28.177792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527763, 39.797508, 28.435596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621019, 0.547575, -0.560800,
		-0.778872, -0.351068, 0.519720,
		0.087707, 0.759548, 0.644511,
		34.554077, 40.025372, 28.628950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830078, 39.706131, 28.390001>,  <34.492680, 39.493690, 28.177792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830078, 39.706131, 28.390001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.047089, 40.031929, 28.472227>,  <34.177296, 40.227409, 28.521563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.047089, 40.031929, 28.472227>,  <33.830078, 39.706131, 28.390001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047089, 40.031929, 28.472227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574154, 0.538161, -0.617033,
		-0.613200, 0.216731, 0.759614,
		0.542525, 0.814500, 0.205563,
		34.209846, 40.276279, 28.533895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340767, 40.227989, 28.566898>,  <33.830078, 39.706131, 28.390001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340767, 40.227989, 28.566898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.684528, 40.405575, 28.465448>,  <33.890785, 40.512127, 28.404579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.684528, 40.405575, 28.465448>,  <33.340767, 40.227989, 28.566898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684528, 40.405575, 28.465448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503771, 0.650432, -0.568466,
		-0.087410, 0.616310, 0.782637,
		0.859403, 0.443960, -0.253625,
		33.942348, 40.538761, 28.389360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327774, 41.046574, 28.693165>,  <33.340767, 40.227989, 28.566898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327774, 41.046574, 28.693165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.607868, 40.957657, 28.421795>,  <33.775925, 40.904308, 28.258972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.607868, 40.957657, 28.421795>,  <33.327774, 41.046574, 28.693165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607868, 40.957657, 28.421795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375045, 0.694056, -0.614514,
		0.607467, 0.684742, 0.402631,
		0.700232, -0.222293, -0.678425,
		33.817940, 40.890968, 28.218267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305229, 41.858284, 28.671825>,  <33.327774, 41.046574, 28.693165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305229, 41.858284, 28.671825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.031082, 42.078030, 28.863020>,  <32.866596, 42.209877, 28.977737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.031082, 42.078030, 28.863020>,  <33.305229, 41.858284, 28.671825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031082, 42.078030, 28.863020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193406, -0.495496, 0.846805,
		0.702046, 0.672816, 0.233345,
		-0.685365, 0.549366, 0.477987,
		32.825474, 42.242840, 29.006416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617935, 42.163551, 29.173367>,  <33.305229, 41.858284, 28.671825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617935, 42.163551, 29.173367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.238213, 42.158882, 29.299025>,  <33.010380, 42.156082, 29.374420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.238213, 42.158882, 29.299025>,  <33.617935, 42.163551, 29.173367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238213, 42.158882, 29.299025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300784, -0.324252, 0.896878,
		0.091398, 0.945899, 0.311323,
		-0.949303, -0.011669, 0.314147,
		32.953423, 42.155380, 29.393269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605373, 42.399532, 29.826193>,  <33.617935, 42.163551, 29.173367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605373, 42.399532, 29.826193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.242874, 42.231400, 29.808153>,  <33.025375, 42.130520, 29.797329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.242874, 42.231400, 29.808153>,  <33.605373, 42.399532, 29.826193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242874, 42.231400, 29.808153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191423, -0.503132, 0.842743,
		-0.376927, 0.755100, 0.536423,
		-0.906247, -0.420337, -0.045101,
		32.971001, 42.105297, 29.794622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308884, 42.521721, 30.466160>,  <33.605373, 42.399532, 29.826193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308884, 42.521721, 30.466160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.088375, 42.218853, 30.325987>,  <32.956070, 42.037132, 30.241884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.088375, 42.218853, 30.325987>,  <33.308884, 42.521721, 30.466160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088375, 42.218853, 30.325987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067184, -0.458937, 0.885925,
		-0.831617, 0.464841, 0.303867,
		-0.551270, -0.757166, -0.350430,
		32.922993, 41.991703, 30.220858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891975, 42.480846, 30.941519>,  <33.308884, 42.521721, 30.466160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891975, 42.480846, 30.941519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.894779, 42.132427, 30.745060>,  <32.896461, 41.923374, 30.627184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.894779, 42.132427, 30.745060>,  <32.891975, 42.480846, 30.941519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894779, 42.132427, 30.745060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028951, -0.490777, 0.870804,
		-0.999556, -0.020326, 0.021776,
		0.007012, -0.871048, -0.491148,
		32.896881, 41.871113, 30.597715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301121, 41.991905, 31.260370>,  <32.891975, 42.480846, 30.941519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301121, 41.991905, 31.260370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.571804, 41.760689, 31.077972>,  <32.734215, 41.621960, 30.968533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.571804, 41.760689, 31.077972>,  <32.301121, 41.991905, 31.260370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571804, 41.760689, 31.077972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104808, -0.537413, 0.836781,
		-0.728749, -0.614053, -0.303091,
		0.676713, -0.578037, -0.455996,
		32.774818, 41.587276, 30.941174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223259, 41.375656, 31.475269>,  <32.301121, 41.991905, 31.260370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223259, 41.375656, 31.475269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.594688, 41.312176, 31.341063>,  <32.817547, 41.274090, 31.260538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.594688, 41.312176, 31.341063>,  <32.223259, 41.375656, 31.475269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594688, 41.312176, 31.341063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185637, -0.584198, 0.790096,
		-0.321394, -0.795944, -0.513009,
		0.928571, -0.158698, -0.335515,
		32.873260, 41.264565, 31.240408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255783, 40.665340, 31.399216>,  <32.223259, 41.375656, 31.475269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255783, 40.665340, 31.399216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.640839, 40.772865, 31.412294>,  <32.871872, 40.837379, 31.420141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.640839, 40.772865, 31.412294>,  <32.255783, 40.665340, 31.399216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640839, 40.772865, 31.412294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199311, -0.785091, 0.586436,
		0.183309, -0.558009, -0.809335,
		0.962639, 0.268809, 0.032697,
		32.929630, 40.853508, 31.422104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615986, 39.936642, 31.293133>,  <32.255783, 40.665340, 31.399216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615986, 39.936642, 31.293133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.844524, 40.210514, 31.474144>,  <32.981647, 40.374836, 31.582750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.844524, 40.210514, 31.474144>,  <32.615986, 39.936642, 31.293133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844524, 40.210514, 31.474144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283782, -0.682188, 0.673859,
		0.770087, -0.256585, -0.584064,
		0.571344, 0.684677, 0.452530,
		33.015926, 40.415916, 31.609903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128338, 39.552975, 31.427988>,  <32.615986, 39.936642, 31.293133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128338, 39.552975, 31.427988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.161469, 39.858253, 31.684322>,  <33.181347, 40.041420, 31.838123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.161469, 39.858253, 31.684322>,  <33.128338, 39.552975, 31.427988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161469, 39.858253, 31.684322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351918, -0.624017, 0.697680,
		0.932359, 0.167738, -0.320266,
		0.082824, 0.763195, 0.640837,
		33.186317, 40.087212, 31.876574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742287, 39.455566, 31.684679>,  <33.128338, 39.552975, 31.427988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742287, 39.455566, 31.684679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.571754, 39.700279, 31.951202>,  <33.469437, 39.847107, 32.111115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.571754, 39.700279, 31.951202>,  <33.742287, 39.455566, 31.684679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571754, 39.700279, 31.951202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544116, -0.414999, 0.729187,
		0.722622, 0.673421, -0.155955,
		-0.426329, 0.611784, 0.666306,
		33.443855, 39.883816, 32.151093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265926, 39.812328, 32.048595>,  <33.742287, 39.455566, 31.684679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265926, 39.812328, 32.048595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.945171, 39.804810, 32.287468>,  <33.752720, 39.800297, 32.430790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.945171, 39.804810, 32.287468>,  <34.265926, 39.812328, 32.048595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945171, 39.804810, 32.287468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573989, -0.301728, 0.761247,
		0.165874, 0.953209, 0.252742,
		-0.801887, -0.018800, 0.597180,
		33.704605, 39.799171, 32.466621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<32.829224, 43.798992, 25.714331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446728, 43.691780, 25.761271>,  <32.217232, 43.627453, 25.789434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446728, 43.691780, 25.761271>,  <32.829224, 43.798992, 25.714331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446728, 43.691780, 25.761271> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131865, -0.036741, 0.990586,
		-0.261199, 0.962709, 0.070478,
		-0.956236, -0.268033, 0.117351,
		32.159859, 43.611370, 25.796476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.669800, 44.071758, 26.292292>,  <32.829224, 43.798992, 25.714331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.669800, 44.071758, 26.292292> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370377, 43.808521, 26.259855>,  <32.190723, 43.650578, 26.240395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370377, 43.808521, 26.259855>,  <32.669800, 44.071758, 26.292292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370377, 43.808521, 26.259855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051190, -0.179286, 0.982464,
		-0.661090, 0.731281, 0.167894,
		-0.748559, -0.658091, -0.081090,
		32.145809, 43.611095, 26.235529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174202, 44.308163, 26.743595>,  <32.669800, 44.071758, 26.292292>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174202, 44.308163, 26.743595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091984, 43.921703, 26.681229>,  <32.042652, 43.689827, 26.643808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091984, 43.921703, 26.681229>,  <32.174202, 44.308163, 26.743595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091984, 43.921703, 26.681229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029959, -0.153033, 0.987767,
		-0.978189, 0.207703, 0.002511,
		-0.205546, -0.966147, -0.155918,
		32.030319, 43.631859, 26.634453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576733, 44.081356, 27.166941>,  <32.174202, 44.308163, 26.743595>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576733, 44.081356, 27.166941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786030, 43.746967, 27.100771>,  <31.911608, 43.546333, 27.061069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786030, 43.746967, 27.100771>,  <31.576733, 44.081356, 27.166941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786030, 43.746967, 27.100771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026058, -0.178332, 0.983625,
		-0.851784, -0.518988, -0.071527,
		0.523245, -0.835972, -0.165424,
		31.943003, 43.496174, 27.051144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324017, 43.590775, 27.656996>,  <31.576733, 44.081356, 27.166941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324017, 43.590775, 27.656996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640194, 43.376411, 27.538334>,  <31.829901, 43.247795, 27.467136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640194, 43.376411, 27.538334>,  <31.324017, 43.590775, 27.656996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640194, 43.376411, 27.538334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218525, -0.205722, 0.953900,
		-0.572230, -0.818830, -0.045502,
		0.790443, -0.535907, -0.296655,
		31.877327, 43.215641, 27.449337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.232456, 43.003803, 28.025898>,  <31.324017, 43.590775, 27.656996>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.232456, 43.003803, 28.025898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.613615, 42.956104, 27.914352>,  <31.842310, 42.927483, 27.847425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.613615, 42.956104, 27.914352>,  <31.232456, 43.003803, 28.025898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613615, 42.956104, 27.914352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230518, -0.312749, 0.921439,
		-0.197096, -0.942320, -0.270528,
		0.952898, -0.119250, -0.278864,
		31.899485, 42.920330, 27.830694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.393951, 42.434692, 28.329735>,  <31.232456, 43.003803, 28.025898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.393951, 42.434692, 28.329735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.748318, 42.606174, 28.258890>,  <31.960938, 42.709064, 28.216383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.748318, 42.606174, 28.258890>,  <31.393951, 42.434692, 28.329735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748318, 42.606174, 28.258890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382531, -0.459287, 0.801701,
		0.262347, -0.777990, -0.570882,
		0.885914, 0.428704, -0.177113,
		32.014091, 42.734787, 28.205755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939537, 41.922897, 28.239157>,  <31.393951, 42.434692, 28.329735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939537, 41.922897, 28.239157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134617, 42.251537, 28.357224>,  <32.251663, 42.448723, 28.428062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134617, 42.251537, 28.357224>,  <31.939537, 41.922897, 28.239157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134617, 42.251537, 28.357224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556233, -0.553025, 0.620297,
		0.672870, -0.138337, -0.726711,
		0.487699, 0.821600, 0.295166,
		32.280926, 42.498016, 28.445774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.651234, 41.727974, 28.302532>,  <31.939537, 41.922897, 28.239157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.651234, 41.727974, 28.302532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606983, 42.062843, 28.516785>,  <32.580433, 42.263767, 28.645336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606983, 42.062843, 28.516785>,  <32.651234, 41.727974, 28.302532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606983, 42.062843, 28.516785> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439982, -0.441996, 0.781700,
		0.891166, 0.322143, -0.319447,
		-0.110625, 0.837176, 0.535629,
		32.573795, 42.313995, 28.677473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187428, 41.483368, 28.068405>,  <32.651234, 41.727974, 28.302532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187428, 41.483368, 28.068405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461033, 41.238354, 27.909950>,  <33.625195, 41.091343, 27.814878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461033, 41.238354, 27.909950>,  <33.187428, 41.483368, 28.068405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461033, 41.238354, 27.909950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131051, 0.431024, -0.892773,
		0.717601, 0.662583, 0.214553,
		0.684014, -0.612537, -0.396135,
		33.666237, 41.054592, 27.791109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685982, 41.942211, 27.539906>,  <33.187428, 41.483368, 28.068405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685982, 41.942211, 27.539906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723812, 41.557503, 27.437105>,  <33.746510, 41.326679, 27.375425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723812, 41.557503, 27.437105>,  <33.685982, 41.942211, 27.539906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723812, 41.557503, 27.437105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081999, 0.264807, -0.960809,
		0.992135, 0.069796, 0.103908,
		0.094576, -0.961772, -0.257001,
		33.752186, 41.268970, 27.360004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240337, 41.890755, 26.999718>,  <33.685982, 41.942211, 27.539906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240337, 41.890755, 26.999718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028564, 41.553558, 26.961626>,  <33.901501, 41.351242, 26.938770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028564, 41.553558, 26.961626>,  <34.240337, 41.890755, 26.999718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028564, 41.553558, 26.961626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028890, 0.094271, -0.995127,
		0.847861, -0.529602, -0.025556,
		-0.529431, -0.842991, -0.095229,
		33.869736, 41.300659, 26.933058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629482, 41.583870, 26.639847>,  <34.240337, 41.890755, 26.999718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629482, 41.583870, 26.639847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292881, 41.381519, 26.563999>,  <34.090919, 41.260109, 26.518492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292881, 41.381519, 26.563999>,  <34.629482, 41.583870, 26.639847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292881, 41.381519, 26.563999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192236, 0.047630, -0.980192,
		0.504889, -0.861289, 0.057167,
		-0.841506, -0.505878, -0.189618,
		34.040428, 41.229755, 26.507114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785515, 41.329746, 26.004696>,  <34.629482, 41.583870, 26.639847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785515, 41.329746, 26.004696> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388569, 41.288036, 26.031042>,  <34.150402, 41.263012, 26.046850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388569, 41.288036, 26.031042>,  <34.785515, 41.329746, 26.004696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388569, 41.288036, 26.031042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055176, -0.102262, -0.993226,
		0.110301, -0.989277, 0.095728,
		-0.992365, -0.104272, 0.065864,
		34.090858, 41.256756, 26.050800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658829, 40.866684, 25.437973>,  <34.785515, 41.329746, 26.004696>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658829, 40.866684, 25.437973> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308922, 41.039722, 25.525280>,  <34.098976, 41.143547, 25.577663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308922, 41.039722, 25.525280>,  <34.658829, 40.866684, 25.437973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308922, 41.039722, 25.525280> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300782, -0.131641, -0.944564,
		-0.379886, -0.891923, 0.245273,
		-0.874767, 0.432600, 0.218266,
		34.046490, 41.169502, 25.590759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161407, 40.358765, 25.278645>,  <34.658829, 40.866684, 25.437973>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161407, 40.358765, 25.278645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979950, 40.715210, 25.273996>,  <33.871075, 40.929077, 25.271208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979950, 40.715210, 25.273996>,  <34.161407, 40.358765, 25.278645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979950, 40.715210, 25.273996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361085, -0.195706, -0.911766,
		-0.814757, -0.409418, 0.410546,
		-0.453640, 0.891110, -0.011618,
		33.843857, 40.982544, 25.270512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525055, 40.175945, 25.108353>,  <34.161407, 40.358765, 25.278645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525055, 40.175945, 25.108353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529099, 40.568256, 25.030399>,  <33.531525, 40.803642, 24.983627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529099, 40.568256, 25.030399>,  <33.525055, 40.175945, 25.108353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529099, 40.568256, 25.030399> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176342, -0.190088, -0.965800,
		-0.984277, 0.044133, 0.171029,
		0.010113, 0.980774, -0.194882,
		33.532131, 40.862488, 24.971935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985626, 40.211056, 24.713663>,  <33.525055, 40.175945, 25.108353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985626, 40.211056, 24.713663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203407, 40.539883, 24.646994>,  <33.334076, 40.737179, 24.606993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203407, 40.539883, 24.646994>,  <32.985626, 40.211056, 24.713663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203407, 40.539883, 24.646994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226409, -0.047302, -0.972883,
		-0.807660, 0.567421, 0.160370,
		0.544449, 0.822068, -0.166673,
		33.366741, 40.786503, 24.596992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543770, 40.605488, 24.292065>,  <32.985626, 40.211056, 24.713663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543770, 40.605488, 24.292065> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917747, 40.743942, 24.260916>,  <33.142136, 40.827015, 24.242226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917747, 40.743942, 24.260916>,  <32.543770, 40.605488, 24.292065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917747, 40.743942, 24.260916> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106208, 0.063628, -0.992306,
		-0.338519, 0.936024, 0.096251,
		0.934946, 0.346137, -0.077874,
		33.198231, 40.847782, 24.237553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.562004, 41.082523, 23.745121>,  <32.543770, 40.605488, 24.292065>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.562004, 41.082523, 23.745121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952511, 40.996243, 23.737396>,  <33.186817, 40.944473, 23.732761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952511, 40.996243, 23.737396>,  <32.562004, 41.082523, 23.745121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952511, 40.996243, 23.737396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006027, 0.062080, -0.998053,
		0.216476, 0.974485, 0.059307,
		0.976269, -0.215698, -0.019312,
		33.245392, 40.931534, 23.731604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966076, 41.656387, 23.497519>,  <32.562004, 41.082523, 23.745121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966076, 41.656387, 23.497519> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211880, 41.342548, 23.464567>,  <33.359364, 41.154243, 23.444798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211880, 41.342548, 23.464567>,  <32.966076, 41.656387, 23.497519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211880, 41.342548, 23.464567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183249, 0.243522, -0.952427,
		0.767331, 0.570180, 0.293423,
		0.614510, -0.784596, -0.082377,
		33.396233, 41.107170, 23.439854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534302, 41.942833, 23.225185>,  <32.966076, 41.656387, 23.497519>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534302, 41.942833, 23.225185> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538391, 41.548504, 23.158197>,  <33.540844, 41.311905, 23.118006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538391, 41.548504, 23.158197>,  <33.534302, 41.942833, 23.225185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538391, 41.548504, 23.158197> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218574, 0.165631, -0.961661,
		0.975767, -0.026769, 0.217170,
		0.010227, -0.985825, -0.167468,
		33.541458, 41.252758, 23.107958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156311, 41.820148, 23.059990>,  <33.534302, 41.942833, 23.225185>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156311, 41.820148, 23.059990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907555, 41.557545, 22.889231>,  <33.758301, 41.399982, 22.786776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907555, 41.557545, 22.889231>,  <34.156311, 41.820148, 23.059990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907555, 41.557545, 22.889231> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422262, 0.177970, -0.888832,
		0.659504, -0.733020, 0.166542,
		-0.621892, -0.656512, -0.426898,
		33.720985, 41.360592, 22.761162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.138227, 36.151470, 23.986818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.202492, 36.530960, 23.877932>,  <28.241051, 36.758656, 23.812599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.202492, 36.530960, 23.877932>,  <28.138227, 36.151470, 23.986818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.202492, 36.530960, 23.877932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459620, 0.172159, 0.871269,
		0.873463, -0.265093, -0.408396,
		0.160659, 0.948729, -0.272217,
		28.250689, 36.815578, 23.796267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.920721, 36.328377, 24.033833>,  <28.138227, 36.151470, 23.986818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.920721, 36.328377, 24.033833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.731041, 36.680531, 24.036724>,  <28.617233, 36.891823, 24.038460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.731041, 36.680531, 24.036724>,  <28.920721, 36.328377, 24.033833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.731041, 36.680531, 24.036724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538616, 0.283596, 0.793389,
		0.696440, 0.380119, -0.608672,
		-0.474199, 0.880388, 0.007230,
		28.588781, 36.944649, 24.038893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.378225, 36.746750, 24.250103>,  <28.920721, 36.328377, 24.033833>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.378225, 36.746750, 24.250103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.055182, 36.964855, 24.339951>,  <28.861355, 37.095718, 24.393860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.055182, 36.964855, 24.339951>,  <29.378225, 36.746750, 24.250103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.055182, 36.964855, 24.339951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403257, 0.232700, 0.885006,
		0.430293, 0.805318, -0.407812,
		-0.807609, 0.545264, 0.224621,
		28.812899, 37.128433, 24.407337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.697512, 37.386814, 24.584238>,  <29.378225, 36.746750, 24.250103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.697512, 37.386814, 24.584238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.307972, 37.420719, 24.668558>,  <29.074249, 37.441063, 24.719151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.307972, 37.420719, 24.668558>,  <29.697512, 37.386814, 24.584238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.307972, 37.420719, 24.668558> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223799, 0.197895, 0.954333,
		0.039174, 0.976552, -0.211688,
		-0.973848, 0.084761, 0.210799,
		29.015818, 37.446148, 24.731798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.665533, 37.976112, 24.930590>,  <29.697512, 37.386814, 24.584238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.665533, 37.976112, 24.930590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.337677, 37.799500, 25.076595>,  <29.140963, 37.693531, 25.164200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.337677, 37.799500, 25.076595>,  <29.665533, 37.976112, 24.930590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.337677, 37.799500, 25.076595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242881, 0.309234, 0.919447,
		-0.518842, 0.842272, -0.146221,
		-0.819641, -0.441534, 0.365015,
		29.091785, 37.667038, 25.186100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347164, 38.468864, 25.423695>,  <29.665533, 37.976112, 24.930590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347164, 38.468864, 25.423695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.223433, 38.097179, 25.504566>,  <29.149193, 37.874168, 25.553089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.223433, 38.097179, 25.504566>,  <29.347164, 38.468864, 25.423695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.223433, 38.097179, 25.504566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330020, 0.094498, 0.939232,
		-0.891853, 0.357255, 0.277429,
		-0.309329, -0.929214, 0.202180,
		29.130634, 37.818417, 25.565220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.983196, 38.542942, 26.118946>,  <29.347164, 38.468864, 25.423695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.983196, 38.542942, 26.118946> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.059942, 38.151680, 26.086954>,  <29.105989, 37.916924, 26.067759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.059942, 38.151680, 26.086954>,  <28.983196, 38.542942, 26.118946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.059942, 38.151680, 26.086954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345509, -0.008953, 0.938373,
		-0.918592, -0.207676, 0.336244,
		0.191867, -0.978157, -0.079978,
		29.117502, 37.858234, 26.062960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.803553, 38.232010, 26.689754>,  <28.983196, 38.542942, 26.118946>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.803553, 38.232010, 26.689754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.068655, 37.964756, 26.554489>,  <29.227716, 37.804405, 26.473330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.068655, 37.964756, 26.554489>,  <28.803553, 38.232010, 26.689754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.068655, 37.964756, 26.554489> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305870, -0.170660, 0.936653,
		-0.683519, -0.724206, 0.091256,
		0.662756, -0.668132, -0.338162,
		29.267483, 37.764317, 26.453041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.973299, 37.809174, 27.309629>,  <28.803553, 38.232010, 26.689754>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.973299, 37.809174, 27.309629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.244701, 37.650608, 27.062248>,  <29.407543, 37.555470, 26.913820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.244701, 37.650608, 27.062248>,  <28.973299, 37.809174, 27.309629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.244701, 37.650608, 27.062248> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573232, -0.240766, 0.783222,
		-0.459385, -0.885937, 0.063878,
		0.678506, -0.396417, -0.618452,
		29.448254, 37.531685, 26.876713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.085558, 37.221363, 27.533476>,  <28.973299, 37.809174, 27.309629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.085558, 37.221363, 27.533476> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.417528, 37.286846, 27.320150>,  <29.616711, 37.326138, 27.192156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.417528, 37.286846, 27.320150>,  <29.085558, 37.221363, 27.533476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.417528, 37.286846, 27.320150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557528, -0.277097, 0.782547,
		-0.019670, -0.946793, -0.321242,
		0.829925, 0.163709, -0.533314,
		29.666506, 37.335960, 27.160156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.470522, 36.614315, 27.734268>,  <29.085558, 37.221363, 27.533476>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.470522, 36.614315, 27.734268> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.734503, 36.879719, 27.593285>,  <29.892891, 37.038960, 27.508696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.734503, 36.879719, 27.593285>,  <29.470522, 36.614315, 27.734268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.734503, 36.879719, 27.593285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601846, -0.186071, 0.776633,
		0.449718, -0.724664, -0.522126,
		0.659950, 0.663506, -0.352457,
		29.932487, 37.078770, 27.487547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.134481, 36.351383, 27.726662>,  <29.470522, 36.614315, 27.734268>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.134481, 36.351383, 27.726662> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.188280, 36.743912, 27.781693>,  <30.220558, 36.979427, 27.814711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.188280, 36.743912, 27.781693>,  <30.134481, 36.351383, 27.726662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.188280, 36.743912, 27.781693> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585774, -0.190718, 0.787715,
		0.799237, -0.025356, -0.600481,
		0.134496, 0.981317, 0.137576,
		30.228628, 37.038307, 27.822966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.889215, 36.425674, 27.785887>,  <30.134481, 36.351383, 27.726662>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.889215, 36.425674, 27.785887> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.693872, 36.747879, 27.920143>,  <30.576666, 36.941200, 28.000698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.693872, 36.747879, 27.920143>,  <30.889215, 36.425674, 27.785887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.693872, 36.747879, 27.920143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541793, -0.021637, 0.840233,
		0.684081, 0.592183, -0.425855,
		-0.488358, 0.805513, 0.335642,
		30.547365, 36.989532, 28.020836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365210, 36.952522, 27.855474>,  <30.889215, 36.425674, 27.785887>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365210, 36.952522, 27.855474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.056179, 37.020138, 28.100277>,  <30.870760, 37.060707, 28.247158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.056179, 37.020138, 28.100277>,  <31.365210, 36.952522, 27.855474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.056179, 37.020138, 28.100277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614666, -0.042408, 0.787647,
		0.159098, 0.984696, -0.071140,
		-0.772576, 0.169040, 0.612006,
		30.824406, 37.070850, 28.283878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.017517, 37.150822, 27.564983>,  <31.365210, 36.952522, 27.855474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.017517, 37.150822, 27.564983> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.273342, 36.847919, 27.512033>,  <32.426838, 36.666176, 27.480265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.273342, 36.847919, 27.512033>,  <32.017517, 37.150822, 27.564983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.273342, 36.847919, 27.512033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034126, 0.144058, -0.988981,
		0.767984, 0.637029, 0.066292,
		0.639560, -0.757259, -0.132374,
		32.465210, 36.620743, 27.472321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513561, 37.344219, 27.026426>,  <32.017517, 37.150822, 27.564983>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513561, 37.344219, 27.026426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.484970, 36.945335, 27.017893>,  <32.467815, 36.706005, 27.012774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.484970, 36.945335, 27.017893>,  <32.513561, 37.344219, 27.026426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484970, 36.945335, 27.017893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026673, 0.023291, -0.999373,
		0.997086, -0.070861, -0.028264,
		-0.071475, -0.997214, -0.021333,
		32.463528, 36.646172, 27.011494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954494, 37.155712, 26.557989>,  <32.513561, 37.344219, 27.026426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954494, 37.155712, 26.557989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.715340, 36.836731, 26.590460>,  <32.571846, 36.645340, 26.609941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.715340, 36.836731, 26.590460>,  <32.954494, 37.155712, 26.557989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715340, 36.836731, 26.590460> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041283, -0.070503, -0.996657,
		0.800515, -0.599242, 0.009231,
		-0.597889, -0.797457, 0.081177,
		32.535973, 36.597492, 26.614813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148796, 36.717247, 26.063807>,  <32.954494, 37.155712, 26.557989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148796, 36.717247, 26.063807> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.782425, 36.575195, 26.138601>,  <32.562603, 36.489964, 26.183477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.782425, 36.575195, 26.138601>,  <33.148796, 36.717247, 26.063807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782425, 36.575195, 26.138601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087788, -0.277346, -0.956751,
		0.391626, -0.892729, 0.222853,
		-0.915927, -0.355125, 0.186987,
		32.507648, 36.468658, 26.194696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.026512, 36.000961, 25.717337>,  <33.148796, 36.717247, 26.063807>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.026512, 36.000961, 25.717337> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.653278, 36.133354, 25.773621>,  <32.429337, 36.212788, 25.807392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.653278, 36.133354, 25.773621>,  <33.026512, 36.000961, 25.717337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653278, 36.133354, 25.773621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252512, -0.324313, -0.911624,
		-0.256089, -0.886159, 0.386188,
		-0.933090, 0.330974, 0.140713,
		32.373352, 36.232647, 25.815834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820732, 35.595531, 25.283735>,  <33.026512, 36.000961, 25.717337>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820732, 35.595531, 25.283735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.544804, 35.873398, 25.365307>,  <32.379246, 36.040119, 25.414249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.544804, 35.873398, 25.365307>,  <32.820732, 35.595531, 25.283735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544804, 35.873398, 25.365307> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284286, -0.000851, -0.958739,
		-0.665832, -0.719330, 0.198072,
		-0.689818, 0.694668, 0.203929,
		32.337856, 36.081799, 25.426485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139187, 35.344120, 24.862419>,  <32.820732, 35.595531, 25.283735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139187, 35.344120, 24.862419> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.085072, 35.726952, 24.964941>,  <32.052605, 35.956650, 25.026455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.085072, 35.726952, 24.964941>,  <32.139187, 35.344120, 24.862419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085072, 35.726952, 24.964941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545768, 0.143919, -0.825485,
		-0.826943, -0.251561, 0.502874,
		-0.135286, 0.957081, 0.256307,
		32.044487, 36.014076, 25.041834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507954, 35.515816, 24.598814>,  <32.139187, 35.344120, 24.862419>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507954, 35.515816, 24.598814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.625774, 35.890591, 24.674070>,  <31.696466, 36.115456, 24.719223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.625774, 35.890591, 24.674070>,  <31.507954, 35.515816, 24.598814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.625774, 35.890591, 24.674070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514921, 0.321454, -0.794685,
		-0.805044, 0.137199, 0.577131,
		0.294551, 0.936933, 0.188139,
		31.714140, 36.171669, 24.730513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.891167, 35.931561, 24.674995>,  <31.507954, 35.515816, 24.598814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.891167, 35.931561, 24.674995> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.197180, 36.170593, 24.578974>,  <31.380787, 36.314011, 24.521360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.197180, 36.170593, 24.578974>,  <30.891167, 35.931561, 24.674995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197180, 36.170593, 24.578974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458637, 0.243896, -0.854498,
		-0.452080, 0.763817, 0.460660,
		0.765033, 0.597577, -0.240054,
		31.426689, 36.349865, 24.506958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.582245, 36.515301, 24.367249>,  <30.891167, 35.931561, 24.674995>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.582245, 36.515301, 24.367249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.960844, 36.538570, 24.240280>,  <31.188004, 36.552532, 24.164099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.960844, 36.538570, 24.240280>,  <30.582245, 36.515301, 24.367249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.960844, 36.538570, 24.240280> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322697, 0.179762, -0.929275,
		0.002996, 0.981988, 0.188918,
		0.946498, 0.058179, -0.317423,
		31.244793, 36.556023, 24.145054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.646814, 37.200722, 23.959137>,  <30.582245, 36.515301, 24.367249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.646814, 37.200722, 23.959137> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.930630, 36.942368, 23.846437>,  <31.100920, 36.787354, 23.778818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.930630, 36.942368, 23.846437>,  <30.646814, 37.200722, 23.959137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.930630, 36.942368, 23.846437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189519, 0.210190, -0.959116,
		0.678703, 0.733926, 0.026729,
		0.709539, -0.645889, -0.281749,
		31.143492, 36.748600, 23.761913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.991764, 37.615517, 23.483259>,  <30.646814, 37.200722, 23.959137>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.991764, 37.615517, 23.483259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.069429, 37.229664, 23.411945>,  <31.116028, 36.998154, 23.369158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.069429, 37.229664, 23.411945>,  <30.991764, 37.615517, 23.483259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.069429, 37.229664, 23.411945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284254, 0.118619, -0.951383,
		0.938883, 0.235399, -0.251169,
		0.194162, -0.964633, -0.178282,
		31.127678, 36.940273, 23.358461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205172, 37.719891, 22.840179>,  <30.991764, 37.615517, 23.483259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205172, 37.719891, 22.840179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.134964, 37.326115, 22.843550>,  <31.092838, 37.089848, 22.845572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.134964, 37.326115, 22.843550>,  <31.205172, 37.719891, 22.840179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.134964, 37.326115, 22.843550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390518, 0.061764, -0.918521,
		0.903708, -0.164510, -0.395283,
		-0.175520, -0.984440, 0.008427,
		31.082308, 37.030785, 22.846079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.560944, 37.560371, 22.316088>,  <31.205172, 37.719891, 22.840179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.560944, 37.560371, 22.316088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.269159, 37.299553, 22.398764>,  <31.094090, 37.143063, 22.448370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.269159, 37.299553, 22.398764>,  <31.560944, 37.560371, 22.316088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269159, 37.299553, 22.398764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233887, -0.046193, -0.971166,
		0.642796, -0.756768, -0.118810,
		-0.729459, -0.652050, 0.206691,
		31.050322, 37.103939, 22.460772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.068604, 36.942635, 22.171085>,  <31.560944, 37.560371, 22.316088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.068604, 36.942635, 22.171085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.402195, 36.950073, 21.950493>,  <32.602352, 36.954536, 21.818138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.402195, 36.950073, 21.950493>,  <32.068604, 36.942635, 22.171085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402195, 36.950073, 21.950493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540434, -0.229263, 0.809549,
		-0.111383, -0.973187, -0.201249,
		0.833982, 0.018592, -0.551480,
		32.652390, 36.955650, 21.785049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532486, 36.386425, 22.421278>,  <32.068604, 36.942635, 22.171085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532486, 36.386425, 22.421278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.765976, 36.653069, 22.235849>,  <32.906071, 36.813053, 22.124592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.765976, 36.653069, 22.235849>,  <32.532486, 36.386425, 22.421278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765976, 36.653069, 22.235849> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688304, -0.103405, 0.718015,
		0.430698, -0.738202, -0.519189,
		0.583727, 0.666607, -0.463572,
		32.941093, 36.853050, 22.096779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151276, 36.116432, 22.324097>,  <32.532486, 36.386425, 22.421278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151276, 36.116432, 22.324097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.271935, 36.497681, 22.314640>,  <33.344330, 36.726429, 22.308966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.271935, 36.497681, 22.314640>,  <33.151276, 36.116432, 22.324097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271935, 36.497681, 22.314640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712491, -0.208876, 0.669871,
		0.633533, -0.218910, -0.742101,
		0.301649, 0.953126, -0.023641,
		33.362431, 36.783619, 22.307549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925900, 36.127670, 22.120270>,  <33.151276, 36.116432, 22.324097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925900, 36.127670, 22.120270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.847683, 36.478584, 22.295603>,  <33.800751, 36.689133, 22.400803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.847683, 36.478584, 22.295603>,  <33.925900, 36.127670, 22.120270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847683, 36.478584, 22.295603> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689352, -0.194949, 0.697703,
		0.697536, 0.438595, -0.566637,
		-0.195544, 0.877285, 0.438330,
		33.789021, 36.741768, 22.427101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586147, 36.405659, 22.284161>,  <33.925900, 36.127670, 22.120270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586147, 36.405659, 22.284161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.373425, 36.632751, 22.535511>,  <34.245789, 36.769009, 22.686321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.373425, 36.632751, 22.535511>,  <34.586147, 36.405659, 22.284161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373425, 36.632751, 22.535511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748465, -0.032048, 0.662399,
		0.396205, 0.822589, -0.407885,
		-0.531810, 0.567733, 0.628377,
		34.213882, 36.803070, 22.724024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075748, 36.893032, 22.586168>,  <34.586147, 36.405659, 22.284161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075748, 36.893032, 22.586168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.766079, 36.905827, 22.839033>,  <34.580276, 36.913502, 22.990753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.766079, 36.905827, 22.839033>,  <35.075748, 36.893032, 22.586168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766079, 36.905827, 22.839033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631335, 0.110808, 0.767553,
		-0.045498, 0.993327, -0.105978,
		-0.774174, 0.031985, 0.632164,
		34.533825, 36.915421, 23.028683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367203, 37.349625, 23.032461>,  <35.075748, 36.893032, 22.586168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367203, 37.349625, 23.032461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.064655, 37.172451, 23.225012>,  <34.883129, 37.066147, 23.340542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.064655, 37.172451, 23.225012>,  <35.367203, 37.349625, 23.032461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064655, 37.172451, 23.225012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519118, 0.041338, 0.853702,
		-0.398032, 0.895601, 0.198668,
		-0.756364, -0.442933, 0.481377,
		34.837746, 37.039570, 23.369425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262154, 37.711777, 23.721619>,  <35.367203, 37.349625, 23.032461>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262154, 37.711777, 23.721619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.107086, 37.348335, 23.783785>,  <35.014046, 37.130272, 23.821085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.107086, 37.348335, 23.783785>,  <35.262154, 37.711777, 23.721619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107086, 37.348335, 23.783785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533228, -0.083516, 0.841839,
		-0.751917, 0.409226, 0.516869,
		-0.387669, -0.908603, 0.155414,
		34.990784, 37.075756, 23.830410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998234, 37.766460, 24.422159>,  <35.262154, 37.711777, 23.721619>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998234, 37.766460, 24.422159> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.047234, 37.376751, 24.346497>,  <35.076633, 37.142925, 24.301100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.047234, 37.376751, 24.346497>,  <34.998234, 37.766460, 24.422159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047234, 37.376751, 24.346497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302677, -0.144839, 0.942024,
		-0.945188, -0.172649, 0.277148,
		0.122498, -0.974276, -0.189157,
		35.083984, 37.084469, 24.289749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717125, 37.409649, 24.959684>,  <34.998234, 37.766460, 24.422159>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717125, 37.409649, 24.959684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.947868, 37.131119, 24.788866>,  <35.086315, 36.964001, 24.686375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.947868, 37.131119, 24.788866>,  <34.717125, 37.409649, 24.959684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947868, 37.131119, 24.788866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261964, -0.337479, 0.904148,
		-0.773696, -0.633438, -0.012267,
		0.576861, -0.696322, -0.427044,
		35.120926, 36.922222, 24.660753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611202, 36.746063, 25.383402>,  <34.717125, 37.409649, 24.959684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611202, 36.746063, 25.383402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.952774, 36.665504, 25.191465>,  <35.157715, 36.617168, 25.076303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.952774, 36.665504, 25.191465>,  <34.611202, 36.746063, 25.383402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952774, 36.665504, 25.191465> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366412, -0.422070, 0.829216,
		-0.369523, -0.883911, -0.286626,
		0.853929, -0.201391, -0.479840,
		35.208954, 36.605083, 25.047512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755344, 36.032078, 25.514605>,  <34.611202, 36.746063, 25.383402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755344, 36.032078, 25.514605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.108807, 36.172127, 25.390306>,  <35.320885, 36.256157, 25.315727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.108807, 36.172127, 25.390306>,  <34.755344, 36.032078, 25.514605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108807, 36.172127, 25.390306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426038, -0.326354, 0.843792,
		0.194021, -0.878012, -0.437551,
		0.883656, 0.350126, -0.310747,
		35.373905, 36.277164, 25.297083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127174, 35.453625, 25.504206>,  <34.755344, 36.032078, 25.514605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127174, 35.453625, 25.504206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.357475, 35.778091, 25.545221>,  <35.495655, 35.972771, 25.569830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.357475, 35.778091, 25.545221>,  <35.127174, 35.453625, 25.504206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357475, 35.778091, 25.545221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358156, -0.362949, 0.860228,
		0.735008, -0.458552, -0.499494,
		0.575750, 0.811171, 0.102537,
		35.530201, 36.021442, 25.575983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788532, 35.116470, 25.665119>,  <35.127174, 35.453625, 25.504206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788532, 35.116470, 25.665119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.744606, 35.496826, 25.780874>,  <35.718250, 35.725040, 25.850328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.744606, 35.496826, 25.780874>,  <35.788532, 35.116470, 25.665119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744606, 35.496826, 25.780874> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309075, -0.244049, 0.919192,
		0.944677, 0.190384, -0.267096,
		-0.109814, 0.950891, 0.289390,
		35.711662, 35.782093, 25.867691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.486176, 41.674210, 22.430672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.143215, 41.485947, 22.347393>,  <33.937439, 41.372990, 22.297426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.143215, 41.485947, 22.347393>,  <34.486176, 41.674210, 22.430672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143215, 41.485947, 22.347393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041671, 0.339726, -0.939601,
		0.512961, -0.814289, -0.271668,
		-0.857400, -0.470658, -0.208198,
		33.885994, 41.344749, 22.284933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544239, 41.330849, 21.747953>,  <34.486176, 41.674210, 22.430672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544239, 41.330849, 21.747953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.151703, 41.378910, 21.808002>,  <33.916180, 41.407745, 21.844032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.151703, 41.378910, 21.808002>,  <34.544239, 41.330849, 21.747953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151703, 41.378910, 21.808002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091793, 0.393309, -0.914813,
		-0.168961, -0.911522, -0.374940,
		-0.981339, 0.120151, 0.150125,
		33.857300, 41.414955, 21.853041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356712, 41.044609, 21.167896>,  <34.544239, 41.330849, 21.747953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356712, 41.044609, 21.167896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.038101, 41.254616, 21.287828>,  <33.846935, 41.380619, 21.359787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.038101, 41.254616, 21.287828>,  <34.356712, 41.044609, 21.167896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038101, 41.254616, 21.287828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334506, 0.030412, -0.941903,
		-0.503637, -0.850546, 0.151399,
		-0.796527, 0.525021, 0.299830,
		33.799145, 41.412121, 21.377777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733967, 40.751930, 20.864281>,  <34.356712, 41.044609, 21.167896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733967, 40.751930, 20.864281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.629459, 41.126350, 20.958553>,  <33.566757, 41.351002, 21.015118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.629459, 41.126350, 20.958553>,  <33.733967, 40.751930, 20.864281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629459, 41.126350, 20.958553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475100, 0.087839, -0.875537,
		-0.840250, -0.340721, 0.421769,
		-0.261266, 0.936053, 0.235683,
		33.551079, 41.407166, 21.029259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229694, 40.922165, 20.437132>,  <33.733967, 40.751930, 20.864281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229694, 40.922165, 20.437132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.245163, 41.297756, 20.573853>,  <33.254444, 41.523109, 20.655884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.245163, 41.297756, 20.573853>,  <33.229694, 40.922165, 20.437132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245163, 41.297756, 20.573853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675794, 0.276545, -0.683247,
		-0.736076, -0.204562, 0.645250,
		0.038674, 0.938977, 0.341800,
		33.256763, 41.579449, 20.676392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509354, 41.285286, 20.618221>,  <33.229694, 40.922165, 20.437132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509354, 41.285286, 20.618221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.771252, 41.571785, 20.521646>,  <32.928391, 41.743683, 20.463701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.771252, 41.571785, 20.521646>,  <32.509354, 41.285286, 20.618221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771252, 41.571785, 20.521646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613851, 0.317515, -0.722753,
		-0.441011, 0.621428, 0.647562,
		0.654750, 0.716248, -0.241437,
		32.967678, 41.786659, 20.449215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134151, 41.883270, 20.689632>,  <32.509354, 41.285286, 20.618221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134151, 41.883270, 20.689632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.444283, 41.977482, 20.455231>,  <32.630360, 42.034008, 20.314590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.444283, 41.977482, 20.455231>,  <32.134151, 41.883270, 20.689632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444283, 41.977482, 20.455231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622779, 0.439345, -0.647397,
		0.104975, 0.866892, 0.487318,
		0.775323, 0.235531, -0.586002,
		32.676880, 42.048141, 20.279430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964659, 42.445873, 20.425617>,  <32.134151, 41.883270, 20.689632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964659, 42.445873, 20.425617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.250523, 42.334053, 20.169144>,  <32.422039, 42.266960, 20.015259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.250523, 42.334053, 20.169144>,  <31.964659, 42.445873, 20.425617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250523, 42.334053, 20.169144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536113, 0.369864, -0.758804,
		0.449272, 0.886033, 0.114458,
		0.714659, -0.279547, -0.641183,
		32.464920, 42.250191, 19.976789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001839, 43.019310, 19.957291>,  <31.964659, 42.445873, 20.425617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001839, 43.019310, 19.957291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.179317, 42.726238, 19.750866>,  <32.285805, 42.550396, 19.627010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.179317, 42.726238, 19.750866>,  <32.001839, 43.019310, 19.957291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179317, 42.726238, 19.750866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589602, 0.195018, -0.783797,
		0.674912, 0.652036, -0.345460,
		0.443693, -0.732678, -0.516062,
		32.312424, 42.506435, 19.596046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309299, 43.283916, 19.368462>,  <32.001839, 43.019310, 19.957291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309299, 43.283916, 19.368462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.262325, 42.894112, 19.292013>,  <32.234142, 42.660229, 19.246143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.262325, 42.894112, 19.292013>,  <32.309299, 43.283916, 19.368462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262325, 42.894112, 19.292013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644729, 0.221195, -0.731709,
		0.755337, 0.037296, -0.654274,
		-0.117433, -0.974516, -0.191122,
		32.227097, 42.601757, 19.234676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237335, 43.241650, 18.615519>,  <32.309299, 43.283916, 19.368462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237335, 43.241650, 18.615519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.091728, 42.900265, 18.764698>,  <32.004364, 42.695435, 18.854206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.091728, 42.900265, 18.764698>,  <32.237335, 43.241650, 18.615519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091728, 42.900265, 18.764698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664920, -0.042268, -0.745717,
		0.652209, -0.519431, -0.552101,
		-0.364013, -0.853466, 0.372948,
		31.982525, 42.644226, 18.876583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052486, 42.858269, 17.971439>,  <32.237335, 43.241650, 18.615519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052486, 42.858269, 17.971439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.877762, 42.650570, 18.265265>,  <31.772928, 42.525951, 18.441559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.877762, 42.650570, 18.265265>,  <32.052486, 42.858269, 17.971439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.877762, 42.650570, 18.265265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731338, -0.270478, -0.626088,
		0.523777, -0.810693, -0.261599,
		-0.436809, -0.519249, 0.734561,
		31.746719, 42.494797, 18.485632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.884163, 42.148830, 17.802179>,  <32.052486, 42.858269, 17.971439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.884163, 42.148830, 17.802179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.637299, 42.271366, 18.092081>,  <31.489180, 42.344887, 18.266022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.637299, 42.271366, 18.092081>,  <31.884163, 42.148830, 17.802179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637299, 42.271366, 18.092081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784763, -0.306475, -0.538721,
		0.057089, -0.901238, 0.429548,
		-0.617161, 0.306338, 0.724754,
		31.452150, 42.363266, 18.309507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346441, 41.599548, 17.812738>,  <31.884163, 42.148830, 17.802179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346441, 41.599548, 17.812738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.228306, 41.926441, 18.010691>,  <31.157425, 42.122578, 18.129463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.228306, 41.926441, 18.010691>,  <31.346441, 41.599548, 17.812738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228306, 41.926441, 18.010691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939328, -0.153796, -0.306610,
		-0.174461, -0.555408, 0.813071,
		-0.295340, 0.817232, 0.494879,
		31.139704, 42.171612, 18.159155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.969965, 40.973900, 18.181328>,  <31.346441, 41.599548, 17.812738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.969965, 40.973900, 18.181328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.926294, 40.630142, 17.981520>,  <30.900093, 40.423885, 17.861635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.926294, 40.630142, 17.981520>,  <30.969965, 40.973900, 18.181328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.926294, 40.630142, 17.981520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362649, -0.502323, 0.784957,
		-0.925509, -0.095452, 0.366500,
		-0.109175, -0.859396, -0.499520,
		30.893541, 40.372322, 17.831663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.612650, 40.445389, 18.635309>,  <30.969965, 40.973900, 18.181328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.612650, 40.445389, 18.635309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.803892, 40.239780, 18.350437>,  <30.918638, 40.116417, 18.179514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.803892, 40.239780, 18.350437>,  <30.612650, 40.445389, 18.635309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.803892, 40.239780, 18.350437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364988, -0.621251, 0.693420,
		-0.798873, -0.591465, -0.109412,
		0.478106, -0.514020, -0.712178,
		30.947325, 40.085575, 18.136784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858915, 39.971138, 18.993620>,  <30.612650, 40.445389, 18.635309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.858915, 39.971138, 18.993620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.006697, 39.847069, 18.643238>,  <31.095366, 39.772629, 18.433008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.006697, 39.847069, 18.643238>,  <30.858915, 39.971138, 18.993620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.006697, 39.847069, 18.643238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519382, -0.712735, 0.471434,
		-0.770550, -0.629129, -0.102224,
		0.369451, -0.310171, -0.875957,
		31.117533, 39.754017, 18.380451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.728622, 39.277691, 18.941792>,  <30.858915, 39.971138, 18.993620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.728622, 39.277691, 18.941792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.060987, 39.356365, 18.733601>,  <31.260406, 39.403572, 18.608686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.060987, 39.356365, 18.733601>,  <30.728622, 39.277691, 18.941792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.060987, 39.356365, 18.733601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467548, -0.753933, 0.461502,
		-0.301632, -0.626816, -0.718415,
		0.830913, 0.196690, -0.520477,
		31.310261, 39.415371, 18.577457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.909906, 38.676182, 18.588835>,  <30.728622, 39.277691, 18.941792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.909906, 38.676182, 18.588835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.244148, 38.895802, 18.595840>,  <31.444695, 39.027573, 18.600044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.244148, 38.895802, 18.595840>,  <30.909906, 38.676182, 18.588835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.244148, 38.895802, 18.595840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522110, -0.803711, 0.285395,
		0.170771, -0.229334, -0.958250,
		0.835607, 0.549049, 0.017513,
		31.494831, 39.060516, 18.601095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335487, 38.232964, 18.333862>,  <30.909906, 38.676182, 18.588835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335487, 38.232964, 18.333862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.551872, 38.502087, 18.535728>,  <31.681704, 38.663563, 18.656849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.551872, 38.502087, 18.535728>,  <31.335487, 38.232964, 18.333862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.551872, 38.502087, 18.535728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470418, -0.739454, 0.481574,
		0.697185, -0.023110, -0.716519,
		0.540962, 0.672810, 0.504665,
		31.714161, 38.703930, 18.687128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922817, 37.892647, 18.409159>,  <31.335487, 38.232964, 18.333862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922817, 37.892647, 18.409159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.980400, 38.184559, 18.676502>,  <32.014950, 38.359703, 18.836908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.980400, 38.184559, 18.676502>,  <31.922817, 37.892647, 18.409159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.980400, 38.184559, 18.676502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363763, -0.667132, 0.650085,
		0.920300, 0.149539, -0.361505,
		0.143959, 0.729775, 0.668359,
		32.023586, 38.403492, 18.877010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610306, 37.782646, 18.607290>,  <31.922817, 37.892647, 18.409159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610306, 37.782646, 18.607290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.403431, 37.973434, 18.891548>,  <32.279305, 38.087906, 19.062103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.403431, 37.973434, 18.891548>,  <32.610306, 37.782646, 18.607290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403431, 37.973434, 18.891548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290284, -0.683346, 0.669905,
		0.805140, 0.552757, 0.214963,
		-0.517189, 0.476967, 0.710646,
		32.248276, 38.116524, 19.104742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060600, 37.924583, 19.145042>,  <32.610306, 37.782646, 18.607290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060600, 37.924583, 19.145042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.699318, 37.941162, 19.315920>,  <32.482548, 37.951107, 19.418446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.699318, 37.941162, 19.315920>,  <33.060600, 37.924583, 19.145042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699318, 37.941162, 19.315920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290927, -0.672661, 0.680359,
		0.315551, 0.738789, 0.595498,
		-0.903210, 0.041442, 0.427193,
		32.428356, 37.953594, 19.444078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283779, 37.918949, 19.843739>,  <33.060600, 37.924583, 19.145042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283779, 37.918949, 19.843739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.890095, 37.849762, 19.858797>,  <32.653885, 37.808250, 19.867832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.890095, 37.849762, 19.858797>,  <33.283779, 37.918949, 19.843739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890095, 37.849762, 19.858797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104867, -0.398377, 0.911207,
		-0.142610, 0.900766, 0.410224,
		-0.984208, -0.172966, 0.037648,
		32.594833, 37.797871, 19.870090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095188, 38.256317, 20.377445>,  <33.283779, 37.918949, 19.843739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095188, 38.256317, 20.377445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.818787, 37.971733, 20.326315>,  <32.652946, 37.800983, 20.295637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.818787, 37.971733, 20.326315>,  <33.095188, 38.256317, 20.377445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818787, 37.971733, 20.326315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226192, -0.380774, 0.896576,
		-0.686549, 0.590626, 0.424043,
		-0.691005, -0.711458, -0.127825,
		32.611485, 37.758297, 20.287968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820225, 38.258327, 20.992044>,  <33.095188, 38.256317, 20.377445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820225, 38.258327, 20.992044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.717915, 37.905682, 20.833385>,  <32.656528, 37.694092, 20.738190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.717915, 37.905682, 20.833385>,  <32.820225, 38.258327, 20.992044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717915, 37.905682, 20.833385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132901, -0.438466, 0.888867,
		-0.957557, 0.174635, 0.229317,
		-0.255776, -0.881618, -0.396647,
		32.641182, 37.641197, 20.714392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428825, 38.097828, 21.488604>,  <32.820225, 38.258327, 20.992044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428825, 38.097828, 21.488604> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.505280, 37.767529, 21.276337>,  <32.551151, 37.569347, 21.148977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.505280, 37.767529, 21.276337>,  <32.428825, 38.097828, 21.488604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505280, 37.767529, 21.276337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260786, -0.478484, 0.838477,
		-0.946287, -0.298650, 0.123890,
		0.191132, -0.825749, -0.530667,
		32.562618, 37.519802, 21.117136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.064411, 37.549061, 21.749384>,  <32.428825, 38.097828, 21.488604>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.064411, 37.549061, 21.749384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.377991, 37.394127, 21.555311>,  <32.566139, 37.301167, 21.438868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.377991, 37.394127, 21.555311>,  <32.064411, 37.549061, 21.749384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377991, 37.394127, 21.555311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259898, -0.504975, 0.823075,
		-0.563811, -0.771344, -0.295206,
		0.783946, -0.387335, -0.485181,
		32.613174, 37.277927, 21.409758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531816, 37.007751, 21.656572>,  <32.064411, 37.549061, 21.749384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531816, 37.007751, 21.656572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.195711, 36.944252, 21.863939>,  <30.994047, 36.906151, 21.988359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.195711, 36.944252, 21.863939>,  <31.531816, 37.007751, 21.656572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.195711, 36.944252, 21.863939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524873, -0.001477, -0.851179,
		0.135892, -0.987317, -0.082084,
		-0.840263, -0.158752, 0.518417,
		30.943632, 36.896626, 22.019464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.168369, 36.722923, 21.188541>,  <31.531816, 37.007751, 21.656572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.168369, 36.722923, 21.188541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.887045, 36.764771, 21.469797>,  <30.718250, 36.789879, 21.638552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.887045, 36.764771, 21.469797>,  <31.168369, 36.722923, 21.188541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887045, 36.764771, 21.469797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710761, -0.121662, -0.692833,
		0.013065, -0.987043, 0.159922,
		-0.703313, 0.104615, 0.703141,
		30.676050, 36.796154, 21.680738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716766, 36.304180, 21.049181>,  <31.168369, 36.722923, 21.188541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.716766, 36.304180, 21.049181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.515240, 36.590031, 21.243286>,  <30.394323, 36.761539, 21.359749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.515240, 36.590031, 21.243286>,  <30.716766, 36.304180, 21.049181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515240, 36.590031, 21.243286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613102, 0.099900, -0.783662,
		-0.608503, -0.692336, 0.387807,
		-0.503815, 0.714626, 0.485262,
		30.364096, 36.804417, 21.388865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.072529, 36.119247, 20.941740>,  <30.716766, 36.304180, 21.049181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.072529, 36.119247, 20.941740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.077551, 36.509911, 21.027514>,  <30.080564, 36.744308, 21.078978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.077551, 36.509911, 21.027514>,  <30.072529, 36.119247, 20.941740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.077551, 36.509911, 21.027514> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471272, 0.194918, -0.860180,
		-0.881899, -0.090256, 0.462719,
		0.012556, 0.976658, 0.214433,
		30.081318, 36.802910, 21.091843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.415033, 36.313850, 20.841320>,  <30.072529, 36.119247, 20.941740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.415033, 36.313850, 20.841320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.591328, 36.672733, 20.852491>,  <29.697104, 36.888062, 20.859194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.591328, 36.672733, 20.852491>,  <29.415033, 36.313850, 20.841320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.591328, 36.672733, 20.852491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580697, 0.308705, -0.753321,
		-0.684503, 0.315797, 0.657060,
		0.440735, 0.897203, 0.027927,
		29.723549, 36.941895, 20.860870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.882952, 36.863327, 20.854603>,  <29.415033, 36.313850, 20.841320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.882952, 36.863327, 20.854603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.225534, 37.000862, 20.700584>,  <29.431084, 37.083382, 20.608173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.225534, 37.000862, 20.700584>,  <28.882952, 36.863327, 20.854603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.225534, 37.000862, 20.700584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503343, 0.390665, -0.770732,
		-0.114583, 0.853907, 0.507655,
		0.856456, 0.343837, -0.385044,
		29.482471, 37.104012, 20.585072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.756592, 37.543900, 20.594345>,  <28.882952, 36.863327, 20.854603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.756592, 37.543900, 20.594345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.079704, 37.410248, 20.400089>,  <29.273571, 37.330055, 20.283535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.079704, 37.410248, 20.400089>,  <28.756592, 37.543900, 20.594345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.079704, 37.410248, 20.400089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448704, 0.185773, -0.874158,
		0.382302, 0.924038, 0.000139,
		0.807781, -0.334130, -0.485641,
		29.322039, 37.310009, 20.254396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.270393, 37.947647, 21.001631>,  <28.756592, 37.543900, 20.594345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.270393, 37.947647, 21.001631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.881159, 37.860313, 21.031111>,  <27.647617, 37.807915, 21.048800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.881159, 37.860313, 21.031111>,  <28.270393, 37.947647, 21.001631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.881159, 37.860313, 21.031111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108396, -0.151450, 0.982504,
		-0.203353, 0.964050, 0.171040,
		-0.973087, -0.218335, 0.073702,
		27.589233, 37.794811, 21.053221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.166533, 38.114300, 21.654892>,  <28.270393, 37.947647, 21.001631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.166533, 38.114300, 21.654892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.849230, 37.888790, 21.562883>,  <27.658848, 37.753487, 21.507679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.849230, 37.888790, 21.562883>,  <28.166533, 38.114300, 21.654892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.849230, 37.888790, 21.562883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029391, -0.412782, 0.910355,
		-0.608178, 0.715384, 0.344012,
		-0.793256, -0.563770, -0.230019,
		27.611254, 37.719658, 21.493877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.733576, 38.274979, 22.182369>,  <28.166533, 38.114300, 21.654892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.733576, 38.274979, 22.182369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.639484, 37.916233, 22.032545>,  <27.583029, 37.700985, 21.942652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.639484, 37.916233, 22.032545>,  <27.733576, 38.274979, 22.182369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.639484, 37.916233, 22.032545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025341, -0.390901, 0.920084,
		-0.971609, 0.206940, 0.114680,
		-0.235230, -0.896868, -0.374559,
		27.568914, 37.647171, 21.920177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.051361, 38.005688, 22.485149>,  <27.733576, 38.274979, 22.182369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.051361, 38.005688, 22.485149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.293472, 37.706802, 22.375381>,  <27.438740, 37.527470, 22.309521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.293472, 37.706802, 22.375381>,  <27.051361, 38.005688, 22.485149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.293472, 37.706802, 22.375381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136813, -0.241957, 0.960593,
		-0.784170, -0.618969, -0.044222,
		0.605277, -0.747218, -0.274418,
		27.475056, 37.482635, 22.293056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.046623, 37.531364, 23.039507>,  <27.051361, 38.005688, 22.485149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.046623, 37.531364, 23.039507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.342752, 37.334286, 22.856567>,  <27.520430, 37.216038, 22.746803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.342752, 37.334286, 22.856567>,  <27.046623, 37.531364, 23.039507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.342752, 37.334286, 22.856567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402965, -0.219305, 0.888552,
		-0.538089, -0.842111, 0.036184,
		0.740324, -0.492701, -0.457347,
		27.564850, 37.186474, 22.719364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.024878, 36.982899, 23.464121>,  <27.046623, 37.531364, 23.039507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.024878, 36.982899, 23.464121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.370035, 36.998558, 23.262573>,  <27.577129, 37.007954, 23.141645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.370035, 36.998558, 23.262573>,  <27.024878, 36.982899, 23.464121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.370035, 36.998558, 23.262573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504258, -0.133270, 0.853208,
		-0.033749, -0.990306, -0.134739,
		0.862894, 0.039148, -0.503867,
		27.628902, 37.010303, 23.111412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.507015, 36.337891, 23.641941>,  <27.024878, 36.982899, 23.464121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.507015, 36.337891, 23.641941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.742792, 36.641487, 23.531309>,  <27.884258, 36.823643, 23.464930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.742792, 36.641487, 23.531309>,  <27.507015, 36.337891, 23.641941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.742792, 36.641487, 23.531309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526924, -0.101733, 0.843802,
		0.612299, -0.643107, -0.459895,
		0.589441, 0.758988, -0.276578,
		27.919624, 36.869183, 23.448336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.089521, 43.681473, 19.313641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.436178, 43.482193, 19.302841>,  <29.644173, 43.362625, 19.296362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.436178, 43.482193, 19.302841>,  <29.089521, 43.681473, 19.313641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.436178, 43.482193, 19.302841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131574, 0.176015, 0.975555,
		-0.481265, -0.849011, 0.218092,
		0.866644, -0.498196, -0.026998,
		29.696171, 43.332733, 19.294743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.113771, 43.275055, 19.914148>,  <29.089521, 43.681473, 19.313641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.113771, 43.275055, 19.914148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.486984, 43.223076, 19.779947>,  <29.710913, 43.191887, 19.699427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.486984, 43.223076, 19.779947>,  <29.113771, 43.275055, 19.914148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.486984, 43.223076, 19.779947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326530, -0.085755, 0.941289,
		-0.151096, -0.987805, -0.037578,
		0.933032, -0.129954, -0.335505,
		29.766893, 43.184090, 19.679296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.346039, 42.638870, 20.267109>,  <29.113771, 43.275055, 19.914148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.346039, 42.638870, 20.267109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.648371, 42.859158, 20.125444>,  <29.829769, 42.991329, 20.040445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.648371, 42.859158, 20.125444>,  <29.346039, 42.638870, 20.267109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.648371, 42.859158, 20.125444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485871, -0.109144, 0.867189,
		0.438923, -0.827524, -0.350073,
		0.755828, 0.550720, -0.354163,
		29.875120, 43.024372, 20.019196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.927786, 42.283112, 20.287710>,  <29.346039, 42.638870, 20.267109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.927786, 42.283112, 20.287710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.034998, 42.667774, 20.310978>,  <30.099325, 42.898571, 20.324940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.034998, 42.667774, 20.310978>,  <29.927786, 42.283112, 20.287710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.034998, 42.667774, 20.310978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522950, -0.195937, 0.829537,
		0.809124, -0.191921, -0.555413,
		0.268032, 0.961652, 0.058172,
		30.115408, 42.956268, 20.328430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.430269, 42.284824, 20.715149>,  <29.927786, 42.283112, 20.287710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.430269, 42.284824, 20.715149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.406261, 42.684048, 20.721760>,  <30.391857, 42.923584, 20.725727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.406261, 42.684048, 20.721760>,  <30.430269, 42.284824, 20.715149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.406261, 42.684048, 20.721760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487117, 0.014832, 0.873211,
		0.871272, 0.060460, -0.487062,
		-0.060018, 0.998061, 0.016528,
		30.388256, 42.983467, 20.726719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113226, 42.523907, 20.860901>,  <30.430269, 42.284824, 20.715149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.113226, 42.523907, 20.860901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.863670, 42.815052, 20.974726>,  <30.713936, 42.989738, 21.043020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.863670, 42.815052, 20.974726>,  <31.113226, 42.523907, 20.860901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.863670, 42.815052, 20.974726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442238, 0.028600, 0.896441,
		0.644349, 0.685125, -0.339733,
		-0.623891, 0.727864, 0.284560,
		30.676502, 43.033413, 21.060093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535328, 42.913460, 21.303394>,  <31.113226, 42.523907, 20.860901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535328, 42.913460, 21.303394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.167498, 43.060692, 21.358374>,  <30.946798, 43.149033, 21.391361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.167498, 43.060692, 21.358374>,  <31.535328, 42.913460, 21.303394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.167498, 43.060692, 21.358374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245814, 0.266048, 0.932091,
		0.306519, 0.890917, -0.335132,
		-0.919577, 0.368084, 0.137451,
		30.891624, 43.171116, 21.399609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674417, 43.489189, 21.595396>,  <31.535328, 42.913460, 21.303394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.674417, 43.489189, 21.595396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.322466, 43.339432, 21.712452>,  <31.111294, 43.249577, 21.782686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.322466, 43.339432, 21.712452>,  <31.674417, 43.489189, 21.595396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.322466, 43.339432, 21.712452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274855, 0.101393, 0.956125,
		-0.387639, 0.921709, 0.013690,
		-0.879881, -0.374394, 0.292640,
		31.058502, 43.227112, 21.800243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330753, 44.069885, 22.040426>,  <31.674417, 43.489189, 21.595396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330753, 44.069885, 22.040426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.163004, 43.719521, 22.135845>,  <31.062353, 43.509300, 22.193096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.163004, 43.719521, 22.135845>,  <31.330753, 44.069885, 22.040426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.163004, 43.719521, 22.135845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118145, 0.207877, 0.970994,
		-0.900093, 0.435393, 0.016307,
		-0.419375, -0.875911, 0.238548,
		31.037191, 43.456749, 22.207409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.790470, 44.267937, 22.444895>,  <31.330753, 44.069885, 22.040426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.790470, 44.267937, 22.444895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.817736, 43.875973, 22.519865>,  <30.834095, 43.640793, 22.564846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.817736, 43.875973, 22.519865>,  <30.790470, 44.267937, 22.444895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.817736, 43.875973, 22.519865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052597, 0.184070, 0.981505,
		-0.996287, -0.076763, -0.038993,
		0.068166, -0.979911, 0.187425,
		30.838186, 43.582001, 22.576092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.301331, 44.117599, 23.100773>,  <30.790470, 44.267937, 22.444895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.301331, 44.117599, 23.100773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.537813, 43.795414, 23.117245>,  <30.679703, 43.602100, 23.127127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.537813, 43.795414, 23.117245>,  <30.301331, 44.117599, 23.100773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537813, 43.795414, 23.117245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109104, 0.130461, 0.985432,
		-0.799106, -0.578101, 0.165010,
		0.591207, -0.805468, 0.041179,
		30.715176, 43.553772, 23.129599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.124935, 43.670807, 23.688086>,  <30.301331, 44.117599, 23.100773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.124935, 43.670807, 23.688086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.501528, 43.567154, 23.601860>,  <30.727484, 43.504963, 23.550125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.501528, 43.567154, 23.601860>,  <30.124935, 43.670807, 23.688086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.501528, 43.567154, 23.601860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227241, 0.015617, 0.973713,
		-0.248952, -0.965716, 0.073588,
		0.941480, -0.259130, -0.215562,
		30.783972, 43.489414, 23.537191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.668257, 43.137878, 23.474916>,  <30.124935, 43.670807, 23.688086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.668257, 43.137878, 23.474916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.290766, 43.074783, 23.591190>,  <29.064272, 43.036926, 23.660955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.290766, 43.074783, 23.591190>,  <29.668257, 43.137878, 23.474916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.290766, 43.074783, 23.591190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273307, -0.122975, -0.954034,
		0.186238, -0.979793, 0.072942,
		-0.943726, -0.157742, 0.290687,
		29.007648, 43.027462, 23.678396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.449291, 42.503220, 23.178749>,  <29.668257, 43.137878, 23.474916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.449291, 42.503220, 23.178749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.131601, 42.729446, 23.267601>,  <28.940987, 42.865181, 23.320911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.131601, 42.729446, 23.267601>,  <29.449291, 42.503220, 23.178749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.131601, 42.729446, 23.267601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404132, -0.218688, -0.888174,
		-0.453743, -0.795181, 0.402250,
		-0.794226, 0.565565, 0.222130,
		28.893333, 42.899117, 23.334240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.825829, 42.068806, 23.115099>,  <29.449291, 42.503220, 23.178749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.825829, 42.068806, 23.115099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.728567, 42.454441, 23.072369>,  <28.670210, 42.685822, 23.046730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.728567, 42.454441, 23.072369>,  <28.825829, 42.068806, 23.115099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.728567, 42.454441, 23.072369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483209, -0.215886, -0.848471,
		-0.841062, -0.154691, 0.518349,
		-0.243155, 0.964087, -0.106825,
		28.655621, 42.743668, 23.040321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.173506, 42.021286, 22.907574>,  <28.825829, 42.068806, 23.115099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.173506, 42.021286, 22.907574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.244610, 42.401806, 22.806839>,  <28.287271, 42.630119, 22.746399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.244610, 42.401806, 22.806839>,  <28.173506, 42.021286, 22.907574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.244610, 42.401806, 22.806839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629306, -0.086855, -0.772289,
		-0.756555, 0.295764, 0.583222,
		0.177760, 0.951304, -0.251837,
		28.297937, 42.687199, 22.731289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.479368, 42.223961, 22.697441>,  <28.173506, 42.021286, 22.907574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.479368, 42.223961, 22.697441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.744022, 42.473743, 22.531410>,  <27.902815, 42.623615, 22.431791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.744022, 42.473743, 22.531410>,  <27.479368, 42.223961, 22.697441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.744022, 42.473743, 22.531410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518252, -0.019218, -0.855012,
		-0.541897, 0.780821, 0.310911,
		0.661636, 0.624459, -0.415077,
		27.942513, 42.661079, 22.406887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.075863, 42.834179, 22.419006>,  <27.479368, 42.223961, 22.697441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.075863, 42.834179, 22.419006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.429863, 42.802116, 22.235550>,  <27.642263, 42.782879, 22.125477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.429863, 42.802116, 22.235550>,  <27.075863, 42.834179, 22.419006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.429863, 42.802116, 22.235550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443271, 0.156287, -0.882658,
		0.142433, 0.984453, 0.102781,
		0.884999, -0.080160, -0.458641,
		27.695362, 42.778069, 22.097958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.913885, 43.176632, 21.847281>,  <27.075863, 42.834179, 22.419006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.913885, 43.176632, 21.847281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.274689, 43.028881, 21.757893>,  <27.491171, 42.940231, 21.704260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.274689, 43.028881, 21.757893>,  <26.913885, 43.176632, 21.847281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.274689, 43.028881, 21.757893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263774, -0.061766, -0.962605,
		0.341762, 0.927225, -0.153146,
		0.902010, -0.369377, -0.223468,
		27.545292, 42.918068, 21.690851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.176796, 43.590355, 21.373863>,  <26.913885, 43.176632, 21.847281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.176796, 43.590355, 21.373863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.372768, 43.245972, 21.319139>,  <27.490353, 43.039341, 21.286304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.372768, 43.245972, 21.319139>,  <27.176796, 43.590355, 21.373863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.372768, 43.245972, 21.319139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307019, -0.023528, -0.951413,
		0.815908, 0.508131, -0.275857,
		0.489933, -0.860958, -0.136809,
		27.519749, 42.987682, 21.278097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.620972, 43.597702, 20.833128>,  <27.176796, 43.590355, 21.373863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.620972, 43.597702, 20.833128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.556822, 43.203018, 20.843615>,  <27.518332, 42.966209, 20.849907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.556822, 43.203018, 20.843615>,  <27.620972, 43.597702, 20.833128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.556822, 43.203018, 20.843615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410921, 0.042596, -0.910675,
		0.897454, -0.156823, -0.412291,
		-0.160376, -0.986708, 0.026214,
		27.508709, 42.907005, 20.851479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.830500, 43.290760, 20.085402>,  <27.620972, 43.597702, 20.833128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.830500, 43.290760, 20.085402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.612894, 43.005726, 20.262609>,  <27.482330, 42.834705, 20.368935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.612894, 43.005726, 20.262609>,  <27.830500, 43.290760, 20.085402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.612894, 43.005726, 20.262609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320278, -0.311662, -0.894589,
		0.775546, -0.628558, -0.058678,
		-0.544013, -0.712588, 0.443022,
		27.449690, 42.791950, 20.395515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.915642, 42.619312, 19.744656>,  <27.830500, 43.290760, 20.085402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.915642, 42.619312, 19.744656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.561222, 42.580418, 19.925966>,  <27.348570, 42.557079, 20.034752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.561222, 42.580418, 19.925966>,  <27.915642, 42.619312, 19.744656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.561222, 42.580418, 19.925966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425537, -0.217344, -0.878453,
		0.183936, -0.971240, 0.151199,
		-0.886051, -0.097238, 0.453275,
		27.295406, 42.551247, 20.061949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.666620, 42.009144, 19.473904>,  <27.915642, 42.619312, 19.744656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.666620, 42.009144, 19.473904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.336006, 42.166382, 19.635054>,  <27.137638, 42.260727, 19.731745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.336006, 42.166382, 19.635054>,  <27.666620, 42.009144, 19.473904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.336006, 42.166382, 19.635054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545209, -0.381163, -0.746634,
		-0.139938, -0.836773, 0.529366,
		-0.826538, 0.393097, 0.402877,
		27.088045, 42.284313, 19.755917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.161299, 41.521740, 19.534008>,  <27.666620, 42.009144, 19.473904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.161299, 41.521740, 19.534008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.984106, 41.880276, 19.526552>,  <26.877790, 42.095398, 19.522079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.984106, 41.880276, 19.526552>,  <27.161299, 41.521740, 19.534008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.984106, 41.880276, 19.526552> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480571, -0.254952, -0.839077,
		-0.756849, -0.362737, 0.543693,
		-0.442980, 0.896338, -0.018640,
		26.851212, 42.149178, 19.520960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.902206, 40.732536, 19.725567>,  <27.161299, 41.521740, 19.534008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.902206, 40.732536, 19.725567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.806787, 40.444927, 19.464460>,  <26.749537, 40.272362, 19.307796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.806787, 40.444927, 19.464460>,  <26.902206, 40.732536, 19.725567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.806787, 40.444927, 19.464460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322397, -0.692683, 0.645175,
		-0.916054, -0.056544, 0.397049,
		-0.238548, -0.719022, -0.652765,
		26.735224, 40.229221, 19.268631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.568382, 40.188534, 20.145144>,  <26.902206, 40.732536, 19.725567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.568382, 40.188534, 20.145144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.695576, 39.999760, 19.816227>,  <26.771893, 39.886494, 19.618877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.695576, 39.999760, 19.816227>,  <26.568382, 40.188534, 20.145144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.695576, 39.999760, 19.816227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084528, -0.849741, 0.520380,
		-0.944321, -0.234978, -0.230310,
		0.317982, -0.471938, -0.822291,
		26.790970, 39.858177, 19.569540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.128595, 39.658958, 20.025665>,  <26.568382, 40.188534, 20.145144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.128595, 39.658958, 20.025665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.473898, 39.563965, 19.847504>,  <26.681080, 39.506969, 19.740606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.473898, 39.563965, 19.847504>,  <26.128595, 39.658958, 20.025665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.473898, 39.563965, 19.847504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034298, -0.907963, 0.417644,
		-0.503597, -0.345258, -0.791951,
		0.863258, -0.237487, -0.445406,
		26.732876, 39.492718, 19.713882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.023556, 38.969494, 19.883188>,  <26.128595, 39.658958, 20.025665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.023556, 38.969494, 19.883188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.414557, 39.024429, 19.819153>,  <26.649157, 39.057388, 19.780731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.414557, 39.024429, 19.819153>,  <26.023556, 38.969494, 19.883188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.414557, 39.024429, 19.819153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184793, -0.923530, 0.336072,
		-0.101692, -0.358095, -0.928131,
		0.977502, 0.137336, -0.160088,
		26.707808, 39.065632, 19.771126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.257656, 38.408794, 19.557985>,  <26.023556, 38.969494, 19.883188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.257656, 38.408794, 19.557985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.578133, 38.579201, 19.726080>,  <26.770418, 38.681446, 19.826937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.578133, 38.579201, 19.726080>,  <26.257656, 38.408794, 19.557985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.578133, 38.579201, 19.726080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273239, -0.885222, 0.376461,
		0.532383, -0.186792, -0.825637,
		0.801192, 0.426018, 0.420238,
		26.818491, 38.707005, 19.852152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.897011, 37.973629, 19.410028>,  <26.257656, 38.408794, 19.557985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.897011, 37.973629, 19.410028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.945478, 38.185730, 19.745684>,  <26.974560, 38.312988, 19.947077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.945478, 38.185730, 19.745684>,  <26.897011, 37.973629, 19.410028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.945478, 38.185730, 19.745684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296233, -0.826161, 0.479275,
		0.947398, 0.190506, -0.257185,
		0.121171, 0.530251, 0.839138,
		26.981831, 38.344807, 19.997425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.450579, 37.588509, 19.761408>,  <26.897011, 37.973629, 19.410028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.450579, 37.588509, 19.761408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.332369, 37.840336, 20.048826>,  <27.261442, 37.991432, 20.221277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.332369, 37.840336, 20.048826>,  <27.450579, 37.588509, 19.761408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.332369, 37.840336, 20.048826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231012, -0.682724, 0.693196,
		0.926983, 0.370851, 0.056325,
		-0.295527, 0.629569, 0.718545,
		27.243711, 38.029205, 20.264389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.011120, 37.701881, 20.216623>,  <27.450579, 37.588509, 19.761408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.011120, 37.701881, 20.216623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.678545, 37.770939, 20.427868>,  <27.479000, 37.812374, 20.554615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.678545, 37.770939, 20.427868>,  <28.011120, 37.701881, 20.216623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.678545, 37.770939, 20.427868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364966, -0.546984, 0.753398,
		0.418938, 0.819148, 0.391776,
		-0.831439, 0.172642, 0.528114,
		27.429113, 37.822731, 20.586302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.760296, 38.059704, 20.027712>,  <28.011120, 37.701881, 20.216623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.760296, 38.059704, 20.027712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.015820, 37.775669, 19.909252>,  <29.169134, 37.605247, 19.838177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.015820, 37.775669, 19.909252>,  <28.760296, 38.059704, 20.027712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.015820, 37.775669, 19.909252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320310, 0.104520, -0.941529,
		0.699519, 0.696316, -0.160679,
		0.638807, -0.710084, -0.296150,
		29.207462, 37.562645, 19.820408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.931147, 38.374470, 19.521370>,  <28.760296, 38.059704, 20.027712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.931147, 38.374470, 19.521370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.014549, 37.989399, 19.452339>,  <29.064590, 37.758358, 19.410921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.014549, 37.989399, 19.452339>,  <28.931147, 38.374470, 19.521370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.014549, 37.989399, 19.452339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033117, 0.169402, -0.984990,
		0.977460, 0.211092, 0.003440,
		0.208507, -0.962675, -0.172575,
		29.077101, 37.700596, 19.400566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.430357, 38.308025, 19.031242>,  <28.931147, 38.374470, 19.521370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.430357, 38.308025, 19.031242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.243301, 37.955006, 19.011602>,  <29.131067, 37.743195, 18.999819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.243301, 37.955006, 19.011602>,  <29.430357, 38.308025, 19.031242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.243301, 37.955006, 19.011602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121148, 0.119019, -0.985473,
		0.875577, -0.454899, -0.162577,
		-0.467641, -0.882554, -0.049100,
		29.103008, 37.690239, 18.996872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.641226, 37.888962, 18.424965>,  <29.430357, 38.308025, 19.031242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.641226, 37.888962, 18.424965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.305721, 37.688377, 18.509834>,  <29.104418, 37.568027, 18.560755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.305721, 37.688377, 18.509834>,  <29.641226, 37.888962, 18.424965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.305721, 37.688377, 18.509834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095438, -0.248237, -0.963987,
		0.536068, -0.828805, 0.160353,
		-0.838762, -0.501459, 0.212172,
		29.054092, 37.537941, 18.573486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739393, 37.470524, 17.963909>,  <29.641226, 37.888962, 18.424965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.739393, 37.470524, 17.963909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.359489, 37.405071, 18.070629>,  <29.131548, 37.365799, 18.134661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.359489, 37.405071, 18.070629>,  <29.739393, 37.470524, 17.963909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.359489, 37.405071, 18.070629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240101, -0.165912, -0.956465,
		0.200776, -0.972469, 0.118288,
		-0.949758, -0.163634, 0.266802,
		29.074562, 37.355980, 18.150669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.438709, 36.785961, 17.585114>,  <29.739393, 37.470524, 17.963909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.438709, 36.785961, 17.585114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.098455, 36.966377, 17.693178>,  <28.894304, 37.074627, 17.758017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.098455, 36.966377, 17.693178>,  <29.438709, 36.785961, 17.585114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.098455, 36.966377, 17.693178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367686, -0.143049, -0.918882,
		-0.375805, -0.880966, 0.287523,
		-0.850633, 0.451039, 0.270161,
		28.843266, 37.101688, 17.774227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.827555, 36.356693, 17.357433>,  <29.438709, 36.785961, 17.585114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.827555, 36.356693, 17.357433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.718136, 36.740974, 17.376316>,  <28.652485, 36.971542, 17.387646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.718136, 36.740974, 17.376316>,  <28.827555, 36.356693, 17.357433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.718136, 36.740974, 17.376316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235576, -0.019331, -0.971664,
		-0.932564, -0.276917, 0.231606,
		-0.273548, 0.960699, 0.047208,
		28.636072, 37.029182, 17.390478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.562559, 36.472260, 16.719730>,  <28.827555, 36.356693, 17.357433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.562559, 36.472260, 16.719730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.587185, 36.853611, 16.837908>,  <28.601959, 37.082420, 16.908813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.587185, 36.853611, 16.837908>,  <28.562559, 36.472260, 16.719730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587185, 36.853611, 16.837908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278435, 0.300659, -0.912183,
		-0.958480, -0.026106, 0.283962,
		0.061562, 0.953375, 0.295444,
		28.605654, 37.139622, 16.926540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.076729, 36.811512, 16.353451>,  <28.562559, 36.472260, 16.719730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.076729, 36.811512, 16.353451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.283501, 37.126747, 16.487137>,  <28.407564, 37.315887, 16.567348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.283501, 37.126747, 16.487137>,  <28.076729, 36.811512, 16.353451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.283501, 37.126747, 16.487137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203470, 0.492354, -0.846279,
		-0.831494, 0.369466, 0.414866,
		0.516932, 0.788088, 0.334214,
		28.438580, 37.363174, 16.587400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.958740, 36.646782, 32.252995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.270653, 36.583359, 32.010738>,  <34.457802, 36.545303, 31.865385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.270653, 36.583359, 32.010738>,  <33.958740, 36.646782, 32.252995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270653, 36.583359, 32.010738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613016, 0.002968, -0.790065,
		0.127068, 0.987345, -0.094884,
		0.779785, -0.158558, -0.605636,
		34.504589, 36.535789, 31.829048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755222, 36.917171, 31.574945>,  <33.958740, 36.646782, 32.252995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755222, 36.917171, 31.574945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.079983, 36.692192, 31.512373>,  <34.274841, 36.557205, 31.474831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.079983, 36.692192, 31.512373>,  <33.755222, 36.917171, 31.574945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079983, 36.692192, 31.512373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350333, -0.255062, -0.901227,
		0.466991, 0.786511, -0.404129,
		0.811903, -0.562444, -0.156429,
		34.323555, 36.523460, 31.465445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206501, 37.255962, 31.007107>,  <33.755222, 36.917171, 31.574945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206501, 37.255962, 31.007107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.311623, 36.870098, 30.999493>,  <34.374695, 36.638580, 30.994925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.311623, 36.870098, 30.999493>,  <34.206501, 37.255962, 31.007107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311623, 36.870098, 30.999493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169304, -0.026682, -0.985203,
		0.949880, 0.262135, -0.170334,
		0.262801, -0.964662, -0.019036,
		34.390465, 36.580700, 30.993782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600216, 37.135654, 30.392851>,  <34.206501, 37.255962, 31.007107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600216, 37.135654, 30.392851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.457790, 36.777664, 30.500364>,  <34.372337, 36.562870, 30.564873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.457790, 36.777664, 30.500364>,  <34.600216, 37.135654, 30.392851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457790, 36.777664, 30.500364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353558, -0.137230, -0.925291,
		0.864996, -0.424490, -0.267563,
		-0.356060, -0.894973, 0.268786,
		34.350971, 36.509171, 30.580999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830482, 36.743431, 29.919416>,  <34.600216, 37.135654, 30.392851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830482, 36.743431, 29.919416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.531689, 36.523510, 30.068941>,  <34.352413, 36.391560, 30.158655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.531689, 36.523510, 30.068941>,  <34.830482, 36.743431, 29.919416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531689, 36.523510, 30.068941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328168, -0.184073, -0.926511,
		0.578204, -0.814763, -0.042927,
		-0.746985, -0.549799, 0.373810,
		34.307594, 36.358570, 30.181084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686279, 36.238628, 29.512815>,  <34.830482, 36.743431, 29.919416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686279, 36.238628, 29.512815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.334232, 36.235359, 29.702688>,  <34.123005, 36.233398, 29.816612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.334232, 36.235359, 29.702688>,  <34.686279, 36.238628, 29.512815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334232, 36.235359, 29.702688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466240, -0.173587, -0.867460,
		0.089485, -0.984785, 0.148969,
		-0.880121, -0.008170, 0.474680,
		34.070194, 36.232910, 29.845093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402515, 35.698437, 29.163080>,  <34.686279, 36.238628, 29.512815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402515, 35.698437, 29.163080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.108803, 35.875092, 29.369297>,  <33.932575, 35.981083, 29.493027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.108803, 35.875092, 29.369297>,  <34.402515, 35.698437, 29.163080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108803, 35.875092, 29.369297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601227, -0.070463, -0.795966,
		-0.315202, -0.894422, 0.317265,
		-0.734285, 0.441638, 0.515540,
		33.888515, 36.007584, 29.523960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964455, 35.403885, 28.868814>,  <34.402515, 35.698437, 29.163080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964455, 35.403885, 28.868814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.785519, 35.723709, 29.029110>,  <33.678158, 35.915604, 29.125288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.785519, 35.723709, 29.029110>,  <33.964455, 35.403885, 28.868814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785519, 35.723709, 29.029110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641201, 0.025649, -0.766945,
		-0.623496, -0.600040, 0.501204,
		-0.447342, 0.799559, 0.400738,
		33.651318, 35.963577, 29.149332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211342, 35.206200, 28.986752>,  <33.964455, 35.403885, 28.868814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.211342, 35.206200, 28.986752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.278225, 35.599663, 28.960041>,  <33.318356, 35.835739, 28.944016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.278225, 35.599663, 28.960041>,  <33.211342, 35.206200, 28.986752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278225, 35.599663, 28.960041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716010, 0.074593, -0.694094,
		-0.677770, 0.163868, 0.716781,
		0.167206, 0.983658, -0.066774,
		33.328388, 35.894760, 28.940008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.562057, 35.509064, 28.831478>,  <33.211342, 35.206200, 28.986752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.562057, 35.509064, 28.831478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.797657, 35.812840, 28.720970>,  <32.939018, 35.995106, 28.654665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.797657, 35.812840, 28.720970>,  <32.562057, 35.509064, 28.831478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797657, 35.812840, 28.720970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593386, 0.174351, -0.785809,
		-0.548607, 0.626779, 0.553334,
		0.589003, 0.759440, -0.276271,
		32.974358, 36.040672, 28.638088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105278, 36.175018, 28.671320>,  <32.562057, 35.509064, 28.831478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105278, 36.175018, 28.671320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.446026, 36.259731, 28.479712>,  <32.650475, 36.310558, 28.364746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.446026, 36.259731, 28.479712>,  <32.105278, 36.175018, 28.671320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446026, 36.259731, 28.479712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519726, 0.228626, -0.823174,
		-0.064820, 0.950198, 0.304830,
		0.851871, 0.211786, -0.479023,
		32.701588, 36.323269, 28.336004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.967409, 36.788303, 28.224205>,  <32.105278, 36.175018, 28.671320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.967409, 36.788303, 28.224205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.273930, 36.590900, 28.059652>,  <32.457840, 36.472458, 27.960920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.273930, 36.590900, 28.059652>,  <31.967409, 36.788303, 28.224205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.273930, 36.590900, 28.059652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418097, 0.103133, -0.902529,
		0.487833, 0.863605, -0.127304,
		0.766299, -0.493509, -0.411382,
		32.503819, 36.442848, 27.936237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.689745, 37.457932, 28.394249>,  <31.967409, 36.788303, 28.224205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.689745, 37.457932, 28.394249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.337225, 37.348335, 28.548258>,  <31.125713, 37.282578, 28.640663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.337225, 37.348335, 28.548258>,  <31.689745, 37.457932, 28.394249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337225, 37.348335, 28.548258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329392, 0.228040, 0.916241,
		-0.338843, 0.934305, -0.110721,
		-0.881298, -0.273991, 0.385023,
		31.072836, 37.266136, 28.663765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493294, 37.969410, 28.839022>,  <31.689745, 37.457932, 28.394249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493294, 37.969410, 28.839022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.295448, 37.644775, 28.963394>,  <31.176741, 37.449993, 29.038017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.295448, 37.644775, 28.963394>,  <31.493294, 37.969410, 28.839022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.295448, 37.644775, 28.963394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270573, 0.196187, 0.942497,
		-0.825921, 0.550303, 0.122557,
		-0.494615, -0.811589, 0.310932,
		31.147064, 37.401299, 29.056673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.243416, 38.192139, 29.358465>,  <31.493294, 37.969410, 28.839022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.243416, 38.192139, 29.358465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.195904, 37.807335, 29.456791>,  <31.167397, 37.576450, 29.515787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.195904, 37.807335, 29.456791>,  <31.243416, 38.192139, 29.358465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.195904, 37.807335, 29.456791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199693, 0.219364, 0.954988,
		-0.972633, 0.162519, 0.166051,
		-0.118778, -0.962012, 0.245815,
		31.160271, 37.518730, 29.530535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.823797, 38.129189, 29.870029>,  <31.243416, 38.192139, 29.358465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.823797, 38.129189, 29.870029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.979177, 37.763390, 29.915283>,  <31.072407, 37.543911, 29.942436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.979177, 37.763390, 29.915283>,  <30.823797, 38.129189, 29.870029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979177, 37.763390, 29.915283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077317, 0.089995, 0.992937,
		-0.918220, -0.394455, -0.035748,
		0.388452, -0.914498, 0.113134,
		31.095713, 37.489040, 29.949223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.296896, 37.774208, 30.298634>,  <30.823797, 38.129189, 29.870029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.296896, 37.774208, 30.298634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.638788, 37.571884, 30.345278>,  <30.843924, 37.450489, 30.373264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.638788, 37.571884, 30.345278>,  <30.296896, 37.774208, 30.298634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.638788, 37.571884, 30.345278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203250, -0.119411, 0.971818,
		-0.477629, -0.854341, -0.204869,
		0.854728, -0.505808, 0.116611,
		30.895206, 37.420143, 30.380260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.088421, 37.236847, 30.796263>,  <30.296896, 37.774208, 30.298634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.088421, 37.236847, 30.796263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.487541, 37.235329, 30.822721>,  <30.727015, 37.234417, 30.838596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.487541, 37.235329, 30.822721>,  <30.088421, 37.236847, 30.796263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.487541, 37.235329, 30.822721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066249, -0.042063, 0.996916,
		-0.000998, -0.999108, -0.042222,
		0.997803, -0.003793, 0.066148,
		30.786882, 37.234188, 30.842566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.216955, 36.811981, 31.239397>,  <30.088421, 37.236847, 30.796263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.216955, 36.811981, 31.239397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.577866, 36.984318, 31.232744>,  <30.794413, 37.087719, 31.228752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.577866, 36.984318, 31.232744>,  <30.216955, 36.811981, 31.239397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.577866, 36.984318, 31.232744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034693, -0.034093, 0.998816,
		0.429760, -0.901786, -0.045709,
		0.902277, 0.430837, -0.016634,
		30.848549, 37.113567, 31.227755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.547302, 36.468494, 31.700415>,  <30.216955, 36.811981, 31.239397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.547302, 36.468494, 31.700415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.736128, 36.819546, 31.667131>,  <30.849424, 37.030178, 31.647161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.736128, 36.819546, 31.667131>,  <30.547302, 36.468494, 31.700415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.736128, 36.819546, 31.667131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036916, 0.074624, 0.996528,
		0.880790, -0.473498, 0.002829,
		0.472066, 0.877628, -0.083207,
		30.877748, 37.082832, 31.642170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.951488, 36.445866, 32.256474>,  <30.547302, 36.468494, 31.700415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.951488, 36.445866, 32.256474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.956650, 36.834946, 32.163799>,  <30.959747, 37.068394, 32.108192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.956650, 36.834946, 32.163799>,  <30.951488, 36.445866, 32.256474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.956650, 36.834946, 32.163799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109593, 0.231688, 0.966597,
		0.993893, 0.012919, 0.109591,
		0.012904, 0.972704, -0.231689,
		30.960522, 37.126759, 32.094292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.367943, 36.732460, 32.708210>,  <30.951488, 36.445866, 32.256474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.367943, 36.732460, 32.708210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.155085, 37.049797, 32.589935>,  <31.027370, 37.240200, 32.518970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.155085, 37.049797, 32.589935>,  <31.367943, 36.732460, 32.708210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155085, 37.049797, 32.589935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193451, 0.226066, 0.954710,
		0.824256, 0.565244, 0.033174,
		-0.532145, 0.793343, -0.295683,
		30.995441, 37.287800, 32.501232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626331, 37.327740, 33.135143>,  <31.367943, 36.732460, 32.708210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626331, 37.327740, 33.135143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.272736, 37.456615, 32.999641>,  <31.060577, 37.533943, 32.918339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.272736, 37.456615, 32.999641>,  <31.626331, 37.327740, 33.135143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.272736, 37.456615, 32.999641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247718, 0.291711, 0.923872,
		0.396483, 0.900609, -0.178057,
		-0.883989, 0.322192, -0.338756,
		31.007540, 37.553272, 32.898014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.485390, 37.978062, 33.457954>,  <31.626331, 37.327740, 33.135143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.485390, 37.978062, 33.457954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.117449, 37.878506, 33.336678>,  <30.896685, 37.818771, 33.263912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.117449, 37.878506, 33.336678>,  <31.485390, 37.978062, 33.457954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.117449, 37.878506, 33.336678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368367, 0.282444, 0.885738,
		-0.134814, 0.926435, -0.351488,
		-0.919854, -0.248887, -0.303190,
		30.841494, 37.803841, 33.245720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.052725, 38.586769, 33.624855>,  <31.485390, 37.978062, 33.457954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.052725, 38.586769, 33.624855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.848370, 38.245029, 33.586739>,  <30.725756, 38.039986, 33.563869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.848370, 38.245029, 33.586739>,  <31.052725, 38.586769, 33.624855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.848370, 38.245029, 33.586739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463301, 0.180275, 0.867671,
		-0.724117, 0.487429, -0.487922,
		-0.510888, -0.854350, -0.095287,
		30.695103, 37.988724, 33.558151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.496334, 38.751930, 33.186943>,  <31.052725, 38.586769, 33.624855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.496334, 38.751930, 33.186943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.651215, 38.442753, 32.985889>,  <30.744143, 38.257248, 32.865257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.651215, 38.442753, 32.985889>,  <30.496334, 38.751930, 33.186943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.651215, 38.442753, 32.985889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583879, -0.627475, 0.515131,
		-0.713555, 0.094018, -0.694262,
		0.387201, -0.772940, -0.502633,
		30.767374, 38.210873, 32.835098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670530, 39.372269, 33.612244>,  <30.496334, 38.751930, 33.186943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670530, 39.372269, 33.612244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.672087, 39.725861, 33.799248>,  <30.673019, 39.938015, 33.911449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.672087, 39.725861, 33.799248>,  <30.670530, 39.372269, 33.612244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.672087, 39.725861, 33.799248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311087, 0.445389, -0.839555,
		-0.950374, -0.142172, 0.276726,
		0.003890, 0.883977, 0.467514,
		30.673254, 39.991055, 33.939503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104109, 39.750244, 33.563232>,  <30.670530, 39.372269, 33.612244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.104109, 39.750244, 33.563232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.408203, 40.009579, 33.546715>,  <30.590660, 40.165180, 33.536804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.408203, 40.009579, 33.546715>,  <30.104109, 39.750244, 33.563232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.408203, 40.009579, 33.546715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192607, 0.164226, -0.967436,
		-0.620441, 0.743432, 0.249724,
		0.760234, 0.648336, -0.041297,
		30.636272, 40.204079, 33.534325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.919149, 40.396179, 33.352200>,  <30.104109, 39.750244, 33.563232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.919149, 40.396179, 33.352200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.307470, 40.359653, 33.263474>,  <30.540462, 40.337738, 33.210239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.307470, 40.359653, 33.263474>,  <29.919149, 40.396179, 33.352200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307470, 40.359653, 33.263474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186315, 0.295379, -0.937037,
		0.151089, 0.951006, 0.269740,
		0.970803, -0.091319, -0.221815,
		30.598711, 40.332256, 33.196930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.258055, 41.054520, 33.172520>,  <29.919149, 40.396179, 33.352200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.258055, 41.054520, 33.172520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.476879, 40.766869, 33.001137>,  <30.608173, 40.594276, 32.898308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.476879, 40.766869, 33.001137>,  <30.258055, 41.054520, 33.172520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476879, 40.766869, 33.001137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232849, 0.360916, -0.903062,
		0.804055, 0.593797, 0.029995,
		0.547062, -0.719128, -0.428461,
		30.640997, 40.551128, 32.872597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.605394, 41.465294, 32.728981>,  <30.258055, 41.054520, 33.172520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.605394, 41.465294, 32.728981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.673143, 41.096024, 32.590961>,  <30.713793, 40.874462, 32.508152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.673143, 41.096024, 32.590961>,  <30.605394, 41.465294, 32.728981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.673143, 41.096024, 32.590961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275654, 0.291756, -0.915911,
		0.946217, 0.250246, -0.205061,
		0.169375, -0.923177, -0.345046,
		30.723955, 40.819069, 32.487446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.258419, 41.442242, 32.332619>,  <30.605394, 41.465294, 32.728981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.258419, 41.442242, 32.332619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.023296, 41.146072, 32.202232>,  <30.882223, 40.968372, 32.124001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.023296, 41.146072, 32.202232>,  <31.258419, 41.442242, 32.332619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.023296, 41.146072, 32.202232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027495, 0.384409, -0.922754,
		0.808533, -0.551365, -0.205600,
		-0.587808, -0.740424, -0.325967,
		30.846954, 40.923946, 32.104443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.390402, 41.316158, 31.687956>,  <31.258419, 41.442242, 32.332619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.390402, 41.316158, 31.687956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.052385, 41.102306, 31.684502>,  <30.849575, 40.973995, 31.682430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.052385, 41.102306, 31.684502>,  <31.390402, 41.316158, 31.687956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.052385, 41.102306, 31.684502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200968, 0.332534, -0.921430,
		0.495494, -0.776913, -0.388449,
		-0.845043, -0.534629, -0.008634,
		30.798872, 40.941917, 31.681911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.417856, 41.038540, 31.029179>,  <31.390402, 41.316158, 31.687956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.417856, 41.038540, 31.029179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.047529, 41.002789, 31.176081>,  <30.825333, 40.981339, 31.264223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.047529, 41.002789, 31.176081>,  <31.417856, 41.038540, 31.029179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047529, 41.002789, 31.176081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377855, 0.243391, -0.893301,
		-0.009545, -0.965801, -0.259107,
		-0.925815, -0.089378, 0.367256,
		30.769785, 40.975975, 31.286257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065571, 40.587280, 30.635399>,  <31.417856, 41.038540, 31.029179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065571, 40.587280, 30.635399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.786810, 40.823784, 30.797750>,  <30.619553, 40.965687, 30.895163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.786810, 40.823784, 30.797750>,  <31.065571, 40.587280, 30.635399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.786810, 40.823784, 30.797750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298982, 0.274896, -0.913806,
		-0.651872, -0.758185, -0.014800,
		-0.696903, 0.591259, 0.405881,
		30.577740, 41.001160, 30.919516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.506929, 40.525917, 30.176596>,  <31.065571, 40.587280, 30.635399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.506929, 40.525917, 30.176596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.393597, 40.855774, 30.372427>,  <30.325598, 41.053688, 30.489925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.393597, 40.855774, 30.372427>,  <30.506929, 40.525917, 30.176596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.393597, 40.855774, 30.372427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496941, 0.310372, -0.810382,
		-0.820227, -0.472899, 0.321861,
		-0.283332, 0.824643, 0.489578,
		30.308598, 41.103168, 30.519300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.870186, 40.615723, 29.991846>,  <30.506929, 40.525917, 30.176596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.870186, 40.615723, 29.991846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.938908, 40.979549, 30.143200>,  <29.980141, 41.197845, 30.234013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.938908, 40.979549, 30.143200>,  <29.870186, 40.615723, 29.991846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.938908, 40.979549, 30.143200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549245, 0.407297, -0.729685,
		-0.817810, -0.082463, 0.569549,
		0.171803, 0.909565, 0.378384,
		29.990448, 41.252419, 30.256716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.181452, 40.984131, 29.901274>,  <29.870186, 40.615723, 29.991846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.181452, 40.984131, 29.901274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.471478, 41.257771, 29.933012>,  <29.645493, 41.421955, 29.952055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.471478, 41.257771, 29.933012>,  <29.181452, 40.984131, 29.901274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.471478, 41.257771, 29.933012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400238, 0.512337, -0.759816,
		-0.560438, 0.519159, 0.645278,
		0.725065, 0.684095, 0.079346,
		29.688997, 41.462997, 29.956816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.845951, 41.558964, 29.959257>,  <29.181452, 40.984131, 29.901274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.845951, 41.558964, 29.959257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.210701, 41.650200, 29.822754>,  <29.429550, 41.704941, 29.740852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.210701, 41.650200, 29.822754>,  <28.845951, 41.558964, 29.959257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210701, 41.650200, 29.822754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409840, 0.459961, -0.787697,
		-0.022703, 0.858143, 0.512909,
		0.911875, 0.228093, -0.341259,
		29.484264, 41.718628, 29.720377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.698103, 42.204067, 29.645979>,  <28.845951, 41.558964, 29.959257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.698103, 42.204067, 29.645979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.073446, 42.130802, 29.528723>,  <29.298653, 42.086842, 29.458368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.073446, 42.130802, 29.528723>,  <28.698103, 42.204067, 29.645979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.073446, 42.130802, 29.528723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145623, 0.559647, -0.815837,
		0.313488, 0.808236, 0.498477,
		0.938360, -0.183165, -0.293140,
		29.354954, 42.075851, 29.440781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.884901, 42.800747, 29.467333>,  <28.698103, 42.204067, 29.645979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.884901, 42.800747, 29.467333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.133474, 42.543060, 29.288982>,  <29.282619, 42.388447, 29.181973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.133474, 42.543060, 29.288982>,  <28.884901, 42.800747, 29.467333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.133474, 42.543060, 29.288982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087615, 0.508394, -0.856656,
		0.778551, 0.571421, 0.259491,
		0.621435, -0.644215, -0.445875,
		29.319904, 42.349796, 29.155220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.430197, 43.201180, 29.061464>,  <28.884901, 42.800747, 29.467333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.430197, 43.201180, 29.061464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.390978, 42.838890, 28.896517>,  <29.367447, 42.621517, 28.797548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.390978, 42.838890, 28.896517>,  <29.430197, 43.201180, 29.061464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.390978, 42.838890, 28.896517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205600, 0.423861, -0.882083,
		0.973712, -0.001701, -0.227775,
		-0.098046, -0.905725, -0.412369,
		29.361565, 42.567173, 28.772806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.795053, 43.316193, 28.474161>,  <29.430197, 43.201180, 29.061464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.795053, 43.316193, 28.474161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.569613, 42.987240, 28.443089>,  <29.434347, 42.789867, 28.424444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.569613, 42.987240, 28.443089>,  <29.795053, 43.316193, 28.474161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.569613, 42.987240, 28.443089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186362, 0.218204, -0.957944,
		0.804750, -0.525422, -0.276241,
		-0.563602, -0.822386, -0.077681,
		29.400532, 42.740524, 28.419785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.042553, 42.917091, 27.851658>,  <29.795053, 43.316193, 28.474161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.042553, 42.917091, 27.851658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.662251, 42.811897, 27.917271>,  <29.434069, 42.748783, 27.956638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.662251, 42.811897, 27.917271>,  <30.042553, 42.917091, 27.851658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.662251, 42.811897, 27.917271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175636, 0.021081, -0.984229,
		0.255376, -0.964570, -0.066232,
		-0.950755, -0.262981, 0.164030,
		29.377024, 42.733002, 27.966480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.870258, 42.379066, 27.355467>,  <30.042553, 42.917091, 27.851658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.870258, 42.379066, 27.355467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.498846, 42.480694, 27.463753>,  <29.275999, 42.541668, 27.528725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.498846, 42.480694, 27.463753>,  <29.870258, 42.379066, 27.355467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.498846, 42.480694, 27.463753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264638, 0.058486, -0.962573,
		-0.260388, -0.965418, 0.012929,
		-0.928528, 0.254064, 0.270715,
		29.220287, 42.556911, 27.544968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.517399, 41.936604, 26.981956>,  <29.870258, 42.379066, 27.355467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.517399, 41.936604, 26.981956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.261087, 42.230953, 27.069494>,  <29.107302, 42.407562, 27.122017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.261087, 42.230953, 27.069494>,  <29.517399, 41.936604, 26.981956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.261087, 42.230953, 27.069494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379220, -0.055530, -0.923639,
		-0.667530, -0.674836, 0.314641,
		-0.640777, 0.735875, 0.218844,
		29.068855, 42.451717, 27.135147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.935415, 41.735355, 26.675011>,  <29.517399, 41.936604, 26.981956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.935415, 41.735355, 26.675011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.865650, 42.127277, 26.714111>,  <28.823792, 42.362431, 26.737572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.865650, 42.127277, 26.714111>,  <28.935415, 41.735355, 26.675011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.865650, 42.127277, 26.714111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324368, 0.036562, -0.945224,
		-0.929712, -0.196568, 0.311441,
		-0.174414, 0.979808, 0.097753,
		28.813326, 42.421219, 26.743437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.315624, 41.848495, 26.388510>,  <28.935415, 41.735355, 26.675011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.315624, 41.848495, 26.388510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.466795, 42.218555, 26.402800>,  <28.557497, 42.440590, 26.411373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.466795, 42.218555, 26.402800>,  <28.315624, 41.848495, 26.388510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.466795, 42.218555, 26.402800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329014, 0.170270, -0.928848,
		-0.865402, 0.339284, 0.368735,
		0.377927, 0.925146, 0.035723,
		28.580173, 42.496098, 26.413517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.843935, 42.236603, 26.137840>,  <28.315624, 41.848495, 26.388510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.843935, 42.236603, 26.137840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.162407, 42.478325, 26.125780>,  <28.353491, 42.623360, 26.118544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.162407, 42.478325, 26.125780>,  <27.843935, 42.236603, 26.137840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.162407, 42.478325, 26.125780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207203, 0.225497, -0.951955,
		-0.568477, 0.764174, 0.304750,
		0.796179, 0.604309, -0.030150,
		28.401260, 42.659618, 26.116735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.655865, 42.837097, 25.857027>,  <27.843935, 42.236603, 26.137840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.655865, 42.837097, 25.857027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.049522, 42.809032, 25.791862>,  <28.285717, 42.792194, 25.752764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.049522, 42.809032, 25.791862>,  <27.655865, 42.837097, 25.857027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.049522, 42.809032, 25.791862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130465, 0.335917, -0.932812,
		0.120174, 0.939275, 0.321436,
		0.984143, -0.070163, -0.162911,
		28.344765, 42.787983, 25.742989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.900272, 43.468048, 25.415094>,  <27.655865, 42.837097, 25.857027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.900272, 43.468048, 25.415094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.175142, 43.183128, 25.357931>,  <28.340065, 43.012177, 25.323633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.175142, 43.183128, 25.357931>,  <27.900272, 43.468048, 25.415094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.175142, 43.183128, 25.357931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111762, 0.298014, -0.947996,
		0.717843, 0.635469, 0.284396,
		0.687176, -0.712297, -0.142906,
		28.381294, 42.969440, 25.315060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.334240, 43.703983, 24.933588>,  <27.900272, 43.468048, 25.415094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.334240, 43.703983, 24.933588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.487637, 43.334751, 24.921896>,  <28.579674, 43.113213, 24.914881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.487637, 43.334751, 24.921896>,  <28.334240, 43.703983, 24.933588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.487637, 43.334751, 24.921896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185245, 0.107891, -0.976752,
		0.904775, 0.369162, 0.212371,
		0.383492, -0.923082, -0.029231,
		28.602684, 43.057827, 24.913126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.911463, 43.806988, 24.586321>,  <28.334240, 43.703983, 24.933588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.911463, 43.806988, 24.586321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.836563, 43.415272, 24.555540>,  <28.791624, 43.180241, 24.537071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.836563, 43.415272, 24.555540>,  <28.911463, 43.806988, 24.586321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.836563, 43.415272, 24.555540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054909, 0.067779, -0.996188,
		0.980777, -0.190759, 0.041080,
		-0.187247, -0.979294, -0.076950,
		28.780390, 43.121483, 24.532455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.587412, 43.481606, 24.134474>,  <28.911463, 43.806988, 24.586321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.587412, 43.481606, 24.134474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.258234, 43.254715, 24.121717>,  <29.060728, 43.118580, 24.114063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.258234, 43.254715, 24.121717>,  <29.587412, 43.481606, 24.134474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.258234, 43.254715, 24.121717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028431, 0.097178, -0.994861,
		0.567410, -0.817809, -0.096099,
		-0.822944, -0.567226, -0.031889,
		29.011351, 43.084549, 24.112150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.294127, 43.156933, 24.265692>,  <29.587412, 43.481606, 24.134474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.294127, 43.156933, 24.265692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.651199, 43.252171, 24.112625>,  <30.865442, 43.309311, 24.020784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.651199, 43.252171, 24.112625>,  <30.294127, 43.156933, 24.265692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.651199, 43.252171, 24.112625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391559, 0.010715, 0.920090,
		0.223166, -0.971183, -0.083661,
		0.892680, 0.238091, -0.382667,
		30.919004, 43.323597, 23.997826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.799925, 42.654400, 24.613527>,  <30.294127, 43.156933, 24.265692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.799925, 42.654400, 24.613527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.017614, 42.968918, 24.496527>,  <31.148228, 43.157627, 24.426327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.017614, 42.968918, 24.496527>,  <30.799925, 42.654400, 24.613527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.017614, 42.968918, 24.496527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520170, -0.042718, 0.852994,
		0.658211, -0.616372, -0.432256,
		0.544226, 0.786296, -0.292501,
		31.180882, 43.204807, 24.408777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530781, 42.490623, 24.679138>,  <30.799925, 42.654400, 24.613527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530781, 42.490623, 24.679138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.530167, 42.889347, 24.711075>,  <31.529799, 43.128582, 24.730236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.530167, 42.889347, 24.711075>,  <31.530781, 42.490623, 24.679138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.530167, 42.889347, 24.711075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531573, -0.066813, 0.844373,
		0.847011, 0.043739, -0.529773,
		-0.001536, 0.996806, 0.079842,
		31.529705, 43.188389, 24.735027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090107, 42.583294, 24.973080>,  <31.530781, 42.490623, 24.679138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090107, 42.583294, 24.973080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.920940, 42.941700, 25.027191>,  <31.819441, 43.156742, 25.059658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.920940, 42.941700, 25.027191>,  <32.090107, 42.583294, 24.973080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920940, 42.941700, 25.027191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548180, 0.134098, 0.825540,
		0.721557, 0.423288, -0.547889,
		-0.422912, 0.896016, 0.135278,
		31.794067, 43.210506, 25.067774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559776, 43.037743, 25.227758>,  <32.090107, 42.583294, 24.973080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559776, 43.037743, 25.227758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.222351, 43.223808, 25.335110>,  <32.019897, 43.335449, 25.399521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.222351, 43.223808, 25.335110>,  <32.559776, 43.037743, 25.227758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222351, 43.223808, 25.335110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358068, 0.114730, 0.926620,
		0.400239, 0.877759, -0.263342,
		-0.843562, 0.465163, 0.268378,
		31.969282, 43.363358, 25.415623>
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
