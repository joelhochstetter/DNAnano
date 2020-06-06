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
	<23.822449, 34.827648, 34.906937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.197479, 34.720665, 34.818020>,  <24.422497, 34.656475, 34.764668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.197479, 34.720665, 34.818020>,  <23.822449, 34.827648, 34.906937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.197479, 34.720665, 34.818020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344297, 0.804039, 0.484748,
		0.049085, -0.531025, 0.845933,
		0.937577, -0.267458, -0.222297,
		24.478752, 34.640427, 34.751331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.263008, 35.066399, 35.481636>,  <23.822449, 34.827648, 34.906937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.263008, 35.066399, 35.481636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.547054, 34.952766, 35.223946>,  <24.717482, 34.884586, 35.069332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.547054, 34.952766, 35.223946>,  <24.263008, 35.066399, 35.481636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.547054, 34.952766, 35.223946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517863, 0.830651, 0.204538,
		0.477025, -0.478869, 0.736975,
		0.710116, -0.284083, -0.644230,
		24.760090, 34.867542, 35.030678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.922497, 35.011375, 35.778145>,  <24.263008, 35.066399, 35.481636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.922497, 35.011375, 35.778145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.992170, 35.094025, 35.393028>,  <25.033974, 35.143612, 35.161957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.992170, 35.094025, 35.393028>,  <24.922497, 35.011375, 35.778145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.992170, 35.094025, 35.393028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512526, 0.815841, 0.267806,
		0.840819, -0.540104, 0.036209,
		0.174184, 0.206619, -0.962792,
		25.044426, 35.156010, 35.104191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.718340, 35.064819, 35.555416>,  <24.922497, 35.011375, 35.778145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.718340, 35.064819, 35.555416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.494925, 35.272476, 35.296642>,  <25.360876, 35.397072, 35.141376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.494925, 35.272476, 35.296642>,  <25.718340, 35.064819, 35.555416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.494925, 35.272476, 35.296642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485548, 0.836970, 0.252435,
		0.672517, -0.173125, -0.719548,
		-0.558537, 0.519142, -0.646937,
		25.327364, 35.428219, 35.102562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.201838, 35.392292, 35.118065>,  <25.718340, 35.064819, 35.555416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.201838, 35.392292, 35.118065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.860729, 35.600643, 35.102745>,  <25.656065, 35.725655, 35.093555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.860729, 35.600643, 35.102745>,  <26.201838, 35.392292, 35.118065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.860729, 35.600643, 35.102745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496185, 0.830866, 0.251917,
		0.163037, 0.195825, -0.966991,
		-0.852772, 0.520878, -0.038297,
		25.604898, 35.756908, 35.091255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.267971, 35.905125, 34.546806>,  <26.201838, 35.392292, 35.118065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.267971, 35.905125, 34.546806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.001268, 36.028511, 34.818184>,  <25.841248, 36.102543, 34.981010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.001268, 36.028511, 34.818184>,  <26.267971, 35.905125, 34.546806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.001268, 36.028511, 34.818184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498695, 0.861154, 0.098569,
		-0.553842, 0.404060, -0.728007,
		-0.666755, 0.308462, 0.678446,
		25.801243, 36.121048, 35.021717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.916122, 36.539104, 34.235474>,  <26.267971, 35.905125, 34.546806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.916122, 36.539104, 34.235474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.916183, 36.508732, 34.634319>,  <25.916220, 36.490509, 34.873627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.916183, 36.508732, 34.634319>,  <25.916122, 36.539104, 34.235474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.916183, 36.508732, 34.634319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437346, 0.896703, 0.068214,
		-0.899293, 0.436073, 0.033344,
		0.000154, -0.075927, 0.997113,
		25.916229, 36.485954, 34.933453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.761349, 37.206783, 34.449921>,  <25.916122, 36.539104, 34.235474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.761349, 37.206783, 34.449921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.958139, 37.015678, 34.741043>,  <26.076214, 36.901016, 34.915718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.958139, 37.015678, 34.741043>,  <25.761349, 37.206783, 34.449921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.958139, 37.015678, 34.741043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605101, 0.788694, 0.108696,
		-0.625947, 0.386920, 0.677114,
		0.491979, -0.477761, 0.727806,
		26.105734, 36.872349, 34.959385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.934141, 37.772709, 34.912956>,  <25.761349, 37.206783, 34.449921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.934141, 37.772709, 34.912956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.167789, 37.468777, 35.027119>,  <26.307978, 37.286415, 35.095615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.167789, 37.468777, 35.027119>,  <25.934141, 37.772709, 34.912956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.167789, 37.468777, 35.027119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615685, 0.643913, 0.454211,
		-0.528901, -0.089594, 0.843941,
		0.584119, -0.759835, 0.285405,
		26.343025, 37.240826, 35.112740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.994011, 37.800076, 35.589375>,  <25.934141, 37.772709, 34.912956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.994011, 37.800076, 35.589375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.309992, 37.582180, 35.476780>,  <26.499580, 37.451443, 35.409222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.309992, 37.582180, 35.476780>,  <25.994011, 37.800076, 35.589375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.309992, 37.582180, 35.476780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612913, 0.688260, 0.388118,
		-0.017685, -0.479123, 0.877570,
		0.789953, -0.544738, -0.281489,
		26.546978, 37.418758, 35.392334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.379539, 37.681606, 36.173573>,  <25.994011, 37.800076, 35.589375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.379539, 37.681606, 36.173573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.635008, 37.626289, 35.870792>,  <26.788288, 37.593098, 35.689125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.635008, 37.626289, 35.870792>,  <26.379539, 37.681606, 36.173573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.635008, 37.626289, 35.870792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675268, 0.572385, 0.465175,
		0.368935, -0.808239, 0.458953,
		0.638670, -0.138297, -0.756951,
		26.826609, 37.584801, 35.643707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.006134, 37.539917, 36.489761>,  <26.379539, 37.681606, 36.173573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.006134, 37.539917, 36.489761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.127045, 37.666481, 36.130093>,  <27.199591, 37.742420, 35.914291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.127045, 37.666481, 36.130093>,  <27.006134, 37.539917, 36.489761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.127045, 37.666481, 36.130093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777833, 0.463397, 0.424547,
		0.551005, -0.827737, -0.106041,
		0.302274, 0.316409, -0.899175,
		27.217728, 37.761402, 35.860340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.530842, 38.025784, 36.371307>,  <27.006134, 37.539917, 36.489761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.530842, 38.025784, 36.371307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.782658, 38.287964, 36.204422>,  <27.933746, 38.445271, 36.104290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.782658, 38.287964, 36.204422>,  <27.530842, 38.025784, 36.371307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.782658, 38.287964, 36.204422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274772, -0.314469, -0.908630,
		-0.726761, 0.686658, -0.017872,
		0.629538, 0.655447, -0.417218,
		27.971519, 38.484596, 36.079258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.199287, 38.452251, 35.877972>,  <27.530842, 38.025784, 36.371307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.199287, 38.452251, 35.877972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.579519, 38.431465, 35.755531>,  <27.807659, 38.418995, 35.682068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.579519, 38.431465, 35.755531>,  <27.199287, 38.452251, 35.877972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.579519, 38.431465, 35.755531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290113, -0.499868, -0.816068,
		-0.110601, 0.864541, -0.490240,
		0.950580, -0.051967, -0.306100,
		27.864693, 38.415874, 35.663700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.174387, 38.700863, 35.264317>,  <27.199287, 38.452251, 35.877972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.174387, 38.700863, 35.264317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.443701, 38.416519, 35.345673>,  <27.605289, 38.245914, 35.394485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.443701, 38.416519, 35.345673>,  <27.174387, 38.700863, 35.264317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.443701, 38.416519, 35.345673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594607, -0.684058, -0.422501,
		0.439467, 0.163529, -0.883248,
		0.673284, -0.710860, 0.203386,
		27.645685, 38.203262, 35.406689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.426079, 38.198116, 34.633034>,  <27.174387, 38.700863, 35.264317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.426079, 38.198116, 34.633034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.407326, 38.011318, 34.986240>,  <27.396074, 37.899239, 35.198166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.407326, 38.011318, 34.986240>,  <27.426079, 38.198116, 34.633034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.407326, 38.011318, 34.986240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599379, -0.694012, -0.398862,
		0.799091, -0.547962, -0.247369,
		-0.046884, -0.466995, 0.883016,
		27.393261, 37.871220, 35.251144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.601748, 37.427921, 34.638050>,  <27.426079, 38.198116, 34.633034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.601748, 37.427921, 34.638050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.375067, 37.467598, 34.965221>,  <27.239058, 37.491402, 35.161526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.375067, 37.467598, 34.965221>,  <27.601748, 37.427921, 34.638050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.375067, 37.467598, 34.965221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548572, -0.786121, -0.284750,
		0.614748, -0.610062, 0.499909,
		-0.566704, 0.099187, 0.817930,
		27.205055, 37.497353, 35.210602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.580482, 36.744026, 34.951973>,  <27.601748, 37.427921, 34.638050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.580482, 36.744026, 34.951973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.269396, 36.967834, 35.066582>,  <27.082743, 37.102119, 35.135345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.269396, 36.967834, 35.066582>,  <27.580482, 36.744026, 34.951973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.269396, 36.967834, 35.066582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622478, -0.749003, -0.226968,
		0.087611, -0.354870, 0.930802,
		-0.777717, 0.559519, 0.286519,
		27.036081, 37.135689, 35.152538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.226547, 36.436092, 35.433441>,  <27.580482, 36.744026, 34.951973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.226547, 36.436092, 35.433441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.933561, 36.686554, 35.326534>,  <26.757771, 36.836830, 35.262390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.933561, 36.686554, 35.326534>,  <27.226547, 36.436092, 35.433441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.933561, 36.686554, 35.326534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648844, -0.760908, -0.004451,
		-0.206151, 0.170153, 0.963613,
		-0.732464, 0.626153, -0.267265,
		26.713821, 36.874401, 35.246353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.718393, 36.291512, 35.892948>,  <27.226547, 36.436092, 35.433441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.718393, 36.291512, 35.892948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.510073, 36.477962, 35.606873>,  <26.385080, 36.589832, 35.435226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.510073, 36.477962, 35.606873>,  <26.718393, 36.291512, 35.892948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.510073, 36.477962, 35.606873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656471, -0.754230, -0.013527,
		-0.545720, 0.462453, 0.698804,
		-0.520803, 0.466126, -0.715185,
		26.353832, 36.617802, 35.392319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.569763, 36.486057, 36.645203>,  <26.718393, 36.291512, 35.892948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.569763, 36.486057, 36.645203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.827528, 36.648834, 36.904163>,  <26.982187, 36.746498, 37.059540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.827528, 36.648834, 36.904163>,  <26.569763, 36.486057, 36.645203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.827528, 36.648834, 36.904163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595850, -0.797856, -0.091590,
		0.479264, 0.444779, -0.756623,
		0.644413, 0.406938, 0.647405,
		27.020851, 36.770916, 37.098385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.909662, 36.363914, 36.315186>,  <26.569763, 36.486057, 36.645203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.909662, 36.363914, 36.315186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.929543, 36.405979, 35.917900>,  <25.941471, 36.431217, 35.679527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.929543, 36.405979, 35.917900>,  <25.909662, 36.363914, 36.315186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.929543, 36.405979, 35.917900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822607, -0.559673, -0.100421,
		-0.566435, 0.822014, 0.058691,
		0.049699, 0.105161, -0.993213,
		25.944452, 36.437527, 35.619938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.234177, 36.637478, 36.034981>,  <25.909662, 36.363914, 36.315186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.234177, 36.637478, 36.034981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.411068, 36.426090, 35.745113>,  <25.517202, 36.299255, 35.571194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.411068, 36.426090, 35.745113>,  <25.234177, 36.637478, 36.034981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.411068, 36.426090, 35.745113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892126, -0.342447, -0.294688,
		-0.092428, 0.776819, -0.622904,
		0.442230, -0.528471, -0.724673,
		25.543737, 36.267548, 35.527710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.786501, 36.535713, 35.496052>,  <25.234177, 36.637478, 36.034981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.786501, 36.535713, 35.496052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.117094, 36.443295, 35.290707>,  <25.315451, 36.387844, 35.167500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.117094, 36.443295, 35.290707>,  <24.786501, 36.535713, 35.496052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.117094, 36.443295, 35.290707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459241, -0.804142, -0.377429,
		-0.325614, 0.547697, -0.770716,
		0.826482, -0.231048, -0.513365,
		25.365038, 36.373981, 35.136696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.572432, 36.454285, 34.794273>,  <24.786501, 36.535713, 35.496052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.572432, 36.454285, 34.794273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.896688, 36.237606, 34.883205>,  <25.091242, 36.107601, 34.936565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.896688, 36.237606, 34.883205>,  <24.572432, 36.454285, 34.794273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.896688, 36.237606, 34.883205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409068, -0.795584, -0.446888,
		0.418958, 0.271318, -0.866522,
		0.810640, -0.541694, 0.222330,
		25.139881, 36.075096, 34.949905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.706059, 36.066078, 34.148769>,  <24.572432, 36.454285, 34.794273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.706059, 36.066078, 34.148769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.907410, 35.882034, 34.441322>,  <25.028219, 35.771610, 34.616852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.907410, 35.882034, 34.441322>,  <24.706059, 36.066078, 34.148769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.907410, 35.882034, 34.441322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217851, -0.886672, -0.407865,
		0.836154, 0.045978, -0.546564,
		0.503376, -0.460107, 0.731379,
		25.058422, 35.744003, 34.660736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.035772, 35.504059, 33.849308>,  <24.706059, 36.066078, 34.148769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.035772, 35.504059, 33.849308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.031227, 35.403114, 34.236336>,  <25.028500, 35.342548, 34.468552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.031227, 35.403114, 34.236336>,  <25.035772, 35.504059, 33.849308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.031227, 35.403114, 34.236336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122204, -0.960026, -0.251825,
		0.992440, -0.121102, -0.019930,
		-0.011363, -0.252357, 0.967567,
		25.027819, 35.327408, 34.526608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.586218, 34.985550, 34.061783>,  <25.035772, 35.504059, 33.849308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.586218, 34.985550, 34.061783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.295315, 34.925571, 34.329697>,  <25.120773, 34.889584, 34.490444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.295315, 34.925571, 34.329697>,  <25.586218, 34.985550, 34.061783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.295315, 34.925571, 34.329697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257089, -0.845295, -0.468383,
		0.636399, -0.512829, 0.576197,
		-0.727256, -0.149945, 0.669787,
		25.077137, 34.880589, 34.530632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.601929, 34.328938, 34.464798>,  <25.586218, 34.985550, 34.061783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.601929, 34.328938, 34.464798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.232180, 34.451664, 34.374115>,  <25.010330, 34.525299, 34.319706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.232180, 34.451664, 34.374115>,  <25.601929, 34.328938, 34.464798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.232180, 34.451664, 34.374115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147249, -0.835182, -0.529895,
		-0.351921, -0.456440, 0.817199,
		-0.924375, 0.306813, -0.226708,
		24.954866, 34.543709, 34.306103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.242027, 34.292423, 34.591785>,  <25.601929, 34.328938, 34.464798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.242027, 34.292423, 34.591785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.934954, 34.174259, 34.819256>,  <25.750710, 34.103359, 34.955738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.934954, 34.174259, 34.819256>,  <26.242027, 34.292423, 34.591785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.934954, 34.174259, 34.819256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024063, -0.873496, -0.486237,
		0.640377, -0.386960, 0.663460,
		-0.767683, -0.295410, 0.568678,
		25.704649, 34.085636, 34.989861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.676113, 33.842316, 34.175888>,  <26.242027, 34.292423, 34.591785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.676113, 33.842316, 34.175888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945728, 33.578999, 34.309944>,  <27.107498, 33.421009, 34.390377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945728, 33.578999, 34.309944>,  <26.676113, 33.842316, 34.175888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.945728, 33.578999, 34.309944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714825, 0.695668, -0.071211,
		-0.186269, 0.287565, 0.939473,
		0.674039, -0.658295, 0.335140,
		27.147940, 33.381512, 34.410488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.998676, 34.101082, 34.878891>,  <26.676113, 33.842316, 34.175888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.998676, 34.101082, 34.878891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.245344, 33.867424, 34.667801>,  <27.393345, 33.727230, 34.541149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.245344, 33.867424, 34.667801>,  <26.998676, 34.101082, 34.878891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.245344, 33.867424, 34.667801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648074, 0.757266, -0.080930,
		0.446901, -0.292096, 0.845553,
		0.616669, -0.584148, -0.527722,
		27.430346, 33.692181, 34.509483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.584257, 34.279968, 35.111912>,  <26.998676, 34.101082, 34.878891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.584257, 34.279968, 35.111912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.714581, 34.105919, 34.776169>,  <27.792774, 34.001492, 34.574722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.714581, 34.105919, 34.776169>,  <27.584257, 34.279968, 35.111912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.714581, 34.105919, 34.776169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643386, 0.752560, -0.140385,
		0.692750, -0.494292, 0.525141,
		0.325809, -0.435120, -0.839356,
		27.812323, 33.975384, 34.524361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.281347, 34.499477, 35.081646>,  <27.584257, 34.279968, 35.111912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.281347, 34.499477, 35.081646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.221209, 34.390675, 34.701454>,  <28.185125, 34.325394, 34.473339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.221209, 34.390675, 34.701454>,  <28.281347, 34.499477, 35.081646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.221209, 34.390675, 34.701454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627632, 0.716558, -0.304339,
		0.763855, -0.642307, 0.062988,
		-0.150344, -0.272004, -0.950479,
		28.176105, 34.309074, 34.416309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914141, 34.625866, 34.786499>,  <28.281347, 34.499477, 35.081646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914141, 34.625866, 34.786499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.642012, 34.637985, 34.493584>,  <28.478735, 34.645256, 34.317837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.642012, 34.637985, 34.493584>,  <28.914141, 34.625866, 34.786499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.642012, 34.637985, 34.493584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497240, 0.753107, -0.430792,
		0.538436, -0.657200, -0.527424,
		-0.680323, 0.030302, -0.732286,
		28.437914, 34.647076, 34.273899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.489670, 34.564434, 34.547047>,  <28.914141, 34.625866, 34.786499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.489670, 34.564434, 34.547047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.338568, 34.589069, 34.916588>,  <29.247906, 34.603851, 35.138313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.338568, 34.589069, 34.916588>,  <29.489670, 34.564434, 34.547047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.338568, 34.589069, 34.916588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272943, -0.946039, 0.174676,
		0.884761, 0.318145, 0.340562,
		-0.377758, 0.061593, 0.923854,
		29.225241, 34.607548, 35.193745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.528336, 34.108528, 33.963558>,  <29.489670, 34.564434, 34.547047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.528336, 34.108528, 33.963558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.150158, 34.181801, 33.855801>,  <28.923250, 34.225765, 33.791145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.150158, 34.181801, 33.855801>,  <29.528336, 34.108528, 33.963558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.150158, 34.181801, 33.855801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318161, 0.696953, -0.642674,
		0.070030, -0.693325, -0.717214,
		-0.945446, 0.183183, -0.269397,
		28.866524, 34.236755, 33.774982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.505981, 34.132069, 33.184315>,  <29.528336, 34.108528, 33.963558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.505981, 34.132069, 33.184315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.206085, 34.344902, 33.341679>,  <29.026148, 34.472603, 33.436096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.206085, 34.344902, 33.341679>,  <29.505981, 34.132069, 33.184315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.206085, 34.344902, 33.341679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356427, 0.825620, -0.437391,
		-0.557538, -0.187707, -0.808652,
		-0.749741, 0.532087, 0.393411,
		28.981163, 34.504528, 33.459702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.160625, 34.485405, 32.624424>,  <29.505981, 34.132069, 33.184315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.160625, 34.485405, 32.624424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.056002, 34.702675, 32.943562>,  <28.993227, 34.833038, 33.135044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.056002, 34.702675, 32.943562>,  <29.160625, 34.485405, 32.624424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.056002, 34.702675, 32.943562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267029, 0.835075, -0.480983,
		-0.927514, 0.087242, -0.363464,
		-0.261558, 0.543174, 0.797840,
		28.977535, 34.865627, 33.182915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.773275, 35.075520, 32.292210>,  <29.160625, 34.485405, 32.624424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.773275, 35.075520, 32.292210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.921497, 35.167156, 32.652256>,  <29.010431, 35.222137, 32.868282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.921497, 35.167156, 32.652256>,  <28.773275, 35.075520, 32.292210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.921497, 35.167156, 32.652256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397492, 0.836762, -0.376603,
		-0.839458, 0.497341, 0.219005,
		0.370555, 0.229090, 0.900115,
		29.032663, 35.235882, 32.922291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.236853, 35.596485, 32.534309>,  <28.773275, 35.075520, 32.292210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.236853, 35.596485, 32.534309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.084358, 35.868881, 32.784401>,  <28.992861, 36.032318, 32.934456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.084358, 35.868881, 32.784401>,  <29.236853, 35.596485, 32.534309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.084358, 35.868881, 32.784401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082064, -0.698559, 0.710831,
		0.920828, 0.219686, 0.322200,
		-0.381235, 0.680994, 0.625225,
		28.969988, 36.073181, 32.971970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.670332, 35.664536, 33.193123>,  <29.236853, 35.596485, 32.534309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.670332, 35.664536, 33.193123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.280016, 35.748440, 33.217876>,  <29.045826, 35.798782, 33.232731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.280016, 35.748440, 33.217876>,  <29.670332, 35.664536, 33.193123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.280016, 35.748440, 33.217876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143879, -0.828834, 0.540678,
		0.164708, 0.518685, 0.838950,
		-0.975792, 0.209761, 0.061888,
		28.987278, 35.811367, 33.236443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.444466, 35.699238, 33.912373>,  <29.670332, 35.664536, 33.193123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.444466, 35.699238, 33.912373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.165213, 35.580502, 33.651760>,  <28.997662, 35.509258, 33.495392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.165213, 35.580502, 33.651760>,  <29.444466, 35.699238, 33.912373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.165213, 35.580502, 33.651760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218745, -0.778059, 0.588875,
		-0.681735, 0.553633, 0.478255,
		-0.698132, -0.296841, -0.651535,
		28.955772, 35.491447, 33.456299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.625177, 35.560429, 34.170372>,  <29.444466, 35.699238, 33.912373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.625177, 35.560429, 34.170372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.719646, 35.332672, 33.855408>,  <28.776327, 35.196018, 33.666428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.719646, 35.332672, 33.855408>,  <28.625177, 35.560429, 34.170372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.719646, 35.332672, 33.855408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437866, -0.785761, 0.436867,
		-0.867466, 0.241606, -0.434890,
		0.236170, -0.569391, -0.787412,
		28.790497, 35.161854, 33.619183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.975412, 35.193699, 33.976418>,  <28.625177, 35.560429, 34.170372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.975412, 35.193699, 33.976418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.268644, 34.989109, 33.797092>,  <28.444584, 34.866356, 33.689499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.268644, 34.989109, 33.797092>,  <27.975412, 35.193699, 33.976418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.268644, 34.989109, 33.797092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402224, -0.857551, 0.320659,
		-0.548462, -0.054746, -0.834381,
		0.733080, -0.511477, -0.448314,
		28.488567, 34.835667, 33.662598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.617413, 34.676991, 33.444454>,  <27.975412, 35.193699, 33.976418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.617413, 34.676991, 33.444454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.976553, 34.562801, 33.578541>,  <28.192038, 34.494289, 33.658993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.976553, 34.562801, 33.578541>,  <27.617413, 34.676991, 33.444454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.976553, 34.562801, 33.578541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423743, -0.767064, 0.481721,
		0.119615, -0.574559, -0.809676,
		0.897850, -0.285474, 0.335217,
		28.245909, 34.477158, 33.679108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.906179, 34.022533, 33.172737>,  <27.617413, 34.676991, 33.444454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.906179, 34.022533, 33.172737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.050468, 34.075031, 33.542095>,  <28.137043, 34.106529, 33.763710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.050468, 34.075031, 33.542095>,  <27.906179, 34.022533, 33.172737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.050468, 34.075031, 33.542095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473991, -0.826870, 0.302686,
		0.803250, -0.546866, -0.236065,
		0.360724, 0.131240, 0.923393,
		28.158686, 34.114403, 33.819115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.184465, 33.446213, 33.402252>,  <27.906179, 34.022533, 33.172737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.184465, 33.446213, 33.402252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.089815, 33.616772, 33.751465>,  <28.033026, 33.719109, 33.960995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.089815, 33.616772, 33.751465>,  <28.184465, 33.446213, 33.402252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.089815, 33.616772, 33.751465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427178, -0.852704, 0.300691,
		0.872656, -0.301790, 0.383921,
		-0.236625, 0.426402, 0.873035,
		28.018827, 33.744694, 34.013374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.394600, 32.977859, 33.956417>,  <28.184465, 33.446213, 33.402252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.394600, 32.977859, 33.956417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095497, 33.195015, 34.109325>,  <27.916035, 33.325310, 34.201069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095497, 33.195015, 34.109325>,  <28.394600, 32.977859, 33.956417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.095497, 33.195015, 34.109325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441974, -0.836624, 0.323604,
		0.495498, 0.073023, 0.865534,
		-0.747757, 0.542889, 0.382272,
		27.871170, 33.357883, 34.224007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.190052, 32.701756, 34.631779>,  <28.394600, 32.977859, 33.956417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.190052, 32.701756, 34.631779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.858885, 32.890167, 34.510006>,  <27.660185, 33.003216, 34.436943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.858885, 32.890167, 34.510006>,  <28.190052, 32.701756, 34.631779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.858885, 32.890167, 34.510006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549836, -0.788718, 0.274961,
		-0.110595, 0.395033, 0.911985,
		-0.827919, 0.471033, -0.304432,
		27.610510, 33.031479, 34.418678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.722662, 32.769073, 35.160576>,  <28.190052, 32.701756, 34.631779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.722662, 32.769073, 35.160576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.563393, 32.742603, 34.794609>,  <27.467831, 32.726723, 34.575027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.563393, 32.742603, 34.794609>,  <27.722662, 32.769073, 35.160576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.563393, 32.742603, 34.794609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558799, -0.773474, 0.299135,
		-0.727462, 0.630364, 0.270999,
		-0.398175, -0.066175, -0.914919,
		27.443941, 32.722752, 34.520134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.582285, 32.263008, 35.614063>,  <27.722662, 32.769073, 35.160576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.582285, 32.263008, 35.614063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.430929, 31.963865, 35.395878>,  <27.340115, 31.784380, 35.264965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.430929, 31.963865, 35.395878>,  <27.582285, 32.263008, 35.614063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.430929, 31.963865, 35.395878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875803, -0.098491, -0.472514,
		0.299649, -0.656513, 0.692243,
		-0.378391, -0.747857, -0.545463,
		27.317411, 31.739508, 35.232239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.991808, 31.634268, 35.713013>,  <27.582285, 32.263008, 35.614063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.991808, 31.634268, 35.713013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.821707, 31.633553, 35.350983>,  <27.719646, 31.633123, 35.133766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.821707, 31.633553, 35.350983>,  <27.991808, 31.634268, 35.713013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.821707, 31.633553, 35.350983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894266, -0.154912, -0.419869,
		-0.139454, -0.987927, 0.067481,
		-0.425254, -0.001794, -0.905073,
		27.694130, 31.633015, 35.079460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.268072, 31.076115, 35.398296>,  <27.991808, 31.634268, 35.713013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.268072, 31.076115, 35.398296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.139622, 31.347183, 35.133678>,  <28.062551, 31.509825, 34.974907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.139622, 31.347183, 35.133678>,  <28.268072, 31.076115, 35.398296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.139622, 31.347183, 35.133678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916051, 0.045048, -0.398522,
		-0.240266, -0.733984, -0.635248,
		-0.321126, 0.677671, -0.661544,
		28.043283, 31.550484, 34.935215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.579679, 31.030281, 34.660561>,  <28.268072, 31.076115, 35.398296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.579679, 31.030281, 34.660561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.471521, 31.411467, 34.715328>,  <28.406626, 31.640179, 34.748188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.471521, 31.411467, 34.715328>,  <28.579679, 31.030281, 34.660561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.471521, 31.411467, 34.715328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861927, 0.302979, -0.406555,
		-0.428916, 0.008087, -0.903308,
		-0.270395, 0.952963, 0.136922,
		28.390404, 31.697355, 34.756405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.895723, 31.364840, 34.118973>,  <28.579679, 31.030281, 34.660561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.895723, 31.364840, 34.118973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.819855, 31.655928, 34.382622>,  <28.774334, 31.830582, 34.540813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.819855, 31.655928, 34.382622>,  <28.895723, 31.364840, 34.118973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.819855, 31.655928, 34.382622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885917, 0.416259, -0.204645,
		-0.423291, 0.545114, -0.723654,
		-0.189673, 0.727722, 0.659124,
		28.762953, 31.874245, 34.580360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.472319, 31.176540, 34.477837>,  <28.895723, 31.364840, 34.118973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.472319, 31.176540, 34.477837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.752501, 31.152763, 34.193352>,  <29.920610, 31.138496, 34.022659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.752501, 31.152763, 34.193352>,  <29.472319, 31.176540, 34.477837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.752501, 31.152763, 34.193352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633938, 0.509591, 0.581756,
		0.327849, -0.858361, 0.394629,
		0.700456, -0.059442, -0.711217,
		29.962637, 31.134932, 33.979988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.065708, 30.889994, 34.770519>,  <29.472319, 31.176540, 34.477837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.065708, 30.889994, 34.770519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.133356, 31.142420, 34.467693>,  <30.173944, 31.293877, 34.285995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.133356, 31.142420, 34.467693>,  <30.065708, 30.889994, 34.770519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.133356, 31.142420, 34.467693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486720, 0.614458, 0.620922,
		0.857030, -0.473492, -0.203235,
		0.169122, 0.631067, -0.757068,
		30.184093, 31.331739, 34.240574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.477570, 30.410616, 35.233452>,  <30.065708, 30.889994, 34.770519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.477570, 30.410616, 35.233452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.466236, 30.309013, 35.620167>,  <30.459436, 30.248053, 35.852196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.466236, 30.309013, 35.620167>,  <30.477570, 30.410616, 35.233452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.466236, 30.309013, 35.620167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841792, -0.515510, -0.160111,
		0.539057, -0.818371, -0.199214,
		-0.028333, -0.254006, 0.966787,
		30.457737, 30.232811, 35.910202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.761192, 29.886530, 35.670345>,  <30.477570, 30.410616, 35.233452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.761192, 29.886530, 35.670345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.383118, 29.868801, 35.799751>,  <30.156273, 29.858164, 35.877396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.383118, 29.868801, 35.799751>,  <30.761192, 29.886530, 35.670345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.383118, 29.868801, 35.799751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235132, 0.595088, 0.768494,
		-0.226580, 0.802437, -0.552047,
		-0.945185, -0.044321, 0.323514,
		30.099562, 29.855505, 35.896805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270966, 29.402561, 35.699352>,  <30.761192, 29.886530, 35.670345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270966, 29.402561, 35.699352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649103, 29.383625, 35.570301>,  <31.875986, 29.372263, 35.492870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649103, 29.383625, 35.570301>,  <31.270966, 29.402561, 35.699352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649103, 29.383625, 35.570301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318810, -0.073566, 0.944959,
		-0.068444, -0.996167, -0.054461,
		0.945344, -0.047314, -0.322623,
		31.932707, 29.369423, 35.473515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673504, 29.057810, 36.273403>,  <31.270966, 29.402561, 35.699352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673504, 29.057810, 36.273403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979538, 29.242548, 36.093918>,  <32.163158, 29.353392, 35.986225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979538, 29.242548, 36.093918>,  <31.673504, 29.057810, 36.273403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979538, 29.242548, 36.093918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421241, 0.168075, 0.891239,
		0.487031, -0.870891, -0.065956,
		0.765086, 0.461845, -0.448712,
		32.209064, 29.381102, 35.959305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345482, 28.716284, 36.306427>,  <31.673504, 29.057810, 36.273403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345482, 28.716284, 36.306427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382378, 29.114065, 36.286221>,  <32.404514, 29.352734, 36.274097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382378, 29.114065, 36.286221>,  <32.345482, 28.716284, 36.306427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382378, 29.114065, 36.286221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546452, -0.008147, 0.837451,
		0.832395, -0.104852, -0.544173,
		0.092242, 0.994455, -0.050515,
		32.410049, 29.412401, 36.271065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040058, 28.618328, 36.557835>,  <32.345482, 28.716284, 36.306427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040058, 28.618328, 36.557835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262699, 28.286640, 36.578190>,  <33.396282, 28.087627, 36.590405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262699, 28.286640, 36.578190>,  <33.040058, 28.618328, 36.557835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262699, 28.286640, 36.578190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492452, 0.279975, -0.824078,
		0.669092, 0.483746, 0.564185,
		0.556603, -0.829219, 0.050892,
		33.429680, 28.037874, 36.593456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679344, 28.832996, 36.309475>,  <33.040058, 28.618328, 36.557835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679344, 28.832996, 36.309475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662788, 28.440229, 36.235584>,  <33.652855, 28.204569, 36.191250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662788, 28.440229, 36.235584>,  <33.679344, 28.832996, 36.309475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662788, 28.440229, 36.235584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446787, 0.147178, -0.882451,
		0.893682, -0.119059, 0.432617,
		-0.041392, -0.981918, -0.184724,
		33.650372, 28.145655, 36.180168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445282, 28.576132, 36.097240>,  <33.679344, 28.832996, 36.309475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445282, 28.576132, 36.097240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161209, 28.352917, 35.925549>,  <33.990765, 28.218987, 35.822533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161209, 28.352917, 35.925549>,  <34.445282, 28.576132, 36.097240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161209, 28.352917, 35.925549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464483, 0.086769, -0.881321,
		0.529055, -0.825266, 0.197578,
		-0.710181, -0.558038, -0.429227,
		33.948154, 28.185505, 35.796780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786831, 28.090069, 35.477623>,  <34.445282, 28.576132, 36.097240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786831, 28.090069, 35.477623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390408, 28.120016, 35.433434>,  <34.152554, 28.137985, 35.406921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390408, 28.120016, 35.433434>,  <34.786831, 28.090069, 35.477623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390408, 28.120016, 35.433434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114654, 0.054088, -0.991932,
		-0.068291, -0.995725, -0.062189,
		-0.991055, 0.074871, -0.110470,
		34.093090, 28.142477, 35.400291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634933, 27.678007, 35.021442>,  <34.786831, 28.090069, 35.477623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634933, 27.678007, 35.021442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307892, 27.903778, 34.975929>,  <34.111668, 28.039240, 34.948624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307892, 27.903778, 34.975929>,  <34.634933, 27.678007, 35.021442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307892, 27.903778, 34.975929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062951, -0.108801, -0.992068,
		-0.572329, -0.818282, 0.053425,
		-0.817605, 0.564426, -0.113781,
		34.062611, 28.073107, 34.941795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025330, 27.300194, 34.752357>,  <34.634933, 27.678007, 35.021442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025330, 27.300194, 34.752357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967571, 27.684851, 34.659061>,  <33.932919, 27.915644, 34.603085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967571, 27.684851, 34.659061>,  <34.025330, 27.300194, 34.752357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967571, 27.684851, 34.659061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093407, -0.247900, -0.964272,
		-0.985102, -0.117447, 0.125619,
		-0.144392, 0.961640, -0.233237,
		33.924255, 27.973343, 34.589092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576519, 27.310585, 34.080608>,  <34.025330, 27.300194, 34.752357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576519, 27.310585, 34.080608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682301, 27.695086, 34.111752>,  <33.745770, 27.925785, 34.130436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682301, 27.695086, 34.111752>,  <33.576519, 27.310585, 34.080608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682301, 27.695086, 34.111752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154174, 0.121830, -0.980504,
		-0.951995, 0.247294, 0.180419,
		0.264453, 0.961251, 0.077855,
		33.761635, 27.983461, 34.135109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072769, 27.713480, 33.798107>,  <33.576519, 27.310585, 34.080608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072769, 27.713480, 33.798107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386639, 27.961355, 33.791447>,  <33.574959, 28.110081, 33.787453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386639, 27.961355, 33.791447>,  <33.072769, 27.713480, 33.798107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386639, 27.961355, 33.791447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159416, 0.175760, -0.971440,
		-0.599063, 0.764915, 0.236702,
		0.784672, 0.619688, -0.016648,
		33.622040, 28.147261, 33.786453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891560, 28.353880, 33.491989>,  <33.072769, 27.713480, 33.798107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891560, 28.353880, 33.491989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288345, 28.336630, 33.444405>,  <33.526417, 28.326279, 33.415855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288345, 28.336630, 33.444405>,  <32.891560, 28.353880, 33.491989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288345, 28.336630, 33.444405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089170, 0.428749, -0.899012,
		0.089775, 0.902394, 0.421457,
		0.991962, -0.043127, -0.118957,
		33.585934, 28.323692, 33.408718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023617, 29.013273, 33.231853>,  <32.891560, 28.353880, 33.491989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023617, 29.013273, 33.231853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329254, 28.772333, 33.139473>,  <33.512638, 28.627769, 33.084045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329254, 28.772333, 33.139473>,  <33.023617, 29.013273, 33.231853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329254, 28.772333, 33.139473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059864, 0.290250, -0.955077,
		0.642322, 0.743593, 0.185719,
		0.764093, -0.602349, -0.230949,
		33.558483, 28.591629, 33.070187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360264, 29.370077, 32.721302>,  <33.023617, 29.013273, 33.231853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360264, 29.370077, 32.721302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.515247, 29.002203, 32.695816>,  <33.608238, 28.781479, 32.680523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.515247, 29.002203, 32.695816>,  <33.360264, 29.370077, 32.721302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515247, 29.002203, 32.695816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007195, 0.072131, -0.997369,
		0.921861, 0.385977, 0.034564,
		0.387455, -0.919684, -0.063717,
		33.631485, 28.726297, 32.676701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968723, 29.369566, 32.188187>,  <33.360264, 29.370077, 32.721302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968723, 29.369566, 32.188187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858902, 28.988047, 32.237003>,  <33.793011, 28.759136, 32.266293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858902, 28.988047, 32.237003>,  <33.968723, 29.369566, 32.188187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858902, 28.988047, 32.237003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056448, -0.142682, -0.988158,
		0.959913, -0.264414, 0.093013,
		-0.274554, -0.953796, 0.122037,
		33.776535, 28.701908, 32.273613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476353, 28.947140, 31.795259>,  <33.968723, 29.369566, 32.188187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476353, 28.947140, 31.795259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149773, 28.723816, 31.854187>,  <33.953823, 28.589823, 31.889544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149773, 28.723816, 31.854187>,  <34.476353, 28.947140, 31.795259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149773, 28.723816, 31.854187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057934, -0.174638, -0.982927,
		0.574503, -0.811045, 0.110238,
		-0.816449, -0.558308, 0.147317,
		33.904839, 28.556324, 31.898382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566589, 28.319145, 31.444931>,  <34.476353, 28.947140, 31.795259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566589, 28.319145, 31.444931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.173256, 28.384800, 31.476234>,  <33.937256, 28.424192, 31.495016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.173256, 28.384800, 31.476234>,  <34.566589, 28.319145, 31.444931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173256, 28.384800, 31.476234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106739, -0.172613, -0.979189,
		-0.147197, -0.971220, 0.187253,
		-0.983331, 0.164121, 0.078259,
		33.878258, 28.434040, 31.499712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284389, 27.690929, 31.129314>,  <34.566589, 28.319145, 31.444931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284389, 27.690929, 31.129314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012337, 27.984026, 31.120256>,  <33.849106, 28.159883, 31.114822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012337, 27.984026, 31.120256>,  <34.284389, 27.690929, 31.129314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012337, 27.984026, 31.120256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171787, -0.189328, -0.966770,
		-0.712679, -0.653640, 0.254643,
		-0.680131, 0.732741, -0.022643,
		33.808296, 28.203848, 31.113464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914707, 27.486395, 30.648729>,  <34.284389, 27.690929, 31.129314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914707, 27.486395, 30.648729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794930, 27.867250, 30.673277>,  <33.723064, 28.095764, 30.688005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794930, 27.867250, 30.673277>,  <33.914707, 27.486395, 30.648729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794930, 27.867250, 30.673277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230372, -0.009734, -0.973054,
		-0.925884, -0.305515, 0.222260,
		-0.299446, 0.952138, 0.061369,
		33.705097, 28.152891, 30.691689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266045, 27.494486, 30.211803>,  <33.914707, 27.486395, 30.648729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266045, 27.494486, 30.211803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422752, 27.861519, 30.238810>,  <33.516777, 28.081739, 30.255013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422752, 27.861519, 30.238810>,  <33.266045, 27.494486, 30.211803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422752, 27.861519, 30.238810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095055, 0.032620, -0.994938,
		-0.915140, 0.396205, -0.074441,
		0.391771, 0.917583, 0.067514,
		33.540283, 28.136793, 30.259064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841667, 28.010677, 29.688578>,  <33.266045, 27.494486, 30.211803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841667, 28.010677, 29.688578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191200, 28.185713, 29.773367>,  <33.400921, 28.290733, 29.824242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191200, 28.185713, 29.773367>,  <32.841667, 28.010677, 29.688578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191200, 28.185713, 29.773367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132362, 0.205412, -0.969683,
		-0.467865, 0.875398, 0.121576,
		0.873832, 0.437589, 0.211975,
		33.453350, 28.316990, 29.836960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738167, 28.688574, 29.432596>,  <32.841667, 28.010677, 29.688578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738167, 28.688574, 29.432596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125931, 28.590691, 29.440214>,  <33.358589, 28.531961, 29.444786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125931, 28.590691, 29.440214>,  <32.738167, 28.688574, 29.432596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125931, 28.590691, 29.440214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052845, 0.132310, -0.989799,
		0.239690, 0.960528, 0.141194,
		0.969410, -0.244706, 0.019046,
		33.416756, 28.517279, 29.445929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008801, 29.282753, 29.067654>,  <32.738167, 28.688574, 29.432596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008801, 29.282753, 29.067654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262180, 28.973425, 29.056976>,  <33.414207, 28.787828, 29.050570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262180, 28.973425, 29.056976>,  <33.008801, 29.282753, 29.067654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262180, 28.973425, 29.056976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067742, 0.089791, -0.993654,
		0.770812, 0.627623, 0.109265,
		0.633451, -0.773322, -0.026695,
		33.452217, 28.741428, 29.048967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495930, 29.502544, 28.653313>,  <33.008801, 29.282753, 29.067654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495930, 29.502544, 28.653313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.553650, 29.106779, 28.647142>,  <33.588284, 28.869320, 28.643440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.553650, 29.106779, 28.647142>,  <33.495930, 29.502544, 28.653313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553650, 29.106779, 28.647142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141703, 0.036092, -0.989251,
		0.979335, 0.140563, 0.145411,
		0.144300, -0.989414, -0.015428,
		33.596939, 28.809956, 28.642513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943512, 29.471626, 28.096573>,  <33.495930, 29.502544, 28.653313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943512, 29.471626, 28.096573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818161, 29.094849, 28.144802>,  <33.742950, 28.868782, 28.173740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818161, 29.094849, 28.144802>,  <33.943512, 29.471626, 28.096573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818161, 29.094849, 28.144802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229130, -0.048219, -0.972201,
		0.921572, -0.332291, -0.200717,
		-0.313376, -0.941944, 0.120575,
		33.724148, 28.812265, 28.180975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352497, 29.142614, 27.714479>,  <33.943512, 29.471626, 28.096573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352497, 29.142614, 27.714479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024242, 28.920036, 27.766525>,  <33.827290, 28.786489, 27.797752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024242, 28.920036, 27.766525>,  <34.352497, 29.142614, 27.714479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024242, 28.920036, 27.766525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151217, -0.008123, -0.988467,
		0.551085, -0.830845, -0.077478,
		-0.820634, -0.556445, 0.130114,
		33.778053, 28.753103, 27.805559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472576, 28.538717, 27.252090>,  <34.352497, 29.142614, 27.714479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472576, 28.538717, 27.252090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080910, 28.550440, 27.332472>,  <33.845909, 28.557474, 27.380701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080910, 28.550440, 27.332472>,  <34.472576, 28.538717, 27.252090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080910, 28.550440, 27.332472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197469, 0.093573, -0.975833,
		-0.047405, -0.995181, -0.085836,
		-0.979162, 0.029310, 0.200953,
		33.787163, 28.559233, 27.392757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013863, 28.035995, 26.833639>,  <34.472576, 28.538717, 27.252090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013863, 28.035995, 26.833639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739540, 28.314007, 26.919992>,  <33.574947, 28.480814, 26.971804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739540, 28.314007, 26.919992>,  <34.013863, 28.035995, 26.833639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739540, 28.314007, 26.919992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321349, -0.023040, -0.946680,
		-0.652995, -0.718614, 0.239148,
		-0.685808, 0.695028, 0.215881,
		33.533798, 28.522514, 26.984756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387856, 27.846594, 26.486015>,  <34.013863, 28.035995, 26.833639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387856, 27.846594, 26.486015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307739, 28.232168, 26.556110>,  <33.259670, 28.463512, 26.598167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307739, 28.232168, 26.556110>,  <33.387856, 27.846594, 26.486015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307739, 28.232168, 26.556110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204959, 0.133680, -0.969599,
		-0.958058, -0.230118, 0.170793,
		-0.200291, 0.963938, 0.175238,
		33.247654, 28.521349, 26.608683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875950, 27.994560, 26.015142>,  <33.387856, 27.846594, 26.486015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875950, 27.994560, 26.015142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019882, 28.357019, 26.104063>,  <33.106243, 28.574495, 26.157415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019882, 28.357019, 26.104063>,  <32.875950, 27.994560, 26.015142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019882, 28.357019, 26.104063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163638, 0.295859, -0.941111,
		-0.918556, 0.302264, 0.254739,
		0.359830, 0.906148, 0.222301,
		33.127831, 28.628864, 26.170753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373756, 28.541313, 25.679399>,  <32.875950, 27.994560, 26.015142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373756, 28.541313, 25.679399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725536, 28.716679, 25.753538>,  <32.936604, 28.821898, 25.798021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725536, 28.716679, 25.753538>,  <32.373756, 28.541313, 25.679399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725536, 28.716679, 25.753538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007042, 0.377372, -0.926035,
		-0.475932, 0.815710, 0.328794,
		0.879454, 0.438415, 0.185347,
		32.989372, 28.848204, 25.809143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316414, 29.197206, 25.364157>,  <32.373756, 28.541313, 25.679399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316414, 29.197206, 25.364157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713810, 29.181873, 25.407051>,  <32.952248, 29.172674, 25.432787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713810, 29.181873, 25.407051>,  <32.316414, 29.197206, 25.364157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713810, 29.181873, 25.407051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110166, 0.084995, -0.990272,
		0.028844, 0.995644, 0.088665,
		0.993495, -0.038331, 0.107234,
		33.011860, 29.170374, 25.439220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629822, 29.904547, 25.123451>,  <32.316414, 29.197206, 25.364157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629822, 29.904547, 25.123451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922306, 29.635036, 25.080837>,  <33.097797, 29.473330, 25.055269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922306, 29.635036, 25.080837>,  <32.629822, 29.904547, 25.123451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922306, 29.635036, 25.080837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165644, 0.326878, -0.930437,
		0.661731, 0.662702, 0.350625,
		0.731214, -0.673778, -0.106533,
		33.141670, 29.432903, 25.048878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265167, 30.264013, 24.854052>,  <32.629822, 29.904547, 25.123451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265167, 30.264013, 24.854052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302738, 29.878021, 24.756079>,  <33.325283, 29.646427, 24.697294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302738, 29.878021, 24.756079>,  <33.265167, 30.264013, 24.854052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.302738, 29.878021, 24.756079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393632, 0.261971, -0.881150,
		0.914457, -0.013648, 0.404454,
		0.093929, -0.964979, -0.244933,
		33.330917, 29.588528, 24.682598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973576, 30.098757, 24.615120>,  <33.265167, 30.264013, 24.854052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973576, 30.098757, 24.615120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733566, 29.823114, 24.452587>,  <33.589561, 29.657728, 24.355068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733566, 29.823114, 24.452587>,  <33.973576, 30.098757, 24.615120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733566, 29.823114, 24.452587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442988, 0.136733, -0.886039,
		0.666134, -0.711644, 0.223223,
		-0.600022, -0.689106, -0.406332,
		33.553558, 29.616383, 24.330687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431839, 29.618721, 24.311470>,  <33.973576, 30.098757, 24.615120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431839, 29.618721, 24.311470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064915, 29.617550, 24.152206>,  <33.844761, 29.616848, 24.056648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064915, 29.617550, 24.152206>,  <34.431839, 29.618721, 24.311470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064915, 29.617550, 24.152206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397720, 0.040684, -0.916604,
		0.018876, -0.999167, -0.036159,
		-0.917313, -0.002921, -0.398157,
		33.789722, 29.616673, 24.032759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574020, 29.288111, 23.732080>,  <34.431839, 29.618721, 24.311470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574020, 29.288111, 23.732080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224888, 29.468092, 23.656494>,  <34.015408, 29.576080, 23.611143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224888, 29.468092, 23.656494>,  <34.574020, 29.288111, 23.732080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224888, 29.468092, 23.656494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331652, 0.262839, -0.906048,
		-0.358010, -0.853498, -0.378642,
		-0.872832, 0.449951, -0.188965,
		33.963039, 29.603077, 23.599804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386360, 29.153242, 23.072596>,  <34.574020, 29.288111, 23.732080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386360, 29.153242, 23.072596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163025, 29.477777, 23.141869>,  <34.029026, 29.672499, 23.183432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163025, 29.477777, 23.141869>,  <34.386360, 29.153242, 23.072596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163025, 29.477777, 23.141869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371606, 0.431220, -0.822167,
		-0.741734, -0.394690, -0.542264,
		-0.558336, 0.811338, 0.173181,
		33.995525, 29.721178, 23.193823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112865, 29.320284, 22.338913>,  <34.386360, 29.153242, 23.072596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112865, 29.320284, 22.338913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.076942, 29.661934, 22.543816>,  <34.055389, 29.866924, 22.666758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.076942, 29.661934, 22.543816>,  <34.112865, 29.320284, 22.338913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076942, 29.661934, 22.543816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331106, 0.510684, -0.793455,
		-0.939310, 0.098351, -0.328670,
		-0.089810, 0.854125, 0.512255,
		34.049999, 29.918171, 22.697493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801819, 29.717632, 21.907364>,  <34.112865, 29.320284, 22.338913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801819, 29.717632, 21.907364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940464, 29.995319, 22.159687>,  <34.023651, 30.161932, 22.311081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940464, 29.995319, 22.159687>,  <33.801819, 29.717632, 21.907364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940464, 29.995319, 22.159687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012654, 0.675899, -0.736885,
		-0.937921, 0.247434, 0.243063,
		0.346617, 0.694216, 0.630809,
		34.044449, 30.203585, 22.348930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528996, 30.226372, 21.629854>,  <33.801819, 29.717632, 21.907364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528996, 30.226372, 21.629854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812481, 30.373207, 21.870840>,  <33.982574, 30.461308, 22.015432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812481, 30.373207, 21.870840>,  <33.528996, 30.226372, 21.629854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812481, 30.373207, 21.870840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057145, 0.881029, -0.469598,
		-0.703174, 0.298385, 0.645379,
		0.708718, 0.367088, 0.602465,
		34.025097, 30.483334, 22.051580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239189, 30.866423, 21.954662>,  <33.528996, 30.226372, 21.629854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239189, 30.866423, 21.954662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636860, 30.842272, 21.918941>,  <33.875462, 30.827782, 21.897509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636860, 30.842272, 21.918941>,  <33.239189, 30.866423, 21.954662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636860, 30.842272, 21.918941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003112, 0.812013, -0.583631,
		0.107751, 0.580508, 0.807094,
		0.994173, -0.060376, -0.089302,
		33.935112, 30.824160, 21.892151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511547, 31.545841, 22.200361>,  <33.239189, 30.866423, 21.954662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511547, 31.545841, 22.200361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811134, 31.417603, 21.968407>,  <33.990887, 31.340660, 21.829235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811134, 31.417603, 21.968407>,  <33.511547, 31.545841, 22.200361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811134, 31.417603, 21.968407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075633, 0.828072, -0.555496,
		0.658277, 0.459907, 0.595951,
		0.748967, -0.320597, -0.579885,
		34.035824, 31.321423, 21.794441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799610, 32.138409, 22.072477>,  <33.511547, 31.545841, 22.200361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799610, 32.138409, 22.072477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925922, 31.886024, 21.789021>,  <34.001709, 31.734594, 21.618946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925922, 31.886024, 21.789021>,  <33.799610, 32.138409, 22.072477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925922, 31.886024, 21.789021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077315, 0.727262, -0.681991,
		0.945675, 0.270151, 0.180876,
		0.315785, -0.630958, -0.708641,
		34.020657, 31.696737, 21.576427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454998, 32.326096, 21.870363>,  <33.799610, 32.138409, 22.072477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454998, 32.326096, 21.870363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254566, 32.153660, 21.570210>,  <34.134308, 32.050198, 21.390118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254566, 32.153660, 21.570210>,  <34.454998, 32.326096, 21.870363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254566, 32.153660, 21.570210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127361, 0.820921, -0.556658,
		0.855977, -0.374501, -0.356443,
		-0.501081, -0.431090, -0.750386,
		34.104240, 32.024334, 21.345095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772789, 32.655273, 21.239317>,  <34.454998, 32.326096, 21.870363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772789, 32.655273, 21.239317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444294, 32.473911, 21.100760>,  <34.247196, 32.365093, 21.017626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444294, 32.473911, 21.100760>,  <34.772789, 32.655273, 21.239317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444294, 32.473911, 21.100760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090304, 0.702717, -0.705715,
		0.563391, -0.548281, -0.618044,
		-0.821240, -0.453405, -0.346392,
		34.197922, 32.337891, 20.996841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931103, 32.402409, 20.606392>,  <34.772789, 32.655273, 21.239317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931103, 32.402409, 20.606392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533966, 32.450085, 20.609545>,  <34.295685, 32.478691, 20.611437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533966, 32.450085, 20.609545>,  <34.931103, 32.402409, 20.606392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533966, 32.450085, 20.609545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084212, 0.745254, -0.661442,
		-0.084711, -0.656042, -0.749956,
		-0.992841, 0.119187, 0.007885,
		34.236115, 32.485840, 20.611910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664467, 32.390579, 19.878290>,  <34.931103, 32.402409, 20.606392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664467, 32.390579, 19.878290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366493, 32.570538, 20.075336>,  <34.187710, 32.678513, 20.193565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366493, 32.570538, 20.075336>,  <34.664467, 32.390579, 19.878290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366493, 32.570538, 20.075336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093699, 0.660525, -0.744935,
		-0.660529, -0.601082, -0.449890,
		-0.744930, 0.449897, 0.492616,
		34.143013, 32.705505, 20.223122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270435, 32.403839, 19.333900>,  <34.664467, 32.390579, 19.878290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270435, 32.403839, 19.333900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150665, 32.669849, 19.607567>,  <34.078804, 32.829456, 19.771767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150665, 32.669849, 19.607567>,  <34.270435, 32.403839, 19.333900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150665, 32.669849, 19.607567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064493, 0.701316, -0.709927,
		-0.951937, -0.256696, -0.167103,
		-0.299428, 0.665028, 0.684164,
		34.060837, 32.869358, 19.812817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592278, 32.771538, 19.186329>,  <34.270435, 32.403839, 19.333900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592278, 32.771538, 19.186329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808285, 33.029911, 19.402163>,  <33.937889, 33.184933, 19.531664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808285, 33.029911, 19.402163>,  <33.592278, 32.771538, 19.186329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.808285, 33.029911, 19.402163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125206, 0.695623, -0.707413,
		-0.832287, 0.314458, 0.456525,
		0.540021, 0.645930, 0.539586,
		33.970291, 33.223690, 19.564037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079456, 33.312035, 19.423422>,  <33.592278, 32.771538, 19.186329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079456, 33.312035, 19.423422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.463928, 33.416779, 19.388643>,  <33.694611, 33.479626, 19.367777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.463928, 33.416779, 19.388643>,  <33.079456, 33.312035, 19.423422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.463928, 33.416779, 19.388643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263756, 0.779488, -0.568182,
		-0.081010, 0.569058, 0.818297,
		0.961181, 0.261859, -0.086946,
		33.752281, 33.495335, 19.362560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244213, 34.029144, 19.670576>,  <33.079456, 33.312035, 19.423422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244213, 34.029144, 19.670576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443016, 33.935020, 19.336483>,  <33.562298, 33.878548, 19.136028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443016, 33.935020, 19.336483>,  <33.244213, 34.029144, 19.670576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443016, 33.935020, 19.336483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324960, 0.842017, -0.430590,
		0.804601, 0.485424, 0.342024,
		0.497009, -0.235309, -0.835231,
		33.592117, 33.864429, 19.085913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427773, 34.779987, 19.520695>,  <33.244213, 34.029144, 19.670576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427773, 34.779987, 19.520695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398209, 34.543945, 19.199120>,  <33.380470, 34.402321, 19.006174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398209, 34.543945, 19.199120>,  <33.427773, 34.779987, 19.520695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398209, 34.543945, 19.199120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432502, 0.745351, -0.507340,
		0.898599, 0.310209, -0.310307,
		-0.073906, -0.590103, -0.803938,
		33.376038, 34.366913, 18.957937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200478, 34.448448, 19.608732>,  <33.427773, 34.779987, 19.520695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200478, 34.448448, 19.608732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280506, 34.829765, 19.699249>,  <34.328522, 35.058556, 19.753559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280506, 34.829765, 19.699249>,  <34.200478, 34.448448, 19.608732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280506, 34.829765, 19.699249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395447, 0.132750, -0.908845,
		-0.896434, 0.271322, -0.350416,
		0.200072, 0.953290, 0.226295,
		34.340527, 35.115753, 19.767138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994797, 34.766449, 18.984230>,  <34.200478, 34.448448, 19.608732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994797, 34.766449, 18.984230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.184628, 35.063091, 19.173883>,  <34.298527, 35.241077, 19.287676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.184628, 35.063091, 19.173883>,  <33.994797, 34.766449, 18.984230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184628, 35.063091, 19.173883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326520, 0.351900, -0.877241,
		-0.817413, 0.571130, -0.075147,
		0.474574, 0.741605, 0.474133,
		34.327000, 35.285572, 19.316124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920959, 35.386292, 18.563623>,  <33.994797, 34.766449, 18.984230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920959, 35.386292, 18.563623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254585, 35.410019, 18.783009>,  <34.454762, 35.424255, 18.914640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254585, 35.410019, 18.783009>,  <33.920959, 35.386292, 18.563623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254585, 35.410019, 18.783009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445191, 0.514757, -0.732687,
		-0.325787, 0.855281, 0.402935,
		0.834067, 0.059317, 0.548465,
		34.504807, 35.427814, 18.947548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127388, 36.074303, 18.793810>,  <33.920959, 35.386292, 18.563623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127388, 36.074303, 18.793810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431763, 35.821266, 18.736116>,  <34.614388, 35.669445, 18.701500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431763, 35.821266, 18.736116>,  <34.127388, 36.074303, 18.793810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431763, 35.821266, 18.736116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441754, 0.667933, -0.598931,
		0.475218, 0.392033, 0.787704,
		0.760935, -0.632594, -0.144232,
		34.660042, 35.631489, 18.692846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837250, 36.330841, 19.114878>,  <34.127388, 36.074303, 18.793810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837250, 36.330841, 19.114878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.910545, 36.056202, 18.833450>,  <34.954525, 35.891418, 18.664595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.910545, 36.056202, 18.833450>,  <34.837250, 36.330841, 19.114878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910545, 36.056202, 18.833450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537574, 0.669187, -0.513033,
		0.823065, -0.284210, 0.491720,
		0.183243, -0.686596, -0.703568,
		34.965519, 35.850224, 18.622379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985699, 36.276623, 19.834553>,  <34.837250, 36.330841, 19.114878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985699, 36.276623, 19.834553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793510, 35.965603, 19.672285>,  <34.678196, 35.778992, 19.574924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793510, 35.965603, 19.672285>,  <34.985699, 36.276623, 19.834553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793510, 35.965603, 19.672285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382805, -0.230234, 0.894680,
		-0.789054, 0.585162, -0.187028,
		-0.480473, -0.777546, -0.405670,
		34.649368, 35.732338, 19.550585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433071, 36.374817, 20.120478>,  <34.985699, 36.276623, 19.834553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433071, 36.374817, 20.120478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431591, 35.996452, 19.990719>,  <34.430702, 35.769432, 19.912865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431591, 35.996452, 19.990719>,  <34.433071, 36.374817, 20.120478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431591, 35.996452, 19.990719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469363, -0.284800, 0.835815,
		-0.882998, 0.155354, -0.442923,
		-0.003703, -0.945915, -0.324395,
		34.430481, 35.712677, 19.893400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672440, 36.213066, 20.254919>,  <34.433071, 36.374817, 20.120478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672440, 36.213066, 20.254919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940216, 35.916061, 20.245790>,  <34.100883, 35.737858, 20.240314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940216, 35.916061, 20.245790>,  <33.672440, 36.213066, 20.254919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940216, 35.916061, 20.245790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298928, -0.297378, 0.906757,
		-0.680067, -0.600198, -0.421036,
		0.669441, -0.742515, -0.022821,
		34.141048, 35.693306, 20.238945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331711, 35.755653, 20.671700>,  <33.672440, 36.213066, 20.254919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331711, 35.755653, 20.671700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700432, 35.600853, 20.662668>,  <33.921665, 35.507973, 20.657249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700432, 35.600853, 20.662668>,  <33.331711, 35.755653, 20.671700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700432, 35.600853, 20.662668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092912, -0.277104, 0.956337,
		-0.376364, -0.879455, -0.291392,
		0.921801, -0.387005, -0.022580,
		33.976971, 35.484753, 20.655893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162598, 35.287971, 21.130459>,  <33.331711, 35.755653, 20.671700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162598, 35.287971, 21.130459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562458, 35.280487, 21.122995>,  <33.802376, 35.275997, 21.118517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562458, 35.280487, 21.122995>,  <33.162598, 35.287971, 21.130459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562458, 35.280487, 21.122995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014231, -0.213629, 0.976811,
		-0.022266, -0.976735, -0.213289,
		0.999651, -0.018714, -0.018656,
		33.862354, 35.274872, 21.117399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385101, 34.684048, 21.478275>,  <33.162598, 35.287971, 21.130459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385101, 34.684048, 21.478275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.723824, 34.896809, 21.476971>,  <33.927055, 35.024464, 21.476189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.723824, 34.896809, 21.476971>,  <33.385101, 34.684048, 21.478275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723824, 34.896809, 21.476971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247280, -0.388236, 0.887765,
		0.470934, -0.752567, -0.460286,
		0.846802, 0.531898, -0.003261,
		33.977863, 35.056377, 21.475992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891670, 34.218987, 21.688143>,  <33.385101, 34.684048, 21.478275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891670, 34.218987, 21.688143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005852, 34.596878, 21.752642>,  <34.074360, 34.823612, 21.791340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005852, 34.596878, 21.752642>,  <33.891670, 34.218987, 21.688143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005852, 34.596878, 21.752642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171395, -0.215856, 0.961265,
		0.942942, -0.246760, -0.223539,
		0.285454, 0.944730, 0.161246,
		34.091488, 34.880299, 21.801016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488304, 34.235031, 22.103840>,  <33.891670, 34.218987, 21.688143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488304, 34.235031, 22.103840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362282, 34.605858, 22.185110>,  <34.286667, 34.828354, 22.233873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362282, 34.605858, 22.185110>,  <34.488304, 34.235031, 22.103840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362282, 34.605858, 22.185110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268384, -0.118314, 0.956019,
		0.910335, 0.355729, -0.211535,
		-0.315056, 0.927070, 0.203178,
		34.267765, 34.883980, 22.246063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051414, 34.578583, 22.469854>,  <34.488304, 34.235031, 22.103840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051414, 34.578583, 22.469854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695770, 34.741871, 22.552647>,  <34.482384, 34.839844, 22.602322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695770, 34.741871, 22.552647>,  <35.051414, 34.578583, 22.469854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695770, 34.741871, 22.552647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214811, -0.027140, 0.976278,
		0.404153, 0.912480, -0.063560,
		-0.889110, 0.408219, 0.206979,
		34.429039, 34.864338, 22.614740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227177, 34.880013, 23.066692>,  <35.051414, 34.578583, 22.469854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227177, 34.880013, 23.066692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828457, 34.911392, 23.072805>,  <34.589226, 34.930222, 23.076473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828457, 34.911392, 23.072805>,  <35.227177, 34.880013, 23.066692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828457, 34.911392, 23.072805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010792, -0.057337, 0.998297,
		0.079193, 0.995268, 0.056307,
		-0.996801, 0.078450, 0.015282,
		34.529415, 34.934929, 23.077391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098145, 35.329514, 23.676027>,  <35.227177, 34.880013, 23.066692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098145, 35.329514, 23.676027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761551, 35.126762, 23.601221>,  <34.559593, 35.005112, 23.556337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761551, 35.126762, 23.601221>,  <35.098145, 35.329514, 23.676027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761551, 35.126762, 23.601221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055362, -0.263431, 0.963088,
		-0.537434, 0.820779, 0.193612,
		-0.841487, -0.506878, -0.187017,
		34.509106, 34.974701, 23.545116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691624, 35.551842, 24.205175>,  <35.098145, 35.329514, 23.676027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691624, 35.551842, 24.205175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489830, 35.221127, 24.105650>,  <34.368752, 35.022697, 24.045935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489830, 35.221127, 24.105650>,  <34.691624, 35.551842, 24.205175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489830, 35.221127, 24.105650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047052, -0.261417, 0.964079,
		-0.862136, 0.498073, 0.092979,
		-0.504488, -0.826792, -0.248812,
		34.338482, 34.973087, 24.031006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069092, 35.461983, 24.633268>,  <34.691624, 35.551842, 24.205175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069092, 35.461983, 24.633268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181877, 35.100208, 24.505215>,  <34.249550, 34.883144, 24.428383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181877, 35.100208, 24.505215>,  <34.069092, 35.461983, 24.633268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181877, 35.100208, 24.505215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068351, -0.351761, 0.933591,
		-0.956987, -0.241357, -0.161004,
		0.281964, -0.904439, -0.320134,
		34.266468, 34.828876, 24.409174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583694, 34.985134, 24.945225>,  <34.069092, 35.461983, 24.633268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583694, 34.985134, 24.945225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891182, 34.749763, 24.844963>,  <34.075676, 34.608540, 24.784807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891182, 34.749763, 24.844963>,  <33.583694, 34.985134, 24.945225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891182, 34.749763, 24.844963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179057, -0.574220, 0.798880,
		-0.614014, -0.569231, -0.546774,
		0.768717, -0.588428, -0.250655,
		34.121799, 34.573235, 24.769768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401539, 34.248081, 24.982267>,  <33.583694, 34.985134, 24.945225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401539, 34.248081, 24.982267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798668, 34.243984, 25.029922>,  <34.036945, 34.241524, 25.058516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798668, 34.243984, 25.029922>,  <33.401539, 34.248081, 24.982267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798668, 34.243984, 25.029922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104509, -0.558499, 0.822895,
		0.058106, -0.829442, -0.555562,
		0.992825, -0.010246, 0.119136,
		34.096516, 34.240910, 25.065662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437267, 33.567711, 25.076536>,  <33.401539, 34.248081, 24.982267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437267, 33.567711, 25.076536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787357, 33.725086, 25.189093>,  <33.997414, 33.819511, 25.256626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787357, 33.725086, 25.189093>,  <33.437267, 33.567711, 25.076536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787357, 33.725086, 25.189093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044837, -0.645219, 0.762681,
		0.481629, -0.654903, -0.582354,
		0.875227, 0.393440, 0.281392,
		34.049927, 33.843117, 25.273510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946854, 33.021008, 25.185411>,  <33.437267, 33.567711, 25.076536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946854, 33.021008, 25.185411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106964, 33.319504, 25.398169>,  <34.203030, 33.498600, 25.525824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106964, 33.319504, 25.398169>,  <33.946854, 33.021008, 25.185411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106964, 33.319504, 25.398169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250755, -0.647457, 0.719667,
		0.881420, -0.154691, -0.446284,
		0.400276, 0.746237, 0.531893,
		34.227047, 33.543373, 25.557735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591545, 32.762768, 25.360010>,  <33.946854, 33.021008, 25.185411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591545, 32.762768, 25.360010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487110, 33.062424, 25.603525>,  <34.424450, 33.242218, 25.749634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487110, 33.062424, 25.603525>,  <34.591545, 32.762768, 25.360010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487110, 33.062424, 25.603525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275558, -0.546579, 0.790771,
		0.925149, 0.374218, -0.063725,
		-0.261090, 0.749141, 0.608785,
		34.408783, 33.287167, 25.786161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177372, 32.741379, 25.813681>,  <34.591545, 32.762768, 25.360010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177372, 32.741379, 25.813681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903416, 32.945293, 26.021931>,  <34.739044, 33.067642, 26.146881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903416, 32.945293, 26.021931>,  <35.177372, 32.741379, 25.813681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903416, 32.945293, 26.021931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256958, -0.499623, 0.827254,
		0.681836, 0.700355, 0.211194,
		-0.684888, 0.509784, 0.520623,
		34.697948, 33.098228, 26.178118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431530, 32.713959, 26.518185>,  <35.177372, 32.741379, 25.813681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431530, 32.713959, 26.518185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049889, 32.819786, 26.574324>,  <34.820904, 32.883282, 26.608007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049889, 32.819786, 26.574324>,  <35.431530, 32.713959, 26.518185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049889, 32.819786, 26.574324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008566, -0.444322, 0.895826,
		0.299366, 0.855910, 0.421661,
		-0.954100, 0.264568, 0.140346,
		34.763660, 32.899155, 26.616428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362968, 33.161293, 27.163012>,  <35.431530, 32.713959, 26.518185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362968, 33.161293, 27.163012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030792, 32.951805, 27.087025>,  <34.831486, 32.826111, 27.041433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030792, 32.951805, 27.087025>,  <35.362968, 33.161293, 27.163012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030792, 32.951805, 27.087025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004365, -0.334859, 0.942258,
		-0.557094, 0.783316, 0.275794,
		-0.830438, -0.523723, -0.189968,
		34.781662, 32.794689, 27.030035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961697, 33.160568, 27.804731>,  <35.362968, 33.161293, 27.163012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961697, 33.160568, 27.804731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778374, 32.876446, 27.591036>,  <34.668381, 32.705971, 27.462818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778374, 32.876446, 27.591036>,  <34.961697, 33.160568, 27.804731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778374, 32.876446, 27.591036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089199, -0.561292, 0.822797,
		-0.884304, 0.424751, 0.193888,
		-0.458312, -0.710309, -0.534240,
		34.640881, 32.663353, 27.430763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544559, 32.853333, 28.339596>,  <34.961697, 33.160568, 27.804731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544559, 32.853333, 28.339596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500755, 32.603745, 28.030100>,  <34.474472, 32.453991, 27.844402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500755, 32.603745, 28.030100>,  <34.544559, 32.853333, 28.339596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500755, 32.603745, 28.030100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311882, -0.717541, 0.622788,
		-0.943789, 0.309517, -0.116027,
		-0.109509, -0.623967, -0.773740,
		34.467903, 32.416553, 27.797977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913372, 32.562515, 28.399450>,  <34.544559, 32.853333, 28.339596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913372, 32.562515, 28.399450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157791, 32.308483, 28.210436>,  <34.304443, 32.156063, 28.097027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157791, 32.308483, 28.210436>,  <33.913372, 32.562515, 28.399450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157791, 32.308483, 28.210436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093344, -0.650589, 0.753672,
		-0.786068, -0.416424, -0.456824,
		0.611052, -0.635079, -0.472536,
		34.341106, 32.117958, 28.068676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534546, 32.010674, 28.430553>,  <33.913372, 32.562515, 28.399450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534546, 32.010674, 28.430553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.900059, 31.860302, 28.369009>,  <34.119366, 31.770079, 28.332083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.900059, 31.860302, 28.369009>,  <33.534546, 32.010674, 28.430553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900059, 31.860302, 28.369009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115600, -0.603802, 0.788708,
		-0.389398, -0.702924, -0.595203,
		0.913787, -0.375928, -0.153861,
		34.174194, 31.747524, 28.322851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482506, 31.370018, 28.450357>,  <33.534546, 32.010674, 28.430553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482506, 31.370018, 28.450357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870304, 31.417152, 28.536327>,  <34.102982, 31.445433, 28.587910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870304, 31.417152, 28.536327>,  <33.482506, 31.370018, 28.450357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870304, 31.417152, 28.536327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126121, -0.512044, 0.849650,
		0.210169, -0.850839, -0.481563,
		0.969496, 0.117835, 0.214924,
		34.161152, 31.452503, 28.600805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743069, 30.601948, 28.626640>,  <33.482506, 31.370018, 28.450357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743069, 30.601948, 28.626640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999897, 30.865730, 28.783031>,  <34.153996, 31.024000, 28.876867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999897, 30.865730, 28.783031>,  <33.743069, 30.601948, 28.626640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999897, 30.865730, 28.783031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219259, -0.330729, 0.917902,
		0.734624, -0.675083, -0.067760,
		0.642070, 0.659455, 0.390979,
		34.192516, 31.063566, 28.900326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012608, 30.293108, 29.218830>,  <33.743069, 30.601948, 28.626640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012608, 30.293108, 29.218830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133022, 30.664515, 29.305759>,  <34.205273, 30.887360, 29.357918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133022, 30.664515, 29.305759>,  <34.012608, 30.293108, 29.218830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133022, 30.664515, 29.305759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129957, -0.185823, 0.973951,
		0.944715, -0.321441, 0.064727,
		0.301040, 0.928518, 0.217323,
		34.223335, 30.943069, 29.370956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541767, 30.240080, 29.770269>,  <34.012608, 30.293108, 29.218830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541767, 30.240080, 29.770269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372227, 30.602274, 29.778719>,  <34.270500, 30.819590, 29.783789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372227, 30.602274, 29.778719>,  <34.541767, 30.240080, 29.770269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372227, 30.602274, 29.778719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152005, -0.094105, 0.983890,
		0.892884, 0.413816, 0.177525,
		-0.423855, 0.905484, 0.021123,
		34.245071, 30.873919, 29.785055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859608, 30.454077, 30.398830>,  <34.541767, 30.240080, 29.770269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859608, 30.454077, 30.398830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554054, 30.704826, 30.337500>,  <34.370720, 30.855276, 30.300701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554054, 30.704826, 30.337500>,  <34.859608, 30.454077, 30.398830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554054, 30.704826, 30.337500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047183, 0.182699, 0.982036,
		0.643624, 0.757398, -0.109983,
		-0.763886, 0.626873, -0.153326,
		34.324890, 30.892889, 30.291502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020687, 31.067602, 30.782232>,  <34.859608, 30.454077, 30.398830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020687, 31.067602, 30.782232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625854, 31.085115, 30.720577>,  <34.388954, 31.095623, 30.683584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625854, 31.085115, 30.720577>,  <35.020687, 31.067602, 30.782232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625854, 31.085115, 30.720577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131133, 0.332058, 0.934099,
		0.092081, 0.942242, -0.322026,
		-0.987079, 0.043785, -0.154135,
		34.329731, 31.098251, 30.674337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775337, 31.731438, 31.077847>,  <35.020687, 31.067602, 30.782232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775337, 31.731438, 31.077847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460629, 31.488363, 31.034559>,  <34.271805, 31.342518, 31.008587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460629, 31.488363, 31.034559>,  <34.775337, 31.731438, 31.077847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460629, 31.488363, 31.034559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298490, 0.221111, 0.928447,
		-0.540278, 0.762775, -0.355352,
		-0.786768, -0.607688, -0.108219,
		34.224598, 31.306057, 31.002094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265068, 32.064243, 31.513641>,  <34.775337, 31.731438, 31.077847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265068, 32.064243, 31.513641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115536, 31.696451, 31.464970>,  <34.025814, 31.475777, 31.435766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115536, 31.696451, 31.464970>,  <34.265068, 32.064243, 31.513641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115536, 31.696451, 31.464970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220679, -0.039248, 0.974557,
		-0.900860, 0.391174, -0.188238,
		-0.373833, -0.919479, -0.121681,
		34.003387, 31.420607, 31.428465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638138, 32.004162, 31.911961>,  <34.265068, 32.064243, 31.513641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638138, 32.004162, 31.911961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768429, 31.629122, 31.863279>,  <33.846603, 31.404099, 31.834070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768429, 31.629122, 31.863279>,  <33.638138, 32.004162, 31.911961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768429, 31.629122, 31.863279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205889, -0.195975, 0.958751,
		-0.922773, -0.287237, -0.256875,
		0.325730, -0.937597, -0.121701,
		33.866146, 31.347843, 31.826769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202305, 31.576084, 32.359802>,  <33.638138, 32.004162, 31.911961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202305, 31.576084, 32.359802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544792, 31.378479, 32.299351>,  <33.750286, 31.259916, 32.263081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544792, 31.378479, 32.299351>,  <33.202305, 31.576084, 32.359802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544792, 31.378479, 32.299351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022612, -0.256416, 0.966302,
		-0.516118, -0.830783, -0.208378,
		0.856219, -0.494014, -0.151127,
		33.801659, 31.230274, 32.254013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100887, 31.112598, 32.818401>,  <33.202305, 31.576084, 32.359802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100887, 31.112598, 32.818401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488842, 31.094671, 32.722645>,  <33.721615, 31.083916, 32.665192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488842, 31.094671, 32.722645>,  <33.100887, 31.112598, 32.818401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488842, 31.094671, 32.722645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218242, -0.276399, 0.935935,
		-0.108115, -0.959998, -0.258295,
		0.969887, -0.044818, -0.239395,
		33.779808, 31.081226, 32.650826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258396, 30.458242, 33.099018>,  <33.100887, 31.112598, 32.818401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258396, 30.458242, 33.099018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600506, 30.662146, 33.061821>,  <33.805771, 30.784487, 33.039505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600506, 30.662146, 33.061821>,  <33.258396, 30.458242, 33.099018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600506, 30.662146, 33.061821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346503, -0.429214, 0.834093,
		0.385271, -0.745603, -0.543730,
		0.855279, 0.509756, -0.092990,
		33.857090, 30.815073, 33.033924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748482, 29.990908, 33.292618>,  <33.258396, 30.458242, 33.099018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748482, 29.990908, 33.292618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942070, 30.336899, 33.345661>,  <34.058224, 30.544493, 33.377487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942070, 30.336899, 33.345661>,  <33.748482, 29.990908, 33.292618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942070, 30.336899, 33.345661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391035, -0.349338, 0.851501,
		0.782854, -0.360249, -0.507306,
		0.483974, 0.864976, 0.132610,
		34.087261, 30.596392, 33.385445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485683, 29.915766, 33.655285>,  <33.748482, 29.990908, 33.292618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485683, 29.915766, 33.655285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392735, 30.299913, 33.716862>,  <34.336964, 30.530401, 33.753807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392735, 30.299913, 33.716862>,  <34.485683, 29.915766, 33.655285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.392735, 30.299913, 33.716862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303678, -0.078719, 0.949517,
		0.924003, 0.267391, -0.273350,
		-0.232374, 0.960368, 0.153938,
		34.323021, 30.588024, 33.763042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166264, 30.352999, 33.921768>,  <34.485683, 29.915766, 33.655285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166264, 30.352999, 33.921768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827393, 30.527431, 34.043179>,  <34.624069, 30.632092, 34.116024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827393, 30.527431, 34.043179>,  <35.166264, 30.352999, 33.921768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827393, 30.527431, 34.043179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243474, -0.189136, 0.951287,
		0.472246, 0.879807, 0.054057,
		-0.847174, 0.436081, 0.303529,
		34.573242, 30.658257, 34.134239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395317, 30.704336, 34.492126>,  <35.166264, 30.352999, 33.921768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395317, 30.704336, 34.492126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996933, 30.677860, 34.516384>,  <34.757900, 30.661974, 34.530937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996933, 30.677860, 34.516384>,  <35.395317, 30.704336, 34.492126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996933, 30.677860, 34.516384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071733, -0.180674, 0.980924,
		-0.053973, 0.981313, 0.184693,
		-0.995962, -0.066192, 0.060641,
		34.698143, 30.658003, 34.534576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174587, 30.773073, 34.604946>,  <35.395317, 30.704336, 34.492126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174587, 30.773073, 34.604946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444138, 31.059523, 34.677681>,  <36.605865, 31.231392, 34.721321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444138, 31.059523, 34.677681>,  <36.174587, 30.773073, 34.604946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444138, 31.059523, 34.677681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183244, 0.400411, -0.897827,
		-0.715764, 0.571699, 0.401051,
		0.673872, 0.716122, 0.181840,
		36.646297, 31.274359, 34.732231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902851, 31.563274, 34.411545>,  <36.174587, 30.773073, 34.604946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902851, 31.563274, 34.411545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.290844, 31.643427, 34.466667>,  <36.523640, 31.691519, 34.499741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.290844, 31.643427, 34.466667>,  <35.902851, 31.563274, 34.411545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290844, 31.643427, 34.466667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002641, 0.557939, -0.829878,
		-0.243179, 0.805327, 0.540659,
		0.969978, 0.200381, 0.137806,
		36.581837, 31.703541, 34.508007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974400, 32.285065, 34.254654>,  <35.902851, 31.563274, 34.411545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974400, 32.285065, 34.254654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330753, 32.111584, 34.200657>,  <36.544567, 32.007496, 34.168259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330753, 32.111584, 34.200657>,  <35.974400, 32.285065, 34.254654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330753, 32.111584, 34.200657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115998, 0.504563, -0.855547,
		0.439163, 0.746538, 0.499818,
		0.890888, -0.433702, -0.134988,
		36.598019, 31.981474, 34.160160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407383, 32.857430, 34.059238>,  <35.974400, 32.285065, 34.254654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407383, 32.857430, 34.059238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564003, 32.516537, 33.920448>,  <36.657974, 32.312000, 33.837173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564003, 32.516537, 33.920448>,  <36.407383, 32.857430, 34.059238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564003, 32.516537, 33.920448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046805, 0.395045, -0.917469,
		0.918967, 0.342991, 0.194567,
		0.391546, -0.852231, -0.346980,
		36.681465, 32.260868, 33.816353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885262, 33.049358, 33.572208>,  <36.407383, 32.857430, 34.059238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885262, 33.049358, 33.572208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824562, 32.674923, 33.445274>,  <36.788143, 32.450260, 33.369114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824562, 32.674923, 33.445274>,  <36.885262, 33.049358, 33.572208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824562, 32.674923, 33.445274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042405, 0.314595, -0.948278,
		0.987508, -0.157360, -0.008046,
		-0.151752, -0.936092, -0.317338,
		36.779037, 32.394096, 33.350071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390942, 32.883881, 33.007801>,  <36.885262, 33.049358, 33.572208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390942, 32.883881, 33.007801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058708, 32.666912, 32.957352>,  <36.859367, 32.536732, 32.927082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058708, 32.666912, 32.957352>,  <37.390942, 32.883881, 33.007801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058708, 32.666912, 32.957352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020296, 0.255806, -0.966515,
		0.556521, -0.800214, -0.223478,
		-0.830586, -0.542421, -0.126121,
		36.809532, 32.504185, 32.919514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476944, 32.485477, 32.390026>,  <37.390942, 32.883881, 33.007801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476944, 32.485477, 32.390026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083557, 32.457233, 32.456726>,  <36.847523, 32.440289, 32.496746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083557, 32.457233, 32.456726>,  <37.476944, 32.485477, 32.390026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083557, 32.457233, 32.456726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167114, -0.000693, -0.985937,
		0.069730, -0.997504, -0.011118,
		-0.983469, -0.070608, 0.166745,
		36.788517, 32.436050, 32.506748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307629, 31.996170, 31.855021>,  <37.476944, 32.485477, 32.390026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307629, 31.996170, 31.855021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999683, 32.209885, 31.994654>,  <36.814919, 32.338112, 32.078434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999683, 32.209885, 31.994654>,  <37.307629, 31.996170, 31.855021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999683, 32.209885, 31.994654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304585, 0.173078, -0.936628,
		-0.560844, -0.827396, 0.029490,
		-0.769858, 0.534285, 0.349082,
		36.768726, 32.370171, 32.099377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786945, 31.789875, 31.425297>,  <37.307629, 31.996170, 31.855021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786945, 31.789875, 31.425297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671692, 32.128452, 31.604414>,  <36.602539, 32.331596, 31.711884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671692, 32.128452, 31.604414>,  <36.786945, 31.789875, 31.425297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671692, 32.128452, 31.604414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197678, 0.404974, -0.892703,
		-0.936965, -0.345736, 0.050637,
		-0.288133, 0.846441, 0.447791,
		36.585251, 32.382385, 31.738750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268612, 32.060215, 30.998287>,  <36.786945, 31.789875, 31.425297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268612, 32.060215, 30.998287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381096, 32.368992, 31.226328>,  <36.448586, 32.554260, 31.363153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381096, 32.368992, 31.226328>,  <36.268612, 32.060215, 30.998287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381096, 32.368992, 31.226328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099066, 0.567550, -0.817357,
		-0.954518, 0.286330, 0.083129,
		0.281214, 0.771947, 0.570103,
		36.465462, 32.600574, 31.397358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889404, 32.708229, 30.834322>,  <36.268612, 32.060215, 30.998287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889404, 32.708229, 30.834322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217873, 32.865963, 30.999332>,  <36.414955, 32.960606, 31.098339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217873, 32.865963, 30.999332>,  <35.889404, 32.708229, 30.834322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217873, 32.865963, 30.999332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117557, 0.590475, -0.798448,
		-0.558445, 0.704157, 0.438524,
		0.821170, 0.394338, 0.412526,
		36.464222, 32.984264, 31.123091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879047, 33.436722, 30.623098>,  <35.889404, 32.708229, 30.834322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879047, 33.436722, 30.623098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261234, 33.361401, 30.713987>,  <36.490547, 33.316208, 30.768520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261234, 33.361401, 30.713987>,  <35.879047, 33.436722, 30.623098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261234, 33.361401, 30.713987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283931, 0.376662, -0.881765,
		0.080455, 0.907010, 0.413353,
		0.955463, -0.188306, 0.227224,
		36.547874, 33.304909, 30.782154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246647, 34.148857, 30.628265>,  <35.879047, 33.436722, 30.623098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246647, 34.148857, 30.628265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.528484, 33.868649, 30.582964>,  <36.697586, 33.700523, 30.555782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.528484, 33.868649, 30.582964>,  <36.246647, 34.148857, 30.628265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528484, 33.868649, 30.582964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371884, 0.500446, -0.781828,
		0.604361, 0.508753, 0.613122,
		0.704592, -0.700517, -0.113253,
		36.739861, 33.658493, 30.548988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848980, 34.492348, 30.576466>,  <36.246647, 34.148857, 30.628265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848980, 34.492348, 30.576466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887089, 34.136917, 30.396975>,  <36.909954, 33.923660, 30.289280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887089, 34.136917, 30.396975>,  <36.848980, 34.492348, 30.576466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887089, 34.136917, 30.396975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222651, 0.458381, -0.860415,
		0.970232, -0.017934, 0.241514,
		0.095274, -0.888575, -0.448729,
		36.915672, 33.870346, 30.262356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388248, 34.626133, 30.139469>,  <36.848980, 34.492348, 30.576466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388248, 34.626133, 30.139469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251179, 34.281017, 29.990786>,  <37.168938, 34.073948, 29.901575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251179, 34.281017, 29.990786>,  <37.388248, 34.626133, 30.139469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251179, 34.281017, 29.990786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183397, 0.326618, -0.927193,
		0.921380, -0.385895, 0.046309,
		-0.342674, -0.862790, -0.371711,
		37.148376, 34.022179, 29.879272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971611, 34.480186, 29.554522>,  <37.388248, 34.626133, 30.139469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971611, 34.480186, 29.554522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.633015, 34.274315, 29.500025>,  <37.429859, 34.150791, 29.467327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.633015, 34.274315, 29.500025>,  <37.971611, 34.480186, 29.554522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633015, 34.274315, 29.500025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024097, 0.292675, -0.955908,
		0.531865, -0.805880, -0.260148,
		-0.846486, -0.514683, -0.136244,
		37.379070, 34.119911, 29.459152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048729, 33.998596, 29.056992>,  <37.971611, 34.480186, 29.554522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048729, 33.998596, 29.056992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651031, 34.041286, 29.060913>,  <37.412415, 34.066902, 29.063265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651031, 34.041286, 29.060913>,  <38.048729, 33.998596, 29.056992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651031, 34.041286, 29.060913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001885, 0.074030, -0.997254,
		-0.107159, -0.991528, -0.073403,
		-0.994240, 0.106727, 0.009802,
		37.352760, 34.073303, 29.063854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779301, 33.594547, 28.449139>,  <38.048729, 33.998596, 29.056992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779301, 33.594547, 28.449139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.478252, 33.838219, 28.549114>,  <37.297623, 33.984421, 28.609098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.478252, 33.838219, 28.549114>,  <37.779301, 33.594547, 28.449139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478252, 33.838219, 28.549114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194888, 0.156487, -0.968262,
		-0.628953, -0.777443, 0.000946,
		-0.752621, 0.609175, 0.249937,
		37.252468, 34.020969, 28.624096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204113, 33.238174, 28.229982>,  <37.779301, 33.594547, 28.449139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204113, 33.238174, 28.229982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.148849, 33.633877, 28.249083>,  <37.115692, 33.871300, 28.260542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.148849, 33.633877, 28.249083>,  <37.204113, 33.238174, 28.229982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148849, 33.633877, 28.249083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238870, 0.013506, -0.970958,
		-0.961173, -0.145550, 0.234439,
		-0.138156, 0.989259, 0.047749,
		37.107403, 33.930653, 28.263407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599953, 33.297085, 27.835716>,  <37.204113, 33.238174, 28.229982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599953, 33.297085, 27.835716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766190, 33.659885, 27.862907>,  <36.865932, 33.877567, 27.879223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766190, 33.659885, 27.862907>,  <36.599953, 33.297085, 27.835716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766190, 33.659885, 27.862907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186225, 0.158007, -0.969719,
		-0.890281, 0.390353, 0.234574,
		0.415597, 0.907005, 0.067977,
		36.890869, 33.931988, 27.883301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135902, 33.760891, 27.546268>,  <36.599953, 33.297085, 27.835716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135902, 33.760891, 27.546268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490654, 33.945370, 27.535322>,  <36.703503, 34.056057, 27.528753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490654, 33.945370, 27.535322>,  <36.135902, 33.760891, 27.546268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490654, 33.945370, 27.535322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230135, 0.389627, -0.891756,
		-0.400615, 0.797173, 0.451689,
		0.886874, 0.461200, -0.027367,
		36.756718, 34.083729, 27.527113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022724, 34.452702, 27.229975>,  <36.135902, 33.760891, 27.546268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022724, 34.452702, 27.229975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.413635, 34.389347, 27.173632>,  <36.648182, 34.351334, 27.139826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.413635, 34.389347, 27.173632>,  <36.022724, 34.452702, 27.229975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413635, 34.389347, 27.173632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068331, 0.393649, -0.916718,
		0.200646, 0.905513, 0.373882,
		0.977278, -0.158388, -0.140858,
		36.706818, 34.341831, 27.131374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284203, 35.072556, 26.855024>,  <36.022724, 34.452702, 27.229975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284203, 35.072556, 26.855024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538158, 34.767548, 26.805275>,  <36.690533, 34.584541, 26.775425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538158, 34.767548, 26.805275>,  <36.284203, 35.072556, 26.855024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538158, 34.767548, 26.805275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113974, 0.251654, -0.961083,
		0.764148, 0.596009, 0.246681,
		0.634892, -0.762525, -0.124371,
		36.728626, 34.538792, 26.767963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949059, 35.371677, 26.556170>,  <36.284203, 35.072556, 26.855024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949059, 35.371677, 26.556170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914116, 34.978374, 26.492191>,  <36.893150, 34.742393, 26.453804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914116, 34.978374, 26.492191>,  <36.949059, 35.371677, 26.556170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914116, 34.978374, 26.492191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272540, 0.130845, -0.953206,
		0.958170, -0.126860, 0.256546,
		-0.087356, -0.983253, -0.159947,
		36.887909, 34.683399, 26.444208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491707, 35.215233, 26.135521>,  <36.949059, 35.371677, 26.556170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491707, 35.215233, 26.135521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260975, 34.892399, 26.085100>,  <37.122536, 34.698700, 26.054848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260975, 34.892399, 26.085100>,  <37.491707, 35.215233, 26.135521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260975, 34.892399, 26.085100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247184, -0.025379, -0.968636,
		0.778569, -0.589895, 0.214137,
		-0.576829, -0.807081, -0.126053,
		37.087925, 34.650276, 26.047285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838985, 34.814846, 25.619167>,  <37.491707, 35.215233, 26.135521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838985, 34.814846, 25.619167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.476215, 34.648228, 25.644411>,  <37.258553, 34.548256, 25.659557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.476215, 34.648228, 25.644411>,  <37.838985, 34.814846, 25.619167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476215, 34.648228, 25.644411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012587, -0.176524, -0.984216,
		0.421108, -0.891814, 0.165337,
		-0.906923, -0.416542, 0.063110,
		37.204140, 34.523266, 25.663343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780918, 34.025017, 25.536535>,  <37.838985, 34.814846, 25.619167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780918, 34.025017, 25.536535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424026, 34.171211, 25.430439>,  <37.209892, 34.258926, 25.366781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424026, 34.171211, 25.430439>,  <37.780918, 34.025017, 25.536535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424026, 34.171211, 25.430439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133806, -0.347012, -0.928266,
		-0.431313, -0.863713, 0.260708,
		-0.892225, 0.365489, -0.265241,
		37.156361, 34.280857, 25.350866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644600, 33.639069, 24.968258>,  <37.780918, 34.025017, 25.536535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644600, 33.639069, 24.968258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379906, 33.938812, 24.958675>,  <37.221088, 34.118656, 24.952927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379906, 33.938812, 24.958675>,  <37.644600, 33.639069, 24.968258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379906, 33.938812, 24.958675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010209, -0.040957, -0.999109,
		-0.749669, -0.660900, 0.034753,
		-0.661735, 0.749355, -0.023957,
		37.181385, 34.163620, 24.951488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108154, 33.432869, 24.484316>,  <37.644600, 33.639069, 24.968258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108154, 33.432869, 24.484316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116425, 33.830627, 24.525787>,  <37.121387, 34.069283, 24.550671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116425, 33.830627, 24.525787>,  <37.108154, 33.432869, 24.484316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116425, 33.830627, 24.525787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117392, 0.100567, -0.987980,
		-0.992870, 0.032598, -0.114655,
		0.020676, 0.994396, 0.103676,
		37.122627, 34.128944, 24.556890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729591, 33.711254, 23.881107>,  <37.108154, 33.432869, 24.484316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729591, 33.711254, 23.881107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.916409, 34.045624, 23.996416>,  <37.028500, 34.246246, 24.065601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.916409, 34.045624, 23.996416>,  <36.729591, 33.711254, 23.881107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916409, 34.045624, 23.996416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076311, 0.286691, -0.954979,
		-0.880938, 0.468011, 0.070106,
		0.467039, 0.835927, 0.288271,
		37.056519, 34.296402, 24.082897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459839, 34.259205, 23.626909>,  <36.729591, 33.711254, 23.881107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459839, 34.259205, 23.626909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828629, 34.401421, 23.688299>,  <37.049904, 34.486752, 23.725134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828629, 34.401421, 23.688299>,  <36.459839, 34.259205, 23.626909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828629, 34.401421, 23.688299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099751, 0.164905, -0.981252,
		-0.374187, 0.919997, 0.116572,
		0.921973, 0.355544, 0.153476,
		37.105221, 34.508083, 23.734343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589970, 34.805397, 23.052231>,  <36.459839, 34.259205, 23.626909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589970, 34.805397, 23.052231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959496, 34.730129, 23.185587>,  <37.181213, 34.684967, 23.265600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959496, 34.730129, 23.185587>,  <36.589970, 34.805397, 23.052231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959496, 34.730129, 23.185587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351849, 0.074160, -0.933114,
		0.150864, 0.979332, 0.134720,
		0.923819, -0.188174, 0.333389,
		37.236641, 34.673676, 23.285604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823154, 35.322613, 22.781113>,  <36.589970, 34.805397, 23.052231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823154, 35.322613, 22.781113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094193, 35.039764, 22.861952>,  <37.256813, 34.870056, 22.910456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094193, 35.039764, 22.861952>,  <36.823154, 35.322613, 22.781113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094193, 35.039764, 22.861952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311813, 0.027352, -0.949750,
		0.666064, 0.706559, 0.239025,
		0.677592, -0.707126, 0.202096,
		37.297470, 34.827625, 22.922581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341812, 35.465904, 22.307632>,  <36.823154, 35.322613, 22.781113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341812, 35.465904, 22.307632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445408, 35.098289, 22.426493>,  <37.507565, 34.877720, 22.497808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445408, 35.098289, 22.426493>,  <37.341812, 35.465904, 22.307632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445408, 35.098289, 22.426493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448671, -0.157971, -0.879625,
		0.855347, 0.361138, 0.371431,
		0.258990, -0.919034, 0.297152,
		37.523106, 34.822578, 22.515638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972748, 35.440926, 22.077820>,  <37.341812, 35.465904, 22.307632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972748, 35.440926, 22.077820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864407, 35.065041, 22.161318>,  <37.799400, 34.839508, 22.211416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864407, 35.065041, 22.161318>,  <37.972748, 35.440926, 22.077820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864407, 35.065041, 22.161318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234942, -0.274827, -0.932348,
		0.933509, -0.203488, 0.295217,
		-0.270855, -0.939714, 0.208746,
		37.783150, 34.783127, 22.223942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527802, 35.037861, 21.899839>,  <37.972748, 35.440926, 22.077820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527802, 35.037861, 21.899839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.206657, 34.801071, 21.871592>,  <38.013969, 34.658997, 21.854643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.206657, 34.801071, 21.871592>,  <38.527802, 35.037861, 21.899839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206657, 34.801071, 21.871592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245061, -0.219718, -0.944282,
		0.543471, -0.775432, 0.321472,
		-0.802860, -0.591970, -0.070618,
		37.965801, 34.623482, 21.850407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715466, 34.374912, 21.663761>,  <38.527802, 35.037861, 21.899839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715466, 34.374912, 21.663761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323277, 34.367268, 21.585478>,  <38.087963, 34.362679, 21.538507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323277, 34.367268, 21.585478>,  <38.715466, 34.374912, 21.663761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323277, 34.367268, 21.585478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194875, -0.227535, -0.954071,
		-0.026294, -0.973583, 0.226817,
		-0.980476, -0.019115, -0.195710,
		38.029133, 34.361534, 21.526764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616737, 33.834263, 21.177441>,  <38.715466, 34.374912, 21.663761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616737, 33.834263, 21.177441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274490, 34.037182, 21.136330>,  <38.069141, 34.158936, 21.111662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274490, 34.037182, 21.136330>,  <38.616737, 33.834263, 21.177441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274490, 34.037182, 21.136330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036768, -0.257632, -0.965543,
		-0.516302, -0.822356, 0.239087,
		-0.855617, 0.507302, -0.102779,
		38.017803, 34.189373, 21.105495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679020, 33.159626, 20.935181>,  <38.616737, 33.834263, 21.177441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679020, 33.159626, 20.935181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020248, 32.962326, 20.867096>,  <39.224987, 32.843945, 20.826244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020248, 32.962326, 20.867096>,  <38.679020, 33.159626, 20.935181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020248, 32.962326, 20.867096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032226, -0.275776, 0.960682,
		-0.520801, -0.825013, -0.219361,
		0.853069, -0.493255, -0.170211,
		39.276169, 32.814350, 20.816032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617954, 32.458916, 21.224186>,  <38.679020, 33.159626, 20.935181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617954, 32.458916, 21.224186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010273, 32.535931, 21.236607>,  <39.245663, 32.582142, 21.244059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010273, 32.535931, 21.236607>,  <38.617954, 32.458916, 21.224186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010273, 32.535931, 21.236607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023498, -0.041388, 0.998867,
		0.193610, -0.980415, -0.036069,
		0.980797, 0.192543, 0.031051,
		39.304512, 32.593693, 21.245922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904850, 31.963957, 21.724346>,  <38.617954, 32.458916, 21.224186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904850, 31.963957, 21.724346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180477, 32.253796, 21.719641>,  <39.345856, 32.427700, 21.716818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180477, 32.253796, 21.719641>,  <38.904850, 31.963957, 21.724346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180477, 32.253796, 21.719641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125906, -0.103716, 0.986606,
		0.713673, -0.681322, -0.162699,
		0.689071, 0.724599, -0.011763,
		39.387199, 32.471176, 21.716112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363506, 31.758671, 22.115292>,  <38.904850, 31.963957, 21.724346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363506, 31.758671, 22.115292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471027, 32.143925, 22.119627>,  <39.535542, 32.375076, 22.122229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471027, 32.143925, 22.119627>,  <39.363506, 31.758671, 22.115292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471027, 32.143925, 22.119627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047066, 0.001894, 0.998890,
		0.962044, -0.269016, 0.045840,
		0.268804, 0.963134, 0.010839,
		39.551670, 32.432865, 22.122879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901180, 31.781248, 22.531433>,  <39.363506, 31.758671, 22.115292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901180, 31.781248, 22.531433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726513, 32.140831, 22.545277>,  <39.621712, 32.356579, 22.553583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726513, 32.140831, 22.545277>,  <39.901180, 31.781248, 22.531433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726513, 32.140831, 22.545277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101631, 0.011068, 0.994761,
		0.893864, 0.437897, -0.096195,
		-0.436667, 0.898957, 0.034611,
		39.595512, 32.410519, 22.555660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234169, 32.112053, 23.108646>,  <39.901180, 31.781248, 22.531433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234169, 32.112053, 23.108646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.914276, 32.338631, 23.029081>,  <39.722340, 32.474579, 22.981342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.914276, 32.338631, 23.029081>,  <40.234169, 32.112053, 23.108646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914276, 32.338631, 23.029081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180211, 0.089548, 0.979543,
		0.572668, 0.819221, 0.030465,
		-0.799735, 0.566443, -0.198914,
		39.674355, 32.508564, 22.969406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285984, 32.774544, 23.523279>,  <40.234169, 32.112053, 23.108646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285984, 32.774544, 23.523279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902660, 32.732441, 23.417025>,  <39.672665, 32.707180, 23.353271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902660, 32.732441, 23.417025>,  <40.285984, 32.774544, 23.523279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902660, 32.732441, 23.417025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269333, 0.022333, 0.962788,
		-0.095405, 0.994195, -0.049751,
		-0.958310, -0.105255, -0.265639,
		39.615166, 32.700863, 23.337334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890041, 33.253788, 23.831976>,  <40.285984, 32.774544, 23.523279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.890041, 33.253788, 23.831976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591675, 32.997227, 23.760181>,  <39.412655, 32.843288, 23.717106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591675, 32.997227, 23.760181>,  <39.890041, 33.253788, 23.831976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591675, 32.997227, 23.760181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243473, 0.011754, 0.969836,
		-0.619947, 0.767114, -0.164932,
		-0.745914, -0.641403, -0.179485,
		39.367901, 32.804806, 23.706337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382114, 33.462456, 24.223434>,  <39.890041, 33.253788, 23.831976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382114, 33.462456, 24.223434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248318, 33.094456, 24.141731>,  <39.168037, 32.873657, 24.092710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248318, 33.094456, 24.141731>,  <39.382114, 33.462456, 24.223434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248318, 33.094456, 24.141731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282828, -0.108750, 0.952986,
		-0.898956, 0.376539, -0.223824,
		-0.334495, -0.919996, -0.204257,
		39.147968, 32.818459, 24.080454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763218, 33.422581, 24.475985>,  <39.382114, 33.462456, 24.223434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763218, 33.422581, 24.475985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870445, 33.037243, 24.480291>,  <38.934780, 32.806042, 24.482876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870445, 33.037243, 24.480291>,  <38.763218, 33.422581, 24.475985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870445, 33.037243, 24.480291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223996, -0.051453, 0.973231,
		-0.936998, -0.263304, -0.229578,
		0.268068, -0.963340, 0.010767,
		38.950867, 32.748241, 24.483522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281345, 33.260593, 24.967428>,  <38.763218, 33.422581, 24.475985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281345, 33.260593, 24.967428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532162, 32.952118, 24.923443>,  <38.682652, 32.767033, 24.897053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532162, 32.952118, 24.923443>,  <38.281345, 33.260593, 24.967428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532162, 32.952118, 24.923443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211606, -0.304479, 0.928717,
		-0.749694, -0.559076, -0.354109,
		0.627042, -0.771185, -0.109962,
		38.720276, 32.720764, 24.890453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935276, 32.705215, 25.319174>,  <38.281345, 33.260593, 24.967428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935276, 32.705215, 25.319174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320290, 32.598209, 25.301434>,  <38.551296, 32.534008, 25.290789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320290, 32.598209, 25.301434>,  <37.935276, 32.705215, 25.319174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320290, 32.598209, 25.301434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047122, -0.326083, 0.944166,
		-0.267033, -0.906703, -0.326472,
		0.962535, -0.267507, -0.044350,
		38.609051, 32.517956, 25.288128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025761, 31.936998, 25.464357>,  <37.935276, 32.705215, 25.319174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.025761, 31.936998, 25.464357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365498, 32.126678, 25.557095>,  <38.569340, 32.240486, 25.612736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365498, 32.126678, 25.557095>,  <38.025761, 31.936998, 25.464357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365498, 32.126678, 25.557095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007306, -0.428622, 0.903454,
		0.527792, -0.769035, -0.360583,
		0.849342, 0.474202, 0.231842,
		38.620300, 32.268940, 25.626648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422478, 31.470167, 25.904922>,  <38.025761, 31.936998, 25.464357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422478, 31.470167, 25.904922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.591766, 31.826784, 25.969463>,  <38.693340, 32.040752, 26.008188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.591766, 31.826784, 25.969463>,  <38.422478, 31.470167, 25.904922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591766, 31.826784, 25.969463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125136, -0.233903, 0.964173,
		0.897341, -0.387872, -0.210558,
		0.423226, 0.891540, 0.161354,
		38.718735, 32.094246, 26.017870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011711, 31.363558, 26.355980>,  <38.422478, 31.470167, 25.904922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011711, 31.363558, 26.355980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960831, 31.760307, 26.357313>,  <38.930302, 31.998356, 26.358112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960831, 31.760307, 26.357313>,  <39.011711, 31.363558, 26.355980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960831, 31.760307, 26.357313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098413, 0.009277, 0.995103,
		0.986983, 0.126905, -0.098793,
		-0.127200, 0.991872, 0.003333,
		38.922672, 32.057869, 26.358313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520668, 31.695055, 26.814489>,  <39.011711, 31.363558, 26.355980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520668, 31.695055, 26.814489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230225, 31.970045, 26.809734>,  <39.055958, 32.135040, 26.806881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230225, 31.970045, 26.809734>,  <39.520668, 31.695055, 26.814489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230225, 31.970045, 26.809734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020870, 0.039320, 0.999009,
		0.687262, 0.725141, -0.042899,
		-0.726109, 0.687476, -0.011890,
		39.012390, 32.176289, 26.806168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884148, 32.349525, 27.085752>,  <39.520668, 31.695055, 26.814489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.884148, 32.349525, 27.085752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487797, 32.347832, 27.139620>,  <39.249985, 32.346817, 27.171940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487797, 32.347832, 27.139620>,  <39.884148, 32.349525, 27.085752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487797, 32.347832, 27.139620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130580, 0.216169, 0.967584,
		-0.033207, 0.976347, -0.213645,
		-0.990881, -0.004233, 0.134669,
		39.190533, 32.346561, 27.180021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794411, 32.762756, 27.595743>,  <39.884148, 32.349525, 27.085752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.794411, 32.762756, 27.595743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.433544, 32.590328, 27.602465>,  <39.217026, 32.486870, 27.606497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.433544, 32.590328, 27.602465>,  <39.794411, 32.762756, 27.595743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433544, 32.590328, 27.602465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041776, 0.126062, 0.991142,
		-0.429369, 0.893469, -0.131737,
		-0.902162, -0.431069, 0.016802,
		39.162895, 32.461006, 27.607506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357227, 33.106987, 28.111586>,  <39.794411, 32.762756, 27.595743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357227, 33.106987, 28.111586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138702, 32.773624, 28.078180>,  <39.007587, 32.573605, 28.058138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138702, 32.773624, 28.078180>,  <39.357227, 33.106987, 28.111586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138702, 32.773624, 28.078180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022141, -0.114041, 0.993229,
		-0.837291, 0.540761, 0.080755,
		-0.546309, -0.833410, -0.083513,
		38.974812, 32.523602, 28.053127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912304, 33.210430, 28.631809>,  <39.357227, 33.106987, 28.111586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912304, 33.210430, 28.631809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.911068, 32.819126, 28.548857>,  <38.910328, 32.584343, 28.499086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.911068, 32.819126, 28.548857>,  <38.912304, 33.210430, 28.631809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911068, 32.819126, 28.548857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100580, -0.206633, 0.973235,
		-0.994924, -0.017852, 0.099031,
		-0.003089, -0.978256, -0.207379,
		38.910141, 32.525650, 28.486643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367756, 32.978027, 28.988440>,  <38.912304, 33.210430, 28.631809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367756, 32.978027, 28.988440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614532, 32.671719, 28.915800>,  <38.762600, 32.487934, 28.872217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614532, 32.671719, 28.915800>,  <38.367756, 32.978027, 28.988440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614532, 32.671719, 28.915800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009402, -0.237902, 0.971244,
		-0.786950, -0.597497, -0.153971,
		0.616945, -0.765768, -0.181599,
		38.799618, 32.441990, 28.861320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118748, 32.445374, 29.415096>,  <38.367756, 32.978027, 28.988440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118748, 32.445374, 29.415096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493446, 32.335999, 29.327703>,  <38.718266, 32.270374, 29.275267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493446, 32.335999, 29.327703>,  <38.118748, 32.445374, 29.415096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493446, 32.335999, 29.327703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135532, -0.292142, 0.946723,
		-0.322704, -0.916451, -0.236602,
		0.936746, -0.273444, -0.218484,
		38.774471, 32.253967, 29.262159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127914, 31.740084, 29.675854>,  <38.118748, 32.445374, 29.415096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.127914, 31.740084, 29.675854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503067, 31.875496, 29.645437>,  <38.728157, 31.956743, 29.627188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503067, 31.875496, 29.645437>,  <38.127914, 31.740084, 29.675854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503067, 31.875496, 29.645437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153737, -0.208984, 0.965759,
		0.311046, -0.917455, -0.248046,
		0.937878, 0.338529, -0.076043,
		38.784431, 31.977055, 29.622623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469044, 31.272160, 30.016092>,  <38.127914, 31.740084, 29.675854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469044, 31.272160, 30.016092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723980, 31.580317, 30.009312>,  <38.876942, 31.765211, 30.005243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723980, 31.580317, 30.009312>,  <38.469044, 31.272160, 30.016092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723980, 31.580317, 30.009312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257265, -0.191994, 0.947076,
		0.726366, -0.607975, -0.320561,
		0.637344, 0.770393, -0.016952,
		38.915184, 31.811434, 30.004227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094421, 31.042849, 30.346279>,  <38.469044, 31.272160, 30.016092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094421, 31.042849, 30.346279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.096294, 31.442291, 30.367310>,  <39.097420, 31.681957, 30.379929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.096294, 31.442291, 30.367310>,  <39.094421, 31.042849, 30.346279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096294, 31.442291, 30.367310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254308, -0.052038, 0.965723,
		0.967112, 0.008849, -0.254197,
		0.004682, 0.998606, 0.052577,
		39.097698, 31.741873, 30.383083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748417, 31.270531, 30.691765>,  <39.094421, 31.042849, 30.346279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.748417, 31.270531, 30.691765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.484825, 31.568962, 30.729952>,  <39.326672, 31.748020, 30.752865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.484825, 31.568962, 30.729952>,  <39.748417, 31.270531, 30.691765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.484825, 31.568962, 30.729952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187640, 0.040151, 0.981417,
		0.728380, 0.664647, -0.166453,
		-0.658979, 0.746078, 0.095469,
		39.287132, 31.792786, 30.758593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946938, 31.751699, 31.185049>,  <39.748417, 31.270531, 30.691765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946938, 31.751699, 31.185049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567562, 31.876860, 31.205278>,  <39.339935, 31.951956, 31.217417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567562, 31.876860, 31.205278>,  <39.946938, 31.751699, 31.185049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567562, 31.876860, 31.205278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129312, 0.236300, 0.963037,
		0.289385, 0.919921, -0.264578,
		-0.948438, 0.312902, 0.050575,
		39.283031, 31.970730, 31.220451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017811, 32.417950, 31.645494>,  <39.946938, 31.751699, 31.185049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.017811, 32.417950, 31.645494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.659908, 32.239414, 31.640114>,  <39.445168, 32.132294, 31.636887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.659908, 32.239414, 31.640114>,  <40.017811, 32.417950, 31.645494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659908, 32.239414, 31.640114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108129, 0.187340, 0.976326,
		-0.433256, 0.875032, -0.215887,
		-0.894761, -0.446343, -0.013450,
		39.391479, 32.105511, 31.636078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605534, 32.772148, 32.161484>,  <40.017811, 32.417950, 31.645494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605534, 32.772148, 32.161484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.405838, 32.429878, 32.106953>,  <39.286022, 32.224518, 32.074234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.405838, 32.429878, 32.106953>,  <39.605534, 32.772148, 32.161484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405838, 32.429878, 32.106953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169524, -0.057832, 0.983828,
		-0.849719, 0.514275, -0.116185,
		-0.499239, -0.855673, -0.136323,
		39.256065, 32.173176, 32.066055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039829, 32.853191, 32.449623>,  <39.605534, 32.772148, 32.161484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039829, 32.853191, 32.449623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072384, 32.454857, 32.433224>,  <39.091915, 32.215855, 32.423382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072384, 32.454857, 32.433224>,  <39.039829, 32.853191, 32.449623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072384, 32.454857, 32.433224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125844, -0.030543, 0.991580,
		-0.988706, -0.085861, 0.122834,
		0.081386, -0.995839, -0.041003,
		39.096798, 32.156105, 32.420921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941181, 32.750301, 33.096909>,  <39.039829, 32.853191, 32.449623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941181, 32.750301, 33.096909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.042500, 32.386311, 32.965591>,  <39.103291, 32.167915, 32.886799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.042500, 32.386311, 32.965591>,  <38.941181, 32.750301, 33.096909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042500, 32.386311, 32.965591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056624, -0.324835, 0.944074,
		-0.965730, -0.257721, -0.030753,
		0.253297, -0.909979, -0.328296,
		39.118488, 32.113316, 32.867104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464645, 32.277180, 33.489826>,  <38.941181, 32.750301, 33.096909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464645, 32.277180, 33.489826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.796665, 32.094688, 33.361530>,  <38.995876, 31.985195, 33.284554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.796665, 32.094688, 33.361530>,  <38.464645, 32.277180, 33.489826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796665, 32.094688, 33.361530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074685, -0.479003, 0.874630,
		-0.552664, -0.749942, -0.363523,
		0.830051, -0.456227, -0.320737,
		39.045681, 31.957821, 33.265308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418289, 31.475773, 33.503975>,  <38.464645, 32.277180, 33.489826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418289, 31.475773, 33.503975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802738, 31.581120, 33.537174>,  <39.033405, 31.644327, 33.557095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802738, 31.581120, 33.537174>,  <38.418289, 31.475773, 33.503975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802738, 31.581120, 33.537174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093156, -0.592193, 0.800393,
		0.259946, -0.761542, -0.593703,
		0.961119, 0.263366, 0.082996,
		39.091072, 31.660130, 33.562073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794476, 30.862488, 33.574364>,  <38.418289, 31.475773, 33.503975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794476, 30.862488, 33.574364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.029682, 31.144556, 33.732845>,  <39.170807, 31.313797, 33.827934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.029682, 31.144556, 33.732845>,  <38.794476, 30.862488, 33.574364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029682, 31.144556, 33.732845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111603, -0.555883, 0.823735,
		0.801115, -0.440150, -0.405565,
		0.588013, 0.705169, 0.396204,
		39.206085, 31.356106, 33.851707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307636, 30.493866, 33.938553>,  <38.794476, 30.862488, 33.574364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307636, 30.493866, 33.938553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377815, 30.865026, 34.070137>,  <39.419922, 31.087723, 34.149090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377815, 30.865026, 34.070137>,  <39.307636, 30.493866, 33.938553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377815, 30.865026, 34.070137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124934, -0.352430, 0.927461,
		0.976529, -0.121623, -0.177760,
		0.175448, 0.927901, 0.328964,
		39.430450, 31.143396, 34.168827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928280, 30.407223, 34.302113>,  <39.307636, 30.493866, 33.938553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928280, 30.407223, 34.302113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726067, 30.724209, 34.438602>,  <39.604740, 30.914400, 34.520496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726067, 30.724209, 34.438602>,  <39.928280, 30.407223, 34.302113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726067, 30.724209, 34.438602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021344, -0.383879, 0.923136,
		0.862543, 0.473960, 0.177150,
		-0.505534, 0.792464, 0.341229,
		39.574406, 30.961948, 34.540970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298546, 30.605759, 34.958721>,  <39.928280, 30.407223, 34.302113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298546, 30.605759, 34.958721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932549, 30.766979, 34.951298>,  <39.712952, 30.863710, 34.946842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932549, 30.766979, 34.951298>,  <40.298546, 30.605759, 34.958721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932549, 30.766979, 34.951298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147497, -0.291323, 0.945186,
		0.375551, 0.867572, 0.326006,
		-0.914990, 0.403050, -0.018558,
		39.658051, 30.887894, 34.945732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214966, 30.917919, 35.680386>,  <40.298546, 30.605759, 34.958721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214966, 30.917919, 35.680386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.859592, 30.897232, 35.497952>,  <39.646370, 30.884821, 35.388489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.859592, 30.897232, 35.497952>,  <40.214966, 30.917919, 35.680386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.859592, 30.897232, 35.497952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395521, -0.417961, 0.817846,
		-0.232923, 0.906992, 0.350875,
		-0.888431, -0.051716, -0.456087,
		39.593063, 30.881718, 35.361126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741467, 31.285120, 36.053654>,  <40.214966, 30.917919, 35.680386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741467, 31.285120, 36.053654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540203, 31.002178, 35.855064>,  <39.419445, 30.832413, 35.735912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540203, 31.002178, 35.855064>,  <39.741467, 31.285120, 36.053654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540203, 31.002178, 35.855064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175338, -0.478981, 0.860136,
		-0.846222, 0.519832, 0.116976,
		-0.503155, -0.707355, -0.496471,
		39.389256, 30.789972, 35.706123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150162, 31.202930, 36.490692>,  <39.741467, 31.285120, 36.053654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150162, 31.202930, 36.490692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.183994, 30.878540, 36.259117>,  <39.204292, 30.683907, 36.120174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.183994, 30.878540, 36.259117>,  <39.150162, 31.202930, 36.490692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183994, 30.878540, 36.259117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088655, -0.584837, 0.806291,
		-0.992465, -0.016872, -0.121364,
		0.084582, -0.810975, -0.578934,
		39.209370, 30.635248, 36.085438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674206, 30.643042, 36.614895>,  <39.150162, 31.202930, 36.490692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674206, 30.643042, 36.614895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986191, 30.440985, 36.467117>,  <39.173382, 30.319750, 36.378452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986191, 30.440985, 36.467117>,  <38.674206, 30.643042, 36.614895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986191, 30.440985, 36.467117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023359, -0.566418, 0.823787,
		-0.625390, -0.651153, -0.429985,
		0.779963, -0.505144, -0.369442,
		39.220181, 30.289442, 36.356285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618969, 29.931097, 36.832462>,  <38.674206, 30.643042, 36.614895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618969, 29.931097, 36.832462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015007, 29.953205, 36.780838>,  <39.252628, 29.966471, 36.749863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015007, 29.953205, 36.780838>,  <38.618969, 29.931097, 36.832462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015007, 29.953205, 36.780838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129664, -0.712519, 0.689568,
		-0.053848, -0.699473, -0.712627,
		0.990095, 0.055270, -0.129064,
		39.312035, 29.969786, 36.742119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862152, 29.269226, 36.603550>,  <38.618969, 29.931097, 36.832462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862152, 29.269226, 36.603550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.124466, 29.468075, 36.830814>,  <39.281857, 29.587385, 36.967175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.124466, 29.468075, 36.830814>,  <38.862152, 29.269226, 36.603550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124466, 29.468075, 36.830814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004339, -0.755059, 0.655642,
		0.754932, -0.427498, -0.497317,
		0.655789, 0.497123, 0.568163,
		39.321201, 29.617212, 37.001263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428589, 28.855595, 36.811264>,  <38.862152, 29.269226, 36.603550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428589, 28.855595, 36.811264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.369198, 29.141424, 37.084713>,  <39.333565, 29.312922, 37.248783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.369198, 29.141424, 37.084713>,  <39.428589, 28.855595, 36.811264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369198, 29.141424, 37.084713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132676, -0.699429, 0.702279,
		0.979976, 0.013570, 0.198654,
		-0.148474, 0.714573, 0.683623,
		39.324657, 29.355797, 37.289799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993969, 28.854525, 37.239822>,  <39.428589, 28.855595, 36.811264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993969, 28.854525, 37.239822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.671909, 29.010826, 37.418282>,  <39.478676, 29.104607, 37.525356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.671909, 29.010826, 37.418282>,  <39.993969, 28.854525, 37.239822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.671909, 29.010826, 37.418282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062475, -0.692196, 0.719000,
		0.589775, 0.606774, 0.532907,
		-0.805147, 0.390755, 0.446148,
		39.430367, 29.128052, 37.552128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290482, 29.436457, 37.386539>,  <39.993969, 28.854525, 37.239822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290482, 29.436457, 37.386539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.655869, 29.596783, 37.358486>,  <40.875103, 29.692978, 37.341652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.655869, 29.596783, 37.358486>,  <40.290482, 29.436457, 37.386539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.655869, 29.596783, 37.358486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276569, -0.485150, 0.829542,
		0.298469, -0.777158, -0.554023,
		0.913469, 0.400817, -0.070136,
		40.929909, 29.717028, 37.337444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.775814, 28.927053, 37.152145>,  <40.290482, 29.436457, 37.386539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.775814, 28.927053, 37.152145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.983704, 29.184971, 37.376335>,  <41.108437, 29.339722, 37.510849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.983704, 29.184971, 37.376335>,  <40.775814, 28.927053, 37.152145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.983704, 29.184971, 37.376335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246522, -0.741314, 0.624243,
		0.817993, -0.186267, -0.544236,
		0.519726, 0.644793, 0.560471,
		41.139622, 29.378408, 37.544476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.504433, 28.670452, 37.325817>,  <40.775814, 28.927053, 37.152145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.504433, 28.670452, 37.325817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.392281, 28.923140, 37.614902>,  <41.324989, 29.074753, 37.788353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.392281, 28.923140, 37.614902>,  <41.504433, 28.670452, 37.325817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.392281, 28.923140, 37.614902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105863, -0.727971, 0.677385,
		0.954032, 0.266437, 0.137236,
		-0.280385, 0.631719, 0.722714,
		41.308167, 29.112656, 37.831718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.041103, 28.688526, 38.014503>,  <41.504433, 28.670452, 37.325817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.041103, 28.688526, 38.014503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.658913, 28.762415, 38.106541>,  <41.429600, 28.806749, 38.161762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.658913, 28.762415, 38.106541>,  <42.041103, 28.688526, 38.014503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.658913, 28.762415, 38.106541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048652, -0.670491, 0.740320,
		0.291028, 0.718553, 0.631651,
		-0.955477, 0.184723, 0.230091,
		41.372269, 28.817831, 38.175568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.013046, 28.901758, 38.644524>,  <42.041103, 28.688526, 38.014503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.013046, 28.901758, 38.644524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.643478, 28.761427, 38.583481>,  <41.421738, 28.677229, 38.546856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.643478, 28.761427, 38.583481>,  <42.013046, 28.901758, 38.644524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.643478, 28.761427, 38.583481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085097, -0.577337, 0.812059,
		-0.372997, 0.737293, 0.563269,
		-0.923922, -0.350828, -0.152604,
		41.366302, 28.656178, 38.537701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.648224, 28.834829, 39.375202>,  <42.013046, 28.901758, 38.644524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.648224, 28.834829, 39.375202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.441570, 28.607567, 39.118984>,  <41.317577, 28.471209, 38.965256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.441570, 28.607567, 39.118984>,  <41.648224, 28.834829, 39.375202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.441570, 28.607567, 39.118984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142001, -0.680895, 0.718482,
		-0.844351, 0.462147, 0.271092,
		-0.516630, -0.568156, -0.640540,
		41.286583, 28.437120, 38.926823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084721, 28.559778, 39.805298>,  <41.648224, 28.834829, 39.375202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.084721, 28.559778, 39.805298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.195374, 28.338163, 39.491222>,  <41.261765, 28.205194, 39.302776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.195374, 28.338163, 39.491222>,  <41.084721, 28.559778, 39.805298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.195374, 28.338163, 39.491222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027370, -0.812199, 0.582739,
		-0.960585, -0.182698, -0.209520,
		0.276637, -0.554035, -0.785186,
		41.278366, 28.171953, 39.255665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.854465, 27.892878, 40.102116>,  <41.084721, 28.559778, 39.805298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.854465, 27.892878, 40.102116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.886341, 27.700285, 39.752983>,  <40.905464, 27.584730, 39.543503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.886341, 27.700285, 39.752983>,  <40.854465, 27.892878, 40.102116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.886341, 27.700285, 39.752983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561805, -0.701606, 0.438320,
		-0.823423, -0.525286, 0.214591,
		0.079685, -0.481481, -0.872827,
		40.910248, 27.555841, 39.491135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619705, 27.094873, 40.180328>,  <40.854465, 27.892878, 40.102116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619705, 27.094873, 40.180328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.894901, 27.176987, 39.901894>,  <41.060017, 27.226254, 39.734833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.894901, 27.176987, 39.901894>,  <40.619705, 27.094873, 40.180328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.894901, 27.176987, 39.901894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611391, -0.680707, 0.403533,
		-0.390992, -0.703205, -0.593824,
		0.687987, 0.205281, -0.696084,
		41.101295, 27.238571, 39.693069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760052, 26.521423, 39.823231>,  <40.619705, 27.094873, 40.180328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760052, 26.521423, 39.823231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.089531, 26.738234, 39.756615>,  <41.287216, 26.868320, 39.716644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.089531, 26.738234, 39.756615>,  <40.760052, 26.521423, 39.823231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.089531, 26.738234, 39.756615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565235, -0.808245, 0.165073,
		-0.045132, -0.230104, -0.972119,
		0.823694, 0.542026, -0.166540,
		41.336639, 26.900841, 39.706654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.101246, 26.183701, 39.303810>,  <40.760052, 26.521423, 39.823231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.101246, 26.183701, 39.303810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.372040, 26.396864, 39.506863>,  <41.534515, 26.524763, 39.628696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.372040, 26.396864, 39.506863>,  <41.101246, 26.183701, 39.303810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.372040, 26.396864, 39.506863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557284, -0.821692, 0.119401,
		0.480750, 0.202064, -0.853258,
		0.676988, 0.532910, 0.507636,
		41.575138, 26.556736, 39.659153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.828968, 25.994719, 39.084080>,  <41.101246, 26.183701, 39.303810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.828968, 25.994719, 39.084080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.870083, 26.158550, 39.446667>,  <41.894753, 26.256849, 39.664219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.870083, 26.158550, 39.446667>,  <41.828968, 25.994719, 39.084080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.870083, 26.158550, 39.446667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716132, -0.662936, 0.218337,
		0.690355, 0.626706, -0.361455,
		0.102788, 0.409579, 0.906465,
		41.900921, 26.281424, 39.718605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.571285, 26.026878, 39.138924>,  <41.828968, 25.994719, 39.084080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.571285, 26.026878, 39.138924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.456806, 26.090046, 39.516953>,  <42.388119, 26.127947, 39.743771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.456806, 26.090046, 39.516953>,  <42.571285, 26.026878, 39.138924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.456806, 26.090046, 39.516953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733063, -0.599061, 0.322095,
		0.617019, 0.784976, 0.055682,
		-0.286193, 0.157920, 0.945068,
		42.370949, 26.137423, 39.800472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.131809, 26.245001, 39.635159>,  <42.571285, 26.026878, 39.138924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.131809, 26.245001, 39.635159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.855656, 26.127840, 39.899757>,  <42.689964, 26.057545, 40.058517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.855656, 26.127840, 39.899757>,  <43.131809, 26.245001, 39.635159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.855656, 26.127840, 39.899757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684369, -0.560851, 0.465924,
		0.234531, 0.774374, 0.587656,
		-0.690387, -0.292900, 0.661494,
		42.648540, 26.039970, 40.098206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.479546, 26.155712, 40.222187>,  <43.131809, 26.245001, 39.635159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.479546, 26.155712, 40.222187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.176849, 25.904953, 40.296310>,  <42.995232, 25.754498, 40.340782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.176849, 25.904953, 40.296310>,  <43.479546, 26.155712, 40.222187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.176849, 25.904953, 40.296310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610090, -0.575465, 0.544638,
		-0.234795, 0.525205, 0.817943,
		-0.756744, -0.626897, 0.185306,
		42.949825, 25.716885, 40.351902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.224648, 26.166313, 40.958313>,  <43.479546, 26.155712, 40.222187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.224648, 26.166313, 40.958313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.184502, 25.825916, 40.752113>,  <43.160416, 25.621679, 40.628395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.184502, 25.825916, 40.752113>,  <43.224648, 26.166313, 40.958313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.184502, 25.825916, 40.752113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752941, -0.403651, 0.519755,
		-0.650389, -0.335976, 0.681259,
		-0.100366, -0.850991, -0.515500,
		43.154392, 25.570620, 40.597462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.211372, 25.596500, 41.535870>,  <43.224648, 26.166313, 40.958313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.211372, 25.596500, 41.535870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.362701, 25.491808, 41.180710>,  <43.453499, 25.428993, 40.967613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.362701, 25.491808, 41.180710>,  <43.211372, 25.596500, 41.535870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.362701, 25.491808, 41.180710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589244, -0.671667, 0.449060,
		-0.713907, -0.693081, -0.099885,
		0.378324, -0.261730, -0.887901,
		43.476200, 25.413288, 40.914341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.149857, 24.861315, 41.472469>,  <43.211372, 25.596500, 41.535870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.149857, 24.861315, 41.472469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.454597, 25.009354, 41.259827>,  <43.637444, 25.098177, 41.132240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.454597, 25.009354, 41.259827>,  <43.149857, 24.861315, 41.472469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.454597, 25.009354, 41.259827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626706, -0.628629, 0.460504,
		-0.163748, -0.683997, -0.710869,
		0.761856, 0.370099, -0.531602,
		43.683155, 25.120384, 41.100346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.577595, 24.647350, 41.031338>,  <43.149857, 24.861315, 41.472469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.577595, 24.647350, 41.031338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.535995, 24.744062, 41.417236>,  <42.511036, 24.802090, 41.648773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.535995, 24.744062, 41.417236>,  <42.577595, 24.647350, 41.031338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.535995, 24.744062, 41.417236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161840, -0.961187, 0.223445,
		0.981322, -0.132897, 0.139089,
		-0.103995, 0.241781, 0.964742,
		42.504795, 24.816597, 41.706657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.423134, 24.775610, 40.351582>,  <42.577595, 24.647350, 41.031338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.423134, 24.775610, 40.351582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.663422, 25.027668, 40.548382>,  <42.807594, 25.178902, 40.666462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.663422, 25.027668, 40.548382>,  <42.423134, 24.775610, 40.351582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.663422, 25.027668, 40.548382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598973, 0.762346, -0.245072,
		-0.529501, -0.147474, 0.835392,
		0.600716, 0.630143, 0.491996,
		42.843636, 25.216711, 40.695980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914074, 25.158367, 40.607838>,  <42.423134, 24.775610, 40.351582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.914074, 25.158367, 40.607838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.255608, 25.366585, 40.607796>,  <42.460529, 25.491516, 40.607769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.255608, 25.366585, 40.607796>,  <41.914074, 25.158367, 40.607838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.255608, 25.366585, 40.607796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492732, 0.808151, -0.322656,
		-0.167869, 0.275548, 0.946516,
		0.853835, 0.520543, -0.000107,
		42.511757, 25.522747, 40.607765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.937424, 25.663876, 41.131306>,  <41.914074, 25.158367, 40.607838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.937424, 25.663876, 41.131306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.165344, 25.772465, 40.821049>,  <42.302097, 25.837618, 40.634895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.165344, 25.772465, 40.821049>,  <41.937424, 25.663876, 41.131306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.165344, 25.772465, 40.821049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598564, 0.783818, -0.165379,
		0.563070, 0.558507, 0.609116,
		0.569802, 0.271475, -0.775646,
		42.336285, 25.853907, 40.588356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.931290, 26.403124, 41.082294>,  <41.937424, 25.663876, 41.131306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.931290, 26.403124, 41.082294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.088017, 26.324219, 40.722836>,  <42.182053, 26.276876, 40.507160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.088017, 26.324219, 40.722836>,  <41.931290, 26.403124, 41.082294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.088017, 26.324219, 40.722836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409843, 0.837060, -0.362435,
		0.823718, 0.510312, 0.247125,
		0.391813, -0.197261, -0.898649,
		42.205559, 26.265041, 40.453239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.111385, 26.985348, 40.781189>,  <41.931290, 26.403124, 41.082294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.111385, 26.985348, 40.781189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.056496, 26.748928, 40.463238>,  <42.023560, 26.607077, 40.272469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.056496, 26.748928, 40.463238>,  <42.111385, 26.985348, 40.781189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.056496, 26.748928, 40.463238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554090, 0.710978, -0.433007,
		0.821068, 0.381014, -0.425059,
		-0.137227, -0.591049, -0.794877,
		42.015327, 26.571613, 40.224773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.279732, 27.492950, 40.240204>,  <42.111385, 26.985348, 40.781189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.279732, 27.492950, 40.240204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.101299, 27.183073, 40.060936>,  <41.994240, 26.997147, 39.953373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.101299, 27.183073, 40.060936>,  <42.279732, 27.492950, 40.240204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.101299, 27.183073, 40.060936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564521, 0.632127, -0.530784,
		0.694498, 0.016230, -0.719312,
		-0.446082, -0.774695, -0.448173,
		41.967476, 26.950665, 39.926483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416386, 27.603792, 39.516342>,  <42.279732, 27.492950, 40.240204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.416386, 27.603792, 39.516342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.087666, 27.384626, 39.578869>,  <41.890434, 27.253126, 39.616383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.087666, 27.384626, 39.578869>,  <42.416386, 27.603792, 39.516342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.087666, 27.384626, 39.578869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549109, 0.688385, -0.473925,
		0.152066, -0.475306, -0.866580,
		-0.821800, -0.547914, 0.156314,
		41.841125, 27.220251, 39.625763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.123482, 27.614445, 38.888958>,  <42.416386, 27.603792, 39.516342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.123482, 27.614445, 38.888958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.824623, 27.511007, 39.133873>,  <41.645306, 27.448946, 39.280823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.824623, 27.511007, 39.133873>,  <42.123482, 27.614445, 38.888958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.824623, 27.511007, 39.133873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602059, 0.653592, -0.458631,
		-0.281589, -0.711300, -0.644019,
		-0.747150, -0.258592, 0.612289,
		41.600479, 27.433430, 39.317558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.586109, 27.479994, 38.459839>,  <42.123482, 27.614445, 38.888958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.586109, 27.479994, 38.459839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413246, 27.566399, 38.810059>,  <41.309528, 27.618242, 39.020191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413246, 27.566399, 38.810059>,  <41.586109, 27.479994, 38.459839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413246, 27.566399, 38.810059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613643, 0.641006, -0.461034,
		-0.660820, -0.736511, -0.144459,
		-0.432156, 0.216014, 0.875545,
		41.283600, 27.631203, 39.072723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.804310, 27.283035, 38.441860>,  <41.586109, 27.479994, 38.459839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.804310, 27.283035, 38.441860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.921867, 27.581642, 38.680637>,  <40.992401, 27.760807, 38.823902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.921867, 27.581642, 38.680637>,  <40.804310, 27.283035, 38.441860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.921867, 27.581642, 38.680637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515501, 0.649700, -0.558703,
		-0.804913, -0.143523, 0.575774,
		0.293894, 0.746519, 0.596938,
		41.010036, 27.805597, 38.859718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.517605, 27.783962, 38.149929>,  <40.804310, 27.283035, 38.441860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.517605, 27.783962, 38.149929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.683910, 27.989582, 38.450035>,  <40.783691, 28.112953, 38.630096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.683910, 27.989582, 38.450035>,  <40.517605, 27.783962, 38.149929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683910, 27.989582, 38.450035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176767, 0.854885, -0.487776,
		-0.892130, 0.070177, 0.446295,
		0.415761, 0.514050, 0.750263,
		40.808640, 28.143797, 38.675114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138260, 28.273121, 38.258301>,  <40.517605, 27.783962, 38.149929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.138260, 28.273121, 38.258301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.509953, 28.383289, 38.356834>,  <40.732967, 28.449390, 38.415955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.509953, 28.383289, 38.356834>,  <40.138260, 28.273121, 38.258301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509953, 28.383289, 38.356834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142646, 0.882355, -0.448444,
		-0.340863, 0.381568, 0.859196,
		0.929228, 0.275419, 0.246333,
		40.788719, 28.465916, 38.430733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148968, 28.930662, 38.612202>,  <40.138260, 28.273121, 38.258301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148968, 28.930662, 38.612202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507996, 28.890484, 38.440491>,  <40.723412, 28.866377, 38.337463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507996, 28.890484, 38.440491>,  <40.148968, 28.930662, 38.612202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507996, 28.890484, 38.440491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130720, 0.869281, -0.476720,
		0.421048, 0.484005, 0.767110,
		0.897569, -0.100445, -0.429278,
		40.777267, 28.860350, 38.311707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529663, 29.641653, 38.797462>,  <40.148968, 28.930662, 38.612202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.529663, 29.641653, 38.797462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849171, 29.475590, 38.623283>,  <41.040874, 29.375952, 38.518776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849171, 29.475590, 38.623283>,  <40.529663, 29.641653, 38.797462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849171, 29.475590, 38.623283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046444, 0.764160, -0.643353,
		0.599845, 0.493665, 0.629667,
		0.798767, -0.415156, -0.435450,
		41.088802, 29.351044, 38.492649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011990, 30.176348, 38.533348>,  <40.529663, 29.641653, 38.797462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.011990, 30.176348, 38.533348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137871, 29.841253, 38.354839>,  <41.213398, 29.640196, 38.247734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137871, 29.841253, 38.354839>,  <41.011990, 30.176348, 38.533348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.137871, 29.841253, 38.354839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370887, 0.541313, -0.754601,
		0.873730, 0.071959, 0.481059,
		0.314704, -0.837736, -0.446272,
		41.232281, 29.589931, 38.220959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.825409, 30.077925, 38.451523>,  <41.011990, 30.176348, 38.533348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.825409, 30.077925, 38.451523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.574501, 29.929218, 38.177788>,  <41.423954, 29.839994, 38.013546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.574501, 29.929218, 38.177788>,  <41.825409, 30.077925, 38.451523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.574501, 29.929218, 38.177788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343950, 0.656132, -0.671706,
		0.698736, -0.656720, -0.283702,
		-0.627269, -0.371766, -0.684342,
		41.386318, 29.817690, 37.972485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.176964, 29.837511, 37.857395>,  <41.825409, 30.077925, 38.451523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.176964, 29.837511, 37.857395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.808205, 29.957399, 37.759190>,  <41.586948, 30.029333, 37.700268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.808205, 29.957399, 37.759190>,  <42.176964, 29.837511, 37.857395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.808205, 29.957399, 37.759190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370693, 0.498064, -0.783913,
		-0.112675, -0.813695, -0.570267,
		-0.921895, 0.299721, -0.245512,
		41.531635, 30.047316, 37.685535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.928856, 29.588333, 37.165062>,  <42.176964, 29.837511, 37.857395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.928856, 29.588333, 37.165062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.779995, 29.939594, 37.285294>,  <41.690678, 30.150352, 37.357433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.779995, 29.939594, 37.285294>,  <41.928856, 29.588333, 37.165062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.779995, 29.939594, 37.285294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315280, 0.424181, -0.848922,
		-0.872983, -0.221164, -0.434726,
		-0.372154, 0.878155, 0.300574,
		41.668350, 30.203041, 37.375465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.435776, 29.803053, 36.725395>,  <41.928856, 29.588333, 37.165062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.435776, 29.803053, 36.725395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.653339, 30.093594, 36.893478>,  <41.783878, 30.267918, 36.994328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.653339, 30.093594, 36.893478>,  <41.435776, 29.803053, 36.725395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.653339, 30.093594, 36.893478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479945, 0.141495, -0.865813,
		-0.688344, 0.672599, -0.271649,
		0.543908, 0.726354, 0.420208,
		41.816513, 30.311501, 37.019539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.600189, 30.360153, 36.235371>,  <41.435776, 29.803053, 36.725395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.600189, 30.360153, 36.235371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.883587, 30.376112, 36.517208>,  <42.053623, 30.385687, 36.686310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.883587, 30.376112, 36.517208>,  <41.600189, 30.360153, 36.235371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.883587, 30.376112, 36.517208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686085, 0.194930, -0.700921,
		-0.165312, 0.980005, 0.110733,
		0.708491, 0.039898, 0.704591,
		42.096134, 30.388081, 36.728584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.973572, 30.987446, 36.237606>,  <41.600189, 30.360153, 36.235371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.973572, 30.987446, 36.237606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.226814, 30.714308, 36.383430>,  <42.378757, 30.550425, 36.470924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.226814, 30.714308, 36.383430>,  <41.973572, 30.987446, 36.237606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.226814, 30.714308, 36.383430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663454, 0.236069, -0.710000,
		0.398759, 0.691372, 0.602492,
		0.633103, -0.682845, 0.364559,
		42.416744, 30.509455, 36.492798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.643349, 31.308344, 36.329231>,  <41.973572, 30.987446, 36.237606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.643349, 31.308344, 36.329231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.672085, 30.909935, 36.308132>,  <42.689327, 30.670891, 36.295471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.672085, 30.909935, 36.308132>,  <42.643349, 31.308344, 36.329231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.672085, 30.909935, 36.308132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651745, 0.086909, -0.753443,
		0.755028, 0.019751, 0.655394,
		0.071841, -0.996020, -0.052746,
		42.693638, 30.611130, 36.292309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.173889, 31.887218, 36.105915>,  <42.643349, 31.308344, 36.329231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.173889, 31.887218, 36.105915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.217949, 31.593668, 35.837799>,  <42.244385, 31.417538, 35.676929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.217949, 31.593668, 35.837799>,  <42.173889, 31.887218, 36.105915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.217949, 31.593668, 35.837799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887118, 0.376710, -0.266666,
		0.448206, -0.565255, 0.692530,
		0.110149, -0.733878, -0.670292,
		42.250992, 31.373505, 35.636711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.366665, 31.953487, 35.331627>,  <42.173889, 31.887218, 36.105915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.366665, 31.953487, 35.331627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.764824, 31.955080, 35.293316>,  <43.003719, 31.956036, 35.270329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.764824, 31.955080, 35.293316>,  <42.366665, 31.953487, 35.331627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.764824, 31.955080, 35.293316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094378, -0.134338, -0.986431,
		-0.016793, 0.990928, -0.133344,
		0.995395, 0.003980, -0.095778,
		43.063442, 31.956274, 35.264584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.642063, 32.612896, 34.859909>,  <42.366665, 31.953487, 35.331627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.642063, 32.612896, 34.859909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.859489, 32.277248, 34.851788>,  <42.989944, 32.075859, 34.846912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.859489, 32.277248, 34.851788>,  <42.642063, 32.612896, 34.859909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.859489, 32.277248, 34.851788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179391, -0.092503, -0.979419,
		0.819972, 0.536023, -0.200812,
		0.543567, -0.839120, -0.020308,
		43.022560, 32.025513, 34.845695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.189827, 32.692551, 34.401627>,  <42.642063, 32.612896, 34.859909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.189827, 32.692551, 34.401627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.069374, 32.311440, 34.417286>,  <42.997101, 32.082771, 34.426682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.069374, 32.311440, 34.417286>,  <43.189827, 32.692551, 34.401627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.069374, 32.311440, 34.417286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251852, 0.039870, -0.966944,
		0.919723, -0.301037, -0.251965,
		-0.301132, -0.952779, 0.039147,
		42.979034, 32.025604, 34.429031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.500534, 32.206264, 33.872738>,  <43.189827, 32.692551, 34.401627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.500534, 32.206264, 33.872738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.148647, 32.053440, 33.985970>,  <42.937515, 31.961746, 34.053909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.148647, 32.053440, 33.985970>,  <43.500534, 32.206264, 33.872738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.148647, 32.053440, 33.985970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334765, 0.074850, -0.939324,
		0.337690, -0.921101, -0.193747,
		-0.879715, -0.382060, 0.283077,
		42.884731, 31.938822, 34.070892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.392628, 31.847639, 33.296452>,  <43.500534, 32.206264, 33.872738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.392628, 31.847639, 33.296452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.040970, 31.924170, 33.471031>,  <42.829975, 31.970087, 33.575779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.040970, 31.924170, 33.471031>,  <43.392628, 31.847639, 33.296452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.040970, 31.924170, 33.471031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361447, 0.329167, -0.872356,
		-0.310570, -0.924686, -0.220233,
		-0.879149, 0.191325, 0.436454,
		42.777225, 31.981567, 33.601967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.789845, 31.255148, 33.657166>,  <43.392628, 31.847639, 33.296452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.789845, 31.255148, 33.657166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.742523, 31.372833, 34.036522>,  <43.714130, 31.443443, 34.264137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.742523, 31.372833, 34.036522>,  <43.789845, 31.255148, 33.657166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.742523, 31.372833, 34.036522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918550, -0.395223, 0.008029,
		0.377188, -0.870194, 0.317004,
		-0.118301, 0.294212, 0.948390,
		43.707031, 31.461098, 34.321037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.172157, 31.330379, 34.197376>,  <43.789845, 31.255148, 33.657166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.172157, 31.330379, 34.197376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.338169, 31.511745, 33.881866>,  <44.437775, 31.620565, 33.692558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.338169, 31.511745, 33.881866>,  <44.172157, 31.330379, 34.197376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.338169, 31.511745, 33.881866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872209, 0.048377, 0.486736,
		0.258851, -0.889986, -0.375394,
		0.415028, 0.453414, -0.788776,
		44.462677, 31.647770, 33.645233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.910454, 31.167818, 34.025463>,  <44.172157, 31.330379, 34.197376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.910454, 31.167818, 34.025463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.888378, 31.538631, 33.877106>,  <44.875134, 31.761120, 33.788090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.888378, 31.538631, 33.877106>,  <44.910454, 31.167818, 34.025463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.888378, 31.538631, 33.877106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949365, 0.163781, 0.268107,
		0.309290, -0.337321, -0.889131,
		-0.055185, 0.927033, -0.370897,
		44.871822, 31.816742, 33.765835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.503693, 31.332975, 33.546665>,  <44.910454, 31.167818, 34.025463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.503693, 31.332975, 33.546665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.381020, 31.675873, 33.712112>,  <45.307415, 31.881611, 33.811378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.381020, 31.675873, 33.712112>,  <45.503693, 31.332975, 33.546665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.381020, 31.675873, 33.712112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940448, 0.205970, 0.270433,
		0.146635, 0.471922, -0.869361,
		-0.306686, 0.857243, 0.413615,
		45.289013, 31.933046, 33.836197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.996567, 31.859772, 33.292084>,  <45.503693, 31.332975, 33.546665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.996567, 31.859772, 33.292084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.840668, 31.941940, 33.651173>,  <45.747128, 31.991241, 33.866627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.840668, 31.941940, 33.651173>,  <45.996567, 31.859772, 33.292084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.840668, 31.941940, 33.651173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917520, 0.170344, 0.359362,
		-0.079101, 0.963735, -0.254868,
		-0.389745, 0.205421, 0.897720,
		45.723743, 32.003567, 33.920490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.606052, 32.043221, 33.654858>,  <45.996567, 31.859772, 33.292084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.606052, 32.043221, 33.654858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.313808, 32.181782, 33.890217>,  <46.138462, 32.264919, 34.031433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.313808, 32.181782, 33.890217>,  <46.606052, 32.043221, 33.654858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.313808, 32.181782, 33.890217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681347, 0.425979, 0.595237,
		-0.044450, 0.835789, -0.547248,
		-0.730609, 0.346408, 0.588398,
		46.094627, 32.285706, 34.066734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.658604, 32.756329, 33.776997>,  <46.606052, 32.043221, 33.654858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.658604, 32.756329, 33.776997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.460289, 32.605217, 34.089787>,  <46.341301, 32.514549, 34.277458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.460289, 32.605217, 34.089787>,  <46.658604, 32.756329, 33.776997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.460289, 32.605217, 34.089787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762936, 0.240685, 0.599999,
		-0.414874, 0.894067, 0.168889,
		-0.495790, -0.377776, 0.781970,
		46.311550, 32.491886, 34.324379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.685543, 33.301563, 34.297668>,  <46.658604, 32.756329, 33.776997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.685543, 33.301563, 34.297668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.652283, 32.925671, 34.430325>,  <46.632324, 32.700134, 34.509918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.652283, 32.925671, 34.430325>,  <46.685543, 33.301563, 34.297668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.652283, 32.925671, 34.430325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806760, 0.131878, 0.575975,
		-0.584999, 0.315449, 0.747173,
		-0.083155, -0.939734, 0.331640,
		46.627335, 32.643749, 34.529816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.641113, 33.289700, 34.923767>,  <46.685543, 33.301563, 34.297668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.641113, 33.289700, 34.923767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.796890, 32.930470, 34.841988>,  <46.890354, 32.714931, 34.792919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.796890, 32.930470, 34.841988>,  <46.641113, 33.289700, 34.923767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.796890, 32.930470, 34.841988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827314, 0.243512, 0.506215,
		-0.404833, -0.366284, 0.837823,
		0.389438, -0.898075, -0.204450,
		46.913723, 32.661049, 34.780651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.854454, 32.692852, 35.331238>,  <46.641113, 33.289700, 34.923767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.854454, 32.692852, 35.331238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.140377, 32.601841, 35.595745>,  <47.311932, 32.547234, 35.754452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.140377, 32.601841, 35.595745>,  <46.854454, 32.692852, 35.331238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.140377, 32.601841, 35.595745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618019, 0.648037, -0.445086,
		-0.327261, 0.726830, 0.603837,
		0.714810, -0.227524, 0.661271,
		47.354820, 32.533585, 35.794125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.379662, 33.127739, 35.472668>,  <46.854454, 32.692852, 35.331238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.379662, 33.127739, 35.472668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.481636, 33.293766, 35.123333>,  <47.542820, 33.393383, 34.913731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.481636, 33.293766, 35.123333>,  <47.379662, 33.127739, 35.472668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.481636, 33.293766, 35.123333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204687, 0.859551, 0.468268,
		0.945045, -0.298140, 0.134171,
		0.254937, 0.415072, -0.873340,
		47.558117, 33.418289, 34.861332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.014355, 33.412224, 35.487480>,  <47.379662, 33.127739, 35.472668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.014355, 33.412224, 35.487480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.755684, 33.605206, 35.251160>,  <47.600483, 33.720997, 35.109367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.755684, 33.605206, 35.251160>,  <48.014355, 33.412224, 35.487480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.755684, 33.605206, 35.251160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240670, 0.864044, 0.442160,
		0.723801, 0.143746, -0.674869,
		-0.646675, 0.482457, -0.590801,
		47.561680, 33.749943, 35.073921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.326786, 33.969013, 35.053478>,  <48.014355, 33.412224, 35.487480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.326786, 33.969013, 35.053478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.943535, 34.074825, 35.097321>,  <47.713585, 34.138313, 35.123627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.943535, 34.074825, 35.097321>,  <48.326786, 33.969013, 35.053478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.943535, 34.074825, 35.097321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286338, 0.884816, 0.367574,
		0.000253, 0.383568, -0.923513,
		-0.958129, 0.264530, 0.109606,
		47.656097, 34.154182, 35.130203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.134167, 34.705692, 34.825954>,  <48.326786, 33.969013, 35.053478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.134167, 34.705692, 34.825954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.829323, 34.605762, 35.064880>,  <47.646416, 34.545807, 35.208237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.829323, 34.605762, 35.064880>,  <48.134167, 34.705692, 34.825954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.829323, 34.605762, 35.064880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165487, 0.816755, 0.552743,
		-0.625947, 0.520096, -0.581111,
		-0.762105, -0.249822, 0.597315,
		47.600693, 34.530815, 35.244076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.491550, 35.228012, 34.784470>,  <48.134167, 34.705692, 34.825954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.491550, 35.228012, 34.784470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.582924, 35.053787, 35.132748>,  <47.637749, 34.949253, 35.341713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.582924, 35.053787, 35.132748>,  <47.491550, 35.228012, 34.784470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.582924, 35.053787, 35.132748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006924, 0.893589, 0.448833,
		-0.973534, -0.108559, 0.201114,
		0.228438, -0.435562, 0.870691,
		47.651455, 34.923119, 35.393955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.387329, 28.363485, 26.001265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.994190, 28.344875, 25.929878>,  <36.758308, 28.333710, 25.887047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.994190, 28.344875, 25.929878>,  <37.387329, 28.363485, 26.001265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994190, 28.344875, 25.929878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181372, 0.068335, 0.981038,
		-0.033446, 0.996577, -0.075600,
		-0.982846, -0.046523, -0.178465,
		36.699337, 28.330917, 25.876339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206772, 28.877338, 26.460829>,  <37.387329, 28.363485, 26.001265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206772, 28.877338, 26.460829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.876873, 28.671028, 26.368080>,  <36.678932, 28.547241, 26.312431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.876873, 28.671028, 26.368080>,  <37.206772, 28.877338, 26.460829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876873, 28.671028, 26.368080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175827, -0.155823, 0.972010,
		-0.537470, 0.842434, 0.037828,
		-0.824749, -0.515775, -0.231873,
		36.629448, 28.516296, 26.298519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671089, 29.207499, 26.832092>,  <37.206772, 28.877338, 26.460829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671089, 29.207499, 26.832092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.542202, 28.838596, 26.746655>,  <36.464870, 28.617256, 26.695393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.542202, 28.838596, 26.746655>,  <36.671089, 29.207499, 26.832092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542202, 28.838596, 26.746655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281334, -0.122145, 0.951805,
		-0.903895, 0.366782, -0.220103,
		-0.322221, -0.922254, -0.213594,
		36.445538, 28.561920, 26.682577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039322, 29.247522, 27.096043>,  <36.671089, 29.207499, 26.832092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039322, 29.247522, 27.096043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.152180, 28.864075, 27.080816>,  <36.219894, 28.634007, 27.071680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.152180, 28.864075, 27.080816>,  <36.039322, 29.247522, 27.096043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152180, 28.864075, 27.080816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315422, -0.130162, 0.939982,
		-0.906038, -0.253202, -0.339093,
		0.282142, -0.958617, -0.038067,
		36.236824, 28.576490, 27.069397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483196, 28.902918, 27.357906>,  <36.039322, 29.247522, 27.096043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483196, 28.902918, 27.357906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.788830, 28.647230, 27.392717>,  <35.972210, 28.493818, 27.413605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.788830, 28.647230, 27.392717>,  <35.483196, 28.902918, 27.357906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788830, 28.647230, 27.392717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269602, -0.193844, 0.943260,
		-0.586081, -0.744192, -0.320448,
		0.764084, -0.639220, 0.087027,
		36.018055, 28.455463, 27.418825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239597, 28.403608, 27.726837>,  <35.483196, 28.902918, 27.357906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239597, 28.403608, 27.726837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.628540, 28.313755, 27.752340>,  <35.861904, 28.259844, 27.767641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.628540, 28.313755, 27.752340>,  <35.239597, 28.403608, 27.726837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628540, 28.313755, 27.752340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131143, -0.299440, 0.945059,
		-0.193198, -0.927296, -0.320621,
		0.972356, -0.224630, 0.063757,
		35.920246, 28.246365, 27.771467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362698, 27.678446, 28.009876>,  <35.239597, 28.403608, 27.726837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362698, 27.678446, 28.009876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.695904, 27.881903, 28.096931>,  <35.895828, 28.003977, 28.149164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.695904, 27.881903, 28.096931>,  <35.362698, 27.678446, 28.009876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695904, 27.881903, 28.096931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063154, -0.303389, 0.950771,
		0.549630, -0.805754, -0.220606,
		0.833017, 0.508641, 0.217639,
		35.945808, 28.034494, 28.162224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872353, 27.220572, 28.404940>,  <35.362698, 27.678446, 28.009876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872353, 27.220572, 28.404940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.978588, 27.596201, 28.492212>,  <36.042332, 27.821579, 28.544577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.978588, 27.596201, 28.492212>,  <35.872353, 27.220572, 28.404940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978588, 27.596201, 28.492212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089967, -0.201180, 0.975414,
		0.959879, -0.278691, 0.031054,
		0.265592, 0.939073, 0.218181,
		36.058266, 27.877922, 28.557667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320839, 27.125082, 29.008421>,  <35.872353, 27.220572, 28.404940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320839, 27.125082, 29.008421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.231533, 27.514912, 29.016003>,  <36.177948, 27.748810, 29.020552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.231533, 27.514912, 29.016003>,  <36.320839, 27.125082, 29.008421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231533, 27.514912, 29.016003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054419, -0.006953, 0.998494,
		0.973237, 0.223964, -0.051483,
		-0.223268, 0.974573, 0.018955,
		36.164551, 27.807283, 29.021688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789783, 27.363861, 29.397966>,  <36.320839, 27.125082, 29.008421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789783, 27.363861, 29.397966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.526772, 27.664930, 29.411467>,  <36.368965, 27.845572, 29.419567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.526772, 27.664930, 29.411467>,  <36.789783, 27.363861, 29.397966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526772, 27.664930, 29.411467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165900, 0.100941, 0.980963,
		0.734935, 0.650613, -0.191240,
		-0.657531, 0.752671, 0.033752,
		36.329514, 27.890732, 29.421593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089886, 27.882195, 29.645084>,  <36.789783, 27.363861, 29.397966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089886, 27.882195, 29.645084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.712933, 27.959171, 29.754547>,  <36.486763, 28.005358, 29.820225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.712933, 27.959171, 29.754547>,  <37.089886, 27.882195, 29.645084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712933, 27.959171, 29.754547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296799, 0.103454, 0.949320,
		0.154377, 0.975840, -0.154609,
		-0.942379, 0.192441, 0.273657,
		36.430218, 28.016903, 29.836645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176662, 28.196646, 30.218853>,  <37.089886, 27.882195, 29.645084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176662, 28.196646, 30.218853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.784348, 28.123228, 30.245266>,  <36.548958, 28.079178, 30.261114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.784348, 28.123228, 30.245266>,  <37.176662, 28.196646, 30.218853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784348, 28.123228, 30.245266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050922, 0.085858, 0.995005,
		-0.188296, 0.979255, -0.074862,
		-0.980791, -0.183543, 0.066033,
		36.490108, 28.068165, 30.265076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993313, 28.696327, 30.673758>,  <37.176662, 28.196646, 30.218853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993313, 28.696327, 30.673758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.687950, 28.438116, 30.682688>,  <36.504730, 28.283190, 30.688046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.687950, 28.438116, 30.682688>,  <36.993313, 28.696327, 30.673758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687950, 28.438116, 30.682688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014385, 0.051544, 0.998567,
		-0.645754, 0.761996, -0.048635,
		-0.763411, -0.645528, 0.022324,
		36.458927, 28.244457, 30.689384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410042, 29.039703, 30.988560>,  <36.993313, 28.696327, 30.673758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410042, 29.039703, 30.988560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.389252, 28.640678, 31.007198>,  <36.376778, 28.401264, 31.018381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.389252, 28.640678, 31.007198>,  <36.410042, 29.039703, 30.988560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389252, 28.640678, 31.007198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202854, 0.056234, 0.977593,
		-0.977829, 0.041355, -0.205282,
		-0.051972, -0.997561, 0.046598,
		36.373661, 28.341410, 31.021177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764652, 28.767487, 31.394129>,  <36.410042, 29.039703, 30.988560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764652, 28.767487, 31.394129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.058548, 28.496983, 31.415436>,  <36.234886, 28.334681, 31.428221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.058548, 28.496983, 31.415436>,  <35.764652, 28.767487, 31.394129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058548, 28.496983, 31.415436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245315, -0.191673, 0.950306,
		-0.632444, -0.711290, -0.306726,
		0.734735, -0.676260, 0.053268,
		36.278969, 28.294106, 31.431416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575233, 28.543123, 32.003891>,  <35.764652, 28.767487, 31.394129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575233, 28.543123, 32.003891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.917458, 28.353436, 31.920824>,  <36.122791, 28.239622, 31.870983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.917458, 28.353436, 31.920824>,  <35.575233, 28.543123, 32.003891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917458, 28.353436, 31.920824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093268, -0.253388, 0.962858,
		-0.509228, -0.843155, -0.172560,
		0.855563, -0.474220, -0.207672,
		36.174126, 28.211170, 31.858522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440399, 28.018856, 32.349068>,  <35.575233, 28.543123, 32.003891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440399, 28.018856, 32.349068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.838432, 28.008293, 32.310883>,  <36.077251, 28.001955, 32.287971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.838432, 28.008293, 32.310883>,  <35.440399, 28.018856, 32.349068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838432, 28.008293, 32.310883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094420, -0.038259, 0.994797,
		-0.029906, -0.998919, -0.035579,
		0.995084, -0.026391, -0.095462,
		36.136955, 28.000372, 32.282246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679974, 27.376867, 32.820339>,  <35.440399, 28.018856, 32.349068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679974, 27.376867, 32.820339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.972328, 27.643282, 32.760735>,  <36.147739, 27.803131, 32.724972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.972328, 27.643282, 32.760735>,  <35.679974, 27.376867, 32.820339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972328, 27.643282, 32.760735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077172, 0.136281, 0.987660,
		0.678125, -0.733364, 0.048206,
		0.730884, 0.666036, -0.149011,
		36.191593, 27.843092, 32.716030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218018, 27.254871, 33.378029>,  <35.679974, 27.376867, 32.820339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218018, 27.254871, 33.378029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.314312, 27.624935, 33.260639>,  <36.372089, 27.846973, 33.190205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.314312, 27.624935, 33.260639>,  <36.218018, 27.254871, 33.378029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314312, 27.624935, 33.260639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151219, 0.262923, 0.952893,
		0.958738, -0.273775, -0.076606,
		0.240737, 0.925159, -0.293474,
		36.386532, 27.902483, 33.172596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832172, 27.260515, 33.697948>,  <36.218018, 27.254871, 33.378029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832172, 27.260515, 33.697948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.721500, 27.634169, 33.607750>,  <36.655098, 27.858360, 33.553631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.721500, 27.634169, 33.607750>,  <36.832172, 27.260515, 33.697948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721500, 27.634169, 33.607750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335411, 0.313768, 0.888284,
		0.900528, 0.170134, -0.400130,
		-0.276675, 0.934133, -0.225492,
		36.638496, 27.914408, 33.540104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387257, 27.679459, 33.793945>,  <36.832172, 27.260515, 33.697948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387257, 27.679459, 33.793945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.067245, 27.918236, 33.818020>,  <36.875240, 28.061502, 33.832466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.067245, 27.918236, 33.818020>,  <37.387257, 27.679459, 33.793945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067245, 27.918236, 33.818020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447193, 0.526420, 0.723118,
		0.399976, 0.605427, -0.688097,
		-0.800024, 0.596942, 0.060187,
		36.827240, 28.097319, 33.836075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744839, 27.979574, 34.359333>,  <37.387257, 27.679459, 33.793945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744839, 27.979574, 34.359333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.044346, 28.186695, 34.524849>,  <38.224052, 28.310966, 34.624161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.044346, 28.186695, 34.524849>,  <37.744839, 27.979574, 34.359333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044346, 28.186695, 34.524849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300259, 0.291579, -0.908200,
		-0.590919, 0.804279, 0.062852,
		0.748772, 0.517801, 0.413791,
		38.268978, 28.342035, 34.648987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849430, 28.564255, 34.011784>,  <37.744839, 27.979574, 34.359333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849430, 28.564255, 34.011784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.206425, 28.528189, 34.188572>,  <38.420620, 28.506548, 34.294643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.206425, 28.528189, 34.188572>,  <37.849430, 28.564255, 34.011784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206425, 28.528189, 34.188572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442532, 0.364803, -0.819197,
		-0.087367, 0.926708, 0.365484,
		0.892487, -0.090167, 0.441970,
		38.474171, 28.501139, 34.321163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084774, 29.247040, 33.909389>,  <37.849430, 28.564255, 34.011784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084774, 29.247040, 33.909389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.363483, 28.966228, 33.968269>,  <38.530708, 28.797743, 34.003597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.363483, 28.966228, 33.968269>,  <38.084774, 29.247040, 33.909389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363483, 28.966228, 33.968269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336172, 0.138326, -0.931587,
		0.633638, 0.698588, 0.332383,
		0.696772, -0.702027, 0.147197,
		38.572514, 28.755621, 34.012428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613411, 29.568970, 33.621410>,  <38.084774, 29.247040, 33.909389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613411, 29.568970, 33.621410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.739166, 29.189453, 33.633762>,  <38.814621, 28.961742, 33.641174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.739166, 29.189453, 33.633762>,  <38.613411, 29.568970, 33.621410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739166, 29.189453, 33.633762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273448, 0.059359, -0.960053,
		0.909057, 0.310276, 0.278107,
		0.314390, -0.948791, 0.030883,
		38.833485, 28.904816, 33.643028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319843, 29.563946, 33.550816>,  <38.613411, 29.568970, 33.621410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319843, 29.563946, 33.550816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.180557, 29.204168, 33.445175>,  <39.096985, 28.988302, 33.381790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.180557, 29.204168, 33.445175>,  <39.319843, 29.563946, 33.550816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180557, 29.204168, 33.445175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217961, 0.196331, -0.956006,
		0.911724, -0.390459, 0.127678,
		-0.348214, -0.899442, -0.264104,
		39.076092, 28.934336, 33.365944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821449, 29.214813, 32.977631>,  <39.319843, 29.563946, 33.550816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821449, 29.214813, 32.977631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.458916, 29.051264, 32.934959>,  <39.241394, 28.953135, 32.909359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.458916, 29.051264, 32.934959>,  <39.821449, 29.214813, 32.977631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458916, 29.051264, 32.934959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127703, -0.024392, -0.991512,
		0.402800, -0.912265, 0.074322,
		-0.906335, -0.408872, -0.106673,
		39.187016, 28.928602, 32.902958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971317, 28.746410, 32.521530>,  <39.821449, 29.214813, 32.977631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.971317, 28.746410, 32.521530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.572235, 28.762287, 32.499596>,  <39.332787, 28.771812, 32.486435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.572235, 28.762287, 32.499596>,  <39.971317, 28.746410, 32.521530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572235, 28.762287, 32.499596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043279, -0.248900, -0.967562,
		-0.052050, -0.967716, 0.246611,
		-0.997706, 0.039689, -0.054837,
		39.272923, 28.774195, 32.483143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709717, 28.014866, 32.225636>,  <39.971317, 28.746410, 32.521530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709717, 28.014866, 32.225636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.393898, 28.256498, 32.182373>,  <39.204407, 28.401478, 32.156418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.393898, 28.256498, 32.182373>,  <39.709717, 28.014866, 32.225636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393898, 28.256498, 32.182373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055297, -0.245549, -0.967806,
		-0.611193, -0.758148, 0.227276,
		-0.789548, 0.604084, -0.108155,
		39.157032, 28.437723, 32.149925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372990, 27.612257, 31.833672>,  <39.709717, 28.014866, 32.225636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372990, 27.612257, 31.833672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.223953, 27.979406, 31.778996>,  <39.134529, 28.199696, 31.746189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.223953, 27.979406, 31.778996>,  <39.372990, 27.612257, 31.833672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223953, 27.979406, 31.778996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015464, -0.141136, -0.989869,
		-0.927866, -0.370933, 0.038393,
		-0.372594, 0.917872, -0.136692,
		39.112175, 28.254768, 31.737988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901020, 27.444466, 31.323996>,  <39.372990, 27.612257, 31.833672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901020, 27.444466, 31.323996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.994347, 27.833372, 31.317545>,  <39.050343, 28.066715, 31.313675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.994347, 27.833372, 31.317545>,  <38.901020, 27.444466, 31.323996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994347, 27.833372, 31.317545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190518, -0.061968, -0.979726,
		-0.953554, 0.225516, -0.199692,
		0.233318, 0.972267, -0.016125,
		39.064342, 28.125051, 31.312708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529259, 27.660412, 30.704996>,  <38.901020, 27.444466, 31.323996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529259, 27.660412, 30.704996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.800777, 27.945883, 30.774168>,  <38.963688, 28.117165, 30.815670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.800777, 27.945883, 30.774168>,  <38.529259, 27.660412, 30.704996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800777, 27.945883, 30.774168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173734, 0.072727, -0.982104,
		-0.713481, 0.696689, -0.074623,
		0.678794, 0.713677, 0.172928,
		39.004417, 28.159986, 30.826046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295841, 28.282688, 30.422911>,  <38.529259, 27.660412, 30.704996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295841, 28.282688, 30.422911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.695366, 28.301804, 30.426865>,  <38.935081, 28.313272, 30.429237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.695366, 28.301804, 30.426865>,  <38.295841, 28.282688, 30.422911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695366, 28.301804, 30.426865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005112, 0.098941, -0.995080,
		-0.048531, 0.993945, 0.098579,
		0.998809, 0.047788, 0.009883,
		38.995010, 28.316139, 30.429829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452816, 28.806923, 29.955505>,  <38.295841, 28.282688, 30.422911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452816, 28.806923, 29.955505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.794350, 28.600487, 29.982691>,  <38.999271, 28.476625, 29.999002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.794350, 28.600487, 29.982691>,  <38.452816, 28.806923, 29.955505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794350, 28.600487, 29.982691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068739, -0.017635, -0.997479,
		0.515989, 0.856352, 0.020418,
		0.853833, -0.516091, 0.067964,
		39.050499, 28.445660, 30.003080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931198, 29.148111, 29.565203>,  <38.452816, 28.806923, 29.955505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931198, 29.148111, 29.565203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.059551, 28.769829, 29.585894>,  <39.136562, 28.542860, 29.598309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.059551, 28.769829, 29.585894>,  <38.931198, 29.148111, 29.565203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059551, 28.769829, 29.585894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196319, 0.012982, -0.980454,
		0.926550, 0.324764, 0.189826,
		0.320880, -0.945706, 0.051729,
		39.155815, 28.486116, 29.601412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575783, 29.155212, 29.292431>,  <38.931198, 29.148111, 29.565203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575783, 29.155212, 29.292431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.431053, 28.783461, 29.263216>,  <39.344215, 28.560410, 29.245687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.431053, 28.783461, 29.263216>,  <39.575783, 29.155212, 29.292431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431053, 28.783461, 29.263216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400239, -0.084109, -0.912543,
		0.841956, -0.359415, 0.402407,
		-0.361827, -0.929380, -0.073035,
		39.322506, 28.504646, 29.241306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093906, 28.663031, 28.930689>,  <39.575783, 29.155212, 29.292431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.093906, 28.663031, 28.930689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.756184, 28.449831, 28.908546>,  <39.553551, 28.321911, 28.895262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.756184, 28.449831, 28.908546>,  <40.093906, 28.663031, 28.930689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756184, 28.449831, 28.908546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179225, -0.183520, -0.966540,
		0.505005, -0.825974, 0.250473,
		-0.844303, -0.532999, -0.055357,
		39.502892, 28.289932, 28.891939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288448, 28.046478, 28.526291>,  <40.093906, 28.663031, 28.930689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288448, 28.046478, 28.526291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.891949, 28.087389, 28.492893>,  <39.654049, 28.111935, 28.472855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.891949, 28.087389, 28.492893>,  <40.288448, 28.046478, 28.526291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.891949, 28.087389, 28.492893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074186, -0.091677, -0.993022,
		-0.109226, -0.990522, 0.083286,
		-0.991245, 0.102285, -0.083497,
		39.594574, 28.118073, 28.467844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048946, 27.508686, 28.073154>,  <40.288448, 28.046478, 28.526291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048946, 27.508686, 28.073154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.753372, 27.778109, 28.079990>,  <39.576027, 27.939762, 28.084091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.753372, 27.778109, 28.079990>,  <40.048946, 27.508686, 28.073154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753372, 27.778109, 28.079990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055682, 0.086322, -0.994710,
		-0.671471, -0.734076, -0.101292,
		-0.738936, 0.673558, 0.017088,
		39.531693, 27.980177, 28.085117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532532, 27.276270, 27.566389>,  <40.048946, 27.508686, 28.073154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532532, 27.276270, 27.566389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.439400, 27.665276, 27.565428>,  <39.383522, 27.898680, 27.564850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.439400, 27.665276, 27.565428>,  <39.532532, 27.276270, 27.566389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439400, 27.665276, 27.565428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218428, 0.049883, -0.974577,
		-0.947671, -0.227435, -0.224039,
		-0.232829, 0.972515, -0.002405,
		39.369553, 27.957029, 27.564707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.948483, 27.574600, 27.139526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.134079, 27.924631, 27.194593>,  <39.245438, 28.134649, 27.227634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.134079, 27.924631, 27.194593>,  <38.948483, 27.574600, 27.139526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134079, 27.924631, 27.194593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053490, 0.182802, -0.981694,
		-0.884225, 0.448131, 0.131626,
		0.463989, 0.875078, 0.137668,
		39.273277, 28.187155, 27.235893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593735, 27.980322, 26.631489>,  <38.948483, 27.574600, 27.139526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593735, 27.980322, 26.631489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.903023, 28.215441, 26.726679>,  <39.088596, 28.356512, 26.783792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.903023, 28.215441, 26.726679>,  <38.593735, 27.980322, 26.631489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903023, 28.215441, 26.726679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152045, 0.536164, -0.830307,
		-0.615645, 0.605825, 0.503943,
		0.773216, 0.587797, 0.237974,
		39.134987, 28.391779, 26.798071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377026, 28.759649, 26.561068>,  <38.593735, 27.980322, 26.631489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377026, 28.759649, 26.561068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.773720, 28.727530, 26.521046>,  <39.011738, 28.708258, 26.497032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.773720, 28.727530, 26.521046>,  <38.377026, 28.759649, 26.561068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773720, 28.727530, 26.521046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043019, 0.526609, -0.849019,
		0.120865, 0.846307, 0.518803,
		0.991736, -0.080299, -0.100056,
		39.071239, 28.703440, 26.491030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524960, 29.390549, 26.467842>,  <38.377026, 28.759649, 26.561068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524960, 29.390549, 26.467842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.826096, 29.171627, 26.321587>,  <39.006779, 29.040274, 26.233833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.826096, 29.171627, 26.321587>,  <38.524960, 29.390549, 26.467842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826096, 29.171627, 26.321587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142671, 0.406614, -0.902391,
		0.642556, 0.731522, 0.228030,
		0.752839, -0.547304, -0.365640,
		39.051949, 29.007437, 26.211895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794685, 29.795282, 25.923433>,  <38.524960, 29.390549, 26.467842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794685, 29.795282, 25.923433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.943363, 29.443089, 25.805731>,  <39.032570, 29.231771, 25.735109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.943363, 29.443089, 25.805731>,  <38.794685, 29.795282, 25.923433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943363, 29.443089, 25.805731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070568, 0.342847, -0.936737,
		0.925668, 0.327417, 0.189569,
		0.371696, -0.880485, -0.294258,
		39.054871, 29.178944, 25.717453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192665, 29.999165, 25.392584>,  <38.794685, 29.795282, 25.923433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192665, 29.999165, 25.392584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.165653, 29.604521, 25.333199>,  <39.149445, 29.367735, 25.297567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.165653, 29.604521, 25.333199>,  <39.192665, 29.999165, 25.392584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.165653, 29.604521, 25.333199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057970, 0.144674, -0.987780,
		0.996032, -0.075312, 0.047424,
		-0.067531, -0.986609, -0.148465,
		39.145393, 29.308538, 25.288658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717667, 29.780436, 25.030699>,  <39.192665, 29.999165, 25.392584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717667, 29.780436, 25.030699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.450428, 29.498318, 24.935863>,  <39.290085, 29.329046, 24.878962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.450428, 29.498318, 24.935863>,  <39.717667, 29.780436, 25.030699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450428, 29.498318, 24.935863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068895, 0.258629, -0.963517,
		0.740882, -0.660053, -0.124197,
		-0.668093, -0.705296, -0.237088,
		39.250000, 29.286730, 24.864737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936806, 29.263762, 24.449581>,  <39.717667, 29.780436, 25.030699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.936806, 29.263762, 24.449581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.547138, 29.180187, 24.415306>,  <39.313339, 29.130043, 24.394741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.547138, 29.180187, 24.415306>,  <39.936806, 29.263762, 24.449581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547138, 29.180187, 24.415306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084104, 0.016467, -0.996321,
		0.209579, -0.977790, 0.001531,
		-0.974168, -0.208936, -0.085687,
		39.254887, 29.117506, 24.389601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939262, 28.837814, 23.892096>,  <39.936806, 29.263762, 24.449581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.939262, 28.837814, 23.892096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.559296, 28.954451, 23.937037>,  <39.331314, 29.024433, 23.964001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.559296, 28.954451, 23.937037>,  <39.939262, 28.837814, 23.892096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.559296, 28.954451, 23.937037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101885, 0.050887, -0.993494,
		-0.295414, -0.955188, -0.018630,
		-0.949921, 0.291594, 0.112352,
		39.274319, 29.041929, 23.970741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513844, 28.392254, 23.387785>,  <39.939262, 28.837814, 23.892096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513844, 28.392254, 23.387785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.314873, 28.729517, 23.469421>,  <39.195492, 28.931875, 23.518402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.314873, 28.729517, 23.469421>,  <39.513844, 28.392254, 23.387785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314873, 28.729517, 23.469421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075040, 0.192559, -0.978412,
		-0.864255, -0.502003, -0.032513,
		-0.497426, 0.843157, 0.204090,
		39.165646, 28.982464, 23.530649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060402, 28.503731, 22.812431>,  <39.513844, 28.392254, 23.387785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060402, 28.503731, 22.812431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.063015, 28.871099, 22.970652>,  <39.064583, 29.091520, 23.065584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.063015, 28.871099, 22.970652>,  <39.060402, 28.503731, 22.812431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063015, 28.871099, 22.970652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068162, 0.395050, -0.916128,
		-0.997653, -0.020981, 0.065180,
		0.006528, 0.918420, 0.395553,
		39.064972, 29.146626, 23.089317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572781, 28.871666, 22.362520>,  <39.060402, 28.503731, 22.812431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572781, 28.871666, 22.362520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.776642, 29.159815, 22.550695>,  <38.898960, 29.332705, 22.663601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.776642, 29.159815, 22.550695>,  <38.572781, 28.871666, 22.362520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776642, 29.159815, 22.550695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020247, 0.556670, -0.830487,
		-0.860139, 0.413739, 0.298296,
		0.509657, 0.720374, 0.470437,
		38.929539, 29.375927, 22.691826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286629, 29.423639, 22.055332>,  <38.572781, 28.871666, 22.362520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286629, 29.423639, 22.055332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.609619, 29.592485, 22.220158>,  <38.803413, 29.693792, 22.319054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.609619, 29.592485, 22.220158>,  <38.286629, 29.423639, 22.055332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609619, 29.592485, 22.220158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118232, 0.568552, -0.814106,
		-0.577928, 0.706092, 0.409186,
		0.807478, 0.422116, 0.412065,
		38.851864, 29.719120, 22.343777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226929, 30.071661, 22.034878>,  <38.286629, 29.423639, 22.055332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226929, 30.071661, 22.034878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.625233, 30.034882, 22.036213>,  <38.864216, 30.012814, 22.037014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.625233, 30.034882, 22.036213>,  <38.226929, 30.071661, 22.034878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625233, 30.034882, 22.036213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051641, 0.528467, -0.847382,
		0.076150, 0.843960, 0.530974,
		0.995758, -0.091948, 0.003340,
		38.923962, 30.007298, 22.037214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492706, 30.722519, 21.799183>,  <38.226929, 30.071661, 22.034878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492706, 30.722519, 21.799183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.794651, 30.473406, 21.716885>,  <38.975819, 30.323938, 21.667505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.794651, 30.473406, 21.716885>,  <38.492706, 30.722519, 21.799183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794651, 30.473406, 21.716885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164946, 0.483862, -0.859460,
		0.634808, 0.614833, 0.467973,
		0.754858, -0.622782, -0.205745,
		39.021107, 30.286572, 21.655161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947372, 31.215708, 21.516766>,  <38.492706, 30.722519, 21.799183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947372, 31.215708, 21.516766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.057583, 30.845856, 21.411589>,  <39.123711, 30.623943, 21.348482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.057583, 30.845856, 21.411589>,  <38.947372, 31.215708, 21.516766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057583, 30.845856, 21.411589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207274, 0.324242, -0.922987,
		0.938680, 0.199809, 0.280991,
		0.275530, -0.924632, -0.262944,
		39.140244, 30.568466, 21.332705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605709, 31.318138, 21.158335>,  <38.947372, 31.215708, 21.516766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605709, 31.318138, 21.158335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.472565, 30.956156, 21.052309>,  <39.392677, 30.738966, 20.988693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.472565, 30.956156, 21.052309>,  <39.605709, 31.318138, 21.158335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472565, 30.956156, 21.052309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116972, 0.239296, -0.963875,
		0.935695, -0.351837, 0.026204,
		-0.332856, -0.904958, -0.265063,
		39.372707, 30.684668, 20.972790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200947, 30.997736, 20.813036>,  <39.605709, 31.318138, 21.158335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.200947, 30.997736, 20.813036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.850266, 30.837410, 20.706648>,  <39.639858, 30.741215, 20.642815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.850266, 30.837410, 20.706648>,  <40.200947, 30.997736, 20.813036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850266, 30.837410, 20.706648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161377, 0.275801, -0.947571,
		0.453155, -0.873660, -0.177113,
		-0.876703, -0.400815, -0.265969,
		39.587254, 30.717165, 20.626858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370934, 30.634167, 20.185835>,  <40.200947, 30.997736, 20.813036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370934, 30.634167, 20.185835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.972881, 30.665144, 20.161453>,  <39.734051, 30.683731, 20.146824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.972881, 30.665144, 20.161453>,  <40.370934, 30.634167, 20.185835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972881, 30.665144, 20.161453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058851, -0.029167, -0.997841,
		-0.079058, -0.996570, 0.024467,
		-0.995132, 0.077447, -0.060955,
		39.674343, 30.688377, 20.143167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277081, 30.256201, 19.701061>,  <40.370934, 30.634167, 20.185835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277081, 30.256201, 19.701061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.922104, 30.440147, 19.713568>,  <39.709118, 30.550514, 19.721071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.922104, 30.440147, 19.713568>,  <40.277081, 30.256201, 19.701061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922104, 30.440147, 19.713568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057887, -0.043895, -0.997358,
		-0.457277, -0.886904, 0.065574,
		-0.887438, 0.459864, 0.031268,
		39.655872, 30.578106, 19.722948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902809, 29.964542, 19.118130>,  <40.277081, 30.256201, 19.701061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902809, 29.964542, 19.118130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.731651, 30.302814, 19.245710>,  <39.628956, 30.505777, 19.322260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.731651, 30.302814, 19.245710>,  <39.902809, 29.964542, 19.118130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731651, 30.302814, 19.245710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243572, 0.231942, -0.941741,
		-0.870391, -0.480652, 0.106738,
		-0.427893, 0.845681, 0.318953,
		39.603283, 30.556519, 19.341396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249298, 29.962738, 18.639853>,  <39.902809, 29.964542, 19.118130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249298, 29.962738, 18.639853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.306557, 30.326019, 18.797165>,  <39.340912, 30.543989, 18.891552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.306557, 30.326019, 18.797165>,  <39.249298, 29.962738, 18.639853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306557, 30.326019, 18.797165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014678, 0.399280, -0.916711,
		-0.989592, 0.125454, 0.070487,
		0.143149, 0.908205, 0.393283,
		39.349503, 30.598480, 18.915150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798923, 30.433479, 18.233236>,  <39.249298, 29.962738, 18.639853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798923, 30.433479, 18.233236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.081635, 30.650469, 18.414865>,  <39.251263, 30.780663, 18.523844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.081635, 30.650469, 18.414865>,  <38.798923, 30.433479, 18.233236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081635, 30.650469, 18.414865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196822, 0.465732, -0.862760,
		-0.679504, 0.699152, 0.222398,
		0.706779, 0.542476, 0.454075,
		39.293667, 30.813211, 18.551088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103806, 30.546331, 18.672693>,  <38.798923, 30.433479, 18.233236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103806, 30.546331, 18.672693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.799328, 30.697733, 18.462051>,  <37.616642, 30.788574, 18.335667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.799328, 30.697733, 18.462051>,  <38.103806, 30.546331, 18.672693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799328, 30.697733, 18.462051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624771, -0.210259, 0.751966,
		0.173899, 0.901402, 0.396527,
		-0.761197, 0.378505, -0.526606,
		37.570969, 30.811285, 18.304070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786926, 31.002785, 19.092903>,  <38.103806, 30.546331, 18.672693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786926, 31.002785, 19.092903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.517406, 30.904922, 18.814007>,  <37.355694, 30.846205, 18.646669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.517406, 30.904922, 18.814007>,  <37.786926, 31.002785, 19.092903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517406, 30.904922, 18.814007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643391, -0.269789, 0.716423,
		-0.363383, 0.931321, 0.024375,
		-0.673796, -0.244653, -0.697240,
		37.315269, 30.831526, 18.604836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217747, 31.206944, 19.317677>,  <37.786926, 31.002785, 19.092903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217747, 31.206944, 19.317677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.138138, 30.907835, 19.064304>,  <37.090374, 30.728371, 18.912281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.138138, 30.907835, 19.064304>,  <37.217747, 31.206944, 19.317677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138138, 30.907835, 19.064304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689185, -0.352727, 0.632936,
		-0.696718, 0.562517, -0.445151,
		-0.199020, -0.747769, -0.633429,
		37.078430, 30.683504, 18.874275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422440, 31.247042, 19.118244>,  <37.217747, 31.206944, 19.317677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422440, 31.247042, 19.118244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.560661, 30.880772, 19.036140>,  <36.643593, 30.661009, 18.986879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.560661, 30.880772, 19.036140>,  <36.422440, 31.247042, 19.118244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560661, 30.880772, 19.036140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607270, -0.384958, 0.695004,
		-0.715415, -0.115511, -0.689085,
		0.345550, -0.915677, -0.205258,
		36.664326, 30.606068, 18.974564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897606, 30.843401, 19.047401>,  <36.422440, 31.247042, 19.118244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897606, 30.843401, 19.047401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.173065, 30.562435, 19.119373>,  <36.338341, 30.393856, 19.162556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.173065, 30.562435, 19.119373>,  <35.897606, 30.843401, 19.047401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173065, 30.562435, 19.119373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653132, -0.493127, 0.574669,
		-0.314927, -0.513264, -0.798361,
		0.688651, -0.702414, 0.179930,
		36.379662, 30.351711, 19.173351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508888, 30.182880, 19.187237>,  <35.897606, 30.843401, 19.047401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508888, 30.182880, 19.187237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.863205, 30.130562, 19.365341>,  <36.075794, 30.099171, 19.472204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.863205, 30.130562, 19.365341>,  <35.508888, 30.182880, 19.187237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863205, 30.130562, 19.365341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460850, -0.360850, 0.810805,
		0.054623, -0.923407, -0.379917,
		0.885795, -0.130796, 0.445263,
		36.128944, 30.091324, 19.498920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323505, 29.620985, 19.684570>,  <35.508888, 30.182880, 19.187237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323505, 29.620985, 19.684570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.680401, 29.764633, 19.794075>,  <35.894539, 29.850822, 19.859777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.680401, 29.764633, 19.794075>,  <35.323505, 29.620985, 19.684570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680401, 29.764633, 19.794075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167968, -0.298807, 0.939415,
		0.419163, -0.884165, -0.206286,
		0.892238, 0.359118, 0.273760,
		35.948074, 29.872368, 19.876204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628918, 29.078613, 19.991623>,  <35.323505, 29.620985, 19.684570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628918, 29.078613, 19.991623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.801170, 29.410828, 20.132910>,  <35.904522, 29.610157, 20.217682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.801170, 29.410828, 20.132910>,  <35.628918, 29.078613, 19.991623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801170, 29.410828, 20.132910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026572, -0.379527, 0.924799,
		0.902135, -0.407637, -0.141369,
		0.430636, 0.830537, 0.353216,
		35.930363, 29.659988, 20.238874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119030, 28.791714, 20.430948>,  <35.628918, 29.078613, 19.991623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119030, 28.791714, 20.430948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.088482, 29.178688, 20.527473>,  <36.070152, 29.410873, 20.585388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.088482, 29.178688, 20.527473>,  <36.119030, 28.791714, 20.430948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088482, 29.178688, 20.527473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096390, -0.233723, 0.967514,
		0.992409, 0.097154, -0.075401,
		-0.076375, 0.967437, 0.241313,
		36.065571, 29.468920, 20.599867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652405, 28.992357, 20.924137>,  <36.119030, 28.791714, 20.430948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652405, 28.992357, 20.924137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.421852, 29.313593, 20.984575>,  <36.283520, 29.506334, 21.020838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.421852, 29.313593, 20.984575>,  <36.652405, 28.992357, 20.924137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421852, 29.313593, 20.984575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280153, 0.020498, 0.959736,
		0.767657, 0.595506, -0.236803,
		-0.576383, 0.803089, 0.151097,
		36.248936, 29.554520, 21.029905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129913, 29.610806, 21.082418>,  <36.652405, 28.992357, 20.924137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129913, 29.610806, 21.082418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.756931, 29.647301, 21.222246>,  <36.533142, 29.669197, 21.306143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.756931, 29.647301, 21.222246>,  <37.129913, 29.610806, 21.082418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756931, 29.647301, 21.222246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342090, -0.088169, 0.935522,
		0.116175, 0.991918, 0.051003,
		-0.932458, 0.091237, 0.349568,
		36.477196, 29.674671, 21.327116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160904, 29.975834, 21.745699>,  <37.129913, 29.610806, 21.082418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160904, 29.975834, 21.745699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.787773, 29.835917, 21.780277>,  <36.563892, 29.751966, 21.801023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.787773, 29.835917, 21.780277>,  <37.160904, 29.975834, 21.745699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787773, 29.835917, 21.780277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102152, -0.026670, 0.994411,
		-0.345534, 0.936447, 0.060611,
		-0.932830, -0.349794, 0.086444,
		36.507923, 29.730978, 21.806210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884312, 30.128801, 22.487083>,  <37.160904, 29.975834, 21.745699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884312, 30.128801, 22.487083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.618011, 29.852142, 22.375084>,  <36.458233, 29.686146, 22.307884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.618011, 29.852142, 22.375084>,  <36.884312, 30.128801, 22.487083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618011, 29.852142, 22.375084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085941, -0.301674, 0.949530,
		-0.741210, 0.656212, 0.141398,
		-0.665750, -0.691649, -0.279999,
		36.418285, 29.644648, 22.291084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401043, 30.187313, 22.958477>,  <36.884312, 30.128801, 22.487083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401043, 30.187313, 22.958477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.376122, 29.810690, 22.826061>,  <36.361168, 29.584717, 22.746613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.376122, 29.810690, 22.826061>,  <36.401043, 30.187313, 22.958477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376122, 29.810690, 22.826061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005372, -0.331363, 0.943488,
		-0.998043, 0.060557, 0.015586,
		-0.062300, -0.941558, -0.331039,
		36.357433, 29.528223, 22.726749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020771, 29.898172, 23.443142>,  <36.401043, 30.187313, 22.958477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020771, 29.898172, 23.443142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.175037, 29.570114, 23.274088>,  <36.267597, 29.373280, 23.172655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.175037, 29.570114, 23.274088>,  <36.020771, 29.898172, 23.443142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175037, 29.570114, 23.274088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090959, -0.489640, 0.867167,
		-0.918142, -0.295997, -0.263439,
		0.385669, -0.820145, -0.422636,
		36.290737, 29.324070, 23.147297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636791, 29.354422, 23.696764>,  <36.020771, 29.898172, 23.443142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636791, 29.354422, 23.696764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.979904, 29.170767, 23.604326>,  <36.185772, 29.060574, 23.548864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.979904, 29.170767, 23.604326>,  <35.636791, 29.354422, 23.696764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979904, 29.170767, 23.604326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101118, -0.591528, 0.799918,
		-0.503971, -0.662787, -0.553829,
		0.857781, -0.459138, -0.231094,
		36.237240, 29.033026, 23.534998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481613, 28.610086, 23.809259>,  <35.636791, 29.354422, 23.696764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481613, 28.610086, 23.809259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.875465, 28.679470, 23.817335>,  <36.111778, 28.721100, 23.822180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.875465, 28.679470, 23.817335>,  <35.481613, 28.610086, 23.809259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875465, 28.679470, 23.817335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080963, -0.555864, 0.827321,
		0.154728, -0.812974, -0.561366,
		0.984634, 0.173460, 0.020187,
		36.170856, 28.731508, 23.823391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910515, 28.066307, 24.013519>,  <35.481613, 28.610086, 23.809259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910515, 28.066307, 24.013519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.222549, 28.294283, 24.116772>,  <36.409771, 28.431068, 24.178722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.222549, 28.294283, 24.116772>,  <35.910515, 28.066307, 24.013519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222549, 28.294283, 24.116772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043297, -0.362405, 0.931015,
		0.624170, -0.737450, -0.258031,
		0.780088, 0.569939, 0.258131,
		36.456577, 28.465265, 24.194212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122593, 27.702665, 24.496441>,  <35.910515, 28.066307, 24.013519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122593, 27.702665, 24.496441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.287888, 28.060768, 24.563080>,  <36.387066, 28.275629, 24.603064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.287888, 28.060768, 24.563080>,  <36.122593, 27.702665, 24.496441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287888, 28.060768, 24.563080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002426, -0.181863, 0.983321,
		0.910621, -0.406747, -0.072980,
		0.413235, 0.895255, 0.166595,
		36.411858, 28.329346, 24.613058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752892, 27.574993, 24.901323>,  <36.122593, 27.702665, 24.496441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752892, 27.574993, 24.901323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.668358, 27.961016, 24.963295>,  <36.617638, 28.192629, 25.000479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.668358, 27.961016, 24.963295>,  <36.752892, 27.574993, 24.901323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668358, 27.961016, 24.963295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111840, -0.133593, 0.984705,
		0.970995, 0.225428, -0.079700,
		-0.211333, 0.965057, 0.154930,
		36.604958, 28.250532, 25.009773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255241, 27.808178, 25.261509>,  <36.752892, 27.574993, 24.901323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255241, 27.808178, 25.261509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.944103, 28.047832, 25.337389>,  <36.757420, 28.191626, 25.382917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.944103, 28.047832, 25.337389>,  <37.255241, 27.808178, 25.261509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944103, 28.047832, 25.337389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118291, -0.156872, 0.980509,
		0.617218, 0.785128, 0.051150,
		-0.777849, 0.599137, 0.189698,
		36.710747, 28.227573, 25.394299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.224651, 27.907782, 30.199673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.863449, 28.064785, 30.129786>,  <39.646729, 28.158987, 30.087852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.863449, 28.064785, 30.129786>,  <40.224651, 27.907782, 30.199673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863449, 28.064785, 30.129786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104653, 0.193469, 0.975509,
		0.416697, 0.899171, -0.133626,
		-0.903001, 0.392507, -0.174719,
		39.592548, 28.182537, 30.077370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196697, 28.322056, 30.745373>,  <40.224651, 27.907782, 30.199673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.196697, 28.322056, 30.745373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.819660, 28.368837, 30.620256>,  <39.593437, 28.396906, 30.545187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.819660, 28.368837, 30.620256>,  <40.196697, 28.322056, 30.745373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819660, 28.368837, 30.620256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299743, 0.116592, 0.946869,
		0.147208, 0.986270, -0.074843,
		-0.942594, 0.116953, -0.312791,
		39.536880, 28.403923, 30.526419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996075, 28.899073, 31.131235>,  <40.196697, 28.322056, 30.745373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996075, 28.899073, 31.131235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.680313, 28.679184, 31.021955>,  <39.490856, 28.547251, 30.956388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.680313, 28.679184, 31.021955>,  <39.996075, 28.899073, 31.131235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680313, 28.679184, 31.021955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416349, 0.152423, 0.896337,
		-0.451096, 0.821323, -0.349202,
		-0.789408, -0.549724, -0.273200,
		39.443489, 28.514267, 30.939995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511189, 29.335289, 31.331570>,  <39.996075, 28.899073, 31.131235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511189, 29.335289, 31.331570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.367458, 28.962122, 31.322170>,  <39.281219, 28.738222, 31.316530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.367458, 28.962122, 31.322170>,  <39.511189, 29.335289, 31.331570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367458, 28.962122, 31.322170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507509, 0.174220, 0.843849,
		-0.783147, 0.315143, -0.536065,
		-0.359327, -0.932916, -0.023499,
		39.259659, 28.682247, 31.315121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747196, 29.429861, 31.434525>,  <39.511189, 29.335289, 31.331570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747196, 29.429861, 31.434525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.860699, 29.060476, 31.537832>,  <38.928799, 28.838846, 31.599817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.860699, 29.060476, 31.537832>,  <38.747196, 29.429861, 31.434525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860699, 29.060476, 31.537832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416307, 0.123991, 0.900730,
		-0.863813, -0.363103, -0.349261,
		0.283753, -0.923462, 0.258268,
		38.945824, 28.783438, 31.615313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169456, 29.176197, 31.918882>,  <38.747196, 29.429861, 31.434525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169456, 29.176197, 31.918882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.487717, 28.949673, 32.004898>,  <38.678673, 28.813759, 32.056507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.487717, 28.949673, 32.004898>,  <38.169456, 29.176197, 31.918882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487717, 28.949673, 32.004898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274421, -0.020492, 0.961391,
		-0.540038, -0.823938, -0.171711,
		0.795646, -0.566309, 0.215040,
		38.726410, 28.779779, 32.069408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947823, 28.751387, 32.475033>,  <38.169456, 29.176197, 31.918882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947823, 28.751387, 32.475033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.347790, 28.756348, 32.476444>,  <38.587769, 28.759325, 32.477291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.347790, 28.756348, 32.476444>,  <37.947823, 28.751387, 32.475033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347790, 28.756348, 32.476444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003281, -0.020167, 0.999791,
		0.012481, -0.999720, -0.020125,
		0.999917, 0.012413, 0.003532,
		38.647766, 28.760069, 32.477505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139767, 28.248583, 32.847748>,  <37.947823, 28.751387, 32.475033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139767, 28.248583, 32.847748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.475361, 28.466185, 32.852940>,  <38.676716, 28.596746, 32.856056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.475361, 28.466185, 32.852940>,  <38.139767, 28.248583, 32.847748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475361, 28.466185, 32.852940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125251, -0.216274, 0.968265,
		0.529548, -0.810731, -0.249587,
		0.838982, 0.544004, 0.012982,
		38.727055, 28.629385, 32.856834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541744, 27.720665, 33.170834>,  <38.139767, 28.248583, 32.847748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541744, 27.720665, 33.170834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.731167, 28.071527, 33.202667>,  <38.844822, 28.282045, 33.221767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.731167, 28.071527, 33.202667>,  <38.541744, 27.720665, 33.170834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731167, 28.071527, 33.202667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042039, -0.112769, 0.992732,
		0.879757, -0.466773, -0.090277,
		0.473561, 0.877158, 0.079587,
		38.873234, 28.334675, 33.226543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043980, 27.602917, 33.638180>,  <38.541744, 27.720665, 33.170834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043980, 27.602917, 33.638180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.980209, 27.997381, 33.656384>,  <38.941948, 28.234060, 33.667305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.980209, 27.997381, 33.656384>,  <39.043980, 27.602917, 33.638180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980209, 27.997381, 33.656384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027439, -0.041651, 0.998755,
		0.986829, 0.160477, -0.020419,
		-0.159427, 0.986161, 0.045506,
		38.932381, 28.293230, 33.670036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504204, 27.770451, 34.213242>,  <39.043980, 27.602917, 33.638180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504204, 27.770451, 34.213242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.246231, 28.070162, 34.153042>,  <39.091450, 28.249989, 34.116920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.246231, 28.070162, 34.153042>,  <39.504204, 27.770451, 34.213242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246231, 28.070162, 34.153042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204716, 0.020360, 0.978610,
		0.736315, 0.661943, 0.140258,
		-0.644928, 0.749278, -0.150502,
		39.052753, 28.294945, 34.107891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653439, 28.271584, 34.797318>,  <39.504204, 27.770451, 34.213242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653439, 28.271584, 34.797318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.286602, 28.331032, 34.649338>,  <39.066502, 28.366701, 34.560551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.286602, 28.331032, 34.649338>,  <39.653439, 28.271584, 34.797318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286602, 28.331032, 34.649338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330668, 0.234866, 0.914055,
		0.222735, 0.960599, -0.166249,
		-0.917087, 0.148619, -0.369952,
		39.011475, 28.375618, 34.538353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371819, 28.890800, 35.020554>,  <39.653439, 28.271584, 34.797318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.371819, 28.890800, 35.020554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.028744, 28.706764, 34.928730>,  <38.822899, 28.596342, 34.873638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.028744, 28.706764, 34.928730>,  <39.371819, 28.890800, 35.020554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028744, 28.706764, 34.928730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369460, 0.240962, 0.897461,
		-0.357597, 0.854550, -0.376654,
		-0.857685, -0.460088, -0.229555,
		38.771439, 28.568737, 34.859863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022175, 28.857639, 35.726574>,  <39.371819, 28.890800, 35.020554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022175, 28.857639, 35.726574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.984951, 28.542336, 35.969879>,  <38.962616, 28.353153, 36.115864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.984951, 28.542336, 35.969879>,  <39.022175, 28.857639, 35.726574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984951, 28.542336, 35.969879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742247, 0.352271, 0.570065,
		-0.663634, 0.504532, 0.552303,
		-0.093056, -0.788260, 0.608266,
		38.957035, 28.305857, 36.152359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163887, 29.531233, 35.424183>,  <39.022175, 28.857639, 35.726574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163887, 29.531233, 35.424183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.125095, 29.887068, 35.602722>,  <39.101822, 30.100569, 35.709846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.125095, 29.887068, 35.602722>,  <39.163887, 29.531233, 35.424183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125095, 29.887068, 35.602722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022967, 0.450343, -0.892560,
		-0.995022, -0.076306, -0.064103,
		-0.096976, 0.889589, 0.446349,
		39.096001, 30.153944, 35.736626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613758, 29.962633, 35.018421>,  <39.163887, 29.531233, 35.424183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613758, 29.962633, 35.018421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.844505, 30.203297, 35.239414>,  <38.982952, 30.347694, 35.372009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.844505, 30.203297, 35.239414>,  <38.613758, 29.962633, 35.018421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844505, 30.203297, 35.239414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019025, 0.666283, -0.745457,
		-0.816617, 0.440540, 0.372910,
		0.576866, 0.601658, 0.552479,
		39.017567, 30.383795, 35.405159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407223, 30.614344, 34.921440>,  <38.613758, 29.962633, 35.018421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407223, 30.614344, 34.921440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.782345, 30.663389, 35.051361>,  <39.007416, 30.692818, 35.129314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.782345, 30.663389, 35.051361>,  <38.407223, 30.614344, 34.921440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782345, 30.663389, 35.051361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157314, 0.683916, -0.712399,
		-0.309488, 0.719183, 0.622087,
		0.937800, 0.122616, 0.324801,
		39.063686, 30.700174, 35.148800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422539, 31.399811, 35.063702>,  <38.407223, 30.614344, 34.921440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422539, 31.399811, 35.063702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.784241, 31.240265, 35.002743>,  <39.001263, 31.144537, 34.966167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.784241, 31.240265, 35.002743>,  <38.422539, 31.399811, 35.063702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784241, 31.240265, 35.002743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207337, 0.722187, -0.659893,
		0.373268, 0.565115, 0.735742,
		0.904258, -0.398863, -0.152400,
		39.055519, 31.120605, 34.957024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902958, 32.007160, 34.935135>,  <38.422539, 31.399811, 35.063702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902958, 32.007160, 34.935135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.099270, 31.691544, 34.787323>,  <39.217056, 31.502174, 34.698635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.099270, 31.691544, 34.787323>,  <38.902958, 32.007160, 34.935135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099270, 31.691544, 34.787323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268240, 0.540355, -0.797536,
		0.828967, 0.292288, 0.476845,
		0.490775, -0.789040, -0.369533,
		39.246502, 31.454832, 34.676464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482750, 32.290501, 34.728035>,  <38.902958, 32.007160, 34.935135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482750, 32.290501, 34.728035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.473103, 31.939234, 34.536938>,  <39.467316, 31.728474, 34.422279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.473103, 31.939234, 34.536938>,  <39.482750, 32.290501, 34.728035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473103, 31.939234, 34.536938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151504, 0.469156, -0.870023,
		0.988162, -0.093365, 0.121730,
		-0.024119, -0.878166, -0.477747,
		39.465866, 31.675783, 34.393612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993881, 32.361721, 34.152462>,  <39.482750, 32.290501, 34.728035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993881, 32.361721, 34.152462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.745312, 32.061455, 34.062721>,  <39.596169, 31.881296, 34.008877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.745312, 32.061455, 34.062721>,  <39.993881, 32.361721, 34.152462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745312, 32.061455, 34.062721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119257, 0.192384, -0.974046,
		0.774342, -0.632054, -0.030031,
		-0.621427, -0.750663, -0.224348,
		39.558884, 31.836256, 33.995419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340427, 31.977385, 33.539146>,  <39.993881, 32.361721, 34.152462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340427, 31.977385, 33.539146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.954044, 31.874786, 33.552662>,  <39.722214, 31.813227, 33.560772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.954044, 31.874786, 33.552662>,  <40.340427, 31.977385, 33.539146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954044, 31.874786, 33.552662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087376, 0.200506, -0.975788,
		0.243514, -0.945519, -0.216091,
		-0.965953, -0.256499, 0.033790,
		39.664257, 31.797838, 33.562798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204063, 31.443323, 32.906975>,  <40.340427, 31.977385, 33.539146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204063, 31.443323, 32.906975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.843781, 31.593863, 32.993778>,  <39.627613, 31.684187, 33.045860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.843781, 31.593863, 32.993778>,  <40.204063, 31.443323, 32.906975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843781, 31.593863, 32.993778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217639, 0.041431, -0.975150,
		-0.375989, -0.925551, 0.044592,
		-0.900703, 0.376350, 0.217013,
		39.573570, 31.706768, 33.058884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721123, 31.023748, 32.592434>,  <40.204063, 31.443323, 32.906975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.721123, 31.023748, 32.592434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.509445, 31.350607, 32.683849>,  <39.382439, 31.546722, 32.738697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.509445, 31.350607, 32.683849>,  <39.721123, 31.023748, 32.592434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509445, 31.350607, 32.683849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271638, 0.092013, -0.957991,
		-0.803847, -0.569039, 0.173276,
		-0.529190, 0.817146, 0.228537,
		39.350689, 31.595751, 32.752411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997658, 30.861214, 32.386879>,  <39.721123, 31.023748, 32.592434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997658, 30.861214, 32.386879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.067154, 31.255018, 32.377495>,  <39.108852, 31.491301, 32.371864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.067154, 31.255018, 32.377495>,  <38.997658, 30.861214, 32.386879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067154, 31.255018, 32.377495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308206, 0.031739, -0.950790,
		-0.935319, 0.172424, 0.308947,
		0.173744, 0.984511, -0.023456,
		39.119278, 31.550371, 32.370457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462044, 31.081942, 31.974112>,  <38.997658, 30.861214, 32.386879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462044, 31.081942, 31.974112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.712757, 31.393398, 31.985861>,  <38.863186, 31.580273, 31.992910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.712757, 31.393398, 31.985861>,  <38.462044, 31.081942, 31.974112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712757, 31.393398, 31.985861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269924, 0.252330, -0.929231,
		-0.730951, 0.574495, 0.368329,
		0.626779, 0.778643, 0.029371,
		38.900791, 31.626991, 31.994673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162579, 31.645014, 31.562468>,  <38.462044, 31.081942, 31.974112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162579, 31.645014, 31.562468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.533314, 31.793146, 31.587202>,  <38.755756, 31.882025, 31.602043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.533314, 31.793146, 31.587202>,  <38.162579, 31.645014, 31.562468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533314, 31.793146, 31.587202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087505, 0.373226, -0.923604,
		-0.365117, 0.850622, 0.378327,
		0.926840, 0.370329, 0.061838,
		38.811367, 31.904245, 31.605753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091709, 32.378716, 31.280029>,  <38.162579, 31.645014, 31.562468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091709, 32.378716, 31.280029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.464745, 32.236767, 31.253695>,  <38.688568, 32.151596, 31.237894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.464745, 32.236767, 31.253695>,  <38.091709, 32.378716, 31.280029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464745, 32.236767, 31.253695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008567, 0.204128, -0.978907,
		0.360827, 0.912358, 0.193409,
		0.932593, -0.354873, -0.065838,
		38.744522, 32.130306, 31.233944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810265, 33.090775, 31.158630>,  <38.091709, 32.378716, 31.280029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810265, 33.090775, 31.158630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.432819, 33.172024, 31.054066>,  <37.206352, 33.220776, 30.991327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.432819, 33.172024, 31.054066>,  <37.810265, 33.090775, 31.158630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432819, 33.172024, 31.054066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315113, -0.309030, 0.897331,
		0.101488, 0.929107, 0.355613,
		-0.943612, 0.203127, -0.261411,
		37.149734, 33.232964, 30.975643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448090, 33.380730, 31.810658>,  <37.810265, 33.090775, 31.158630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448090, 33.380730, 31.810658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.152218, 33.254871, 31.572708>,  <36.974693, 33.179356, 31.429939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.152218, 33.254871, 31.572708>,  <37.448090, 33.380730, 31.810658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152218, 33.254871, 31.572708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477346, -0.377776, 0.793364,
		-0.474358, 0.870794, 0.129237,
		-0.739679, -0.314648, -0.594871,
		36.930313, 33.160477, 31.394247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811623, 33.658955, 32.105686>,  <37.448090, 33.380730, 31.810658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811623, 33.658955, 32.105686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.723660, 33.329430, 31.896702>,  <36.670883, 33.131714, 31.771311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.723660, 33.329430, 31.896702>,  <36.811623, 33.658955, 32.105686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723660, 33.329430, 31.896702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432602, -0.397679, 0.809140,
		-0.874356, 0.403952, -0.268933,
		-0.219904, -0.823817, -0.522463,
		36.657688, 33.082283, 31.739964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075195, 33.459770, 32.313744>,  <36.811623, 33.658955, 32.105686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075195, 33.459770, 32.313744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.241055, 33.145103, 32.130783>,  <36.340572, 32.956303, 32.021008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.241055, 33.145103, 32.130783>,  <36.075195, 33.459770, 32.313744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241055, 33.145103, 32.130783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269146, -0.586183, 0.764166,
		-0.869267, -0.193754, -0.454791,
		0.414651, -0.786669, -0.457401,
		36.365452, 32.909103, 31.993563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578949, 32.928951, 32.372482>,  <36.075195, 33.459770, 32.313744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578949, 32.928951, 32.372482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.927776, 32.746078, 32.302647>,  <36.137074, 32.636356, 32.260746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.927776, 32.746078, 32.302647>,  <35.578949, 32.928951, 32.372482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927776, 32.746078, 32.302647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014961, -0.381493, 0.924250,
		-0.489154, -0.803398, -0.339528,
		0.872069, -0.457180, -0.174590,
		36.189396, 32.608925, 32.250271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548561, 32.349400, 32.725029>,  <35.578949, 32.928951, 32.372482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548561, 32.349400, 32.725029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.939041, 32.375469, 32.642288>,  <36.173328, 32.391109, 32.592644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.939041, 32.375469, 32.642288>,  <35.548561, 32.349400, 32.725029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939041, 32.375469, 32.642288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215914, -0.381703, 0.898712,
		-0.020386, -0.921984, -0.386690,
		0.976199, 0.065171, -0.206850,
		36.231899, 32.395020, 32.580235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837425, 31.715717, 32.872101>,  <35.548561, 32.349400, 32.725029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837425, 31.715717, 32.872101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.160954, 31.950933, 32.870258>,  <36.355068, 32.092064, 32.869152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.160954, 31.950933, 32.870258>,  <35.837425, 31.715717, 32.872101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160954, 31.950933, 32.870258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314485, -0.425907, 0.848353,
		0.496902, -0.687613, -0.529412,
		0.808819, 0.588041, -0.004610,
		36.403599, 32.127346, 32.868874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424744, 31.217535, 33.066547>,  <35.837425, 31.715717, 32.872101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424744, 31.217535, 33.066547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.547382, 31.586821, 33.159214>,  <36.620968, 31.808392, 33.214813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.547382, 31.586821, 33.159214>,  <36.424744, 31.217535, 33.066547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547382, 31.586821, 33.159214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254514, -0.314044, 0.914658,
		0.917180, -0.221472, -0.331257,
		0.306601, 0.923215, 0.231667,
		36.639362, 31.863785, 33.228714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028145, 31.070469, 33.419487>,  <36.424744, 31.217535, 33.066547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028145, 31.070469, 33.419487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.926964, 31.438286, 33.539791>,  <36.866257, 31.658976, 33.611973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.926964, 31.438286, 33.539791>,  <37.028145, 31.070469, 33.419487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926964, 31.438286, 33.539791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199194, -0.254706, 0.946280,
		0.946751, 0.299271, -0.118739,
		-0.252950, 0.919544, 0.300756,
		36.851078, 31.714149, 33.630016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629974, 31.349846, 33.836117>,  <37.028145, 31.070469, 33.419487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629974, 31.349846, 33.836117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.290520, 31.531107, 33.945271>,  <37.086845, 31.639864, 34.010765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.290520, 31.531107, 33.945271>,  <37.629974, 31.349846, 33.836117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290520, 31.531107, 33.945271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207287, -0.189736, 0.959704,
		0.486669, 0.871007, 0.067084,
		-0.848637, 0.453153, 0.272887,
		37.035927, 31.667053, 34.027138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830891, 31.820810, 34.434196>,  <37.629974, 31.349846, 33.836117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830891, 31.820810, 34.434196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.435612, 31.767042, 34.463577>,  <37.198444, 31.734781, 34.481205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.435612, 31.767042, 34.463577>,  <37.830891, 31.820810, 34.434196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435612, 31.767042, 34.463577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104433, -0.240432, 0.965032,
		-0.112060, 0.961314, 0.251633,
		-0.988199, -0.134420, 0.073450,
		37.139153, 31.726717, 34.485611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591499, 32.079777, 35.098862>,  <37.830891, 31.820810, 34.434196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591499, 32.079777, 35.098862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.345570, 31.795658, 34.961765>,  <37.198013, 31.625187, 34.879509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.345570, 31.795658, 34.961765>,  <37.591499, 32.079777, 35.098862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345570, 31.795658, 34.961765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011889, -0.442883, 0.896500,
		-0.788576, 0.547114, 0.280739,
		-0.614823, -0.710296, -0.342742,
		37.161121, 31.582569, 34.858944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.970768, 34.564735, 27.582605> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587231, 34.456085, 27.549513>,  <37.357109, 34.390896, 27.529657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587231, 34.456085, 27.549513>,  <37.970768, 34.564735, 27.582605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587231, 34.456085, 27.549513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089732, 0.013432, 0.995875,
		-0.269394, 0.962309, -0.037252,
		-0.958841, -0.271625, -0.082731,
		37.299580, 34.374599, 27.524693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510002, 35.036007, 28.002855>,  <37.970768, 34.564735, 27.582605>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510002, 35.036007, 28.002855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282181, 34.709732, 27.962349>,  <37.145489, 34.513966, 27.938046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282181, 34.709732, 27.962349>,  <37.510002, 35.036007, 28.002855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282181, 34.709732, 27.962349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128039, -0.033650, 0.991198,
		-0.811919, 0.577508, -0.085275,
		-0.569556, -0.815691, -0.101264,
		37.111313, 34.465023, 27.931971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799133, 35.153522, 28.299578>,  <37.510002, 35.036007, 28.002855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799133, 35.153522, 28.299578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879982, 34.761780, 28.300295>,  <36.928490, 34.526733, 28.300726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879982, 34.761780, 28.300295>,  <36.799133, 35.153522, 28.299578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879982, 34.761780, 28.300295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059668, 0.014144, 0.998118,
		-0.977541, -0.201636, 0.061295,
		0.202123, -0.979358, 0.001795,
		36.940620, 34.467972, 28.300833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275146, 34.843185, 28.837168>,  <36.799133, 35.153522, 28.299578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275146, 34.843185, 28.837168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570042, 34.579376, 28.778511>,  <36.746979, 34.421089, 28.743317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570042, 34.579376, 28.778511>,  <36.275146, 34.843185, 28.837168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570042, 34.579376, 28.778511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052033, -0.271827, 0.960938,
		-0.673623, -0.700813, -0.234719,
		0.737241, -0.659523, -0.146643,
		36.791214, 34.381519, 28.734518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087357, 34.178917, 29.137241>,  <36.275146, 34.843185, 28.837168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087357, 34.178917, 29.137241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480606, 34.126213, 29.086473>,  <36.716557, 34.094593, 29.056013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480606, 34.126213, 29.086473>,  <36.087357, 34.178917, 29.137241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480606, 34.126213, 29.086473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074707, -0.344150, 0.935938,
		-0.166993, -0.929625, -0.328499,
		0.983123, -0.131754, -0.126920,
		36.775543, 34.086685, 29.048397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263351, 33.501789, 29.315229>,  <36.087357, 34.178917, 29.137241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263351, 33.501789, 29.315229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598763, 33.714958, 29.360615>,  <36.800007, 33.842857, 29.387846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598763, 33.714958, 29.360615>,  <36.263351, 33.501789, 29.315229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598763, 33.714958, 29.360615> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178495, -0.465425, 0.866902,
		0.514798, -0.706665, -0.485394,
		0.838524, 0.532920, 0.113464,
		36.850319, 33.874836, 29.394653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717789, 32.906345, 29.413506>,  <36.263351, 33.501789, 29.315229>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717789, 32.906345, 29.413506> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863640, 33.248631, 29.560369>,  <36.951153, 33.454002, 29.648489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863640, 33.248631, 29.560369>,  <36.717789, 32.906345, 29.413506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863640, 33.248631, 29.560369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124578, -0.435594, 0.891481,
		0.922781, -0.279320, -0.265433,
		0.364630, 0.855709, 0.367161,
		36.973030, 33.505344, 29.670517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334850, 32.795341, 29.749763>,  <36.717789, 32.906345, 29.413506>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334850, 32.795341, 29.749763> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206566, 33.129757, 29.927835>,  <37.129597, 33.330406, 30.034679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206566, 33.129757, 29.927835>,  <37.334850, 32.795341, 29.749763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206566, 33.129757, 29.927835> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026106, -0.462028, 0.886481,
		0.946819, 0.295922, 0.126350,
		-0.320707, 0.836038, 0.445182,
		37.110355, 33.380569, 30.061390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682026, 32.755047, 30.419598>,  <37.334850, 32.795341, 29.749763>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682026, 32.755047, 30.419598> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370358, 33.005539, 30.430399>,  <37.183357, 33.155834, 30.436880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370358, 33.005539, 30.430399>,  <37.682026, 32.755047, 30.419598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370358, 33.005539, 30.430399> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267980, -0.371754, 0.888811,
		0.566639, 0.685299, 0.457477,
		-0.779171, 0.626230, 0.027004,
		37.136608, 33.193409, 30.438499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426167, 32.766953, 30.692165>,  <37.682026, 32.755047, 30.419598>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426167, 32.766953, 30.692165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687595, 32.468590, 30.743496>,  <38.844452, 32.289574, 30.774294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687595, 32.468590, 30.743496>,  <38.426167, 32.766953, 30.692165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687595, 32.468590, 30.743496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277272, 0.078203, -0.957604,
		0.704248, 0.661443, 0.257930,
		0.653571, -0.745907, 0.128325,
		38.883667, 32.244816, 30.781994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109638, 33.039867, 30.476578>,  <38.426167, 32.766953, 30.692165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109638, 33.039867, 30.476578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105328, 32.640804, 30.449581>,  <39.102741, 32.401367, 30.433382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105328, 32.640804, 30.449581>,  <39.109638, 33.039867, 30.476578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105328, 32.640804, 30.449581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246929, 0.062752, -0.967000,
		0.968974, -0.027086, 0.245675,
		-0.010776, -0.997662, -0.067493,
		39.102097, 32.341507, 30.429333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568623, 32.912956, 29.928648>,  <39.109638, 33.039867, 30.476578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568623, 32.912956, 29.928648> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359951, 32.574265, 29.970425>,  <39.234749, 32.371052, 29.995491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359951, 32.574265, 29.970425>,  <39.568623, 32.912956, 29.928648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359951, 32.574265, 29.970425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047824, -0.093202, -0.994498,
		0.851800, -0.523804, 0.008128,
		-0.521679, -0.846725, 0.104440,
		39.203445, 32.320248, 30.001757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957630, 32.449173, 29.515951>,  <39.568623, 32.912956, 29.928648>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957630, 32.449173, 29.515951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577957, 32.327385, 29.547825>,  <39.350155, 32.254311, 29.566948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577957, 32.327385, 29.547825>,  <39.957630, 32.449173, 29.515951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577957, 32.327385, 29.547825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014339, -0.211083, -0.977363,
		0.314400, -0.928838, 0.195991,
		-0.949183, -0.304472, 0.079683,
		39.293201, 32.236042, 29.571730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992229, 31.797594, 29.154119>,  <39.957630, 32.449173, 29.515951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992229, 31.797594, 29.154119> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619701, 31.942488, 29.169264>,  <39.396187, 32.029423, 29.178350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619701, 31.942488, 29.169264>,  <39.992229, 31.797594, 29.154119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619701, 31.942488, 29.169264> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045007, -0.011309, -0.998923,
		-0.361414, -0.932019, 0.026836,
		-0.931319, 0.362232, 0.037860,
		39.340305, 32.051159, 29.180622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514870, 31.364368, 28.652426>,  <39.992229, 31.797594, 29.154119>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514870, 31.364368, 28.652426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298389, 31.695868, 28.709389>,  <39.168499, 31.894766, 28.743567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298389, 31.695868, 28.709389>,  <39.514870, 31.364368, 28.652426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298389, 31.695868, 28.709389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237196, 0.012020, -0.971388,
		-0.806745, -0.559496, 0.190070,
		-0.541202, 0.828746, 0.142407,
		39.136028, 31.944492, 28.752111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994267, 31.236109, 28.169519>,  <39.514870, 31.364368, 28.652426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994267, 31.236109, 28.169519> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982113, 31.623137, 28.269825>,  <38.974823, 31.855354, 28.330009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982113, 31.623137, 28.269825>,  <38.994267, 31.236109, 28.169519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982113, 31.623137, 28.269825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487872, 0.204613, -0.848596,
		-0.872386, -0.148122, 0.465835,
		-0.030380, 0.967571, 0.250766,
		38.973000, 31.913408, 28.345055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299816, 31.423626, 27.883102>,  <38.994267, 31.236109, 28.169519>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299816, 31.423626, 27.883102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513592, 31.757364, 27.937128>,  <38.641857, 31.957607, 27.969543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513592, 31.757364, 27.937128>,  <38.299816, 31.423626, 27.883102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513592, 31.757364, 27.937128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182672, 0.270046, -0.945360,
		-0.825231, 0.480565, 0.296735,
		0.534439, 0.834346, 0.135064,
		38.673923, 32.007668, 27.977648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977547, 31.854467, 27.592596>,  <38.299816, 31.423626, 27.883102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977547, 31.854467, 27.592596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330879, 32.041897, 27.597813>,  <38.542877, 32.154354, 27.600943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330879, 32.041897, 27.597813>,  <37.977547, 31.854467, 27.592596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330879, 32.041897, 27.597813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153351, 0.315158, -0.936568,
		-0.442960, 0.825298, 0.350244,
		0.883329, 0.468572, 0.013042,
		38.595879, 32.182468, 27.601725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855751, 32.514751, 27.284174>,  <37.977547, 31.854467, 27.592596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855751, 32.514751, 27.284174> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242905, 32.419365, 27.252338>,  <38.475197, 32.362133, 27.233236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242905, 32.419365, 27.252338>,  <37.855751, 32.514751, 27.284174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242905, 32.419365, 27.252338> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022655, 0.232566, -0.972317,
		0.250379, 0.942892, 0.219694,
		0.967883, -0.238470, -0.079591,
		38.533268, 32.347824, 27.228460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096340, 33.027687, 26.897484>,  <37.855751, 32.514751, 27.284174>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096340, 33.027687, 26.897484> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386604, 32.755711, 26.855360>,  <38.560764, 32.592525, 26.830086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386604, 32.755711, 26.855360>,  <38.096340, 33.027687, 26.897484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386604, 32.755711, 26.855360> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093717, 0.249300, -0.963881,
		0.681640, 0.689582, 0.244629,
		0.725661, -0.679945, -0.105307,
		38.604301, 32.551727, 26.823769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631001, 33.325020, 26.429848>,  <38.096340, 33.027687, 26.897484>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631001, 33.325020, 26.429848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705910, 32.932396, 26.414564>,  <38.750854, 32.696819, 26.405394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705910, 32.932396, 26.414564>,  <38.631001, 33.325020, 26.429848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705910, 32.932396, 26.414564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369800, 0.106483, -0.922989,
		0.910042, 0.158723, 0.382924,
		0.187275, -0.981564, -0.038208,
		38.762093, 32.637928, 26.403101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269150, 33.288116, 26.130190>,  <38.631001, 33.325020, 26.429848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269150, 33.288116, 26.130190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092327, 32.930012, 26.107944>,  <38.986233, 32.715149, 26.094597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092327, 32.930012, 26.107944>,  <39.269150, 33.288116, 26.130190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092327, 32.930012, 26.107944> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203605, -0.039767, -0.978245,
		0.873572, -0.443765, 0.199859,
		-0.442059, -0.895260, -0.055613,
		38.959709, 32.661434, 26.091261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770187, 32.841885, 25.707726>,  <39.269150, 33.288116, 26.130190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.770187, 32.841885, 25.707726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425655, 32.638683, 25.710262>,  <39.218937, 32.516762, 25.711784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425655, 32.638683, 25.710262>,  <39.770187, 32.841885, 25.707726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425655, 32.638683, 25.710262> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113852, -0.205177, -0.972080,
		0.495122, -0.836561, 0.234563,
		-0.861332, -0.508004, 0.006344,
		39.167255, 32.486282, 25.712166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.924114, 28.579298, 23.951223> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.152439, 28.885702, 24.069475>,  <33.289436, 29.069544, 24.140427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.152439, 28.885702, 24.069475>,  <32.924114, 28.579298, 23.951223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152439, 28.885702, 24.069475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006725, -0.364400, 0.931218,
		0.821050, -0.529566, -0.213157,
		0.570816, 0.766011, 0.295629,
		33.323685, 29.115505, 24.158163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551537, 28.361467, 24.292225>,  <32.924114, 28.579298, 23.951223>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551537, 28.361467, 24.292225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.502182, 28.737825, 24.418396>,  <33.472569, 28.963640, 24.494099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.502182, 28.737825, 24.418396>,  <33.551537, 28.361467, 24.292225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502182, 28.737825, 24.418396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061538, -0.309989, 0.948747,
		0.990449, 0.136472, -0.019652,
		-0.123386, 0.940894, 0.315427,
		33.465168, 29.020094, 24.513023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049931, 28.516520, 24.808327>,  <33.551537, 28.361467, 24.292225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049931, 28.516520, 24.808327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.774960, 28.794708, 24.892008>,  <33.609978, 28.961622, 24.942217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.774960, 28.794708, 24.892008>,  <34.049931, 28.516520, 24.808327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774960, 28.794708, 24.892008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068667, -0.224528, 0.972045,
		0.723003, 0.682573, 0.106590,
		-0.687424, 0.695472, 0.209204,
		33.568733, 29.003349, 24.954769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236477, 28.883478, 25.498352>,  <34.049931, 28.516520, 24.808327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236477, 28.883478, 25.498352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.850330, 28.985098, 25.474571>,  <33.618645, 29.046070, 25.460302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.850330, 28.985098, 25.474571>,  <34.236477, 28.883478, 25.498352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850330, 28.985098, 25.474571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093380, -0.123648, 0.987923,
		0.243630, 0.959255, 0.143088,
		-0.965362, 0.254049, -0.059451,
		33.560722, 29.061312, 25.456736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125828, 29.347862, 26.078333>,  <34.236477, 28.883478, 25.498352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125828, 29.347862, 26.078333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.761215, 29.215210, 25.981071>,  <33.542446, 29.135618, 25.922714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.761215, 29.215210, 25.981071>,  <34.125828, 29.347862, 26.078333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761215, 29.215210, 25.981071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236025, -0.062279, 0.969749,
		-0.336742, 0.941351, -0.021503,
		-0.911536, -0.331630, -0.243155,
		33.487755, 29.115721, 25.908125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516968, 29.815477, 26.400116>,  <34.125828, 29.347862, 26.078333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516968, 29.815477, 26.400116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.414082, 29.432030, 26.351301>,  <33.352348, 29.201962, 26.322012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.414082, 29.432030, 26.351301>,  <33.516968, 29.815477, 26.400116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414082, 29.432030, 26.351301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208434, -0.068279, 0.975650,
		-0.943607, 0.276390, -0.182246,
		-0.257217, -0.958617, -0.122037,
		33.336918, 29.144445, 26.314690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035847, 29.752668, 26.907516>,  <33.516968, 29.815477, 26.400116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035847, 29.752668, 26.907516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.087128, 29.368801, 26.807436>,  <33.117897, 29.138481, 26.747389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.087128, 29.368801, 26.807436>,  <33.035847, 29.752668, 26.907516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087128, 29.368801, 26.807436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041282, -0.257226, 0.965469,
		-0.990888, -0.113449, -0.072595,
		0.128205, -0.959669, -0.250199,
		33.125587, 29.080900, 26.732376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612461, 29.329346, 27.411785>,  <33.035847, 29.752668, 26.907516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.612461, 29.329346, 27.411785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.899883, 29.093933, 27.263567>,  <33.072338, 28.952686, 27.174637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.899883, 29.093933, 27.263567>,  <32.612461, 29.329346, 27.411785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899883, 29.093933, 27.263567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004269, -0.529059, 0.848575,
		-0.695454, -0.611332, -0.377647,
		0.718558, -0.588533, -0.370546,
		33.115452, 28.917374, 27.152403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510277, 28.676226, 27.702282>,  <32.612461, 29.329346, 27.411785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510277, 28.676226, 27.702282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.895947, 28.626947, 27.608315>,  <33.127350, 28.597380, 27.551933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.895947, 28.626947, 27.608315>,  <32.510277, 28.676226, 27.702282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895947, 28.626947, 27.608315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190562, -0.294385, 0.936495,
		-0.184528, -0.947713, -0.260363,
		0.964176, -0.123195, -0.234920,
		33.185200, 28.589989, 27.537838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702915, 28.010042, 27.944199>,  <32.510277, 28.676226, 27.702282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702915, 28.010042, 27.944199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.013691, 28.257078, 27.895300>,  <33.200157, 28.405300, 27.865961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.013691, 28.257078, 27.895300>,  <32.702915, 28.010042, 27.944199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013691, 28.257078, 27.895300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304714, -0.198971, 0.931429,
		0.550918, -0.760916, -0.342778,
		0.776942, 0.617590, -0.122245,
		33.246773, 28.442354, 27.858625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212936, 27.613934, 28.283894>,  <32.702915, 28.010042, 27.944199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212936, 27.613934, 28.283894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.383228, 27.975254, 28.262707>,  <33.485401, 28.192045, 28.249994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.383228, 27.975254, 28.262707>,  <33.212936, 27.613934, 28.283894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383228, 27.975254, 28.262707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278316, -0.075023, 0.957555,
		0.860986, -0.422398, -0.283342,
		0.425727, 0.903300, -0.052966,
		33.510948, 28.246244, 28.246817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785526, 27.510365, 28.664217>,  <33.212936, 27.613934, 28.283894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785526, 27.510365, 28.664217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.712563, 27.903629, 28.659811>,  <33.668785, 28.139587, 28.657167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.712563, 27.903629, 28.659811>,  <33.785526, 27.510365, 28.664217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712563, 27.903629, 28.659811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329616, 0.071704, 0.941388,
		0.926325, 0.168091, -0.337145,
		-0.182414, 0.983160, -0.011016,
		33.657837, 28.198578, 28.656506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313660, 27.800667, 29.009455>,  <33.785526, 27.510365, 28.664217>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313660, 27.800667, 29.009455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.037914, 28.089420, 29.033632>,  <33.872467, 28.262672, 29.048140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.037914, 28.089420, 29.033632>,  <34.313660, 27.800667, 29.009455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037914, 28.089420, 29.033632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309497, 0.218055, 0.925561,
		0.654969, 0.656760, -0.373741,
		-0.689368, 0.721885, 0.060446,
		33.831104, 28.305986, 29.051765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688889, 28.297527, 29.474382>,  <34.313660, 27.800667, 29.009455>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688889, 28.297527, 29.474382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.296631, 28.373205, 29.454243>,  <34.061275, 28.418612, 29.442158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.296631, 28.373205, 29.454243>,  <34.688889, 28.297527, 29.474382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296631, 28.373205, 29.454243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010330, 0.206820, 0.978324,
		0.195505, 0.959912, -0.200864,
		-0.980648, 0.189193, -0.050350,
		34.002438, 28.429962, 29.439138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293919, 28.692690, 29.442947>,  <34.688889, 28.297527, 29.474382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293919, 28.692690, 29.442947> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.608662, 28.445959, 29.450764>,  <35.797508, 28.297920, 29.455454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.608662, 28.445959, 29.450764>,  <35.293919, 28.692690, 29.442947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608662, 28.445959, 29.450764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110796, 0.110050, -0.987731,
		0.607110, 0.779367, 0.154935,
		0.786856, -0.616828, 0.019539,
		35.844719, 28.260910, 29.456625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900730, 29.050133, 29.097130>,  <35.293919, 28.692690, 29.442947>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900730, 29.050133, 29.097130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.972359, 28.658041, 29.063459>,  <36.015335, 28.422787, 29.043257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.972359, 28.658041, 29.063459>,  <35.900730, 29.050133, 29.097130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972359, 28.658041, 29.063459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301910, 0.136182, -0.943560,
		0.936367, 0.143555, 0.320327,
		0.179075, -0.980228, -0.084176,
		36.026081, 28.363972, 29.038206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564396, 28.999407, 28.909327>,  <35.900730, 29.050133, 29.097130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564396, 28.999407, 28.909327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.393063, 28.655109, 28.799305>,  <36.290264, 28.448532, 28.733292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.393063, 28.655109, 28.799305>,  <36.564396, 28.999407, 28.909327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393063, 28.655109, 28.799305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512929, 0.018996, -0.858221,
		0.743931, -0.508688, 0.433363,
		-0.428334, -0.860741, -0.275053,
		36.264561, 28.396887, 28.716789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040028, 28.689545, 28.449205>,  <36.564396, 28.999407, 28.909327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040028, 28.689545, 28.449205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.711632, 28.481081, 28.355946>,  <36.514595, 28.356003, 28.299990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.711632, 28.481081, 28.355946>,  <37.040028, 28.689545, 28.449205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711632, 28.481081, 28.355946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314272, -0.071585, -0.946630,
		0.476657, -0.850451, 0.222558,
		-0.820994, -0.521161, -0.233152,
		36.465332, 28.324732, 28.285999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169247, 28.031773, 27.996338>,  <37.040028, 28.689545, 28.449205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169247, 28.031773, 27.996338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.778412, 28.082056, 27.927629>,  <36.543911, 28.112226, 27.886404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.778412, 28.082056, 27.927629>,  <37.169247, 28.031773, 27.996338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778412, 28.082056, 27.927629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151693, -0.154867, -0.976220,
		-0.149285, -0.979909, 0.132255,
		-0.977089, 0.125673, -0.171765,
		36.485287, 28.119768, 27.876099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987335, 27.588915, 27.516510>,  <37.169247, 28.031773, 27.996338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987335, 27.588915, 27.516510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.711491, 27.877920, 27.496843>,  <36.545986, 28.051323, 27.485044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.711491, 27.877920, 27.496843>,  <36.987335, 27.588915, 27.516510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711491, 27.877920, 27.496843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013959, -0.081141, -0.996605,
		-0.724049, -0.686579, 0.066041,
		-0.689607, 0.722513, -0.049166,
		36.504608, 28.094673, 27.482094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418781, 27.303762, 27.010178>,  <36.987335, 27.588915, 27.516510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418781, 27.303762, 27.010178> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.380234, 27.701487, 27.028318>,  <36.357105, 27.940121, 27.039202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.380234, 27.701487, 27.028318>,  <36.418781, 27.303762, 27.010178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380234, 27.701487, 27.028318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080357, 0.037642, -0.996055,
		-0.992096, -0.099633, 0.076272,
		-0.096369, 0.994312, 0.045350,
		36.351322, 27.999781, 27.041924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964703, 27.325809, 26.455507>,  <36.418781, 27.303762, 27.010178>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964703, 27.325809, 26.455507> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.108215, 27.693768, 26.518845>,  <36.194324, 27.914541, 26.556847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.108215, 27.693768, 26.518845>,  <35.964703, 27.325809, 26.455507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108215, 27.693768, 26.518845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019852, 0.177118, -0.983989,
		-0.933210, 0.349894, 0.081808,
		0.358782, 0.919893, 0.158342,
		36.215851, 27.969736, 26.566347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573151, 27.803469, 26.022993>,  <35.964703, 27.325809, 26.455507>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573151, 27.803469, 26.022993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.898830, 28.021444, 26.103119>,  <36.094238, 28.152229, 26.151194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.898830, 28.021444, 26.103119>,  <35.573151, 27.803469, 26.022993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898830, 28.021444, 26.103119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124748, 0.172759, -0.977032,
		-0.567027, 0.820486, 0.072680,
		0.814198, 0.544937, 0.200313,
		36.143089, 28.184925, 26.163214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447216, 28.475779, 25.862724>,  <35.573151, 27.803469, 26.022993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447216, 28.475779, 25.862724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.839630, 28.403120, 25.835678>,  <36.075077, 28.359524, 25.819450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.839630, 28.403120, 25.835678>,  <35.447216, 28.475779, 25.862724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839630, 28.403120, 25.835678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014144, 0.415019, -0.909703,
		0.193308, 0.891495, 0.409718,
		0.981036, -0.181648, -0.067617,
		36.133942, 28.348625, 25.815393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758720, 29.071083, 25.659077>,  <35.447216, 28.475779, 25.862724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758720, 29.071083, 25.659077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.046467, 28.806561, 25.574055>,  <36.219116, 28.647846, 25.523043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.046467, 28.806561, 25.574055>,  <35.758720, 29.071083, 25.659077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046467, 28.806561, 25.574055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035852, 0.340938, -0.939402,
		0.693700, 0.668158, 0.268970,
		0.719371, -0.661307, -0.212554,
		36.262280, 28.608168, 25.510288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161560, 29.453915, 25.226995>,  <35.758720, 29.071083, 25.659077>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161560, 29.453915, 25.226995> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.290699, 29.082687, 25.152740>,  <36.368183, 28.859951, 25.108187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.290699, 29.082687, 25.152740>,  <36.161560, 29.453915, 25.226995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290699, 29.082687, 25.152740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131656, 0.238272, -0.962233,
		0.937249, 0.286216, 0.199112,
		0.322849, -0.928066, -0.185638,
		36.387554, 28.804268, 25.097050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774471, 29.570539, 24.817167>,  <36.161560, 29.453915, 25.226995>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774471, 29.570539, 24.817167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.673275, 29.188663, 24.754478>,  <36.612556, 28.959538, 24.716866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.673275, 29.188663, 24.754478>,  <36.774471, 29.570539, 24.817167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673275, 29.188663, 24.754478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124793, 0.128437, -0.983835,
		0.959388, -0.268455, 0.086646,
		-0.252987, -0.954691, -0.156722,
		36.597378, 28.902256, 24.707462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304451, 29.127222, 24.423563>,  <36.774471, 29.570539, 24.817167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304451, 29.127222, 24.423563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.924351, 29.020008, 24.360092>,  <36.696289, 28.955679, 24.322010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.924351, 29.020008, 24.360092>,  <37.304451, 29.127222, 24.423563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924351, 29.020008, 24.360092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083036, 0.273009, -0.958421,
		0.300219, -0.923915, -0.237169,
		-0.950249, -0.268043, -0.158681,
		36.639275, 28.939598, 24.312489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996723, 28.813639, 24.509899>,  <37.304451, 29.127222, 24.423563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996723, 28.813639, 24.509899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.386299, 28.875824, 24.443853>,  <38.620045, 28.913136, 24.404226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.386299, 28.875824, 24.443853>,  <37.996723, 28.813639, 24.509899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386299, 28.875824, 24.443853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206986, -0.311817, 0.927322,
		0.092680, -0.937337, -0.335872,
		0.973944, 0.155464, -0.165116,
		38.678482, 28.922462, 24.394318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452385, 28.280060, 24.716217>,  <37.996723, 28.813639, 24.509899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452385, 28.280060, 24.716217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.705563, 28.587709, 24.751606>,  <38.857468, 28.772299, 24.772840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.705563, 28.587709, 24.751606>,  <38.452385, 28.280060, 24.716217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705563, 28.587709, 24.751606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181177, -0.258256, 0.948936,
		0.752699, -0.584595, -0.302809,
		0.632945, 0.769125, 0.088474,
		38.895447, 28.818447, 24.778149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093903, 28.049564, 24.991873>,  <38.452385, 28.280060, 24.716217>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093903, 28.049564, 24.991873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.091213, 28.438118, 25.086838>,  <39.089600, 28.671251, 25.143816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.091213, 28.438118, 25.086838>,  <39.093903, 28.049564, 24.991873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091213, 28.438118, 25.086838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234615, -0.229259, 0.944667,
		0.972065, 0.062049, -0.226361,
		-0.006720, 0.971386, 0.237413,
		39.089199, 28.729534, 25.158062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667095, 28.071426, 25.392878>,  <39.093903, 28.049564, 24.991873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667095, 28.071426, 25.392878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.479126, 28.412556, 25.483976>,  <39.366344, 28.617233, 25.538635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.479126, 28.412556, 25.483976>,  <39.667095, 28.071426, 25.392878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479126, 28.412556, 25.483976> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275093, -0.103669, 0.955812,
		0.838748, 0.511807, -0.185889,
		-0.469920, 0.852822, 0.227747,
		39.338150, 28.668402, 25.552299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103477, 28.375450, 25.781042>,  <39.667095, 28.071426, 25.392878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103477, 28.375450, 25.781042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.767578, 28.550762, 25.909254>,  <39.566040, 28.655949, 25.986181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.767578, 28.550762, 25.909254>,  <40.103477, 28.375450, 25.781042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767578, 28.550762, 25.909254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307500, -0.102673, 0.945993,
		0.447519, 0.892955, -0.048552,
		-0.839744, 0.438279, 0.320532,
		39.515656, 28.682245, 26.005413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358677, 28.644571, 26.440531>,  <40.103477, 28.375450, 25.781042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.358677, 28.644571, 26.440531> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.960987, 28.681299, 26.462738>,  <39.722374, 28.703337, 26.476063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.960987, 28.681299, 26.462738>,  <40.358677, 28.644571, 26.440531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960987, 28.681299, 26.462738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040162, -0.161335, 0.986082,
		0.099499, 0.982619, 0.156716,
		-0.994227, 0.091820, 0.055517,
		39.662720, 28.708845, 26.479393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186016, 29.216036, 26.974642>,  <40.358677, 28.644571, 26.440531>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186016, 29.216036, 26.974642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.886002, 28.957043, 26.920660>,  <39.705994, 28.801647, 26.888271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.886002, 28.957043, 26.920660>,  <40.186016, 29.216036, 26.974642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886002, 28.957043, 26.920660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073448, -0.284319, 0.955912,
		-0.657308, 0.707055, 0.260805,
		-0.750034, -0.647485, -0.134953,
		39.660992, 28.762796, 26.880175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732727, 29.338888, 27.442461>,  <40.186016, 29.216036, 26.974642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732727, 29.338888, 27.442461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.584343, 28.977108, 27.358215>,  <39.495312, 28.760040, 27.307667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.584343, 28.977108, 27.358215>,  <39.732727, 29.338888, 27.442461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584343, 28.977108, 27.358215> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219512, -0.134968, 0.966229,
		-0.902331, 0.404669, -0.148469,
		-0.370964, -0.904449, -0.210615,
		39.473053, 28.705774, 27.295031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095470, 29.193987, 27.845377>,  <39.732727, 29.338888, 27.442461>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095470, 29.193987, 27.845377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.180180, 28.814466, 27.751633>,  <39.231007, 28.586754, 27.695385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.180180, 28.814466, 27.751633>,  <39.095470, 29.193987, 27.845377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180180, 28.814466, 27.751633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157944, -0.269875, 0.949853,
		-0.964472, -0.164135, -0.207009,
		0.211771, -0.948803, -0.234363,
		39.243710, 28.529825, 27.681324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581482, 28.913202, 28.075701>,  <39.095470, 29.193987, 27.845377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581482, 28.913202, 28.075701> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.881573, 28.649179, 28.060331>,  <39.061626, 28.490765, 28.051109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.881573, 28.649179, 28.060331>,  <38.581482, 28.913202, 28.075701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881573, 28.649179, 28.060331> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155849, -0.233015, 0.959904,
		-0.642546, -0.714162, -0.277684,
		0.750231, -0.660059, -0.038421,
		39.106644, 28.451162, 28.048805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295494, 28.357941, 28.333824>,  <38.581482, 28.913202, 28.075701>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295494, 28.357941, 28.333824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.686588, 28.289450, 28.382334>,  <38.921246, 28.248354, 28.411440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.686588, 28.289450, 28.382334>,  <38.295494, 28.357941, 28.333824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686588, 28.289450, 28.382334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139605, -0.099376, 0.985208,
		-0.156648, -0.980206, -0.121069,
		0.977738, -0.171233, 0.121274,
		38.979912, 28.238081, 28.418716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392338, 27.689686, 28.671497>,  <38.295494, 28.357941, 28.333824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392338, 27.689686, 28.671497> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.734550, 27.883982, 28.743193>,  <38.939877, 28.000561, 28.786211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.734550, 27.883982, 28.743193>,  <38.392338, 27.689686, 28.671497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734550, 27.883982, 28.743193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134191, -0.126333, 0.982870,
		0.500065, -0.864924, -0.042899,
		0.855527, 0.485742, 0.179240,
		38.991207, 28.029705, 28.796965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671940, 27.324539, 29.134285>,  <38.392338, 27.689686, 28.671497>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671940, 27.324539, 29.134285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.869087, 27.670511, 29.172178>,  <38.987377, 27.878096, 29.194914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.869087, 27.670511, 29.172178>,  <38.671940, 27.324539, 29.134285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869087, 27.670511, 29.172178> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015995, -0.117861, 0.992901,
		0.869958, -0.487853, -0.071925,
		0.492867, 0.864932, 0.094731,
		39.016949, 27.929991, 29.200598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240448, 27.251190, 29.551472>,  <38.671940, 27.324539, 29.134285>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240448, 27.251190, 29.551472> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.173119, 27.644909, 29.572744>,  <39.132721, 27.881140, 29.585508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.173119, 27.644909, 29.572744>,  <39.240448, 27.251190, 29.551472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173119, 27.644909, 29.572744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159622, -0.026023, 0.986835,
		0.972722, 0.174596, -0.152735,
		-0.168323, 0.984296, 0.053182,
		39.122623, 27.940197, 29.588699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.896336, 32.223186, 25.361370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.506271, 32.304218, 25.325558>,  <39.272232, 32.352837, 25.304071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.506271, 32.304218, 25.325558>,  <39.896336, 32.223186, 25.361370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506271, 32.304218, 25.325558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077168, -0.068128, -0.994688,
		-0.207606, -0.976892, 0.050803,
		-0.975164, 0.202583, -0.089529,
		39.213722, 32.364994, 25.298698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530148, 31.681099, 24.932146>,  <39.896336, 32.223186, 25.361370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530148, 31.681099, 24.932146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.307335, 32.012730, 24.912779>,  <39.173649, 32.211708, 24.901159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.307335, 32.012730, 24.912779>,  <39.530148, 31.681099, 24.932146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307335, 32.012730, 24.912779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155556, -0.161426, -0.974548,
		-0.815792, -0.535323, 0.218888,
		-0.557032, 0.829078, -0.048417,
		39.140224, 32.261452, 24.898254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289879, 31.533512, 24.329187>,  <39.530148, 31.681099, 24.932146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289879, 31.533512, 24.329187> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.175587, 31.911705, 24.391701>,  <39.107014, 32.138622, 24.429209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.175587, 31.911705, 24.391701>,  <39.289879, 31.533512, 24.329187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175587, 31.911705, 24.391701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059385, 0.180239, -0.981829,
		-0.956470, -0.271253, -0.107646,
		-0.285727, 0.945482, 0.156285,
		39.089870, 32.195351, 24.438587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889759, 31.564053, 23.796148>,  <39.289879, 31.533512, 24.329187>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889759, 31.564053, 23.796148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.955330, 31.944921, 23.899296>,  <38.994675, 32.173443, 23.961185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.955330, 31.944921, 23.899296>,  <38.889759, 31.564053, 23.796148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955330, 31.944921, 23.899296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127904, 0.279716, -0.951525,
		-0.978145, 0.123002, 0.167641,
		0.163931, 0.952171, 0.257870,
		39.004509, 32.230572, 23.976658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372139, 32.033417, 23.376080>,  <38.889759, 31.564053, 23.796148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372139, 32.033417, 23.376080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.673973, 32.266609, 23.496567>,  <38.855076, 32.406525, 23.568859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.673973, 32.266609, 23.496567>,  <38.372139, 32.033417, 23.376080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673973, 32.266609, 23.496567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160909, 0.280629, -0.946232,
		-0.636164, 0.762484, 0.117953,
		0.754588, 0.582979, 0.301217,
		38.900349, 32.441502, 23.586931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341629, 32.682354, 22.942581>,  <38.372139, 32.033417, 23.376080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341629, 32.682354, 22.942581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.723690, 32.695889, 23.060253>,  <38.952927, 32.704010, 23.130857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.723690, 32.695889, 23.060253>,  <38.341629, 32.682354, 22.942581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723690, 32.695889, 23.060253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266815, 0.332580, -0.904544,
		-0.128441, 0.942468, 0.308637,
		0.955151, 0.033832, 0.294181,
		39.010235, 32.706039, 23.148508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597477, 33.229843, 22.632032>,  <38.341629, 32.682354, 22.942581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597477, 33.229843, 22.632032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.929848, 33.033257, 22.736355>,  <39.129269, 32.915306, 22.798948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.929848, 33.033257, 22.736355>,  <38.597477, 33.229843, 22.632032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929848, 33.033257, 22.736355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413502, 0.231860, -0.880487,
		0.372259, 0.839465, 0.395881,
		0.830927, -0.491467, 0.260808,
		39.179127, 32.885815, 22.814598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144543, 33.587158, 22.382618>,  <38.597477, 33.229843, 22.632032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144543, 33.587158, 22.382618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.305630, 33.223614, 22.426056>,  <39.402283, 33.005486, 22.452120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.305630, 33.223614, 22.426056>,  <39.144543, 33.587158, 22.382618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305630, 33.223614, 22.426056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569049, 0.155667, -0.807435,
		0.716941, 0.386963, 0.579875,
		0.402715, -0.908861, 0.108597,
		39.426445, 32.950954, 22.458635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807774, 33.697903, 22.238243>,  <39.144543, 33.587158, 22.382618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.807774, 33.697903, 22.238243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.730427, 33.307980, 22.193775>,  <39.684017, 33.074024, 22.167093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.730427, 33.307980, 22.193775>,  <39.807774, 33.697903, 22.238243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730427, 33.307980, 22.193775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232391, 0.064578, -0.970476,
		0.953206, -0.213496, 0.214049,
		-0.193370, -0.974807, -0.111171,
		39.672417, 33.015537, 22.160423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198536, 33.460869, 21.620806>,  <39.807774, 33.697903, 22.238243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198536, 33.460869, 21.620806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.939732, 33.161095, 21.676996>,  <39.784451, 32.981232, 21.710711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.939732, 33.161095, 21.676996>,  <40.198536, 33.460869, 21.620806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939732, 33.161095, 21.676996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071104, -0.242737, -0.967483,
		0.759162, -0.615979, 0.210340,
		-0.647006, -0.749432, 0.140478,
		39.745628, 32.936264, 21.719139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527382, 32.991707, 21.264278>,  <40.198536, 33.460869, 21.620806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527382, 32.991707, 21.264278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.142078, 32.884464, 21.270508>,  <39.910896, 32.820118, 21.274244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.142078, 32.884464, 21.270508>,  <40.527382, 32.991707, 21.264278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142078, 32.884464, 21.270508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029284, 0.047218, -0.998455,
		0.266961, -0.962230, -0.053335,
		-0.963262, -0.268110, 0.015572,
		39.853100, 32.804031, 21.275179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488647, 32.539925, 20.758474>,  <40.527382, 32.991707, 21.264278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.488647, 32.539925, 20.758474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.128880, 32.708439, 20.805061>,  <39.913017, 32.809547, 20.833014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.128880, 32.708439, 20.805061>,  <40.488647, 32.539925, 20.758474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128880, 32.708439, 20.805061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112952, 0.033386, -0.993039,
		-0.422242, -0.906313, 0.017557,
		-0.899418, 0.421286, 0.116467,
		39.859055, 32.834824, 20.840002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005283, 32.139618, 20.387606>,  <40.488647, 32.539925, 20.758474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.005283, 32.139618, 20.387606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.888947, 32.520641, 20.423462>,  <39.819145, 32.749256, 20.444975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.888947, 32.520641, 20.423462>,  <40.005283, 32.139618, 20.387606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888947, 32.520641, 20.423462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138679, 0.050728, -0.989037,
		-0.946666, -0.300089, 0.117346,
		-0.290846, 0.952562, 0.089638,
		39.801693, 32.806408, 20.450354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544716, 32.250168, 19.899181>,  <40.005283, 32.139618, 20.387606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544716, 32.250168, 19.899181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.653236, 32.619926, 20.006428>,  <39.718349, 32.841782, 20.070776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.653236, 32.619926, 20.006428>,  <39.544716, 32.250168, 19.899181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653236, 32.619926, 20.006428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107626, 0.305949, -0.945945,
		-0.956459, 0.227776, 0.182492,
		0.271297, 0.924399, 0.268114,
		39.734627, 32.897247, 20.086863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679581, 31.839083, 19.327909>,  <39.544716, 32.250168, 19.899181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679581, 31.839083, 19.327909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.537651, 31.483320, 19.212635>,  <39.452492, 31.269863, 19.143471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.537651, 31.483320, 19.212635>,  <39.679581, 31.839083, 19.327909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537651, 31.483320, 19.212635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203511, -0.227377, 0.952304,
		-0.912514, 0.396552, -0.100325,
		-0.354826, -0.889408, -0.288187,
		39.431202, 31.216497, 19.126179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111225, 31.702904, 19.617315>,  <39.679581, 31.839083, 19.327909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111225, 31.702904, 19.617315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.237137, 31.335121, 19.523067>,  <39.312683, 31.114452, 19.466518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.237137, 31.335121, 19.523067>,  <39.111225, 31.702904, 19.617315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237137, 31.335121, 19.523067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202305, -0.307526, 0.929785,
		-0.927354, -0.245013, -0.282814,
		0.314782, -0.919455, -0.235618,
		39.331570, 31.059284, 19.452383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541374, 31.238239, 19.821207>,  <39.111225, 31.702904, 19.617315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541374, 31.238239, 19.821207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.881336, 31.029200, 19.794193>,  <39.085312, 30.903776, 19.777985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.881336, 31.029200, 19.794193>,  <38.541374, 31.238239, 19.821207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881336, 31.029200, 19.794193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084674, -0.261937, 0.961363,
		-0.520096, -0.811344, -0.266871,
		0.849900, -0.522599, -0.067533,
		39.136307, 30.872419, 19.773933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427940, 30.632803, 19.997192>,  <38.541374, 31.238239, 19.821207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427940, 30.632803, 19.997192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.825203, 30.641376, 20.043104>,  <39.063560, 30.646521, 20.070650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.825203, 30.641376, 20.043104>,  <38.427940, 30.632803, 19.997192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825203, 30.641376, 20.043104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095597, -0.415146, 0.904718,
		0.067041, -0.909502, -0.410258,
		0.993160, 0.021434, 0.114777,
		39.123150, 30.647806, 20.077538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533844, 30.007839, 20.275616>,  <38.427940, 30.632803, 19.997192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533844, 30.007839, 20.275616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.849209, 30.233274, 20.374229>,  <39.038425, 30.368536, 20.433397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.849209, 30.233274, 20.374229>,  <38.533844, 30.007839, 20.275616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849209, 30.233274, 20.374229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000876, -0.399738, 0.916629,
		0.615152, -0.722894, -0.314663,
		0.788408, 0.563590, 0.246532,
		39.085732, 30.402351, 20.448189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874878, 29.507107, 20.686745>,  <38.533844, 30.007839, 20.275616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874878, 29.507107, 20.686745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.018341, 29.874006, 20.756046>,  <39.104420, 30.094147, 20.797626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.018341, 29.874006, 20.756046>,  <38.874878, 29.507107, 20.686745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018341, 29.874006, 20.756046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040387, -0.170180, 0.984585,
		0.932593, -0.360131, -0.023992,
		0.358662, 0.917248, 0.173254,
		39.125938, 30.149181, 20.808022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496983, 29.377594, 20.974121>,  <38.874878, 29.507107, 20.686745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496983, 29.377594, 20.974121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.361435, 29.735983, 21.088947>,  <39.280106, 29.951015, 21.157843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.361435, 29.735983, 21.088947>,  <39.496983, 29.377594, 20.974121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361435, 29.735983, 21.088947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076817, -0.330446, 0.940694,
		0.937693, 0.296719, 0.180803,
		-0.338867, 0.895971, 0.287064,
		39.259773, 30.004774, 21.175066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065521, 29.575897, 21.489841>,  <39.496983, 29.377594, 20.974121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065521, 29.575897, 21.489841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.751705, 29.814732, 21.556759>,  <39.563416, 29.958033, 21.596909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.751705, 29.814732, 21.556759>,  <40.065521, 29.575897, 21.489841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751705, 29.814732, 21.556759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066350, -0.349076, 0.934743,
		0.616521, 0.722241, 0.313480,
		-0.784538, 0.597088, 0.167292,
		39.516342, 29.993858, 21.606947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182407, 29.774227, 22.185091>,  <40.065521, 29.575897, 21.489841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.182407, 29.774227, 22.185091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.797741, 29.860443, 22.117289>,  <39.566940, 29.912172, 22.076607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.797741, 29.860443, 22.117289>,  <40.182407, 29.774227, 22.185091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797741, 29.860443, 22.117289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199907, -0.127966, 0.971423,
		0.187689, 0.968074, 0.166149,
		-0.961670, 0.215540, -0.169507,
		39.509239, 29.925104, 22.066437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021477, 30.306755, 22.643690>,  <40.182407, 29.774227, 22.185091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.021477, 30.306755, 22.643690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.676308, 30.119633, 22.567253>,  <39.469204, 30.007359, 22.521391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.676308, 30.119633, 22.567253>,  <40.021477, 30.306755, 22.643690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676308, 30.119633, 22.567253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052915, -0.292424, 0.954824,
		-0.502553, 0.834054, 0.227586,
		-0.862926, -0.467807, -0.191092,
		39.417431, 29.979290, 22.509926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642925, 30.337751, 23.259768>,  <40.021477, 30.306755, 22.643690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642925, 30.337751, 23.259768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.423397, 30.054775, 23.081635>,  <39.291679, 29.884989, 22.974754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.423397, 30.054775, 23.081635>,  <39.642925, 30.337751, 23.259768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423397, 30.054775, 23.081635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180005, -0.420223, 0.889388,
		-0.816328, 0.568278, 0.103286,
		-0.548823, -0.707440, -0.445333,
		39.258751, 29.842543, 22.948034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936943, 30.326990, 23.581297>,  <39.642925, 30.337751, 23.259768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936943, 30.326990, 23.581297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.990746, 29.962385, 23.425833>,  <39.023029, 29.743622, 23.332554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.990746, 29.962385, 23.425833>,  <38.936943, 30.326990, 23.581297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990746, 29.962385, 23.425833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286924, -0.411249, 0.865187,
		-0.948463, -0.004861, -0.316851,
		0.134510, -0.911510, -0.388660,
		39.031097, 29.688932, 23.309235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408371, 29.962954, 23.892662>,  <38.936943, 30.326990, 23.581297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408371, 29.962954, 23.892662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.650307, 29.680218, 23.745937>,  <38.795467, 29.510576, 23.657904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.650307, 29.680218, 23.745937>,  <38.408371, 29.962954, 23.892662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650307, 29.680218, 23.745937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078430, -0.511248, 0.855847,
		-0.792478, -0.488879, -0.364659,
		0.604837, -0.706840, -0.366810,
		38.831757, 29.468166, 23.635895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038651, 29.311361, 23.889359>,  <38.408371, 29.962954, 23.892662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038651, 29.311361, 23.889359> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.432178, 29.250299, 23.926886>,  <38.668293, 29.213661, 23.949402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.432178, 29.250299, 23.926886>,  <38.038651, 29.311361, 23.889359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432178, 29.250299, 23.926886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153802, -0.450839, 0.879255,
		-0.091926, -0.879455, -0.467022,
		0.983816, -0.152655, 0.093818,
		38.727322, 29.204502, 23.955030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433971, 28.785206, 23.752260>,  <38.038651, 29.311361, 23.889359>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433971, 28.785206, 23.752260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.037354, 28.754494, 23.794092>,  <36.799381, 28.736067, 23.819191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.037354, 28.754494, 23.794092>,  <37.433971, 28.785206, 23.752260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037354, 28.754494, 23.794092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113158, 0.117552, -0.986599,
		0.063448, -0.990095, -0.125246,
		-0.991549, -0.076771, 0.104579,
		36.739887, 28.731461, 23.825466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341946, 28.449120, 23.175022>,  <37.433971, 28.785206, 23.752260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341946, 28.449120, 23.175022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.008801, 28.641634, 23.284344>,  <36.808914, 28.757143, 23.349937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.008801, 28.641634, 23.284344>,  <37.341946, 28.449120, 23.175022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008801, 28.641634, 23.284344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179909, 0.231566, -0.956039,
		-0.523418, -0.845422, -0.106275,
		-0.832866, 0.481288, 0.273304,
		36.758942, 28.786020, 23.366335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860577, 28.235588, 22.699156>,  <37.341946, 28.449120, 23.175022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860577, 28.235588, 22.699156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.685116, 28.564270, 22.844696>,  <36.579842, 28.761480, 22.932020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.685116, 28.564270, 22.844696>,  <36.860577, 28.235588, 22.699156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685116, 28.564270, 22.844696> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337063, 0.224884, -0.914229,
		-0.833052, -0.523665, 0.178322,
		-0.438648, 0.821706, 0.363849,
		36.553520, 28.810781, 22.953850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338715, 28.327656, 22.258886>,  <36.860577, 28.235588, 22.699156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.338715, 28.327656, 22.258886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.327316, 28.699055, 22.406982>,  <36.320477, 28.921894, 22.495840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.327316, 28.699055, 22.406982>,  <36.338715, 28.327656, 22.258886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327316, 28.699055, 22.406982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270505, 0.349406, -0.897074,
		-0.962297, -0.125718, 0.241205,
		-0.028500, 0.928499, 0.370240,
		36.318768, 28.977604, 22.518055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665096, 28.626062, 21.982218>,  <36.338715, 28.327656, 22.258886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665096, 28.626062, 21.982218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.892647, 28.943333, 22.069164>,  <36.029179, 29.133696, 22.121332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.892647, 28.943333, 22.069164>,  <35.665096, 28.626062, 21.982218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892647, 28.943333, 22.069164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228270, 0.406200, -0.884813,
		-0.790107, 0.453735, 0.412137,
		0.568880, 0.793175, 0.217367,
		36.063313, 29.181286, 22.134375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312607, 29.320881, 21.981621>,  <35.665096, 28.626062, 21.982218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312607, 29.320881, 21.981621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.693050, 29.419184, 21.906784>,  <35.921314, 29.478165, 21.861881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.693050, 29.419184, 21.906784>,  <35.312607, 29.320881, 21.981621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693050, 29.419184, 21.906784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260859, 0.314780, -0.912615,
		-0.165388, 0.916797, 0.363496,
		0.951104, 0.245756, -0.187094,
		35.978382, 29.492910, 21.850657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286236, 30.112617, 21.898838>,  <35.312607, 29.320881, 21.981621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286236, 30.112617, 21.898838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.605476, 29.944769, 21.725887>,  <35.797020, 29.844061, 21.622118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.605476, 29.944769, 21.725887>,  <35.286236, 30.112617, 21.898838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605476, 29.944769, 21.725887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188804, 0.507294, -0.840836,
		0.572172, 0.752710, 0.325648,
		0.798105, -0.419619, -0.432375,
		35.844910, 29.818884, 21.596174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227280, 30.862459, 21.894737>,  <35.286236, 30.112617, 21.898838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227280, 30.862459, 21.894737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.828369, 30.878832, 21.919277>,  <34.589024, 30.888657, 21.934000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.828369, 30.878832, 21.919277>,  <35.227280, 30.862459, 21.894737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828369, 30.878832, 21.919277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012243, -0.728409, 0.685033,
		0.072727, 0.683919, 0.725924,
		-0.997277, 0.040933, 0.061348,
		34.529186, 30.891111, 21.937681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020649, 31.006405, 22.608974>,  <35.227280, 30.862459, 21.894737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020649, 31.006405, 22.608974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.710339, 30.826174, 22.432272>,  <34.524151, 30.718035, 22.326250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.710339, 30.826174, 22.432272>,  <35.020649, 31.006405, 22.608974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710339, 30.826174, 22.432272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175475, -0.518420, 0.836928,
		-0.606116, 0.726788, 0.323114,
		-0.775778, -0.450577, -0.441756,
		34.477604, 30.691000, 22.299746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601196, 30.962862, 23.216768>,  <35.020649, 31.006405, 22.608974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601196, 30.962862, 23.216768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.423367, 30.724333, 22.949409>,  <34.316669, 30.581215, 22.788994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.423367, 30.724333, 22.949409>,  <34.601196, 30.962862, 23.216768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423367, 30.724333, 22.949409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453943, -0.493289, 0.742025,
		-0.772200, 0.633298, -0.051395,
		-0.444570, -0.596322, -0.668399,
		34.289997, 30.545437, 22.748890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849792, 31.030653, 23.413416>,  <34.601196, 30.962862, 23.216768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849792, 31.030653, 23.413416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.904896, 30.706930, 23.185015>,  <33.937958, 30.512697, 23.047974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.904896, 30.706930, 23.185015>,  <33.849792, 31.030653, 23.413416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904896, 30.706930, 23.185015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550810, -0.541733, 0.634929,
		-0.823183, 0.227046, -0.520403,
		0.137761, -0.809306, -0.571004,
		33.946224, 30.464138, 23.013714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164455, 30.675610, 23.455927>,  <33.849792, 31.030653, 23.413416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164455, 30.675610, 23.455927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.420841, 30.390921, 23.340952>,  <33.574673, 30.220108, 23.271967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.420841, 30.390921, 23.340952>,  <33.164455, 30.675610, 23.455927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420841, 30.390921, 23.340952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448232, -0.651054, 0.612550,
		-0.623099, -0.263786, -0.736318,
		0.640964, -0.711721, -0.287434,
		33.613129, 30.177404, 23.254721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.812393, 29.994493, 23.201347>,  <33.164455, 30.675610, 23.455927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.812393, 29.994493, 23.201347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.167988, 29.856791, 23.322138>,  <33.381344, 29.774170, 23.394613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.167988, 29.856791, 23.322138>,  <32.812393, 29.994493, 23.201347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167988, 29.856791, 23.322138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454349, -0.580729, 0.675515,
		-0.057181, -0.737728, -0.672673,
		0.888986, -0.344254, 0.301979,
		33.434685, 29.753513, 23.412731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599388, 29.427656, 23.605743>,  <32.812393, 29.994493, 23.201347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599388, 29.427656, 23.605743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.989029, 29.442465, 23.694967>,  <33.222813, 29.451349, 23.748503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.989029, 29.442465, 23.694967>,  <32.599388, 29.427656, 23.605743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989029, 29.442465, 23.694967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168437, -0.539345, 0.825068,
		0.150851, -0.841271, -0.519141,
		0.974101, 0.037020, 0.223061,
		33.281258, 29.453571, 23.761887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.831543, 34.715256, 20.909674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.170979, 34.514263, 20.975897>,  <37.374641, 34.393669, 21.015631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.170979, 34.514263, 20.975897>,  <36.831543, 34.715256, 20.909674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170979, 34.514263, 20.975897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055428, 0.226773, 0.972369,
		-0.526138, -0.834320, 0.164586,
		0.848591, -0.502477, 0.165559,
		37.425556, 34.363522, 21.025564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683540, 34.219345, 21.361561>,  <36.831543, 34.715256, 20.909674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683540, 34.219345, 21.361561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.080090, 34.249886, 21.404171>,  <37.318020, 34.268211, 21.429737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.080090, 34.249886, 21.404171>,  <36.683540, 34.219345, 21.361561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080090, 34.249886, 21.404171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112834, 0.083715, 0.990081,
		0.066667, -0.993561, 0.091607,
		0.991375, 0.076342, 0.106526,
		37.377502, 34.272793, 21.436129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930580, 33.768028, 21.862432>,  <36.683540, 34.219345, 21.361561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930580, 33.768028, 21.862432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.226017, 34.037552, 21.853825>,  <37.403278, 34.199265, 21.848660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.226017, 34.037552, 21.853825>,  <36.930580, 33.768028, 21.862432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226017, 34.037552, 21.853825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024871, 0.004668, 0.999680,
		0.673695, -0.738890, -0.013310,
		0.738591, 0.673810, -0.021522,
		37.447594, 34.239697, 21.847368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316368, 33.584915, 22.434931>,  <36.930580, 33.768028, 21.862432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316368, 33.584915, 22.434931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.466125, 33.949684, 22.367727>,  <37.555981, 34.168545, 22.327404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.466125, 33.949684, 22.367727>,  <37.316368, 33.584915, 22.434931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466125, 33.949684, 22.367727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025571, 0.170966, 0.984945,
		0.926915, -0.373058, 0.040690,
		0.374398, 0.911920, -0.168010,
		37.578445, 34.223259, 22.317324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870453, 33.692959, 23.013676>,  <37.316368, 33.584915, 22.434931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870453, 33.692959, 23.013676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.738792, 34.035229, 22.853937>,  <37.659798, 34.240593, 22.758093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.738792, 34.035229, 22.853937>,  <37.870453, 33.692959, 23.013676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738792, 34.035229, 22.853937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161200, 0.365789, 0.916632,
		0.930417, 0.366083, 0.017537,
		-0.329148, 0.855676, -0.399349,
		37.640049, 34.291931, 22.734133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408958, 34.183060, 23.155424>,  <37.870453, 33.692959, 23.013676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408958, 34.183060, 23.155424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.047081, 34.342110, 23.094202>,  <37.829956, 34.437538, 23.057468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.047081, 34.342110, 23.094202>,  <38.408958, 34.183060, 23.155424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047081, 34.342110, 23.094202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040601, 0.277139, 0.959972,
		0.424123, 0.874695, -0.234582,
		-0.904694, 0.397622, -0.153054,
		37.775673, 34.461395, 23.048286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465576, 34.557720, 23.676697>,  <38.408958, 34.183060, 23.155424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.465576, 34.557720, 23.676697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.081833, 34.576332, 23.565367>,  <37.851585, 34.587498, 23.498568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.081833, 34.576332, 23.565367>,  <38.465576, 34.557720, 23.676697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081833, 34.576332, 23.565367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268523, 0.152694, 0.951094,
		0.086752, 0.987177, -0.133995,
		-0.959359, 0.046528, -0.278327,
		37.794025, 34.590290, 23.481869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218185, 35.114452, 23.970716>,  <38.465576, 34.557720, 23.676697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218185, 35.114452, 23.970716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.885567, 34.903202, 23.901894>,  <37.685993, 34.776451, 23.860600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.885567, 34.903202, 23.901894>,  <38.218185, 35.114452, 23.970716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885567, 34.903202, 23.901894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259741, 0.095924, 0.960902,
		-0.490976, 0.843729, -0.216942,
		-0.831551, -0.528129, -0.172055,
		37.636101, 34.744762, 23.850277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667267, 35.399162, 24.361572>,  <38.218185, 35.114452, 23.970716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667267, 35.399162, 24.361572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.545692, 35.022457, 24.304005>,  <37.472748, 34.796436, 24.269464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.545692, 35.022457, 24.304005>,  <37.667267, 35.399162, 24.361572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545692, 35.022457, 24.304005> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557956, 0.053514, 0.828143,
		-0.772209, 0.332005, -0.541725,
		-0.303938, -0.941758, -0.143920,
		37.454510, 34.739929, 24.260828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066772, 35.401283, 24.650236>,  <37.667267, 35.399162, 24.361572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066772, 35.401283, 24.650236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.108849, 35.005302, 24.612434>,  <37.134094, 34.767715, 24.589754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.108849, 35.005302, 24.612434>,  <37.066772, 35.401283, 24.650236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108849, 35.005302, 24.612434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483370, -0.133949, 0.865107,
		-0.869073, -0.045321, -0.492603,
		0.105191, -0.989951, -0.094505,
		37.140408, 34.708317, 24.584084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304787, 35.084381, 24.708456>,  <37.066772, 35.401283, 24.650236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304787, 35.084381, 24.708456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.603233, 34.840717, 24.815966>,  <36.782299, 34.694519, 24.880472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.603233, 34.840717, 24.815966>,  <36.304787, 35.084381, 24.708456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603233, 34.840717, 24.815966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403526, -0.092621, 0.910268,
		-0.529604, -0.787621, -0.314917,
		0.746114, -0.609159, 0.268773,
		36.827068, 34.657970, 24.896597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947517, 34.684574, 25.190313>,  <36.304787, 35.084381, 24.708456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947517, 34.684574, 25.190313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.339745, 34.611229, 25.218195>,  <36.575081, 34.567223, 25.234924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.339745, 34.611229, 25.218195>,  <35.947517, 34.684574, 25.190313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339745, 34.611229, 25.218195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091665, -0.114154, 0.989225,
		-0.173435, -0.976394, -0.128745,
		0.980570, -0.183367, 0.069703,
		36.633915, 34.556221, 25.239105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376495, 34.227615, 25.036806>,  <35.947517, 34.684574, 25.190313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376495, 34.227615, 25.036806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.976524, 34.223721, 25.039474>,  <34.736542, 34.221386, 25.041075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.976524, 34.223721, 25.039474>,  <35.376495, 34.227615, 25.036806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976524, 34.223721, 25.039474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008494, 0.201539, -0.979444,
		0.008189, -0.979432, -0.201608,
		-0.999931, -0.009733, 0.006669,
		34.676544, 34.220802, 25.041475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151581, 33.876225, 24.418482>,  <35.376495, 34.227615, 25.036806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151581, 33.876225, 24.418482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.815056, 34.060963, 24.530830>,  <34.613140, 34.171806, 24.598240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.815056, 34.060963, 24.530830>,  <35.151581, 33.876225, 24.418482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815056, 34.060963, 24.530830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226343, 0.170864, -0.958944,
		-0.490879, -0.870345, -0.039214,
		-0.841313, 0.461850, 0.280870,
		34.562660, 34.199516, 24.615091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603367, 33.660179, 23.999573>,  <35.151581, 33.876225, 24.418482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603367, 33.660179, 23.999573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.492447, 34.017696, 24.140566>,  <34.425896, 34.232204, 24.225163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.492447, 34.017696, 24.140566>,  <34.603367, 33.660179, 23.999573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492447, 34.017696, 24.140566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313163, 0.262753, -0.912628,
		-0.908314, -0.363453, 0.207042,
		-0.277297, 0.893791, 0.352482,
		34.409256, 34.285835, 24.246311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994667, 33.821342, 23.606279>,  <34.603367, 33.660179, 23.999573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994667, 33.821342, 23.606279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.088139, 34.186069, 23.741327>,  <34.144222, 34.404907, 23.822355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.088139, 34.186069, 23.741327>,  <33.994667, 33.821342, 23.606279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088139, 34.186069, 23.741327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179673, 0.381745, -0.906636,
		-0.955569, 0.151199, 0.253033,
		0.233677, 0.911817, 0.337617,
		34.158241, 34.459614, 23.842613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522636, 34.212307, 23.237072>,  <33.994667, 33.821342, 23.606279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522636, 34.212307, 23.237072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.817589, 34.454979, 23.355869>,  <33.994560, 34.600582, 23.427149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.817589, 34.454979, 23.355869>,  <33.522636, 34.212307, 23.237072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817589, 34.454979, 23.355869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029099, 0.467802, -0.883354,
		-0.674852, 0.642725, 0.362602,
		0.737379, 0.606684, 0.296995,
		34.038803, 34.636986, 23.444967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261333, 34.962517, 23.225286>,  <33.522636, 34.212307, 23.237072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261333, 34.962517, 23.225286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.657234, 34.954807, 23.168694>,  <33.894775, 34.950184, 23.134737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.657234, 34.954807, 23.168694>,  <33.261333, 34.962517, 23.225286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657234, 34.954807, 23.168694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112758, 0.502412, -0.857244,
		0.087601, 0.864413, 0.495091,
		0.989753, -0.019270, -0.141482,
		33.954159, 34.949028, 23.126249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355198, 35.596100, 22.882275>,  <33.261333, 34.962517, 23.225286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355198, 35.596100, 22.882275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.688839, 35.392227, 22.797894>,  <33.889023, 35.269905, 22.747265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.688839, 35.392227, 22.797894>,  <33.355198, 35.596100, 22.882275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688839, 35.392227, 22.797894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024397, 0.416145, -0.908971,
		0.551074, 0.753025, 0.359542,
		0.834100, -0.509682, -0.210955,
		33.939068, 35.239323, 22.734608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780552, 36.042759, 22.414469>,  <33.355198, 35.596100, 22.882275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780552, 36.042759, 22.414469> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.923965, 35.672882, 22.363255>,  <34.010014, 35.450954, 22.332525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.923965, 35.672882, 22.363255>,  <33.780552, 36.042759, 22.414469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923965, 35.672882, 22.363255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095450, 0.172749, -0.980330,
		0.928622, 0.339265, 0.150200,
		0.358538, -0.924693, -0.128036,
		34.031528, 35.395473, 22.324844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404888, 36.127262, 21.979368>,  <33.780552, 36.042759, 22.414469>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404888, 36.127262, 21.979368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.325001, 35.736389, 21.950472>,  <34.277069, 35.501865, 21.933134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.325001, 35.736389, 21.950472>,  <34.404888, 36.127262, 21.979368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325001, 35.736389, 21.950472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213181, 0.028626, -0.976593,
		0.956381, -0.210447, 0.202601,
		-0.199722, -0.977186, -0.072241,
		34.265083, 35.443233, 21.928799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802013, 35.958424, 21.509947>,  <34.404888, 36.127262, 21.979368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802013, 35.958424, 21.509947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.562363, 35.638237, 21.503008>,  <34.418571, 35.446125, 21.498844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.562363, 35.638237, 21.503008>,  <34.802013, 35.958424, 21.509947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562363, 35.638237, 21.503008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185393, -0.117616, -0.975600,
		0.778896, -0.587723, 0.218868,
		-0.599125, -0.800467, -0.017349,
		34.382626, 35.398098, 21.497803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157234, 35.522858, 21.103277>,  <34.802013, 35.958424, 21.509947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157234, 35.522858, 21.103277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.774151, 35.407776, 21.101244>,  <34.544300, 35.338726, 21.100025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.774151, 35.407776, 21.101244>,  <35.157234, 35.522858, 21.103277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774151, 35.407776, 21.101244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023449, -0.060433, -0.997897,
		0.286792, -0.955811, 0.064624,
		-0.957706, -0.287704, -0.005081,
		34.486839, 35.321465, 21.099720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189991, 34.960552, 20.670471>,  <35.157234, 35.522858, 21.103277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189991, 34.960552, 20.670471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.819489, 35.111202, 20.676146>,  <34.597187, 35.201591, 20.679550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.819489, 35.111202, 20.676146>,  <35.189991, 34.960552, 20.670471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819489, 35.111202, 20.676146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041706, -0.065017, -0.997012,
		-0.374581, -0.924080, 0.075931,
		-0.926256, 0.376629, 0.014186,
		34.541611, 35.224190, 20.680401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695156, 34.470768, 20.367748>,  <35.189991, 34.960552, 20.670471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695156, 34.470768, 20.367748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.539139, 34.835938, 20.319696>,  <34.445530, 35.055038, 20.290865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.539139, 34.835938, 20.319696>,  <34.695156, 34.470768, 20.367748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539139, 34.835938, 20.319696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051172, -0.108771, -0.992749,
		-0.919373, -0.393363, -0.004291,
		-0.390044, 0.912927, -0.120130,
		34.422127, 35.109814, 20.283657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086308, 34.094448, 20.329887>,  <34.695156, 34.470768, 20.367748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.086308, 34.094448, 20.329887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.976925, 33.791481, 20.092724>,  <33.911293, 33.609699, 19.950426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.976925, 33.791481, 20.092724>,  <34.086308, 34.094448, 20.329887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976925, 33.791481, 20.092724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145737, -0.576662, 0.803879,
		-0.950779, 0.306236, 0.047310,
		-0.273459, -0.757416, -0.592908,
		33.894886, 33.564255, 19.914852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652409, 33.769016, 20.689688>,  <34.086308, 34.094448, 20.329887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652409, 33.769016, 20.689688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.748264, 33.488693, 20.420929>,  <33.805779, 33.320499, 20.259674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.748264, 33.488693, 20.420929>,  <33.652409, 33.769016, 20.689688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.748264, 33.488693, 20.420929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118949, -0.708041, 0.696081,
		-0.963548, -0.086886, -0.253033,
		0.239638, -0.700806, -0.671896,
		33.820156, 33.278450, 20.219360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187126, 33.213963, 20.816601>,  <33.652409, 33.769016, 20.689688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187126, 33.213963, 20.816601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.484310, 33.045822, 20.608250>,  <33.662621, 32.944939, 20.483240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.484310, 33.045822, 20.608250>,  <33.187126, 33.213963, 20.816601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484310, 33.045822, 20.608250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166333, -0.869742, 0.464631,
		-0.648334, -0.258565, -0.716105,
		0.742964, -0.420347, -0.520876,
		33.707199, 32.919720, 20.451986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955338, 32.489765, 20.855850>,  <33.187126, 33.213963, 20.816601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.955338, 32.489765, 20.855850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.339874, 32.512272, 20.748035>,  <33.570599, 32.525776, 20.683346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.339874, 32.512272, 20.748035>,  <32.955338, 32.489765, 20.855850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339874, 32.512272, 20.748035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182490, -0.863222, 0.470687,
		-0.206190, -0.501680, -0.840121,
		0.961345, 0.056262, -0.269539,
		33.628277, 32.529152, 20.667173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069817, 31.802683, 20.667671>,  <32.955338, 32.489765, 20.855850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069817, 31.802683, 20.667671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.425247, 31.971649, 20.739231>,  <33.638504, 32.073029, 20.782167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.425247, 31.971649, 20.739231>,  <33.069817, 31.802683, 20.667671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425247, 31.971649, 20.739231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326270, -0.856087, 0.400827,
		0.322470, -0.297793, -0.898517,
		0.888572, 0.422414, 0.178902,
		33.691818, 32.098373, 20.792902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583900, 31.319225, 20.406588>,  <33.069817, 31.802683, 20.667671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583900, 31.319225, 20.406588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.749275, 31.535675, 20.699505>,  <33.848503, 31.665545, 20.875256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.749275, 31.535675, 20.699505>,  <33.583900, 31.319225, 20.406588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749275, 31.535675, 20.699505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369781, -0.834723, 0.408042,
		0.832062, 0.102086, -0.545207,
		0.413442, 0.541124, 0.732292,
		33.873306, 31.698011, 20.919191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307774, 31.075237, 20.510149>,  <33.583900, 31.319225, 20.406588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307774, 31.075237, 20.510149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.250160, 31.250772, 20.864929>,  <34.215591, 31.356092, 21.077797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.250160, 31.250772, 20.864929>,  <34.307774, 31.075237, 20.510149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250160, 31.250772, 20.864929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472711, -0.756908, 0.451259,
		0.869367, 0.484266, -0.098425,
		-0.144030, 0.438836, 0.886949,
		34.206951, 31.382423, 21.131014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918926, 31.010117, 20.951183>,  <34.307774, 31.075237, 20.510149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918926, 31.010117, 20.951183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.631340, 31.083321, 21.219391>,  <34.458790, 31.127243, 21.380316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.631340, 31.083321, 21.219391>,  <34.918926, 31.010117, 20.951183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631340, 31.083321, 21.219391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284753, -0.802477, 0.524354,
		0.634040, 0.567924, 0.524838,
		-0.718964, 0.183012, 0.670521,
		34.415649, 31.138224, 21.420547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494816, 30.540825, 21.305870>,  <34.918926, 31.010117, 20.951183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494816, 30.540825, 21.305870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.731148, 30.232244, 21.211397>,  <35.872948, 30.047096, 21.154713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.731148, 30.232244, 21.211397>,  <35.494816, 30.540825, 21.305870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731148, 30.232244, 21.211397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013347, 0.302049, -0.953199,
		0.806685, 0.560027, 0.188757,
		0.590831, -0.771451, -0.236183,
		35.908398, 30.000809, 21.140543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097641, 30.813396, 21.000919>,  <35.494816, 30.540825, 21.305870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097641, 30.813396, 21.000919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.106770, 30.430246, 20.886410>,  <36.112247, 30.200356, 20.817705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.106770, 30.430246, 20.886410>,  <36.097641, 30.813396, 21.000919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106770, 30.430246, 20.886410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307100, 0.279221, -0.909794,
		0.951403, -0.067147, 0.300537,
		0.022826, -0.957876, -0.286273,
		36.113617, 30.142883, 20.800528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531162, 30.780403, 20.569143>,  <36.097641, 30.813396, 21.000919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531162, 30.780403, 20.569143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.391438, 30.418463, 20.471802>,  <36.307602, 30.201298, 20.413397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.391438, 30.418463, 20.471802>,  <36.531162, 30.780403, 20.569143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391438, 30.418463, 20.471802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315134, 0.131137, -0.939944,
		0.882424, -0.405023, 0.239342,
		-0.349312, -0.904853, -0.243355,
		36.286644, 30.147007, 20.398796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124939, 30.429625, 20.282190>,  <36.531162, 30.780403, 20.569143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124939, 30.429625, 20.282190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.790909, 30.243849, 20.164240>,  <36.590492, 30.132383, 20.093470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.790909, 30.243849, 20.164240>,  <37.124939, 30.429625, 20.282190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790909, 30.243849, 20.164240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257380, 0.143898, -0.955536,
		0.486219, -0.873837, -0.000628,
		-0.835073, -0.464438, -0.294874,
		36.540386, 30.104517, 20.075777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277290, 29.846869, 19.953726>,  <37.124939, 30.429625, 20.282190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277290, 29.846869, 19.953726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.915096, 29.937521, 19.810207>,  <36.697781, 29.991913, 19.724096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.915096, 29.937521, 19.810207>,  <37.277290, 29.846869, 19.953726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915096, 29.937521, 19.810207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359146, -0.041165, -0.932373,
		-0.226077, -0.973109, -0.044120,
		-0.905485, 0.226634, -0.358795,
		36.643452, 30.005510, 19.702568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322433, 29.497149, 19.360826>,  <37.277290, 29.846869, 19.953726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322433, 29.497149, 19.360826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.023186, 29.754858, 19.297295>,  <36.843636, 29.909483, 19.259176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.023186, 29.754858, 19.297295>,  <37.322433, 29.497149, 19.360826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023186, 29.754858, 19.297295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414150, 0.266337, -0.870370,
		-0.518455, -0.716921, -0.466079,
		-0.748120, 0.644274, -0.158829,
		36.798748, 29.948141, 19.249645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148884, 29.457947, 18.610823>,  <37.322433, 29.497149, 19.360826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148884, 29.457947, 18.610823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.036346, 29.812363, 18.758215>,  <36.968822, 30.025011, 18.846651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.036346, 29.812363, 18.758215>,  <37.148884, 29.457947, 18.610823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036346, 29.812363, 18.758215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317856, 0.448365, -0.835426,
		-0.905434, -0.117921, -0.407779,
		-0.281348, 0.886038, 0.368483,
		36.951942, 30.078175, 18.868759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810863, 29.707899, 18.078072>,  <37.148884, 29.457947, 18.610823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810863, 29.707899, 18.078072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.881065, 30.021500, 18.316244>,  <36.923187, 30.209660, 18.459148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.881065, 30.021500, 18.316244>,  <36.810863, 29.707899, 18.078072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881065, 30.021500, 18.316244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301389, 0.532992, -0.790623,
		-0.937209, 0.318218, -0.142745,
		0.175508, 0.784001, 0.595432,
		36.933720, 30.256701, 18.494873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516869, 30.270676, 17.725967>,  <36.810863, 29.707899, 18.078072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516869, 30.270676, 17.725967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.770275, 30.443472, 17.982727>,  <36.922321, 30.547150, 18.136784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.770275, 30.443472, 17.982727>,  <36.516869, 30.270676, 17.725967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770275, 30.443472, 17.982727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341157, 0.588662, -0.732864,
		-0.694452, 0.683273, 0.225553,
		0.633520, 0.431990, 0.641901,
		36.960331, 30.573069, 18.175297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.923824, 28.667929, 34.541458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.279110, 28.629248, 34.361805>,  <36.492283, 28.606039, 34.254013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.279110, 28.629248, 34.361805>,  <35.923824, 28.667929, 34.541458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279110, 28.629248, 34.361805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459239, -0.215048, -0.861889,
		-0.013238, 0.971804, -0.235419,
		0.888214, -0.096704, -0.449138,
		36.545574, 28.600237, 34.227062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932522, 29.063883, 33.918968>,  <35.923824, 28.667929, 34.541458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932522, 29.063883, 33.918968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.185501, 28.756075, 33.883545>,  <36.337288, 28.571390, 33.862293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.185501, 28.756075, 33.883545>,  <35.932522, 29.063883, 33.918968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185501, 28.756075, 33.883545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249650, -0.094278, -0.963736,
		0.733266, 0.631624, -0.251737,
		0.632452, -0.769521, -0.088554,
		36.375237, 28.525219, 33.856979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117996, 29.091330, 33.234715>,  <35.932522, 29.063883, 33.918968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117996, 29.091330, 33.234715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.296940, 28.746851, 33.331226>,  <36.404305, 28.540165, 33.389133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.296940, 28.746851, 33.331226>,  <36.117996, 29.091330, 33.234715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296940, 28.746851, 33.331226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119535, -0.209785, -0.970413,
		0.886332, 0.462961, 0.009095,
		0.447355, -0.861195, 0.241279,
		36.431145, 28.488493, 33.403610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.723057, 29.088663, 32.838745>,  <36.117996, 29.091330, 33.234715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.723057, 29.088663, 32.838745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.614769, 28.713579, 32.925842>,  <36.549797, 28.488529, 32.978100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.614769, 28.713579, 32.925842>,  <36.723057, 29.088663, 32.838745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614769, 28.713579, 32.925842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133395, -0.260550, -0.956200,
		0.953371, -0.229817, 0.195622,
		-0.270721, -0.937709, 0.217745,
		36.533554, 28.432266, 32.991165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191738, 28.672684, 32.469398>,  <36.723057, 29.088663, 32.838745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191738, 28.672684, 32.469398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.899117, 28.412264, 32.550358>,  <36.723545, 28.256012, 32.598934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.899117, 28.412264, 32.550358>,  <37.191738, 28.672684, 32.469398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899117, 28.412264, 32.550358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002934, -0.293856, -0.955845,
		0.681778, -0.699846, 0.213061,
		-0.731553, -0.651049, 0.202398,
		36.679649, 28.216949, 32.611076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416954, 27.947807, 32.254860>,  <37.191738, 28.672684, 32.469398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416954, 27.947807, 32.254860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.019215, 27.989573, 32.247143>,  <36.780571, 28.014631, 32.242512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.019215, 27.989573, 32.247143>,  <37.416954, 27.947807, 32.254860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019215, 27.989573, 32.247143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007742, -0.252496, -0.967567,
		-0.105896, -0.961948, 0.251877,
		-0.994347, 0.104412, -0.019291,
		36.720909, 28.020897, 32.241356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274063, 27.516645, 31.864637>,  <37.416954, 27.947807, 32.254860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274063, 27.516645, 31.864637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.926975, 27.715405, 31.859692>,  <36.718723, 27.834660, 31.856724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.926975, 27.715405, 31.859692>,  <37.274063, 27.516645, 31.864637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926975, 27.715405, 31.859692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102763, -0.203678, -0.973630,
		-0.486313, -0.843568, 0.227798,
		-0.867721, 0.496898, -0.012364,
		36.666660, 27.864473, 31.855982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812122, 27.155491, 31.485977>,  <37.274063, 27.516645, 31.864637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812122, 27.155491, 31.485977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.669285, 27.528666, 31.467615>,  <36.583580, 27.752571, 31.456598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.669285, 27.528666, 31.467615>,  <36.812122, 27.155491, 31.485977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669285, 27.528666, 31.467615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184705, -0.118701, -0.975600,
		-0.915624, -0.339904, 0.214706,
		-0.357096, 0.932939, -0.045903,
		36.562157, 27.808548, 31.453844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279705, 27.039700, 31.079662>,  <36.812122, 27.155491, 31.485977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279705, 27.039700, 31.079662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.287663, 27.439615, 31.077545>,  <36.292439, 27.679564, 31.076275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.287663, 27.439615, 31.077545>,  <36.279705, 27.039700, 31.079662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287663, 27.439615, 31.077545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452760, 0.004290, -0.891622,
		-0.891411, 0.020137, 0.452749,
		0.019897, 0.999788, -0.005293,
		36.293633, 27.739552, 31.075956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646393, 27.182796, 30.698656>,  <36.279705, 27.039700, 31.079662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646393, 27.182796, 30.698656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.882923, 27.505024, 30.683746>,  <36.024841, 27.698360, 30.674801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.882923, 27.505024, 30.683746>,  <35.646393, 27.182796, 30.698656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882923, 27.505024, 30.683746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379593, 0.237265, -0.894212,
		-0.711507, 0.542920, 0.446090,
		0.591327, 0.805570, -0.037273,
		36.060322, 27.746695, 30.672564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183823, 27.679232, 30.349951>,  <35.646393, 27.182796, 30.698656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183823, 27.679232, 30.349951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.559044, 27.815622, 30.325293>,  <35.784176, 27.897457, 30.310497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.559044, 27.815622, 30.325293>,  <35.183823, 27.679232, 30.349951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559044, 27.815622, 30.325293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096965, 0.087520, -0.991432,
		-0.332659, 0.935989, 0.115161,
		0.938049, 0.340975, -0.061644,
		35.840458, 27.917915, 30.306799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198513, 28.322020, 30.047384>,  <35.183823, 27.679232, 30.349951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198513, 28.322020, 30.047384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.576035, 28.206177, 29.983690>,  <35.802547, 28.136671, 29.945475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.576035, 28.206177, 29.983690>,  <35.198513, 28.322020, 30.047384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576035, 28.206177, 29.983690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165664, 0.002347, -0.986180,
		0.285978, 0.957143, -0.045762,
		0.943807, -0.289606, -0.159235,
		35.859177, 28.119295, 29.935919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630909, 28.853477, 29.975063>,  <35.198513, 28.322020, 30.047384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630909, 28.853477, 29.975063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.263630, 28.698210, 29.943480>,  <34.043262, 28.605049, 29.924530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.263630, 28.698210, 29.943480>,  <34.630909, 28.853477, 29.975063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263630, 28.698210, 29.943480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132727, 0.113676, 0.984612,
		-0.373221, 0.914550, -0.155898,
		-0.918199, -0.388170, -0.078959,
		33.988171, 28.581758, 29.919792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171028, 29.308706, 30.328960>,  <34.630909, 28.853477, 29.975063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171028, 29.308706, 30.328960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.977577, 28.959026, 30.311600>,  <33.861507, 28.749218, 30.301184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.977577, 28.959026, 30.311600>,  <34.171028, 29.308706, 30.328960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977577, 28.959026, 30.311600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204937, 0.064890, 0.976622,
		-0.850946, 0.481211, -0.210538,
		-0.483623, -0.874200, -0.043400,
		33.832489, 28.696766, 30.298580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533573, 29.451290, 30.699966>,  <34.171028, 29.308706, 30.328960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533573, 29.451290, 30.699966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.580551, 29.055391, 30.667442>,  <33.608738, 28.817852, 30.647928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.580551, 29.055391, 30.667442>,  <33.533573, 29.451290, 30.699966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.580551, 29.055391, 30.667442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249147, -0.108623, 0.962355,
		-0.961318, -0.092767, -0.259350,
		0.117446, -0.989745, -0.081309,
		33.615784, 28.758469, 30.643049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947308, 29.145716, 31.119108>,  <33.533573, 29.451290, 30.699966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947308, 29.145716, 31.119108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.217247, 28.851137, 31.100243>,  <33.379211, 28.674389, 31.088923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.217247, 28.851137, 31.100243>,  <32.947308, 29.145716, 31.119108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217247, 28.851137, 31.100243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094197, -0.149354, 0.984287,
		-0.731920, -0.659801, -0.170163,
		0.674848, -0.736448, -0.047163,
		33.419701, 28.630203, 31.086094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597954, 28.438780, 31.475142>,  <32.947308, 29.145716, 31.119108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597954, 28.438780, 31.475142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.997326, 28.453606, 31.491930>,  <33.236950, 28.462502, 31.502003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.997326, 28.453606, 31.491930>,  <32.597954, 28.438780, 31.475142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997326, 28.453606, 31.491930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033820, -0.198242, 0.979570,
		0.044626, -0.979452, -0.196677,
		0.998431, 0.037063, 0.041972,
		33.296856, 28.464724, 31.504522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807354, 27.925861, 31.922075>,  <32.597954, 28.438780, 31.475142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807354, 27.925861, 31.922075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.146698, 28.137619, 31.924492>,  <33.350304, 28.264673, 31.925941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.146698, 28.137619, 31.924492>,  <32.807354, 27.925861, 31.922075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146698, 28.137619, 31.924492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007106, -0.000028, 0.999975,
		0.529379, -0.848377, 0.003738,
		0.848356, 0.529392, 0.006043,
		33.401203, 28.296436, 31.926306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281250, 27.514727, 32.316944>,  <32.807354, 27.925861, 31.922075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281250, 27.514727, 32.316944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.444218, 27.879892, 32.307159>,  <33.541996, 28.098991, 32.301289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.444218, 27.879892, 32.307159>,  <33.281250, 27.514727, 32.316944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444218, 27.879892, 32.307159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163736, -0.046664, 0.985400,
		0.898445, -0.405472, -0.168489,
		0.407414, 0.912915, -0.024465,
		33.566441, 28.153767, 32.299820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991879, 27.433842, 32.537254>,  <33.281250, 27.514727, 32.316944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991879, 27.433842, 32.537254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.893562, 27.819969, 32.572468>,  <33.834572, 28.051645, 32.593594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.893562, 27.819969, 32.572468>,  <33.991879, 27.433842, 32.537254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893562, 27.819969, 32.572468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364139, 0.007789, 0.931312,
		0.898326, 0.260964, -0.353424,
		-0.245791, 0.965317, 0.088030,
		33.819824, 28.109564, 32.598877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583622, 27.805656, 32.803585>,  <33.991879, 27.433842, 32.537254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583622, 27.805656, 32.803585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.268658, 28.045652, 32.860142>,  <34.079678, 28.189650, 32.894077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.268658, 28.045652, 32.860142>,  <34.583622, 27.805656, 32.803585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268658, 28.045652, 32.860142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226433, 0.068191, 0.971637,
		0.573329, 0.797097, -0.189552,
		-0.787415, 0.599988, 0.141394,
		34.032433, 28.225649, 32.902561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795658, 28.448011, 33.138477>,  <34.583622, 27.805656, 32.803585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795658, 28.448011, 33.138477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.418358, 28.362820, 33.240395>,  <34.191978, 28.311705, 33.301544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.418358, 28.362820, 33.240395>,  <34.795658, 28.448011, 33.138477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418358, 28.362820, 33.240395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231890, 0.126792, 0.964443,
		-0.237714, 0.968794, -0.070208,
		-0.943249, -0.212981, 0.254794,
		34.135384, 28.298925, 33.316833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650555, 28.905859, 33.696087>,  <34.795658, 28.448011, 33.138477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650555, 28.905859, 33.696087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.353455, 28.638910, 33.717770>,  <34.175194, 28.478741, 33.730778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.353455, 28.638910, 33.717770>,  <34.650555, 28.905859, 33.696087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353455, 28.638910, 33.717770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047997, 0.133813, 0.989844,
		-0.667846, 0.732605, -0.131422,
		-0.742751, -0.667371, 0.054204,
		34.130630, 28.438700, 33.734032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319962, 29.182230, 34.239834>,  <34.650555, 28.905859, 33.696087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319962, 29.182230, 34.239834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.173664, 28.812658, 34.194962>,  <34.085884, 28.590916, 34.168037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.173664, 28.812658, 34.194962>,  <34.319962, 29.182230, 34.239834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173664, 28.812658, 34.194962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222653, -0.030174, 0.974430,
		-0.903691, 0.381369, -0.194680,
		-0.365743, -0.923930, -0.112181,
		34.063942, 28.535479, 34.161308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679634, 29.203081, 34.485615>,  <34.319962, 29.182230, 34.239834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679634, 29.203081, 34.485615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.753944, 28.810070, 34.490070>,  <33.798531, 28.574263, 34.492744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.753944, 28.810070, 34.490070>,  <33.679634, 29.203081, 34.485615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753944, 28.810070, 34.490070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388059, -0.062946, 0.919483,
		-0.902717, -0.175141, -0.392973,
		0.185775, -0.982529, 0.011143,
		33.809677, 28.515312, 34.493412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077972, 28.933302, 34.670967>,  <33.679634, 29.203081, 34.485615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077972, 28.933302, 34.670967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.353336, 28.660429, 34.769539>,  <33.518555, 28.496706, 34.828682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.353336, 28.660429, 34.769539>,  <33.077972, 28.933302, 34.670967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353336, 28.660429, 34.769539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340571, -0.004045, 0.940210,
		-0.640397, -0.731172, -0.235116,
		0.688406, -0.682182, 0.246425,
		33.559860, 28.455774, 34.843468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177036, 29.670752, 34.910049>,  <33.077972, 28.933302, 34.670967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177036, 29.670752, 34.910049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.803932, 29.559113, 34.818779>,  <32.580070, 29.492128, 34.764019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.803932, 29.559113, 34.818779>,  <33.177036, 29.670752, 34.910049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803932, 29.559113, 34.818779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324798, 0.925250, 0.196005,
		0.156412, 0.256936, -0.953687,
		-0.932760, -0.279098, -0.228173,
		32.524105, 29.475384, 34.750328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770863, 30.212141, 34.593277>,  <33.177036, 29.670752, 34.910049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770863, 30.212141, 34.593277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.440887, 30.008738, 34.691982>,  <32.242901, 29.886696, 34.751205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.440887, 30.008738, 34.691982>,  <32.770863, 30.212141, 34.593277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440887, 30.008738, 34.691982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503156, 0.859573, 0.089265,
		-0.257502, -0.050522, -0.964956,
		-0.824940, -0.508509, 0.246762,
		32.193405, 29.856184, 34.766010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400673, 30.718019, 34.459793>,  <32.770863, 30.212141, 34.593277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400673, 30.718019, 34.459793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.795574, 30.717922, 34.523457>,  <34.032516, 30.717863, 34.561653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.795574, 30.717922, 34.523457>,  <33.400673, 30.718019, 34.459793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795574, 30.717922, 34.523457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132338, 0.556767, -0.820059,
		-0.088413, 0.830669, 0.549702,
		0.987254, -0.000242, 0.159155,
		34.091751, 30.717850, 34.571201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564827, 31.413458, 34.468990>,  <33.400673, 30.718019, 34.459793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564827, 31.413458, 34.468990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.856014, 31.161806, 34.359997>,  <34.030727, 31.010815, 34.294601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.856014, 31.161806, 34.359997>,  <33.564827, 31.413458, 34.468990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856014, 31.161806, 34.359997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000920, 0.396544, -0.918015,
		0.685606, 0.668541, 0.288094,
		0.727973, -0.629131, -0.272488,
		34.074406, 30.973066, 34.278252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017075, 31.822794, 34.049427>,  <33.564827, 31.413458, 34.468990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017075, 31.822794, 34.049427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.098286, 31.444704, 33.947189>,  <34.147015, 31.217850, 33.885845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.098286, 31.444704, 33.947189>,  <34.017075, 31.822794, 34.049427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098286, 31.444704, 33.947189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101750, 0.239250, -0.965612,
		0.973872, 0.222054, -0.047602,
		0.203029, -0.945225, -0.255593,
		34.159195, 31.161137, 33.870510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604813, 31.794586, 33.531548>,  <34.017075, 31.822794, 34.049427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604813, 31.794586, 33.531548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.447083, 31.430546, 33.480598>,  <34.352444, 31.212122, 33.450027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.447083, 31.430546, 33.480598>,  <34.604813, 31.794586, 33.531548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447083, 31.430546, 33.480598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131402, 0.081343, -0.987986,
		0.909527, -0.406328, 0.087513,
		-0.394328, -0.910100, -0.127376,
		34.328785, 31.157516, 33.442387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904499, 31.527054, 32.969822>,  <34.604813, 31.794586, 33.531548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904499, 31.527054, 32.969822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.593060, 31.276974, 32.991375>,  <34.406197, 31.126925, 33.004307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.593060, 31.276974, 32.991375>,  <34.904499, 31.527054, 32.969822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593060, 31.276974, 32.991375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059454, -0.011977, -0.998159,
		0.624696, -0.780372, -0.027846,
		-0.778602, -0.625202, 0.053878,
		34.359478, 31.089413, 33.007538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064236, 31.013910, 32.408684>,  <34.904499, 31.527054, 32.969822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064236, 31.013910, 32.408684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.672626, 31.032114, 32.488117>,  <34.437660, 31.043036, 32.535778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.672626, 31.032114, 32.488117>,  <35.064236, 31.013910, 32.408684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672626, 31.032114, 32.488117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203001, -0.135224, -0.969797,
		-0.017279, -0.989770, 0.141626,
		-0.979026, 0.045507, 0.198587,
		34.378918, 31.045767, 32.547695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839024, 30.480839, 32.081657>,  <35.064236, 31.013910, 32.408684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839024, 30.480839, 32.081657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.514168, 30.710535, 32.122982>,  <34.319252, 30.848352, 32.147778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.514168, 30.710535, 32.122982>,  <34.839024, 30.480839, 32.081657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514168, 30.710535, 32.122982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120196, 0.008611, -0.992713,
		-0.570946, -0.818641, 0.062028,
		-0.812141, 0.574241, 0.103313,
		34.270527, 30.882807, 32.153976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230965, 30.140598, 31.679193>,  <34.839024, 30.480839, 32.081657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230965, 30.140598, 31.679193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.139503, 30.526508, 31.731230>,  <34.084625, 30.758055, 31.762451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.139503, 30.526508, 31.731230>,  <34.230965, 30.140598, 31.679193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139503, 30.526508, 31.731230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096762, 0.110446, -0.989161,
		-0.968687, -0.238763, 0.068099,
		-0.228654, 0.964776, 0.130091,
		34.070908, 30.815941, 31.770258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700085, 30.177601, 31.302706>,  <34.230965, 30.140598, 31.679193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700085, 30.177601, 31.302706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.781567, 30.566936, 31.344887>,  <33.830456, 30.800537, 31.370195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.781567, 30.566936, 31.344887>,  <33.700085, 30.177601, 31.302706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781567, 30.566936, 31.344887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044682, 0.116844, -0.992145,
		-0.978013, 0.197390, 0.067292,
		0.203702, 0.973337, 0.105455,
		33.842678, 30.858938, 31.376524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185303, 30.578047, 30.937647>,  <33.700085, 30.177601, 31.302706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185303, 30.578047, 30.937647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.520824, 30.794794, 30.958765>,  <33.722137, 30.924843, 30.971436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.520824, 30.794794, 30.958765>,  <33.185303, 30.578047, 30.937647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520824, 30.794794, 30.958765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030773, 0.144005, -0.989098,
		-0.543562, 0.828036, 0.137467,
		0.838805, 0.541867, 0.052794,
		33.772465, 30.957354, 30.974604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059296, 31.233288, 30.693571>,  <33.185303, 30.578047, 30.937647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059296, 31.233288, 30.693571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.445755, 31.141958, 30.645544>,  <33.677631, 31.087160, 30.616728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.445755, 31.141958, 30.645544>,  <33.059296, 31.233288, 30.693571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445755, 31.141958, 30.645544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067200, 0.226611, -0.971664,
		0.249064, 0.946845, 0.203597,
		0.966153, -0.228325, -0.120069,
		33.735600, 31.073462, 30.609524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286953, 31.691828, 30.181465>,  <33.059296, 31.233288, 30.693571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286953, 31.691828, 30.181465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.606445, 31.452618, 30.208000>,  <33.798141, 31.309092, 30.223921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.606445, 31.452618, 30.208000>,  <33.286953, 31.691828, 30.181465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606445, 31.452618, 30.208000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357935, 0.383624, -0.851302,
		0.483651, 0.703703, 0.520465,
		0.798727, -0.598026, 0.066340,
		33.846062, 31.273211, 30.227901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827915, 32.099831, 29.833342>,  <33.286953, 31.691828, 30.181465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827915, 32.099831, 29.833342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.968693, 31.725733, 29.848614>,  <34.053158, 31.501274, 29.857777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.968693, 31.725733, 29.848614>,  <33.827915, 32.099831, 29.833342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968693, 31.725733, 29.848614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420296, 0.121450, -0.899222,
		0.836355, 0.332520, 0.435822,
		0.351940, -0.935243, 0.038181,
		34.074276, 31.445160, 29.860067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536964, 32.156780, 29.700932>,  <33.827915, 32.099831, 29.833342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536964, 32.156780, 29.700932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.428722, 31.788393, 29.588795>,  <34.363777, 31.567360, 29.521513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.428722, 31.788393, 29.588795>,  <34.536964, 32.156780, 29.700932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428722, 31.788393, 29.588795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436222, 0.142293, -0.888518,
		0.858187, -0.362726, 0.363242,
		-0.270601, -0.920968, -0.280343,
		34.347542, 31.512102, 29.504692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115295, 31.840395, 29.403196>,  <34.536964, 32.156780, 29.700932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115295, 31.840395, 29.403196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.806435, 31.622158, 29.272894>,  <34.621120, 31.491217, 29.194714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.806435, 31.622158, 29.272894>,  <35.115295, 31.840395, 29.403196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806435, 31.622158, 29.272894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229990, 0.237933, -0.943659,
		0.592362, -0.803565, -0.058239,
		-0.772148, -0.545593, -0.325754,
		34.574791, 31.458481, 29.175167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413437, 31.588058, 28.802713>,  <35.115295, 31.840395, 29.403196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413437, 31.588058, 28.802713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.025547, 31.537670, 28.719036>,  <34.792812, 31.507437, 28.668831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.025547, 31.537670, 28.719036>,  <35.413437, 31.588058, 28.802713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025547, 31.537670, 28.719036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186226, 0.172633, -0.967222,
		0.157945, -0.976899, -0.143950,
		-0.969728, -0.125960, -0.209190,
		34.734631, 31.499880, 28.656279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442638, 31.421232, 28.120203>,  <35.413437, 31.588058, 28.802713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442638, 31.421232, 28.120203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.073769, 31.556606, 28.195089>,  <34.852448, 31.637831, 28.240021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.073769, 31.556606, 28.195089>,  <35.442638, 31.421232, 28.120203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073769, 31.556606, 28.195089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018479, 0.522056, -0.852711,
		-0.386323, -0.782892, -0.487683,
		-0.922178, 0.338434, 0.187215,
		34.797115, 31.658136, 28.251253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982315, 31.165274, 27.549664>,  <35.442638, 31.421232, 28.120203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982315, 31.165274, 27.549664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.828121, 31.499519, 27.706202>,  <34.735607, 31.700068, 27.800125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.828121, 31.499519, 27.706202>,  <34.982315, 31.165274, 27.549664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828121, 31.499519, 27.706202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019653, 0.431462, -0.901917,
		-0.922507, -0.339981, -0.182743,
		-0.385481, 0.835616, 0.391345,
		34.712479, 31.750204, 27.823605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883202, 31.476677, 26.940943>,  <34.982315, 31.165274, 27.549664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883202, 31.476677, 26.940943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.784473, 31.753399, 27.212379>,  <34.725239, 31.919432, 27.375240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.784473, 31.753399, 27.212379>,  <34.883202, 31.476677, 26.940943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784473, 31.753399, 27.212379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229324, 0.638668, -0.734516,
		-0.941537, -0.336908, 0.001014,
		-0.246816, 0.691807, 0.678591,
		34.710430, 31.960941, 27.415956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152336, 31.717077, 26.760229>,  <34.883202, 31.476677, 26.940943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152336, 31.717077, 26.760229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.317913, 32.010483, 26.975863>,  <34.417259, 32.186527, 27.105242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.317913, 32.010483, 26.975863>,  <34.152336, 31.717077, 26.760229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317913, 32.010483, 26.975863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296070, 0.668487, -0.682252,
		-0.860811, 0.122806, 0.493886,
		0.413940, 0.733515, 0.539081,
		34.442097, 32.230537, 27.137587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591694, 32.312153, 26.696802>,  <34.152336, 31.717077, 26.760229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591694, 32.312153, 26.696802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.944798, 32.449230, 26.825365>,  <34.156658, 32.531479, 26.902502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.944798, 32.449230, 26.825365>,  <33.591694, 32.312153, 26.696802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944798, 32.449230, 26.825365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108138, 0.813917, -0.570829,
		-0.457220, 0.469146, 0.755548,
		0.882755, 0.342698, 0.321406,
		34.209625, 32.552040, 26.921787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477482, 33.030170, 26.711220>,  <33.591694, 32.312153, 26.696802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477482, 33.030170, 26.711220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.877098, 33.024101, 26.694744>,  <34.116867, 33.020458, 26.684858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.877098, 33.024101, 26.694744>,  <33.477482, 33.030170, 26.711220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877098, 33.024101, 26.694744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010679, 0.826131, -0.563378,
		0.042579, 0.563275, 0.825172,
		0.999036, -0.015177, -0.041191,
		34.176807, 33.019547, 26.682386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725883, 33.726547, 26.838671>,  <33.477482, 33.030170, 26.711220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725883, 33.726547, 26.838671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.015739, 33.535767, 26.639709>,  <34.189651, 33.421299, 26.520332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.015739, 33.535767, 26.639709>,  <33.725883, 33.726547, 26.838671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015739, 33.535767, 26.639709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043231, 0.751832, -0.657937,
		0.687769, 0.455265, 0.565428,
		0.724642, -0.476952, -0.497404,
		34.233131, 33.392681, 26.490488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138203, 34.220100, 26.649523>,  <33.725883, 33.726547, 26.838671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138203, 34.220100, 26.649523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.219059, 33.930622, 26.385584>,  <34.267574, 33.756935, 26.227221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.219059, 33.930622, 26.385584>,  <34.138203, 34.220100, 26.649523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219059, 33.930622, 26.385584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141136, 0.688252, -0.711611,
		0.969133, 0.050720, 0.241266,
		0.202145, -0.723696, -0.659849,
		34.279701, 33.713512, 26.187630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633915, 34.539635, 26.238214>,  <34.138203, 34.220100, 26.649523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633915, 34.539635, 26.238214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.512840, 34.217476, 26.034365>,  <34.440197, 34.024181, 25.912054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.512840, 34.217476, 26.034365>,  <34.633915, 34.539635, 26.238214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512840, 34.217476, 26.034365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221033, 0.460813, -0.859532,
		0.927107, -0.372811, 0.038538,
		-0.302684, -0.805396, -0.509626,
		34.422035, 33.975857, 25.881477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208923, 34.343224, 25.757288>,  <34.633915, 34.539635, 26.238214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208923, 34.343224, 25.757288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.863461, 34.212200, 25.604025>,  <34.656185, 34.133587, 25.512068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.863461, 34.212200, 25.604025>,  <35.208923, 34.343224, 25.757288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863461, 34.212200, 25.604025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257624, 0.366524, -0.894030,
		0.433283, -0.870842, -0.232163,
		-0.863652, -0.327557, -0.383158,
		34.604366, 34.113934, 25.489077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922348, 34.112053, 25.615767>,  <35.208923, 34.343224, 25.757288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922348, 34.112053, 25.615767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.294052, 34.258533, 25.635220>,  <36.517075, 34.346420, 25.646891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.294052, 34.258533, 25.635220>,  <35.922348, 34.112053, 25.615767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294052, 34.258533, 25.635220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122872, -0.430544, 0.894167,
		0.348383, -0.824941, -0.445085,
		0.929264, 0.366201, 0.048632,
		36.572830, 34.368393, 25.649809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316975, 33.565765, 25.831762>,  <35.922348, 34.112053, 25.615767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316975, 33.565765, 25.831762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.515896, 33.904060, 25.909128>,  <36.635250, 34.107037, 25.955547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.515896, 33.904060, 25.909128>,  <36.316975, 33.565765, 25.831762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515896, 33.904060, 25.909128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352780, -0.400803, 0.845519,
		0.792611, -0.352250, -0.497683,
		0.497307, 0.845741, 0.193414,
		36.665089, 34.157784, 25.967152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847027, 33.370621, 26.248558>,  <36.316975, 33.565765, 25.831762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847027, 33.370621, 26.248558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.846874, 33.765392, 26.313013>,  <36.846783, 34.002254, 26.351686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.846874, 33.765392, 26.313013>,  <36.847027, 33.370621, 26.248558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846874, 33.765392, 26.313013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300561, -0.153573, 0.941317,
		0.953763, 0.048790, -0.296574,
		-0.000382, 0.986932, 0.161137,
		36.846760, 34.061470, 26.361355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491325, 33.475601, 26.576139>,  <36.847027, 33.370621, 26.248558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491325, 33.475601, 26.576139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.262993, 33.796928, 26.644051>,  <37.125992, 33.989727, 26.684797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.262993, 33.796928, 26.644051>,  <37.491325, 33.475601, 26.576139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262993, 33.796928, 26.644051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344416, 0.046567, 0.937661,
		0.745336, 0.593723, -0.303259,
		-0.570834, 0.803320, 0.169780,
		37.091743, 34.037926, 26.694984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884094, 33.937565, 27.015610>,  <37.491325, 33.475601, 26.576139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884094, 33.937565, 27.015610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.506027, 34.062668, 27.053225>,  <37.279186, 34.137730, 27.075794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.506027, 34.062668, 27.053225>,  <37.884094, 33.937565, 27.015610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506027, 34.062668, 27.053225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119539, 0.063341, 0.990807,
		0.303930, 0.947717, -0.097255,
		-0.945165, 0.312761, 0.094038,
		37.222477, 34.156498, 27.081436>
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
