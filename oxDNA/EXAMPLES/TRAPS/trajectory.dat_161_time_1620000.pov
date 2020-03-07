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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.013489, 52.440842, 49.729862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366573, 52.373295, 49.554451>,  <36.578423, 52.332767, 49.449203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366573, 52.373295, 49.554451>,  <36.013489, 52.440842, 49.729862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366573, 52.373295, 49.554451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273741, 0.943295, 0.187775,
		0.381953, -0.285794, 0.878882,
		0.882710, -0.168865, -0.438528,
		36.631386, 52.322636, 49.422894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589279, 52.631058, 50.178967>,  <36.013489, 52.440842, 49.729862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589279, 52.631058, 50.178967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.691284, 52.683777, 49.795799>,  <36.752487, 52.715408, 49.565899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.691284, 52.683777, 49.795799>,  <36.589279, 52.631058, 50.178967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691284, 52.683777, 49.795799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256868, 0.945839, 0.198515,
		0.932195, -0.296681, 0.207346,
		0.255012, 0.131794, -0.957914,
		36.767788, 52.723316, 49.508427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275143, 52.984921, 50.082150>,  <36.589279, 52.631058, 50.178967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275143, 52.984921, 50.082150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.033707, 53.081573, 49.778229>,  <36.888844, 53.139565, 49.595879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.033707, 53.081573, 49.778229>,  <37.275143, 52.984921, 50.082150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033707, 53.081573, 49.778229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207364, 0.967750, 0.143036,
		0.769858, -0.071220, -0.634229,
		-0.603589, 0.241634, -0.759798,
		36.852631, 53.154064, 49.550289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008984, 52.849239, 50.029282>,  <37.275143, 52.984921, 50.082150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008984, 52.849239, 50.029282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871059, 52.833134, 50.404404>,  <37.788303, 52.823471, 50.629478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871059, 52.833134, 50.404404>,  <38.008984, 52.849239, 50.029282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871059, 52.833134, 50.404404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858903, -0.416573, 0.297914,
		0.378670, 0.908210, 0.178222,
		-0.344811, -0.040264, 0.937808,
		37.767616, 52.821053, 50.685745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550392, 53.138157, 50.514359>,  <38.008984, 52.849239, 50.029282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550392, 53.138157, 50.514359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321426, 52.858730, 50.686104>,  <38.184048, 52.691074, 50.789150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321426, 52.858730, 50.686104>,  <38.550392, 53.138157, 50.514359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321426, 52.858730, 50.686104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816596, -0.533082, 0.221348,
		0.074259, 0.477316, 0.875588,
		-0.572413, -0.698564, 0.429361,
		38.149704, 52.649162, 50.814911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084854, 53.487640, 50.173695>,  <38.550392, 53.138157, 50.514359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084854, 53.487640, 50.173695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402668, 53.698570, 50.053268>,  <39.593357, 53.825127, 49.981014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402668, 53.698570, 50.053268>,  <39.084854, 53.487640, 50.173695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402668, 53.698570, 50.053268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480110, -0.242015, 0.843163,
		0.371757, -0.814468, -0.445464,
		0.794538, 0.527323, -0.301063,
		39.641029, 53.856766, 49.962948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629032, 53.058784, 50.200363>,  <39.084854, 53.487640, 50.173695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.629032, 53.058784, 50.200363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730610, 53.434715, 50.291794>,  <39.791557, 53.660275, 50.346653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730610, 53.434715, 50.291794>,  <39.629032, 53.058784, 50.200363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730610, 53.434715, 50.291794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386576, -0.315246, 0.866706,
		0.886606, -0.131736, -0.443368,
		0.253946, 0.939822, 0.228573,
		39.806793, 53.716663, 50.360367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954094, 52.744366, 50.769085>,  <39.629032, 53.058784, 50.200363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954094, 52.744366, 50.769085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989582, 53.135326, 50.845833>,  <40.010876, 53.369904, 50.891880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989582, 53.135326, 50.845833>,  <39.954094, 52.744366, 50.769085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989582, 53.135326, 50.845833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502057, -0.210254, 0.838887,
		0.860271, 0.021901, -0.509366,
		0.088724, 0.977401, 0.191871,
		40.016201, 53.428547, 50.903393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670380, 52.934837, 50.784134>,  <39.954094, 52.744366, 50.769085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670380, 52.934837, 50.784134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472927, 53.206242, 51.001740>,  <40.354454, 53.369083, 51.132301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472927, 53.206242, 51.001740>,  <40.670380, 52.934837, 50.784134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.472927, 53.206242, 51.001740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562396, -0.228085, 0.794788,
		0.663352, 0.698286, -0.269000,
		-0.493634, 0.678509, 0.544014,
		40.324837, 53.409794, 51.164944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165863, 53.370354, 51.201328>,  <40.670380, 52.934837, 50.784134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.165863, 53.370354, 51.201328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.820965, 53.336678, 51.401108>,  <40.614025, 53.316471, 51.520973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.820965, 53.336678, 51.401108>,  <41.165863, 53.370354, 51.201328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.820965, 53.336678, 51.401108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504097, -0.238466, 0.830073,
		0.049216, 0.967494, 0.248057,
		-0.862244, -0.084192, 0.499447,
		40.562290, 53.311420, 51.550941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288742, 53.829861, 50.560951>,  <41.165863, 53.370354, 51.201328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288742, 53.829861, 50.560951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.644962, 53.659683, 50.625343>,  <41.858696, 53.557579, 50.663979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.644962, 53.659683, 50.625343>,  <41.288742, 53.829861, 50.560951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.644962, 53.659683, 50.625343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299781, 0.282765, -0.911140,
		0.342118, 0.859676, 0.379357,
		0.890554, -0.425441, 0.160976,
		41.912128, 53.532051, 50.673637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850441, 54.250965, 50.328575>,  <41.288742, 53.829861, 50.560951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.850441, 54.250965, 50.328575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.058247, 53.909660, 50.346687>,  <42.182930, 53.704876, 50.357555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.058247, 53.909660, 50.346687>,  <41.850441, 54.250965, 50.328575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.058247, 53.909660, 50.346687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657450, 0.365317, -0.659017,
		0.545771, 0.372139, 0.750764,
		0.519513, -0.853262, 0.045283,
		42.214100, 53.653683, 50.360271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.585339, 54.453964, 50.371902>,  <41.850441, 54.250965, 50.328575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.585339, 54.453964, 50.371902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.494602, 54.130741, 50.154434>,  <42.440163, 53.936806, 50.023952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.494602, 54.130741, 50.154434>,  <42.585339, 54.453964, 50.371902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.494602, 54.130741, 50.154434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614561, 0.314298, -0.723555,
		0.755552, -0.498250, 0.425309,
		-0.226838, -0.808061, -0.543674,
		42.426552, 53.888321, 49.991333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.115242, 53.995033, 50.264816>,  <42.585339, 54.453964, 50.371902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.115242, 53.995033, 50.264816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.862740, 53.970119, 49.955589>,  <42.711239, 53.955170, 49.770054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.862740, 53.970119, 49.955589>,  <43.115242, 53.995033, 50.264816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.862740, 53.970119, 49.955589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736262, 0.265192, -0.622568,
		0.243786, -0.962182, -0.121549,
		-0.631258, -0.062281, -0.773069,
		42.673363, 53.951435, 49.723667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.637791, 53.934025, 50.873749>,  <43.115242, 53.995033, 50.264816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.637791, 53.934025, 50.873749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.884663, 54.144413, 50.639671>,  <44.032784, 54.270645, 50.499226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.884663, 54.144413, 50.639671>,  <43.637791, 53.934025, 50.873749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.884663, 54.144413, 50.639671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134928, 0.661973, 0.737283,
		0.775170, -0.533991, 0.337586,
		0.617175, 0.525970, -0.585192,
		44.069817, 54.302204, 50.464115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.334187, 54.209785, 51.187008>,  <43.637791, 53.934025, 50.873749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.334187, 54.209785, 51.187008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.241344, 54.467484, 50.895508>,  <44.185638, 54.622105, 50.720608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.241344, 54.467484, 50.895508>,  <44.334187, 54.209785, 51.187008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.241344, 54.467484, 50.895508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043740, 0.755362, 0.653847,
		0.971706, 0.119889, -0.203506,
		-0.232109, 0.644248, -0.728746,
		44.171711, 54.660759, 50.676884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.460068, 53.625839, 50.816162>,  <44.334187, 54.209785, 51.187008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.460068, 53.625839, 50.816162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.473892, 53.988686, 50.648376>,  <44.482185, 54.206394, 50.547707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.473892, 53.988686, 50.648376>,  <44.460068, 53.625839, 50.816162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.473892, 53.988686, 50.648376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919129, -0.193657, -0.343070,
		-0.392436, -0.373683, -0.840449,
		0.034560, 0.907115, -0.419462,
		44.484261, 54.260818, 50.522537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.308041, 53.547737, 50.682693>,  <44.460068, 53.625839, 50.816162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.308041, 53.547737, 50.682693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.194374, 53.883865, 50.867348>,  <45.126175, 54.085545, 50.978142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.194374, 53.883865, 50.867348>,  <45.308041, 53.547737, 50.682693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.194374, 53.883865, 50.867348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559099, -0.245909, 0.791793,
		0.778882, 0.483101, -0.399945,
		-0.284167, 0.840323, 0.461635,
		45.109123, 54.135963, 51.005836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.769123, 53.261456, 50.188171>,  <45.308041, 53.547737, 50.682693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.769123, 53.261456, 50.188171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.982677, 53.241848, 49.850517>,  <45.110809, 53.230083, 49.647926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.982677, 53.241848, 49.850517>,  <44.769123, 53.261456, 50.188171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.982677, 53.241848, 49.850517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844243, 0.086489, 0.528936,
		0.047081, -0.995046, 0.087558,
		0.533888, -0.049018, -0.844133,
		45.142845, 53.227142, 49.597279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.252525, 52.589474, 49.899696>,  <44.769123, 53.261456, 50.188171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.252525, 52.589474, 49.899696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.376198, 52.960209, 49.814487>,  <45.450401, 53.182652, 49.763363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.376198, 52.960209, 49.814487>,  <45.252525, 52.589474, 49.899696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.376198, 52.960209, 49.814487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757967, -0.104882, 0.643805,
		0.574361, -0.360516, -0.734940,
		0.309185, 0.926837, -0.213019,
		45.468952, 53.238258, 49.750580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.845901, 51.953506, 49.802319>,  <45.252525, 52.589474, 49.899696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.845901, 51.953506, 49.802319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.930508, 52.119732, 49.448467>,  <44.981270, 52.219467, 49.236156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.930508, 52.119732, 49.448467>,  <44.845901, 51.953506, 49.802319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.930508, 52.119732, 49.448467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973408, -0.008097, 0.228936,
		0.087975, -0.909528, -0.406226,
		0.211512, 0.415564, -0.884629,
		44.993961, 52.244400, 49.183079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.249748, 51.504898, 49.555565>,  <44.845901, 51.953506, 49.802319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.249748, 51.504898, 49.555565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.308746, 51.879711, 49.428932>,  <45.344147, 52.104599, 49.352955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.308746, 51.879711, 49.428932>,  <45.249748, 51.504898, 49.555565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.308746, 51.879711, 49.428932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966337, -0.068306, 0.248046,
		0.210802, -0.342508, -0.915560,
		0.147496, 0.937029, -0.316579,
		45.352997, 52.160820, 49.333958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.804482, 51.519714, 49.257816>,  <45.249748, 51.504898, 49.555565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.804482, 51.519714, 49.257816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.812878, 51.912762, 49.331585>,  <45.817913, 52.148590, 49.375847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.812878, 51.912762, 49.331585>,  <45.804482, 51.519714, 49.257816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.812878, 51.912762, 49.331585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992847, -0.042169, 0.111702,
		0.117538, 0.180760, -0.976479,
		0.020986, 0.982623, 0.184423,
		45.819172, 52.207550, 49.386913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.193382, 52.007198, 48.746265>,  <45.804482, 51.519714, 49.257816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.193382, 52.007198, 48.746265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.203152, 52.095524, 49.136269>,  <46.209015, 52.148518, 49.370270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.203152, 52.095524, 49.136269>,  <46.193382, 52.007198, 48.746265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.203152, 52.095524, 49.136269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985972, -0.166405, 0.012983,
		0.165114, 0.961016, -0.221777,
		0.024428, 0.220810, 0.975011,
		46.210480, 52.161766, 49.428772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.819866, 52.418163, 48.939816>,  <46.193382, 52.007198, 48.746265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.819866, 52.418163, 48.939816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.748573, 52.259960, 49.300217>,  <46.705795, 52.165039, 49.516457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.748573, 52.259960, 49.300217>,  <46.819866, 52.418163, 48.939816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.748573, 52.259960, 49.300217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983216, -0.107843, 0.147158,
		0.038964, 0.912107, 0.408095,
		-0.178234, -0.395512, 0.901001,
		46.695103, 52.141308, 49.570518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.099651, 52.875401, 49.446960>,  <46.819866, 52.418163, 48.939816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.099651, 52.875401, 49.446960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.083321, 52.504955, 49.596973>,  <47.073521, 52.282688, 49.686981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.083321, 52.504955, 49.596973>,  <47.099651, 52.875401, 49.446960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.083321, 52.504955, 49.596973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997298, -0.014836, 0.071941,
		-0.061061, 0.376957, 0.924216,
		-0.040830, -0.926112, 0.375032,
		47.071072, 52.227123, 49.709484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.259918, 52.900288, 50.163116>,  <47.099651, 52.875401, 49.446960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.259918, 52.900288, 50.163116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.349373, 52.583763, 49.935501>,  <47.403046, 52.393848, 49.798931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.349373, 52.583763, 49.935501>,  <47.259918, 52.900288, 50.163116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.349373, 52.583763, 49.935501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974056, 0.202212, 0.101613,
		0.034659, -0.577002, 0.816007,
		0.223638, -0.791315, -0.569041,
		47.416466, 52.346371, 49.764790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.643749, 52.382553, 50.461273>,  <47.259918, 52.900288, 50.163116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.643749, 52.382553, 50.461273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.741432, 52.392372, 50.073509>,  <47.800041, 52.398262, 49.840851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.741432, 52.392372, 50.073509>,  <47.643749, 52.382553, 50.461273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.741432, 52.392372, 50.073509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935802, 0.256127, 0.242227,
		0.254238, -0.966331, 0.039578,
		0.244208, 0.024546, -0.969412,
		47.814693, 52.399734, 49.782684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.274067, 52.239101, 50.291969>,  <47.643749, 52.382553, 50.461273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.274067, 52.239101, 50.291969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.244812, 52.374027, 49.916550>,  <48.227261, 52.454983, 49.691299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.244812, 52.374027, 49.916550>,  <48.274067, 52.239101, 50.291969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.244812, 52.374027, 49.916550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947390, 0.317535, 0.040297,
		0.311614, -0.886222, -0.342794,
		-0.073137, 0.337317, -0.938546,
		48.222870, 52.475224, 49.634987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.940948, 52.382339, 49.786835>,  <48.274067, 52.239101, 50.291969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.940948, 52.382339, 49.786835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.944653, 52.777939, 49.727783>,  <48.946877, 53.015297, 49.692352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.944653, 52.777939, 49.727783>,  <48.940948, 52.382339, 49.786835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.944653, 52.777939, 49.727783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948873, 0.037894, 0.313375,
		0.315522, -0.142983, -0.938084,
		0.009259, 0.988999, -0.147629,
		48.947430, 53.074638, 49.683495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.455521, 52.562096, 49.351261>,  <48.940948, 52.382339, 49.786835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.455521, 52.562096, 49.351261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.378471, 52.877804, 49.584480>,  <49.332241, 53.067230, 49.724411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.378471, 52.877804, 49.584480>,  <49.455521, 52.562096, 49.351261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.378471, 52.877804, 49.584480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947483, -0.004976, 0.319766,
		0.255284, 0.614023, -0.746864,
		-0.192628, 0.789272, 0.583047,
		49.320683, 53.114586, 49.759396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.951569, 53.192551, 49.208851>,  <49.455521, 52.562096, 49.351261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.951569, 53.192551, 49.208851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.797718, 53.193420, 49.578079>,  <49.705406, 53.193943, 49.799614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.797718, 53.193420, 49.578079>,  <49.951569, 53.192551, 49.208851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.797718, 53.193420, 49.578079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913802, 0.142248, 0.380435,
		-0.130477, 0.989829, -0.056700,
		-0.384631, 0.002174, 0.923068,
		49.682327, 53.194073, 49.855000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.368038, 53.780212, 49.409710>,  <49.951569, 53.192551, 49.208851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.368038, 53.780212, 49.409710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.246346, 53.491016, 49.657818>,  <50.173328, 53.317501, 49.806683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.246346, 53.491016, 49.657818>,  <50.368038, 53.780212, 49.409710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.246346, 53.491016, 49.657818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921883, -0.059447, 0.382882,
		-0.239946, 0.688299, 0.684595,
		-0.304234, -0.722988, 0.620267,
		50.155075, 53.274120, 49.843899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.567085, 54.005135, 50.007824>,  <50.368038, 53.780212, 49.409710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.567085, 54.005135, 50.007824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.560589, 53.617043, 50.104481>,  <50.556690, 53.384186, 50.162476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.560589, 53.617043, 50.104481>,  <50.567085, 54.005135, 50.007824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.560589, 53.617043, 50.104481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780875, 0.138631, 0.609110,
		-0.624476, 0.198588, 0.755376,
		-0.016243, -0.970229, 0.241644,
		50.555717, 53.325974, 50.176975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.798920, 53.937668, 50.711849>,  <50.567085, 54.005135, 50.007824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.798920, 53.937668, 50.711849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.875767, 53.579330, 50.551575>,  <50.921875, 53.364326, 50.455410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.875767, 53.579330, 50.551575>,  <50.798920, 53.937668, 50.711849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.875767, 53.579330, 50.551575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817460, -0.079825, 0.570427,
		-0.543000, -0.437135, 0.716983,
		0.192120, -0.895847, -0.400685,
		50.933403, 53.310577, 50.431370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.736938, 53.357346, 51.189972>,  <50.798920, 53.937668, 50.711849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.736938, 53.357346, 51.189972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.015068, 53.356083, 50.902496>,  <51.181946, 53.355324, 50.730011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.015068, 53.356083, 50.902496>,  <50.736938, 53.357346, 51.189972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.015068, 53.356083, 50.902496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715613, 0.095575, 0.691928,
		0.066501, -0.995417, 0.068719,
		0.695325, -0.003162, -0.718689,
		51.223667, 53.355137, 50.686890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.238453, 52.874542, 51.307190>,  <50.736938, 53.357346, 51.189972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.238453, 52.874542, 51.307190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.390656, 53.179955, 51.098480>,  <51.481976, 53.363201, 50.973255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.390656, 53.179955, 51.098480>,  <51.238453, 52.874542, 51.307190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.390656, 53.179955, 51.098480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568934, 0.251531, 0.782973,
		0.729062, -0.594776, -0.338688,
		0.380503, 0.763527, -0.521770,
		51.504807, 53.409012, 50.941948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.866871, 52.866638, 51.508881>,  <51.238453, 52.874542, 51.307190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.866871, 52.866638, 51.508881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.827660, 53.240063, 51.370979>,  <51.804131, 53.464119, 51.288239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.827660, 53.240063, 51.370979>,  <51.866871, 52.866638, 51.508881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.827660, 53.240063, 51.370979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425998, 0.352442, 0.833253,
		0.899397, -0.065179, -0.432245,
		-0.098030, 0.933561, -0.344752,
		51.798252, 53.520130, 51.267555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.532295, 53.291122, 51.310387>,  <51.866871, 52.866638, 51.508881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.532295, 53.291122, 51.310387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.210522, 53.463009, 51.474449>,  <52.017460, 53.566143, 51.572887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.210522, 53.463009, 51.474449>,  <52.532295, 53.291122, 51.310387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.210522, 53.463009, 51.474449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467651, 0.032327, 0.883322,
		0.366322, 0.902383, -0.226964,
		-0.804432, 0.429720, 0.410159,
		51.969193, 53.591927, 51.597496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.656101, 53.662800, 50.678001>,  <52.532295, 53.291122, 51.310387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.656101, 53.662800, 50.678001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.466225, 53.771114, 50.343018>,  <52.352299, 53.836102, 50.142025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.466225, 53.771114, 50.343018>,  <52.656101, 53.662800, 50.678001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.466225, 53.771114, 50.343018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769114, 0.335015, 0.544269,
		0.427943, 0.902463, 0.049238,
		-0.474688, 0.270786, -0.837464,
		52.323818, 53.852352, 50.091778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.040886, 53.156952, 50.224243>,  <52.656101, 53.662800, 50.678001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.040886, 53.156952, 50.224243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.302948, 52.903378, 50.059860>,  <53.460186, 52.751232, 49.961231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.302948, 52.903378, 50.059860>,  <53.040886, 53.156952, 50.224243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.302948, 52.903378, 50.059860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673265, 0.736704, -0.063096,
		0.342754, -0.235346, 0.909468,
		0.655159, -0.633940, -0.410959,
		53.499496, 52.713196, 49.936573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.599434, 53.482803, 50.379059>,  <53.040886, 53.156952, 50.224243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.599434, 53.482803, 50.379059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.732689, 53.210915, 50.117676>,  <53.812641, 53.047783, 49.960846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.732689, 53.210915, 50.117676>,  <53.599434, 53.482803, 50.379059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.732689, 53.210915, 50.117676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784629, 0.584162, -0.207636,
		0.522857, -0.443549, 0.727931,
		0.333133, -0.679720, -0.653455,
		53.832630, 53.007000, 49.921638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.389107, 53.197128, 50.614815>,  <53.599434, 53.482803, 50.379059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.389107, 53.197128, 50.614815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.272507, 53.224228, 50.233147>,  <54.202545, 53.240486, 50.004147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.272507, 53.224228, 50.233147>,  <54.389107, 53.197128, 50.614815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.272507, 53.224228, 50.233147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786542, 0.584669, -0.198782,
		0.544405, -0.808438, -0.223720,
		-0.291505, 0.067747, -0.954167,
		54.185055, 53.244553, 49.946896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.932304, 53.162853, 50.171902>,  <54.389107, 53.197128, 50.614815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.932304, 53.162853, 50.171902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.619934, 53.358360, 50.016335>,  <54.432510, 53.475662, 49.922993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.619934, 53.358360, 50.016335>,  <54.932304, 53.162853, 50.171902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.619934, 53.358360, 50.016335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615271, 0.709258, -0.344086,
		0.107667, -0.507998, -0.854603,
		-0.780928, 0.488766, -0.388920,
		54.385654, 53.504990, 49.899658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.177216, 53.495850, 49.538746>,  <54.932304, 53.162853, 50.171902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.177216, 53.495850, 49.538746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.841347, 53.693474, 49.628944>,  <54.639824, 53.812050, 49.683064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.841347, 53.693474, 49.628944>,  <55.177216, 53.495850, 49.538746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.841347, 53.693474, 49.628944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419444, 0.853714, -0.308607,
		-0.344982, -0.164545, -0.924073,
		-0.839675, 0.494061, 0.225499,
		54.589443, 53.841694, 49.696594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.947304, 53.848724, 48.877399>,  <55.177216, 53.495850, 49.538746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.947304, 53.848724, 48.877399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.860245, 54.016022, 49.230148>,  <54.808010, 54.116402, 49.441799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.860245, 54.016022, 49.230148>,  <54.947304, 53.848724, 48.877399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.860245, 54.016022, 49.230148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650559, 0.735724, -0.188371,
		-0.727600, 0.532711, -0.432224,
		-0.217651, 0.418246, 0.881872,
		54.794949, 54.141495, 49.494709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.591251, 54.527069, 48.739788>,  <54.947304, 53.848724, 48.877399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.591251, 54.527069, 48.739788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.814445, 54.510262, 49.071304>,  <54.948360, 54.500179, 49.270214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.814445, 54.510262, 49.071304>,  <54.591251, 54.527069, 48.739788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.814445, 54.510262, 49.071304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708824, 0.543479, -0.449666,
		-0.431537, 0.838370, 0.333033,
		0.557983, -0.042014, 0.828788,
		54.981842, 54.497658, 49.319942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.917938, 55.171738, 48.838909>,  <54.591251, 54.527069, 48.739788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.917938, 55.171738, 48.838909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.119759, 54.924801, 49.080345>,  <55.240852, 54.776638, 49.225204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.119759, 54.924801, 49.080345>,  <54.917938, 55.171738, 48.838909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.119759, 54.924801, 49.080345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861505, 0.406032, -0.304872,
		-0.056867, 0.673818, 0.736705,
		0.504554, -0.617338, 0.603588,
		55.271126, 54.739601, 49.261421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.288452, 55.587479, 49.384052>,  <54.917938, 55.171738, 48.838909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.288452, 55.587479, 49.384052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.471329, 55.242676, 49.296486>,  <55.581055, 55.035793, 49.243946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.471329, 55.242676, 49.296486>,  <55.288452, 55.587479, 49.384052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.471329, 55.242676, 49.296486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861403, 0.490432, -0.132144,
		0.221271, -0.128158, 0.966755,
		0.457192, -0.862005, -0.218914,
		55.608486, 54.984074, 49.230812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.991592, 55.502941, 49.756561>,  <55.288452, 55.587479, 49.384052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.991592, 55.502941, 49.756561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.991493, 55.293457, 49.415802>,  <55.991432, 55.167767, 49.211346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.991493, 55.293457, 49.415802>,  <55.991592, 55.502941, 49.756561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.991493, 55.293457, 49.415802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880143, 0.404286, -0.248799,
		0.474708, -0.749853, 0.460839,
		-0.000252, -0.523712, -0.851896,
		55.991417, 55.136345, 49.160233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.606808, 55.049660, 49.633797>,  <55.991592, 55.502941, 49.756561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.606808, 55.049660, 49.633797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.471924, 55.190193, 49.284431>,  <56.390991, 55.274513, 49.074814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.471924, 55.190193, 49.284431>,  <56.606808, 55.049660, 49.633797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.471924, 55.190193, 49.284431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934924, 0.233846, -0.266894,
		0.110476, -0.906576, -0.407327,
		-0.337212, 0.351335, -0.873414,
		56.370762, 55.295593, 49.022408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.537571, 54.902763, 50.362507>,  <56.606808, 55.049660, 49.633797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.537571, 54.902763, 50.362507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.524590, 54.804138, 50.749939>,  <56.516800, 54.744965, 50.982399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.524590, 54.804138, 50.749939>,  <56.537571, 54.902763, 50.362507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.524590, 54.804138, 50.749939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584611, 0.781342, 0.218485,
		-0.810665, 0.573334, 0.118790,
		-0.032449, -0.246564, 0.968583,
		56.514854, 54.730167, 51.040512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.227142, 55.460842, 50.952095>,  <56.537571, 54.902763, 50.362507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.227142, 55.460842, 50.952095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.518349, 55.198162, 51.030823>,  <56.693073, 55.040554, 51.078060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.518349, 55.198162, 51.030823>,  <56.227142, 55.460842, 50.952095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.518349, 55.198162, 51.030823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657936, 0.749945, 0.068579,
		-0.192640, 0.079569, 0.978038,
		0.728018, -0.656698, 0.196821,
		56.736755, 55.001152, 51.089870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.512020, 55.772289, 51.400188>,  <56.227142, 55.460842, 50.952095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.512020, 55.772289, 51.400188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.788193, 55.538235, 51.230049>,  <56.953896, 55.397800, 51.127964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.788193, 55.538235, 51.230049>,  <56.512020, 55.772289, 51.400188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.788193, 55.538235, 51.230049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699640, 0.689587, 0.187013,
		0.183886, -0.426710, 0.885497,
		0.690427, -0.585140, -0.425349,
		56.995319, 55.362694, 51.102444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.026398, 55.521133, 51.874428>,  <56.512020, 55.772289, 51.400188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.026398, 55.521133, 51.874428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.176765, 55.549759, 51.504875>,  <57.266987, 55.566936, 51.283142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.176765, 55.549759, 51.504875>,  <57.026398, 55.521133, 51.874428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.176765, 55.549759, 51.504875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606403, 0.734889, 0.303668,
		0.700684, -0.674401, 0.232862,
		0.375921, 0.071567, -0.923884,
		57.289543, 55.571228, 51.227711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.707878, 55.377724, 51.860111>,  <57.026398, 55.521133, 51.874428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.707878, 55.377724, 51.860111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.592041, 55.654514, 51.595596>,  <57.522537, 55.820591, 51.436890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.592041, 55.654514, 51.595596>,  <57.707878, 55.377724, 51.860111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.592041, 55.654514, 51.595596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536001, 0.689644, 0.486924,
		0.792992, -0.213438, -0.570620,
		-0.289596, 0.691980, -0.661285,
		57.505161, 55.862106, 51.397209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.269897, 55.790340, 51.450706>,  <57.707878, 55.377724, 51.860111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.269897, 55.790340, 51.450706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.943008, 56.009178, 51.523186>,  <57.746876, 56.140480, 51.566673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.943008, 56.009178, 51.523186>,  <58.269897, 55.790340, 51.450706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.943008, 56.009178, 51.523186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551866, 0.652241, 0.519640,
		0.166111, 0.524657, -0.834951,
		-0.817222, 0.547099, 0.181196,
		57.697842, 56.173309, 51.577545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.332764, 56.445133, 51.245560>,  <58.269897, 55.790340, 51.450706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.332764, 56.445133, 51.245560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.097603, 56.430294, 51.568794>,  <57.956509, 56.421391, 51.762733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.097603, 56.430294, 51.568794>,  <58.332764, 56.445133, 51.245560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.097603, 56.430294, 51.568794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713166, 0.447707, 0.539400,
		-0.381797, 0.893410, -0.236746,
		-0.587899, -0.037102, 0.808083,
		57.921234, 56.419163, 51.811218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.592060, 56.609638, 50.956322>,  <58.332764, 56.445133, 51.245560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.592060, 56.609638, 50.956322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.864487, 56.589920, 50.664097>,  <58.027943, 56.578087, 50.488762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.864487, 56.589920, 50.664097>,  <57.592060, 56.609638, 50.956322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.864487, 56.589920, 50.664097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496280, -0.764680, -0.411059,
		-0.538379, 0.642521, -0.545266,
		0.681068, -0.049299, -0.730559,
		58.068806, 56.575130, 50.444931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.732929, 57.010036, 51.600861>,  <57.592060, 56.609638, 50.956322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.732929, 57.010036, 51.600861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.816002, 57.397079, 51.543453>,  <57.865845, 57.629307, 51.509007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.816002, 57.397079, 51.543453>,  <57.732929, 57.010036, 51.600861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.816002, 57.397079, 51.543453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717291, -0.050880, 0.694914,
		0.665104, -0.247268, -0.704625,
		0.207681, 0.967610, -0.143522,
		57.878307, 57.687363, 51.500397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.448009, 57.107731, 51.639263>,  <57.732929, 57.010036, 51.600861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.448009, 57.107731, 51.639263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.319328, 57.483498, 51.686584>,  <58.242119, 57.708958, 51.714977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.319328, 57.483498, 51.686584>,  <58.448009, 57.107731, 51.639263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.319328, 57.483498, 51.686584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520922, 0.071269, 0.850624,
		0.790663, 0.335274, -0.512292,
		-0.321703, 0.939421, 0.118302,
		58.222816, 57.765324, 51.722076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.975929, 57.725895, 51.837227>,  <58.448009, 57.107731, 51.639263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.975929, 57.725895, 51.837227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.610275, 57.829838, 51.961693>,  <58.390881, 57.892204, 52.036373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.610275, 57.829838, 51.961693>,  <58.975929, 57.725895, 51.837227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.610275, 57.829838, 51.961693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365824, 0.197969, 0.909385,
		0.174706, 0.945137, -0.276032,
		-0.914139, 0.259854, 0.311168,
		58.336033, 57.907795, 52.055042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.950626, 58.412823, 52.012127>,  <58.975929, 57.725895, 51.837227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.950626, 58.412823, 52.012127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.677040, 58.216393, 52.227917>,  <58.512886, 58.098534, 52.357391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.677040, 58.216393, 52.227917>,  <58.950626, 58.412823, 52.012127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.677040, 58.216393, 52.227917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353016, 0.424357, 0.833847,
		-0.638409, 0.760770, -0.116891,
		-0.683969, -0.491071, 0.539477,
		58.471848, 58.069073, 52.389759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.570091, 58.662476, 51.579910>,  <58.950626, 58.412823, 52.012127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.570091, 58.662476, 51.579910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.676537, 58.894676, 51.887726>,  <59.740406, 59.033997, 52.072414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.676537, 58.894676, 51.887726>,  <59.570091, 58.662476, 51.579910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.676537, 58.894676, 51.887726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479869, -0.772156, 0.416533,
		0.836007, 0.258433, -0.484050,
		0.266116, 0.580505, 0.769543,
		59.756371, 59.068829, 52.118587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.950382, 58.156475, 51.900326>,  <59.570091, 58.662476, 51.579910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.950382, 58.156475, 51.900326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.028084, 58.504498, 52.081551>,  <60.074707, 58.713310, 52.190285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.028084, 58.504498, 52.081551>,  <59.950382, 58.156475, 51.900326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.028084, 58.504498, 52.081551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688681, -0.449861, 0.568632,
		0.698557, 0.201553, -0.686582,
		0.194257, 0.870058, 0.453059,
		60.086361, 58.765514, 52.217468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.560368, 58.048481, 52.190647>,  <59.950382, 58.156475, 51.900326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.560368, 58.048481, 52.190647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.437675, 58.375778, 52.385132>,  <60.364059, 58.572155, 52.501823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.437675, 58.375778, 52.385132>,  <60.560368, 58.048481, 52.190647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.437675, 58.375778, 52.385132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730073, -0.125481, 0.671750,
		0.610662, 0.561016, -0.558885,
		-0.306733, 0.818239, 0.486209,
		60.345657, 58.621250, 52.530994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.195526, 57.758617, 52.023438>,  <60.560368, 58.048481, 52.190647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.195526, 57.758617, 52.023438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.985855, 57.580811, 52.313992>,  <60.860050, 57.474129, 52.488323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.985855, 57.580811, 52.313992>,  <61.195526, 57.758617, 52.023438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.985855, 57.580811, 52.313992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379265, 0.641853, 0.666470,
		-0.762491, 0.624845, -0.167859,
		-0.524181, -0.444515, 0.726389,
		60.828602, 57.447456, 52.531910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.796284, 57.952007, 51.453259>,  <61.195526, 57.758617, 52.023438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.796284, 57.952007, 51.453259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.179039, 58.067970, 51.460388>,  <62.408691, 58.137547, 51.464664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.179039, 58.067970, 51.460388>,  <61.796284, 57.952007, 51.453259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.179039, 58.067970, 51.460388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007110, -0.037962, 0.999254,
		0.290365, -0.956302, -0.034264,
		0.956889, 0.289905, 0.017822,
		62.466106, 58.154942, 51.465736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.198032, 57.545242, 51.873318>,  <61.796284, 57.952007, 51.453259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.198032, 57.545242, 51.873318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.362053, 57.910007, 51.866844>,  <62.460464, 58.128868, 51.862961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.362053, 57.910007, 51.866844>,  <62.198032, 57.545242, 51.873318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.362053, 57.910007, 51.866844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025696, 0.029291, 0.999240,
		0.911698, -0.409328, 0.035444,
		0.410055, 0.911917, -0.016186,
		62.485069, 58.183582, 51.861988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.816219, 57.479923, 52.355198>,  <62.198032, 57.545242, 51.873318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.816219, 57.479923, 52.355198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.709442, 57.864094, 52.323380>,  <62.645374, 58.094597, 52.304291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.709442, 57.864094, 52.323380>,  <62.816219, 57.479923, 52.355198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.709442, 57.864094, 52.323380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033519, 0.091742, 0.995218,
		0.963128, 0.263003, -0.056683,
		-0.266946, 0.960423, -0.079544,
		62.629360, 58.152222, 52.299515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.259369, 58.163040, 52.563812>,  <62.816219, 57.479923, 52.355198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.259369, 58.163040, 52.563812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.868393, 58.199028, 52.640259>,  <62.633808, 58.220619, 52.686127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.868393, 58.199028, 52.640259>,  <63.259369, 58.163040, 52.563812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.868393, 58.199028, 52.640259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178878, -0.128668, 0.975421,
		0.112349, 0.987598, 0.109671,
		-0.977436, 0.089970, 0.191115,
		62.575161, 58.226021, 52.697594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.132198, 58.734852, 53.015854>,  <63.259369, 58.163040, 52.563812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.132198, 58.734852, 53.015854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.849503, 58.455254, 53.059544>,  <62.679886, 58.287495, 53.085758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.849503, 58.455254, 53.059544>,  <63.132198, 58.734852, 53.015854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.849503, 58.455254, 53.059544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048138, 0.106514, 0.993145,
		-0.705837, 0.707150, -0.041629,
		-0.706737, -0.698995, 0.109223,
		62.637482, 58.245556, 53.092312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.197052, 58.436104, 53.642918>,  <63.132198, 58.734852, 53.015854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.197052, 58.436104, 53.642918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.551758, 58.590782, 53.541641>,  <63.764584, 58.683590, 53.480877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.551758, 58.590782, 53.541641>,  <63.197052, 58.436104, 53.642918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.551758, 58.590782, 53.541641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308525, -0.087320, 0.947200,
		0.344171, -0.918063, -0.196739,
		0.886768, 0.386698, -0.253192,
		63.817787, 58.706791, 53.465683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.579758, 58.139328, 54.169151>,  <63.197052, 58.436104, 53.642918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.579758, 58.139328, 54.169151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.749321, 58.472897, 54.027798>,  <63.851059, 58.673038, 53.942986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.749321, 58.472897, 54.027798>,  <63.579758, 58.139328, 54.169151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.749321, 58.472897, 54.027798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494140, 0.114040, 0.861870,
		0.759033, -0.539970, -0.363733,
		0.423904, 0.833923, -0.353381,
		63.876492, 58.723072, 53.921783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.308670, 58.088608, 54.274925>,  <63.579758, 58.139328, 54.169151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.308670, 58.088608, 54.274925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.237488, 58.480003, 54.233177>,  <64.194778, 58.714840, 54.208126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.237488, 58.480003, 54.233177>,  <64.308670, 58.088608, 54.274925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.237488, 58.480003, 54.233177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668698, 0.198064, 0.716669,
		0.721923, 0.057745, -0.689560,
		-0.177960, 0.978487, -0.104373,
		64.184097, 58.773548, 54.201866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.935234, 58.434887, 54.010059>,  <64.308670, 58.088608, 54.274925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.935234, 58.434887, 54.010059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.700706, 58.647652, 54.254456>,  <64.559990, 58.775311, 54.401093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.700706, 58.647652, 54.254456>,  <64.935234, 58.434887, 54.010059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.700706, 58.647652, 54.254456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733262, 0.027878, 0.679375,
		0.344337, 0.846338, -0.406379,
		-0.586310, 0.531916, 0.610988,
		64.524811, 58.807228, 54.437752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.341850, 59.070557, 54.393269>,  <64.935234, 58.434887, 54.010059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.341850, 59.070557, 54.393269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.026215, 58.989723, 54.625305>,  <64.836830, 58.941223, 54.764526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.026215, 58.989723, 54.625305>,  <65.341850, 59.070557, 54.393269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.026215, 58.989723, 54.625305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549173, 0.191026, 0.813583,
		-0.275220, 0.960559, -0.039759,
		-0.789090, -0.202080, 0.580087,
		64.789490, 58.929100, 54.799332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.101646, 59.722755, 54.746407>,  <65.341850, 59.070557, 54.393269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.101646, 59.722755, 54.746407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.055092, 59.356339, 54.899940>,  <65.027161, 59.136490, 54.992062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.055092, 59.356339, 54.899940>,  <65.101646, 59.722755, 54.746407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.055092, 59.356339, 54.899940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616747, 0.236267, 0.750867,
		-0.778510, 0.324118, 0.537466,
		-0.116384, -0.916038, 0.383835,
		65.020180, 59.081528, 55.015091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.221428, 59.903885, 55.495834>,  <65.101646, 59.722755, 54.746407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.221428, 59.903885, 55.495834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.315315, 59.542709, 55.351830>,  <65.371651, 59.326004, 55.265427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.315315, 59.542709, 55.351830>,  <65.221428, 59.903885, 55.495834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.315315, 59.542709, 55.351830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873371, 0.033298, 0.485917,
		-0.426764, -0.428485, 0.796413,
		0.234727, -0.902935, -0.360015,
		65.385735, 59.271828, 55.243824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.562271, 59.594936, 56.014240>,  <65.221428, 59.903885, 55.495834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.562271, 59.594936, 56.014240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.671158, 59.417137, 55.672874>,  <65.736488, 59.310455, 55.468056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.671158, 59.417137, 55.672874>,  <65.562271, 59.594936, 56.014240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.671158, 59.417137, 55.672874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877436, -0.249393, 0.409768,
		-0.394978, -0.860362, 0.322133,
		0.272211, -0.444500, -0.853417,
		65.752823, 59.283787, 55.416851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.607986, 58.928295, 56.173813>,  <65.562271, 59.594936, 56.014240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.607986, 58.928295, 56.173813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.863045, 59.079605, 55.905388>,  <66.016083, 59.170391, 55.744335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.863045, 59.079605, 55.905388>,  <65.607986, 58.928295, 56.173813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.863045, 59.079605, 55.905388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770233, -0.327005, 0.547548,
		-0.012316, -0.866012, -0.499872,
		0.637644, 0.378274, -0.671058,
		66.054337, 59.193089, 55.704071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.140007, 58.342133, 56.012840>,  <65.607986, 58.928295, 56.173813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.140007, 58.342133, 56.012840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.277153, 58.714996, 55.966324>,  <66.359436, 58.938713, 55.938416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.277153, 58.714996, 55.966324>,  <66.140007, 58.342133, 56.012840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.277153, 58.714996, 55.966324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863186, -0.263785, 0.430497,
		0.370616, -0.247980, -0.895069,
		0.342861, 0.932160, -0.116290,
		66.380013, 58.994644, 55.931438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.775581, 58.244148, 55.724998>,  <66.140007, 58.342133, 56.012840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.775581, 58.244148, 55.724998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.792862, 58.610176, 55.885391>,  <66.803230, 58.829792, 55.981625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.792862, 58.610176, 55.885391>,  <66.775581, 58.244148, 55.724998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.792862, 58.610176, 55.885391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936149, -0.177253, 0.303655,
		0.348940, 0.362258, -0.864297,
		0.043198, 0.915069, 0.400978,
		66.805824, 58.884697, 56.005684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.394722, 58.215633, 55.129009>,  <66.775581, 58.244148, 55.724998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.394722, 58.215633, 55.129009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.020500, 58.080284, 55.169525>,  <66.795967, 57.999077, 55.193836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.020500, 58.080284, 55.169525>,  <67.394722, 58.215633, 55.129009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.020500, 58.080284, 55.169525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319711, -0.689375, 0.650036,
		-0.150126, 0.640522, 0.753123,
		-0.935547, -0.338369, 0.101289,
		66.739838, 57.978775, 55.199913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.061119, 57.891987, 54.912403>,  <67.394722, 58.215633, 55.129009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.061119, 57.891987, 54.912403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.918114, 57.964035, 55.278954>,  <67.832314, 58.007263, 55.498882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.918114, 57.964035, 55.278954>,  <68.061119, 57.891987, 54.912403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.918114, 57.964035, 55.278954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933116, 0.028488, 0.358446,
		0.038457, 0.983233, -0.178254,
		-0.357514, 0.180116, 0.916374,
		67.810860, 58.018070, 55.553867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.294815, 58.587761, 55.244354>,  <68.061119, 57.891987, 54.912403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.294815, 58.587761, 55.244354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.208740, 58.298065, 55.506401>,  <68.157097, 58.124249, 55.663628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.208740, 58.298065, 55.506401>,  <68.294815, 58.587761, 55.244354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.208740, 58.298065, 55.506401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969926, -0.080346, 0.229757,
		-0.113763, 0.684852, 0.719747,
		-0.215178, -0.724239, 0.655116,
		68.144188, 58.080795, 55.702934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.649727, 58.733795, 55.820526>,  <68.294815, 58.587761, 55.244354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.649727, 58.733795, 55.820526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.572502, 58.344398, 55.869598>,  <68.526169, 58.110760, 55.899040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.572502, 58.344398, 55.869598>,  <68.649727, 58.733795, 55.820526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.572502, 58.344398, 55.869598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924529, -0.138613, 0.355009,
		-0.328592, 0.181960, 0.926778,
		-0.193061, -0.973487, 0.122680,
		68.514587, 58.052353, 55.906403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.270691, 58.557434, 56.209660>,  <68.649727, 58.733795, 55.820526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.270691, 58.557434, 56.209660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.105896, 58.210342, 56.098442>,  <69.007019, 58.002087, 56.031712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.105896, 58.210342, 56.098442>,  <69.270691, 58.557434, 56.209660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.105896, 58.210342, 56.098442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862276, -0.469915, 0.188839,
		-0.294518, -0.161950, 0.941823,
		-0.411994, -0.867728, -0.278044,
		68.982300, 57.950024, 56.015030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.472244, 58.099319, 56.814007>,  <69.270691, 58.557434, 56.209660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.472244, 58.099319, 56.814007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.460365, 57.947292, 56.444214>,  <69.453239, 57.856075, 56.222340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.460365, 57.947292, 56.444214>,  <69.472244, 58.099319, 56.814007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.460365, 57.947292, 56.444214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962642, -0.259914, 0.075926,
		-0.269143, -0.887689, 0.373591,
		-0.029703, -0.380069, -0.924481,
		69.451454, 57.833271, 56.166870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.828964, 58.650654, 57.101135>,  <69.472244, 58.099319, 56.814007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.828964, 58.650654, 57.101135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.958298, 58.280121, 57.023819>,  <70.035896, 58.057800, 56.977428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.958298, 58.280121, 57.023819>,  <69.828964, 58.650654, 57.101135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.958298, 58.280121, 57.023819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204799, -0.130925, 0.970008,
		-0.923859, -0.353219, 0.147380,
		0.323330, -0.926334, -0.193295,
		70.055298, 58.002220, 56.965832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.562080, 58.107712, 57.741898>,  <69.828964, 58.650654, 57.101135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.562080, 58.107712, 57.741898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.887535, 57.945923, 57.574852>,  <70.082809, 57.848850, 57.474625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.887535, 57.945923, 57.574852>,  <69.562080, 58.107712, 57.741898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.887535, 57.945923, 57.574852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243379, -0.415388, 0.876481,
		-0.527984, -0.814774, -0.239534,
		0.813634, -0.404471, -0.417617,
		70.131622, 57.824581, 57.449566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.181770, 58.535034, 58.009102>,  <69.562080, 58.107712, 57.741898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.181770, 58.535034, 58.009102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.065170, 58.875759, 57.834999>,  <69.995209, 59.080196, 57.730537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.065170, 58.875759, 57.834999>,  <70.181770, 58.535034, 58.009102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.065170, 58.875759, 57.834999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236350, 0.505040, 0.830105,
		0.926915, 0.139096, -0.348541,
		-0.291491, 0.851814, -0.435253,
		69.977722, 59.131302, 57.704422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.733986, 59.095398, 57.768177>,  <70.181770, 58.535034, 58.009102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.733986, 59.095398, 57.768177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.401321, 59.149799, 57.983521>,  <70.201721, 59.182442, 58.112728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.401321, 59.149799, 57.983521>,  <70.733986, 59.095398, 57.768177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.401321, 59.149799, 57.983521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553541, 0.126563, 0.823149,
		0.043818, 0.982590, -0.180544,
		-0.831669, 0.136007, 0.538358,
		70.151817, 59.190601, 58.145027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.822197, 59.663944, 58.247025>,  <70.733986, 59.095398, 57.768177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.822197, 59.663944, 58.247025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.577820, 59.376686, 58.380302>,  <70.431190, 59.204330, 58.460270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.577820, 59.376686, 58.380302>,  <70.822197, 59.663944, 58.247025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.577820, 59.376686, 58.380302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532455, -0.061275, 0.844238,
		-0.585865, 0.693195, 0.419813,
		-0.610945, -0.718141, 0.333196,
		70.394539, 59.161243, 58.480263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.440712, 59.826164, 59.019733>,  <70.822197, 59.663944, 58.247025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.440712, 59.826164, 59.019733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.506874, 59.445599, 58.915848>,  <70.546570, 59.217258, 58.853516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.506874, 59.445599, 58.915848>,  <70.440712, 59.826164, 59.019733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.506874, 59.445599, 58.915848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719249, -0.063803, 0.691816,
		-0.674774, -0.301232, 0.673750,
		0.165410, -0.951414, -0.259714,
		70.556496, 59.160175, 58.837933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.286888, 59.391445, 59.646965>,  <70.440712, 59.826164, 59.019733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.286888, 59.391445, 59.646965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.527534, 59.183693, 59.404213>,  <70.671921, 59.059040, 59.258560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.527534, 59.183693, 59.404213>,  <70.286888, 59.391445, 59.646965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.527534, 59.183693, 59.404213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695592, -0.032869, 0.717685,
		-0.392701, -0.853909, 0.341505,
		0.601612, -0.519384, -0.606880,
		70.708015, 59.027878, 59.222149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.483521, 58.590057, 59.832275>,  <70.286888, 59.391445, 59.646965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.483521, 58.590057, 59.832275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.749146, 58.838528, 59.665825>,  <70.908524, 58.987610, 59.565956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.749146, 58.838528, 59.665825>,  <70.483521, 58.590057, 59.832275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.749146, 58.838528, 59.665825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573378, -0.065905, 0.816636,
		0.479849, -0.780896, -0.399933,
		0.664065, 0.621175, -0.416123,
		70.948364, 59.024879, 59.540989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.271233, 58.366913, 59.860924>,  <70.483521, 58.590057, 59.832275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.271233, 58.366913, 59.860924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.229126, 58.764519, 59.872574>,  <71.203857, 59.003082, 59.879562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.229126, 58.764519, 59.872574>,  <71.271233, 58.366913, 59.860924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.229126, 58.764519, 59.872574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728347, 0.057130, 0.682823,
		0.677073, 0.093098, -0.730003,
		-0.105275, 0.994017, 0.029127,
		71.197540, 59.062725, 59.881313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.010704, 58.323528, 59.856384>,  <71.271233, 58.366913, 59.860924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.010704, 58.323528, 59.856384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.306664, 58.170464, 59.635071>,  <72.484238, 58.078625, 59.502281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.306664, 58.170464, 59.635071>,  <72.010704, 58.323528, 59.856384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.306664, 58.170464, 59.635071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539243, -0.154376, 0.827880,
		-0.402212, -0.910900, 0.092126,
		0.739894, -0.382661, -0.553288,
		72.528633, 58.055664, 59.469086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.389473, 57.689213, 60.093384>,  <72.010704, 58.323528, 59.856384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.389473, 57.689213, 60.093384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.673431, 57.832985, 59.851112>,  <72.843811, 57.919250, 59.705750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.673431, 57.832985, 59.851112>,  <72.389473, 57.689213, 60.093384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.673431, 57.832985, 59.851112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693996, -0.210418, 0.688545,
		0.120040, -0.909138, -0.398822,
		0.709902, 0.359434, -0.605679,
		72.886398, 57.940815, 59.669407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
